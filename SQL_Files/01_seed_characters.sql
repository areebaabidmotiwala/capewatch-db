-- =========================================================
-- CAPEWATCH-DB: Character seed data (72 rows)
-- Run this AFTER the schema (CREATE TABLE) file has been executed.
-- =========================================================

INSERT INTO character (name, alias, category, status, power_type, threat_level, origin_note, debut_date, is_team_only) VALUES

-- ===== HEROES (20) =====
('Voltframe', NULL, 'Hero', 'Active', 'Electrokinesis', 62,
 'A junior power-grid engineer working a night shift when a substation overload should have killed him. Instead the current rewired something in his nervous system, and he walked out able to feel electricity like a second heartbeat.',
 '2011-03-14', false),

('Cinderwatch', NULL, 'Hero', 'Active', 'Fire Manipulation', 58,
 'A firefighter who went back into a collapsing warehouse for a kid everyone else had given up on. He does not remember the fire touching him, only that he stopped being afraid of it afterward.',
 '2012-06-01', false),

('Grimtide', NULL, 'Hero', 'Active', 'Water/Ice Control', 65,
 'A Navy diver on a routine hull inspection when something ancient in the trench below reached up and changed him. He surfaced three days later than he should have, and the ocean has answered to him ever since.',
 '2013-09-22', false),

('Skylark Prime', NULL, 'Hero', 'Active', 'Flight + Sonic Scream', 70,
 'An ordinary teenager whose voice cracked one afternoon and shattered every window on her street. She spent a year terrified of her own throat before she learned to fly instead of just fall.',
 '2010-01-10', false),

('Ironclad Sentinel', 'Sentinel', 'Hero', 'Active', 'Powered Exosuit', 75,
 'No powers at all - just a garage engineer who got tired of watching people who could barely afford rent get hurt protecting the city for free. He mortgaged everything he owned to build a suit that could stand between them and the worst of it.',
 '2014-04-18', false),

('Wraithstep', NULL, 'Hero', 'Active', 'Teleportation', 55,
 'A cat burglar who broke into the wrong lab on the wrong night and stole something that stole back. He kept the reflexes from his old life; he just points them at better targets now.',
 '2015-07-30', false),

('Emberlynx', NULL, 'Hero', 'Active', 'Enhanced Agility/Claws', 52,
 'A volunteer in an underfunded university drug trial who was told the worst outcome would be a headache. She got claws instead, and dropped out of the program the same week she started using them to pull people out of traffic.',
 '2016-02-11', false),

('Starforge', NULL, 'Hero', 'Active', 'Cosmic Energy Projection', 80,
 'Fifteen years old and camping alone when a meteorite landed close enough to singe his tent. He carried a piece of it in his pocket for weeks before he understood it had never really left him.',
 '2009-11-05', false),

('Nightglass', NULL, 'Hero', 'Active', 'Light-Bending/Illusion', 60,
 'A small-time stage magician who built a career on tricks that were never quite tricks. The night his act finally caught up with him on a real stage, in front of real danger, he stopped pretending and started actually saving people.',
 '2013-05-19', false),

('Thornveil', NULL, 'Hero', 'Active', 'Plant Manipulation', 50,
 'A botanist studying an unlisted spore sample when the greenhouse containment failed around her. She woke up in a hospital bed with a fern growing through the mattress and has been apologizing to gardens ever since.',
 '2017-08-03', false),

('Ridgeback', NULL, 'Hero', 'Active', 'Super Strength', 68,
 'A wrestler whose body gave out mid-match from a strain no doctor could explain - until he stood back up holding the ring apart with his bare hands. He never went back to scripted fights after that.',
 '2011-12-25', false),

('Frostbyte', NULL, 'Hero', 'Active', 'Cryokinesis', 57,
 'A cryogenics researcher trapped overnight in a failing storage chamber, expecting to freeze to death slowly. He walked out at dawn perfectly warm, and the chamber walls were coated in frost that had grown toward him, not away.',
 '2014-10-09', false),

('Auravance', NULL, 'Hero', 'Active', 'Energy Shields/Empathy', 54,
 'Someone who always felt other people''s pain a little too clearly, long before it became a power instead of just exhausting. The first time she raised her hands to block a punch meant for someone else, a wall of light did it for her.',
 '2018-03-27', false),

('Duskrunner', NULL, 'Hero', 'Active', 'Super Speed', 63,
 'A bike courier who got clipped by a truck he swears he outran instead of avoided. Nobody believes his account of the accident, mostly because the accident is the only slow part of his life now.',
 '2012-09-14', false),

