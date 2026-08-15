-- =========================================================
-- CAPEWATCH-DB: Add civilian real names (alias column)
-- Run this AFTER 01_character_seed.sql has been executed.
-- Intentionally left NULL: The Hollow King, Duskveil Syndicate
-- (no civilian identity), and Roster Filler Unit (sparse record by design).
-- =========================================================

UPDATE character SET alias = 'Marcus Reyes' WHERE name = 'Voltframe';
UPDATE character SET alias = 'Daniel Osei' WHERE name = 'Cinderwatch';
UPDATE character SET alias = 'Elena Kowalski' WHERE name = 'Grimtide';
UPDATE character SET alias = 'Priya Anand' WHERE name = 'Skylark Prime';
UPDATE character SET alias = 'Adrian Cole' WHERE name = 'Ironclad Sentinel';
UPDATE character SET alias = 'Jonah Pierce' WHERE name = 'Wraithstep';
UPDATE character SET alias = 'Sofia Delgado' WHERE name = 'Emberlynx';
UPDATE character SET alias = 'Malik Thompson' WHERE name = 'Starforge';
UPDATE character SET alias = 'Victor Lang' WHERE name = 'Nightglass';
UPDATE character SET alias = 'Naomi Chen' WHERE name = 'Thornveil';
UPDATE character SET alias = 'Bruno Alvarez' WHERE name = 'Ridgeback';
UPDATE character SET alias = 'Tobias Reinholt' WHERE name = 'Frostbyte';
UPDATE character SET alias = 'Layla Haddad' WHERE name = 'Auravance';
UPDATE character SET alias = 'Theo Marsh' WHERE name = 'Duskrunner';
UPDATE character SET alias = 'Samuel Okafor' WHERE name = 'Ironvow';
UPDATE character SET alias = 'Elias Grant' WHERE name = 'Lumen Cross';
UPDATE character SET alias = 'Rosa Fontaine' WHERE name = 'Gale Warden';
UPDATE character SET alias = 'Nadia Whitlock' WHERE name = 'Copperhawk';
UPDATE character SET alias = 'Ingrid Solberg' WHERE name = 'Bramblewitch';
UPDATE character SET alias = 'Yasmin Ortiz' WHERE name = 'Static Marrow';

UPDATE character SET alias = 'Mira Volkov' WHERE name = 'Redveil';
UPDATE character SET alias = 'Caleb Doyle' WHERE name = 'Fangmourn';
UPDATE character SET alias = 'Odessa Ferris' WHERE name = 'Hexbroker';
UPDATE character SET alias = 'Dez Okonkwo' WHERE name = 'Scrapyard';
UPDATE character SET alias = 'Talia Novak' WHERE name = 'Ashen Choir';
UPDATE character SET alias = 'Ezra Voss' WHERE name = 'Nullwick';
UPDATE character SET alias = 'Simon Wren' WHERE name = 'Graveharbor';
UPDATE character SET alias = 'Rico Salazar' WHERE name = 'Ironsplice';
UPDATE character SET alias = 'Kian Ashford' WHERE name = 'Duskthorn';
UPDATE character SET alias = 'Gideon Wolfe' WHERE name = 'Molten Vow';

UPDATE character SET alias = 'Elias Warpstine' WHERE name = 'Doctor Warpstine';
-- The Hollow King: intentionally left NULL (ancient entity, no civilian identity)
UPDATE character SET alias = 'Julian Kessler' WHERE name = 'Ferrotide';
UPDATE character SET alias = 'Selene Vane' WHERE name = 'Blightmother';
UPDATE character SET alias = 'Absalom Kane' WHERE name = 'Chronarch';
UPDATE character SET alias = 'Peter Lin' WHERE name = 'Voidmask';
UPDATE character SET alias = 'Desmond Ashworth' WHERE name = 'The Gilded Tyrant';
UPDATE character SET alias = 'Owen Farrow' WHERE name = 'Emberfall';
UPDATE character SET alias = 'Felix Bardot' WHERE name = 'Static Regent';
UPDATE character SET alias = 'Corinne Vale' WHERE name = 'Marrow Queen';
UPDATE character SET alias = 'Milo Strand' WHERE name = 'The Cartographer';
-- Duskveil Syndicate: intentionally left NULL (organization, not an individual)
UPDATE character SET alias = 'Dean Whitfield' WHERE name = 'Ironclad Usurper';
UPDATE character SET alias = 'Silas Bram' WHERE name = 'The Undertow';
UPDATE character SET alias = 'Klaus Renner' WHERE name = 'Nightshard';

UPDATE character SET alias = 'Anaya Anand' WHERE name = 'Skylark Junior';
UPDATE character SET alias = 'Mateo Alvarez' WHERE name = 'Little Ridgeback';
UPDATE character SET alias = 'Greta Lindqvist' WHERE name = 'Frostbyte''s Echo';
UPDATE character SET alias = 'Jasmine Whitlock' WHERE name = 'Copperhawk II';
UPDATE character SET alias = 'Willow Chen' WHERE name = 'Thornseed';

UPDATE character SET alias = 'Walter Okonkwo' WHERE name = 'Old Ironvow';
UPDATE character SET alias = 'Fiona Marsh' WHERE name = 'The Last Gale Warden';
UPDATE character SET alias = 'Diane Haddad' WHERE name = 'Auravance Sr.';
UPDATE character SET alias = 'Peter Delacroix' WHERE name = 'Duskrunner Classic';
UPDATE character SET alias = 'Carmen Duvall' WHERE name = 'Emberlynx Prime';
UPDATE character SET alias = 'Victor Lang Sr.' WHERE name = 'Nightglass Elder';

UPDATE character SET alias = 'Nova Ortiz' WHERE name = 'Static Spark';
UPDATE character SET alias = 'Milo Pierce' WHERE name = 'Trainee Wraith';
UPDATE character SET alias = 'Oscar Bellamy' WHERE name = 'Fledge';
UPDATE character SET alias = 'Priya Coleman' WHERE name = 'Cadet Ironclad';
UPDATE character SET alias = 'Ivy Solberg' WHERE name = 'Bramblesprout';
UPDATE character SET alias = 'Devon Ashby' WHERE name = 'Half-Charge';

UPDATE character SET alias = 'Marcus Feld' WHERE name = 'Duskrunner''s Wingman';
UPDATE character SET alias = 'Priya Kessler' WHERE name = 'The Quiet Ferrotide Ally';
UPDATE character SET alias = 'Grace Tanaka' WHERE name = 'Backline Warden';
UPDATE character SET alias = 'Owen Haddad' WHERE name = 'Second Shield';
UPDATE character SET alias = 'Noah Haddad' WHERE name = 'The Silent Auravance Partner';
-- Roster Filler Unit: intentionally left NULL (sparse record by design)

UPDATE character SET alias = 'Ravi Kapoor' WHERE name = 'Nullwick''s Redemption Arc';
UPDATE character SET alias = 'Tomas Vane' WHERE name = 'Ashwake';
UPDATE character SET alias = 'Eli Bram' WHERE name = 'The Former Undertow';
UPDATE character SET alias = 'Simon Wren' WHERE name = 'Graveharbor Reclaimed';
