-- =========================================================
-- CAPEWATCH-DB: One-time backfill for character_status_history
-- Run this ONCE, after 06_triggers_and_views.sql has been executed.
-- This catches up the battle_participant rows that were seeded in
-- 05_battle_seed.sql BEFORE the trigger existed, so their status
-- changes are reflected in the history table too.
-- =========================================================

INSERT INTO character_status_history (character_id, old_status, new_status, changed_at, reason, battle_id)
SELECT
    bp.character_id,
    c.status,
    c.status,
    now(),
    bp.result_note,
    bp.battle_id
FROM battle_participant bp
JOIN character c ON c.character_id = bp.character_id
WHERE bp.result_note IS NOT NULL;