('Ironvow', NULL, 'Hero', 'Active', 'Magnetism Control', 66,
 'A soldier caught in the blast radius of an experimental weapons test his own unit was never told about. He came home with metal fragments the surgeons couldn''t remove, and a strange new instinct for where every piece of steel in a room actually is.',
 '2010-06-30', false),

('Lumen Cross', NULL, 'Hero', 'Active', 'Light Constructs', 59,
 'A parish priest who spent a decade quietly doubting everything he preached, until a night in the chapel he can''t fully explain left the stained glass glowing without a light source. He calls it faith made visible; nobody has corrected him yet.',
 '2015-01-17', false),

('Gale Warden', NULL, 'Hero', 'Active', 'Wind/Weather Control', 61,
 'A storm chaser who drove straight into a supercell that every model said would kill her. She walked out of the wreckage of her own truck completely dry, with the storm oddly, permanently listening to her now.',
 '2016-11-22', false),

('Copperhawk', NULL, 'Hero', 'Active', 'Gadgets/Detective Skill', 48,
 'A homicide detective who got sick of solving crimes a week too late and started trying to stop them instead. No powers - just obsessive planning, a workshop full of gadgets, and a refusal to lose another case.',
 '2013-02-08', false),

('Bramblewitch', NULL, 'Hero', 'Active', 'Nature Magic/Healing', 53,
 'An herbalist who always had unusually good luck with sick plants, until the night she pressed her hands to a dying tree and it simply wasn''t dying anymore. She figured out what she could do to people the same accidental way.',
 '2017-04-12', false),

('Static Marrow', NULL, 'Hero', 'Active', 'Bone/Skeletal Manipulation', 64,
 'Born with a rare genetic condition doctors monitored her whole childhood but never fully explained. It stayed dormant until a car accident should have broken every bone in her body - instead, her skeleton rearranged itself to save her.',
 '2019-06-06', false),

-- ===== ANTI-HEROES (10) =====
('Redveil', NULL, 'Anti-Hero', 'Active', 'Assassination/Combat', 72,
 'Trained from childhood by an organization that no longer exists, for a purpose she eventually refused to finish. She still kills when she decides it is necessary - she just decides a lot less often now.',
 '2012-08-19', false),

('Fangmourn', NULL, 'Anti-Hero', 'Active', 'Lycanthropic Traits', 69,
 'Bitten during a camping trip he tells people was a bear attack, because the truth sounds insane and the truth also changed his whole body. The city fears him more than it should; the people he has actually saved know better.',
 '2014-03-03', false),

('Hexbroker', NULL, 'Anti-Hero', 'Active', 'Curse Dealing', 58,
 'Inherited an old family "business" she did not believe was real until her first curse actually worked. She will sell you a hex for the right price, but she is oddly particular about who she will sell one against.',
 '2016-09-28', false),

('Scrapyard', NULL, 'Anti-Hero', 'Active', 'Junk-Tech Vigilante', 50,
 'A former small-time thief who did a stretch in prison and came out with nothing but a talent for building things out of garbage. He builds weapons now instead of picking locks, and points them somewhere more useful.',
 '2015-05-15', false),

('Ashen Choir', NULL, 'Anti-Hero', 'Active', 'Sound/Scream-Based', 56,
 'She lost her entire family in a fire that was ruled an accident and never really was. Her grief found a voice that can shatter concrete, and she has been very precise about where she points it.',
 '2013-11-11', false),

('Nullwick', NULL, 'Anti-Hero', 'Active', 'Power Nullification', 61,
 'Born completely unable to be affected by any power used near him, which made him a target for study long before he learned to turn it outward onto others. Heroes and villains both keep their distance - nobody is sure whose side his ability actually favors.',
 '2017-07-07', false),

('Graveharbor', NULL, 'Anti-Hero', 'Active', 'Spirit Communication', 47,
 'Technically died for four minutes in an ER that fought hard to bring him back. He came back able to hear what did not come back with him, and he has been an uneasy go-between ever since.',
 '2011-10-01', false),

('Ironsplice', NULL, 'Anti-Hero', 'Active', 'Cybernetic Augments', 63,
 'Lost an arm and most of a leg in an industrial accident his employer settled quietly and cheaply. He rebuilt himself better than they ever compensated him for, and now works for whoever pays what he is actually worth.',
 '2018-01-23', false),

('Duskthorn', NULL, 'Anti-Hero', 'Reformed', 'Poison Manipulation', 55,
 'Spent years as a hired poisoner before a target he was sent to kill talked him out of finishing the job. He has not fully earned anyone''s trust back, least of all his own, but he is trying.',
 '2012-04-04', false),

