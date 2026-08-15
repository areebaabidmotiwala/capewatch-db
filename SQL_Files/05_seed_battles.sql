-- =========================================================
-- CAPEWATCH-DB: Battle + BattleParticipant seed data
-- Run AFTER 01_character_seed.sql
-- Several of these battles carry status-changing result_notes,
-- intended to exercise the status-change trigger (see 06_trigger.sql).
-- =========================================================

INSERT INTO battle (battle_date, outcome, description) VALUES
('2023-03-14', 'Won', 'The Vanguard Circuit repelled a Duskveil Syndicate raid on the harbor district.'),
('2023-06-02', 'Lost', 'Ashfall Company was overwhelmed by Blightmother''s decay wave in the old quarter.'),
('2019-03-03', 'Won', 'Nullwick''s enforcer defected mid-fight, turning the tide against Duskveil Syndicate.'),
('2020-07-07', 'Won', 'Ashwake broke from Blightmother after she sacrificed an entire neighborhood.'),
('2021-11-11', 'Won', 'The Former Undertow refused to finish off a rescue team, breaking from Undertow''s legacy.'),
('2016-05-05', 'Lost', 'Emberfall''s public rescue attempt was twisted by the press into a scandal.'),
('2013-12-12', 'Draw', 'Molten Vow''s rescue went wrong on live television.'),
('2024-01-20', 'Won', 'The Greenward Order defended the botanical preserve from Ferrotide''s mining operation.'),
('2024-04-18', 'Won', 'Frostline Division intercepted Static Regent''s attempted power grid takeover.'),
('2022-05-05', 'Won', 'Graveharbor finally listened to the voices asking him to intervene directly, tipping a hostage standoff toward the hostages'' side.'),
('2025-04-10', 'Won', 'Rookie Watch Program''s first joint field test against a minor Ironsplice incursion.');

