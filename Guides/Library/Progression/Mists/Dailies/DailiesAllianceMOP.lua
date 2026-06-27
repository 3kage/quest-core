-- QuestCore bundled guide (mists)
if not QuestCore then return end
if UnitFactionGroup("player")~="Alliance" then return end
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\Operation: Shieldwall Dailies",{
expansion="mists",
mopready=true,
startlevel=90,
description="This guide will take you through quests for Operation: Shieldwall. Becoming Exalted with Operation: Shieldwall allows you to purchase an epic flying mount, epic armor, and battle pets for your character.",
},[[
step
talk Lyalia##64610
accept Meet the Scout##32246 |goto Vale of Eternal Blossoms/0 83.97,58.64
step
talk Scout Lynna##68311
turnin Meet the Scout##32246 |goto Krasarang Wilds/0 85.24,29.13
step
Watch the dialogue
talk King Varian Wrynn##61796
|tip He will eventually reach the beach.
accept A King Among Men##32247 |goto Krasarang Wilds/0 85.29,29.11
stickystart "Slay_Horde"
step
talk Marshal Troteman##68331
|tip Kill any enemies he is attacking.
Find Marshal Troteman |q 32247/2 |goto Krasarang Wilds/0 79.63,25.05
step
talk Hilda Hornswaggle##68312
|tip Kill any enemies she is attacking.
Find Hilda Hornswaggle |q 32247/3 |goto Krasarang Wilds/0 80.43,17.53
step
label "Slay_Horde"
kill Horde Raider##68332, Horde Hunter##68334, Horde Priest##67904
Slay #25# Horde |q 32247/1 |goto Krasarang Wilds/0 81.42,21.94
step
_Next to you:_
talk King Varian Wrynn##61796
turnin A King Among Men##32247 |goto Krasarang Wilds/0 81.42,21.94
accept Lion's Landing##32109 |goto Krasarang Wilds/0 81.42,21.94
step
click Flare Launcher##216609
turnin Lion's Landing##32109 |goto Krasarang Wilds/0 85.59,29.16
step
fpath Lion's Landing |goto Krasarang Wilds/0 88.33,34.70
step
label "Begin_Daily_Quests"
talk Marshal Troteman##67631
accept Priorities, People!##32116 |goto Krasarang Wilds/0 89.69,33.08 |or |next "Ruins_of_Ogudei_Hub"
accept Attack! Move!##32148 |goto Krasarang Wilds/0 89.69,33.08 |or 3
accept Tower Defense##32151 |goto Krasarang Wilds/0 89.69,33.08 |or 3
accept Hero Killer##32153 |goto Krasarang Wilds/0 89.69,33.08 |or 3
accept Siege Damage##32152 |goto Krasarang Wilds/0 89.69,33.08 |or 3
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm |complete nodailies(67631) or completedq(32149,32150) |or 3
step
talk Amber Kearnen##68908
accept Send A Message##32451 |goto Krasarang Wilds/0 89.79,32.43 |or |next "Domination_Point_Hub"
accept And Then There Were Goblins##32452 |goto Krasarang Wilds/0 89.79,32.43 |or |next "Bilgewater_Operations_Hub"
|only if not haveq(32148,32151,32153,32152) and not completedq(32148,32151,32153,32152)
step
talk Mishka##67630
accept Resource Gathering##32149 |goto Krasarang Wilds/0 89.67,32.79
accept Supply Block##32150 |goto Krasarang Wilds/0 89.67,32.79
stickystart "Collect_Animatable_Stone"
step
kill Bilgewater Sapper##67929+
collect Bilgewater Blasting Cap##92493 |q 32152/1 |goto Krasarang Wilds/0 77.63,18.58
|only if haveq(32152) or completedq(32152)
step
label "Collect_Animatable_Stone"
kill Bilgewater Sapper##67929+
collect 20 Animatable Stone##91823 |q 32151/1 |goto Krasarang Wilds/0 77.63,18.58
|only if haveq(32151) or completedq(32151)
stickystart "Kill_Domination_Point_Supply_Carts"
stickystart "Destroy_A_Domination_Point_Demolisher"
stickystart "Slay_Domination_Point_Shaman_or_Raiders"
stickystart "Collect_Lion's_Landing_Lumber"
step
kill Mazuru##67646 |q 32153/1 |goto Krasarang Wilds/0 79.18,27.60
|tip He walks around this area.
|only if haveq(32153) or completedq(32153)
step
label "Kill_Domination_Point_Supply_Carts"
kill 8 Domination Point Supply Cart##67756 |q 32150/1 |goto Krasarang Wilds/0 78.31,28.95
|only if haveq(32150) or completedq(32150)
step
label "Destroy_A_Domination_Point_Demolisher"
clicknpc Domination Point Demolisher##67671
Destroy a Domination Point Demolisher |q 32152/2 |goto Krasarang Wilds/0 78.31,28.95
|only if haveq(32152) or completedq(32152)
step
label "Collect_Lion's_Landing_Lumber"
click Hastily Abandoned Lumber##216229+
collect 12 Lion's Landing Lumber##91907 |q 32149/1 |goto Krasarang Wilds/0 77.46,24.51
|only if haveq(32149) or completedq(32149)
step
label "Slay_Domination_Point_Shaman_or_Raiders"
kill Dominance Shaman##67520+, Domination Point Raider##67826+
Slay #12# Domination Point Shaman or Raiders |q 32148/1 |goto Krasarang Wilds/0 78.06,26.91
|only if haveq(32148) or completedq(32148)
step
talk Mishka##67630
turnin Resource Gathering##32149 |goto Krasarang Wilds/0 89.67,32.79 |only if haveq(32149) or completedq(32149)
turnin Supply Block##32150 |goto Krasarang Wilds/0 89.67,32.79 |only if haveq(32150) or completedq(32150)
|only if haveq(32149,32150) or completedq(32149,32150)
step
talk Marshal Troteman##68331
turnin Attack! Move!##32148 |goto Krasarang Wilds/0 89.69,33.08 |only if haveq(32148) or completedq(32148)
turnin Tower Defense##32151 |goto Krasarang Wilds/0 89.69,33.08 |only if haveq(32151) or completedq(32151)
turnin Hero Killer##32153 |goto Krasarang Wilds/0 89.69,33.08 |only if haveq(32153) or completedq(32153)
turnin Siege Damage##32152 |goto Krasarang Wilds/0 89.69,33.08 |only if haveq(32152) or completedq(32152)
|only if haveq(32148,32151,32153,32152) or completedq(32148,32151,32153,32152)
|next "End_of_Quests"
step
label "Bilgewater_Operations_Hub"
talk Sky Admiral Rogers##67386
|tip On the deck of the Skyfire ship.
turnin And Then There Were Goblins##32452 |goto Krasarang Wilds/0 16.48,79.20
accept The Only Good Goblin...##32157 |goto Krasarang Wilds/0 16.48,79.20
|only if haveq(32452) or completedq(32452)
step
talk Mishka##67444
|tip On the deck of the Skyfire ship.
accept It's Only Right##32156 |goto Krasarang Wilds/0 16.66,78.52
|only if completedq(32452)
step
talk Seraphine of the Winter##68182
|tip On the deck of the Skyfire ship.
accept Two Step Program##32158 |goto Krasarang Wilds/0 16.71,78.54 |or
accept Undermining the Under Miner##32433 |goto Krasarang Wilds/0 16.71,78.54 |or
|tip Only one of these quests will be available.
|only if completedq(32452)
step
talk Sully 'The Pickle' McLeary##54616
|tip He walks back and forth on the edge of the deck of the Skyfire ship.
accept Burn Out!##32154 |goto Krasarang Wilds/0 17.02,78.62 |or 2
accept Dis-Assembly Required##32446 |goto Krasarang Wilds/0 17.02,78.62 |or 2
accept Circle of Life##32159 |goto Krasarang Wilds/0 17.02,78.62 |or 2
accept Necessary Breaks##32155 |goto Krasarang Wilds/0 17.02,78.62 |or 2
|tip Only two of these quests will be available.
|only if completedq(32452)
step
use the Unstable Explosive##93187
Destroy the Northwestern Fuel Tank |q 32154/3 |goto Krasarang Wilds/0 15.29,59.07
|only if haveq(32154) or completedq(32154)
stickystart "Collect_Shieldwall_Soldier_Dog_Tags"
stickystart "Plant_Energized_Seeds"
stickystart "Kill_Bilgewater_Goblins"
step
kill Shredmaster Packle##67371 |q 32158/1 |goto Krasarang Wilds/0 19.55,62.08
|only if haveq(32158) or completedq(32158)
step
use the Re-Configured Remote##93180
|tip Use it on Jungle Shredders.
kill Jungle Shredder##67285+
collect 6 Scrap Metal##93179 |q 32446/1 |goto Krasarang Wilds/0 19.61,61.16
|only if haveq(32446) or completedq(32446)
step
kill Grezik Oregrind##67373 |q 32433/1 |goto Krasarang Wilds/0 22.13,61.29
|only if haveq(32433) or completedq(32433)
step
label "Plant_Energized_Seeds"
Click on mounds of dirt in the area
Plant #11# Energized Seeds |q 32159/1 |goto Krasarang Wilds/0 19.97,60.88
|only if haveq(32159) or completedq(32159)
step
use the Unstable Explosive##93187
Destroy the Northeastern Fuel Tank |q 32154/1 |goto Krasarang Wilds/0 25.42,59.59
|only if haveq(32154) or completedq(32154)
step
use the Unstable Explosive##93187
Destroy the Northern Fuel Tank |q 32154/2 |goto Krasarang Wilds/0 23.88,54.55
|only if haveq(32154) or completedq(32154)
step
label "Kill_Bilgewater_Goblins"
kill Grease Worker##67281, Refining Specialist##67283, Off-Duty Miner##67563, Off-Duty Miner##67564, Off-Duty Logger##67638, Off-Duty Logger##67637, Bilgewater Logger##67869, Bilgewater Logger##67870, Bilgewater Miner##67871, Bilgewater Miner##67873, Bilgewater Bruiser##68826, Bilgewater Bruiser##68825
Slay #10# Bilgewater Goblins |q 32157/1 |goto Krasarang Wilds/0 25.61,57.94
You can find more around [Krasarang Wilds/0 20.08,60.27]
|only if haveq(32157) or completedq(32157)
step
label "Collect_Shieldwall_Soldier_Dog_Tags"
clicknpc Fallen Shieldwall Soldier##68700+
collect 7 Shieldwall Soldier Dog Tag##93009 |q 32156/1 |goto Krasarang Wilds/0 20.08,60.27
|only if haveq(32156) or completedq(32156)
step
talk Sully 'The Pickle' McLeary##54616
|tip He walks back and forth on the edge of the deck of the Skyfire ship.
turnin Burn Out!##32154 |goto Krasarang Wilds/0 17.02,78.62 |only if haveq(32154) or completedq(32154)
turnin Dis-Assembly Required##32446 |goto Krasarang Wilds/0 17.02,78.62 |only if haveq(32446) or completedq(32446)
|only if haveq(32154,32446) or completedq(32154,32446)
step
talk Seraphine of the Winter##68182
|tip On the deck of the Skyfire ship.
turnin Two Step Program##32158 |goto Krasarang Wilds/0 16.71,78.54 |only if haveq(32158) or completedq(32158)
turnin Undermining the Under Miner##32433 |goto Krasarang Wilds/0 16.71,78.54 |only if haveq(32433) or completedq(32433)
|only if haveq(32158,32433) or completedq(32158,32433)
step
talk Mishka##67444
|tip On the deck of the Skyfire ship.
turnin It's Only Right##32156 |goto Krasarang Wilds/0 16.66,78.52
|only if haveq(32156) or completedq(32156)
step
talk Sky Admiral Rogers##67386
|tip On the deck of the Skyfire ship.
turnin The Only Good Goblin...##32157 |goto Krasarang Wilds/0 16.48,79.20
|only if haveq(32157) or completedq(32157)
|next "End_of_Quests"
step
label "Domination_Point_Hub"
talk Sky Admiral Rogers##67386
|tip On the deck of the Skyfire ship.
|tip You can purchase a Portal Reagents: Skyfire from Proveditor Grantley to open a 20-minute portal to the ship if you have 5x Domination Point Commissions.
turnin Send A Message##32451 |goto Krasarang Wilds/0 16.48,79.20
accept Hammer to Fall##32146 |goto Krasarang Wilds/0 16.48,79.20
accept We Will Rock You##32142 |goto Krasarang Wilds/0 16.48,79.20
Proveditor Grantley can be found at [Krasarang Wilds/0 89.53,33.55]
|only if haveq(32451) or completedq(32451)
step
talk Tinkmaster Overspark##67976
accept A Kind of Magic##32143 |goto Krasarang Wilds/0 16.49,79.28
|only if completedq(32451)
step
talk Mishka##54614
|tip On the deck of the Skyfire ship.
accept Under Pressure##32144 |goto Krasarang Wilds/0 16.66,78.52
|only if completedq(32451)
stickystart "Kill_Domination_Orcs"
step
clicknpc Scout-o-Meter Mk I##67544
Eliminate the Beachhead Demolishers |q 32143/1 |goto Krasarang Wilds/0 11.64,67.98
|only if haveq(32143) or completedq(32143)
step
clicknpc the Scout-o-Meter Mk II##67546
Eliminate the Horde Wolves |q 32143/2 |goto Krasarang Wilds/0 10.81,60.91
|only if haveq(32143) or completedq(32143)
stickystart "Kill_Heavy_Mooks"
stickystart "Destroy_Horde_Supply_Crates"
step
clicknpc the Scout-o-Meter Mk III##67547
Destroy the Horde Bomb Stockpile |q 32143/3 |goto Krasarang Wilds/0 12.68,56.65
|only if haveq(32143) or completedq(32143)
step
Click the Complete Quest Box
turnin A Kind of Magic##32143
accept Don't Lose Your Head##32145
|only if haveq(32143) or completedq(32143)
step
kill Or'Dac##67435 |q 32145/1 |goto Krasarang Wilds/0 10.92,58.01
|tip It walks around the bonfire.
|only if haveq(32145) or completedq(32145)
step
kill 1 Stone Guard Ruk'Ra##67429 |q 32145/2 |goto Krasarang Wilds/0 13.39,57.89
|only if haveq(32145) or completedq(32145)
step
kill 1 Chief Bombgineer Snicklefritz##67427 |q 32145/3 |goto Krasarang Wilds/0 13.33,56.27
|only if haveq(32145) or completedq(32145)
step
label "Destroy_Horde_Supply_Crates"
click Horde Supply Crate##216665+
|tip They look like large brown boxes on the ground.
Destroy #8# Horde Supply Crates |q 32144/1 |goto Krasarang Wilds/0 12.16,57.34
|only if haveq(32144) or completedq(32144)
step
label "Kill_Heavy_Mooks"
kill 5 Heavy Mook##67399 |q 32146/1 |goto Krasarang Wilds/0 12.16,57.34
|only if haveq(32146) or completedq(32146)
step
label "Kill_Domination_Orcs"
kill 10 Domination Orc##67357 |q 32142/1 |goto Krasarang Wilds/0 12.16,57.34
|only if haveq(32142) or completedq(32142)
step
talk Mishka##54614
|tip On the deck of the Skyfire ship.
turnin Under Pressure##32144 |goto Krasarang Wilds/0 16.66,78.52
|only if haveq(32144) or completedq(32144)
step
talk Sky Admiral Rogers##67386
|tip On the deck of the Skyfire ship.
turnin Hammer to Fall##32146 |goto Krasarang Wilds/0 16.48,79.20 |only if haveq(32146) or completedq(32146)
turnin We Will Rock You##32142 |goto Krasarang Wilds/0 16.48,79.20 |only if haveq(32142) or completedq(32142)
|only if haveq(32146,32142) or completedq(32146,32142)
step
talk Tinkmaster Overspark##67976
turnin Don't Lose Your Head##32145 |goto Krasarang Wilds/0 16.49,79.28
|only if haveq(32145) or completedq(32145)
|next "End_of_Quests"
step
label "Ruins_of_Ogudei_Hub"
Enter the cave |goto Krasarang Wilds/0 80.32,17.14 < 10 |walk
talk Hilda Hornswaggle##68312
|tip Inside the cave.
turnin Priorities, People!##32116 |goto Krasarang Wilds/1 30.19,27.43
accept The Spirit Trap##32121 |goto Krasarang Wilds/1 30.19,27.43 |or 5
accept Shackles of the Past##32115 |goto Krasarang Wilds/1 30.19,27.43 |or 5
accept Eviction Notice##32347 |goto Krasarang Wilds/1 30.19,27.43 |or 5
accept Oi Ain't Afraid o' No Ghosts!##32346 |goto Krasarang Wilds/1 30.19,27.43 |or 5
accept Ogudei's Lieutenants##32122 |goto Krasarang Wilds/1 30.19,27.43 |or 5
accept It Is A Mystery##32119 |goto Krasarang Wilds/1 30.19,27.43 |or 5
|tip Five of these quests will be available.
|only if haveq(32116) or completedq(32116)
stickystart "Kill_Meng-do_Strength_of_Mountains"
stickystart "Destroy_Spirit_Traps"
stickystart "Slay_Spiritbound_Mogu"
stickystart "Release_Troubled_Slave_Spirits"
step
Follow the path |goto Krasarang Wilds/3 70.47,84.96 < 10
Continue following the path |goto Krasarang Wilds/3 93.56,47.83 < 10
kill Gen-li Twister of Words##68169 |q 32122/1 |goto Krasarang Wilds/2 68.08,82.44
|only if haveq(32122) or completedq(32122)
step
label "Kill_Meng-do_Strength_of_Mountains"
kill Meng-do Strength of Mountains##68170 |q 32122/2 |goto Krasarang Wilds/2 66.59,78.85
|only if haveq(32122) or completedq(32122)
stickystart "Destroy_Spirit_Traps"
stickystart "Slay_Spiritbound_Mogu"
stickystart "Release_Troubled_Slave_Spirits"
step
Disperse the Anamoly |q 32119/1 |goto Krasarang Wilds/3 89.81,12.54
|tip Walk around this cave and pay attention to your Anamoly Reader above your action bar.
|tip This quest is like a "Hot & Cold" game, where the closer you get, the greater anamoly reading you get.
|tip Once you have 100%, you will automatically disperse the anamoly
|only if haveq(32119) or completedq(32119)
step
label "Destroy_Spirit_Traps"
kill Spirit Trap##68061+
|tip They look like floating blue crystals inside the cave.
Destroy #3# Spirit Traps |q 32121/1 |goto Krasarang Wilds/3 89.81,12.54
|only if haveq(32121) or completedq(32121)
step
label "Slay_Spiritbound_Mogu"
kill Spiritbound Arcanist##68070, Spiritbound Brutalizer##68073
Slay #12# Spiritbound Mogu |q 32346/1 |goto Krasarang Wilds/3 46.31,12.11
|only if haveq(32346) or completedq(32346)
step
label "Release_Troubled_Slave_Spirits"
kill Troubled Slave Spirit##68074+
Release #14# Troubled Slave Spirits |q 32115/1 |goto Krasarang Wilds/3 46.31,12.11
|only if haveq(32115) or completedq(32115)
step
Follow the path down |goto Krasarang Wilds/3 70.71,39.19
kill Reliquary Scout##67861, Reliquary Blood Knight##68126, Reliquary Mage##68114
Slay #10# Reliquaries |q 32347/1 |goto Krasarang Wilds/3 62.60,58.64
|only if haveq(32347) or completedq(32347)
step
Follow the path |goto Krasarang Wilds/3 61.27,38.35 < 10 |only if walking |only if haveq(32122)
talk Hilda Hornswaggle##68312
turnin The Spirit Trap##32121 |goto Krasarang Wilds/1 30.19,27.43 |only if haveq(32121) or completedq(32121)
turnin Shackles of the Past##32115 |goto Krasarang Wilds/1 30.19,27.43 |only if haveq(32115) or completedq(32115)
turnin Eviction Notice##32347 |goto Krasarang Wilds/1 30.19,27.43 |only if haveq(32347) or completedq(32347)
turnin Oi Ain't Afraid o' No Ghosts!##32346 |goto Krasarang Wilds/1 30.19,27.43 |only if haveq(32346) or completedq(32346)
turnin Ogudei's Lieutenants##32122 |goto Krasarang Wilds/1 30.19,27.43 |only if haveq(32122) or completedq(32122)
turnin It Is A Mystery##32119 |goto Krasarang Wilds/1 30.19,27.43 |only if haveq(32119) or completedq(32119)
|only if haveq(32121,32115,32347,32346,32122,32119) or completedq(32121,32115,32347,32346,32122,32119)
step
label "End_of_Quests"
You Have Completed the Available Daily Quests |complete false or not completedq(32116,32451,32452,32149,32150,32148,32151,32153,32152,32157,32156,32158,32433,32154,32446,32159,32155,32146,32142,32143,32144,32145,32121,32115,32347,32346,32122,32119) |next "Begin_Daily_Quests"
|tip New quests will become available with the next daily server reset.
|tip |only if rep("Operation: Shieldwall") >= Revered
buy Grand Commendation of Operation: Shieldwall##93231 |goto Krasarang Wilds/0 89.66,33.46 |n |only if rep("Operation: Shieldwall") >= Revered
|tip You can buy the Grand Commedation of the Operation: Shieldwall from Agent Malley. |only if rep("Operation: Shieldwall") >= Revered
|tip If you're seeing {b}bonus{} rep at the end of daily turnins, you don't need to purchase this. |only if rep("Operation: Shieldwall") >= Revered
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\Kirin Tor Offensive Dailies",{
expansion="mists",
mopready=true,
startlevel=90,
description="This guide will take you through the bonus quests for the Kirin Tor.",
},[[
step
label "dailies"
clicknpc Assignment Map##70567 |goto Isle of Thunder/0 63.20,72.20
Click PvE at the assignment screen |q 32260 |future
|tip If no daily quests are available, make sure you're caught up with the Isle of Thunder questline.
step
talk Lady Jaina Proudmoore##67992
accept Za'Tual##32733 |goto Isle of Thunder/0 63.20,72.20
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
step
talk Vereesa Windrunner##67993
accept The Court of Bones##32731 |or 2 |goto Isle of Thunder/0 63.20,72.10
accept The Shuddering Moor##32574 |or 2 |goto Isle of Thunder/0 63.20,72.10
accept The Zandalari Colossus##32575 |or 2 |goto Isle of Thunder/0 63.20,72.10
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
step
talk Warmage Yurias##67994
accept A Wing to Fly On##32571 |goto Isle of Thunder/0 63.50,73.60
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
step
talk Captain Elleane Wavecrest##67995
accept Ihgaluk Crag##32732 |or 2 |goto Isle of Thunder/0 62.70,73.60
accept The Sleepless Legion##32572 |or 2 |goto Isle of Thunder/0 62.70,73.60
accept Enemies Beneath the Tower##32573 |or 2 |goto Isle of Thunder/0 62.70,73.60
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
step
talk Archmage Modera##67996
turnin Ihgaluk Crag##32732 |goto Isle of Thunder/0 55.70,74.40
accept Subtle Encouragement##32606 |goto Isle of Thunder/0 55.70,74.40
accept De-Constructed##32537 |goto Isle of Thunder/0 55.70,74.40
accept Manipulating the Saurok##32536 |goto Isle of Thunder/0 55.70,74.40
accept The Skumblade Threat##32535 |goto Isle of Thunder/0 55.70,74.40
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32732) or completedq(32732)
step
talk Lyalia##69675
accept The Residents of Ihgaluk##32545 |goto Isle of Thunder/0 55.90,74.40
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if completedq(32732)
step
talk Sanitation Sorcerer Stephen Litmatch##69677
accept The Creeping Carpet of Ihgaluk##32547 |goto Isle of Thunder/0 55.50,74.50
accept Just Some Light Clean-Up Work##32546 |goto Isle of Thunder/0 55.50,74.50
accept Left To Rot##32548 |goto Isle of Thunder/0 55.50,74.50
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if completedq(32732)
step
talk Image of Archmage Vargoth##69678
accept Skin of the Saurok##32549 |goto Isle of Thunder/0 55.60,74.40
|tip NOTE: This quest will give you the ability to disguise yourself as a saurok.
|tip This spell will happen automatically whenever you are outside of combat and inside Ihgaluk Crag.
|tip If you try to attack another saurok, the disguise will vanish and all saurok will be hostile to you until you are out of combat again.
|only if not completedq(32549)
step
Kill Skumblade enemies around this area |kill Skumblade Filthmonger##69228, Skumblade Brute##69338, Skumblade Scavenger##69227,Skumblade Fleshripper##69210,Skumblade Shortfang##69348,Skumblade Seadragon##69226,Skumblade Saur-Priest##69229,Skumblade Saurok##69362,Skumblade Brute##69338
Slay a Skumblade Saurok |q 32549/1 |goto Isle of Thunder/0 47.20,79.60
|only if not completedq(32549)
step
Click the Complete Quest Box:
turnin Skin of the Saurok##32549
|only if not completedq(32549)
stickystart "Crush_75_Ihgaluk_Roaches"
stickystart "Kill_3_Fetid_Meat_Piles"
stickystart "Slay_10_Skumblade_Saurok"
stickystart "Collect_9_Mogu_Weapons"
step
kill Quivering Filth##69251+
Disperse #75# Pieces of Filth |q 32546/1 |goto Isle of Thunder/0 52.70,80.20
|only if haveq(32546) or completedq(32546)
step
talk Magister Lyanis##69684
|tip He's in a magic bubble inside the cave here, you will need to approach him in order to see him.
Speak with Magister Lyanis |q 32536/2 |goto Isle of Thunder/0 51.60,84.40
|only if haveq(32536) or completedq(32536)
step
kill 1 Skumblade Brute##69338+ |q 32545/1 |goto Isle of Thunder/0 51.30,78.80
|only if haveq(32545) or completedq(32545)
step
talk Magistrix Sanal##69686
|tip She's in a magic bubble, you will need to approach her in order to see her.
|tip If you have trouble finding her, look for the moving streaks of light.
Speak with Magistrix Sanal |q 32536/3 |goto Isle of Thunder/0 50.80,73.40
|only if haveq(32536) or completedq(32536)
step
map Isle of Thunder/0
path follow loose;loop;ants straight
path	51.80,74.40	53.30,77.00	54.30,79.30	55.10,82.20	55.10,82.20
path	55.30,84.20	54.90,86.70	53.90,88.30	52.40,90.40	50.80,90.50
path	49.20,89.50	49.40,85.80	49.80,84.00	49.40,82.00	49.20,79.80
path	50.10,78.40	50.40,77.10	50.60,75.80
Follow the path
clicknpc Distressed Sunreaver Construct##69290
|tip It runs around in a large area, follow the path if you have trouble finding it.
Recover Distressed Construct |q 32537/3
|only if haveq(32537) or completedq(32537)
step
kill 1 Skumblade Saur-Priest##69229+ |q 32545/2 |goto Isle of Thunder/0 49.80,76.20
|tip He's on top of the mountain on a cliffside.
|only if haveq(32545) or completedq(32545)
step
kill 1 Skumblade Seadragon##69226+ |q 32545/3 |goto Isle of Thunder/0 48.00,88.70
|only if haveq(32545) or completedq(32545)
step
clicknpc Buried Sunreaver Construct##69288
Recover Buried Construct |q 32537/2 |goto Isle of Thunder/0 53.60,91.20
|only if haveq(32537) or completedq(32537)
step
clicknpc Malfunctioning Sunreaver##69289
Recover Malfunctioning Construct |q 32537/4 |goto Isle of Thunder/0 46.60,71.90
|only if haveq(32537) or completedq(32537)
step
clicknpc Disabled Sunreaver Construct##69439
Recover Disabled Construct |q 32537/1 |goto Isle of Thunder/0 44.20,81.80
|only if haveq(32537) or completedq(32537)
step
talk Magister Yalis##69682
|tip He's in a magic bubble, you will need to approach him in order to see him.
|tip If you have trouble finding him, look for the moving streaks of light.
Speak with Magister Yalis |q 32536/1 |goto Isle of Thunder/0 45.10,84.00
|only if haveq(32536) or completedq(32536)
step
kill Skumblade Seadragon##69226 |q 32545/3 |goto Isle of Thunder/0 53.20,90.00
|only if haveq(32545) or completedq(32545)
step
talk Buried Silver Covenant Construct##69688
Recover Buried Construct |q 32537/2 |goto Isle of Thunder/0 53.60,91.20
|only if haveq(32537) or completedq(32537)
step
label "Crush_75_Ihgaluk_Roaches"
Ride around the area, stepping on top of roaches
Crush #75# Ihgaluk Roaches |q 32547/1 |goto Isle of Thunder/0 45.60,76.50
You can find additional roaches around [Isle of Thunder/0 49.1,79.4].
|only if haveq(32547) or completedq(32547)
step
label "Kill_3_Fetid_Meat_Piles"
kill 3 Fetid Meat Pile##69247 |q 32548/1 |goto Isle of Thunder/0 50.10,78.00
|only if haveq(32548) or completedq(32548)
step
label "Slay_10_Skumblade_Saurok"
Kill Skumblade enemies around this area |kill Skumblade Fleshripper##69210, Skumblade Scavenger##69227, Skumblade Filthmonger##69228
Slay #10# Skumblade Saurok |q 32535/1 |goto Isle of Thunder/0 52.30,82.60
|only if haveq(32535) or completedq(32535)
step
label "Collect_9_Mogu_Weapons"
Kill Skumblade enemies around this area |kill Skumblade Fleshripper##69210, Skumblade Scavenger##69227, Skumblade Filthmonger##69228
|tip Click the Plant Mogu Weapon icon that appears at the center of your screen.
Plant #9# Mogu Weapons on Skumblade Corpses |q 32606/1 |goto Isle of Thunder/0 52.30,82.60
|only if haveq(32606) or completedq(32606)
step
clicknpc Wild Pterrorwing Hatchling##69428
|tip The Pterrorwing will be flying and landing around these 6 different locations.
Recover a Wild Thunder Ptrerrorwing Hatchling |q 32571/1 |goto Isle of Thunder/0 54.60,57.40
You can find more around:
[Isle of Thunder/0 53.80,65.10]
[Isle of Thunder/0 49.80,64.90]
[Isle of Thunder/0 52.70,60.30]
[Isle of Thunder/0 51.10,54.90]
[Isle of Thunder/0 53.40,52.20]
[Isle of Thunder/0 54.60,57.40]
|only if haveq(32571) or completedq(32571)
stickystart "Kill_6_Animated_Warriors"
step
Kill Shan'ze enemies around this area |kill Shan'ze Animator##70069, Shan'ze Animator##70069, Shan'ze Bloodseeker##69431
kill 7 Diremoor Shan'ze mogu |q 32573/1 |goto Isle of Thunder/0 49.50,65.40
|only if haveq(32573) or completedq(32573)
step
label "Kill_6_Animated_Warriors"
kill 6 Animated Warrior##67473+ |q 32572/1 |goto Isle of Thunder/0 49.50,65.40
|tip If you lure the enemies into the squad of soldiers here, they will do the killing for you.
|only if haveq(32572) or completedq(32572)
step
kill Zandalari Colossus##69405 |q 32575/1 |goto Isle of Thunder/0 42.30,64.00
|tip It patrols around this half of the Diremoor path. Some searching may be necessary.
only if haveq(32575) or completedq(32575)
step
kill 1 Mighty Devilsaur##69406 |q 32574/1 |goto Isle of Thunder/0 50.50,51.40
|tip It patrols around this half of the Diremoor path. Some searching may be necessary.
|only if haveq(32574) or completedq(32574)
step
talk Archmage Lan'dalock##70517
turnin Za'Tual##32733 |goto Isle of Thunder/0 42.20,66.30
accept Harbingers of the Loa##32540 |goto Isle of Thunder/0 42.20,66.30
accept Dangers of Za'Tual##32543 |goto Isle of Thunder/0 42.20,66.30
accept Surgical Strike##32542 |goto Isle of Thunder/0 42.20,66.30
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32733) or completedq(32733)
step
talk Dalvin Jaacor##69674
accept Dark Offerings##32539 |goto Isle of Thunder/0 42.30,66.30
accept Heinous Sacrifice##32538 |goto Isle of Thunder/0 42.30,66.30
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32733) or completedq(32733)
step
talk Ako##69673
accept Pterrible Ptorment##32544 |goto Isle of Thunder/0 42.10,66.50
accept Preventing a Future Threat##32541 |goto Isle of Thunder/0 42.10,66.50
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32733) or completedq(32733)
stickystart "Destroy_6_Zandalari_Offerings"
stickystart "Kill_3_Zandalari_Beastcallers"
stickystart "Kill_3_Zandalari_Jaguar_Warriors"
stickystart "Kill_3_Zandalari_Spiritbinders"
stickystart "Slay_12_Trolls_in_Za'Tual"
step
click Tec'uat's Sacrificial Altar##218425
Destroy the Tec'uat's Altar |q 32538/2 |goto Isle of Thunder/0 39.80,65.30
|only if haveq(32538) or completedq(32538)
step
kill Zandalari Arcweaver##69224+
Free the Tormented Skyscreamer |q 32544/1 |goto Isle of Thunder/0 41.10,69.40
|only if haveq(32544) or completedq(32544)
step
click Pa'chek's Sacrificial Altar##218426
Destroy the Pa'chek's Altar |q 32538/3 |goto Isle of Thunder/0 38.70,78.60
|only if haveq(32538) or completedq(32538)
step
click Cha'lat's Sacrificial Altar##218424
Destroy the Cha'lat's Altar |q 32538/1 |goto Isle of Thunder/0 33.90,76.00
|only if haveq(32538) or completedq(32538)
step
Kill Zandalari enemies around this area |kill Zandalari Arcanital##69281, Zandalari Spiritweaver##69285
Slay #2# Harbingers of the Loa |q 32540/1 |goto Isle of Thunder/0 36.50,70.00
Another Can Spawn Here If You Don't Feel Like Waiting [38.90,76.50]
|only if haveq(32540) or completedq(32540)
step
Frighten #12# Hatchling Skyscreamers |q 32541/1 |goto Isle of Thunder/0 30.90,77.50
|tip Moving over them causes them to become frightened.
|only if haveq(32541) or completedq(32541)
step
label "Destroy_6_Zandalari_Offerings"
click Zandalari Offering##216991
Destroy #6# Zandalari Offerings |q 32539/1 |goto Isle of Thunder/0 40.10,72.40
You Can Find More Around [Isle of Thunder/0 40.60,74.10]
|only if haveq(32539) or completedq(32539)
step
label "Kill_3_Zandalari_Beastcallers"
kill 3 Zandalari Beastcaller##69065+ |q 32542/1 |goto Isle of Thunder/0 35.30,75.80
|only if haveq(32542) or completedq(32542)
step
label "Kill_3_Zandalari_Jaguar_Warriors"
kill 3 Zandalari Jaguar Warrior##69171+ |q 32542/2 |goto Isle of Thunder/0 35.30,75.80
|only if haveq(32542) or completedq(32542)
step
label "Kill_3_Zandalari_Spiritbinders"
kill 3 Zandalari Spiritbinder##69225+ |q 32542/3 |goto Isle of Thunder/0 35.30,75.80
|only if haveq(32542) or completedq(32542)
step
label "Slay_12_Trolls_in_Za'Tual"
Kill Zandalari enemies around this area |kill Zandalari Stoneshield##69223+, Zandalari Commoner##69170+, Zandalari Beastcaller##69065+, Zandalari Jaguar Warrior##69171+, Zandalari Spiritbinder##69225+ |notinsticky
Slay #12# Trolls in Za'Tual |q 32543/1 |goto Isle of Thunder/0 40.70,74.20
|only if haveq(32543) or completedq(32543)
step
label "Court_Of_Bones"
talk Narasi Snowdawn##67997
turnin The Court of Bones##32731 |goto Isle of Thunder/0 40.20,59.60
accept Soul Surrender##32526 |goto Isle of Thunder/0 40.20,59.60
accept Grave Circumstances##32527 |goto Isle of Thunder/0 40.20,59.60
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32731) or completedq(32731)
step
talk Danara Silverglass##69668
accept Rise No More!##32532 |goto Isle of Thunder/0 40.10,59.30
accept Ashes of the Enemy##32525 |goto Isle of Thunder/0 40.10,59.30
accept Stone Cold##32533 |goto Isle of Thunder/0 40.10,59.30
accept Into the Crypts##32528 |goto Isle of Thunder/0 40.10,59.30
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32731) or completedq(32731)
step
talk Vylene Amaranth##69670
accept The Call of Thunder##32529 |or |goto Isle of Thunder/0 40.10,59.10
accept The Bloodletter##32530 |or |goto Isle of Thunder/0 40.10,59.10
accept The Conquest of Stone##32531 |or |goto Isle of Thunder/0 40.10,59.10
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32731) or completedq(32731)
stickystart "Slay_10_Shan'ze_Mogu"
stickystart "Kill_15_Risen_Anscestors"
stickystart "Kill_8_Grave_Guardians"
stickystart "Burn_8_Mummified_Remains"
step
click Tormentor's Cage##217768
|tip They will be all over the Court of Bones, usually close to walls.
Rescue #6# Scouts |q 32526/1 |goto Isle of Thunder/0 36.90,53.00
|only if haveq(32526) or completedq(32526)
step
kill Kaida the Bloodletter##69250 |q 32530/1 |goto Isle of Thunder/0 35.00,47.90
|only if haveq(32530) or completedq(32530)
step
kill Shan'ze Thundercaller##69264+
|tip You will need to just down in the water here.
Stop the Shan'ze Thundercallers' Ritual |q 32529/1 |goto Isle of Thunder/0 33.00,56.70
|only if haveq(32529) or completedq(32529)
step
kill Shan'ze Soulripper##69903+
Disrupt the Ancient Stone Conqueror Ritual |q 32531/1 |goto Isle of Thunder/0 35.10,63.80
|only if haveq(32531) or completedq(32531)
step
use the Incantation of Gura##93803
kill Gura the Reclaimed##69241 |q 32528/1 |goto Isle of Thunder/0 36.80,56.50
|only if haveq(32528) or completedq(32528)
step
label "Slay_10_Shan'ze_Mogu"
Kill Shan'ze enemies around this area |kill Shan'ze Gravekeeper##69235, Shan'ze Thundercaller##69264, Shan'ze Soulripper##69236
|tip Shan'ze Thundercallers will cast Chain Lightning appearing as a circle around your character.
|tip Move out of to avoid heavy damage.
Slay #10# Shan'ze Mogu in the Court of Bones |q 32527/1 |goto Isle of Thunder/0 35.50,52.30
|only if haveq(32527) or completedq(32527)
step
label "Kill_15_Risen_Anscestors"
kill 15 Risen Ancestor##69237+ |q 32532/1 |goto Isle of Thunder/0 35.50,52.30
|only if haveq(32532) or completedq(32532)
step
label "Kill_8_Grave_Guardians"
kill 8 Grave Guardian##69240+ |q 32533/1 |goto Isle of Thunder/0 35.50,52.30
|tip They sit as stone statues, you need to activate them first.
|only if haveq(32533) or completedq(32533)
step
label "Burn_8_Mummified_Remains"
use the Blessed Torch##93751
|tip Use it on Mummified Remains.
Burn #8# Mummified Remains |q 32525/1 |goto Isle of Thunder/0 35.50,52.30
|only if haveq(32525) or completedq(32525)
step
talk Vylene Amaranth##69670
turnin The Call of Thunder##32529 |goto Isle of Thunder/0 40.10,59.10 |only if haveq(32529) or completedq(32529)
turnin The Bloodletter##32530 |goto Isle of Thunder/0 40.10,59.10 |only if haveq(32530) or completedq(32530)
turnin The Conquest of Stone##32531 |goto Isle of Thunder/0 40.10,59.10 |only if haveq(32531) or completedq(32531)
|only if haveq(32529,32530,32531) or completedq(32529,32530,32531)
step
talk Danara Silverglass##69668
turnin Rise No More!##32532 |goto Isle of Thunder/0 40.10,59.30 |only if haveq(32532) or completedq(32532)
turnin Into the Crypts##32528 |goto Isle of Thunder/0 40.10,59.30 |only if haveq(32528) or completedq(32528)
turnin Ashes of the Enemy##32525 |goto Isle of Thunder/0 40.10,59.30 |only if haveq(32525) or completedq(32525)
turnin Stone Cold##32533 |goto Isle of Thunder/0 40.10,59.30 |only if haveq(32533) or completedq(32533)
|only if haveq(32532,32528,32525,32533) or completedq(32532,32528,32525,32533)
step
talk Narasi Snowdawn##67997
turnin Soul Surrender##32526 |goto Isle of Thunder/0 40.20,59.60 |only if haveq(32526) or completedq(32526)
turnin Grave Circumstances##32527 |goto Isle of Thunder/0 40.20,59.60 |only if haveq(32527) or completedq(32527)
|only if haveq(32526,32527) or completedq(32526,32527)
step
talk Narasi Snowdawn##67997
accept The Beast Pens##32567 |goto Isle of Thunder/0 40.20,59.60
accept Imposing Threat##32581 |goto Isle of Thunder/0 40.20,59.60
Click here when no more quests are available |confirm
|next "beast_pens" |only if haveq(32567)
|only if haveq(32731) or completedq(32731)
step
talk Ako##69673
turnin Pterrible Ptorment##32544 |goto Isle of Thunder/0 42.10,66.50 |only if haveq(32544) or completedq(32544)
turnin Preventing a Future Threat##32541 |goto Isle of Thunder/0 42.10,66.50 |only if haveq(32541) or completedq(32541)
|only if haveq(32544,32541) or completedq(32544,32541)
step
talk Dalvin Jaacor##69674
turnin Dark Offerings##32539 |goto Isle of Thunder/0 42.30,66.30 |only if haveq(32539) or completedq(32539)
turnin Heinous Sacrifice##32538 |goto Isle of Thunder/0 42.30,66.30 |only if haveq(32538) or completedq(32538)
|only if haveq(32539,32538) or completedq(32539,32538)
step
talk Archmage Lan'dalock##70517
turnin Harbingers of the Loa##32540 |goto Isle of Thunder/0 42.20,66.30 |only if haveq(32540) or completedq(32540)
turnin Dangers of Za'Tual##32543 |goto Isle of Thunder/0 42.20,66.30 |only if haveq(32543) or completedq(32543)
turnin Surgical Strike##32542 |goto Isle of Thunder/0 42.20,66.30 |only if haveq(32542) or completedq(32542)
accept Among the Bones##32578 |goto Isle of Thunder/0 42.20,66.30
accept No Time To Rest##32568 |goto Isle of Thunder/0 42.20,66.30
accept Encroaching Force##32580 |goto Isle of Thunder/0 42.20,66.30
accept The Beast Pens##32567 |goto Isle of Thunder/0 42.20,66.30
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32733) or completedq(32733)
step
talk Sanitation Sorcerer Stephen Litmatch##69677
turnin The Creeping Carpet of Ihgaluk##32547 |goto Isle of Thunder/0 55.50,74.40 |only if haveq(32547) or completedq(32547)
turnin Just Some Light Clean-Up Work##32546 |goto Isle of Thunder/0 55.50,74.40 |only if haveq(32546) or completedq(32546)
turnin Left To Rot##32548 |goto Isle of Thunder/0 55.50,74.40 |only if haveq(32548) or completedq(32548)
|only if haveq(32547,32546,32548) or completedq(32547,32546,32548)
step
talk Lyalia##69675
turnin The Residents of Ihgaluk##32545 |goto Isle of Thunder/0 55.90,74.40
|only if haveq(32545) or completedq(32545)
step
talk Archmage Modera##67996
turnin Subtle Encouragement##32606 |goto Isle of Thunder/0 55.80,74.40 |only if haveq(32606) or completedq(32606)
turnin The Skumblade Threat##32535 |goto Isle of Thunder/0 55.80,74.40 |only if haveq(32535) or completedq(32535)
turnin De-Constructed##32537 |goto Isle of Thunder/0 55.80,74.40 |only if haveq(32537) or completedq(32537)
turnin Manipulating the Saurok##32536 |goto Isle of Thunder/0 55.80,74.40 |only if haveq(32536) or completedq(32536)
|only if haveq(32606,32535,32537,32536) or completedq(32606,32535,32537,32536)
step
talk Archmage Modera##67996
accept Among the Bones##32578 |goto Isle of Thunder/0 55.80,74.40
accept No Time To Rest##32568 |goto Isle of Thunder/0 55.80,74.40
accept Imposing Threat##32581 |goto Isle of Thunder/0 55.80,74.40
accept Encroaching Force##32580 |goto Isle of Thunder/0 55.80,74.40
accept The Beast Pens##32567 |goto Isle of Thunder/0 55.80,74.40
accept Competing Magic##32579 |goto Isle of Thunder/0 55.80,74.40
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32732) or completedq(32732)
step
talk Captain Elleane Wavecrest##67995
turnin The Sleepless Legion##32572 |goto Isle of Thunder/0 62.70,73.60 |only if haveq(32572) or completedq(32572)
turnin Enemies Beneath the Tower##32573 |goto Isle of Thunder/0 62.70,73.60 |only if haveq(32573) or completedq(32573)
|only if haveq(32572,32573) or completedq(32572,32573)
step
talk Warmage Yurias##67994
turnin A Wing to Fly On##32571 |goto Isle of Thunder/0 63.50,73.60
|only if haveq(32571) or completedq(32571)
step
talk Vereesa Windrunner##67993
turnin The Shuddering Moor##32574 |goto Isle of Thunder/0 63.20,72.10
|only if haveq(32574) or completedq(32574)
step
talk Vereesa Windrunner##69600
turnin The Zandalari Colossus##32575 |goto Isle of Thunder/0 63.20,72.10
|only if haveq(32575) or completedq(32575)
step
talk Lady Jaina Proudmoore##67992
accept The Beast Pens##32567 |or 2 |goto Isle of Thunder/0 63.20,72.20
accept Imposing Threat##32581 |or 2 |goto Isle of Thunder/0 63.20,72.20
accept Imposing Threat##32577 |or 2 |goto Isle of Thunder/0 63.20,72.20
accept Encroaching Force##32580 |or 2 |goto Isle of Thunder/0 63.20,72.20
accept No Time To Rest##32568 |or 2 |goto Isle of Thunder/0 63.20,72.20
accept Among the Bones##32578 |or 2 |goto Isle of Thunder/0 63.20,72.20
accept Competing Magic##32579 |or 2 |goto Isle of Thunder/0 63.20,72.20
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32571,32572,32573,32574,32575) or completedq(32571,32572,32573,32574,32575)
step
kill Nurkala##69663 |q 32580/1 |goto Isle of Thunder/0 61.80,61.40
|only if haveq(32580) or completedq(32580)
step
kill Nurkala##69663 |q 32584/1 |goto Isle of Thunder/0 61.80,61.40
|only if haveq(32584) or completedq(32584)
step
kill 1 Horgak the Enslaver##70176 |q 32581/1 |goto Isle of Thunder/0 45.70,59.50
|only if haveq(32581) or completedq(32581)
step
kill 1 Horgak the Enslaver##70176 |q 32577/1 |goto Isle of Thunder/0 45.70,59.50
|only if haveq(32577) or completedq(32577)
step
kill 1 Arcweaver Jor'guva##69665 |q 32579/1 |goto Isle of Thunder/0 43.90,69.00
|only if haveq(32579) or completedq(32579)
step
kill 1 Arcweaver Jor'guva##69665 |q 32576/1 |goto Isle of Thunder/0 43.90,69.00
|only if haveq(32576) or completedq(32576)
step
label "beast_pens"
Find Scout Captain Daelin at the Beast Pens |q 32567/1 |goto Isle of Thunder/0 51.90,47.00
|only if haveq(32567) or completedq(32567)
step
talk Scout Captain Daelin##67998
turnin The Beast Pens##32567 |goto Isle of Thunder/0 51.80,47.10 |only if haveq(32567) or completedq(32567)
accept Saur Loser##32550 |or 2 |goto Isle of Thunder/0 51.80,47.10
accept Compy Stomp##32551 |or 2 |goto Isle of Thunder/0 51.80,47.10
accept Dino Might##32554 |or 2 |goto Isle of Thunder/0 51.80,47.10
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32567) or completedq(32567)
step
talk Miura Brightweaver##67999
accept Direhorn vs Devilsaur##32553 |goto Isle of Thunder/0 51.80,47.20
accept Loa-saur##32552 |goto Isle of Thunder/0 51.80,47.20
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if completedq(32567) or completedq(32567)
stickystart "Kill_8_Conquerors_Terrace_Zandalari"
stickystart "Slay_10_Beast_Pen_Trolls"
stickystart "Collect_5_Saur_Fetish"
stickystart "Use_5_Saur_Fetishes"
stickystart "Slay_5_Raptors"
stickystart "Kill_10_Trained_Saurid"
step
kill Loa-Infused Bladetalon##69306+
kill Loa Speaker##69302 |q 32552/1 |goto Isle of Thunder/0 53.30,44.30
|only if haveq(32552) or completedq(32552)
step
Kill enemies around this area |kill Master Caller##69286, Zandalari Fetish-Binder##69155
Disrupt the Binding Ritual |q 32553/1 |goto Isle of Thunder/0 53.40,42.20
|only if haveq(32553) or completedq(32553)
step
label "Kill_8_Conquerors_Terrace_Zandalari"
Kill Zandalari enemies around this area |kill Zandalari Soultwister##69296, Zandalari Haruspex##69297, Zandalari Bloodguard##69294,Zandalari Acolyte##69295
Slay #8# Conqueror's Terrace Zandalari |q 32560/1 |goto Isle of Thunder/0 58.50,51.90
|only if haveq(32560) or completedq(32560)
step
label "Slay_10_Beast_Pen_Trolls"
Kill Zandalari enemies around this area |kill Zandalari Fetish-Binder##69155, Zandalari Beastlord##69144, Zandalari Fetish-Binder##69155, Zandalari Saurcaller##69154, Master Caller##69286, Disciple of Jalak##69376, Zandalari Venomblade##70328, Zandalari Arcweaver##70401
Slay #10# Beast Pens Trolls |q 32550/1 |goto Isle of Thunder/0 49.20,40.90
|only if haveq(32550) or completedq(32550)
step
label "Collect_5_Saur_Fetish"
click Saur Fetish##218373
collect 5 Saur Fetish##93668 |q 32554 |goto Isle of Thunder/0 50.70,43.20
|only if haveq(32554) or completedq(32554)
step
label "Use_5_Saur_Fetishes"
use the Saur Fetish##93668
|tip Use them on Raptors, Compys, Skyscreamers or Direhorns around this area.
Use #5# Saur Fetishes |q 32554/1 |goto Isle of Thunder/0 50.70,43.20
|only if haveq(32554) or completedq(32554)
step
label "Slay_5_Raptors"
Kill Raptor enemies around this area |kill Tamed Bladetalon##69180, Maturing Raptor##69183 |notinsticky
Slay #5# Raptors |q 32551/1 |goot Isle of Thunder/0 49.60,37.90
|only if haveq(32551) or completedq(32551)
step
label "Kill_10_Trained_Saurid"
kill 10 Trained Saurid##58071 |q 32551/2 |goot Isle of Thunder/0 49.60,37.90
|only if haveq(32551) or completedq(32551)
step
talk Scout Captain Daelin##67998
turnin Compy Stomp##32551 |goto Isle of Thunder/0 51.80,47.10 |only if haveq(32551) or completedq(32551)
turnin Saur Loser##32550 |goto Isle of Thunder/0 51.80,47.10 |only if haveq(32550) or completedq(32550)
turnin Dino Might##32554 |goto Isle of Thunder/0 51.80,47.10 |only if haveq(32554) or completedq(32554)
|only if haveq(32551,32550,32554) or completedq(32551,32550,32554)
step
talk Miura Brightweaver##67999
turnin Direhorn vs Devilsaur##32553 |goto Isle of Thunder/0 51.80,47.20 |only if haveq(32553) or completedq(32553)
turnin Loa-saur##32552 |goto Isle of Thunder/0 51.80,47.20 |only if haveq(32552) or completedq(32552)
accept Maximum Capacitor##32586 |or |goto Isle of Thunder/0 51.80,47.20
accept On Her Magic-ey Secret Service##32588 |or |goto Isle of Thunder/0 51.80,47.20
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32552,32553) or completedq(32552,32553)
step
talk Scout Captain Daelin##67998
accept Among the Bones##32578 |or |goto Isle of Thunder/0 51.80,47.10
accept No Time To Rest##32568 |or |goto Isle of Thunder/0 51.80,47.10
accept Encroaching Force##32584 |or |goto Isle of Thunder/0 51.80,47.10
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if completedq(32567)
step
Enter the cave |goto Isle of Thunder/0 49.30,33.00 < 10 |walk
use the Arcane Emancipator##93761
|tip Use it on Agent Reginald.
Rescue Agent Reginald |q 32588/1 |goto Isle of Thunder/1 34.60,70.80
|only if haveq(32588) or completedq(32588)
step
Use your Arcane Emancipator on _Agent Grisel_ |use Arcane Emancipator##93761
Rescue Agent Grisel |q 32588/2 |goto Isle of Thunder/1 40.80,53.80
|only if haveq(32588) or completedq(32588)
step
Use your Arcane Emancipator on _Agent Grisel_. |use Arcane Emancipator##93761
Rescue Agent Crowley |q 32588/3 |goto Isle of Thunder/1 49.40,44.00
|only if haveq(32588) or completedq(32588)
step
kill Metal Lord Mono-Han##69326 |q 32588/4 |goto Isle of Thunder/0 54.90,31.30
|only if haveq(32588) or completedq(32588)
step
clicknpc Lightning Drill##69671
Destroy the Western Lightning Drill |q 32586/1 |goto Isle of Thunder/1 21.00,69.90
|only if haveq(32586) or completedq(32586)
step
clicknpc Lightning Drill##69671
Destroy the Central Lightning Drill |q 32586/2 |goto Isle of Thunder/1 32.60,37.50
|only if haveq(32586) or completedq(32586)
step
clicknpc Lightning Drill##69671
Destroy the Eastern Lightning Drill |q 32586/3 |goto Isle of Thunder/1 62.20,15.40
|only if haveq(32586) or completedq(32586)
step
kill Metal Lord Mono-Han##69326 |q 32586/4 |goto Isle of Thunder/0 54.90,31.30
|only if haveq(32586) or completedq(32586)
step
Click the _Quest Complete_ Box:
turnin Maximum Capacitor##32586 |only if haveq(32586) or completedq(32586)
turnin On Her Magic-ey Secret Service##32588 |only if haveq(32588) or completedq(32588)
accept Forge Ahead!##32587
|only if haveq(32586,32588) or completedq(32586,32588)
step
kill Itoka##69461 |q 32587/1 |goto Isle of Thunder/0 57.70,34.00
|only if haveq(32587) or completedq(32587)
step
kill Fleshcrafter Hoku##69435
collect Mogu Codex Fragment##93731 |q 32587/2 |goto Isle of Thunder/0 55.70,38.60
|only if haveq(32587) or completedq(32587)
step
talk Scout Captain Daelin##67998
turnin No Time To Rest##32568 |goto Isle of Thunder/0 61.90,52.00 |only if haveq(32568) or completedq(32568)
accept Keep It Secret##32560 |goto Isle of Thunder/0 61.90,52.00
accept Out of Enemy Hands##32557 |goto Isle of Thunder/0 61.90,52.00
accept Even Giants Fall##32559 |goto Isle of Thunder/0 61.90,52.00
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32568) or completedq(32568)
step
talk Miura Brightweaver##67999
accept The More You Know##32556 |goto Isle of Thunder/0 61.90,52.10
accept Centuries in Sentries##32555 |goto Isle of Thunder/0 61.90,52.10
accept All In the Family##32558 |goto Isle of Thunder/0 61.90,52.10
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if completedq(32568) or completedq(32568)
stickystart "Slay_8_Conqueror_Terrace_Zandalari"
stickystart "Capture_5_Zandalari_Spirits"
stickystart "Collect_7_Loa_Infused_Blades"
step
kill Priest of the Serpent##69567
kill Guardian Tak'u##69336 |q 32559/1 |goto Isle of Thunder/0 60.20,54.20
|only if haveq(32559) or completedq(32559)
step
kill Spiritbinder Tu'chek##69301
collect Mask of the Dark Mystic##93734 |q 32558/1 |goto Isle of Thunder/0 59.40,56.70
|only if haveq(32560) or completedq(32559)
step
kill Arcanital Ra'kul##69300
collect Mask of the Dark Mystic##93734 |q 32558/2 |goto Isle of Thunder/0 56.70,46.30
|only if haveq(32560) or completedq(32560)
step
click Ritual Artifict
collect 6 Ritual Artifact##93735 |q 32556/1 |goto Isle of Thunder/0 56.50,47.70
|only if haveq(32556) or completedq(32556)
step
label "Capture_5_Zandalari_Spirits"
kill Spirit-Bound Sentry##69335+
use the Resonance Siphon##93806
|tip Use it on the corpses of Spirit-Bound Sentry.
Capture #5# Zandalari Spirits |q 32555/1 |goto Isle of Thunder/0 55.7,50.7
|only if haveq(32555) or completedq(32555)
step
label "Slay_8_Conqueror_Terrace_Zandalari"
Kill Zandalari enemies around this area |kill Zandalari Acolyte##69295, Zandalari Bloodguard##69294, Zandalari Haruspex##69297, Zandalari Soultwister##69296, Zandalari Acolyte##69295, Zandalari Commoner##69299, Priest of the Serpent##69567, Priest of the Hydra##69568, Priest of the Direhorn##69569, Priest of the Hawk##69570
Slay #8# Conqueror's Terrace Zandalari |q 32560/1 |goto Isle of Thunder/0 59.0,51.3
You can find more around [58.1,48.9]
|only if haveq(32560) or completedq(32560)
step
label "Collect_7_Loa_Infused_Blades"
click Loa-Infused Blades##218056
collect 7 Loa-Infused Blade##93736 |q 32557/1 |goto Isle of Thunder/0 59.0,51.3
You can find more around [58.1,48.9]
|only if haveq(32557) or completedq(32557)
step
talk Scout Captain Daelin##67998
turnin Keep It Secret##32560 |goto Isle of Thunder/0 61.90,52.00 |only if haveq(32560) or completedq(32560)
turnin Out of Enemy Hands##32557 |goto Isle of Thunder/0 61.90,52.00 |only if haveq(32557) or completedq(32557)
turnin Even Giants Fall##32559 |goto Isle of Thunder/0 61.90,52.00 |only if haveq(32559) or completedq(32559)
|only if haveq(32568) or completedq(32568)
step
talk Miura Brightweaver##67999
turnin The More You Know##32556 |goto Isle of Thunder/0 61.90,52.10 |only if haveq(32556) or completedq(32556)
turnin All In the Family##32558 |goto Isle of Thunder/0 61.90,52.10 |only if haveq(32558) or completedq(32558)
turnin Centuries in Sentries##32555 |goto Isle of Thunder/0 61.90,52.10 |only if haveq(32555) or completedq(32555)
|only if haveq(32560,32557,32559) or completedq(32560,32557,32559)
step
talk Miura Brightweaver##67999
accept Maximum Capacitor##32586 |goto Isle of Thunder/0 61.90,52.10
accept On Her Magic-ey Secret Service##32588 |goto Isle of Thunder/0 61.90,52.10
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32560,32557,32559) or completedq(32560,32557,32559)
step
talk Scout Captain Daelin##67998
accept Raining Bones##32582 |goto Isle of Thunder/0 61.90,52.00
accept Encroaching Force##32585 |goto Isle of Thunder/0 61.90,52.00
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32568) or completedq(32568)
step
Enter the cave here |goto Isle of Thunder/0 49.30,33.00 < 10 |walk
Use your Arcane Emancipator on _Agent Reginald_ |use Arcane Emancipator##93761
Rescue Agent Reginald |q 32588/1 |goto Isle of Thunder/1 34.60,70.80
|only if haveq(32588)
step
Use your Arcane Emancipator on _Agent Grisel_ |use Arcane Emancipator##93761
Rescue Agent Grisel |q 32588/2 |goto Isle of Thunder/1 40.80,53.80
|only if haveq(32588)
step
Use your Arcane Emancipator on _Agent Grisel_ |use Arcane Emancipator##93761
Rescue Agent Crowley |q 32588/3 |goto Isle of Thunder/1 49.40,44.00
|only if haveq(32588)
step
kill Metal Lord Mono-Han##69326 |q 32588/4 |goto Isle of Thunder/0 54.90,31.30
|only if haveq(32588)
step
clicknpc Lightning Drill##69671
Destroy the Western Lightning Drill |q 32586/1 |goto Isle of Thunder/1 21.00,69.90
|only if haveq(32586)
step
clicknpc Lightning Drill##69671
Destroy the Central Lightning Drill |q 32586/2 |goto Isle of Thunder/1 32.60,37.50
|only if haveq(32586)
step
clicknpc Lightning Drill##69671
Destroy the Eastern Lightning Drill |q 32586/3 |goto Isle of Thunder/1 62.20,15.40
|only if haveq(32586)
step
kill Metal Lord Mono-Han##69326+ |q 32586/4 |goto Isle of Thunder/0 54.90,31.30
|only if haveq(32586)
step
Click the _Quest Complete_ Box:
turnin Maximum Capacitor##32586 |only if haveq(32586) or completedq(32586)
turnin On Her Magic-ey Secret Service##32588 |only if haveq(32588) or completedq(32588)
accept Forge Ahead!##32587
|only if haveq(32586,32588) or completedq(32586,32588)
step
kill Itoka##69461 |q 32587/1 |goto Isle of Thunder/0/0 57.70,34.00
only if haveq(32587)
step
kill Fleshcrafter Hoku##69435
collect Mogu Codex Fragment##93731 |q 32587/2 |goto Isle of Thunder/0 55.70,38.60
|only if haveq(32587)
step
talk Scout Captain Daelin##70552
turnin Forge Ahead!##32587 |goto Isle of Thunder/0 58.70,42.70
|only if haveq(32587) or completedq(32587)
step
talk Taoshi##69413
accept Extended Shore Leave##32607 |or |goto Isle of Thunder/0 58.70,42.80
accept Raiding the Vault##32608 |or |goto Isle of Thunder/0 58.70,42.80
|only if completedq(32587) and thunderstage()>=5
step
Click the door to The Swollen Vault |goto Isle of Thunder/0 62.30,40.20
Enter the Swollen Vault |goto Isle of Thunder/2 |noway |c
|only if haveq(32608)
step
kill Lu-Shero##69274
collect Hoard-Keeper's Key##95374 |goto Isle of Thunder/2 57.60,65.60
|only if haveq(32608)
step
click Stormy Chest##218853
collect Choker of Storms##95372 |q 32608/1 |goto Isle of Thunder/2 33.00,28.70
|only if haveq(32608)
step
Click Workshop Orders
Workshop Orders |q 32607/2 |goto Isle of Thunder 63.80,38.90
|only if haveq(32607)
step
kill Zur'chaka the Bonecrafter##69666 |q 32578/1 |goto Isle of Thunder/0 41.90,79.40 |only if haveq(32578) or completedq(32578)
kill Zur'chaka the Bonecrafter##69666 |q 32582/1 |goto Isle of Thunder/0 54.47,45.20 |only if haveq(32582) or completedq(32582)
|only if haveq(32578,32582)
step
kill Nurkala##69663 |q 32585/1 |only if haveq(32585) |goto Isle of Thunder/0 61.80,61.50
kill Nurkala##69663 |q 32580/1 |only if haveq(32580) |goto Isle of Thunder/0 61.80,61.50
kill Nurkala##69663 |q 32584/1 |only if haveq(32584) |goto Isle of Thunder/0 61.80,61.50
|only if haveq(32580) or haveq(32584) or haveq(32585)
step
kill 1 Arcweaver Jor'guva##69665 |q 32579/1 |only if haveq(32579) |goto Isle of Thunder/0 43.9,69.0
kill 1 Arcweaver Jor'guva##69665 |q 32576/1 |only if haveq(32576) |goto Isle of Thunder/0 43.9,69.0
|only if haveq(32579) or haveq(32576)
step
kill Zur'chaka the Bonecrafter##69666 |q 32578/1 |goto Isle of Thunder/0 41.90,79.40
|only if haveq(32578)
step
kill Arcweaver Uzan##69272 |q 32607/1 |goto Isle of Thunder/0 68.30,45.30
|only if haveq(32607)
step
talk Scout Captain Daelin##67998
turnin Encroaching Force##32585 |goto Isle of Thunder/0 61.90,52.00 |only if haveq(32585) or completedq(32585)
turnin Raining Bones##32582 |goto Isle of Thunder/0 61.90,52.00 |only if haveq(32582) or completedq(32582)
|only if haveq(32585,32582) or completedq(32585,32582)
step
talk Lady Jaina Proudmoore##67992
turnin ##32582 |only if haveq(32582) or completedq(32582)
turnin Among the Bones##32578 |goto Isle of Thunder/0 63.20,72.30 |only if haveq(32578) or completedq(32578)
turnin Encroaching Force##32580 |goto Isle of Thunder/0 63.20,72.30 |only if haveq(32580) or completedq(32580)
turnin Encroaching Force##32584 |goto Isle of Thunder/0 63.20,72.30 |only if haveq(32584) or completedq(32584)
turnin Raiding the Vault##32608 |goto Isle of Thunder/0 63.20,72.30 |only if haveq(32608) or completedq(32608)
turnin Imposing Threat##32581 |goto Isle of Thunder/0 63.20,72.30 |only if haveq(32581) or completedq(32581)
turnin Extended Shore Leave##32607 |goto Isle of Thunder/0 63.20,72.30 |only if haveq(32607) or completedq(32607)
turnin Competing Magic##32576 |goto Isle of Thunder/0 63.20,72.30 |only if haveq(32576) or completedq(32576)
turnin Competing Magic##32579 |goto Isle of Thunder/0 63.20,72.30 |only if haveq(32579) or completedq(32579)
step
label "end"
You have completed the available daily quests |complete false or not completedq(32578,32580,32584,32608,32581,32607,32576,32579,32586,32588,32568,32552,32553,32554,32550,32551,32572,32573,32571,32574,32575,32536,32537,32535,32606,32545,32548,32546,32547,32542,32543,32540,32538,32539,32541,32544,32527,32526,32533,32525,32528,32532,32531,32530,32529,32731,32527,32526,32533,32525,32528,32532,32531,32530,32529,32731,32733,32732)  |next "dailies"
|tip New quests will become available with the next daily server reset.
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\Beastmaster's Hunt Dailies (Operation: Shieldwall)",{
expansion="mists",
mopready=true,
startlevel=90,
description="This guide will take you through the vendor quests for Operation: Shieldwall to kill one of 3 beasts for reputation each day.",
},[[
step
talk Lyalia##64610
accept Meet the Scout##32246 |goto Vale of Eternal Blossoms/0 83.97,58.64
step
talk Scout Lynna##68311
turnin Meet the Scout##32246 |goto Krasarang Wilds/0 85.24,29.13
step
Watch the dialogue
talk King Varian Wrynn##61796
|tip He will eventually reach the beach.
accept A King Among Men##32247 |goto Krasarang Wilds/0 85.29,29.11
stickystart "Slay_Horde"
step
talk Marshal Troteman##68331
|tip Kill any enemies he is attacking.
Find Marshal Troteman |q 32247/2 |goto Krasarang Wilds/0 79.63,25.05
step
talk Hilda Hornswaggle##68312
|tip Kill any enemies she is attacking.
Find Hilda Hornswaggle |q 32247/3 |goto Krasarang Wilds/0 80.43,17.53
step
label "Slay_Horde"
kill Horde Raider##68332, Horde Hunter##68334, Horde Priest##67904
Slay #25# Horde |q 32247/1 |goto Krasarang Wilds/0 81.42,21.94
step
_Next to you:_
talk King Varian Wrynn##61796
turnin A King Among Men##32247 |goto Krasarang Wilds/0 81.42,21.94
accept Lion's Landing##32109 |goto Krasarang Wilds/0 81.42,21.94
step
click Flare Launcher##216609
turnin Lion's Landing##32109 |goto Krasarang Wilds/0 85.59,29.16
step
label "Collect_Tokens"
kill Heavy Mook##67399, Dominance Grunt##67357, Bloodhilt Honor Guard##67334, Dominance Raider##67346
collect 90 Domination Point Commission##91877 |goto Krasarang Wilds/0 11.14,61.02
|tip You will need 30 commissions for each vendor quest item, 3 items in total.
|tip You will buy the items and accept the quests one at a time due to the items being unique.
step
talk Proveditor Grantley##67881
buy 1 Sturdy Crane Snare##91854 |goto Krasarang Wilds/0 89.53,33.55 |q 32164 |future
step
use the Sturdy Crane Snare##91854
accept Beastmaster's Hunt: The Crane##32164 |goto Krasarang Wilds/0 89.53,33.55
step
talk Proveditor Grantley##67881
buy 1 Sturdy Tiger Trap##91855 |goto Krasarang Wilds/0 89.53,33.55 |q 32165 |future
step
use the Sturdy Tiger Trap##91855
accept Beastmaster's Hunt: The Tiger##32165 |goto Krasarang Wilds/0 89.53,33.55
step
talk Proveditor Grantley##67881
buy 1 Sturdy Crab Crate##91856 |goto Krasarang Wilds/0 89.53,33.55 |q 32166 |future
step
use the Sturdy Crab Crate##91856
accept Beastmaster's Hunt: The Crab##32166 |goto Krasarang Wilds/0 89.53,33.55
step
kill Great Crane##59763+
collect Pristine Jet Crownfeather##91815 |q 32164/2 |goto Krasarang Wilds/0 72.66,44.93
|only if haveq(32164) or completedq(32164)
step
kill Unga Villager##60358+
|tip Make sure you stay in the quest area and kill the correct mobs.
|tip Mobs along the beach don't drop the fish.
collect 30 Funky Rotten Fish##91817 |q 32166/1 |goto Krasarang Wilds/0 46.77,91.08
You can find some bigger clusters around [Krasarang Wilds/0 44.01,90.62]
step
kill Child of Chi-Ji##60616+
|tip You will need to kill a lot of these all over the island.
|tip Fly around the beach area, killing the small groups of cranes.
|tip Then work on the interior while they respawn.
collect 5 Pristine Golden Crownfeather##91814 |q 32164/1 |goto Krasarang Wilds/0 34.32,72.33
The beach can be found at [Krasarang Wilds/0 28.49,68.60]
step
click Mound of Dirt##216161
turnin Beastmaster's Hunt: The Crane##32164 |goto Krasarang Wilds/0 39.21,61.92
step
Watch the dialogue
talk Ancient Bloodcrown Crane##67555
|tip It will walk up and fall to the ground.
accept Beastmaster's Quarry: The Crane##32184 |goto Krasarang Wilds/0 39.26,61.85
step
kill Wasteland Yak##66549, Wasteland Calf##66595
collect 25 Unbruised Yak Haunch##91816 |q 32165/1 |goto Dread Wastes/0 52.40,66.75
You can find more around:
[Dread Wastes/0 45.48,55.54]
[Dread Wastes/0 37.55,52.10]
step
click Mound of Dirt##216161
turnin Beastmaster's Hunt: The Tiger##32165 |goto Krasarang Wilds/0 13.87,41.34
step
Watch the dialogue
talk Krasari Elder##67556
|tip It will walk up and fall to the ground.
accept Beastmaster's Quarry: The Tiger##32185 |goto Krasarang Wilds/0 13.89,41.20
step
click Mound of Dirt##216161
turnin Beastmaster's Hunt: The Crab##32166 |goto Krasarang Wilds/0 56.30,42.05
step
Watch the dialogue
talk Colossal Viseclaw##67508
|tip It will walk up and become captured in a crate.
accept Beastmaster's Quarry: The Crab##32186 |goto Krasarang Wilds/0 56.34,42.15
step
talk Huntsman Blake##67558
turnin Beastmaster's Quarry: The Crane##32184 |goto Krasarang Wilds/0 84.33,18.85
turnin Beastmaster's Quarry: The Tiger##32185 |goto Krasarang Wilds/0 84.33,18.85
turnin Beastmaster's Quarry: The Crab##32186 |goto Krasarang Wilds/0 84.33,18.85
step
Choose the beast you prefer to fight today:
|tip You can only fight one beast and complete its daily quest each day.
Ancient Bloodcrown Crane |confirm
|tip This beast casts random songs with various spell effects.
Krasari Elder |confirm |next "Krasari_Elder"
|tip This beast requires you to remain in melee range the entire time and randomly vanishes.
Colossal Viseclaw |confirm |next "Colossal_Viseclaw"
|tip This beast needs to be kept moving to lower its damage reduction buff.
step
label "Ancient_Bloodcrown_Crane"
talk Huntsman Blake##67558
Select _"We would like to fight the Ancient Bloodcrown Crane."_ |gossip 40760
|tip During the fight, pay attention to the songs that it uses.
|tip Interrupt those that can be and avoid the others.
|tip Run out of the red circle.
kill Ancient Bloodcrown Crane##67555
accept Ancient's Fall##32170 |goto Krasarang Wilds/0 84.33,18.85
step
talk Huntsman Blake##67558
turnin Ancient's Fall##32170 |goto Krasarang Wilds/0 84.33,18.85
step
label "Krasari_Elder"
talk Huntsman Blake##67558
Select _"We would like to fight the Krasari Elder."_ |gossip 40761
|tip Stay close to it at all times.
|tip It will occassionally vanish.
|tip If you have a Hunter, put a flare out.
kill Krasari Elder##67556
accept End of an Elder##32171 |goto Krasarang Wilds/0 84.33,18.85
step
talk Huntsman Blake##67558
turnin End of an Elder##32171 |goto Krasarang Wilds/0 84.33,18.85
step
label "Colossal_Viseclaw"
talk Huntsman Blake##67558
Select _"We would like to fight the Colossal Viseclaw."_ |gossip 40762
kill Colossal Viseclaw##67508
|tip During the fight, kite it around and stay mobile.
|tip It has a damage reduction buff that decreases while while it moves.
|tip Stop moving when the buff nears zero or it will reset upon reaching zero.
accept A Colossal Victory##32172 |goto Krasarang Wilds/0 84.33,18.85
step
talk Huntsman Blake##67558
turnin A Colossal Victory##32172 |goto Krasarang Wilds/0 84.33,18.85
step
You Have Completed the Available Daily Quests |complete false or not completedq(32164,32165,32166,32184,32185,32186,32170,32171,32172) |next "Collect_Tokens"
|tip New quests will become available with the next daily server reset.
]])