('Molten Vow', NULL, 'Anti-Hero', 'Reformed', 'Lava/Heat Manipulation', 67,
 'A hero once, until a rescue went wrong in front of cameras and the public decided to remember only the failure. He walked away from the cape entirely and now operates on his own terms, trusting no one''s opinion of him but his own.',
 '2013-12-12', false),

-- ===== VILLAINS (15) =====
('Doctor Warpstine', 'Warpstine', 'Villain', 'Active', 'Reality Distortion', 88,
 'A brilliant physicist whose theory of layered realities got him laughed out of every serious institution in the country. He built the machine anyway, alone, and it worked exactly well enough to break something in him along with the fabric of the room.',
 '2010-02-02', false),

('The Hollow King', NULL, 'Villain', 'Active', 'Mind Control/Possession', 85,
 'An entity sealed away centuries before anyone alive today was born, freed by a construction crew who thought they had found an empty tomb. It remembers being a person once; it has stopped caring that it used to be one.',
 '2009-06-15', false),

('Ferrotide', NULL, 'Villain', 'Active', 'Metal Manipulation', 74,
 'A steel-industry heir who inherited a company and a grudge against everyone who ever called his family "new money." An accident in his own foundry fused something into his blood, and he decided the city owed him for the humiliation of it.',
 '2012-10-20', false),

('Blightmother', NULL, 'Villain', 'Active', 'Plague/Decay', 82,
 'Nobody agrees on where she came from, only that crops started failing and people started getting sick in a widening circle around wherever she had last been seen. She calls it correction, not cruelty, and genuinely seems to believe that.',
 '2014-08-08', false),

('Chronarch', NULL, 'Villain', 'Active', 'Time Manipulation', 90,
 'A historian who became obsessed with a single tragedy in his own past and built a machine meant only to undo it. The machine worked, in the worst possible way - it gave him the power to rewrite anything, and he never stopped trying to fix what cannot be fixed.',
 '2011-01-01', false),

('Voidmask', NULL, 'Villain', 'Active', 'Shadow/Dimension Powers', 78,
 'Once an ordinary man who followed the wrong self-help seminar down a very dark path. The group''s "meditation techniques" turned out to be real, and he was the only member who came back from the deepest one still able to lead.',
 '2015-03-09', false),

('The Gilded Tyrant', NULL, 'Villain', 'Active', 'Wealth-Fueled Tech Army', 71,
 'No powers whatsoever - just inherited billions and a belief that the city''s problems were a management issue he was uniquely suited to solve by force. He buys the best mercenaries and the best tech money can find, and treats both like line items.',
 '2013-07-04', false),

('Emberfall', NULL, 'Villain', 'Active', 'Fire Manipulation', 69,
 'A hero for six years before the city he protected turned on him over a rescue the press decided to twist into a scandal. He burned his own costume on live television and has not looked back since.',
 '2016-05-05', false),

('Static Regent', NULL, 'Villain', 'Active', 'Electricity', 73,
 'A city councilman who lost an election he was certain he would win and decided the voters simply needed better judgment installed. He stole the tech that gave him power from a lab he was supposed to be regulating.',
 '2017-09-09', false),

('Marrow Queen', NULL, 'Villain', 'Active', 'Bone/Body Horror', 80,
 'A twisted echo of Static Marrow''s same rare condition, except it consumed her instead of saving her. She resents every hero who "got the good version" of what she has, and makes sure they know it.',
 '2018-11-11', false),

('The Cartographer', NULL, 'Villain', 'Active', 'Teleportation/Spatial Traps', 68,
 'An obsessive collector who used to map buildings for a living before he found a way to fold space itself into the blueprints. Now he collects heroes the same meticulous way, one trap at a time.',
 '2012-12-01', false),

('Duskveil Syndicate', NULL, 'Villain', 'Active', 'Organized Crime Network', 76,
 'Not a single person but a network built from a dozen smaller gangs that finally agreed to stop fighting each other and start fighting the city instead. Nobody outside the organization is entirely sure who is actually in charge.',
 '2010-09-09', false),

('Ironclad Usurper', NULL, 'Villain', 'Active', 'Stolen Exosuit Tech', 70,
 'A corporate engineer passed over for a promotion he had spent a decade earning, who quietly stole a rival company''s prototype armor on his way out the door. He tells himself it is justice; it looks a great deal more like theft with better PR.',
 '2019-02-14', false),

