-- =========================================================
-- CAPEWATCH-DB: Showcase queries
-- Run AFTER all seed data + triggers are loaded.
-- =========================================================

-- ---------------------------------------------------------
-- 1. RECURSIVE CTE
--    Find every character who has ever shared a team with a given
--    character, then everyone THOSE characters have shared a team
--    with, chaining outward (a "teammate network" traversal).
--    Example starting point: Voltframe
-- ---------------------------------------------------------
WITH RECURSIVE teammate_network AS (
    -- anchor: the starting character
    SELECT character_id, name, 0 AS degree
    FROM character
    WHERE name = 'Voltframe'

    UNION

    -- recursive step: anyone who shares a team with someone already in the network
    SELECT c.character_id, c.name, tn.degree + 1
    FROM teammate_network tn
    JOIN team_membership tm1 ON tm1.character_id = tn.character_id
    JOIN team_membership tm2 ON tm2.team_id = tm1.team_id AND tm2.character_id != tm1.character_id
    JOIN character c ON c.character_id = tm2.character_id
    WHERE tn.degree < 3   -- cap recursion depth to avoid runaway expansion
)
SELECT DISTINCT ON (character_id) character_id, name, degree
FROM teammate_network
ORDER BY character_id, degree;


-- ---------------------------------------------------------
-- 2. WINDOW FUNCTIONS
--    a) Rank characters by threat_level within their category
-- ---------------------------------------------------------
SELECT
    name,
    category,
    threat_level,
    RANK() OVER (PARTITION BY category ORDER BY threat_level DESC) AS threat_rank
FROM character
ORDER BY category, threat_rank;

--    b) Running win count per hero over time, based on battles fought
SELECT
    c.name,
    b.battle_date,
    b.outcome,
    COUNT(*) FILTER (WHERE b.outcome = 'Won')
        OVER (PARTITION BY c.character_id ORDER BY b.battle_date) AS running_win_count
FROM battle_participant bp
JOIN battle b ON b.battle_id = bp.battle_id
JOIN character c ON c.character_id = bp.character_id
WHERE bp.role = 'Hero side'
ORDER BY c.name, b.battle_date;


-- ---------------------------------------------------------
-- 3. VIEW USAGE
--    Current active roster per team (uses the view from 06_triggers_and_views.sql)
-- ---------------------------------------------------------
SELECT * FROM active_team_roster;


-- ---------------------------------------------------------
-- 4. INDEX + EXPLAIN (before / after)
--    Demonstrates a performance improvement on a common lookup:
--    finding all characters above a given threat level.
-- ---------------------------------------------------------

-- BEFORE: run this first and note the plan (likely a Seq Scan)
EXPLAIN ANALYZE
SELECT name, threat_level
FROM character
WHERE threat_level > 70;

-- Add an index on the filtered column
CREATE INDEX idx_character_threat_level ON character (threat_level);

-- AFTER: run the same query again and compare the plan
-- (on a small seed dataset like this, Postgres may still choose a Seq Scan
--  since the table is small enough that an index isn't cheaper -- note this
--  honestly in your README rather than claiming a speedup that a 72-row
--  table won't actually show. The index becomes meaningful at larger scale;
--  worth mentioning you tested this reasoning explicitly.)
EXPLAIN ANALYZE
SELECT name, threat_level
FROM character
WHERE threat_level > 70;
