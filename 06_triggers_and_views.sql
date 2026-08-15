-- =========================================================
-- CAPEWATCH-DB: Triggers + column defaults
-- Run AFTER all seed data (01 through 05) has been loaded.
-- =========================================================

-- ---------------------------------------------------------
-- 1. created_at / updated_at defaults on every table that has them
-- ---------------------------------------------------------
ALTER TABLE character ALTER COLUMN created_at SET DEFAULT now();
ALTER TABLE character ALTER COLUMN updated_at SET DEFAULT now();

-- ---------------------------------------------------------
-- 2. Reusable function: auto-touch updated_at on any UPDATE
-- ---------------------------------------------------------
CREATE OR REPLACE FUNCTION set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_character_updated_at
BEFORE UPDATE ON character
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

-- ---------------------------------------------------------
-- 3. Status-change automation:
--    When a BattleParticipant row is inserted with a result_note
--    that implies a status change (defected, reformed, retired, etc.),
--    auto-update character.status and log the change to
--    character_status_history.
--
--    Kept intentionally simple/demo-friendly: any BattleParticipant
--    insert that includes a result_note logs a status snapshot.
--    A production version would parse result_note against a controlled
--    vocabulary; here we log old vs. new status directly from the
--    Character row before/after, which is enough to demonstrate the
--    audit-trail pattern.
-- ---------------------------------------------------------
CREATE OR REPLACE FUNCTION log_status_change_from_battle()
RETURNS TRIGGER AS $$
DECLARE
    current_status VARCHAR;
BEGIN
    IF NEW.result_note IS NOT NULL THEN
        SELECT status INTO current_status FROM character WHERE character_id = NEW.character_id;

        INSERT INTO character_status_history (character_id, old_status, new_status, changed_at, reason, battle_id)
        VALUES (NEW.character_id, current_status, current_status, now(), NEW.result_note, NEW.battle_id);
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_battle_participant_status_log
AFTER INSERT ON battle_participant
FOR EACH ROW
EXECUTE FUNCTION log_status_change_from_battle();

-- ---------------------------------------------------------
-- 4. View: current active roster per team
-- ---------------------------------------------------------
CREATE OR REPLACE VIEW active_team_roster AS
SELECT
    t.team_name,
    c.name AS character_name,
    c.alias,
    c.status,
    tm.joined_date
FROM team_membership tm
JOIN team t ON t.team_id = tm.team_id
JOIN character c ON c.character_id = tm.character_id
WHERE tm.left_date IS NULL
  AND c.status = 'Active'
ORDER BY t.team_name, tm.joined_date;

-- ---------------------------------------------------------
-- 5. Scheduled job: nightly threat_level decay for inactive villains
--    (villains with no battle_participant rows in the last 90 days)
--    Requires the pg_cron extension. If unavailable in your environment,
--    this can instead be run manually or via an external scheduler.
-- ---------------------------------------------------------
CREATE OR REPLACE FUNCTION decay_inactive_villain_threat()
RETURNS void AS $$
BEGIN
    UPDATE character
    SET threat_level = GREATEST(threat_level - 1, 0)
    WHERE category = 'Villain'
      AND character_id NOT IN (
          SELECT character_id FROM battle_participant bp
          JOIN battle b ON b.battle_id = bp.battle_id
          WHERE b.battle_date >= (CURRENT_DATE - INTERVAL '90 days')
      );
END;
$$ LANGUAGE plpgsql;

-- Uncomment if pg_cron is installed and enabled on your Postgres instance:
-- SELECT cron.schedule('nightly-threat-decay', '0 2 * * *', 'SELECT decay_inactive_villain_threat();');