('The Undertow', NULL, 'Villain', 'Active', 'Water/Drowning Powers', 77,
 'A fisherman who lost his entire crew, and blames the city''s negligence for the storm that took them. The sea gave him something back that night, and he has spent every year since making sure the coast remembers what it cost him.',
 '2011-07-21', false),

('Nightshard', NULL, 'Villain', 'Active', 'Glass/Crystal Manipulation', 72,
 'A glassblower whose workshop exploded in a way that should have killed him instantly. It left him made of something harder than skin, and considerably colder than he used to be.',
 '2014-01-30', false),

-- ===== SIDEKICK-TURNED-SOLO (5) =====
('Skylark Junior', NULL, 'Hero', 'Active', 'Flight + Sonic Scream', 40,
 'Trained under Skylark Prime since she was old enough to hold a mask steady. She loved every lesson, right up until the day she realized she needed to find out who she was without someone else''s name attached to hers.',
 '2020-04-01', false),

('Little Ridgeback', NULL, 'Hero', 'Active', 'Super Strength', 38,
 'Ridgeback''s nephew, who spent years being underestimated because "strong" runs in the family and nobody thought he would ever match it. He matched it, then quietly started operating on his own turf to prove the point stuck.',
 '2021-06-15', false),

('Frostbyte''s Echo', 'Echo', 'Hero', 'Active', 'Cryokinesis', 36,
 'A former lab assistant who absorbed a fraction of Frostbyte''s ability during a containment mishap neither of them fully understands. She kept the codename he gave her half as a joke, because by then it had already stuck.',
 '2020-11-20', false),

('Copperhawk II', NULL, 'Hero', 'Active', 'Gadgets/Detective Skill', 35,
 'The original Copperhawk''s protégé from the police academy, handed the mantle - and the workshop keys - the day he finally retired. She has spent her first year proving the gadgets work just as well in someone else''s hands.',
 '2022-01-05', false),

('Thornseed', NULL, 'Hero', 'Active', 'Plant Manipulation', 33,
 'Bramblewitch and Thornveil''s student, who came into her own powers a year into training and has been slowly outgrowing the greenhouse ever since. She still calls Thornveil for advice; she just does not wait for permission anymore.',
 '2021-09-09', false),

-- ===== RETIRED (6) =====
('Old Ironvow', NULL, 'Hero', 'Retired', 'Magnetism Control', 45,
 'Years of shrapnel still shifting under his skin finally caught up with him, and the team made him step back before it cost him his life. He still shows up when it matters, mostly to make sure the younger ones do not make his old mistakes.',
 '2010-06-30', false),

('The Last Gale Warden', NULL, 'Hero', 'Retired', 'Wind/Weather Control', 42,
 'A storm she could not fully control anymore left her with permanent nerve damage after one bad call in a hurricane. She hung up the mantle before it could take anything more than it already had.',
 '2016-11-22', false),

('Auravance Sr.', NULL, 'Hero', 'Retired', 'Energy Shields/Empathy', 40,
 'Decades of absorbing everyone else''s pain, on top of her own, eventually wore down more than her powers could hold back. She retired to protect her own mind, and now mostly just answers the phone when a younger hero needs to talk it out.',
 '2018-03-27', false),

('Duskrunner Classic', NULL, 'Hero', 'Retired', 'Super Speed', 41,
 'His knees gave out long before his speed ever did, which turned out to be a far more dangerous combination than either alone. He handed off the name and the territory, and finally let himself slow down.',
 '2012-09-14', false),

('Emberlynx Prime', NULL, 'Hero', 'Retired', 'Enhanced Agility/Claws', 39,
 'A rescue that went wrong on live television cost her a partner she never forgave herself for losing. She stepped back from the field entirely and now trains the next generation so it does not happen to them the same way.',
 '2016-02-11', false),

('Nightglass Elder', NULL, 'Hero', 'Retired', 'Light-Bending/Illusion', 37,
 'His illusions started slipping in ways only he could notice, a slow fade he recognized before anyone else did. He stepped down quietly, on his own terms, before the city ever had to ask him to.',
 '2013-05-19', false),

-- ===== ROOKIES (6) =====
('Static Spark', NULL, 'Hero', 'Rookie', 'Bone/Skeletal Manipulation', 20,
 'Static Marrow''s condition runs in the family, and it activated in her a full decade earlier than anyone expected. She is brilliant and reckless in exactly the way a teenager with a skeleton that listens to her would be.',
 '2025-01-10', false),