INSERT INTO battle_participant (battle_id, character_id, role, result_note) VALUES
((SELECT battle_id FROM battle WHERE battle_date = '2023-03-14' AND description = 'The Vanguard Circuit repelled a Duskveil Syndicate raid on the harbor district.'), (SELECT character_id FROM character WHERE name = 'Voltframe'), 'Hero side', NULL),
((SELECT battle_id FROM battle WHERE battle_date = '2023-03-14' AND description = 'The Vanguard Circuit repelled a Duskveil Syndicate raid on the harbor district.'), (SELECT character_id FROM character WHERE name = 'Skylark Prime'), 'Hero side', NULL),
((SELECT battle_id FROM battle WHERE battle_date = '2023-03-14' AND description = 'The Vanguard Circuit repelled a Duskveil Syndicate raid on the harbor district.'), (SELECT character_id FROM character WHERE name = 'Duskrunner'), 'Hero side', NULL),
((SELECT battle_id FROM battle WHERE battle_date = '2023-03-14' AND description = 'The Vanguard Circuit repelled a Duskveil Syndicate raid on the harbor district.'), (SELECT character_id FROM character WHERE name = 'Duskveil Syndicate'), 'Villain side', 'Retreated after heavy losses'),
((SELECT battle_id FROM battle WHERE battle_date = '2023-06-02' AND description = 'Ashfall Company was overwhelmed by Blightmother''s decay wave in the old quarter.'), (SELECT character_id FROM character WHERE name = 'Cinderwatch'), 'Hero side', NULL),
((SELECT battle_id FROM battle WHERE battle_date = '2023-06-02' AND description = 'Ashfall Company was overwhelmed by Blightmother''s decay wave in the old quarter.'), (SELECT character_id FROM character WHERE name = 'Ridgeback'), 'Hero side', NULL),
((SELECT battle_id FROM battle WHERE battle_date = '2023-06-02' AND description = 'Ashfall Company was overwhelmed by Blightmother''s decay wave in the old quarter.'), (SELECT character_id FROM character WHERE name = 'Blightmother'), 'Villain side', 'Successfully spread corruption unchecked'),
((SELECT battle_id FROM battle WHERE battle_date = '2019-03-03' AND description = 'Nullwick''s enforcer defected mid-fight, turning the tide against Duskveil Syndicate.'), (SELECT character_id FROM character WHERE name = 'Nullwick''s Redemption Arc'), 'Hero side', 'Defected and helped defeat his former employers'),
((SELECT battle_id FROM battle WHERE battle_date = '2019-03-03' AND description = 'Nullwick''s enforcer defected mid-fight, turning the tide against Duskveil Syndicate.'), (SELECT character_id FROM character WHERE name = 'Duskveil Syndicate'), 'Villain side', 'Lost a key enforcer'),
((SELECT battle_id FROM battle WHERE battle_date = '2020-07-07' AND description = 'Ashwake broke from Blightmother after she sacrificed an entire neighborhood.'), (SELECT character_id FROM character WHERE name = 'Ashwake'), 'Hero side', 'Defected after witnessing Blightmother''s cruelty'),
((SELECT battle_id FROM battle WHERE battle_date = '2020-07-07' AND description = 'Ashwake broke from Blightmother after she sacrificed an entire neighborhood.'), (SELECT character_id FROM character WHERE name = 'Blightmother'), 'Villain side', NULL),
((SELECT battle_id FROM battle WHERE battle_date = '2021-11-11' AND description = 'The Former Undertow refused to finish off a rescue team, breaking from Undertow''s legacy.'), (SELECT character_id FROM character WHERE name = 'The Former Undertow'), 'Hero side', 'Chose mercy, formally reformed'),
((SELECT battle_id FROM battle WHERE battle_date = '2021-11-11' AND description = 'The Former Undertow refused to finish off a rescue team, breaking from Undertow''s legacy.'), (SELECT character_id FROM character WHERE name = 'The Undertow'), 'Villain side', NULL),
((SELECT battle_id FROM battle WHERE battle_date = '2016-05-05' AND description = 'Emberfall''s public rescue attempt was twisted by the press into a scandal.'), (SELECT character_id FROM character WHERE name = 'Emberfall'), 'Hero side', 'Public turned against him, later defected to villainy'),
((SELECT battle_id FROM battle WHERE battle_date = '2013-12-12' AND description = 'Molten Vow''s rescue went wrong on live television.'), (SELECT character_id FROM character WHERE name = 'Molten Vow'), 'Hero side', 'Public blamed him unfairly, stepped away from hero life'),
((SELECT battle_id FROM battle WHERE battle_date = '2024-01-20' AND description = 'The Greenward Order defended the botanical preserve from Ferrotide''s mining operation.'), (SELECT character_id FROM character WHERE name = 'Thornveil'), 'Hero side', NULL),
((SELECT battle_id FROM battle WHERE battle_date = '2024-01-20' AND description = 'The Greenward Order defended the botanical preserve from Ferrotide''s mining operation.'), (SELECT character_id FROM character WHERE name = 'Bramblewitch'), 'Hero side', NULL),
((SELECT battle_id FROM battle WHERE battle_date = '2024-01-20' AND description = 'The Greenward Order defended the botanical preserve from Ferrotide''s mining operation.'), (SELECT character_id FROM character WHERE name = 'Ferrotide'), 'Villain side', 'Mining operation shut down'),
((SELECT battle_id FROM battle WHERE battle_date = '2024-04-18' AND description = 'Frostline Division intercepted Static Regent''s attempted power grid takeover.'), (SELECT character_id FROM character WHERE name = 'Frostbyte'), 'Hero side', NULL),
((SELECT battle_id FROM battle WHERE battle_date = '2024-04-18' AND description = 'Frostline Division intercepted Static Regent''s attempted power grid takeover.'), (SELECT character_id FROM character WHERE name = 'Auravance'), 'Hero side', NULL),
((SELECT battle_id FROM battle WHERE battle_date = '2024-04-18' AND description = 'Frostline Division intercepted Static Regent''s attempted power grid takeover.'), (SELECT character_id FROM character WHERE name = 'Static Regent'), 'Villain side', 'Takeover foiled'),
((SELECT battle_id FROM battle WHERE battle_date = '2022-05-05' AND description = 'Graveharbor finally listened to the voices asking him to intervene directly, tipping a hostage standoff toward the hostages'' side.'), (SELECT character_id FROM character WHERE name = 'Graveharbor Reclaimed'), 'Hero side', 'Fully committed to hero status'),
((SELECT battle_id FROM battle WHERE battle_date = '2022-05-05' AND description = 'Graveharbor finally listened to the voices asking him to intervene directly, tipping a hostage standoff toward the hostages'' side.'), (SELECT character_id FROM character WHERE name = 'The Cartographer'), 'Villain side', 'Hostage plot foiled'),
((SELECT battle_id FROM battle WHERE battle_date = '2025-04-10' AND description = 'Rookie Watch Program''s first joint field test against a minor Ironsplice incursion.'), (SELECT character_id FROM character WHERE name = 'Static Spark'), 'Hero side', NULL),
((SELECT battle_id FROM battle WHERE battle_date = '2025-04-10' AND description = 'Rookie Watch Program''s first joint field test against a minor Ironsplice incursion.'), (SELECT character_id FROM character WHERE name = 'Trainee Wraith'), 'Hero side', NULL),
((SELECT battle_id FROM battle WHERE battle_date = '2025-04-10' AND description = 'Rookie Watch Program''s first joint field test against a minor Ironsplice incursion.'), (SELECT character_id FROM character WHERE name = 'Cadet Ironclad'), 'Hero side', NULL),
((SELECT battle_id FROM battle WHERE battle_date = '2025-04-10' AND description = 'Rookie Watch Program''s first joint field test against a minor Ironsplice incursion.'), (SELECT character_id FROM character WHERE name = 'Ironsplice'), 'Villain side', 'Contract cancelled, withdrew');