('Trainee Wraith', NULL, 'Hero', 'Rookie', 'Teleportation', 18,
 'Wraithstep found him mid-heist, about to become exactly the kind of thief Wraithstep used to be, and made him an offer instead of an arrest. He still overshoots his landings more often than anyone would like.',
 '2025-02-14', false),

('Fledge', NULL, 'Hero', 'Rookie', 'Flight', 15,
 'Powers surfaced three weeks ago, mid-fall, off a fire escape he should not have been climbing. Nobody has taught him to land yet - only, barely, how to stop falling.',
 '2025-03-01', false),

('Cadet Ironclad', NULL, 'Hero', 'Rookie', 'Powered Exosuit', 22,
 'An engineering student who talked her way into Ironclad Sentinel''s training program on pure persistence and better math than his original blueprints. The suit still sparks when she pushes it too hard, which is often.',
 '2025-01-25', false),

('Bramblesprout', NULL, 'Hero', 'Rookie', 'Nature Magic/Healing', 16,
 'Bramblewitch''s youngest apprentice, who can already coax a wilting plant back to life but still occasionally makes one grow through the kitchen floor by accident. Nobody has corrected the nickname; it fits too well.',
 '2025-04-05', false),

('Half-Charge', NULL, 'Hero', 'Rookie', 'Electrokinesis', 19,
 'Struck by a stray arc from one of Voltframe''s own training exercises, which is either terrible luck or the best possible place to get struck by lightning. His control comes and goes, hence the name he gave himself.',
 '2025-02-28', false),

-- ===== TEAM-ONLY (6) =====
('Duskrunner''s Wingman', NULL, 'Hero', 'Active', 'Super Speed (Support)', 30,
 'Fast enough to keep pace on missions but never interested in a solo spotlight of his own. He exists in the record only as backup, and he prefers it exactly that way.',
 '2019-05-01', true),

('The Quiet Ferrotide Ally', NULL, 'Hero', 'Active', 'Metal Manipulation (Support)', 32,
 'A distant relative of Ferrotide who inherited a milder version of the same ability and chose the opposite side of it entirely. She works support missions only, deliberately staying out of any solo record.',
 '2018-08-08', true),

('Backline Warden', NULL, 'Hero', 'Active', 'Logistics/Support', 25,
 'No flashy power to speak of - just the person who makes sure everyone else''s gear, intel, and exits actually work. The team would fall apart faster without him than without half the powered members combined.',
 '2019-10-10', true),

('Second Shield', NULL, 'Hero', 'Active', 'Energy Shields (Support)', 28,
 'Trained specifically to back up Auravance''s barriers when one shield alone would not hold. He has never once taken a mission that did not have someone else standing behind it with him.',
 '2020-02-02', true),

('The Silent Auravance Partner', NULL, 'Hero', 'Active', 'Empathy (Support)', 27,
 'Shares a fraction of Auravance''s empathic sense but never developed the shielding half of it. He reads a room before anyone else on the team walks in, and says almost nothing about what he finds.',
 '2020-06-06', true),

('Roster Filler Unit', NULL, 'Hero', 'Active', 'Unknown', 10,
 'A record kept deliberately sparse - even the team is not entirely sure of the full story here, and the file has never been completed.',
 '2021-01-01', true),

-- ===== REFORMED VILLAIN -> HERO (4, plus Molten Vow already inserted above) =====
('Nullwick''s Redemption Arc', NULL, 'Hero', 'Reformed', 'Power Nullification', 45,
 'A former enforcer for Duskveil Syndicate who used his nullifying touch to strip heroes of their powers on command. A job that finally crossed a line even he could not justify made him turn the same ability against his old employers instead.',
 '2019-03-03', false),

('Ashwake', NULL, 'Hero', 'Reformed', 'Fire/Decay Resistance', 48,
 'Blightmother''s most loyal lieutenant, until he watched her decide an entire neighborhood was acceptable collateral. He walked away from her that night and has spent every year since trying to undo a fraction of what he helped cause.',
 '2020-07-07', false),

('The Former Undertow', NULL, 'Hero', 'Reformed', 'Water/Drowning Powers', 50,
 'Once Undertow''s protégé, groomed to inherit both his power and his grudge against the coast. When Undertow was finally stopped, he found he did not actually want the grudge - just the ocean, and a better reason to use it.',
 '2021-11-11', false),

('Graveharbor Reclaimed', NULL, 'Hero', 'Reformed', 'Spirit Communication', 44,
 'The same Graveharbor who spent years as an uneasy anti-hero go-between, until enough of the voices he carries started asking him to do better. He did not change his power, just what he was willing to let it be used for.',
 '2022-05-05', false);
