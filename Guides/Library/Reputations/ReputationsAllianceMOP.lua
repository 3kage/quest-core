-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Alliance" then return end
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Operation: Shieldwall\\Beastmaster Dailies",{
description="This guide will walk you through becoming exalted with the Operation: Shieldwall faction.",
achieveid={8205},
patch='50200',
},[[
step
Routing to proper section |next |only if not completedq(32109)
Routing to proper section |next "token" |only if completedq(32109)
step
talk Scout Lynna##68311
turnin Meet the Scout##32246 |goto Krasarang Wilds 85.30,29.10
step
talk King Varian Wrynn##61796
accept A King Among Men##32247 |goto Krasarang Wilds 85.30,29.10
step
talk Marshal Troteman##68331
Marshal Troteman found |q 32247/2 |goto Krasarang Wilds 79.60,25.00
step
talk Hilda Hornswaggle##68312
Hilda Hornswaggle found |q 32247/3 |goto Krasarang Wilds 80.40,17.50
step
kill Horde Raider##68332+, Horde Hunter##68334+, Horde Priest##67904+
Kill #25# Horde |q 32247/1 |goto Krasarang Wilds 84.60,22.00
step
talk King Varian Wrynn##61796
|tip He is standing next to you.
turnin A King Among Men##32247
accept Lion's Landing##32109
step
click Flare Launcher##216609
turnin Lion's Landing##32109 |goto Krasarang Wilds 85.60,29.10
step
This guide will take you through the bonus quests for Operation: Shieldwall
These quests do not offer any reputation, but they do offer Lesser Charms of Good Fortune
confirm
step
label "route"
Routing to proper section |next "token" |only if itemcount(91877)<30
Routing to proper section |next "menu" |only if itemcount(91877)>=30
step
label "token"
kill Heavy Mook##67399+, Dominance Grunt##67357+, Bloodhilt Honor Guard##67334, Dominance Raider##67346+
collect 30 Domination Point Commission##91877 |goto Krasarang Wilds 11.90,60.40
step
label "menu"
Click here to go purchase and accept the Sturdy Tiger Trap questline |confirm |next "tiger"
Click here to go purchase and accept the Sturdy Crane Snare questline |confirm |next "crane"
Click here to go purchase and accept the Sturdy Crab Crate questline |confirm |next "crab"
step
label "crane"
talk Proveditor Grantley##67881
buy Sturdy Crane Snare##91854 |or |goto Krasarang Wilds/0 89.50,33.50
accept Beastmaster's Hunt: The Crane##32164 |or |goto Krasarang Wilds/0 89.50,33.50
step
kill Great Crane##59763+
collect Pristine Jet Crownfeather##91815 |q 32164/2 |goto Krasarang Wilds/0 73.20,44.60
step
kill Child of Chi-Ji##60616+
collect 5 Pristine Golden Crownfeather##91814 |q 32164/1 |goto Krasarang Wilds/0 34.50,71.20
step
click Mound of Dirt##216161
turnin Beastmaster's Hunt: The Crane##32164 |goto Krasarang Wilds 39.20,61.90
step
talk Ancient Bloodcrown Crane##67555
accept Beastmaster's Quarry: The Crane##32184 |goto Krasarang Wilds 39.30,61.80
step
talk Huntsman Blake##67558
turnin Beastmaster's Quarry: The Crane##32184 |goto Krasarang Wilds 84.30,18.90
|next "group"
step
label "tiger"
talk Proveditor Grantley##67881
buy Sturdy Tiger Trap##91855 |or |goto Krasarang Wilds/0 89.50,33.50
accept Beastmaster's Hunt: The Tiger##32165 |or |goto Krasarang Wilds/0 89.50,33.50
step
kill Wasteland Yak##66549+, Wasteland Calf##66595+
collect 25 Unbruised Yak Haunch##91816 |q 32165/1 |goto Dread Wastes 51.50,67.20
step
click Mound of Dirt##216161
turnin Beastmaster's Hunt: The Tiger##32165 |goto Krasarang Wilds/0 13.90,41.30
step
talk Krasari Elder##67556
accept Beastmaster's Quarry: The Tiger##32185 |goto Krasarang Wilds/0 13.90,41.20
step
talk Huntsman Blake##67558
turnin Beastmaster's Quarry: The Tiger##32185 |goto Krasarang Wilds 84.30,18.90
|next "group"
step
label "crab"
talk Proveditor Grantley##67881
buy Sturdy Crab Crate##91856 |goto Krasarang Wilds/0 89.50,33.50
step
Click the _Sturdy Crab Crate_ in your bags |use Sturdy Crab Crate##91856
accept Beastmaster's Hunt: The Crab##32166
step
kill Unga Villager##60358+
collect 30 Funky Rotten Fish##91817 |q 32166/1 |goto Krasarang Wilds 47.40,91.70
step
click Mound of Dirt##216161
turnin Beastmaster's Hunt: The Crab##32166 |goto Krasarang Wilds 56.30,42.10
step
Talk to the Captured Colossal Viseclaw
accept Beastmaster's Quarry: The Crab##32186 |goto Krasarang Wilds 56.40,42.20
step
talk Huntsman Blake##67558
turnin Beastmaster's Quarry: The Crab##32186 |goto Krasarang Wilds 84.30,18.90
step
label "group"
talk Huntsman Blake##67558 |goto Krasarang Wilds 84.30,18.90
The dailies you have completed will determine which enemies are available to you to fight
Click here to fight the _Ancient Bloodcrown Crane_ |confirm |next "bc"
Click here to fight the _Krasari Elder_ |confirm |next "ke"
Click here to fight the _Colossal Viseclaw_ |confirm |next "cv"
step
label "bc"
Tell him you would like to fight the Bloodcrown Crane
During the fight, pay attention to the songs that it uses
Some can be interrupted while others simply need to be avoided
kill Ancient Bloodcrown Crane##67555
accept Ancient's Fall##32170
step
talk Huntsman Blake##67558
turnin Ancient's Fall##32170 |goto Krasarang Wilds 84.30,18.90
|next "EOG"
step
label "ke"
Tell him you would like to fight the Krasari Elder
During the fight, you will want to stay close to it at _ALL TIMES_
It will occassionally vanish, if you have a hunter simply put a flare out
kill Krasari Elder##67556
accept End of an Elder##32171
step
talk Huntsman Blake##67558
turnin End of an Elder##32171 |goto Krasarang Wilds 84.30,18.90
|next "EOG"
step
label "cv"
Tell him you would like to fight the Colossal Viseclaw
During the fight, you will want to kite him around
He will have a damage reduction buff that decreases while he moves
If it reaches _0_, the buff will reset
kill Colossal Viseclaw##67508
accept A Colossal Victory##32172
step
talk Huntsman Blake##67558
turnin A Colossal Victory##32172 |goto Krasarang Wilds 84.30,18.90
|next "EOG"
step
label "EOG"
You have reached the end of the guide
Click here to return to the beginning |confirm |next "route"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Operation: Shieldwall\\Operation: Shieldwall",{
description="This guide will walk you through becoming exalted with the Operation: Shieldwall faction.",
achieveid={7928},
patch='50100',
},[[
step
talk Lyalia##64610
accept Meet the Scout##32246 |goto Vale of Eternal Blossoms 83.90,58.60
|tip This will be available upon entering Vale of Eternal Blossoms.
step
talk Scout Lynna##68311
turnin Meet the Scout##32246 |goto Krasarang Wilds 85.30,29.10
step
talk King Varian Wrynn##61796
accept A King Among Men##32247 |goto Krasarang Wilds 85.30,29.10
step
talk Marshal Troteman##68331
Marshal Troteman found |q 32247/2 |goto Krasarang Wilds 79.60,25.00
step
talk Hilda Hornswaggle##68312
Hilda Hornswaggle found |q 32247/3 |goto Krasarang Wilds 80.40,17.50
step
kill Horde Raider##68332+, Horde Hunter##68334+, Horde Priest##67904+
kill 25 Horde |q 32247/1 |goto Krasarang Wilds 84.60,22.00
step
talk King Varian Wrynn##61796
|tip He is standing next to you.
turnin A King Among Men##32247
accept Lion's Landing##32109
step
click Flare Launcher##216609
turnin Lion's Landing##32109 |goto Krasarang Wilds 85.60,29.10
step
fpath Lion's Landing |goto Krasarang Wilds 88.30,34.70
step
label "dailies"
talk Marshal Troteman##68331
accept Priorities, People!##32116 |next "Ruins of Ogudei" |goto Krasarang Wilds 89.70,33.10
Click here when no more quests are available |confirm
step
talk Amber Kearnen##68908
accept Send A Message##32451 |or |next "Skyfire" |goto Krasarang Wilds 89.80,32.40
accept And Then There Were Goblins##32452 |or |next "Skyfire" |goto Krasarang Wilds 89.80,32.40
Click here when no more quests are available |confirm
step
talk Mishka##67630
accept Resource Gathering##32149 |goto Krasarang Wilds 89.70,32.80
accept Supply Block##32150 |goto Krasarang Wilds 89.70,32.80
step
talk Marshal Troteman##68331
accept Attack! Move!##32148 |or 3 |goto Krasarang Wilds 89.70,33.10
accept Tower Defense##32151 |or 3 |goto Krasarang Wilds 89.70,33.10
accept Hero Killer##32153 |or 3 |goto Krasarang Wilds 89.70,33.10
accept Siege Damage##32152 |or 3 |goto Krasarang Wilds 89.70,33.10
step
kill Bilgewater Sapper##67929+
collect Bilgewater Blasting Cap##92493 |q 32152/1 |only if haveq(32152) |goto Krasarang Wilds 76.80,19.20
collect 20 Animatable Stone##91823 |q 32151/1 |only if haveq(32151) |goto Krasarang Wilds 76.80,19.20
|only if haveq(32152) or haveq(32151)
stickystart "dominationsupplycrate"
stickystart "lionlumber"
step
Kill a Horde Hero |q 32153/1 |goto Krasarang Wilds 79.10,27.20
|only if haveq(32153)
step
label "dominationsupplycrate"
kill 8 Domination Point Supply Cart##67756+ |q 32150/1 |only if haveq(32150) |goto Krasarang Wilds 78.20,28.90
clicknpc Domination Point Demolisher##67671 |only if haveq(32152)
Destroy a Domination Point Demolisher |q 32152/2 |only if haveq(32152) |goto Krasarang Wilds 78.20,28.90
|only if haveq(32150) or haveq(32152)
step
label "lionlumber"
kill Dominance Shaman##67520+, Domination Point Raider##67826+
Kill 12 Domination Point Shaman or Raider |q 32148/1 |goto Krasarang Wilds 77.00,24.30
click Hastily Abandoned Lumber##216229
Get 12 Lion's Landing Lumber |q 32149/1 |goto Krasarang Wilds 77.00,24.30
|only if haveq(32149) or haveq(32148)
step
talk Mishka##67630
turnin Resource Gathering##32149 |goto Krasarang Wilds 89.70,32.80
turnin Supply Block##32150 |goto Krasarang Wilds 89.70,32.80
step
talk Marshal Troteman##68331
turnin Attack! Move!##32148 |goto Krasarang Wilds 89.70,33.10
turnin Tower Defense##32151 |goto Krasarang Wilds 89.70,33.10
turnin Hero Killer##32153 |goto Krasarang Wilds 89.70,33.10
turnin Siege Damage##32152 |or 3 |goto Krasarang Wilds 89.70,33.10
|next "friend1" |only if repval('Operation: Shieldwall','Friendly')>=950 and not completedq(32426)
|next "friend2" |only if repval('Operation: Shieldwall','Friendly')>=4500 and not completedq(32383)
|next "honored1" |only if repval('Operation: Shieldwall','Honored')>=2850 and not completedq(32362)
|next "honored2" |only if repval('Operation: Shieldwall','Honored')>=6800 and not completedq(32243)
|next "honored3" |only if repval('Operation: Shieldwall','Honored')>=10750 and not completedq(32316)
|next "revered1" |only if repval('Operation: Shieldwall','Revered')>=2700 and not completedq(32371)
|next "revered2" |only if repval('Operation: Shieldwall','Revered')>=6650 and not completedq(32393)
|next "revered3" |only if repval('Operation: Shieldwall','Revered')>=8665 and not completedq(32423)
|next "revered4" |only if repval('Operation: Shieldwall','Revered')>=15500 and not completedq(32335)
|next "revered5" |only if repval('Operation: Shieldwall','Revered')>=18500 and not completedq(32338)
|next "exalted" |only if rep("Operation: Shieldwall")==Exalted
|next "endg" |only if default
step
label "Skyfire"
Click the portal to the _Skyfire_ |goto Krasarang Wilds 18.10,79.60 < 5 |walk
talk Sky Admiral Rogers##67386
turnin Send A Message##32451 |goto Krasarang Wilds 16.50,79.20
turnin And Then There Were Goblins##32452 |goto Krasarang Wilds 16.50,79.20
accept Hammer to Fall##32146 |goto Krasarang Wilds 16.50,79.20
accept We Will Rock You##32142 |goto Krasarang Wilds 16.50,79.20
accept The Only Good Goblin...##32157 |goto Krasarang Wilds 16.50,79.20
step
talk Tinkmaster Overspark##67976
accept A Kind of Magic##32143
step
talk Mishka##54614
accept Under Pressure##32144 |or |goto Krasarang Wilds/0 16.70,78.60
accept It's Only Right##32156 |or |goto Krasarang Wilds/0 16.70,78.60
step
talk Seraphine of the Winter##68182
accept Two Step Program##32158 |or |goto Krasarang Wilds 16.70,78.60
accept Undermining the Under Miner##32433 |or |goto Krasarang Wilds 16.70,78.60
step
talk Sully 'The Pickle' McLeary##54616
accept Burn Out!##32154 |or 2 |goto Krasarang Wilds 16.90,78.60
accept Dis-Assembly Required##32446 |or 2 |goto Krasarang Wilds 16.90,78.60
accept Circle of Life##32159 |or 2 |goto Krasarang Wilds 16.90,78.60
step
clicknpc Scout-o-Meter Mk I##67544
Eliminate the Beachhead Demolishers |q 32143/1 |goto Krasarang Wilds 11.60,67.90
|only if haveq(32143)
step
clicknpc the Scout-o-Meter Mk II##67546
Eliminate the Horde Wolves |q 32143/2 |goto Krasarang Wilds 10.80,60.90
|only if haveq(32143)
step
clicknpc the Scout-o-Meter Mk III##67547
Destroy the Horde Bomb Stockpile |q 32143/3 |goto Krasarang Wilds/0 12.70,56.60
|only if haveq(32143)
step
Click the quest complete box on the top right of the screen.
turnin A Kind of Magic##32143
accept Don't Lose Your Head##32145
|only if haveq(32143) or completedq(32143)
step
kill 1 Or'Dac##67435 |q 32145/1 |goto Krasarang Wilds 10.80,58.10
|only if haveq(32145)
step
kill 1 Chief Bombgineer Snicklefritz##67427 |q 32145/3 |goto Krasarang Wilds 13.40,56.30
|only if haveq(32145)
step
kill 1 Stone Guard Ruk'Ra##67429 |q 32145/2 |goto Krasarang Wilds/0 13.40,57.90
|only if haveq(32145)
step
click Horde Supply Crate##216665
Destroy #8# Horde Supply Crates |q 32144/1 |goto Krasarang Wilds 11.90,60.40
kill 5 Heavy Mook##67399+ |q 32146/1 |goto Krasarang Wilds 11.90,60.40
kill 10 Domination Orc##67357+ |q 32142/1 |goto Krasarang Wilds 11.90,60.40
|only if haveq(32146) or haveq(32142)
step
Use your _Unstable Explosives_ |use Unstable Explosive##93187
Northwestern Fuel Tank destroyed |q 32154/3 |goto Krasarang Wilds/0 15.30,59.10
|only if haveq(32154)
step
kill 1 Shredmaster Packle##67371 |q 32158/1 |goto Krasarang Wilds 19.60,62.10
|only if haveq(32158)
step
kill Jungle Shredder##67285+
Use your _Re-Configured Remote_ on Jungle Shredders. |use Re-Configured Remote##93180
collect 6 Scrap Metal##93179 |q 32446/1 |goto Krasarang Wilds/0 19.00,61.40
|only if haveq(32446)
step
kill Grezik Oregrind##67373 |q 32433/1 |goto Krasarang Wilds 22.20,61.30
|only if haveq(32433)
step
Click on mounds of dirt in the area
Plant 11 Energized Seeds |q 32159/1 |goto Krasarang Wilds 19.90,60.40
|only if haveq(32159)
stickystart "shieldwalltags"
step
Use your _Unstable Explosives_ |use Unstable Explosive##93187
Northeastern Fuel Tank destroyed |q 32154/1 |goto Krasarang Wilds/0 25.40,59.50
|only if haveq(32154)
step
Use your _Unstable Explosives_ |use Unstable Explosive##93187
Northern Fuel Tank destroyed |q 32154/2 |goto Krasarang Wilds/0 23.90,54.60
|only if haveq(32154)
step
label "shieldwalltags"
kill 10 Bilgewater Goblins |q 32157/1 |goto Krasarang Wilds/0 24.60,56.60
clicknpc Fallen Shieldwall Soldier##68700
Get 7 Shieldwall Soldier Dog Tags |q 32156/1 |goto Krasarang Wilds/0 24.60,56.60
|only if haveq(32157) or haveq(32156)
step
talk Mishka##54614
turnin Under Pressure##32144 |goto Krasarang Wilds/0 16.70,78.60
turnin It's Only Right##32156 |goto Krasarang Wilds/0 16.70,78.60
step
talk Seraphine of the Winter##68182
turnin Two Step Program##32158 |goto Krasarang Wilds 16.70,78.60
turnin Undermining the Under Miner##32433 |goto Krasarang Wilds 16.70,78.60
step
talk Sully 'The Pickle' McLeary##54616
turnin Burn Out!##32154 |goto Krasarang Wilds 16.90,78.60
turnin Dis-Assembly Required##32446 |goto Krasarang Wilds 16.90,78.60
step
talk Sky Admiral Rogers##67386
turnin Hammer to Fall##32146 |goto Krasarang Wilds 16.50,79.20
turnin We Will Rock You##32142 |goto Krasarang Wilds 16.50,79.20
turnin The Only Good Goblin...##32157 |goto Krasarang Wilds 16.50,79.20
step
talk Tinkmaster Overspark##67976
turnin A Kind of Magic##32143
turnin Don't Lose Your Head##32145
|next "friend1" |only if repval('Operation: Shieldwall','Friendly')>=950 and not completedq(32426)
|next "friend2" |only if repval('Operation: Shieldwall','Friendly')>=4500 and not completedq(32383)
|next "honored1" |only if repval('Operation: Shieldwall','Honored')>=2850 and not completedq(32362)
|next "honored2" |only if repval('Operation: Shieldwall','Honored')>=6800 and not completedq(32243)
|next "honored3" |only if repval('Operation: Shieldwall','Honored')>=10750 and not completedq(32316)
|next "revered1" |only if repval('Operation: Shieldwall','Revered')>=2700 and not completedq(32371)
|next "revered2" |only if repval('Operation: Shieldwall','Revered')>=6650 and not completedq(32393)
|next "revered3" |only if repval('Operation: Shieldwall','Revered')>=8665 and not completedq(32423)
|next "revered4" |only if repval('Operation: Shieldwall','Revered')>=15500 and not completedq(32335)
|next "revered5" |only if repval('Operation: Shieldwall','Revered')>=18500 and not completedq(32338)
|next "exalted" |only if rep("Operation: Shieldwall")==Exalted
|next "endg" |only if default
step
label "Ruins of Ogudei"
Enter the Ruins of Ogudei |goto Krasarang Wilds/0 80.30,17.60 < 10 |walk
talk Hilda Hornswaggle##68312
turnin Priorities, People!##32116 |goto Krasarang Wilds/1 30.10,27.50
accept The Spirit Trap##32121 |or 5 |goto Krasarang Wilds/1 30.10,27.50
accept Shackles of the Past##32115 |or 5 |goto Krasarang Wilds/1 30.10,27.50
accept Eviction Notice##32347 |or 5 |goto Krasarang Wilds/1 30.10,27.50
accept Oi Ain't Afraid o' No Ghosts!##32346 |or 5 |goto Krasarang Wilds/1 30.10,27.50
accept Ogudei's Lieutenants##32122 |or 5 |goto Krasarang Wilds/1 30.10,27.50
accept It Is A Mystery##32119 |or 5 |goto Krasarang Wilds/1 30.10,27.50
|only if haveq(32116) or completedq(32116)
step
Go down the steps here |goto Krasarang Wilds/1 66.10,50.40 < 5 |walk
Walk around this cave and pay attention to your Anamoly Reader above your actionbars. This quest is like a "Hot & Cold" game, where the closer you get, the greater anamoly reading you get. Once you have 100%, you will automatically disperse the anamoly
Disperse the anamoly |q 32119/1
|only if haveq(32119)
step
kill 12 Spiritbound Arcanist##68070+ |q 32346/1 |only if haveq(32346) |goto Krasarang Wilds/2 50.30,26.70
kill Troubled Slave Spirit##68074+ |only if haveq(32115)
14 Troubled Slave Spirits released |q 32115/1 |only if haveq(32115) |goto Krasarang Wilds/2 50.30,26.70
step
kill Spirit Trap##68061+
Destroy #3# Spirit Trap |q 32121/1 |goto Krasarang Wilds/2 72.70,15.40
step
Go down the steps here |goto Krasarang Wilds/2 62.40,39.00 < 10 |walk
kill Reliquary Scout##67861+, Reliquary Blood Knight##68126+, Reliquary Mage##68114+
Kill 10 Reliquary |q 32347/1 |goto Krasarang Wilds/3 66.30,48.30
step
Go up the path here |goto Krasarang Wilds/3 79.80,43.40 < 10 |only if walking
Go down the path here |goto Krasarang Wilds/2 72.70,41.50 < 10 |only if walking
kill Gen-li Twister of Words##68169 |q 32122/1 |goto Krasarang Wilds/2 67.40,81.00
kill Meng-do Strength of Mountains##68170 |q 32122/2 |goto Krasarang Wilds/2 67.40,81.00
step
Go up the steps here |goto Krasarang Wilds/2 56.40,38.90 < 10 |only if walking
talk Hilda Hornswaggle##68312
turnin The Spirit Trap##32121 |goto Krasarang Wilds/1 30.10,27.50
turnin Shackles of the Past##32115 |goto Krasarang Wilds/1 30.10,27.50
turnin Eviction Notice##32347 |goto Krasarang Wilds/1 30.10,27.50
turnin Oi Ain't Afraid o' No Ghosts!##32346 |goto Krasarang Wilds/1 30.10,27.50
turnin Ogudei's Lieutenants##32122 |goto Krasarang Wilds/1 30.10,27.50
turnin It Is A Mystery##32119 |goto Krasarang Wilds/1 30.10,27.50
|next "friend1" |only if repval('Operation: Shieldwall','Friendly')>=950 and not completedq(32426)
|next "friend2" |only if repval('Operation: Shieldwall','Friendly')>=4500 and not completedq(32383)
|next "honored1" |only if repval('Operation: Shieldwall','Honored')>=2850 and not completedq(32362)
|next "honored2" |only if repval('Operation: Shieldwall','Honored')>=6800 and not completedq(32243)
|next "honored3" |only if repval('Operation: Shieldwall','Honored')>=10750 and not completedq(32316)
|next "revered1" |only if repval('Operation: Shieldwall','Revered')>=2700 and not completedq(32371)
|next "revered2" |only if repval('Operation: Shieldwall','Revered')>=6650 and not completedq(32393)
|next "revered3" |only if repval('Operation: Shieldwall','Revered')>=8665 and not completedq(32423)
|next "revered4" |only if repval('Operation: Shieldwall','Revered')>=15500 and not completedq(32335)
|next "revered5" |only if repval('Operation: Shieldwall','Revered')>=18500 and not completedq(32338)
|next "exalted" |only if rep("Operation: Shieldwall")==Exalted
|next "endg" |only if default
step
label "friend1"
talk Admiral Taylor##67940
accept The Best Around##32380 |goto Krasarang Wilds 89.50,32.60
|only if repval('Operation: Shieldwall','Friendly')>=950 and not completedq(32426)
step
Bizmo's Brawlpub Located |q 32380/1
Go down the ramp here |goto Deeprun Tram/1 52.20,42.40 < 10 |only if walking
|only if haveq(32380)
step
talk Barkeep Townsley##68526
Ask her if she is the agent following Connelly
Agent Townsley located |q 32380/2 |goto Deeprun Tram/2 70.30,46.50
turnin The Best Around##32380
accept To Catch A Spy##32381
|only if not completedq(32426)
step
talk Barkeep Townsley##68526
Tell her you're ready for the first clue
Find Keith and talk to him here [Deeprun Tram/2 64.80,22.70]
talk Keith 'The Party' Westin##3001
Pink Marmot delivered |q 32381/1 |goto Deeprun Tram/2 70.70,46.50
|only if haveq(32381)
step
talk Barkeep Townsley##68526
Tell her you're ready for the second clue
[Deeprun Tram/2 49.70,33.60]
talk Twix Gearspark##68540
Rusty Dagger delivered |q 32381/2 |goto Deeprun Tram/2 70.10,47.20
|only if haveq(32381)
step
talk Barkeep Townsley##68526
Tell her you're ready for the thrid clue
[Deeprun Tram/2 66.90,59.70]
talk Tasha Windpaw##68539
Pink Marmot delivered |q 32381/3 |goto Deeprun Tram/2 70.10,47.20
|only if haveq(32381)
step
talk Barkeep Townsley##68526
turnin To Catch A Spy##32381 |goto Deeprun Tram/2 70.10,47.20
accept Stirred, Not Shaken##32426 |goto Deeprun Tram/2 70.10,47.20
|only if not completedq(32426)
step
Go up the ramp here |goto Deeprun Tram/2 31.70,19.70 < 10 |only if walking
Locate Professor Kilt |q 32426/1 |goto Deeprun Tram/2 26.30,79.30
|only if haveq(32426)
step
talk Professor Kilt##68531
turnin Stirred, Not Shaken##32426 |goto Deeprun Tram/2 24.50,81.40
|only if haveq(32426)
|next "endg"
step
label "friend2"
talk Admiral Taylor##67940
accept He's In Deep##32382 |goto Krasarang Wilds/0 89.60,32.60
|only if repval('Operation: Shieldwall','Friendly')>=4500 and not completedq(32383)
step
talk Fennie Hornswaggle##68741
Ask her to take you to Fire Camp Bataar
Find Connelly in Kun-Lai Summit |q 32382/1 |goto Krasarang Wilds 88.30,34.20
|only if haveq(32382)
step
talk Cousin Goottooth##68417
turnin He's In Deep##32382 |goto Kun-Lai Summit 59.20,84.30
accept Bugging Out##32383 |goto Kun-Lai Summit 59.20,84.30
accept He Won't Even Miss It##32397 |goto Kun-Lai Summit 59.20,84.30
|only if not completedq(32383) or not completedq(32397)
step
Use your Grummle Disguise Kit |use Grummle Disguise Kit##92950
Pay attention for _Nero_ the wolf. It will see through your costume
clicknpc Shaggy Longhorn##2877
Garrosh distracted |q 32397/1 |goto Kun-Lai Summit 58.60,83.80
|only if haveq(32397)
step
clicknpc Mogu Statue##68913
Large Tent bugged |q 32383/1 |goto Kun-Lai Summit 58.40,84.00
|only if haveq(32383)
step
Click the Weathered Jounral on the edge of the table
collect Weathered Journal##92804 |q 32397/2 |goto Kun-Lai Summit 58.30,84.20
|only if haveq(32397)
step
clicknpc Mogu Statue##68913
Small Tent bugged |q 32383/2 |goto Kun-Lai Summit 58.00,84.60
|only if haveq(32383)
step
clicknpc Mogu Statue##68913
Supplies bugged |q 32383/3 |goto Kun-Lai Summit 58.20,85.00
|only if haveq(32383)
step
talk Cousin Goottooth##68417
turnin Bugging Out##32383 |goto Kun-Lai Summit 59.30,84.30
turnin He Won't Even Miss It##32397 |goto Kun-Lai Summit 59.30,84.30
|only if haveq(32383) or haveq(32397)
|next "endg"
step
label "honored1"
talk Admiral Taylor##67940
accept The Kirin Tor##32331 |goto Krasarang Wilds 89.60,32.60
|only if repval('Operation: Shieldwall','Honored')>=2850 and not completedq(32362)
step
Use the Portal to The Purple Parlor |q 32331/1 |goto Krasarang Wilds 89.20,33.60 |n
|tip Make sure you use this portal rather than going to the dungeon yourself, this is a phased version of Dalaran, so you must use the portal to go through.
|only if haveq(32331)
step
talk Anduin Wrynn##68106
turnin The Kirin Tor##32331 |goto 924/1 26.70,39.00
accept The Fate of Dalaran##32362 |goto 924/1 26.70,39.00
|only if not completedq(32362)
step
Speak with Jaina Proudmoore |q 32362/1 |goto 924/1 26.70,39.30
|only if haveq(32362)
step
talk Anduin Wrynn##68106
turnin The Fate of Dalaran##32362 |goto 924/1 26.80,39.00
|only if haveq(32362)
step
Click the portal to send you back to Lion's Landing |goto Krasarang Wilds 89.00,33.60 < 10 |walk
|next "endg"
step
label "honored2"
talk Admiral Taylor##67940
accept To Mogujia##32193 |goto Krasarang Wilds 89.60,32.60
|only if repval('Operation: Shieldwall','Honored')>=6800 and not completedq(32243)
step
talk Fennie Hornswaggle##68741
Ask her to take you Mogujia
Find Brann Bronzebeard |q 32193/1 |goto Krasarang Wilds 88.30,34.30
|only if haveq(32193)
step
talk Brann Bronzebeard##67682
turnin To Mogujia##32193 |goto Kun-Lai Summit 59.80,76.00
|only if haveq(32193)
step
talk Hilda Hornswaggle##67716
accept The Source of Korune Power##32243 |goto Kun-Lai Summit 59.80,76.00
|only if not completedq(32243)
step
talk Sarannha Skyglaive##67734
accept Bad Blood##32194 |goto Kun-Lai Summit 60.00,75.30
|only if not completedq(32243)
step
kill Korune Spellweaver##68815
collect Sha-Touched Claw##93190 |q 32243/1 |goto Kun-Lai Summit 58.10,71.00
|only if haveq(32243)
step
kill Silvermoon Runeseeker##67806+, Dominance Mage##67804+, Dominance Knight##67805+
collect 5 Korune Artifact##93189 |q 32194/1 |goto Kun-Lai Summit 58.50,74.50
|only if haveq(32194)
step
talk Sarannha Skyglaive##67734
turnin Bad Blood##32194 |goto Kun-Lai Summit 60.00,75.30
|only if haveq(32194)
step
talk Hilda Hornswaggle##67716
turnin The Source of Korune Power##32243 |goto Kun-Lai Summit 59.80,76.00
|only if haveq(32243)
|next "endg"
step
label "honored3"
talk Admiral Taylor##67940
accept Anduin's Plea##32315 |goto Krasarang Wilds 89.60,32.60
|only if repval('Operation: Shieldwall','Honored')>=10750 and not completedq(32316)
step
talk Fennie Hornswaggle##68741 |goto Krasarang Wilds 88.30,34.30
Ask her to take you to Shrine of Seven Stars |goto Vale of Eternal Blossoms |noway |c
|only if haveq(32315)
step
talk Anduin Wrynn##67948
Find Anduin |q 32315/1
turnin Anduin's Plea##32315 |goto Shrine of Seven Stars/2 65.80,32.90
accept Heart Of The Alliance##32316 |goto Shrine of Seven Stars/2 65.80,32.90
|only if not completedq(32316)
step
Walk around the shrine clicking Sha-Touched Footmen
kill Sha-Touched Footman##68006+
6 Sha-Touched Footmen saved |q 32316/1
|only if haveq(32316)
step
talk King Varian Wrynn##68242
turnin Heart Of The Alliance##32316 |goto Shrine of Seven Stars/2 67.40,43.50
|only if haveq(32316)
|next "endg"
step
label "revered1"
talk Admiral Taylor##67940
accept The Kun-Lai Expedition##32370 |goto Krasarang Wilds 89.60,32.60
|only if repval('Operation: Shieldwall','Revered')>=2700 and not completedq(32371)
step
talk Fennie Hornswaggle##68741
Ask her to fly you to Garrash'ar Advance.
Find Connelly at the Grummle Bazaar |q 32370/1 |goto Krasarang Wilds 88.30,34.30
|only if haveq(32370)
step
talk Agent Connelly##68375
turnin The Kun-Lai Expedition##32370 |goto Kun-Lai Summit 65.00,60.80
accept A Kor'kron In Our Midst##32377 |goto Kun-Lai Summit 65.00,60.80
|only if not completedq(32371)
step
kill Kor'kron Reaver##68367, Kor'Kron Honor Guard##68369, Kor'Kron Scout##68368
collect Kor'kron Helmet##92763 |n
collect Kor'kron Armor##92764 |n
collect Kor'kron Boots##92765 |n
Once you've collected all 3, Use on them to create a Kor'Kron Disguise. |use Kor'Kron Helmet##92763
Obtain a Kor'Kron Disguise. |q 32377/1 |goto Kun-Lai Summit 60.90,57.70
|only if haveq(32377)
step
Click the auto complete quest box that pops up in the top right corner
turnin A Kor'kron In Our Midst##32377
accept Memory Wine##32371
|only if not completedq(32371)
step
Use your Kor'kron Disguise |q 32371/1 |use Kor'kron Disguise##92766
|only if haveq(32371)
step
click Memory Wine##216625
Drink Memory Wine |q 32371/2 |goto Kun-Lai Summit 60.40,55.20
Witness Shan Kien's Past |q 32371/3 |goto Kun-Lai Summit 60.40,55.20
|only if haveq(32371)
step
talk Agent Connelly##68375
turnin Memory Wine##32371 |goto Kun-Lai Summit 65.00,60.80
|only if haveq(32371)
|next "endg"
step
label "revered2"
talk Admiral Taylor##67940
accept The Ruins of Korune##32393 |goto Krasarang Wilds/0 89.60,32.60
|only if repval('Operation: Shieldwall','Revered')>=6650 and not completedq(32393)
step
talk Fennie Hornswaggle##68741
Ask her to take you to the Ruins of Korune.
Find Sarannha Skyglaive at the Ruins of Korune |q 32393/1 |goto Krasarang Wilds 88.30,34.30
|only if haveq(32393)
step
talk Sarannha Skyglaive##67734
turnin The Ruins of Korune##32393 |goto Kun-Lai Summit 32.80,26.30
accept The Divine Bell##32394 |goto Kun-Lai Summit 32.80,26.30
|only if haveq(32393) or not completedq(32394)
step
Enter the Ruins of Korune |goto Kun-Lai Summit 33.10,26.70 < 10 |walk
|only if haveq(32394)
step
Watch the dialog, then follow _Dreadweaver Avartu_, killing Kor'kron Tomb Guardians afterwards |goto Kun-Lai Summit/20 48.20,41.30
confirm
|only if haveq(32394)
step
Run through the hallway, avoiding the glowing white marks on the ground |goto Kun-Lai Summit/20 36.30,79.30 |c
|only if haveq(32394)
step
Go down the steps here |goto Kun-Lai Summit/21 33.60,76.90 |only if walking
Fight your way up the steps here |goto Kun-Lai Summit/21 65.10,44.80 |only if walking
kill Dreadweaver Avartu##68504 |q 32394/1 |goto Kun-Lai Summit/21 56.20,31.30
Recover the Divine Bell |q 32394/2 |goto Kun-Lai Summit/21 60.80,22.40
|only if haveq(32394)
step
talk Sarannha Skyglaive##67734
turnin The Divine Bell##32394 |goto Kun-Lai Summit/21 62.50,25.80
|only if haveq(32394)
|next "endg" |only if default
|next |only if repval('Operation: Shieldwall','Revered')>=8665
step
label "revered3"
talk Admiral Taylor##67940
accept Darnassus Attacked?##32414 |goto Krasarang Wilds/0 89.60,32.60
|only if repval('Operation: Shieldwall','Revered')>=8665 and not completedq(32423)
step
talk Seamus Goldenkicks##67848 |q 32414/1 |goto Krasarang Wilds/0 89.00,33.60
Ask him to snd you to Darnassus |goto Darnassus
step
talk Lady Jaina Proudmoore##68651
turnin Darnassus Attacked?##32414 |goto Darnassus/0 39.00,32.70
accept Tracking the Thieves##32460 |goto Darnassus/0 39.00,32.70
|only if not completedq(32423)
step
There will be white orbs that appear
They will form a path as you follow them
Track the Thieves |q 32460/1
|only if haveq(32460)
step
talk Lady Jaina Proudmoore##68651
turnin Tracking the Thieves##32460 |goto Teldrassil/0 40.00,50.50
accept Jaina's Resolution##32416 |goto Teldrassil/0 40.00,50.50
|only if haveq(32460) or not completedq(32416)
step
Click the portal to Dalaran |q 32416/1
|tip It should be next to you
|only if haveq(32416)
step
There will be a short cutscene. Afterwards, speak with _Vereesa_
talk Vereesa Windrunner##68687
turnin Jaina's Resolution##32416 |goto 924/1 34.20,48.80
accept Nowhere to Run##32421 |goto 924/1 34.20,48.80
accept Nowhere to Hide##32419 |goto 924/1 34.20,48.80
accept Sewer Cleaning##32417 |goto 924/1 34.20,48.80
accept Unfair Trade##32418 |goto 924/1 34.20,48.80
accept Cashing Out##32420 |goto 924/1 34.20,48.80
|only if not completedq(32423)
step
kill Sunreaver Dragonhawk##68762
Render 5 Sunreaver Dragonhawks incapable of flying. |q 32421/1 |goto 924/1 70.00,43.50
|only if haveq(32421)
step
kill Inkmaster Aelon##68752 |q 32418/1 |goto 924/1 41.40,36.20
|only if haveq(32418)
step
kill Sintharia Cinderweave##68755 |q 32418/4 |goto 924/1 36.70,33.40
|only if haveq(32418)
step
kill Gearmage Astalon |q 32418/3 |goto 924/1 39.30,25.30
|only if haveq(32418)
step
kill Tolyria##68754 |q 32418/2 |goto 924/1 43.90,26.30
|only if haveq(32418)
step
kill Magister Brasael##68751 |q 32420/1 |goto 924/1 53.50,15.60
|only if haveq(32420)
step
Slay 16 Sunreavers in the Sunreaver's Sanctuary |q 32419/1 |goto 924/1 58.70,31.90
|only if haveq(32419)
step
Jump down the well here |goto 924/1 48.00,32.60 < 10 |walk
Slay 12 Sunreavers in the Dalaran Sewers |q 32417/1 |goto 924/2 50.20,47.00
|only if haveq(32417)
step
talk Vereesa Windrunner##68687
turnin Nowhere to Run##32421 |goto 924/1 34.30,48.60
turnin Nowhere to Hide##32419 |goto 924/1 34.30,48.60
turnin Sewer Cleaning##32417 |goto 924/1 34.30,48.60
turnin Unfair Trade##32418 |goto 924/1 34.30,48.60
turnin Cashing Out##32420 |goto 924/1 34.30,48.60
accept What Had To Be Done##32423 |goto 924/1 34.30,48.60
|only if not completedq(32423)
step
talk King Varian Wrynn##68690
turnin What Had To Be Done##32423 |goto Krasarang Wilds 87.80,33.00
|only if haveq(32423)
|next "endg"
step
label "revered4"
talk Admiral Taylor##67940
accept The Harmonic Mallet##32355 |goto Krasarang Wilds/0 89.60,32.60
|only if repval('Operation: Shieldwall','Revered')>=15500 and not completedq(32335)
step
talk Fennie Hornswaggle##68741
Ask her to take you to the Valley of Emperors
Find Anduin at the Tomb of Conquerors |q 32355/1 |goto Krasarang Wilds 88.30,34.30
|only if haveq(32355) or not completedq(32335)
step
talk Anduin Wrynn##68004
turnin The Harmonic Mallet##32355 |goto Kun-Lai Summit 53.00,46.40
accept The Monkey King##32321 |goto Kun-Lai Summit 53.00,46.40
|only if not completedq(32335)
step
Talk with Anduin Wrynn |q 32321/1 |goto Kun-Lai Summit 53.00,46.40
Ask him why he is here
|only if haveq(32321) or not completedq(32335)
step
Enter the Tomb of Conquerors |goto Kun-Lai Summit/17 88.10,54.60 < 5 |walk
|only if haveq(32321) or not completedq(32335)
step
Follow Anduin through the Tomb
Escort Anduin Wrynn |q 32321/2
|only if haveq(32321) or not completedq(32335)
step
Anduin will cast a spell, releasing _The Monkey King_ as well as _The Jade Warlord_
kill The Jade Warlord##68005
Release The Monkey King |q 32321/3
|only if haveq(32321) or not completedq(32335)
step
talk The Monkey King##68003
|tip He should be standing at the center of the room next to Anduin.
turnin The Monkey King##32321
accept The First Riddle: Mercy##32332
accept The Second Riddle: Fellowship##32333
accept The Third Riddle: Strength##32334
|only if not completedq(32335)
step
Go down the ramp here |goto Kun-Lai Summit/0 68.90,45.50 < 5 |only if walking
|only if haveq(32334) or not completedq(32335)
step
talk The Monkey King##68538
Tell him that you challange him.
Challenger defeated |q 32334/1 |goto Kun-Lai Summit/0 70.10,45.60
|only if haveq(32334) or not completedq(32335)
step
Ring the Gong of Fellowship. |q 32333/1 |goto The Jade Forest 33.40,34.20
kill Sam the Wise##64694 |q 32333/2 |goto The Jade Forest 33.40,34.20
Click the keg that appears after you defeat him.
collect The Metal Brew##92557 |q 32333/3 |goto The Jade Forest 33.40,34.20
|only if haveq(32333) or not completedq(32335)
step
click Untamed Amber##216360
kill Untamed Ambertail##68117
collect Untamed Amber##92539 |q 32332/1 |goto Dread Wastes 65.70,71.70
|only if haveq(32332) or not completedq(32335)
step
talk The Monkey King##68538
turnin The First Riddle: Mercy##32332 |goto Krasarang Wilds 88.80,31.80
turnin The Second Riddle: Fellowship##32333 |goto Krasarang Wilds 88.80,31.80
turnin The Third Riddle: Strength##32334 |goto Krasarang Wilds 88.80,31.80
accept The Greatest Prank##32335 |goto Krasarang Wilds 88.80,31.80
|only if not completedq(32335)
step
Listen to The Monkey King's story |q 32335/1
|only if haveq(32335) or not completedq(32335)
step
talk Anduin Wrynn##68004
turnin The Greatest Prank##32335 |goto Krasarang Wilds/0 89.00,31.70
|only if haveq(32335)
|next "endg" |only if default
|next |only if repval('Operation: Shieldwall','Revered')>=18500
step
label "revered5"
talk The Monkey King##68538
accept The Handle##32336 |goto Krasarang Wilds 88.80,31.80
accept The Head##32337 |goto Krasarang Wilds 88.80,31.80
accept The Harmonic Ointment##32338 |goto Krasarang Wilds 88.80,31.80
|only if repval('Operation: Shieldwall','Revered')>=18500 and not completedq(32338)
step
talk Chief Ingoo Ingoo XVII##68545
Tell him that's the real monkey king
kill Chief Ingoo Ingoo XVII##68545
collect Mallet Handle##92561 |q 32336/1 |goto Krasarang Wilds 43.60,86.00
|only if haveq(32336)
step
talk The Monkey King##68544
turnin The Handle##32336 |goto Krasarang Wilds/0 43.40,86.60
|only if not completedq(32337) and not completedq(32338) and not completedq(32336)
step
talk Royal Finder##68554
Find the Royal Finder |q 32337/1 |goto Valley of the Four Winds 23.00,30.60
|only if haveq(32337)
step
kill Skiggit##68547
|tip Inside of the tunnel entrance.
click Mallet Head##216421
collect Mallet Head##92560 |q 32337/2 |goto Valley of the Four Winds 24.80,28.20
|only if haveq(32337)
step
kill The Blade##61010
collect Harmonic Ointment##92562 |q 32338/1 |goto Townlong Steppes 62.60,34.00
|only if haveq(32338)
step
talk The Monkey King##68538
turnin The Head##32337 |goto Krasarang Wilds 88.80,31.80
turnin The Harmonic Ointment##32338 |goto Krasarang Wilds 88.80,31.80
|only if haveq(32337) or haveq(32338)
|next "endg" |only if default
|next "exalted" |only if repval('Operation: Shieldwall','Exalted')>=1
step
label "exalted"
talk Admiral Taylor##67940
accept The Bell Speaks##32400 |goto Krasarang Wilds/0 89.60,32.60
|only if repval('Operation: Shieldwall','Exalted')>=1 and not completedq(32455)
step
talk Fennie Hornswaggle##68741
Ask her to take you to Emperor's Reach
Find Anduin at Emperor's Reach |q 32400/1 |goto Krasarang Wilds 88.30,34.30
|only if haveq(32400)
step
talk Anduin Wrynn##68939
turnin The Bell Speaks##32400 |goto Kun-Lai Summit 56.40,34.40
accept Breath of Darkest Shadow##32401 |goto Kun-Lai Summit 56.40,34.40
|only if haveq(32400) and not completedq(32401) and not completedq(32455)
step
Wait until the Horde become afflicted by the Sha
kill Kor'kron Juggernaut##68940
Once the Juggernauts are defeated, Ishi will get possessed
kill Ishi##68936 |q 32401/1 |goto Kun-Lai Summit 55.90,32.50
Destroy the Divine Bell |q 32401/2 |goto Kun-Lai Summit 55.90,32.50
|only if haveq(32401)
step
talk Anduin Wrynn##68987
turnin Breath of Darkest Shadow##32401 |goto Kun-Lai Summit 55.90,32.50
accept The Silence##32455 |goto Kun-Lai Summit 55.90,32.50
|only if not completedq(32455)
step
Use your _Alliance Flare Gun_ |use Alliance Flare Gun##93362 |q 32455/1
|only if haveq(32455)
step
talk Admiral Taylor##69090
turnin The Silence##32455 |goto Krasarang Wilds 87.70,33.10
|only if haveq(32455)
step
label "endg"
talk Agent Malley##69059
buy 1 Grand Commendation of Operation: Shieldwall##93231 |n |goto Krasarang Wilds 89.60,33.40
Use the Commendation of Operation: Shieldwall you just purchased |complete QC:GetReputation("Operation: Shieldwall").hasBonus |use Grand Commendation of Operation: Shieldwall##93231
|only if rep("Operation: Shieldwall")>=Revered
step
You have reached the end of the guide
Click here to go back to the start |confirm |next "dailies"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Chee Chee",{
description="This guide will walk you through becoming best friends with Chee Chee.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Chee Chee after completing the Tillers prequests
Becoming _Best Friends_ with Chee Chee rewards you with _Chee Chee's Goodie Bag_, which contains leather and cloth, and he also gives you a _Sheep_ to decorate your farm with
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Chee Chee_ is a _Stranger_ to you |only if rep("Chee Chee")<=Stranger
_Chee Chee_ is your _Aquaintance_ |only if rep("Chee Chee")==Aquaintance
_Chee Chee_ is your _Buddy_ |only if rep("Chee Chee")==Buddy
_Chee Chee_ is your _Friend_ |only if rep("Chee Chee")==Friend
_Chee Chee_ is your _Good Friend_ |only if rep("Chee Chee")==GoodFriend
_Chee Chee_ is your _Best Friend_ |only if rep("Chee Chee")==BestFriend
|only if rep("Chee Chee")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Chee Chee")<BestFriend
|only if rep("Chee Chee")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Chee Chee")<BestFriend
You have maxed out your reputation with this individual
Please select a different guide |only if rep("Chee Chee")==BestFriend
|confirm |next "end" |only if rep("Chee Chee")==BestFriend
step
label "cooking"
In order to create Chee Chee's favorite meal, you must have at least 555 skill points in _Way of the Wok_ Cooking
Click here to continue |confirm |next "stir_fry"
Click here to go back to the menu |confirm |next "menu"
step
label "stir_fry"
talk Anthea Ironpaw##58713
learn Valley Stir Fry##104302 |goto Valley of the Four Winds 52.70,52.00
step
#include "auctioneer"
buy 25 Reef Octopus##74864
buy 25 Wildfowl Breast##74839
Or
Click here to farm the ingredients yourself |confirm |next "farm_stir_fry_1"
|tip You should at least have 525 fishing for this.
step
label "farm_stir_fry_1"
Equip your Fishing Pole if it's not already equipped |use Fishing Pole##6256 |goto Krasarang Wilds 67.90,49.60
Use your Fishing skill to fish in the water here
You can also look for fishing pools around the beach |cast Fishing##7620
collect 25 Reef Octopus##74864
step
Skipping farming |next "create_stir_fry" |only if itemcount(74839) >= 25
Proceeding to Valley Stir Fry |next |only if default
step
label "farm_stir_fry_2"
kill Carp Hunter##58116+
collect 25 Wildfowl Breast##74839 |goto Krasarang Wilds 64.60,29.30
|next "create_stir_fry"
step
label "create_stir_fry"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create 5 Valley Stir Fry##104302,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them
You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 30 Blue Feather##79265
|next "turnin2"
step
label "turnin1"
talk Chee Chee##58709
turnin A Dish For Chee Chee##30402 |goto Valley of the Four Winds 34.40,46.70 |or
|tip You can only turn this quest in once a day.
Click here to be taken back to the beginning of the Cooking Dailies for Chee Chee |confirm |next "cooking"
You can also find Chee Chee in Halfhill at [53.00,52.00]
|next "quest1" |only if rep("Chee Chee")==Buddy
|next "quest2" |only if rep("Chee Chee")==Friend
|next "quest3" |only if rep("Chee Chee")==GoodFriend
|next "menu" |only if default
Click here if Chee Chee is not in this location |next "turnin2"
step
label "turnin2"
talk Chee Chee##58709
turnin A Blue Feather for Chee Chee##30400  |goto Valley of the Four Winds 34.40,46.70 |or
|tip Keep turning this in until you reach the next status.
You can also find Chee Chee in Halfhill at the following location |goto Valley of the Four Winds 53.00,52.00
|next "quest1" |only if rep("Chee Chee")==Buddy
|next "quest2" |only if rep("Chee Chee")==Friend
|next "quest3" |only if rep("Chee Chee")==GoodFriend
|next "menu" |only if default
Click here if Chee Chee is not in this location. |next "turnin1"
step
label "quest1"
talk Chee Chee##58709
accept Lost Sheepie##31338 |goto Valley of the Four Winds 34.40,46.70
step
label "quest2"
talk Chee Chee##58709
accept Lost Sheepie... Again##31339 |goto Valley of the Four Winds 34.40,46.70
step
label "quest3"
talk Chee Chee##58709
accept Oh Sheepie##31340 |goto Valley of the Four Winds 34.40,46.70
step
talk Chee Chee##58709
accept A Wolf In Sheep's Clothing##31341 |goto Valley of the Four Winds 34.40,46.70
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Ella",{
description="This guide will walk you through becoming best friends with Ella.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Ella after completing the Tillers prequests.
Becoming _Best Friends_ with Ella rewards you with a _Tree Seed Pack_, which contains Blossom Seeds, and she also gives you a _Cat_ to decorate your farm with.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Ella_ is a _Stranger_ to you |only if rep("Ella")<=Stranger
_Ella_ is your _Aquaintance_ |only if rep("Ella")==Aquaintance
_Ella_ is your _Buddy_ |only if rep("Ella")==Buddy
_Ella_ is your _Friend_ |only if rep("Ella")==Friend
_Ella_ is your _Good Friend_ |only if rep ("Ella")==GoodFriend
_Ella_ is your _Best Friend_ |only if rep("Ella")==BestFriend
|only if rep("Ella")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Ella")<BestFriend
|only if rep("Ella")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Ella")<BestFriend
You have maxed out your reputation with this individual
Please select a different guide |only if rep("Ella")==BestFriend
|confirm |next "end" |only if rep("Ella")==BestFriend
step
label "cooking"
In order to create Ella's favorite meal, you must have at least 525 skill points in Cooking
Click here to continue |confirm |next "shrimp_dump"
Click here to go back to the menu |confirm |next "menu"
step
label "shrimp_dump"
talk Yan Ironpaw##58715
learn Shrimp Dumplings##104307 |goto Valley of the Four Winds 52.50,51.80
step
#include "auctioneer"
buy 25 Giant Mantis Shrimp##74857
Or
Click here to farm the ingredients yourself |confirm |next "farm_shrimp_dump_1"
|tip You should at least have 525 fishing for this.
step
label "farm_shrimp_dump_1"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here
You can look for fishing pools around the beach also |cast Fishing##7620
collect 25 Giant Mantis Shrimp##74857 |goto Krasarang Wilds 67.90,49.60
step
label "create_shrimp_dump"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create 5 Shrimp Dumpling##104307,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them
You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 30 Jade Cat##79266
|next "turnin2"
step
label "turnin1"
talk Ella##58647
turnin A Dish For Ella##30386 |goto Valley of the Four Winds 31.50,58.10
|tip You can only turn this quest in once a day
You can also find Chee Chee in Halfhill at the following location: |goto Valley of the Four Winds 53.00,51.60
Click here to be taken back to the beginning of the Cooking Dailies for Ella |confirm |next "cooking"
|next "quest1" |only if rep("Ella")==Buddy |or
|next "quest2" |only if rep("Ella")==Friend |or
|next "quest3" |only if rep("Ella")==GoodFriend |or
|next "menu" |only if default
Click here if Ella is not in this location. |next "turnin2"
step
label "turnin2"
talk Ella##58647
turnin A Jade Cat for Ella##30381 |goto Valley of the Four Winds 31.50,58.10
|tip Keep turning this in until you reach Buddy Status.
You can also find Chee Chee in Halfhill at the following location: |goto Valley of the Four Winds 53.00,51.60
|next "quest1" |only if rep("Ella")==Buddy |or
|next "quest2" |only if rep("Ella")==Friend |or
|next "quest3" |only if rep("Ella")==GoodFriend |or
|next "menu" |only if default
Click here if Ella is not in this location |next "turnin1"
step
label "quest1"
talk Ella##58647
accept The Beginner's Brew##31534 |goto Valley of the Four Winds 31.50,58.10
If Ella is not here, you can find her at the following location: |goto Valley of the Four Winds 53.00,51.60
step
talk Farmer Fung##57298
Ask him for a Red Radish
collect 1 Red Radish##87553 |q 31534/1 |goto Valley of the Four Winds 48.20,33.90
step
talk Haohan Mudclaw##57402
Ask her for a Sweet Lakelemon
collect 1 Sweet Lakelemon##87554 |q 31534/2 |goto Valley of the Four Winds 44.60,34.00
step
talk Gina Mudclaw##58706
Ask her for a Fuzzy Peach
collect 1 Black Cherries##87555 |q 31534/3 |goto Valley of the Four Winds 53.20,51.60
step
talk Fish Fellreed##58705
Ask her for Black Cherries
collect 1 Black Cherries##87556 |q 31534/4 |goto Valley of the Four Winds 41.70,30.10
step
talk Ella##58647
turnin The Beginner's Brew##31534 |goto Valley of the Four Winds 31.50,58.10
If Ella is not here, you can find her at the following location: |goto Valley of the Four Winds 53.00,51.60
|next "menu"
step
label "quest2"
talk Ella##58647
accept Ella's Taste Test##31537 |goto Valley of the Four Winds 31.50,58.10
If Ella is not here, you can find her at the following location: |goto Valley of the Four Winds 53.00,51.60
step
Use _Ella's Brew_ on _Jogu the Drunk_ |use Ella's Brew##87558
Have Jogu the Drunk try Ella's Brew |q 31537/1 |goto Valley of the Four Winds 53.50,52.60
step
Use _Ella's Brew_ on _Bobo Ironpaw_ |use Ella's Brew##87558
Have Bobo Ironpaw try Ella's Brew |q 31537/2 |goto Valley of the Four Winds 53.00,52.00
step
Use _Ella's Brew_ on _Farmer Yoon_ |use Ella's Brew##87558
Have Farmer Yoon try Ella's Brew |q 31537/3 |goto Valley of the Four Winds 52.00,48.00
step
Use _Ella's Brew_ on _Nana Mudclaw_ |use Ella's Brew##87558
Have Nana Mudclaw try Ella's Brew |q 31537/4 |goto Valley of the Four Winds 54.60,47.00
step
talk Ella##58647
turnin Ella's Taste Test##31537 |goto Valley of the Four Winds 31.50,58.10
If Ella is not here, you can find her at the following location: |goto Valley of the Four Winds 53.00,51.60
|next "menu"
step
label "quest3"
talk Ella##58647
accept A Worthy Brew##31538 |goto Valley of the Four Winds 31.50,58.10
If Ella is not here, you can find her at the following location: |goto Valley of the Four Winds 53.00,51.60
step
Use _Ella's Brew_ on _Chen Stormstout_ |use Ella's Brew##87763
Have Chen Stormstout try Ella's Brew |q 31537/4 |goto Valley of the Four Winds/0 55.10,50.40
step
talk Ella##58647
turnin A Worthy Brew##31538 |goto Valley of the Four Winds/0 31.50,58.10
If Ella is not here, you can find her at the following location: |goto Valley of the Four Winds/0 53.00,51.60
|next "menu"
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Farmer Fung",{
description="This guide will walk you through becoming best friends with Farmer Fung.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Farmer Fung after completing the Tillers prequests.
Becoming _Best Friends_ with Farmer Fung rewards you with an _Enigma Seed_, which blooms into a random plant, and _Shaggy the Prize Yak_ for your farm
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Farmer Fung_ is a _Stranger_ to you |only if rep("Farmer Fung")<=Stranger
_Farmer Fung_ is your _Aquaintance_ |only if rep("Farmer Fung")==Aquaintance
_Farmer Fung_ is your _Buddy_ |only if rep("Farmer Fung")==Buddy
_Farmer Fung_ is your _Friend_ |only if rep("Farmer Fung")==Friend
_Farmer Fung_ is your _Best Friend_ |only if rep("Farmer Fung")==BestFriend
|only if rep("Farmer Fung")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Farmer Fung")<BestFriend
|only if rep("Farmer Fung")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Farmer Fung")<BestFriend
You have maxed out your reputation with this individual
Please select a different guide |only if rep("Farmer Fung")==BestFriend
|confirm |next "end" |only if rep("Farmer Fung")==BestFriend
step
label "cooking"
In order to create Farmer Fung's favorite meal, you must have at least 525 skill points in Cooking
Click here to continue |confirm |next "wild_roast"
Click here to go back to the menu |confirm |next "menu"
step
label "wild_roast"
talk Jian Ironpaw##58716
learn Wildfowl Roast##104310 |goto Valley of the Four Winds 53.40,51.60
step
#include "auctioneer"
buy 5 Wildfowl Breast##74839
Or
Click here to farm the ingredients yourself |confirm |next "farm_wild_roast_1"
step
label "farm_wild_roast_1"
kill Carp Hunter##58116+
collect 5 Wildfowl Breast##74839 |goto Krasarang Wilds 64.60,29.30
step
label "create_wild_roast"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create 5 Wildfowl Roast##104310,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them
You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 47 Marsh Lily##79268
|next "turnin2"
step
label "turnin1"
talk Farmer Fung##57298
turnin A Dish For Farmer Fung##30421 |goto Valley of the Four Winds 48.20,33.90
|tip You can only turn this quest in once a day
You can also find Farmer Fung in Halfhill at the following location |goto Valley of the Four Winds 52.80,51.60
Click here to be taken back to the beginning of the Cooking Dailies for Farmer Fung |confirm |next "cooking"
step
label "turnin2"
talk Farmer Fung##57298
turnin A Marsh Lily for Farmer Fung##30420 |goto Valley of the Four Winds 48.20,33.90
|tip Keep turning this in until you reach Best Friend status.
You can also find Farmer Fung in Halfhill at the following location |goto Valley of the Four Winds 52.80,51.60
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Fish Fellreed",{
description="This guide will walk you through becoming best friends with Fish Fellreed.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Fish Fellreed after completing the Tillers prequests
Becoming _Best Friends_ with Fish Fellreed rewards you with a _Special Seed Pack_, which contains Profession Seeds
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Fish Fellreed_ is a _Stranger_ to you |only if rep("Fish Fellreed")<=Stranger
_Fish Fellreed_ is your _Aquaintance_ |only if rep("Fish Fellreed")==Aquaintance
_Fish Fellreed_ is your _Buddy_ |only if rep("Fish Fellreed")==Buddy
_Fish Fellreed_ is your _Friend_ |only if rep("Fish Fellreed")==Friend
_Fish Fellreed_ is your _Good Friend_ |only if rep("Fish Fellreed")==GoodFriend
_Fish Fellreed_ is your _Best Friend_ |only if rep("Fish Fellreed")==BestFriend
|only if rep("Fish Fellreed")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Fish Fellreed")<BestFriend
|only if rep("Fish Fellreed")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Fish Fellreed")<BestFriend
You have maxed out your reputation with this individual
Please select a different guide |only if rep("Fish Fellreed")==BestFriend
|confirm |next "end" |only if rep("Fish Fellreed")==BestFriend
step
label "cooking"
In order to create Fish Fellreed's favorite meal, you must have at least 550 skill points in _Way of the Oven_ Cooking
Click here to continue |confirm |next "twin_fish"
Click here to go back to the menu |confirm |next "menu"
step
label "twin_fish"
talk Jian Ironpaw##58716
learn Twin Fish Platter##104311 |goto Valley of the Four Winds 53.40,51.60
step
#include "auctioneer"
buy 10 Krasarang Paddlefish##74865 |next "create_twin_fish" |or
Or
Click here to farm the ingredients yourself |confirm |next "farm_twin_fish_1" |or
|tip You should at least have 525 fishing for this.
step
label "farm_twin_fish_1"
map Krasarang Wilds
path loose; loop; curved
path	37.40,35.20	42.90,38.70	43.40,46.00
path	38.00,42.30	34.10,38.40	30.30,33.80
Follow this river and use your fishing ability to catch Krasarang Paddlefish
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
collect 10 Krasarang Paddlefish##74865
step
label "create_twin_fish"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Twin Fish Platter##104311,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 47 Jade Cat##79266
|next "turnin2"
step
label "turnin1"
talk Fish Fellreed##58705
turnin A Dish For Fish##30427 |goto Valley of the Four Winds 41.70,30.10
|tip You can only turn this quest in once a day.
You can also find Fish Fellreed in Halfhill at the following location: |goto Valley of the Four Winds 53.00,51.60
Click here to be taken back to the beginning of the Cooking Dailies for Fish Fellreed |confirm |next "cooking"
Click here if Fish Fellreed is not in this location |next "turnin2"
Click here to be taken back to the beginning of this guide |confirm |next "menu"
step
label "turnin2"
talk Fish Fellreed##58705
turnin A Jade Cat for##30424 |goto Valley of the Four Winds 41.70,30.10
|tip Keep turning this in until you reach Best Friend Status.
You can also find Fish Fellreed in Halfhill at the following location: |goto Valley of the Four Winds 52.80,51.80
Click here if Fish Fellreed is not in this location |next "turnin1"
Click here to be taken back to the beginning of this guide |confirm |next "menu"
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Gina Mudclaw",{
description="This guide will walk you through becoming best friends with Gina Mudclaw.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Gina Mudclaw after completing the Tillers prequests.
Becoming _Best Friends_ with Gina Mudclaw rewards you with _Celebration Gift_, which contains fireworks, and she also gives you access to a mailbox on Halfhill.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Gina Mudclaw_ is a _Stranger_ to you |only if rep("Gina Mudclaw")<=Stranger
_Gina Mudclaw_ is your _Aquaintance_ |only if rep("Gina Mudclaw")==Aquaintance
_Gina Mudclaw_ is your _Buddy_ |only if rep("Gina Mudclaw")==Buddy
_Gina Mudclaw_ is your _Friend_ |only if rep("Gina Mudclaw")==Friend
_Gina Mudclaw_ is your _Good Friend_ |only if rep("Gina Mudclaw")==GoodFriend
_Gina Mudclaw_ is your _Best Friend_ |only if rep("Gina Mudclaw")==BestFriend
|only if rep("Gina Mudclaw")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Gina Mudclaw")<BestFriend
|only if rep("Gina Mudclaw")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Gina Mudclaw")<BestFriend
You have maxed out your reputation with this individual Please select a different guide. |only if rep("Gina Mudclaw")==BestFriend
|confirm |next "end" |only if rep("Gina Mudclaw")==BestFriend
step
label "cooking"
In order to create Gina Mudclaw's favorite meal, you must have at least 525 skill points in Cooking
Click here to continue |confirm |next "mist_soup"
Click here to go back to the menu |confirm |next "menu"
step
label "mist_soup"
talk Anthea Ironpaw##58713
learn Swirling Mist Soup##104304 |goto Valley of the Four Winds 52.70,52.00
step
#include "auctioneer"
buy 5 Jade Lungfish##74856
Or
Click here to farm the ingredients yourself |confirm |next "farm_mist_soup_1"
|tip You should at least have 525 fishing for this.
step
label "farm_mist_soup_1"
Equip your Fishing Pole if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can also look for fishing pools around the beach |cast Fishing##7620
collect 5 Jade Lungfish##74856 |goto The Jade Forest 23.60,25.60
step
label "create_mist_soup"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Swirling Mist Soup##104304,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 44 Blue Feather##79268
|next "turnin2"
step
label "turnin1"
talk Gina Mudclaw##58706
turnin A Dish For Gina Mudclaw##30390 |goto Valley of the Four Winds 53.20,51.60
|tip You can only turn this quest in 5 times a day.
Click here to be taken back to the beginning of the Cooking Dailies for Gina Mudclaw |confirm |next "cooking"
step
label "turnin2"
talk Gina Mudclaw##58706
turnin A Marsh Lily for Gina Mudclaw##30389 |goto Valley of the Four Winds 53.20,51.60
|tip Keep turning this in until you reach Best Friend Status.
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Haohan Mudclaw",{
description="This guide will walk you through becoming best friends with Haohan Mudclaw.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Haohan Mudclaw after completing the Tillers prequests.
Becoming _Best Friends_ with Haohan Mudclaw rewards you with three _Songbell Seeds_, and a mushan pet to decorate your farm with.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Haohan Mudclaw_ is a _Stranger_ to you |only if rep("Haohan Mudclaw")<=Stranger
_Haohan Mudclaw_ is your _Aquaintance_ |only if rep("Haohan Mudclaw")==Aquaintance
_Haohan Mudclaw_ is your _Buddy_ |only if rep("Haohan Mudclaw")==Buddy
_Haohan Mudclaw_ is your _Friend_ |only if rep("Haohan Mudclaw")==Friend
_Haohan Mudclaw_ is your _Best Friend_ |only if rep("Haohan Mudclaw")==BestFriend
|only if rep("Haohan Mudclaw")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Haohan Mudclaw")<BestFriend
|only if rep("Haohan Mudclaw")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Haohan Mudclaw")<BestFriend
You have maxed out your reputation with this individual
Please select a different guide |only if rep("Haohan Mudclaw")==BestFriend
|confirm |next "end" |only if rep("Haohan Mudclaw")==BestFriend
step
label "cooking"
In order to create Haohan Mudclaw's favorite meal, you must have at least 525 skill points in Cooking
Click here to continue |confirm |next "tiger_steak"
Click here to go back to the menu |confirm |next "menu"
step
label "tiger_steak"
talk Kol Ironpaw##58712
learn Charbroiled Tiger Steak##104298 |goto Valley of the Four Winds 53.00,51.40
step
#include "auctioneer"
buy 5 Raw Tiger Steak##74833
Or
Click here to farm the ingredients yourself |confirm |next "farm_tiger_steak_1"
step
label "farm_tiger_steak_1"
kill Windward Tiger##63537+
collect 5 Raw Tiger Steak##74833 |goto The Jade Forest 62.50,24.30
step
label "create_tiger_steak"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Charbroiled Tiger Steak##104298,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them
You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 47 Ruby Shard##79264
|next "turnin2"
step
label "turnin1"
talk Haohan Mudclaw##57402
turnin A Dish For Haohan##30414 |goto Valley of the Four Winds 44.60,34.00
|tip You can only turn this quest in once a day.
You can also find Haohan in Halfhill at the following location |goto Valley of the Four Winds 53.00,51.60
Click here to be taken back to the beginning of the Cooking Dailies for Haohan Mudclaw |confirm |next "cooking"
step
label "turnin2"
talk Haohan Mudclaw##57402
turnin A Ruby shard for Haohan##30409 |goto Valley of the Four Winds 44.60,34.10
|tip Keep turning this in until you reach Best Friend Status.
You can also find Haohan in Halfhill at the following location |goto Valley of the Four Winds 53.00,51.60
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Jogu the Drunk",{
description="This guide will walk you through becoming best friends with Jogu the Drunk.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Jogu the Drunk after completing the Tillers prequests.
Becoming _Best Friends_ with Jogu the Drunk rewards you with a _Secret Stash_, which contains alcohol, and he will no longer charge for crop predictions.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Jogu the Drunk_ is a _Stranger_ to you |only if rep("Jogu the Drunk")<=Stranger
_Jogu the Drunk_ is your _Aquaintance_ |only if rep("Jogu the Drunk")==Aquaintance
_Jogu the Drunk_ is your _Buddy_ |only if rep("Jogu the Drunk")==Buddy
_Jogu the Drunk_ is your _Friend_ |only if rep("Jogu the Drunk")==Friend
_Jogu the Drunk_ is your _Best Friend_ |only if rep("Jogu the Drunk")==BestFriend
|only if rep("Jogu the Drunk")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Jogu the Drunk")<BestFriend
|only if rep("Jogu the Drunk")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Jogu the Drunk")<BestFriend
You have maxed out your reputation with this individual
Please select a different guide |only if rep("Jogu the Drunk")==BestFriend
|confirm |next "end" |only if rep("Jogu the Drunk")==BestFriend
step
label "cooking"
In order to create Jogu the Drunk's favorite meal, you must have at least 525 skill points in Cooking
Click here to continue |confirm |next "carrots"
Click here to go back to the menu |confirm |next "menu"
step
label "carrots"
talk Anthea Ironpaw##58713
learn Sauteed Carrots##104301 |goto Valley of the Four Winds 52.80,51.80
step
#include "auctioneer"
buy 10 Juicycrunch Carrot##74841
Or
Click here to farm the ingredients yourself |confirm |next "farm_carrots_1"
step
label "farm_carrots_1"
kill Windward Tiger##63537+
collect 10 Juicycrunch Carrot##74841 |goto The Jade Forest 62.50,24.30
step
label "create_carrots"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Sauteed Carrots##104301,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them
You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 30 Lovely Apple##79267
|next "turnin2"
step
label "turnin1"
talk Jogu the Drunk##58710
turnin A Dish For Jogu##30439 |goto Valley of the Four Winds 53.50,52.60
|tip You can only turn this quest in once a day.
Click here to be taken back to the beginning of the Cooking Dailies for Jogu the Drunk |confirm |next "cooking"
|next "quest1" |only if rep("Jogu the Drunk")==Aquaintance
|next "quest2" |only if rep("Jogu the Drunk")==Buddy
|next "quest3" |only if rep("Jogu the Drunk")==Friend
|next "quest4" |only if rep("Jogu the Drunk")==GoodFriend
step
label "turnin2"
talk Jogu the Drunk##58710
turnin A Lovely Apple for Jogu##30435 |goto Valley of the Four Winds 53.50,52.60
|tip Keep turning this in until you reach the next friendship status.
|next "quest1" |only if rep("Jogu the Drunk")==Aquaintance
|next "quest2" |only if rep("Jogu the Drunk")==Buddy
|next "quest3" |only if rep("Jogu the Drunk")==Friend
|next "quest4" |only if rep("Jogu the Drunk")==GoodFriend
step
label "quest1"
talk Jogu the Drunk##58710
accept Buy A Fish A Drink?##31320 |goto Valley of the Four Winds 53.50,52.60
step
talk Den Den##64319
buy 1 Four Wind Soju##81407 |q 31320/1 |goto Valley of the Four Winds 54.80,50.60
step
talk Jogu the Drunk##58710
turnin Buy A Fish A Drink?##31320 |goto Valley of the Four Winds 53.50,52.60 |next "menu"
step
label "quest2"
talk Jogu the Drunk##58710
accept Buy A Fish A Round?##31321 |goto Valley of the Four Winds 53.50,52.60
step
talk Den Den##64319
buy 5 Plum Wine##81415 |q 31321/1 |goto Valley of the Four Winds 54.80,50.60
step
talk Jogu the Drunk##58710
turnin Buy A Fish A Round?##31321 |goto Valley of the Four Winds 53.50,52.60 |next "menu"
step
label "quest3"
talk Jogu the Drunk##58710
accept Buy A Fish A Keg?##31322 |goto Valley of the Four Winds 53.50,52.60
step
collect 10 Jade Witch Brew##75037 |q 31322/1 |goto Valley of the Four Winds 54.80,50.60
|tip Create them with "Way of the Brew" Pandaria Cooking or purchase them from the auction house.
step
talk Jogu the Drunk##58710
turnin Buy A Fish A Keg?##31322 |goto Valley of the Four Winds 53.50,52.60 |next "menu"
step
label "quest4"
talk Jogu the Drunk##58710
accept Buy A Fish A Brewery?##31323 |goto Valley of the Four Winds 53.50,52.60
step
collect 20 Mad Brewer's Breakfast##75038 |q 31323/1 |goto Valley of the Four Winds 54.80,50.60
|tip Create them with "Way of the Brew" Pandaria Cooking or purchase them from the auction house.
step
talk Jogu the Drunk##58710
turnin Buy A Fish A Brewery?##31323 |goto Valley of the Four Winds 53.50,52.60
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Old Hillpaw",{
description="This guide will walk you through becoming best friends with Old Hillpaw.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Old Hillpaw after completing the Tillers prequests.
Becoming _Best Friends_ with Old Hillpaw rewards you with a _Straw Hat_ and _Chickens_ for your farm.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Old Hillpaw_ is a _Stranger_ to you |only if rep("Old Hillpaw")<=Stranger
_Old Hillpaw_ is your _Aquaintance_ |only if rep("Old Hillpaw")==Aquaintance
_Old Hillpaw_ is your _Buddy_ |only if rep("Old Hillpaw")==Buddy
_Old Hillpaw_ is your _Friend_ |only if rep("Old Hillpaw")==Friend
_Old Hillpaw_ is your _Best Friend_ |only if rep("Old Hillpaw")==BestFriend
|only if rep("Old Hillpaw")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Old Hillpaw")<BestFriend
|only if rep("Old Hillpaw")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Old Hillpaw")<BestFriend
You have maxed out your reputation with this individual
Please select a different guide |only if rep("Old Hillpaw")==BestFriend
|confirm |next "end" |only if rep("Old Hillpaw")==BestFriend
step
label "cooking"
In order to create Old Hillpaw's favorite meal, you must have at least 525 skill points in Cooking
Click here to continue |confirm |next "turtle"
Click here to go back to the menu |confirm |next "menu"
step
label "turtle"
talk Mei Mei Ironpaw##58714
learn Braised Turtle##104305 |goto Valley of the Four Winds 52.60,51.60
step
#include "auctioneer"
buy 5 Raw Turtle Meat##74837
buy 25 Juicycrunch Carrot##74841
Or
Click here to farm the ingredients yourself |confirm |next "farm_turtle_1"
step
label "farm_turtle_1"
kill Wyrmhorn Turtle##56256+
collect 5 Raw Turtle Meat##74837 |goto Valley of the Four Winds 67.30,29.40
step
label "farm_turtle_2"
kill Snagtooth Hooligan##56462+
collect 25 Juicycrunch Carrot##74841 |goto Valley of the Four Winds 86.50,28.50
step
label "create_turtle"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create 5 Braised Turtle##104305,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them
You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 47 Bluie Feather##79268
|next "turnin2"
step
label "turnin1"
talk Old Hillpaw##58707
turnin A Dish For Old Hillpaw##30396 |goto Valley of the Four Winds 31.00,53.10
|tip You can only turn this quest in once a day
You can also find Old Hillpaw in Halfhill at the following location |goto Valley of the Four Winds 53.00,51.80
Click here to be taken back to the beginning of the Cooking Dailies for Old Hillpaw |confirm |next "cooking"
step
label "turnin2"
talk Old Hillpaw##58707
turnin A Blue Feather for Old Hillpaw##30394 |goto Valley of the Four Winds 31.00,53.10
|tip Keep turning this in until you reach Best Friend status.
You can also find Old Hillpaw in Halfhill at the following location |goto Valley of the Four Winds 53.00,51.80
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Sho",{
description="This guide will walk you through becoming best friends with Sho.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Sho after completing the Tillers prequests.
Becoming _Best Friends_ with Sho rewards you with a _Red Cricket_ Battle Pet and an _Orange Tree_ for your farm.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Sho_ is a _Stranger_ to you |only if rep("Sho")<=Stranger
_Sho_ is your _Aquaintance_ |only if rep("Sho")==Aquaintance
_Sho_ is your _Buddy_ |only if rep("Sho")==Buddy
_Sho_ is your _Friend_ |only if rep("Sho")==Friend
_Sho_ is your _Best Friend_ |only if rep("Sho")==BestFriend
|only if rep("Sho")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Sho")<BestFriend
|only if rep("Sho")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Sho")<BestFriend
You have maxed out your reputation with this individual
Please select a different guide |only if rep("Sho")==BestFriend
|confirm |next "end" |only if rep("Sho")==BestFriend
step
label "cooking"
In order to create Sho's favorite meal, you must have at least 550 skill points in Cooking
Click here to continue |confirm |next "eternal_blossom"
Click here to go back to the menu |confirm |next "menu"
step
label "eternal_blossom"
talk Kol Ironpaw##58712
learn Eternal Blossom Fish##104299 |goto Valley of the Four Winds 53.00,51.40
step
#include "auctioneer"
buy 5 Jade Lungfish##74856
buy 25 Striped Melon##74848
Or
Click here to farm the ingredients yourself |confirm |next "farm_eternal_blossom_1"
|tip You should at least have 525 fishing for this.
step
label "farm_eternal_blossom_1"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here
Look for Schools of fish to increase your chance of catching Jade Lungfish |cast Fishing##7620
collect 5 Jade Lungfish##74856 |goto The Jade Forest 55.00,71.10
step
Skipping farming |next "create_eternal_blossom" |only if itemcount(74848) >= 25
Proceeding to Eternal Blossom Fish |next |only if default
step
label "farm_eternal_blossom_2"
kill Slingtail Treeleaper##61562+
collect 25 Striped Melon##74848 |goto The Jade Forest 53.90,81.40
step
label "create_eternal_blossom"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Eternal Blossom Fish##104299,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them
You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 43 Lovely Apple##79268
|next "turnin2"
step
label "turnin1"
talk Sho##58708
turnin A Dish For Sho##30408 |goto Valley of the Four Winds 29.50,30.60
|tip You can only turn this quest in once a day
You can also find Sho in Halfhill at the following location |goto Valley of the Four Winds 53.00,52.00
Click here to be taken back to the beginning of the Cooking Dailies for Sho |confirm |next "cooking"
step
label "turnin2"
talk Sho##58708
turnin A Lovely Apple for Sho##30404 |goto Valley of the Four Winds 29.50,30.60
|tip Keep turning this in until you reach Best Friend status.
You can also find Sho in Halfhill at the following location |goto Valley of the Four Winds 53.00,52.00
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Tina Mudclaw",{
description="This guide will walk you through becoming best friends with Tina Mudclaw.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Tina Mudclaw after completing the Tillers prequests
Becoming _Best Friends_ with Tina Mudclaw rewards you by sending _Food_ and _Furniture_ to your farm
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Tina Mudclaw_ is a _Stranger_ to you |only if rep("Tina Mudclaw")<=Stranger
_Tina Mudclaw_ is your _Aquaintance_ |only if rep("Tina Mudclaw")==Aquaintance
_Tina Mudclaw_ is your _Buddy_ |only if rep("Tina Mudclaw")==Buddy
_Tina Mudclaw_ is your _Friend_ |only if rep("Tina Mudclaw")==Friend
_Tina Mudclaw_ is your _Best Friend_ |only if rep("Tina Mudclaw")==BestFriend
|only if rep("Tina Mudclaw")<BestFriend
Click here to use _Cooking_ to raise your reputation |confirm |next "cooking" |only if rep("Tina Mudclaw")<BestFriend
|only if rep("Tina Mudclaw")<BestFriend
Click here to gather gifts to raise your reputation |confirm |next "gifts" |only if rep("Tina Mudclaw")<BestFriend
You have maxed out your reputation with this individual
Please select a different guide |only if rep("Tina Mudclaw")==BestFriend
|confirm |next "end" |only if rep("Tina Mudclaw")==BestFriend
step
label "cooking"
In order to create Tina Mudclaw's favorite meal, you must have at least 550 skill points in Cooking
Click here to continue |confirm |next "fire_spirit"
Click here to go back to the menu |confirm |next "menu"
step
label "fire_spirit"
talk Yan Ironpaw##58715
learn Fire Spirit Salmon##104308 |goto Valley of the Four Winds 52.50,51.70
step
#include "auctioneer"
buy 5 Emperor Salmon##74859
buy 25 Scallions##74843
Or
Click here to farm the ingredients yourself |confirm |next "farm_fire_spirit_1"
|tip You should at least have 525 fishing for this.
step
label "farm_fire_spirit_1"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here
You can look for fishing pools around the beach also |cast Fishing##7620
collect 5 Emperor Salmon##74859 |goto Krasarang Wilds 37.40,35.20
step
label "farm_fire_spirit_2"
kill Riverblade Raider##59714+, Riverblade Thief##64034+
collect 25 Scallions##74843 |goto Krasarang Wilds 62.00,40.60
|next "create_fire_spirit"
step
label "create_fire_spirit"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Fire Spirit Salmon##104308,Cooking,5 total
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them
You will have to keep an eye out along this path and spot them
map Valley of the Four Winds
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
click Dark Soil##210582
collect 47 Ruby Shard##79268
|next "turnin2"
step
label "turnin1"
talk Tina Mudclaw##58761
turnin A Dish For Tina Mudclaw##30433 |goto Valley of the Four Winds 45.00,33.80
|tip You can only turn this quest in once a day.
You can also find Tina Mudclaw in Halfhill at the following location |goto Valley of the Four Winds 53.00,51.80
Click here to be taken back to the beginning of the Cooking Dailies for Tina Mudclaw |confirm |next "cooking"
step
label "turnin2"
talk Tina Mudclaw##58761
turnin A Ruby Shard for Tina Mudclaw##30428 |goto Valley of the Four Winds 45.00,33.80
|tip Keep turning this in until you reach Best Friend status.
You can also find Tina Mudclaw in Halfhill at the following location |goto Valley of the Four Winds 53.00,51.80
step
label "end"
You have reached the end of the guide
Please click here to return to the beginning of the guide |confirm |next "menu"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\The Anglers",{
description="This guide will walk you through becoming exalted with The Anglers faction.",
achieveid={6547,7614},
patch='50004',
},[[
step
You must have fishing in order to accept dailies from this faction
confirm
step
label "dailies"
There will only be three dailies available from the following questgivers
|tip It is possible for one questgiver to give you two quests in the same day, but it is unlikely.
confirm
step
talk Fisherman Haito##59584
accept Shocking!##30584 |goto Krasarang Wilds 67.90,45.20 |or
accept Jagged Abalone##30586 |goto Krasarang Wilds 67.90,45.20  |or
If these quests are unavailable today, click here |confirm
step
talk Angler Shen##59586
accept Snapclaw##30700 |goto Krasarang Wilds 67.50,43.50 |or
accept Fishing for a Bruising##30588 |goto Krasarang Wilds 67.50,43.50 |or
If these quests are unavailable today, click here |confirm
step
talk John "Big Hook" Marsock##60674
accept Bright Bait##30754 |goto Krasarang Wilds 68.30,43.50 |or
accept Jumping the Shark##30753 |goto Krasarang Wilds 68.30,43.50 |or
If these quests are unavailable today, click here |confirm
step
talk Trawler Yotimo##60135
accept Armored Carp##30613 |goto Krasarang Wilds 67.60,42.50 |or
accept Huff & Puff##30658 |goto Krasarang Wilds 67.60,42.50 |or
If these quests are unavailable today, click here |confirm
step
talk Elder Fisherman Rassan##60673
accept What Lurks Below##30585 |goto Krasarang Wilds 68.40,42.10 |or
accept Who Knew Fish Liked Eggs?##30598 |goto Krasarang Wilds 68.40,42.10 |or
If these quests are unavailable today, click here |confirm
step
talk Fo Fook##60675
accept Piranha!##30763 |goto Krasarang Wilds 67.20,41.20 |or
accept Viseclaw Soup##30701 |goto Krasarang Wilds 67.20,41.20 |or
If these quests are unavailable today, click here |confirm
step
talk Fiznix##60136
accept Like Bombing Fish In A Barrel##30678 |goto Krasarang Wilds 67.50,44.60 |or
accept Scavenger Hunt##30698 |goto Krasarang Wilds 67.50,44.60 |or
If this quest is unavailable today, click here |confirm
step
click Goblin Fishing Raft##211596
Ride a Goblin Fishing Raft |havebuff Rafting##116032 |goto Krasarang Wilds 67.50,44.80
|only if haveq(30698)
step
Use your fishing skill in the Shipwreck Debris pools to fish up 15 Rusty Shipwreck Debris
collect 15 Rusty Shipwreck Debris##80830 |q 30698/1 |goto Krasarang Wilds 64.30,50.70
You can find more Debris at [64.30,50.60]
|only if haveq(30698)
step
clicknpc Frenzied Reef Shark##60408
Ride the shark |goto Krasarang Wilds 68.40,43.10 |invehicle |c
|only if haveq(30753)
step
Use the abilities on your hotbar to kill the shark, make sure not to let your grip bar reach zero
kill Frenzied Reef Shark##60408 |q 30753/1
|only if haveq(30753)
step
click Jagged Abalone##211118
collect 9 Jagged Abalone Meat##80277 |q 30586/1 |goto Krasarang Wilds 69.10,37.90
|only if haveq(30586)
step
Enter the underwater cave here |goto Krasarang Wilds 71.30,38.50 < 5
kill Snapclaw##60401
collect Snapclaw's Claw##80831 |q 30700/1 |goto Krasarang Wilds 73.90,38.40
|only if haveq(30700)
step
Use your fishing skill to fish up 7 Dojani Eel |cast Fishing##131474
collect 7 Dojani Eel##80260 |q 30584/1 |goto Krasarang Wilds 65.60,30.50
|only if haveq(30584)
step
kill 8 Riverblade Raider##59714+ |q 30588/1 |goto Krasarang Wilds 62.40,40.90
|only if haveq(30588)
step
kill Viseclaw Fry##61090+, Viseclaw Fisher##58880+
collect 16 Viseclaw Fisher Eye##80832+ |q 30701/1 |goto Krasarang Wilds 55.10,45.70
|only if haveq(30701)
step
click Suncrawler##211474
collect 7 Suncrawler##81116 |q 30754/1 |goto Krasarang Wilds 59.80,38.80
|only if haveq(30754)
step
Use your Goblin Fishing Bomb to kill Sting Rays |use Goblin Fishing Bomb##80599
|tip You can kill the Sting Rays by other means, using the bombs is much quicker though.
kill Sting Ray##60278+
collect 3 Stinger##80600+ |q 30678/1 |goto Krasarang Wilds 59.30,46.30
|only if haveq(30678)
step
Use your fishing skill to fish up 5 Wolf Piranha. |cast Fishing##7620
collect 5 Wolf Piranha##81122 |q 30763/1 |goto Krasarang Wilds 36.80,43.30
|only if haveq(30763)
step
Use your fishing skill in the Mysterious Whirlpool until Narjon the Gulper appears.
|tip When Narjon spawns, make sure to equip your weapon quickly. |cast Fishing##131474
|tip It's a small swirling pool of water at this location
kill Narjon the Gulper##59689 |q 30585/1 |goto Krasarang Wilds 34.40,31.40
collect Beloved Ring##80262 |q 30585/2 |goto Krasarang Wilds 34.40,31.40
|only if haveq(30585)
step
Use your Anglers Fishing Spear near a Prickly Puffer |use Anglers Fishing Spear##80403
|tip The closer you are the easier it is to hit the fish.
kill Prickly Puffer##60037
collect 5 Prickly Puffer Spine##80529 |q 30658/1 |goto Krasarang Wilds 51.40,62.20
|only if haveq(30658)
step
click Pristine Crane Egg##211160
collect Pristine Crane Egg##80303 |q 30598/1 |goto Krasarang Wilds 65.20,47.50
|only if haveq(30598)
step
Use your Anglers Fishing Spear near an Armored Carp |use Anglers Fishing Spear##80403
|tip The closer you are the easier it is to hit the fish.
kill Armored Carp##59936+
collect 5 Armored Carp##80437 |q 30613/1 |goto Krasarang Wilds 70.10,51.20
|only if haveq(30613)
step
Use the Pristine Crane Egg in your bags |use Pristine Crane Egg##80303
Use your fishing skill in the Crane Yolk Pool and fish up a Silver Goby.
collect Silver Goby##80310 |q 30598/2 |goto Krasarang Wilds 68.20,42.70
|only if haveq(30598)
step
talk Elder Fisherman Rassan##60673
turnin What Lurks Below##30585 |goto Krasarang Wilds 68.40,42.10
turnin Who Knew Fish Liked Eggs?##30598 |goto Krasarang Wilds 68.40,42.10
step
talk Fiznix##60136
turnin Like Bombing Fish In A Barrel##30678 |goto Krasarang Wilds 67.50,44.60
turnin Scavenger Hunt##30698 |goto Krasarang Wilds 67.50,44.60
step
talk Angler Shen##59586
turnin Snapclaw##30700 |goto Krasarang Wilds 67.50,43.50
turnin Fishing for a Bruising##30588 |goto Krasarang Wilds 67.50,43.50
step
talk Trawler Yotimo##60135
turnin Armored Carp##30613 |goto Krasarang Wilds 67.60,42.50
turnin Huff & Puff##30658 |goto Krasarang Wilds 67.60,42.50
step
talk Fisherman Haito##59584
turnin Shocking!##30584 |goto Krasarang Wilds 67.90,45.20
turnin Jagged Abalone##30586 |goto Krasarang Wilds 67.90,45.20
step
talk John "Big Hook" Marsock##60674
turnin Bright Bait##30754 |goto Krasarang Wilds 68.30,43.50
turnin Jumping the Shark##30753 |goto Krasarang Wilds 68.30,43.50
step
talk Fo Fook##60675
turnin Piranha!##30763 |goto Krasarang Wilds 67.20,41.20
turnin Viseclaw Soup##30701 |goto Krasarang Wilds 67.20,41.20
step
talk Nat Pagle##63721
buy 1 Grand Commendation of the Anglers##93225 |n
Use the Commendation of the Anglers you just purchased |goto Krasarang Wilds 68.40,43.40 |complete QC:GetReputation("The Anglers").hasBonus |use Grand Commendation of the Anglers##93225
|only if rep("The Anglers")>=Revered
step
You have reached the end of this guide
Click here to go back to the dailies |confirm |next "dailies"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\The August Celestials",{
description="This guide will walk you through becoming exalted with The August Celestials faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('August Celestials') < Exalted end,
achieveid={6543},
patch='50004',
},[[
step
label "startaug"
talk Sage Whiteheart##64032
|tip The following quests will only be available the first time you are sent to a new area. They are random and Sage Lotusbloom will only have one at a time.
accept Challenge At The Temple of the Red Crane##31378 |goto Vale of Eternal Blossoms 84.62,63.78 |next "crane" |or |only if not completedq(31378)
accept Attack At The Temple of the Jade Serpent##31376 |goto Vale of Eternal Blossoms 84.62,63.78 |next "serpent" |or |only if not completedq(31377)
accept Defense At Niuzao Temple##31382 |goto Vale of Eternal Blossoms 84.62,63.78 |next "ox" |or |only if not completedq(31382)
accept Trial At The Temple of the White Tiger##31380 |goto Vale of Eternal Blossoms 84.62,63.78 |next "tiger" |or |only if not completedq(31380)
|tip If no quest is available, ask her how you can help the August Celestials today. Then click on whichever spirit needs you today.
Niuzao the Black Ox |confirm |next "ox"
Yu'lon the Jade Serpent |confirm |next "serpent"
Xuen the White Tiger |confirm |next "tiger"
Chi-Ji the Red Crane |confirm |next "crane"
step
label "crane"
talk Thelonius##60506
turnin Challenge At The Temple of the Red Crane##31378 |goto Krasarang Wilds 31.30,63.40
|only if not completedq(31378)
step
talk Thelonius##60506
accept Students of Chi-Ji##30718 |goto Krasarang Wilds 31.30,63.40
accept Champion of Chi-Ji##30740 |goto Krasarang Wilds 31.30,63.40 |only if achieved(7287)
step
talk Yan Quillpaw##60529
accept Gifts of the Great Crane##30717 |goto Krasarang Wilds 31.30,63.60
step
talk Kuo-Na Quillpaw##60528
accept Chasing Hope##30716 |goto Krasarang Wilds 31.30,63.60
step
talk Champion of Chi-Ji##60546
Let's fight!
Defeat a Champion of Chi-Ji |q 30740/1 |goto Krasarang Wilds 34.60,82.00
|only if haveq(30740)
step
kill Student of Chi-Ji##60601+
Duel #10# Students of Chi-Ji |q 30718/1 |goto Krasarang Wilds 31.20,73.90
click Cerulean Gift of the Crane##211451
click Crimson Gift of the Crane##211453
click Bronze Gift of the Crane##211452
|tip The Gifts look like feathers laying around on the ground.
collect 10 Gift of the Great Crane##80938+ |q 30717/1 |goto Krasarang Wilds 31.20,73.90
Find #3# Spirits of the Crane |q 30716/1 |goto Krasarang Wilds 31.20,73.90
|tip They look like stealthed birds roaming around the isle in set paths. Run into them.
step
talk Kuo-Na Quillpaw##60528
turnin Chasing Hope##30716 |goto Krasarang Wilds 31.30,63.60
step
talk Yan Quillpaw##60529
turnin Gifts of the Great Crane##30717 |goto Krasarang Wilds 31.30,63.60
step
talk Thelonius##60506
turnin Students of Chi-Ji##30718 |goto Krasarang Wilds 31.30,63.40
accept Ellia Ravenmane##30725 |goto Krasarang Wilds 31.30,63.40 |or
accept Minh Do-Tan##30726 |goto Krasarang Wilds 31.30,63.40 |or
accept Ellia Ravenmane: Rematch##30727 |goto Krasarang Wilds 31.30,63.40 |or
accept Fat Long-Fat##30728 |goto Krasarang Wilds 31.30,63.40 |or
accept Julia Bates##30729 |goto Krasarang Wilds 31.30,63.40 |or
accept Dextrous Izissha##30730 |goto Krasarang Wilds 31.30,63.40 |or
accept Kuo-Na Quillpaw##30731 |goto Krasarang Wilds 31.30,63.40 |or
accept Ellia Ravenmane: Revenge##30732 |goto Krasarang Wilds 31.30,63.40 |or
accept Tukka-Tuk##30733 |goto Krasarang Wilds 31.30,63.40 |or
accept Huck Wheelbarrow##30734 |goto Krasarang Wilds 31.30,63.40 |or
accept Mindel Sunspeaker##30735 |goto Krasarang Wilds 31.30,63.40 |or
accept Yan Quillpaw##30736 |goto Krasarang Wilds 31.30,63.40 |or
accept Fat Long-Fat: Rematch##30737 |goto Krasarang Wilds 31.30,63.40 |or
accept Thelonius##30738 |goto Krasarang Wilds 31.30,63.40 |or
accept Ellia Ravenmane: Redemption##30739 |goto Krasarang Wilds 31.30,63.40 |or
|only if not achieved(7287)
step
talk Thelonius##60506
turnin Students of Chi-Ji##30718 |goto Krasarang Wilds 31.30,63.40
turnin Champion of Chi-Ji##30740 |goto Krasarang Wilds 31.30,63.40
|only if achieved(7287)
|next "end"
step
talk Fat Long-Fat##60534
|tip He is on the very top of this building.
Let's fight!
Defeat Fat Long-Fat |q 30728/1 |goto Krasarang Wilds 32.00,70.70
|only if haveq(30728)
step
talk Ellia Ravenmane##60530
Let's fight!
Defeat Ellia Ravenmane |q 30725/1 |goto Krasarang Wilds 31.80,71.20
|only if haveq(30725)
step
talk Mindel Sunspeaker##60541
Let's fight!
Defeat Mindel Sunspeaker |q 30735/1 |goto Krasarang Wilds 32.10,69.90
|only if haveq(30735)
step
talk Minh Do-Tan##60532
Let's fight!
Defeat Minh Do-Tan |q 30726/1 |goto Krasarang Wilds 32.00,76.50
|only if haveq(30726)
step
talk Tukka-Tuk##60539
Let's fight!
Defeat Tukka-Tuk |q 30733/1 |goto Krasarang Wilds 34.10,75.10
|only if haveq(30733)
step
talk Ellia Ravenmane##60545
Let's fight!
Defeat Ellia Ravenmane |q 30739/1 |goto Krasarang Wilds 36.40,75.60
|only if haveq(30739)
step
talk Dextrous Izissha##60536
Let's fight!
Defeat Dextrous Izissha |q 30730/1 |goto Krasarang Wilds 31.70,80.30
|only if haveq(30730)
step
talk Fat Long-Fat##60543
Let's fight!
Defeat Fat Long-Fat |q 30737/1 |goto Krasarang Wilds 34.80,82.60
|only if haveq(30737)
step
talk Kuo-Na Quillpaw##60537
Let's fight!
Defeat Kuo-Na Quillpaw |q 30731/1 |goto Krasarang Wilds 36.60,74.80
|only if haveq(30731)
step
talk Ellia Ravenmane##60533
Let's fight!
Defeat Ellia Ravenmane |q 30727/1 |goto Krasarang Wilds 35.20,75.10
|only if haveq(30727)
step
talk Julia Bates##60535
Let's fight!
Defeat Julia Bates |q 30729/1 |goto Krasarang Wilds 28.90,75.50
|only if haveq(30729)
step
talk Huck Wheelbarrow##60540
Let's fight!
Defeat Huck Wheelbarrow |q 30734/1 |goto Krasarang Wilds 27.90,70.30
|only if haveq(30734)
step
talk Yan Quillpaw##60542
Let's fight!
Defeat Yan Quillpaw |q 30736/1 |goto Krasarang Wilds 36.50,76.20
|only if haveq(30736)
step
talk Ellia Ravenmane##60538
Let's fight!
Defeat Ellia Ravenmane |q 30732/1 |goto Krasarang Wilds 34.50,83.30
|only if haveq(30732)
step
talk Thelonius##60544
Let's fight!
Defeat Thelonius |q 30738/1 |goto Krasarang Wilds 28.80,72.40
|only if haveq(30738)
step
talk Thelonius##60506
turnin Ellia Ravenmane##30725 |goto Krasarang Wilds 31.30,63.40 |or
turnin Minh Do-Tan##30726 |goto Krasarang Wilds 31.30,63.40 |or
turnin Ellia Ravenmane: Rematch##30727 |goto Krasarang Wilds 31.30,63.40 |or
turnin Fat Long-Fat##30728 |goto Krasarang Wilds 31.30,63.40 |or
turnin Julia Bates##30729 |goto Krasarang Wilds 31.30,63.40 |or
turnin Dextrous Izissha##30730 |goto Krasarang Wilds 31.30,63.40 |or
turnin Kuo-Na Quillpaw##30731 |goto Krasarang Wilds 31.30,63.40 |or
turnin Ellia Ravenmane: Revenge##30732 |goto Krasarang Wilds 31.30,63.40 |or
turnin Tukka-Tuk##30733 |goto Krasarang Wilds 31.30,63.40 |or
turnin Huck Wheelbarrow##30734 |goto Krasarang Wilds 31.30,63.40 |or
turnin Mindel Sunspeaker##30735 |goto Krasarang Wilds 31.30,63.40 |or
turnin Yan Quillpaw##30736 |goto Krasarang Wilds 31.30,63.40 |or
turnin Fat Long-Fat: Rematch##30737 |goto Krasarang Wilds 31.30,63.40 |or
turnin Thelonius##30738 |goto Krasarang Wilds 31.30,63.40 |or
turnin Ellia Ravenmane: Redemption##30739 |goto Krasarang Wilds 31.30,63.40 |or
|only if not achieved(7287)
|next "end"
step
label "serpent"
talk Elder Sage Tai-Feng##57324
turnin Attack At The Temple of the Jade Serpent##31376 |goto The Jade Forest 53.90,61.90 |only if haveq(31376)
accept Arrows of Fortune##30065 |goto The Jade Forest 53.90,61.90 |or
accept Hidden Power##30066 |goto The Jade Forest 53.90,61.90 |or
accept The Darkness Around Us##30006 |goto The Jade Forest 53.90,61.90 |or
Click here when no more quests are available |confirm
step
talk Elder Sage Storm-Sing##57319
accept Behind the Masks##30063 |goto The Jade Forest 53.90,61.90 |or
accept Saving the Sutras##30064 |goto The Jade Forest 53.90,61.90 |or
Click here when no more quests are available |confirm
stickystart "defendersarrow"
stickystart "shainvaders"
stickystart "maskofdoubt"
step
click Ancient Sutra##210086
collect 6 Ancient Sutra##77432 |q 30064/1 |goto The Jade Forest 56.50,53.60
|only if haveq(30064)
step
label "defendersarrow"
click Defender's Arrow##210087 |only if haveq(30065)
collect 10 Defender's Arrow##77452+ |q 30065/1 |goto The Jade Forest 55.30,57.40 |only if haveq(30065)
click Yu'lon Guardian##57400+, Yu'lon Adept##57316+ |only if haveq(30066)
Use the Stack of Mantras |use Stack of Mantras##77475 |only if haveq(30066)
Deliver #6# Ancient Mantras |q 30066/1 |goto The Jade Forest 55.30,57.40 |only if haveq(30066)
step
label "maskofdoubt"
kill Final Doubt##57330+, Lingering Doubt##57396+ |only if haveq(30063)
collect 8 Mask of Doubt##77419+ |q 30063/1 |only if haveq(30063) |goto The Jade Forest 54.50,54.10
|only if haveq(30063)
step
label "shainvaders"
kill Final Doubt##57330+, Lingering Doubt##57396+, Shadow Of Doubt##57389
Kill #15# Sha Invaders |q 30006/1 |goto The Jade Forest 53.40,54.20
|only if haveq(30006)
step
talk Elder Sage Storm-Sing##57319
turnin Behind the Masks##30063 |goto The Jade Forest 53.90,61.90 |only if haveq(30063)
turnin Saving the Sutras##30064 |goto The Jade Forest 53.90,61.90 |only if haveq(30064)
step
talk Elder Sage Tai-Feng##57324
turnin Arrows of Fortune##30065 |goto The Jade Forest 53.90,61.90 |only if haveq(30065)
turnin Hidden Power##30066 |goto The Jade Forest 53.90,61.90 |only if haveq(30066)
turnin The Darkness Around Us##30006 |goto The Jade Forest 53.90,61.90 |only if haveq(30006)
accept Flames of the Void##30068 |goto The Jade Forest 53.90,61.90 |or
accept The Shadow of Doubt##30067 |goto The Jade Forest 53.90,61.90 |or
Click here when no more quests are available |confirm
step
kill Shadow of Doubt##57389 |q 30067/1 |goto The Jade Forest 57.50,62.30
|only if haveq(30067)
step
clicknpc War Serpent##57871
Ride the War Serpent |invehicle |goto The Jade Forest 54.10,60.90
|only if haveq(30068)
step
Fly around the Jade Temple Grounds and extinguish Void Flames
|tip They look like swirling black fire.
If you run out of water you can refill it in the river here |goto The Jade Forest 53.90,58.00
|tip Look for small light-blue patches of swirling water and then fly over them.
Douse #6# Void Flames |q 30068/1
|only if haveq(30068)
step
Click the Leave Vehicle button |outvehicle |goto The Jade Forest 53.90,61.90
|only if haveq(30068)
step
talk Elder Sage Tai-Feng##57324
turnin The Shadow of Doubt##30067 |goto The Jade Forest 53.90,61.90
turnin Flames of the Void##30068 |goto The Jade Forest 53.90,61.90
|next "end"
step
label "tiger"
talk Xuen##60968
turnin Trial At The Temple of the White Tiger##31380 |goto Kun-Lai Summit 67.20,55.90
|only if haveq(31380)
step
talk Xuen##60968
accept Round 1: Brewmaster Chani##30879 |goto Kun-Lai Summit 67.20,55.90 |or
accept Round 1: The Streetfighter##30880 |goto Kun-Lai Summit 67.20,55.90 |or
accept Contending With Bullies##31517 |goto Kun-Lai Summit 67.20,55.90
|tip This quest may not be available.
Click here if it is not available |confirm
step
kill Shonuf##64757 |q 31517/1 |goto Kun-Lai Summit 71.10,55.80
|only if haveq(31517)
step
talk Brewmaster Chani##60996
|tip Challenge her.
|tip She has a lot of health but isn't too difficult to kill. She will toss Bitter Brew on the ground, so kite her out of it. She also has an AoE cone called The Steamer, you can avoid this by either moving out of it, or interrupting the channel.
Defeat Brewmaster Chani |q 30879/1 |goto Kun-Lai Summit 71.00,51.80
|only if haveq(30879)
step
talk Lun-Chi##60994
|tip Challenge her.
Defeat The Streetfighter |q 30880/1 |goto Kun-Lai Summit 71.00,51.80
|only if haveq(30880)
step
talk Xuen##60968
turnin Round 1: Brewmaster Chani##30879 |goto Kun-Lai Summit 70.30,51.30 |only if haveq(30879)
turnin Round 1: The Streetfighter##30880 |goto Kun-Lai Summit 70.30,51.30 |only if haveq(30880)
turnin Contending With Bullies##31517 |goto Kun-Lai Summit 70.30,51.30 |only if haveq(31517)
accept Round 2: Clever Ashyo & Ken-Ken##30881 |goto Kun-Lai Summit 70.30,51.30 |or
accept Round 2: Kang Bramblestaff##30882 |goto Kun-Lai Summit 70.30,51.30 |or
step
talk Kang Bramblestaff##60978
|tip Challenge him.
Defeat Kang Bramblestaff |q 30882/1 |goto Kun-Lai Summit 71.70,45.40
|only if haveq(30882)
step
talk Clever Ashyo##60980
|tip Challenge him.
|tip Kill Ken-Ken first as he is the weaker of the two. He will cast Ken-Ken Rampage causing him to whirlwind, when he does momentarily switch to Ashyo. Ashyo will summon Water Spouts and Healing Spheres. The spheres are top priority and the Spouts are easily avoidable.
Defeat Clever Ashyo |q 30881/1 |goto Kun-Lai Summit 71.70,45.40
Defeat Ken-Ken |q 30881/2 |goto Kun-Lai Summit 71.70,45.40
|only if haveq(30881)
step
talk Xuen##60968
turnin Round 2: Clever Ashyo & Ken-Ken##30881 |goto Kun-Lai Summit 71.80,44.90 |only if haveq(30881)
turnin Round 2: Kang Bramblestaff##30882 |goto Kun-Lai Summit 71.80,44.90 |only if haveq(30882)
accept Round 3: The Wrestler##30883 |goto Kun-Lai Summit 71.80,44.90 |or
accept Round 3: Master Boom Boom##30885 |goto Kun-Lai Summit 71.80,44.90 |or
step
talk Master Boom Boom##61013
|tip Challenge him.
|tip He will constantly toss Dynamite at you that will put a landmine on the ground if you walk over it. When he starts the fuse on his boom box, be out of the middle of the arena by the time it finishes.
Defeat Master Boom Boom |q 30885/1 |goto Kun-Lai Summit 66.70,46.50
|only if haveq(30885)
step
talk The Wrestler##60997
|tip Challenge him.
|tip Click on the chairs around the room to increase your damage and cause The Wrestler to be stunned for 10 seconds. If you space these out enough, you could potentially kill him before he can hurt you. Periodically he will grapple and throw you, it does not do much damage but it prevents control of your character. Finally, he uses a Sling Sweat ability which puts a blue puddle on the ground that reduces your movement speed and does damage.
Defeat The Wrestler |q 30883/1 |goto Kun-Lai Summit 66.70,46.50
|only if haveq(30883)
step
talk Xuen##60968
turnin Round 3: The Wrestler##30883 |goto Kun-Lai Summit 66.40,46.30 |only if haveq(30883)
turnin Round 3: Master Boom Boom##30885 |goto Kun-Lai Summit 66.40,46.30 |only if haveq(30885)
accept Round 4: The P.U.G.##30907 |goto Kun-Lai Summit 66.40,46.30 |or
accept Round 4: Master Windfur##30902 |goto Kun-Lai Summit 66.40,46.30 |or
step
talk Master Windfur##61012
|tip Challenge him.
Defeat Master Windfur |q 30902/1 |goto Kun-Lai Summit 68.80,43.80
|only if haveq(30902)
step
Enter the building |goto Kun-Lai Summit 69.00,43.70 < 15
talk Healiss##61004
|tip Challenge him.
|tip Defeat the P.U.G. by first kill Healiss. He will attempt to run away and only has one healing spell that he may try to use, it is called Jungle Remedy, save Interrupts and Stuns for this ability. Next deal with Tankiss, he has more health but is a greater threat than Hackiss, his only ability is called Ground Pummel which will knock you can and deal some damage. Finally kill Hackiss, his only ability is Backstab. This will leave a small bleed on you.
Defeat Hackiss |q 30907/1
Defeat Healiss |q 30907/2
Defeat Tankiss |q 30907/3
|only if haveq(30907)
step
talk Xuen##60968
turnin Round 4: The P.U.G.##30907 |goto Kun-Lai Summit 68.50,44.60
turnin Round 4: Master Windfur##30902 |goto Kun-Lai Summit 68.50,44.60
step
talk Lin Tenderpaw##60981
accept The Torch of Strength##31492 |goto Kun-Lai Summit 68.50,56.50
Click here if this quest is unavailable |confirm |next "end"
step
For this quest you must go up the path, avoiding all of the tornadoes that roam around. If you mount, or touch a tornado, you will have to go back to Lin and start the quest over
confirm
|only if haveq(31492)
step
Enter the first temple |goto Kun-Lai Summit 69.60,53.00 < 10 |walk
Enter the second temple |goto Kun-Lai Summit 66.90,51.20 < 10 |walk
click The Strong Brazier##214628
Light the Strong Brazier |q 31492/1 |goto Kun-Lai Summit 68.60,46.60
|only if haveq(31492)
step
talk Lin Tenderpaw##60981
turnin The Torch of Strength##31492 |goto Kun-Lai Summit 68.50,56.50
|next "end"
|only if haveq(31492)
step
End of section |next "end"
step
label "ox"
talk Ogo the Elder##61580
turnin Defense At Niuzao Temple##31382 |goto Townlong Steppes 39.35,62.30 |only if haveq(31382)
accept The Siege Swells##30956 |goto Townlong Steppes 39.35,62.30 |or
accept The Unending Siege##30952 |goto Townlong Steppes 39.35,62.30 |or
step
talk Ogo the Younger##61581
accept The Big Guns##30959 |goto Townlong Steppes 39.34,62.21 |or
accept A Blade is a Blade##30954 |goto Townlong Steppes 39.34,62.21 |or
step
talk Yak-Keeper Kyana##61585
accept Fallen Sentinels##30953 |goto Townlong Steppes 39.15,62.07
If this quest is unavailable today, click here |confirm
step
talk Sentinel Commander Qipan##61584
accept The Overwhelming Swarm##30957 |goto Townlong Steppes 39.41,61.96
If this quest is unavailable today, click here |confirm
step
talk High Adept Paosha##61583
accept In Battle's Shadow##30958 |goto Townlong Steppes 38.95,62.44 |or
accept Paying Tribute##30955 |goto Townlong Steppes 38.95,62.44 |or
step
Use your Pot of Fire on Sra'thik War Wagons |use Pot of Fire##82346 |only if haveq(30959)
Cause #3# Sri'thik War Wagons to explode |q 30959/1 |goto Townlong Steppes 40.99,60.35 |only if haveq(30959)
kill Sra'thik Swiftclaw##61508+, Sra'thik Warcaller##61502+, Sra'thik Fleshrender##61514+ |only if haveq(30956)
Kill #25# Sri'thik attackers |q 30956/1 |goto Townlong Steppes 40.99,60.35 |only if haveq(30956)
kill Sra'thik Kunchong##61509+
Kill #4# Kuchong |q 30957/1 |goto Townlong Steppes 40.99,60.35 |only if haveq(30957)
click Loose Brick##211752 |only if haveq(30958)
Throw #10# Loose Stones up to Niuzao Stonemasons |q 30958/1 |goto Townlong Steppes 40.99,60.35 |only if haveq(30958)
clicknpc Wounded Niuzao Sentinel##61570 |only if haveq(30953)
Use your Yak's Milk Flask on Wounded Niuzao Sentinels |use Yak's Milk Flask##82381 |only if haveq(30953)
|tip Normal healing spells will also heal the Sentinels if you have them. |only if haveq(30953)
Heal #8# Niuzao Sentinels |q 30953/1 |goto Townlong Steppes 40.99,60.35 |only if haveq(30953)
click Niuzao Food Supply##212133 |only if haveq(30955)
Gather #6# Food for Niuzao |q 30955/1 |goto Townlong Steppes 40.99,60.35 |only if haveq(30955)
kill Sra'thik Warcaller##61502+, Sra'thik Swiftclaw##61508+ |only if haveq(30952)
Kill #12# Sra'thik attackers |q 30952/1 |goto Townlong Steppes 40.99,60.35 |only if haveq(30952)
click Sra'thik Weapon##211766 |only if haveq(30954)
|tip After you kill a Sra'thik, a weapon may drop. |only if haveq(30954)
collect 10 Sra'thik Weapon##82353 |q 30954/1 |goto Townlong Steppes 40.99,60.35 |only if haveq(30954)
step
talk Ogo the Elder##61580
turnin The Siege Swells##30956 |goto Townlong Steppes 39.35,62.30 |only if haveq(30956)
turnin The Unending Siege##30952 |goto Townlong Steppes 39.35,62.30 |only if haveq(30952)
step
talk Ogo the Younger##61581
turnin The Big Guns##30959 |goto Townlong Steppes 39.34,62.21 |only if haveq(30959)
turnin A Blade is a Blade##30954 |goto Townlong Steppes 39.34,62.21 |only if haveq(30954)
step
talk Yak-Keeper Kyana##61585
turnin Fallen Sentinels##30953 |goto Townlong Steppes 39.15,62.07 |only if haveq(30953)
turnin In Battle's Shadow##30958 |goto Townlong Steppes 39.15,62.07 |only if haveq(30958)
step
talk Sentinel Commander Qipan##61584
turnin The Overwhelming Swarm##30957 |goto Townlong Steppes 39.41,61.96
|only if haveq(30957)
step
talk High Adept Paosha##61583
turnin Paying Tribute##30955 |goto Townlong Steppes 38.95,62.44
|only if haveq(30955)
step
label "end"
talk Sage Whiteheart##64032
buy 1 Grand Commendation of the August Celestials##93224 |n
Use the Commendation of the August Celestials you just purchased |complete QC:GetReputation("August Celestials").hasBonus |goto Vale of Eternal Blossoms 84.60,63.70 |use Grand Commendation of the August Celestials##93224
|only if rep("August Celestials")>=Revered
step
You have reached the end of this daily guide
Click here to return to the start of the dailies |next "startaug" |confirm
step
label "end"
This is the end of the current guide. Click here to go back to the beginning. |confirm |next "startaug"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Emperor Shaohao",{
description="This guide will walk you through becoming exalted with the Emperor Shaohao faction.",
achieveid={8715},
patch='50400',
},[[
step
Click the _Quest Accept_ Box:
accept A Flash of Bronze...##33229 |goto Vale of Eternal Blossoms 84.50,59.20
|tip If you have already been to Timeless Isle, this quest will not be available.
Click here if this quest is unavailable |confirm
step
talk Chromie##73691
turnin A Flash of Bronze...##33229 |goto Vale of Eternal Blossoms 80.65,33.17 |only if haveq(33229)
accept Journey to the Timeless Isle##33231 |goto Vale of Eternal Blossoms 80.65,33.17
step
use Curious Bronze Timepiece##104113
You will be teleported to the Timeless Isle |goto Timeless Isle/0 23.30,70.80 |noway |c
step
talk Michi Windblossom##71940
fpath Tushui Landing |goto Timeless Isle/0 23.10,70.90
step
talk Watcher Lara##73348
turnin Journey to the Timeless Isle##33231 |goto Timeless Isle/0 23.10,71.50
accept Time Keeper Kairoz##33160 |goto Timeless Isle/0 23.10,71.50
step
talk Kairoz##72870
turnin Time Keeper Kairoz##33160 |goto Timeless Isle/0 34.50,53.80
accept A Timeless Tour##33161 |goto Timeless Isle/0 34.50,53.80
accept Time In Your Hands##33228 |goto Timeless Isle/0 34.50,53.80
step
Explore The Misty Strand |q 33161/4 |goto Timeless Isle/0 24.60,31.80
step
Explore Cavern of Lost Spirits |q 33161/1 |goto Timeless Isle/0 42.90,41.90
step
Explore Red Stone Run |q 33161/6 |goto Timeless Isle/0 50.90,46.60
step
Explore Firewalkers' Path |q 33161/3 |goto Timeless Isle/0 50.40,78.50
step
Explore Old Pi'jiu |q 33161/5 |goto Timeless Isle/0 37.50,75.50
step
Explore Croaking Hollow |q 33161/2 |goto Timeless Isle/0 60.50,72.60
step
talk Kairoz##72870
turnin A Timeless Tour##33161 |goto Timeless Isle/0 34.50,53.80
accept The Essence of Time##33336 |goto Timeless Isle/0 34.50,53.80
step
kill Brilliant Windfeather##72762+, Windfeather Chick##71143+
collect Epoch Stone##105715 |q 33336/1 |goto Timeless Isle/0 32.20,51.90
step
talk Kairoz##72870
turnin The Essence of Time##33336 |goto Timeless Isle/0 34.50,53.50
step
talk Mistweaver Ai##73305
Meet Mistweaver Ai |q 33228/2 |goto Timeless Isle/0 42.80,55.70
step
talk Mistweaver Ku##73306
Meet Mistweaver Ku |q 33228/3 |goto Timeless Isle/0 42.80,54.70
step
kill Ironfur Herdling##72842+, Ironfur Grazer##72843+, Ironfur Great Bull##72844+
kill Windfeather Chick##71143+, Windfeather Nestkeeper##72761+, Brilliant Windfeather##72762+
earn 1000 Timeless Coin##777 |q 33228/1 |goto Timeless Isle/0 43.90,55.40
step
talk Kairoz##72870
turnin Time In Your Hands##33228 |goto Timeless Isle/0 34.60,53.70
accept Hints From The Past##33332 |goto Timeless Isle/0 34.60,53.70
accept The Last Emperor##33335 |goto Timeless Isle/0 34.60,53.70
step
talk Mistweaver Ai##73305
buy Time-Worn Journal##103977 |goto Timeless Isle/0 42.80,55.60
step
talk Emperor Shaohao##73303
Speak with Emperor Shaohao |q 33335/1 |goto Timeless Isle/0 42.90,55.20
step
talk Emperor Shaohao##73303
turnin The Last Emperor##33335 |goto Timeless Isle/0 42.90,55.20
accept Timeless Nutriment##33340 |goto Timeless Isle/0 42.90,55.20
step
click Ripe Crispfruit##221689
Consume a Timeless Nutriment |q 33340/1 |goto Timeless Isle/0 42.80,53.30
step
talk Emperor Shaohao##73303
turnin Timeless Nutriment##33340 |goto Timeless Isle/0 42.90,55.20
accept Wayshrines Of The Celestials##33341 |goto Timeless Isle/0 42.90,55.20
step
map Timeless Isle
path follow loose;loop on;dist 15
path	30.10,45.70	26.80,52.20	30.50,62.60
path	27.90,72.00	37.40,74.40	49.70,70.40
path	66.10,72.30	63.90,50.70	35.00,29.60
Follow the path to activate one of the Shrines
click Celestial Shrine
|tip They are on a 10-15 minute cooldown, so just keep running around until you find an active one.
Receive a Blessing of the Celestials |q 33341/1
step
talk Emperor Shaohao##73303
turnin Wayshrines Of The Celestials##33341 |goto Timeless Isle 42.90,55.20
step
talk Kairoz##72870
turnin Hints From The Past##33332 |goto Timeless Isle 34.50,53.80
accept Timeless Treasures##33333 |goto Timeless Isle 34.50,53.80
step
click Moss-Covered Chest##223089
Hidden Treasure Found |q 33333/1 |goto Timeless Isle 46.80,46.80
step
talk Kairoz##72870
turnin Timeless Treasures##33333 |goto Timeless Isle 34.60,53.80
step
From this point, you have to grind mobs to earn the remaining reputation with _Emperor Shaohao_
|confirm
step
kill Ordon Fire-Watcher##72894+, Ordon Candlekeeper##72875+, Ordon Oathguard##72892+ |goto Timeless Isle 52.60,76.90
|complete rep('Emperor Shaohao')==Exalted
step
Congratulations, you are now _Exalted_ with _Emperor Shaohao_!
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\The Golden Lotus",{
description="This guide will walk you through becoming exalted with The Golden Lotus faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Golden Lotus') < Exalted end,
achieveid={7315, 6546},
patch='50004',
},[[
step
Routing to proper section |next "prequests" |only if not completedq(31511) and not completedq(31512)
Routing to proper section |next "dailies" |only if completedq(31511) or completedq(31512)
step
label "prequests"
talk Wanderer Chu##64521
accept Temple of the White Tiger##31392 |goto Kun-Lai Summit 72,94.20
|only if not completedq(31394)
step
talk Anduin Wrynn##64540
turnin Temple of the White Tiger##31392 |only if not completedq(31394) |goto Kun-Lai Summit 68.80,43.10
accept A Celestial Experience##31394 |goto Kun-Lai Summit 68.80,43.10
step
Talk to Xuen |q 31394/1 |goto Kun-Lai Summit 68.90,42.80
kill Spirit of Violence##64656
Pass the First Test |q 31394/2 |goto Kun-Lai Summit 68.90,42.80
kill Spirit of Anger##64684
Pass the Second Test |q 31394/3 |goto Kun-Lai Summit 68.90,42.80
kill Spirit of Hatred##64744
Pass the Third Test |q 31394/4 |goto Kun-Lai Summit 68.90,42.80
step
talk Anduin Wrynn##64540
turnin A Celestial Experience##31394 |goto Kun-Lai Summit 68.80,43.10
accept A Witness to History##31512 |or |goto Kun-Lai Summit 68.80,43.10
accept A Witness to History##31511 |or |goto Kun-Lai Summit 68.80,43.10
step
talk Anduin Wrynn##64848
Tell him "Let's find out!" |q 31512/1 |only if haveq(31512) |goto Kun-Lai Summit 55.50,91.30
Tell him "Let's find out!" |q 31511/1 |only if haveq(31511) |goto Kun-Lai Summit 55.50,91.30
step
talk Matron Vi Vinh##64149
turnin A Witness to History##31511 |goto Shrine of Seven Stars/1 35.40,65.90
or
turnin A Witness to History##31512 |goto Shrine of Seven Stars/1 35.40,65.90
step
label "dailies"
talk Kun Autumnlight##58920
accept Mantid Under Fire##30243 |goto Vale of Eternal Blossoms/0 21.40,71.60
accept Bloodied Skies##30266 |goto Vale of Eternal Blossoms/0 21.40,71.60
noquest
step
talk Anji Autumnlight##58919
accept The Thunder Below##30280 |goto Vale of Eternal Blossoms/0 21.40,71.60
accept The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.40,71.60
noquest
step
talk Hai-Me Heavyhands##58962
|tip He walks around the Trainees in this area.
accept The Battle Ring##30306 |goto Vale of Eternal Blossoms/0 20.10,75.60
step
talk Yumi Goldenpaw##58743
accept Survival Ring: Blades##30242 |goto Vale of Eternal Blossoms/0 18.50,71.60
accept Survival Ring: Flame##30240 |goto Vale of Eternal Blossoms/0 18.50,71.60
noquest
step
talk Kelari Featherfoot##58704
accept Roll Club: Serpent's Spine##30261 |goto Vale of Eternal Blossoms/0 18.10,63.50
step
talk Kelari Featherfoot##58704
Tell him: _"Let's roll."_ |q 30261/1 |goto Vale of Eternal Blossoms/0 18.10,63.50
|only if haveq(30261)
step
Hold down your right mouse button to help you maneuver through the course.
|tip Grab as many speed boosts as you can to make it go quicker.
Complete the Serpent's Spine Roll Course. |q 30261/2
|only if haveq(30261)
step
talk Kelari Featherfoot##58704
turnin Roll Club: Serpent's Spine##30261 |goto Vale of Eternal Blossoms/0 18.10,63.50
|only if haveq(30261)
step
kill Shado-Pan Trainee##58992+
Defeat 20 Shado-Pan Trainees. |q 30306/1 |goto Vale of Eternal Blossoms 19.70,74.20
|only if haveq(30306)
step
Stay within the circle and avoid the posts with blades surrounding them and the running pandas.
Live through the Survival Ring for 90 seconds |q 30242/1 |goto Vale of Eternal Blossoms 19.20,67.50
|only if haveq(30242)
step
Stay within the circle and avoid getting hit by the fireworks.
Live through the Survival Ring for 90 seconds |q 30240/1 |goto Vale of Eternal Blossoms 19.20,67.50
|only if haveq(30240)
step
clicknpc Setting Sun Turret##64336 |goto Vale of Eternal Blossoms 5.40,72.30
Mount a turret |invehicle |c
|tip It's on the upper level of the tower here.
|only if haveq(30266)
step
kill 30 Krik'thik Swarmer##63973+ |q 30266/1
|only if haveq(30266)
step
Click the Leave Vehicle button |outvehicle
|only if haveq(30266)
step
clicknpc Hot Oil Cauldron##64369
Use the abilities on your hotbar to kill 80 Krik'thik Hivelings |q 30243/1 |goto Vale of Eternal Blossoms 3.90,51.70
|tip Use the Ignitable Oil Bucket first, followed by the Shado-Pan Torch.
step
Traverse the following rooms by only stepping on the _green_ or _red_ tiles, other tiles will harm you. The safe tile changes every day but will be one of the two. |goto Vale of Eternal Blossoms 22.40,26.90
confirm
|only if haveq(30280) or haveq(30277)
step
kill Milau##64965 |q 30280/1 |goto Vale of Eternal Blossoms/1 53.90,68.30
|tip Milau has several deadly abilities. He will cast a Lightning Breath in any direction, do not be in front of him when he does this. He also starts casting Lightning Pools, constantly move until he is done. Periodically he will pull you to the middle of the room and cast Lightning Sweep. While he is casting get as much distance on him as you can.
|only if haveq(30280)
step
click Deactivate Final Spirit Wall##214477
Deactivate the Final Spirit Wall |q 30277/1 |goto Vale of Eternal Blossoms/1 42.10,27.20
|only if haveq(30277)
step
click Ancient Guo-Lai Artifact##214394
collect Ancient Guo-Lai Artifact##87790 |q 30277/2 |goto Vale of Eternal Blossoms/1 49.40,30.60
|only if haveq(30277)
step
talk Yumi Goldenpaw##58743
turnin Survival Ring: Blades##30242 |goto Vale of Eternal Blossoms/0 18.50,71.50
turnin Survival Ring: Flame##30240 |goto Vale of Eternal Blossoms/0 18.50,71.50
step
talk Hai-Me Heavyhands##58962
|tip He walks around the Trainees in this area.
turnin The Battle Ring##30306 |goto Vale of Eternal Blossoms/0 20.10,75.60
step
talk Anji Autumnlight##58919
turnin The Thunder Below##30280 |goto Vale of Eternal Blossoms/0 21.40,71.60
turnin The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.40,71.60
step
talk Kun Autumnlight##58920
turnin Mantid Under Fire##30243 |goto Vale of Eternal Blossoms/0 21.40,71.60
turnin Bloodied Skies##30266 |goto Vale of Eternal Blossoms/0 21.40,71.60
step
label "end"
You have reached the end of the guide for today
Click here to go back to the beginning of the dailies |confirm |next "dailies"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Kirin Tor Offensive",{
description="This guide will walk you through becoming exalted with the Kirin Tor Offensive faction.",
achieveid={8208},
patch='50200',
},[[
step
label "start"
Moving to the Kirin Tor Offensive Dailies |next "dailies" |only if default
Moving to the Kirin Tor Offensive prequests. |next "prequests" |only if not completedq(32681)
Moving to the First Scenario |next "scenario1" |only if not completedq(32644)
Moving to the Second Scenario |next "scenario2" |only if completedq(32644) and not completedq(32654)
Moving to the Third Scenario |next "scenario3" |only if completedq(32654) and not completedq(32652)
Moving to the Fourth Scenario |next "scenario4" |only if completedq(32652) and not completedq(32655)
Moving to the Fifth Scenario |next "post5" |only if completedq(32655) and not completedq(32656)
step
label "prequests"
talk Lyalia##64610
accept Thunder Calls##32679 |goto Vale of Eternal Blossoms 83.90,58.60
step
talk Vereesa Windrunner##70360
turnin Thunder Calls##32679 |goto Townlong Steppes 49.90,69.00
accept The Storm Gathers##32681 |goto Townlong Steppes 49.90,69.00
step
talk Vereesa Windrunner##70360
Tell her that you are ready to go.
Speak with Vereesa |q 32681/1|goto Townlong Steppes 49.90,69.00
Isle of Thunder discovered |q 32681/2 |goto Townlong Steppes 49.90,69.00
step
talk Lady Jaina Proudmoore##67992
turnin The Storm Gathers##32681 |goto Isle of Thunder 34.60,89.50
|next "start"
step
label "scenario1"
talk Lady Jaina Proudmoore##67992
accept The Assault on Shaol'mara##32644 |goto Isle of Thunder/0 34.60,89.40
step
talk Lady Jaina Proudmoore##67992
Tell her you are ready! |q 32644/1 |goto Isle of Thunder/0 34.60,89.40
Enter the _The Assault on Shaol'mara_ Scenario |goto Isle of Thunder Scenario |noway |c
step
Enter the Assault on Shaol'mara Scenario |goto Isle of Thunder Scenario |noway |c
step
clicknpc Silver Covenant Hippogryph##70234 |goto Isle of Thunder Scenario 35.00,89.80
scenariogoal 22869
step
scenariogoal 22654
step
scenariostage 1
step
kill Shaol'mara Beastcaller##70286+, Shaol'mara Raptor##70288+
scenariogoal 22655 |goto Isle of Thunder Scenario 52.40,59.30
step
scenariostage 2
step
kill Zandalari Barricade##69515+, Zeb'tula Spearanger##69518+, Shaol'mara Stoneshield##70291+
scenariogoal 22656 |goto Isle of Thunder Scenario 58.00,65.90
step
scenariostage 3
step
kill Anki##69531, Beastcaller Pakutesh##69532
|tip Pakutesh will jump off of Anki once he is defeated.
scenariogoal 22870 |goto Isle of Thunder Scenario 59.60,68.30
scenariogoal 22871 |goto Isle of Thunder Scenario 59.60,68.30
step
scenariostage 4
step
kill Arcanital Mara'kah##69538
While fighting Arcanital Mara'kah, the mask puts down yellow protection fields
Position yourself so that you are IN the yellow field, while Mara'kah is OUT of the field
scenariogoal 22872 |goto Isle of Thunder Scenario 64.30,73.00
step
scenariostage 5
step
talk Lady Jaina Proudmoore##67992
turnin The Assault on Shaol'mara##32644 |goto Isle of Thunder/0 63.20,72.20
|next "start"
step
label "scenario2"
talk Lady Jaina Proudmoore##67992
accept Tear Down This Wall!##32654 |goto Isle of Thunder/0 63.20,72.20
step
talk Lady Jaina Proudmoore##67992
Tell her you're ready to tear down the wall! |q 32654/1 |goto Isle of Thunder/0 63.20,72.20
Enter the _Tear Down This Wall!_ Scenario |goto Isle of Thunder Scenario |noway |c
step
Click the _Heavy Explosive_
Acquire the Heavy Explosives |scenariogoal 1/22696 |goto Isle of Thunder Scenario 48.40,50.90
step
talk Vereesa Windrunner##69949
Deliver the explosive to Vereesa |scenariogoal 2/22700 |goto Isle of Thunder Scenario 55.80,57.70
step
Click the Heavy Explosives to detonate them
Detonate the Explosives |scenariogoal 3/22702 |goto Isle of Thunder Scenario 56.30,56.10
step
Follow Vereesa Windrunner along the path
kill War-God Al'chukla##69755+
Secure the lower city |q 32654/2 |goto Isle of Thunder Scenario 54.70,45.80
step
scenariostage 4
step
Click the Portal to the Isle of Thunder |goto Isle of Thunder Scenario/0 54.09,46.25 < 5 |walk
Return to the Isle of Thunder |goto Isle of Thunder/0 < 1000 |c |noway |q 32654
step
talk Lady Jaina Proudmoore##67992
turnin Tear Down This Wall!##32654 |goto Isle of Thunder/0 63.20,72.20
|next "start"
step
label "scenario3"
talk Lady Jaina Proudmoore##67992
accept To the Skies!##32652 |goto Isle of Thunder/0 63.20,72.20
step
talk Lady Jaina Proudmoore##67992
Tell her you're ready! |q 32652/1 |goto Isle of Thunder/0 63.20,72.20
Enter the _To the Skies!_ Scenario |goto Isle of Thunder Scenario |noway |c
step
clicknpc Thunderwing##70208
Mount the Thunderwing
scenariogoal 1/22666 |goto Isle of Thunder Scenario 63.30,74.30
step
Approach the Mine Entrace
scenariogoal 1/22701
step
kill Zandalari Beastcaller##69521+
You will be attacked by _Zandalari Beastcallers_
Use the icon that appears at the bottom of your screen to jump to the enemy Thunderwing and kill them
scenariogoal 2/22668
step
kill Beastmaster Horaki##69559+
scenariogoal 3/22669 |goto Isle of Thunder Scenario 48.20,25.30
step
talk Taoshi##69810
Tell her lets go
scenariogoal 4/22738 |goto Isle of Thunder Scenario 49.30,26.00
step
Watch _Taoshi_ get rid of the Cave-in
scenariogoal 5/22740
step
Make your way to the Mine Entrance
scenariogoal 5/22741 |goto Isle of Thunder Scenario/1 34.80,55.10
step
kill Slavemaster Shiaxu##69923
scenariogoal 6/22672
Unlock the Mine door
scenariogoal 6/22739
Assault the Lightning Vein Mines |q 32652/2 |goto Isle of Thunder Scenario/1 28.70,68.80
step
Click the _Portal to the Isle of Thunder_ |goto Isle of Thunder Scenario/1 64.10,72.50 < 10 |walk
Return to the Isle of Thunder |goto Isle of Thunder/0 < 1000 |c |noway |q 32652
step
talk Lady Jaina Proudmoore##67992
turnin To the Skies!##32652 |goto Isle of Thunder 63.20,72.20
Depending on your current phase, she can also be found here [63.20,74.00]
|next "start"
step
label "scenario4"
talk Taoshi##70297
accept A Bold Idea##32655 |goto Isle of Thunder/0 63.20,73.90
step
talk Taoshi##70297 |goto Isle of Thunder/0 63.20,73.90
Tell her let's break into the shipyard |scenariostart |q 32655
step
clicknpc Thunderwing##69458
Intercept the Zandalari Patrol
scenariogoal 1/22661 |goto Isle of Thunder Scenario 63.30,54.40
step
While on the _Thunderwing_ use your ability on the toolbar to disable Sentry Totems
scenariogoal 2/23007
step
Follow _Taoshi_ around the ship and sneak up behind the _Veteran Wingriders_ she marks for you
When the enemies are inside your red circle, use the _Knock Out_ ability that pops up on your screen
scenariogoal 3/23003
scenariogoal 3/22663
step
kill Captain Halu'kal##69482+
scenariogoal 4/22664 |goto Isle of Thunder Scenario 67.20,47.30
step
Make your way up the pathway here, avoiding patrols and sentry towers
There will be big blue circles on the ground representing what they can see
scenariogoal 5/22665 |goto Isle of Thunder Scenario 59.20,43.90
step
kill Hu'seng the Gatekeeper##69483
scenariogoal 6/22667 |goto Isle of Thunder Scenario 59.20,43.80
scenariogoal 6/22810 |goto Isle of Thunder Scenario 59.20,43.80
step
Click Deactivated Access Generator
scenariogoal 7/22809 |goto Isle of Thunder Scenario 58.40,42.80
step
Click the portal to the Violet Rise |goto Isle of Thunder Scenario 57.80,41.90 < 10 |walk
Return to the Isle of Thunder |goto Isle of Thunder/0 < 1000 |c |noway |q 32655
step
talk Lady Jaina Proudmoore##67992
turnin A Bold Idea##32655 |goto Isle of Thunder/0 63.20,72.20
|next "start"
step
label "post5"
talk Lady Jaina Proudmoore##67992
accept The Fall of Shan Bu##32656 |goto Isle of Thunder/0 63.20,72.20
Talk to her to queue up for the solo scenario
Enter The Fall of Shan Bu Scenario |goto Isle of Thunder Scenario |noway |c
step
talk Vereesa Windrunner##69615
Tell her that you're ready |scenariogoal 22742 |goto Isle of Thunder Scenario 59.00,43.80
step
scenariogoal 1/22799 |goto Isle of Thunder Scenario 58.10,41.30 |or
step
kill 14 Zandalari Stoneshield##69527+ |scenariogoal 1/22675 |or |goto Isle of Thunder Scenario 58.10,41.30
step
kill 2 Palace Gatekeeper##69510+ |scenariogoal 2/22685 |or |goto Isle of Thunder Scenario 57.90,41.00
step
scenariogoal 3/22807 |goto Isle of Thunder Scenario 59.30,38.90
step
kill Quilen Guardian##69506+, Zandalari Stoneshield##69865+, Shan'ze Electrocutioner##69525+ |scenariogoal 3/22734 |or |goto Isle of Thunder Scenario 59.90,38.20
step
kill Shan Bu##69534+, Onyx Stormclaw##69580+ |scenariogoal 4/22683 |or |goto Isle of Thunder Scenario 60.00,37.80
step
Click the Portal to the Isle of Thunder |goto Isle of Thunder Scenario/0 58.24,42.56 < 5 |walk
Return to the Isle of Thunder |goto Isle of Thunder/0 < 1000 |c |noway |q 32656
step
talk Lady Jaina Proudmoore##67992
turnin The Fall of Shan Bu##32656 |goto Isle of Thunder/0 63.20,72.20
|next "start"
step
label "dailies"
clicknpc Assignment Map##70567 |goto Isle of Thunder/0 63.20,72.20
Click PvE at the assignment screen |q 32260 |future
|only if completedq(32644)
step
talk Lady Jaina Proudmoore##67992
accept Za'Tual##32733 |goto Isle of Thunder/0 63.20,72.20
Click here when no more quests are available |confirm
|only if completedq(32644)
step
talk Vereesa Windrunner##67993
accept The Court of Bones##32731 |or 2 |goto Isle of Thunder/0 63.20,72.10
accept The Shuddering Moor##32574 |or 2 |goto Isle of Thunder/0 63.20,72.10
accept The Zandalari Colossus##32575 |or 2 |goto Isle of Thunder/0 63.20,72.10
Click here when no more quests are available |confirm
|only if completedq(32644)
step
talk Warmage Yurias##67994
accept A Wing to Fly On##32571 |goto Isle of Thunder/0 63.50,73.60
Click here when no more quests are available |confirm
|only if completedq(32644)
step
talk Captain Elleane Wavecrest##67995
accept Ihgaluk Crag##32732 |or 2 |goto Isle of Thunder/0 62.70,73.60
accept The Sleepless Legion##32572 |or 2 |goto Isle of Thunder/0 62.70,73.60
accept Enemies Beneath the Tower##32573 |or 2 |goto Isle of Thunder/0 62.70,73.60
Click here when no more quests are available |confirm
|only if completedq(32644)
step
talk Archmage Modera##67996
turnin Ihgaluk Crag##32732 |goto Isle of Thunder 55.70,74.40
accept Subtle Encouragement##32606 |goto Isle of Thunder 55.70,74.40
accept De-Constructed##32537 |goto Isle of Thunder 55.70,74.40
accept Manipulating the Saurok##32536 |goto Isle of Thunder 55.70,74.40
accept The Skumblade Threat##32535 |goto Isle of Thunder 55.70,74.40
Click here when no more quests are available |confirm
|only if completedq(32644) and (haveq(32732) or completedq(32732))
step
talk Lyalia##69675
accept The Residents of Ihgaluk##32545 |goto Isle of Thunder 55.90,74.40
Click here when no more quests are available |confirm
|only if completedq(32732)
step
talk Sanitation Sorcerer Stephen Litmatch##69677
accept The Creeping Carpet of Ihgaluk##32547 |goto Isle of Thunder 55.50,74.50
accept Just Some Light Clean-Up Work##32546 |goto Isle of Thunder 55.50,74.50
accept Left To Rot##32548 |goto Isle of Thunder 55.50,74.50
Click here when no more quests are available |confirm
|only if completedq(32732) and completedq(32644)
step
talk Image of Archmage Vargoth##69678
accept Skin of the Saurok##32549 |goto Isle of Thunder 55.60,74.40
|tip NOTE: This quest will give you the ability to disguise yourself as a saurok. This spell will happen automatically whenever you are outside of combat and inside Ihgaluk Crag. If you try to attack another saurok, the disguise will vanish and all saurok will be hostile to you until you are out of combat again.
|only if not completedq(32549)
step
kill Skumblade Filthmonger##69228+, Skumblade Brute##69338+, Skumblade Scavenger##69227+ |q 32549/1 |goto Isle of Thunder 47.20,79.60
|only if haveq(32549)
step
Click the _Quest Complete_ Box:
turnin Skin of the Saurok##32549
|only if haveq(32549)
stickystart "moguweapons"
stickystart "crushroach"
stickystart "fetidmeat"
step
kill Quivering Filth##69251+
Disperse 75 Filth |q 32546/1 |goto Isle of Thunder 52.70,80.20
|only if haveq(32546)
step
talk Magister Lyanis##69684
|tip He's in a magic bubble inside the cave here, you will need to approach him in order to see him.
Speak with Magister Lyanis |q 32536/2 |goto Isle of Thunder 51.60,84.40
|only if haveq(32536)
step
kill 1 Skumblade Brute##69338+ |q 32545/1 |goto Isle of Thunder 51.30,78.80
|only if haveq(32545)
step
talk Magistrix Sanal##69686
|tip She's in a magic bubble, you will need to approach her in order to see her. If you have trouble finding her, look for the moving streaks of light.
Speak with Magistrix Sanal |q 32536/3 |goto Isle of Thunder 50.80,73.40
|only if haveq(32536)
step
map Isle of Thunder
path follow loose;loop;ants straight
path 51.80,74.40	53.30,77.00	54.30,79.30
path 55.10,82.20	55.10,82.20	55.30,84.20
path 54.90,86.70	53.90,88.30	52.40,90.40
path 50.80,90.50	49.20,89.50	49.40,85.80
path 49.80,84.00	49.40,82.00	49.20,79.80
path 50.10,78.40	50.40,77.10	50.60,75.80
clicknpc Distressed Sunreaver Construct##69290
|tip It runs around in a large area, follow the path if you have trouble finding it.
Recover Distressed Construct |q 32537/3
|only if haveq(32537)
step
kill 1 Skumblade Saur-Priest##69229+ |q 32545/2 |goto Isle of Thunder 49.80,76.20
|tip He's on top of the mountain on a cliffside.
|only if haveq(32545)
step
kill 1 Skumblade Seadragon##69226+ |q 32545/3 |goto Isle of Thunder 48.00,88.70
|only if haveq(32545)
step
clicknpc Buried Sunreaver Construct##69288
Recover Buried Construct |q 32537/2 |goto Isle of Thunder/0 53.60,91.20
|only if haveq(32537)
step
clicknpc Malfunctioning Sunreaver##69289
Recover Malfunctioning Construct |q 32537/4 |goto Isle of Thunder/0 46.60,71.90
|only if haveq(32537)
step
clicknpc Disabled Sunreaver Construct##69439
Recover Disabled Construct |q 32537/1 |goto Isle of Thunder/0 44.20,81.80
|only if haveq(32537)
step
talk Magister Yalis##69682
|tip He's in a magic bubble, you will need to approach him in order to see him. If you have trouble finding him, look for the moving streaks of light.
Speak with Magister Yalis |q 32536/1 |goto Isle of Thunder/0 45.10,84.00
|only if haveq(32536)
step
kill Skumblade Seadragon##69226 |q 32545/3 |goto Isle of Thunder 53.20,90.00
|only if haveq(32545)
step
talk Buried Silver Covenant Construct##69688
Recover Buried Construct |q 32537/2 |goto Isle of Thunder/0 53.60,91.20
|only if haveq(32537)
step
label "crushroach"
Ride around the area, stepping on top of roaches |only if haveq(32547)
75 Ihgaluk Roaches crushed |q 32547/1 |goto Isle of Thunder/0 45.60,76.50
You can find additional roaches around [49.10,79.40].
|only if haveq(32547)
step
label "fetidmeat"
kill 3 Fetid Meat Pile##69247 |q 32548/1 |only if haveq(32548) |goto Isle of Thunder 50.10,78.00
|only if haveq(32548)
step
label "moguweapons"
kill Skumblade Fleshripper##69210+, Skumblade Scavenger##69227+, Skumblade Filthmonger##69228+
kill 10 Skumblade Saurok |q 32535/1 |only if haveq(32535) |goto Isle of Thunder 52.30,82.60
Click the _Plant Mogu Weapon_ icon that appears at the center of your screen |only if haveq(32606)
Plant 9 Mogu Weapons on Skumblade corpses |q 32606/1 |only if haveq(32606) |goto Isle of Thunder 52.30,82.60
|only if haveq(32606) or haveq(32535) or haveq(32548)
step
Follow the Coordinates on the Map here.
|tip The Pterrorwing will be flying and landing around these 6 different locations.
clicknpc Wild Pterrorwing Hatchling##69428
Recover a Wild Thunder Ptrerrorwing Hatchling |q 32571/1 |goto Isle of Thunder/0 54.60,57.40
goto Isle of Thunder/0 53.80,65.10
goto Isle of Thunder/0 49.80,64.90
goto Isle of Thunder/0 52.70,60.30
goto Isle of Thunder/0 51.10,54.90
goto Isle of Thunder/0 53.40,52.20
goto Isle of Thunder/0 54.60,57.40
|only if haveq(32571)
step
kill Shan'ze Animator##70069+, Shan'ze Animator##70069+, Shan'ze Bloodseeker##69431+ |only if haveq(32573)
kill 7 Diremoor Shan'ze mogu |q 32573/1 |only if haveq(32573) |goto Isle of Thunder 49.50,65.40
kill 6 Animated Warrior##67473+ |q 32572/1 |only if haveq(32572) |goto Isle of Thunder 49.50,65.40
|tip If you lure the enemies into the squad of soldiers here, they will do the killing for you.
|only if haveq(32572) or haveq(32573)
step
kill Zandalari Colossus##69405 |q 32575/1 |goto Isle of Thunder/0 42.30,64.00
|tip It patrols around this half of the Diremoor path. Some searching may be necessary.
|only if haveq(32575)
step
kill 1 Mighty Devilsaur##69406 |q 32574/1 |goto Isle of Thunder/0 50.50,51.40
|tip It patrols around this half of the Diremoor path. Some searching may be necessary.
|only if haveq(32574)
step
talk Archmage Lan'dalock##70517
turnin Za'Tual##32733 |goto Isle of Thunder/0 42.20,66.30
accept Harbingers of the Loa##32540 |goto Isle of Thunder/0 42.20,66.30
accept Dangers of Za'Tual##32543 |goto Isle of Thunder/0 42.20,66.30
accept Surgical Strike##32542 |goto Isle of Thunder/0 42.20,66.30
Click here when no more quests are available |confirm
|only if completedq(32644) and (haveq(32733) or completedq(32733))
step
talk Dalvin Jaacor##69674
accept Dark Offerings##32539 |goto Isle of Thunder/0 42.30,66.30
accept Heinous Sacrifice##32538 |goto Isle of Thunder/0 42.30,66.30
Click here when no more quests are available |confirm
|only if completedq(32733)
step
talk Ako##69673
accept Pterrible Ptorment##32544 |goto Isle of Thunder/0 42.10,66.50
accept Preventing a Future Threat##32541 |goto Isle of Thunder/0 42.10,66.50
Click here when no more quests are available |confirm
|only if completedq(32733)
stickystart "zandaoffering"
stickystart "zandaspirit"
stickystart "zandamobs"
step
click Tec'uat's Sacrificial Altar##218425
Tec'uat's Altar destroyed |q 32538/2 |goto Isle of Thunder 39.80,65.30
|only if haveq(32538)
step
kill Zandalari Arcweaver##69224+
Tormented Skyscreamer freed |q 32544/1 |goto Isle of Thunder/0 41.10,69.40
|only if haveq(32544)
step
click Pa'chek's Sacrificial Altar##218426
Pa'chek's Altar destroyed |q 32538/3 |goto Isle of Thunder 38.70,78.60
|only if haveq(32538)
step
click Cha'lat's Sacrificial Altar##218424
Cha'lat's Altar destroyed |q 32538/1 |goto Isle of Thunder 33.90,76.00
|only if haveq(32538)
step
kill Zandalari Arcanital##69281, Zandalari Spiritweaver##69285
kill 2 Harbingers of the Loa |q 32540/1 |goto Isle of Thunder 36.50,70.00
You can wait for this one to respawn, or find another at [38.90,76.50]
|only if haveq(32540)
step
Run over _Hatchling Skyscreamers_ to frighten them.
Frighten #12# Hatchling Skyscreamers |q 32541/1 |goto Isle of Thunder 30.90,77.50
|only if haveq(32541)
step
label "zandaoffering"
click Zandalari Offering##216991
Destroy 6 Zandalari Offerings |q 32539/1 |goto Isle of Thunder/0 40.10,72.40
More offerings can be found around [40.60,74.10]
|only if haveq(32539)
step
label "zandaspirit"
kill 3 Zandalari Beastcaller##69065+ |q 32542/1 |goto Isle of Thunder 35.30,75.80
kill 3 Zandalari Jaguar Warrior##69171+ |q 32542/2 |goto Isle of Thunder 35.30,75.80
kill 3 Zandalari Spiritbinder##69225+ |q 32542/3 |goto Isle of Thunder 35.30,75.80
|only if haveq(32542)
step
label "zandamobs"
kill Zandalari Stoneshield##69223+, Zandalari Commoner##69170+, Zandalari Beastcaller##69065+, Zandalari Jaguar Warrior##69171+, Zandalari Spiritbinder##69225+
Kill #12# Trolls in Za'Tual |q 32543/1 |goto Isle of Thunder 40.70,74.20
|only if haveq(32543)
step
talk Narasi Snowdawn##67997
turnin The Court of Bones##32731 |goto Isle of Thunder/0 40.20,59.60
accept Soul Surrender##32526 |goto Isle of Thunder/0 40.20,59.60
accept Grave Circumstances##32527 |goto Isle of Thunder/0 40.20,59.60
Click here when no more quests are available |confirm
|only if haveq(32731) or completedq(32731)
step
talk Danara Silverglass##69668
accept Rise No More!##32532 |goto Isle of Thunder/0 40.10,59.30
accept Ashes of the Enemy##32525 |goto Isle of Thunder/0 40.10,59.30
accept Stone Cold##32533 |goto Isle of Thunder/0 40.10,59.30
accept Into the Crypts##32528 |goto Isle of Thunder/0 40.10,59.30
Click here when no more quests are available |confirm
|only if haveq(32731) or completedq(32731)
step
talk Vylene Amaranth##69670
accept The Call of Thunder##32529 |or |goto Isle of Thunder/0 40.10,59.10
accept The Bloodletter##32530 |or |goto Isle of Thunder/0 40.10,59.10
accept The Conquest of Stone##32531 |or |goto Isle of Thunder/0 40.10,59.10
Click here when no more quests are available |confirm
|only if haveq(32731) or completedq(32731)
stickystart "shanzegrave"
step
click Tormentor's Cage##217768
|tip They will be all over the Court of Bones, usually close to walls. |only if haveq(32526)
Rescue 6 Scouts  |q 32526/1 |goto Isle of Thunder/0 36.90,53.00
|only if haveq(32526)
step
kill Kaida the Bloodletter##69250 |q 32530/1 |goto Isle of Thunder/0 35.00,47.90
|only if haveq(32530)
step
kill Shan'ze Thundercaller##69264+
|tip You will need to just down in the water here.
Shan'ze Thundercallers' ritual stopped |q 32529/1 |goto Isle of Thunder/0 33.00,56.70
|only if haveq(32529)
step
kill Shan'ze Soulripper##69903+
Disrupt the Ancient Stone Conqueror Ritual |q 32531/1 |goto Isle of Thunder/0 35.10,63.80
|only if haveq(32531)
step
Use your Incantation of Gura here |use Incantation of Gura##93803
kill 1 Gura the Reclaimed##69241 |q 32528/1 |goto Isle of Thunder 36.80,56.50 |subzone Hall of the Exalted
|only if haveq(32528)
step
label "shanzegrave"
kill Shan'ze Gravekeeper##69235+, Shan'ze Thundercaller##69264+ |q 32527/1 |only if haveq(32527) |goto Isle of Thunder 35.50,52.30
|tip The Thundercallers will cast Chain Lightning which places a circular spell under your character that you will need to move out of to avoid heavy damage.
kill Risen Ancestor##69237+ |q 32532/1 |only if haveq(32532) |goto Isle of Thunder 35.50,52.30
kill Grave Guardian##69240+ |q 32533/1 |only if haveq(32533) |goto Isle of Thunder 35.50,52.30
|tip They sit as stone statues, you need to activate them first.
clicknpc Mummified Remains##69331+ |only if haveq(32525)
Use your _Blessed Torch_ on Mummified Remains |use Blessed Torch##93751 |only if haveq(32525)
Burn #8# Mummified Remains |q 32525/1 |only if haveq(32525) |goto Isle of Thunder 35.50,52.30
|only if haveq(32532) or haveq(32526) or haveq(32527) or haveq(32533)
step
talk Vylene Amaranth##69670
turnin The Call of Thunder##32529 |goto Isle of Thunder 40.10,59.10
turnin The Bloodletter##32530 |goto Isle of Thunder 40.10,59.10
turnin The Conquest of Stone##32531 |goto Isle of Thunder 40.10,59.10
step
talk Danara Silverglass##69668
turnin Rise No More!##32532 |goto Isle of Thunder 40.10,59.30
turnin Into the Crypts##32528 |goto Isle of Thunder 40.10,59.30
turnin Ashes of the Enemy##32525 |goto Isle of Thunder 40.10,59.30
turnin Stone Cold##32533 |goto Isle of Thunder 40.10,59.30
step
talk Narasi Snowdawn##67997
turnin Soul Surrender##32526 |goto Isle of Thunder/0 40.20,59.60
turnin Grave Circumstances##32527 |goto Isle of Thunder/0 40.20,59.60
step
talk Narasi Snowdawn##67997
accept The Beast Pens##32567 |goto Isle of Thunder/0 40.20,59.60
accept Imposing Threat##32581 |goto Isle of Thunder/0 40.20,59.60
Click here when no more quests are available |confirm
|next "beast_pens" |only if haveq(32567)
|only if completedq(32731)
step
talk Ako##69673
turnin Pterrible Ptorment##32544 |goto Isle of Thunder/0 42.10,66.50
turnin Preventing a Future Threat##32541 |goto Isle of Thunder/0 42.10,66.50
step
talk Dalvin Jaacor##69674
turnin Dark Offerings##32539 |goto Isle of Thunder/0 42.30,66.30
turnin Heinous Sacrifice##32538 |goto Isle of Thunder/0 42.30,66.30
step
talk Archmage Lan'dalock##70517
turnin Harbingers of the Loa##32540 |goto Isle of Thunder/0 42.20,66.30
turnin Dangers of Za'Tual##32543 |goto Isle of Thunder/0 42.20,66.30
turnin Surgical Strike##32542 |goto Isle of Thunder/0 42.20,66.30
accept Among the Bones##32578 |goto Isle of Thunder/0 42.20,66.30
accept No Time To Rest##32568 |goto Isle of Thunder/0 42.20,66.30
accept Encroaching Force##32580 |goto Isle of Thunder/0 42.20,66.30
accept The Beast Pens##32567 |goto Isle of Thunder/0 42.20,66.30
Click here when no more quests are available |confirm
|only if haveq(32733) or completedq(32733)
step
talk Sanitation Sorcerer Stephen Litmatch##69677
turnin The Creeping Carpet of Ihgaluk##32547 |goto Isle of Thunder 55.50,74.40
turnin Just Some Light Clean-Up Work##32546 |goto Isle of Thunder 55.50,74.40
turnin Left To Rot##32548 |goto Isle of Thunder 55.50,74.40
|only if completedq(32732)
step
talk Lyalia##69675
turnin The Residents of Ihgaluk##32545 |goto Isle of Thunder 55.90,74.40
|only if completedq(32732)
step
talk Archmage Modera##67996
turnin Subtle Encouragement##32606 |goto Isle of Thunder 55.80,74.40
turnin The Skumblade Threat##32535 |goto Isle of Thunder 55.80,74.40
turnin De-Constructed##32537 |goto Isle of Thunder 55.80,74.40
turnin Manipulating the Saurok##32536 |goto Isle of Thunder 55.80,74.40
|only if haveq(32732) or completedq(32732)
step
talk Archmage Modera##67996
accept Among the Bones##32578 |goto Isle of Thunder 55.80,74.40
accept No Time To Rest##32568 |goto Isle of Thunder 55.80,74.40
accept Imposing Threat##32581 |goto Isle of Thunder 55.80,74.40
accept Encroaching Force##32580 |goto Isle of Thunder 55.80,74.40
accept The Beast Pens##32567 |goto Isle of Thunder 55.80,74.40
accept Competing Magic##32579 |goto Isle of Thunder 55.80,74.40
Click here when no more quests are available |confirm
|only if haveq(32732) or completedq(32732)
step
talk Captain Elleane Wavecrest##67995
turnin The Sleepless Legion##32572 |goto Isle of Thunder/0 62.70,73.60
turnin Enemies Beneath the Tower##32573 |goto Isle of Thunder/0 62.70,73.60
step
talk Warmage Yurias##67994
turnin A Wing to Fly On##32571 |goto Isle of Thunder/0 63.50,73.60
step
talk Vereesa Windrunner##67993
turnin The Shuddering Moor##32574 |goto Isle of Thunder/0 63.20,72.10
step
talk Vereesa Windrunner##69600
turnin The Zandalari Colossus##32575 |goto Isle of Thunder/0 63.20,72.10
step
talk Lady Jaina Proudmoore##67992
accept The Beast Pens##32567 |or 2 |goto Isle of Thunder 63.20,72.20
accept Imposing Threat##32581 |or 2 |goto Isle of Thunder 63.20,72.20
accept Imposing Threat##32577 |or 2 |goto Isle of Thunder 63.20,72.20
accept Encroaching Force##32580 |or 2 |goto Isle of Thunder 63.20,72.20
accept No Time To Rest##32568 |or 2 |goto Isle of Thunder 63.20,72.20
accept Among the Bones##32578 |or 2 |goto Isle of Thunder 63.20,72.20
accept Competing Magic##32579 |or 2 |goto Isle of Thunder 63.20,72.20
Click here when no more quests are available |confirm
|only if completedq(32572) or completedq(32573) or completedq(32571) or completedq(32574) or completedq(32575)
step
kill Nurkala##69663 |q 32580/1 |only if haveq(32580) |goto Isle of Thunder 61.80,61.40
kill Nurkala##69663 |q 32584/1 |only if haveq(32584) |goto Isle of Thunder 61.80,61.40
|only if haveq(32580) or haveq(32584)
step
kill 1 Horgak the Enslaver##70176 |q 32581/1 |only if haveq(32581) |goto Isle of Thunder/0 45.70,59.50
kill 1 Horgak the Enslaver##70176 |q 32577/1 |only if haveq(32577)|goto Isle of Thunder/0 45.70,59.50
|only if haveq(32581) or haveq(32577)
step
kill 1 Arcweaver Jor'guva##69665 |q 32579/1 |only if haveq(32579) |goto Isle of Thunder/0 43.90,69.00
kill 1 Arcweaver Jor'guva##69665 |q 32576/1 |only if haveq(32576) |goto Isle of Thunder/0 43.90,69.00
|only if haveq(32579) or haveq(32576)
step
label "beast_pens"
Find Scout Captain Daelin at the Beast Pens |q 32567/1 |goto Isle of Thunder 51.90,47.00
|only if haveq(32567)
step
talk Scout Captain Daelin##67998
turnin The Beast Pens##32567 |goto Isle of Thunder 51.80,47.10
accept Saur Loser##32550 |or 2 |goto Isle of Thunder 51.80,47.10
accept Compy Stomp##32551 |or 2 |goto Isle of Thunder 51.80,47.10
accept Dino Might##32554 |or 2 |goto Isle of Thunder 51.80,47.10
Click here when no more quests are available |confirm
|only if haveq(32567) or completedq(32567)
step
talk Miura Brightweaver##67999
accept Direhorn vs Devilsaur##32553 |goto Isle of Thunder 51.80,47.20
accept Loa-saur##32552 |goto Isle of Thunder 51.80,47.20
Click here when no more quests are available |confirm
|only if completedq(32567) or completedq(32567)
stickystart "trainedcompy"
stickystart "conquerorszanda"
step
kill Loa-Infused Bladetalon##69306+
kill Loa Speaker##69302 |q 32552/1 |goto Isle of Thunder 53.30,44.30
|only if haveq(32552)
step
kill 6 Master Caller##69286+, Zandalari Fetish-Binder##69155
Binding ritual disrupted |q 32553/1 |goto Isle of Thunder/0 53.40,42.20
|only if haveq(32553)
step
label "conquerorszanda"
kill Zandalari Soultwister##69296+, Zandalari Haruspex##69297+, Zandalari Bloodguard##69294+,Zandalari Acolyte##69295+ |q 32560
kill 8 Conqueror's Terrace Zandalari |q 32560/1 |goto Isle of Thunder 58.50,51.90
|only if haveq(32560)
step
label "trainedcompy"
kill Zandalari Fetish-Binder##69155+, Zandalari Beastlord##69144+, Zandalari Fetish-Binder##69155+, Zandalari Saurcaller##69154+ |only if haveq(32550)
kill 10 Beast Pens Trolls |q 32550/1 |only if haveq(32550) |goto Isle of Thunder 49.20,40.90
click Saur Fetish##218373 |only if haveq(32554)
Saur Fetish can be found around [50.70,43.20] |only if haveq(32554)
collect 5 Saur Fetish##93668 |n |only if haveq(32554)
Use the _Saur Fetish_ on Raptors, Compys, Skyscreamers or Direhorns |use Saur Fetish##93668 |only if haveq(32554)
Use #5# Saur Fetishes |q 32554/1 |only if haveq(32554)
kill 5 Raptor |q 32551/1 |only if haveq(32551)
You can find more raptors around [49.60,37.90] |only if haveq(32551)
kill 10 Trained Compy |q 32551/2 |only if haveq(32551)
|only if haveq(32550) or haveq(32551) or haveq(32554)
step
talk Scout Captain Daelin##67998
turnin Compy Stomp##32551 |goto Isle of Thunder 51.80,47.10
turnin Saur Loser##32550 |goto Isle of Thunder 51.80,47.10
turnin Dino Might##32554 |goto Isle of Thunder 51.80,47.10
|only if haveq(32551) or completedq(32551) or haveq(32550) or completedq(32550)
step
talk Miura Brightweaver##67999
turnin Direhorn vs Devilsaur##32553 |goto Isle of Thunder 51.80,47.20
turnin Loa-saur##32552 |goto Isle of Thunder 51.80,47.20
accept Maximum Capacitor##32586 |or |goto Isle of Thunder 51.80,47.20
accept On Her Magic-ey Secret Service##32588 |or |goto Isle of Thunder 51.80,47.20
Click here when no more quests are available |confirm
|only if haveq(32552) or haveq(32553) or completedq(32552) or completedq(32553)
step
talk Scout Captain Daelin##67998
accept Among the Bones##32578 |or |goto Isle of Thunder 51.80,47.10
accept No Time To Rest##32568 |or |goto Isle of Thunder 51.80,47.10
accept Encroaching Force##32584 |or |goto Isle of Thunder 51.80,47.10
Click here when no more quests are available |confirm
|only if completedq(32567)
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
Use your Arcane Emancipator on _Agent Grisel_. |use Arcane Emancipator##93761
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
kill Metal Lord Mono-Han##69326 |q 32586/4 |goto Isle of Thunder/0 54.90,31.30
|only if haveq(32586)
step
Click the _Quest Complete_ Box:
turnin Maximum Capacitor##32586 |only if haveq(32586)
turnin On Her Magic-ey Secret Service##32588 |only if haveq(32588)
accept Forge Ahead!##32587
|only if haveq(32586) or completedq(32586) or haveq(32588) or completedq(32588)
step
kill Itoka##69461 |q 32587/1 |goto Isle of Thunder/0 57.70,34.00
|only if haveq(32587)
step
kill Fleshcrafter Hoku##69435
collect Mogu Codex Fragment##93731 |q 32587/2 |goto Isle of Thunder 55.70,38.60
|only if haveq(32587)
step
talk Scout Captain Daelin##67998
turnin No Time To Rest##32568 |goto Isle of Thunder 61.90,52.00
accept Keep It Secret##32560 |goto Isle of Thunder 61.90,52.00
accept Out of Enemy Hands##32557 |goto Isle of Thunder 61.90,52.00
accept Even Giants Fall##32559 |goto Isle of Thunder 61.90,52.00
Click here when no more quests are available |confirm
|only if haveq(32568) or completedq(32568)
step
talk Miura Brightweaver##67999
accept The More You Know##32556 |goto Isle of Thunder 61.90,52.10
accept Centuries in Sentries##32555 |goto Isle of Thunder 61.90,52.10
accept All In the Family##32558 |goto Isle of Thunder 61.90,52.10
Click here when no more quests are available |confirm
|only if completedq(32568)
step
kill Priest of the Serpent##69567
kill Guardian Tak'u##69336 |q 32559/1 |goto Isle of Thunder/0 60.20,54.20
|only if haveq(32559)
step
kill Spiritbinder Tu'chek##69301
collect Mask of the Dark Mystic##93734 |q 32558/1 |goto Isle of Thunder/0 59.40,56.70
|only if haveq(32560)
step
kill Arcanital Ra'kul##69300
collect Mask of the Dark Mystic##93734 |q 32558/2 |goto Isle of Thunder/0 56.70,46.30
|only if haveq(32560)
stickystart "zandaspirit"
step
click Ritual Artifict
collect 6 Ritual Artifact##93735 |q 32556/1 |goto Isle of Thunder 56.50,47.70
|only if haveq(32556)
step
label "zandaspirit"
kill Zandalari Acolyte##69295+, Zandalari Bloodguard##69294+, Zandalari Haruspex##69297+, Zandalari Soultwister##69296+ |q 32206/1 |only if haveq(32206)
kill Spirit-Bound Sentry##69335+ |only if haveq(32555)
Use your _Resonance Siphon_ _Spirit-Bound Sentry_ corpses |use Resonance Siphon##93806 |only if haveq(32555)
5 Zandalari Spirits captured |q 32555/1 |only if haveq(32555) |goto Isle of Thunder 55.70,50.70
|only if haveq(32555) or haveq(32206)
step
kill Zandalari Bloodguard##69294+, Zandalari Haruspex##69297+, Zandalari Soultwister##69296+
kill 8 Conqueror's Terrace Zandalari |q 32560/1 |goto Isle of Thunder 59.00,51.30
click Loa-Infused Blades##218056 |only if haveq(32557)
collect 7 Loa-Infused Blade##93736 |q 32557/1 |only if haveq(32557) |goto Isle of Thunder 59.00,51.30
You can find more around [58.10,48.90]
|only if haveq(32560) or haveq(32557)
step
talk Scout Captain Daelin##67998
turnin Keep It Secret##32560 |goto Isle of Thunder 61.90,52.00
turnin Out of Enemy Hands##32557 |goto Isle of Thunder 61.90,52.00
turnin Even Giants Fall##32559 |goto Isle of Thunder 61.90,52.00
|only if completedq(32568)
step
talk Miura Brightweaver##67999
turnin The More You Know##32556 |goto Isle of Thunder/0 61.90,52.10
turnin All In the Family##32558 |goto Isle of Thunder/0 61.90,52.10
turnin Centuries in Sentries##32555 |goto Isle of Thunder/0 61.90,52.10
|only if completedq(32560) or completedq(32557) or completedq(32559)
step
talk Miura Brightweaver##67999
accept Maximum Capacitor##32586 |goto Isle of Thunder/0 61.90,52.10
accept On Her Magic-ey Secret Service##32588 |goto Isle of Thunder/0 61.90,52.10
Click here when no more quests are available |confirm
|only if completedq(32560) or completedq(32557) or completedq(32559)
step
talk Scout Captain Daelin##67998
accept Raining Bones##32582 |goto Isle of Thunder/0 61.90,52.00
accept Encroaching Force##32585 |goto Isle of Thunder/0 61.90,52.00
Click here when no more quests are available |confirm
|only if completedq(32568)
step
talk Scout Captain Daelin##67998
turnin Encroaching Force##32585 |goto Isle of Thunder/0 61.90,52.00
turnin Raining Bones##32582 |goto Isle of Thunder/0 61.90,52.00
|only if completedq(32568)
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
turnin Maximum Capacitor##32586
turnin On Her Magic-ey Secret Service##32588
accept Forge Ahead!##32587
|only if haveq(32586) or completedq(32586) or haveq(32588) or completedq(32588)
step
kill Itoka##69461 |q 32587/1 |goto Isle of Thunder/0 57.70,34.00
|only if haveq(32587)
step
kill Fleshcrafter Hoku##69435
collect Mogu Codex Fragment##93731 |q 32587/2 |goto Isle of Thunder 55.70,38.60
|only if haveq(32587)
step
talk Scout Captain Daelin##70552
turnin Forge Ahead!##32587 |goto Isle of Thunder 58.70,42.70
step
talk Taoshi##69413
accept Extended Shore Leave##32607 |or |goto Isle of Thunder 58.70,42.80
accept Raiding the Vault##32608 |or |goto Isle of Thunder 58.70,42.80
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
kill Zur'chaka the Bonecrafter##69666 |q 32578/1 |goto Isle of Thunder/0 41.90,79.40
kill Zur'chaka the Bonecrafter##69666 |q 32582/1 |goto Isle of Thunder/0 41.90,79.40
|only if haveq(32578) or haveq(32582)
step
kill Nurkala##69663 |q 32585/1 |only if haveq(32585) |goto Isle of Thunder/0 61.80,61.50
kill Nurkala##69663 |q 32580/1 |only if haveq(32580) |goto Isle of Thunder/0 61.80,61.50
kill Nurkala##69663 |q 32584/1 |only if haveq(32584) |goto Isle of Thunder/0 61.80,61.50
|only if haveq(32580) or haveq(32584) or haveq(32585)
step
kill 1 Arcweaver Jor'guva##69665 |q 32579/1 |only if haveq(32579) |goto Isle of Thunder/0 43.90,69.00
kill 1 Arcweaver Jor'guva##69665 |q 32576/1 |only if haveq(32576) |goto Isle of Thunder/0 43.90,69.00
|only if haveq(32579) or haveq(32576)
step
kill Zur'chaka the Bonecrafter##69666 |q 32578/1 |goto Isle of Thunder/0 41.90,79.40
|only if haveq(32578)
step
kill Arcweaver Uzan##69272 |q 32607/1 |goto Isle of Thunder/0 68.30,45.30
|only if haveq(32607)
step
talk Lady Jaina Proudmoore##67992
turnin Among the Bones##32578 |goto Isle of Thunder/0 63.20,72.30
turnin Encroaching Force##32580 |goto Isle of Thunder/0 63.20,72.30
turnin Encroaching Force##32584 |goto Isle of Thunder/0 63.20,72.30
turnin Raiding the Vault##32608 |goto Isle of Thunder/0 63.20,72.30
turnin Imposing Threat##32581 |goto Isle of Thunder/0 63.20,72.30
turnin Extended Shore Leave##32607 |goto Isle of Thunder/0 63.20,72.30
turnin Competing Magic##32576 |or |goto Isle of Thunder/0 63.20,72.30
turnin Competing Magic##32579 |or |goto Isle of Thunder/0 63.20,72.30
step
label "end"
You have reached the end of the dailies for today
Click here to go back to the beginning of the guide |confirm |next "start"
Congratulations, you are now _Exalted_ with the _Kirin Tor Offensive_! |only if rep("Kirin Tor Offensive")==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\The Klaxxi",{
description="This guide will walk you through becoming exalted with The Klaxxi faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('The Klaxxi') < Exalted end,
achieveid={6545},
patch='50004',
},[[
step
This guide requires that you have completed all of the quests in the Dread Wastes
The following questlines are required to access all of the possible dailies for the Klaxxi
A Cry From Darkness |achieve 6540/1
Falling to Pieces |achieve 6540/2
Blood of Ancients |achieve 6540/3
Mazu's Bounty |achieve 6540/4
Please refer to QuestCore's Leveling and Loremaster guides for assistance in completing these questlines
Click here to go to QuestCore's Leveling and Loremaster guides for assistance in completing these questlines |confirm |next "Leveling Guides\\Pandaria (10-70)\\Dread Wastes (30-70)"
confirm
step
label "klaxxi start"
talk Kil'ruk the Wind-Reaver##62538
accept Dreadspinner Extermination##31231 |goto Dread Wastes 55.00,35.90 |or 2
accept Nope Nope Nope##31235 |goto Dread Wastes 55.00,35.90 |or 2
accept Culling the Swarm##31109 |goto Dread Wastes 55.00,35.90 |or 2
accept Mistblade Destruction##31267 |goto Dread Wastes 55.00,35.90 |or 2
accept Eradicating the Zan'thik##31111 |goto Dread Wastes 55.00,35.90 |or 2
accept Vess-Guard Duty##31505 |goto Dread Wastes 55.00,35.90 |or 2
noquest
step
talk Korven the Prime##62180
accept An Ancient Empire##31232 |goto Dread Wastes 54.30,36.10 |or 2
accept Sap Tapping##31233 |goto Dread Wastes 54.30,36.10 |or 2
accept Sampling the Empire's Finest##31496 |goto Dread Wastes 54.30,36.10 |or 2
accept The Fight Against Fear##31270 |goto Dread Wastes 54.30,36.10 |or 2
accept The Scale-Lord##31269 |goto Dread Wastes 54.30,36.10 |or 2
accept Meltdown##31507 |goto Dread Wastes 54.30,36.10 |or 2
noquest
step
talk Rik'kal the Dissector##65253
accept Bad Genes##31271 |goto Dread Wastes 54.30,35.90 |or 2
accept Wing Clip##31502 |goto Dread Wastes 54.30,35.90 |or 2
accept Shortcut to Ruin##31503 |goto Dread Wastes 54.30,35.90 |or 2
accept Putting An Eye Out##31234 |goto Dread Wastes 54.30,35.90 |or 2
accept Specimen Request##31508 |goto Dread Wastes 54.30,35.90 |or 2
accept Fear Takes Root##31509 |goto Dread Wastes 54.30,35.90 |or 2
noquest
|only if completedq(31606)
step
talk Kaz'tik the Manipulator##63758
accept Brain Food##31238 |goto Dread Wastes 54.30,35.80 |or 2
accept Sonic Disruption##31487 |goto Dread Wastes 54.30,35.80 |or 2
accept Free From Her Clutches##31494 |goto Dread Wastes 54.30,35.80 |or 2
accept A Little Brain Work##31268 |goto Dread Wastes 54.30,35.80 |or 2
accept Kunchong Treats##31024 |goto Dread Wastes 54.30,35.80  |or 2
accept Rampage Against the Machine##31808 |goto Dread Wastes 54.30,35.80 |or 2
accept Shackles of Manipulation##31506 |goto Dread Wastes 54.30,35.80 |or 2
noquest
step
talk Xaril the Poisoned Mind##62151
accept Dark Skies##31216 |goto Dread Wastes 54.90,36.20
noquest
|only if completedq(31211)
step
talk Hisek the Swarmkeeper##63785
accept Debugging the Terrace##31237 |goto Dread Wastes 54.80,36.20 |or
accept Quiet Now##31510 |goto Dread Wastes 54.80,36.20 |or
accept Infection##31272 |goto Dread Wastes 54.80,36.20 |or
accept Ordnance Disposal##31504 |goto Dread Wastes 54.80,36.20 |or
noquest
|only if completedq(31439)
step
talk Malik the Unscathed##62774
accept The Empress' Gambit##31959 |goto Dread Wastes 55.00,35.40
|only if rep("The Klaxxi")>=Exalted
step
talk Kil'ruk the Wind-Reaver##62538
Select _"<Please Fly me to the Terrace of Gurthan.>"_ |invehicle |goto Dread Wastes 55.10,35.90
|only if haveq(31237) or haveq(31231)
step
Kill creatures until you get the buff:
Pheremone Tracking |havebuff Tracking##375338
Locate and kill Eye's of the Empress
|tip Start looking for red mist on the groud first.
kill 6 Eye of the Empress##63783+ |q 31237/1 |goto Dread Wastes 67.90,24.30
|only if haveq(31237)
step
In order to do the 'hidden' quest for this area, you must have at least one other person to help you
confirm |future |q 31677
|only if haveq(31237) or haveq(31231)
step
Around this location you should be able to see a _green rune_ and a _red rune_
One person will need to _/lay_ on the _green rune_, while the other must _/kneel_ at the _red rune_
This will cause a level 30-35 Elite to spawn, depepending on your level
This daily is active for everyone in the area, so you should find some help easily
kill Warlord Gurthan##65502
collect Ashes of Warlord Gurthan##88715 |future |q 31677 |goto Dread Wastes 66.20,31.80
|only if haveq(31237)
step
Click the _Ashes of Warlord Gurthan_ in your bags |use Ashes of Warlord Gurthan##88715
accept The Warlord's Ashes##31677
|only if haveq(31237) or haveq(31677)
step
talk Xaril the Poisoned Mind##62151
Select _"I am ready to fly, Xaril."_ |q 31216/1 |goto Dread Wastes 54.90,36.20
Ride Xaril the Poisoned Mind |invehicle |only if haveq(31216)
|only if haveq(31216)
step
Use the _Venom Bomb_ to kill the small enemies
Use the _Paralyzing Syrum_ then immidiately the _Venom Bomb_ to kill the larger enemies
kill 200 Mantid |q 31216/2
kill 3 Kunchong |q 31216/3
|only if haveq(31216)
step
Click the Return to Klaxxi'vess button on your action bar |outvehicle
|only if haveq(31216)
step
talk Kil'ruk the Wind-Reaver##62538
Ask him to fly you to the Clutches of Shek'zeer |invehicle |goto Dread Wastes 55.00,35.90
|only if haveq(31109)
step
Use the Sonic Divebomb ability on your new hotbar to land |outvehicle |goto Dread Wastes 38.30,30.30
|tip It's a good idea to land on Karanosh <Kunchong Matriarch>, she drops a daily quest item.
|only if haveq(31109)
step
Enter this building |goto Dread Wastes 37.00,28.10 < 10
click Central Feeder##215762
Sample the Central Feeder |q 31496/1 |goto Dread Wastes 37.40,29.30
|only if haveq(31496)
step
Enter this building. |goto Dread Wastes 39.30,29.30 < 10
click Northeast Feeder##215700
Sample the Northeast Feeder |q 31496/4 |goto Dread Wastes 39.10,30.50
|only if haveq(31496)
step
kill Vess-Guard Na'kal##64890 |q 31503/1 |goto Dread Wastes 39.30,30.90
|only if haveq(31503)
step
Enter this building |goto Dread Wastes 38.30,32.00 < 10 |walk
click East Feeder##215761
Sample the East Feeder |q 31496/2 |goto Dread Wastes 37.90,33.10
|only if haveq(31496)
step
Enter this building |goto Dread Wastes 36.30,32.30 < 10 |walk
click North Feeder##215703
Sample the North Feeder |q 31496/3 |goto Dread Wastes 37.00,32.80
|only if haveq(31496)
step
kill Shek'zeer Needler##64714+
collect 24 Needler Wings##87401 |q 31502/1 |goto Dread Wastes 35.20,31.30
|only if haveq(31502)
step
kill Greatback Mushan##62029
collect 6 Mushan Tongue##85665 |q 31238/1 |goto Dread Wastes 66.00,19.30
You can find more Mushan around here |goto Dread Wastes 56.90,23.40
|only if haveq(31238)
step
Use the Shado-Pan Dragon Gun on Dreadspinner Eggs |use Shado-Pan Dragon Gun##82807 |only if haveq(31235)
Destroy 20 Dreadspinner Eggs |q 31235/1 |only if haveq(31235) |goto Dread Wastes 73.20,22.50
kill 8 Dreadspinner Tender##61981+ |q 31231/1 |only if haveq(31231) |goto Dread Wastes 73.20,22.50
|only if haveq(31235) or haveq(31231)
step
click Gurthani Tablet##213314
collect 8 Gurthani Tablet##85634 |q 31232/1 |goto Dread Wastes 68.10,30.00
|only if haveq(31232)
step
kill Mire Beast##63731+
collect 1 Pristine Mire Beast Eye## |q 31234/1 |goto Dread Wastes 67.70,37.10
|only if haveq(31234)
step
clicknpc Amber Tap##63740
|tip These are located on trees. Look for Sapfly packs to find these easier.
click Amber Pot##213319
collect 6 Amber Sap##85664 |q 31233/1 |goto Dread Wastes 66.60,43.80
|only if haveq(31233)
step
click Pheromone Mine##214964
Disable 8 Pheromone Mines |q 31504/1 |goto Dread Wastes 42.00,33.70
You can find more mines here |goto Dread Wastes 48.10,31.40
|only if haveq(31504)
step
Use the Sonic Disruption Fork on Dread Kunchong. |use Sonic Disruption Fork##87394 |only if haveq(31487)
kill 4 Dread Kunchong##64717 |q 31487/1 |only if haveq(31487) |goto Dread Wastes 44.90,35.60
kill 6 Shek'zeer Manipulator##64720 |q 31487/2 |only if haveq(31487) |goto Dread Wastes 44.90,35.60
click Kunchong Cage##214292 |only if haveq(31494) |goto Dread Wastes 44.90,35.60
Free 8 Kunchong Hatchlings |q 31494/1 |only if haveq(31494) |goto Dread Wastes 44.90,35.60
|only if haveq(31487) or haveq(31494)
step
kill Shek'zeer Swarmborn##62582+, Shek'zeer Needler##64714+, Shek'zeer Bladesworn##62563+, Shek'zeer Clutch-Keeper##64559+
Kill 40 Shek'zeer Mantid |q 31109/1 |goto Dread Wastes 44.40,43.00
|tip It's by far fastest to kill the tiny Shek'zeer Swarmborn by the dozen.
|only if haveq(31109)
step
kill Karanosh##64724 |tip She wanders around this area, so you may have to search for her.
collect Enormous Kunchong Mandibles##87878
Click the Enormous Kunchong Mandibles in your bags |use Enormous Kunchong Mandibles##87878
accept The Matriarch's Maw##31599 |goto Dread Wastes 41.40,33.20
|only if haveq(31109)
step
kill 15 Horrorscale Scorpid##62162+ |q 31270/1 |goto Dread Wastes 58.60,51.10 |only if haveq(31270)
kill Chillwater Turtle##62160+ |only if haveq(31024)
collect 4 Meaty Turtle Haunch##82869 |q 31024/1 |goto Dread Wastes 58.60,51.10 |only if haveq(31024)
|only if haveq(31270) or haveq(31024)
stickystart "amberencrusted"
stickystart "infectedwildlife"
step
kill 3 Ik'thik Genemancer##63257+ |q 31271/1 |goto Dread Wastes 62.00,65.80
kill 6 Ik'thik Egg-Drone##63176+ |q 31271/2 |goto Dread Wastes 62.00,65.80
|only if haveq(31271)
step
label "amberencrusted"
Use the Sonic Emitter in your bags on Ik'thik Amberstingers |use Sonic Emitter##85884
kill Ik'thik Amberstinger##63728+
collect 3 Amber-Encrusted Brain##85885 |q 31268/1 |goto Dread Wastes 61.40,70.30
|only if haveq(31268)
step
label "infectedwildlife"
kill Bluehide Mushan##63729+, Needleback Porcupine##65118+, Bonedust Moth##63725+
|tip Make sure that they have the Infected buff before you attack them. Only wildlife with that buff will count for this quest.
kill 6 Infected wildlife |q 31272/1 |goto Dread Wastes 60.70,67.70
|only if haveq(31272)
step
Enter the tunnel here |goto Dread Wastes 66.80,63.80 < 10 |walk
kill Mistblade Scale-Lord##63179 |q 31269/1 |goto Dread Wastes 66.50,66.00
|only if haveq(31269)
step
Leave the tunnel |goto Dread Wastes 66.80,63.80 < 10 |only if haveq(31269) |walk
kill 6 Mistblade Ripper##61970+ |q 31267/1 |goto Dread Wastes 67.20,59.30
|only if haveq(31267)
step
talk Kil'ruk the Wind-Reaver##62538
Ask him to fly you to Zan'vess |invehicle |goto Dread Wastes 55.10,35.90
|only if haveq(31111) or haveq(31508) or haveq(31506) or haveq(31111) or haveq(31510)
step
Use the Sonic Divebomb ability on your new hotbar to land |outvehicle |goto Dread Wastes 31,70
|only if haveq(31111) or haveq(31508) or haveq(31506) or haveq(31111) or haveq(31510)
step
As you complete quests in this area:
clicknpc Dreadspore Bulbs##69093
Destroy 15 Dreadspore Bulbs |q 31509/1 |n
confirm
|only if haveq(31509)
step
kill Kypari Crawler##65231+ |only if haveq(31508)
collect 6 Kyparite Shards##87874 |q 31508/1 |goto Dread Wastes 31.50,69.60 |only if haveq(31508)
kill Thought-Bound Miner##64970+ |only if haveq(31506)
collect 6 Zan'thik Shackles##87813 |q 31506/1 |goto Dread Wastes 31.50,69.60 |only if haveq(31506)
kill 6 Zan'thik Impaler##64971+ |q 31111/1 |goto Dread Wastes 31.50,69.60 |only if haveq(31111)
kill 6 Zan'thik Manipulator##64973+ |q 31111/2 |goto Dread Wastes 31.50,69.60 |only if haveq(31111)
|only if haveq(31506) or haveq(31111) or haveq(31508)
step
kill Kypa'rak##65229
collect 1 Massive Kyparite Core##87871 |n
Click the Massive Kyparite Core in your bags |use Massive Kyparite Core##87871
accept Kypa'rak's Core##31598 |goto Dread Wastes 33.40,61.00
|only if haveq(31111) or haveq(31508) or haveq(31506) or haveq(31111) or haveq(31510)
step
kill Vess-Guard Vik'az##64979+ |q 31505/1 |goto Dread Wastes 29.10,74.70
|only if haveq(31505)
step
kill 6 Zan'thik Amberhusk##64982+ |q 31507/1 |goto Dread Wastes 23.00,77.30
|only if haveq(31507)
step
All around this area
clicknpc Dreadspore Bulbs##69093
Destroy 15 Dreadspore Bulbs |q 31509/1
|only if haveq(31509)
step
click Zan'thik Resonating Crystal##214455
kill Adjunct Sek'ot##64995 |q 31510/1 |goto Dread Wastes 24.20,86.20
|only if haveq(31510)
step
clicknpc Kovok##63765
Locate Kovok |q 31808/1 |goto Dread Wastes 50.80,41.30
|only if haveq(31808)
step
Use the abilities on your hotbar to complete your task.
kill Ik'thik Slayer, Ik'thik Kunchong, Ik'thik Warrior
Kill 200 Mantid |q 31808/2
|only if haveq(31808)
step
talk Kil'ruk the Wind-Reaver##62538
turnin Dreadspinner Extermination##31231 |goto Dread Wastes 55.00,35.90
turnin Nope Nope Nope##31235 |goto Dread Wastes 55.00,35.90
turnin Culling the Swarm##31109 |goto Dread Wastes 55.00,35.90
turnin Mistblade Destruction##31267 |goto Dread Wastes 55.00,35.90
turnin Eradicating the Zan'thik##31111 |goto Dread Wastes 55.00,35.90
turnin Vess-Guard Duty##31505 |goto Dread Wastes 55.00,35.90
turnin The Warlord's Ashes##31677 |goto Dread Wastes 55.00,35.90
step
talk Xaril the Poisoned Mind##62151
turnin Dark Skies##31216 |goto Dread Wastes 54.90,36.20
step
talk Hisek the Swarmkeeper##63785
turnin Debugging the Terrace##31237 |goto Dread Wastes 54.80,36.20
turnin Quiet Now##31510 |goto Dread Wastes 54.80,36.20
turnin Infection##31272 |goto Dread Wastes 54.80,36.20
turnin Ordnance Disposal##31504 |goto Dread Wastes 54.80,36.20
step
talk Korven the Prime##62180
turnin An Ancient Empire##31232 |goto Dread Wastes 54.30,36.10
turnin Sap Tapping##31233 |goto Dread Wastes 54.30,36.10
turnin Sampling the Empire's Finest##31496 |goto Dread Wastes 54.30,36.10
turnin The Fight Against Fear##31270 |goto Dread Wastes 54.30,36.10
turnin The Scale-Lord##31269 |goto Dread Wastes 54.30,36.10
turnin Meltdown##31507 |goto Dread Wastes 54.30,36.10
step
talk Ambersmith Zikk##64599
turnin Kypa'rak's Core##31598 |goto Dread Wastes 55.00,35.40
turnin The Matriarch's Maw##31599 |goto Dread Wastes 55.00,35.40
|only if haveq(31598) or haveq(31599)
step
talk Rik'kal the Dissector##65253
turnin Bad Genes##31271 |goto Dread Wastes 54.30,35.90
turnin Wing Clip##31502 |goto Dread Wastes 54.30,35.90
turnin Shortcut to Ruin##31503 |goto Dread Wastes 54.30,35.90
turnin Putting An Eye Out##31234 |goto Dread Wastes 54.30,35.90
turnin Specimen Request##31508 |goto Dread Wastes 54.30,35.90
turnin Fear Takes Root##31509 |goto Dread Wastes 54.30,35.90
step
talk Kaz'tik the Manipulator##63758
turnin Brain Food##31238 |goto Dread Wastes 54.30,35.80
turnin Sonic Disruption##31487 |goto Dread Wastes 54.30,35.80
turnin Free From Her Clutches##31494 |goto Dread Wastes 54.30,35.80
turnin A Little Brain Work##31268 |goto Dread Wastes 54.30,35.80
turnin Kunchong Treats##31024 |goto Dread Wastes 54.30,35.80
turnin Rampage Against the Machine##31808 |goto Dread Wastes 54.30,35.80
turnin Shackles of Manipulation##31506 |goto Dread Wastes 54.30,35.80
|next |only if rep("The Klaxxi")>=Revered and not completedq(31465)
|next "exalted" |only if rep("The Klaxxi")>=Exalted and not completedq(31612)
|next "end" |only if default
step
talk Ambersmith Zikk##64599
buy 1 Grand Commendation of the Klaxxi##92522 |n
Use the Commendation of the Klaxxi you just purchased. |complete QC:GetReputation("The Klaxxi").hasBonus |use Grand Commendation of the Klaxxi##92522 |goto Dread Wastes 55.00,35.60
|only if rep("The Klaxxi")>=Revered
step
talk Kil'ruk the Wind-Reaver##62538
accept Beneath The Heart Of Fear##31018 |goto Dread Wastes 55.10,35.90
step
Enter this tunnel |goto Dread Wastes 29.00,42.40 < 10 |walk
kill Adjunct Ek'vem##62073+ |q 31018/1 |goto Dread Wastes 30.70,40.30
step
kill Adjunct Ikkess##62074+ |q 31018/2 |goto Dread Wastes 33.40,40.20
step
kill Adjunct Suruz##62075+ |q 31018/3 |goto Dread Wastes 33.40,44.30
step
kill Adjunct Tzikzi##62076+ |q 31018/4 |goto Dread Wastes 30.70,44.40
step
click Ancient Amber Chunk##212980
Wake Xaril the Poisoned Mind |q 31018/5 |goto Dread Wastes 31.90,42.50
step
_Exit_ the tunnel here |goto Dread Wastes 29.00,42.40 < 10 |walk
talk Xaril the Poisoned Mind##62151
turnin Beneath The Heart Of Fear##31018 |goto Dread Wastes 28.60,42.10
accept Venomous Intent##31208 |goto Dread Wastes 28.60,42.10
accept Dark Wings, Dark Things##31209 |goto Dread Wastes 28.60,42.10
accept A Shade of Dread##31210 |goto Dread Wastes 28.60,42.10
step
kill Ruby Venomtail##63588+, Dread Scarab##63587+
collect 150 Scarab Wing##85572 |q 31209/1 |goto Dread Wastes 24.70,41.80
collect 8 Venomous Stinger##85571 |q 31208/1 |goto Dread Wastes 24.70,41.80
click Dreadshade##213267
collect 8 Dreadshade##85573 |q 31210/1 |goto Dread Wastes 24.70,41.80
You can find more here |goto Dread Wastes 26.40,36.40
As well as here |goto Dread Wastes 26.20,30.80
step
talk Xaril the Poisoned Mind##62151
turnin Venomous Intent##31208 |goto Dread Wastes 28.60,42.10
turnin Dark Wings, Dark Things##31209 |goto Dread Wastes 28.60,42.10
turnin A Shade of Dread##31210 |goto Dread Wastes 28.60,42.10
step
talk Xaril the Poisoned Mind##62151
accept The Poisoned Mind##31211 |goto Dread Wastes 28.60,42.10
step
talk Xaril the Poisoned Mind##62151
Select _"I am ready to fly, Xaril."_ |invehicle |q 31211 |goto Dread Wastes 28.60,42.10
step
Use the _Venom Syrum_ to kill the small enemies
Use the _Paralyzing Syrum_ then immidiately the _Venom Syrum_ to kill the larger enemies
Speak to Xaril the Poisoned Mind |q 31211/1
kill 200 Mantid |q 31211/2
kill 3 Kunchong |q 31211/3
kill Krik'thik Wingguard##63613+, Ik'thik Warrior##63635+, Ik'thik Slayer##63636+ Dread Behemoth##65513+, Krik'thik Battletank##63625+,
step
talk Xaril the Poisoned Mind##62151
turnin The Poisoned Mind##31211 |goto Dread Wastes 54.90,36.20
step
talk Kor'ik##64815
accept Dropping Our Signal##31439 |goto Dread Wastes 54.80,34.10
step
Use your Tuning Fork on the Amber Rock |use Klaxxi Tuning Fork##87202
Awaken Hisek the Swarmkeeper |q 31439/1 |goto Dread Wastes 56.30,58.20
step
talk Hisek the Swarmkeeper##64672
turnin Dropping Our Signal##31439 |goto Dread Wastes 56.30,58.20
accept Corruption Runs Deep##31441 |goto Dread Wastes 56.30,58.20
step
kill Kor'ik##64583+ |q 31441/1 |goto Dread Wastes 56.20,57.60
step
talk Hisek the Swarmkeeper##64705
turnin Corruption Runs Deep##31441 |goto Dread Wastes 56.30,57.60
accept Damage Control##31458 |goto Dread Wastes 56.30,57.60
accept Extracting Answers##31465 |goto Dread Wastes 56.30,57.60
stickystart "venomcoatdmandible"
step
click Kypari Ik Beacon##214281
Deactivate Kypari Ik Resonating Crystal |q 31458/2 |goto Dread Wastes 55.60,47.10
step
label "venomcoatdmandible"
kill 5 Ik'thik Whisperer##64622+ |q 31458/1 |goto Dread Wastes 50.50,45.80
kill Ik'thik Swarmborn##64831+
collect 6 Venom-Coated Mandible##87263 |q 31465/1 |goto Dread Wastes 50.50,45.80
step
talk Hisek the Swarmkeeper##63785
turnin Damage Control##31458 |goto Dread Wastes 54.80,36.20
turnin Extracting Answers##31465 |goto Dread Wastes 54.80,36.20
|next |only if rep("The Klaxxi")>=Exalted and not completedq(31612)
|next "end" |only if default
step
label "exalted"
talk Malik the Unscathed##66776
Report to Malik the Unscathed |q 31959/1 |goto Dread Wastes 40.40,34.40
step
Click the Auto complete quest box that appears below your minimap:
turnin The Empress' Gambit##31959
accept The Wrath of Shek'zeer##31609
step
While you are completing this quest, you will need to assist your Mantid Swarm in defeating 25 Mantid Subjugates.
confirm
stickystart "mantidsubs"
step
kill Akkolon##66783 |q 31609/1 |goto Dread Wastes 44.60,35.20
|tip You will have Paragons waiting in thie area to help you. If Akkolon is not in this location, you will have to wait to allow him to respawn.
step
kill Shox'tik##66784 |q 31609/2 |goto Dread Wastes 41.60,39.80
|tip You will have Paragons waiting in thie area to help you. If Shox'tik is not in this location, you will have to wait to allow him to respawn.
step
kill Manifestation of Terror##66785 |q 31609/3 |goto Dread Wastes 43.80,29.60
|tip You will have Paragons waiting in thie area to help you. If the Manifestation of Terror is not in this location, you will have to wait to allow it to respawn.
step
label "mantidsubs"
kill 25 Mantid Subjugates |q 31609/4 |goto Dread Wastes 43.40,33.00
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Wrath of Shek'zeer##31609 |goto Dread Wastes 55.00,35.90
accept Shadow of the Empire##31612 |goto Dread Wastes 55.00,35.90
step
Follow Kil'ruk the Wind-Rever into the chamber
Walk with Kil'ruk |q 31612/1
step
Next to you:
talk Kil'ruk the Wind-Reaver##66800
turnin Shadow of the Empire##31612
|next "end"
step
label "end"
This is the end of this guide.
Click here to return to the beginning of the dailies |confirm |next "klaxxi start"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Lorewalkers",{
description="This guide will walk you through becoming exalted with the Lorewalkers faction.",
achieveid={6548},
patch='50004',
},[[
step
click The Emperor's Burden - Part 8##213456
achieve The Seven Burdens of Shaohao##6855/8 |goto Vale of Eternal Blossoms 67.78,44.19
step
click Always Remember##214125
achieve What is Worth Fighting For##6858/2 |goto Vale of Eternal Blossoms 52.90,68.60
step
click The Thunder King##214136
achieve The Dark Heart of the Mogu##6754/4 |goto Vale of Eternal Blossoms 40.20,77.50
step
click Together We Are Strong##214126
achieve What is Worth Fighting For##6858/4 |goto Vale of Eternal Blossoms 26.60,21.50
step
click Trapped in a Strange Land##214120
achieve The Song of the Yaungol##6847/4 |goto Townlong Steppes 84.10,72.90
step
click Dominance##214123
achieve The Song of the Yaungol##6847/2 |goto Townlong Steppes 65.40,50.00
step
click The Emperor's Burden - Part 5##213445
achieve The Seven Burdens of Shaohao##6855/5 |goto Townlong Steppes 37.80,62.90
step
Enter the cave here |goto Dread Wastes 53.60,15.90
click Amber##214131
achieve Heart of the Mantid Swarm##6857/3 |goto Dread Wastes 52.50,10.10
step
click The Empress##214132
achieve Heart of the Mantid Swarm##6857/4 |goto Dread Wastes 35.50,32.60
step
click Cycle of the Mantid##214129
achieve Heart of the Mantid Swarm##6857/1 |goto Dread Wastes 48.40,32.80
step
click Mantid Society##214130
achieve Heart of the Mantid Swarm##6857/2 |goto Dread Wastes 59.90,55.10
step
click The Deserters##213500
achieve Between a Saurok and a Hard Place##6716/3 |goto Dread Wastes 67.40,60.80
step
click Pandaren Fighting Tactics##214124
achieve What is Worth Fighting For##6858/1 |goto Valley of the Four Winds 18.80,31.70
step
click The Birthplace of Liu Lang##214111
achieve Ballad of Liu Lang##6856/1 |goto Valley of the Four Winds 20.30,55.90
step
click The Wondering Widow##
achieve Ballad of Liu Lang##6856/3 |goto Valley of the Four Winds 34.60,63.90
step
click The Last Stand##213330
achieve Between a Saurok and a Hard Place##6716/4 |goto Krasarang Wilds 32.80,29.40
step
click Origins##215782
achieve Fish Tales##6846/3 |goto Krasarang Wilds 30.50,38.50
step
Enter the Temple here |goto Krasarang Wilds 40.40,51.70 < 10 |walk
Go up the stairs |goto Krasarang Wilds 41.20,55.80 |walk
click The Emperor's Burden - Part 4##213422
achieve The Seven Burdens of Shaohao##6855/4 |goto Krasarang Wilds 40.50,56.60
step
Enter the cave here |goto Krasarang Wilds 52.20,86.30
click Hozen Maturity##211993
achieve Hozen in the Mist##6850/2 |goto Krasarang Wilds 52.40,87.60
step
click The Lost Dynasty##213332
achieve The Dark Heart of the Mogu##6754/2 |goto Krasarang Wilds 51.00,31.70
step
click Waiting for the Turtle##215765
achieve Ballad of Liu Lang##6856/4 |goto Krasarang Wilds 72.20,31.10
step
click A Most Famous Bill of Sale##213460
achieve Ballad of Liu Lang##6856/2 |goto Valley of the Four Winds 55.10,47.20
step
click Waterspeakers##215780
achieve Fish Tales##6846/2 |goto Valley of the Four Winds 61.20,34.70
step
click Embracing the Passion##
achieve Hozen in the Mist##6850/3 |goto Valley of the Four Winds 83.20,21.20
step
Follow the path up |goto Krasarang Wilds 78.80,11.10
click Quan Tou Kuo the Two Fisted##213407
achieve Legend of the Brewfathers##7230/1 |goto Krasarang Wilds 81.40,11.50
step
click Watersmithing##215779
achieve Fish Tales##6846/1 |goto The Jade Forest 66.00,87.60
step
click The Emperor's Burden - Part 3##213421
achieve The Seven Burdens of Shaohao##6855/3 |goto The Jade Forest 55.90,56.80
step
click The Emperor's Burden - Part 1##215799
achieve The Seven Burdens of Shaohao##6855/1 |goto The Jade Forest 47.10,45.20
step
click The Saurok##213327
achieve Between a Saurok and a Hard Place##6716/1 |goto The Jade Forest 67.70,29.40
step
click Spirit Binders##213333
achieve The Dark Heart of the Mogu##6754/3 |goto The Jade Forest 42.30,17.40
step
click The First Monks##213415
achieve What is Worth Fighting For##6858/3 |goto The Jade Forest 35.70,30.50
step
click Xin Wo Yin the Broken Hearted##213512
achieve Legend of the Brewfathers##7230/2 |goto The Jade Forest 37.30,30.10
step
click Hozen Speech##211990
achieve Hozen in the Mist##6850/1 |goto The Jade Forest 26.40,28.40
step
click The Defiant##213499
achieve Between a Saurok and a Hard Place##6716/2 |goto The Veiled Stair/5 54.80,16.00
step
click Role Call##215783
achieve Fish Tales##6846/4 |goto Kun-Lai Summit 74.50,83.50
step
click Yaungoil##215798
achieve The Song of the Yaungol##6847/3 |goto Kun-Lai Summit 71.70,63.00
step
click The Emperor's Burden - Part 6##213443
achieve The Seven Burdens of Shaohao##6855/6 |goto Kun-Lai Summit 67.80,48.40
step
click Victory in Kun-Lai##214128
achieve What is Worth Fighting For##6858/5 |goto Kun-Lai Summit 63.00,40.80
step
Enter the Temple here |goto Kun-Lai Summit 52.80,46.80
click Valley of the Emperors##214133
achieve The Dark Heart of the Mogu##6754/1 |goto Kun-Lai Summit/17 58.20,70.50
Leave the Temple here |goto Kun-Lai Summit/17 87.80,55.40
step
click The Emperor's Burden - Part 7##213455
achieve The Seven Burdens of Shaohao##6855/7 |goto Kun-Lai Summit 41.00,42.40
step
click The Emperor's Burden - Part 2##215797
achieve The Seven Burdens of Shaohao##6855/2 |goto Kun-Lai Summit 43.80,51.20
step
click Ren Yun the Blind##213438
achieve Legend of the Brewfathers##7230/3 |goto Kun-Lai Summit 44.70,52.40
step
click The Hozen Ravage##214158
achieve Hozen in the Mist##6850/4 |goto Kun-Lai Summit 45.80,61.90
step
click Yaungol Tactics##214122
achieve The Song of the Yaungol##6847/1 |goto Kun-Lai Summit 50.30,79.30
step
Check your in-game mailbox for items from Lorewalker Cho
collect 1 The Ballad of Liu Lang##83780 |future |q 31103
collect 1 The Dark Heart of the Mogu##83772 |future |q 31095
collect 1 The Song of the Yaungol##83777 |future |q 31100
collect 1 Hozen in the Mist##83770 |future |q 31093
collect 1 Heart of the Mantid Swarm##83773 |future |q 31097
collect 1 The Seven Burdens of Shaohao##83779 |future |q 31102
collect 1 What is Worth Fighting For##83774 |future |q 31096
collect 1 Fish Tales##83771 |future |q 31094
'You will only be able to collect one of these last two.
collect 1 Between a Saurok and a Hard Place##83076 |future |q 31055 |or
collect 1 Between a Saurok and a Hard Place####83769 |future |q 31055 |or
step
Use each item in your bags to accept the quests
accept The Ballad of Liu Lang##31103 |use The Ballad of Liu Lang##83780
accept The Dark Heart of the Mogu##31095 |use The Dark Heart of the Mogu##83772
accept The Song of the Yaungol##31100 |use The Song of the Yaungol##83777
accept Hozen in the Mist##31093 |use Hozen in the Mist##83770
accept Heart of the Mantid Swarm##31097 |use Heart of the Mantid Swarm##83773
accept The Seven Burdens of Shaohao##31102 |use The Seven Burdens of Shaohao##83779
accept What is Worth Fighting For##31096 |use What is Worth Fighting For##83774
accept Fish Tails##31094 |use Fish Tales##83771
step
Use each item in your bags to accept the quests
accept Between a Saurok and a Hard Place##31055 |use Between a Saurok and a Hard Place##83076 |or
accept Between a Saurok and a Hard Place##31055 |use Between a Saurok and a Hard Place##83769 |or
step
talk Lorewalker Cho##61962
turnin What is Worth Fighting For##31096 |goto Vale of Eternal Blossoms 83.20,29.70
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin The Song of the Yaungol##31100 |goto Vale of Eternal Blossoms 83.20,29.70
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin The Seven Burdens of Shaohao##31102 |goto Vale of Eternal Blossoms 83.20,29.70
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin The Dark Heart of the Mogu##31095 |goto Vale of Eternal Blossoms 83.20,29.70
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin The Ballad of Liu Lang##31103 |goto Vale of Eternal Blossoms 83.20,29.70
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin Hozen in the Mist##31093 |goto Vale of Eternal Blossoms 83.20,29.70
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin Heart of the Mantid Swarm##31097 |goto Vale of Eternal Blossoms 83.20,29.70
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin Fish Tails##31094 |goto Vale of Eternal Blossoms 83.20,29.70
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin Between a Saurok and a Hard Place##31055 |goto Vale of Eternal Blossoms 83.20,29.70
Watch his story, then click here |confirm always
step
Congratulations, you are now Exalted with the Lorewalkers!
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Nat Pagle",{
description="This guide will walk you through becoming exalted with Nat Pagle faction.",
achieveid={7274},
patch='50004',
},[[
step
label "menu"
_Nat Pagle_ is a _Stranger_ to you |only if rep("Nat Pagle")<=Stranger
_Nat Pagle_ is your _Aquaintance_ |only if rep("Nat Pagle")==Aquaintance
_Nat Pagle_ is your _Buddy_ |only if rep("Nat Pagle")==Buddy
_Nat Pagle_ is your _Friend_ |only if rep("Nat Pagle")==Friend
_Nat Pagle_ is your _Good Friend_ |only if rep("Nat Pagle")==GoodFriend
_Nat Pagle_ is your _Best Friend_ |only if rep("Nat Pagle")==BestFriend
|confirm
step
label "menu2"
In order to successfully gain rep with Nat Pagle you have to catch fish, so we recommend that you are at least 525 in Fishing.
The fish you catch in this guide are unique, meaning you can only have one of each in your bag at any given time.
|confirm
step
label "menu3"
Click here to start fishing! |confirm |next "fishrun"
Click here to turn in the fish to Nat Pagle for daily reputation gains. |confirm |next "turnin"
step
label "fishrun"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here
You can look for fishing pools around the beach also |cast fishing##131474
collect 1 Flying Tiger Gourami##86542 |goto Kun-Lai Summit 72.70,93.10
accept Flying Tiger Gourami##31443 |use Flying Tiger Gourami##86542 |goto Kun-Lai Summit 72.70,93.10
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here
You can look for fishing pools too |cast fishing##131474
collect 1 Spinefish Alpha##86544 |goto Kun-Lai Summit 70.80,84.20
accept Spinefish Alpha##31444 |use Spinefish Alpha##86544 |goto Kun-Lai Summit 70.80,84.20
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here
You can look for fishing pools too |cast fishing##131474.
collect 1 Mimic Octopus##86545 |goto Kun-Lai Summit 57.90,21.90
accept Mimic Octopus##31446 |use Mimic Octopus##86545 |goto Kun-Lai Summit 57.90,21.90
|next "menu3"
step
label "turnin"
talk Nat Pagle##63721
turnin Spinefish Alpha##31444 |goto Krasarang Wilds 68.40,43.50
turnin Mimic Octopus##31446 |goto Krasarang Wilds 68.40,43.50
turnin Flying Tiger Gourami##31443 |goto Krasarang Wilds 68.40,43.50
|next "menu"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent",{
description="This guide will walk you through becoming exalted with The Order of the Cloud Serpent faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Order of the Cloud Serpent') < Exalted end,
achieveid={6550},
patch='50004',
},[[
step
label "start"
Proceeding to Order of the Cloud Serpent Dailies |complete completedq(30142) |next "dailies" |only if completedq(30142)
Moving to the Order of the Cloud Serpent prequests. |next |complete not completedq(30142) |only if not completedq(30142)
step
#include "CS_PreQuests"
step
label "dailies"
Talk to Your Hatchling
|tip Your Hatchling is whichever color egg you chose in the prequests.
accept Catch!##30151 |goto The Jade Forest 57.50,45.30 |or 2
accept Pooped##31704 |goto The Jade Forest 57.50,45.30 |or 2
accept Feeding Time##30156 |goto The Jade Forest 57.50,45.30 |or 2
accept The Easiest Way To A Serpent's Heart##30154 |goto The Jade Forest 57.50,45.30 |or 2
accept Sweet as Honey##30150 |goto The Jade Forest 57.50,45.30 |or 2
Make sure Your Hatchling offers no more quests and click here |confirm
|only if not completedq(30143)
step
Talk to Your Hatchling
|tip Your Hatchling is whichever color egg you chose in the prequests.
accept Catch!##30151 |goto The Jade Forest 57.50,45.30 |or 2
accept Pooped##31704 |goto The Jade Forest 57.50,45.30 |or 2
accept Pooped##31716 |goto The Jade Forest 57.50,45.30 |or 2
accept Feeding Time##30156 |or 2
accept The Easiest Way To A Serpent's Heart##30154 |goto The Jade Forest 57.50,45.30 |or 2
accept Sweet as Honey##30150 |goto The Jade Forest 57.50,45.30 |or 2
Make sure Your Hatchling offers no more quests and click here. |confirm
|only if completedq(30143)
step
talk Instructor Skythorn##58228
accept Restoring the Balance##30155 |goto The Jade Forest 57.60,45.10 |or 2
accept Disarming the Enemy##30158 |goto The Jade Forest 57.60,45.10 |or 2
accept Thinning The Pack##31698 |goto The Jade Forest 57.60,45.10 |or 2
accept Weeping Widows##31706 |goto The Jade Forest 57.60,45.10 |or 2
accept A Tangled Web##31707 |goto The Jade Forest 57.60,45.10 |or 2
accept Monkey Mischief##31712 |goto The Jade Forest 57.60,45.10 |or 2
noquest
step
talk Jenova Longeye##58413
|tip NOTE: You will be able to accept Fragments of the Past at any level Archaeology, but won't be able to do the quest unless your skill in Archaeology is 525 or more.
accept Just a Flesh Wound##30148 |goto The Jade Forest 57.50,44.70 |only if skill("Pandaria Tailoring") >= 1
accept A Feast for the Senses##30149 |goto The Jade Forest 57.50,44.70 |only if skill("Cooking")>=525
accept Fragments of the Past##30147 |goto The Jade Forest 57.50,44.70 |only if skill("Archaeology")>=525
accept Snack Time##30146 |goto The Jade Forest 57.50,44.70 |only if skill("Fishing")>=1
She can also be found inside of the following building |goto The Jade Forest/0 57.30,45.70
step
talk Elder Anli##58564
accept Slitherscale Suppression##31194 |goto The Jade Forest/0 57.60,44.90 |or 2
accept Madcap Mayhem##31703 |goto The Jade Forest/0 57.60,44.90 |or 2
accept Dark Huntress##31701 |goto The Jade Forest/0 57.60,44.90 |or 2
accept On The Prowl##31702 |goto The Jade Forest/0 57.60,44.90 |or 2
accept The Seed of Doubt##31711 |goto The Jade Forest/0 57.60,44.90 |or 2
accept The Trainer's Challenge: Qua-Ro Whitebrow##31721 |goto The Jade Forest/0 57.60,44.90 |or 2
accept The Trainer's Challenge: Ace Longpaw##31717 |goto The Jade Forest/0 57.60,44.90 |or 2
accept The Trainer's Challenge: Suchi the Sweet##31720 |goto The Jade Forest/0 57.60,44.90 |or 2
accept The Trainer's Challenge: Big Bao##31718 |goto The Jade Forest/0 57.60,44.90 |or 2
accept The Big Kah-Oona##31715 |goto The Jade Forest/0 57.60,44.90 |or 2
noquest
step
talk Ningna Darkwheel##58509
accept Sprite Fright##31699 |goto The Jade Forest/0 58.30,45.00 |or
accept The Shoe Is On The Other Foot##31700 |goto The Jade Forest/0 58.30,45.00 |or
noquest
step
talk Suchi the Sweet##58510
accept Preservation##30159 |goto The Jade Forest/0 58.50,44.70 |or
accept Emptier Nests##30157 |goto The Jade Forest/0 58.50,44.70 |or
noquest
step
talk Big Bao##58508
accept Lingering Doubt##31709 |goto The Jade Forest/0 57.50,44.00
noquest
step
talk Qua-Ro Whitebrow##58511
accept Serpent's Scale##31708 |goto The Jade Forest/0 57.30,43.50
accept Saving the Serpents##31714 |goto The Jade Forest/0 57.30,43.50
noquest
step
talk Instructor Windblade##58420
accept The Sky Race##30152 |goto The Jade Forest 58.60,43.70
noquest
step
talk Ace Longpaw##58506
accept The Big Brew-haha##31713 |goto The Jade Forest 58.00,43.70
noquest
step
talk Instructor Windblade##58420
Tell her you are ready to start the Sky Race.
Ride your Dragon! |invehicle |goto The Jade Forest 58.60,43.70
|only if haveq(30152)
step
map The Jade Forest/0
path loop on; follow strict; dist 40
path	60.60,39.40	59.70,31.50	61.30,25.20
path	66.30,36.00	66.20,42.40	66.80,51.40
path	64.00,51.00	60.40,52.90	61.80,54.50
path	58.70,46.80	58.40,46.40	58.10,46.00
Follow this path and collect the checked flags hanging off of the Checkpoint balloons
As you fly, gain speed by flying through cloud rings
Pass 10 Checkpoints |q 30152/1
Pass underneath the Finish Line |q 30152/2
|only if haveq(30152)
step
talk Qua-Ro Whitebrow##58511
Challenge him to a duel!
Defeat Qua-Ro Whitebrow |q 31721/1 |goto The Jade Forest/0 57.30,43.50
|only if haveq(31721)
step
talk Ace Longpaw##58506
Challenge him to a duel!
Defeat Ace Longpaw |q 31717/1 |goto The Jade Forest/0 58.00,43.70
|only if haveq(31717)
step
talk Big Bao##58508
Challnge him to a duel!
Defeat Big Bao |q 31718/1 |goto The Jade Forest/0 57.50,44.00
|only if haveq(31718)
step
talk Suchi the Sweet##58510
Challenge her to a duel!
Defeat Suchi the Sweet |q 31720/1 |goto The Jade Forest/0 58.50,44.70
|only if haveq(31720)
stickystart "slitherharpoon"
stickystart "saltback"
step
kill Slitherscale Lizard-Lord##63536 |q 31194/1 |goto The Jade Forest/0 69.80,31.30
|only if haveq(31194)
step
label "slitherharpoon"
kill 8 Slitherscale saurok Slitherscale Ripper##58212+, Slitherscale Eggdrinker##63532+ |q 30155/1 |goto The Jade Forest/0 68.10,31.20 |only if haveq(30155)
click Slitherscale Weapons##210277 |only if haveq(30158)
collect 5 Slitherscale Harpoon##79025 |q 30158/1 |goto The Jade Forest/0 68.10,31.20 |only if haveq(30158)
click Serpent Egg##215392 |only if haveq(30159)
collect 8 Stolen Egg##79067 |q 30159/1 |goto The Jade Forest/0 68.10,31.20 |only if haveq(30159)
step
label "saltback"
kill Saltback Turtle##58218+, Saltback Yearling##58219+
collect 15 Saltback Meat Scrap##79028 |n
Use the meat scraps to make a Saltback meat |use Saltback Meat Scrap##79028
collect 3 Saltback Meat##79027 |n
Use the meat to feed your Hatchling |use Saltback Meat##79027 |q 30156/1 |goto The Jade Forest/0 64.60,33.30
|only if haveq(30156)
step
Use the Bouncy Ball in your bags. |use Bouncy Ball##79043
Catch the Bouncy Ball whenever your Hatchling tosses it up, this will be every second throw.
Catch the Ball #8# times |q 30151/1 |goto The Jade Forest/0 57.20,45.20
|only if haveq(30151)
step
click Hatchling Poop##214863
|tip It is all around this area.
collect 5 Tiny Bag of Poop##89052 |q 31704/1 |goto The Jade Forest/0 55.10,46.50
|only if haveq(31704)
step
click Hatchling Poop##214863
|tip It is all around this area.
collect 5 Big Bag of Poop##89053 |q 31716/1 |goto The Jade Forest/0 55.10,46.50
|only if haveq(31716)
step
Talk to Your Hatchling
|tip Your Hatchling is whichever color egg you chose in the prequests.
turnin Pooped##31704 |goto The Jade Forest/0 57.50,45.40
|only if haveq(31704)
step
Talk to Your Hatchling
|tip Your Hatchling is whichever color egg you chose in the prequests.
turnin Pooped##31716 |goto The Jade Forest/0 57.50,45.40
|only if haveq(31716)
stickystart "stolenboots"
step
kill Shadowfae Madcap##65613 |q 31703/1 |goto The Jade Forest/0 62.70,27.40
|only if haveq(31703)
step
_Enter_ the cave |goto The Jade Forest/0 64.40,25.80 < 10 |walk
kill Windward Huntress##63538 |q 31701/1 |goto The Jade Forest/0 64.70,25.70
|only if haveq(31701)
step
kill Windward Saber##65612 |q 31702/1 |goto The Jade Forest/0 63.80,22.30
|only if haveq(31702)
step
label "stolenboots"
kill Windward Tiger##63537 |only if haveq(30154)
collect 5 Tiger Flank##85282 |q 30154/1 |goto The Jade Forest/0 62.80,24.70 |only if haveq(30154)
kill 7 Shadowfae Trickster##65635+ |q 31699/1 |goto The Jade Forest/0 62.80,24.70 |only if haveq(31699)
kill 8 Windward Alpha+, Windward Tiger##63537+ |q 31698/1 |goto The Jade Forest/0 62.80,24.70 |only if haveq(31698)
click Stolen Boots##214868 |only if haveq(31700)
collect 14 Stolen Boots##89054 |q 31700/1 |goto The Jade Forest/0 62.80,24.70 |only if haveq(31700)
stickystart "widowspawn"
step
_Enter_ the cave |goto The Jade Forest/0 58.00,31.70 < 10 |walk
Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
Measure the Northeastern Sha Disturbance |q 31709/2 |goto The Jade Forest/15 62.70,25.70
|only if haveq(31709)
step
Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
Measure the Northwestern Sha Disturbance |q 31709/1 |goto The Jade Forest/15 37.00,31.90
|only if haveq(31709)
step
_Enter_ the cave |goto The Jade Forest/15 58.00,31.70 < 10 |walk
kill Seed of Doubt |q 31711/1 |goto The Jade Forest/15 35.70,40.20
|only if haveq(31711)
step
Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
Measure the Southern Sha Disturbance |q 31709/3 |goto The Jade Forest/15 61.00,74.10
|only if haveq(31709)
step
label "widowspawn"
_Enter_ the cave |goto The Jade Forest/15 58.00,31.70 < 10
kill Widowspawn##65658 |only if haveq(31710)
collect 100 Tiny Spider Eye##88907 |q 31710/1 |only if haveq(31710)
kill 7 Weeping Widow##65653+ |q 31706/1 |only if haveq(31706)
click Serpent's Scale##214844 |only if haveq(31708)
collect 25 Serpent's Scale##88895 |q 31708/1 |only if haveq(31708)
kill Widow's Web##65634+ |only if haveq(31707)
Free #5# Sri-La Villagers |q 31707/1 |only if haveq(31707)
|only if haveq(31706) or haveq(31707) or haveq(31708) or haveq(31710)
stickystart "rescueserp"
stickystart "oonabrew"
stickystart "oonagoon"
step
_Leave_ the cave |goto The Jade Forest/15 75.80,19.00 < 10 |only if haveq(31708) or haveq(31710) or haveq(31706) or haveq(31711) or haveq(31709) or haveq(31707) |walk
_Enter_ the Oona Kagu cave |goto The Jade Forest/0 57.70,27.70 < 10 |only if haveq(31715) |walk
kill 1 Lord Oona##65628 |q 31715/1 |goto The Jade Forest/16 45.80,77.80
|only if haveq(31715)
step
label "rescueserp"
clicknpc Serpent##128767
collect 10 Rescued Serpent##88894 |q 31714/1 |goto The Jade Forest/16 55.20,28.40
|only if haveq(31714)
step
label "oonabrew"
kill Oona Brewchugger##65624
click Stolen Sri-La Keg##214986
collect 100 Sri-La Stout##88855 |q 31713/1 |goto The Jade Forest/16 55.20,28.40
|only if haveq(31713)
step
label "oonagoon"
kill 13 Oona Goon##65621+, Oona Brewchugger##65624+, Oona Tuna-Catcher##65623+ |q 31712/1 |goto The Jade Forest/16 55.20,28.00
|only if haveq(31712)
step
Use your Silken Rope on _Windward Hatchlings_ |use Silken Rope##78947
Bring the Windward Hatchlings to the nest at |goto The Jade Forest/16 63.40,31.40
Return #6# Windward Hatchlings |q 30157/1 |goto The Jade Forest 64.50,31.10
|only if haveq(30157)
step
Use your Tailoring skill to create 8 Windwool Bandages
|tip You can also ask other players to sell you some bandages.
collect 8 Windwool Bandage##72985
|only if haveq(30148)
step
use the Windwool Bandage##72985
|tip Use them on Injured Hatchlings.
Bandage #8# Injured Hatchlings |q 30148/1 |goto The Jade Forest 63.90,31.10
|only if haveq(30148)
step
Use your Fishing skill to fish in the water here |cast Fishing##7620
|tip You will have to fish from Pools if you have low Fishing Skill.
collect 10 Sugar Minnow##79046 |q 30146/1 |goto The Jade Forest 57.00,43.00 |only if haveq(30146)
collect 10 Golden Carp##74866 |only if haveq(30149)
You can find more pools of fish here |goto The Jade Forest/0 54.80,51.50
|only if haveq(30146) or haveq(30149)
step
Use your Cooking skill to create 5 Fish Cakes
create 5 Fish Cake##104297,Cooking,5 total |q 30149/1 |or
buy 5 Fish Cake##74641 |or
You can ask other players to sell you some, if they happen to have leftovers
|only if haveq(30149)
step
kill Honeykeeper##58363+
collect 30 Honeycomb##79030 |q 30150/1 |goto The Jade Forest 55.10,47.20
|only if haveq(30150)
step
talk Ace Longpaw##58506
turnin The Big Brew-haha##31713 |goto The Jade Forest 58.00,43.70
|only if haveq(31713)
step
talk Elder Anli##58564
|tip You will only have a couple of these quests.
turnin Slitherscale Suppression##31194 |goto The Jade Forest 57.60,44.90
turnin Dark Huntress##31701 |goto The Jade Forest 57.60,44.90
turnin On The Prowl##31702 |goto The Jade Forest 57.60,44.90
turnin Restoring the Balance##30155 |goto The Jade Forest 57.60,44.90
turnin Disarming the Enemy##30158 |goto The Jade Forest 57.60,44.90
turnin Madcap Mayhem##31703 |goto The Jade Forest 57.60,44.90
turnin The Easiest Way To A Serpent's Heart##30154 |goto The Jade Forest 57.60,44.90
turnin Sprite Fright##31699 |goto The Jade Forest 57.60,44.90
turnin Thinning The Pack##31698 |goto The Jade Forest 57.60,44.90
turnin The Shoe Is On The Other Foot##31700 |goto The Jade Forest 57.60,44.90
turnin Weeping Widows##31706 |goto The Jade Forest 57.60,44.90
turnin The Seed of Doubt##31711 |goto The Jade Forest 57.60,44.90
turnin A Tangled Web##31707 |goto The Jade Forest 57.60,44.90
turnin The Sky Race##30152 |goto The Jade Forest 57.60,44.90
turnin The Trainer's Challenge: Qua-Ro Whitebrow##31721 |goto The Jade Forest 57.60,44.90
turnin The Trainer's Challenge: Ace Longpaw##31717 |goto The Jade Forest 57.60,44.90
turnin The Trainer's Challenge: Suchi the Sweet##31720 |goto The Jade Forest 57.60,44.90
turnin The Trainer's Challenge: Big Bao##31718 |goto The Jade Forest 57.60,44.90
turnin Preservation##30159 |goto The Jade Forest 57.60,44.90
turnin Lingering Doubt##31709 |goto The Jade Forest 57.60,44.90
turnin Emptier Nests##30157 |goto The Jade Forest 57.60,44.90
turnin Monkey Mischief##31712 |goto The Jade Forest 57.60,44.90
turnin The Big Kah-Oona##31715 |goto The Jade Forest 57.60,44.90
turnin Saving the Serpents##31714 |goto The Jade Forest 57.60,44.90
step
Talk to Your Hatchling
|tip Your Hatchling is whichever color egg you chose in the prequests.
turnin Tiny Treats##31710 |goto The Jade Forest 57.50,45.30 |only if haveq(31710)
turnin Sweet as Honey##30150 |goto The Jade Forest 57.50,45.30 |only if haveq(30150)
turnin Feeding Time##30156 |goto The Jade Forest 57.50,45.30 |only if haveq(30156)
turnin Pooped##31704 |goto The Jade Forest 57.50,45.30 |only if haveq(31704)
turnin The Easiest Way To A Serpent's Heart##30154 |only if haveq(30154)
|only if haveq(31710) or haveq(30150) or haveq(30156) or haveq(31704) or haveq(30154)
step
Talk to Your Hatchling |goto The Jade Forest 57.50,45.30
|tip Your Hatchling is whichever color egg you chose in the prequests.
confirm
|only if not completedq(30143)
step
Talk to Your Hatchling |goto The Jade Forest 57.50,45.30
|tip Your Hatchling is whichever color egg you chose in the prequests.
confirm
|only if completedq(30143)
step
Open your world map, find dig sites in Pandaria, then go to them
|tip They look like small shovel icons on your world map that spawn in random places. Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 6 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
collect 6 Serpentrider Relic## |q 30147/1
|only if haveq(30147)
step
talk Jenova Longeye##58413
turnin Just a Flesh Wound##30148 |goto The Jade Forest 57.50,44.70 |only if haveq(30148)
turnin A Feast for the Senses##30149 |goto The Jade Forest 57.50,44.70 |only if skill("Cooking")>=525
turnin Fragments of the Past##30147 |goto The Jade Forest 57.50,44.70
turnin Snack Time##30146 |goto The Jade Forest 57.50,44.70
step
Talk to Your Hatchling |goto The Jade Forest 57.50,45.40
|tip Your Hatchling is whichever color egg you chose in the prequests.
turnin Sweet as Honey##30150
|only if haveq(30150)
step
talk Elder Anli##58564
turnin Catch!##30151 |goto The Jade Forest 57.60,44.90
|only if haveq(30151)
step
talk Elder Anli##58564
accept Needle Me Not##31705 |goto The Jade Forest 57.60,44.90
|only if completedq(30151)
step
Use the Golden Honey in your bags |use Golden Honey##89113
kill Orchard Needler |q 31705/1 |goto The Jade Forest 57.00,41.20
|only if haveq(31705)
step
talk Elder Anli##58564
turnin Needle Me Not##31705 |goto The Jade Forest 57.60,44.90
|next "exalted" |only if rep("Order of the Cloud Serpent")==Exalted
|next "revered" |only if rep("Order of the Cloud Serpent")==Revered
|next "end" |only if rep("Order of the Cloud Serpent")<=Revered
step
label "revered"
talk San Redscale##58414
buy 1 Grand Commendation of the Order of the Cloud Serpent##93229 |n
Use the Commendation of the Order of the Cloud Serpent you just purchased |goto The Jade Forest 56.60,44.40 |complete QC:GetReputation("Order of the Cloud Serpent").hasBonus |use Grand Commendation of the Order of the Cloud Serpent##93229
|only if rep("Order of the Cloud Serpent")>=Revered
step
talk Elder Anli##58564
accept They Grow Like Weeds##30143 |goto The Jade Forest 57.60,44.90
step
talk Instructor Windblade##58420
Ask Instructor Windbalde how your serpent is doing
Speak to Instructor Windblade |q 30143/1 |goto The Jade Forest 58.60,43.70
step
talk Instructor Windblade##58420
turnin They Grow Like Weeds##30143 |goto The Jade Forest 58.60,43.70
accept Flight Training: Ring Round-Up##30144 |goto The Jade Forest 58.60,43.70
step
The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction
clicknpc Golden Cloud Serpent##58429
clicknpc Azure Cloud Serpent##58441
clicknpc Jade Cloud Serpent##58442
Ride your Cloud Serpent |invehicle |c
|only if haveq(30144)
step
Fly your Cloud Serpent through the rings made from clouds
Fly through #6# Cloud Rings |q 30144/1
step
Click the Leave Vehicle button |outvehicle |c |goto The Jade Forest 58.60,43.70
step
talk Instructor Windblade##58420
turnin Flight Training: Ring Round-Up##30144 |goto The Jade Forest 58.60,43.70
accept Flight Training: Full Speed Ahead##30145 |goto The Jade Forest 58.60,43.70
step
The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction
clicknpc Golden Cloud Serpent##58429
clicknpc Azure Cloud Serpent##58441
clicknpc Jade Cloud Serpent##58442
Ride your Cloud Serpent |invehicle |c
|only if haveq(30145)
step
Follow Instructor Windblade through the course, her mounts flies faster than yours so fly through some of the cloud rings to maintain speed with your guide
If you move too slowly or get too far away from the guide, the course will restart
Finish the course |q 30145/1
step
talk Instructor Windblade##58420
turnin Flight Training: Full Speed Ahead##30145 |goto The Jade Forest 58.60,43.70
accept Flight Training: In Due Course##30187 |goto The Jade Forest 58.60,43.70
step
The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction
clicknpc Golden Cloud Serpent##58429
clicknpc Azure Cloud Serpent##58441
clicknpc Jade Cloud Serpent##58442
Ride your Cloud Serpent |invehicle |c
|only if haveq(30187)
step
map The Jade Forest/0
path loop on; follow strict; dist 40
path	60.60,39.40	59.70,31.50	61.30,25.20
path	66.30,36.00	66.20,42.40	66.80,51.40
path	64.00,51.00	60.40,52.90	61.80,54.50
path	58.70,46.80	58.40,46.40
Follow this path and collect the checked flags hanging off of the Checkpoint balloons
As you fly, gain speed by flying through cloud rings
Pass 10 Checkpoints |q 30187/1
step
talk Instructor Windblade##58420
turnin Flight Training: In Due Course##30187 |goto The Jade Forest/0 58.60,43.70
|next "end"
step
label "exalted"
talk Elder Anli##58564
accept Riding the Skies##31811 |goto The Jade Forest/0 57.60,45.00
step
Watch the cinematic
Join the Order of the Cloud Serpent |q 31811/1
step
talk Elder Anli##58564
turnin Riding the Skies##31811 |goto The Jade Forest/0 57.60,45.00
step
Proceeding to the next step |next "end" |only if default
Proceeding to Riding the Skies Quest |next "exalted" |only if rep('Order of the Cloud Serpent')==Exalted
step
label "exalted"
talk Elder Anli##58564
accept Riding the Skies##31810 |goto The Jade Forest/0 57.70,44.90
step
talk Elder Anli##58564
turnin Riding the Skies##31810 |goto The Jade Forest/0 57.70,44.90
step
label "end"
This the end of our daily guide
Click here to go back to the beginning |confirm |next "start"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Pearlfin Jinyu",{
description="This guide will walk you through becoming exalted with Pearlfin Jinyu faction.",
},[[
step
For this achievement you will need to complete a specific quest line that becomes available whilst doing The Jade Forest leveling zone
Check out our Jade Forest guide to accomplish this |next "Leveling Guides\\Pandaria (10-70)\\The Jade Forest (10-70)" |confirm |or
Earn Exalted reputation with the Pearlfin Jinyu |complete rep("Pearlfin Jinyu")>=Exalted |or
step
Congratulations!
You are now exalted with the "Pearlfin Jinyu."
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Shado-Pan Assault",{
description="This guide will walk you through becoming exalted with the Shado-Pan Assault faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Shado-Pan Assault') < Exalted end,
achieveid={6366},
patch='50004',
},[[
step
label "shado_dailies"
Click here if _Master Snowdrift_ is the questgiver today |confirm |goto Townlong Steppes 49.50,70.60
Click here if _Ban Bearheart_ is the questgiver today |confirm  |goto Townlong Steppes 49.00,70.50 |next "bearheart"
Click here if _Ling of the Six Pools_ is the questgiver today|confirm  |goto Townlong Steppes 49.00,71.30 |next "ling"
step
talk Master Snowdrift##63009
accept The Challenger's Ring: Chao the Voice##31127 |goto Townlong Steppes 49.40,70.60
|only if not completedq(31127)
|only if rep('Shado-Pan')>=Honored
step
talk Master Snowdrift##63009
accept The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto Townlong Steppes 49.40,70.60
|only if rep('Shado-Pan')>=Revered
step
talk Lao-Chin the Iron Belly##62978
I'm here to challenge you! |q 31128/1 |goto Townlong Steppes 49.30,72.00
|only if haveq(31128)
step
talk Lao-Chin the Iron Belly##63135
Tell him: _"All right, let's do this!"_
Defeat Lao-Chin the Iron Belly |q 31128/2 |goto Townlong Steppes 50.60,67.80
|only if haveq(31128)
step
talk Master Snowdrift##63009
turnin The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto Townlong Steppes 49.60,70.50
|only if haveq(31128)
step
talk Chao the Voice##62550
Tell her you're here to challenge her! |q 31127/1 |goto Townlong Steppes 49.70,70.50
|only if haveq(31127)
step
talk Chao the Voice##63125
Let's do this.
Defeat Chao the Voice |q 31127/2 |goto Townlong Steppes 50.10,68.30
|only if haveq(31127)
step
talk Master Snowdrift##63009
turnin The Challenger's Ring: Chao the Voice##31127 |goto Townlong Steppes 49.40,70.60
|only if haveq(31127)
step
talk Master Snowdrift##63009
|tip You will only be able to accept 4 of the following dailies.
accept Assault Fire Camp Gai-Cho##31113 |goto Townlong Steppes 49.40,70.60 |or 4
accept Assault Deadtalker's Plateau##31114 |goto Townlong Steppes 49.40,70.60 |or 4
accept The Enemy of My Enemy... Is Still My Enemy!##31119 |goto Townlong Steppes 49.40,70.60 |or 4
accept Spirit Dust##31116 |goto Townlong Steppes 49.40,70.60 |or 4
accept The Deadtalker Cipher##31118 |goto Townlong Steppes 49.40,70.60 |or 4
step
Talk to Chao the Voice or Protector Yi and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
|tip Yi patrols so you may need to search for him.
talk Chao the Voice##62550 |goto Townlong Steppes 49.70,70.50
talk Protector Yi##62546 |goto Townlong Steppes 49.30,71.30
confirm
|only if not completedq(31128)
step
Talk to Chao the Voice, Protector Yi or Lao-Chin the Iron Belly and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
|tip Yi patrols so you may need to search for him.
talk Chao the Voice##62550 |goto Townlong Steppes 49.70,70.50
talk Protector Yi##62546 |goto Townlong Steppes 49.30,71.30
talk Lao-Chin the Iron Belly##62978 |goto Townlong Steppes 49.30,71.90
confirm
|only if completedq(31128)
step
kill Gai-Cho Yaungol##62552+, Gai-Cho Earthtalker##62553+, Gai-Cho Pitchthrower##62608+ |only if haveq(31113)
Kill 16 Gai-Cho Yaungol, Earthtalkers, or Pitchthrowers. |q 31113/1 |goto Townlong Steppes 63.40,43.30 |only if haveq(31113)
click Highly Explosive Yaungol Oil Barrel##212877 |only if haveq(31119)
collect Highly Explosive Yaungol Oil##84762 |n |goto Townlong Steppes 63.40,43.30
|tip You can only carry 10 at a time, so you may need to make multiple trips. |only if haveq(31119)
step
Use your Highly Explosive Yaungol Oil to kill as many enemies in this area as you can in 1 hit. |use Highly Explosive Yaungol Oil Barrel##84762
kill Gai-Cho Boltshooter##62589+, Gai-Cho Cauterizer##62577+, Gai-Cho Gatewatcher##62568+, Kri'thik Aggressor##62572+, Kri'thik Screecher##62602+
Kill 100 Gai-Cho Battledfired Combatants |q 31119/1 |goto Townlong Steppes 60.20,48.60
If you run out of oil, you can find more around this area |goto Townlong Steppes 63.40,43.30
|only if haveq(31119)
stickystart "spiritremains"
step
kill Deadtalker Crusher##62844+, Deadtalker Corpsedefiler##62677+
collect Ciphered Scroll##84759 |q 31118/1  |goto Townlong Steppes 51.10,51.80
|only if haveq(31118)
step
label "spiritremains"
kill 8 Deadtalker Corpsedefiler##62677+ |q 31114/1 |goto Townlong Steppes 51.10,51.80 |only if haveq(31114)
kill Deadtalker Crusher##62844 |q 31114/2 |goto Townlong Steppes 51.10,51.80
|tip He is elite but with your companion you should be able to defeat him. |only if haveq(31114)
kill Defiled Spirit##62679 |only if haveq(31116)
collect Ancient Spirit Dust##84727 |n |only if haveq(31116)
click Defiled Yaungol Remains##212779 |only if haveq(31116)
Return 8 Spirits to Their Remains |q 31116/1 |goto Townlong Steppes 51.10,51.80 |only if haveq(31116)
step
Next to you will either be Chao the Voice or Protector Yi:
Talk to Chao the Voice
Talk to Protector Yi
turnin Assault Fire Camp Gai-Cho##31113
turnin Assault Deadtalker's Plateau##31114
turnin The Enemy of My Enemy... Is Still My Enemy!##31119
turnin Spirit Dust##31116
turnin The Deadtalker Cipher##31118
|only if not completedq(31128)
step
Next to you will either be Chao the Voice, Protector Yi, or Lao-Chin the Iron Belly:
Talk to Chao the Voice
Talk to Protector Yi
Talk to Lao-Chin the Iron Belly
turnin Assault Fire Camp Gai-Cho##31113
turnin Assault Deadtalker's Plateau##31114
turnin The Enemy of My Enemy... Is Still My Enemy!##31119
turnin Spirit Dust##31116
turnin The Deadtalker Cipher##31118
|only if completedq(31128)
step
Click the Quest Discovered box that displays on the right side of the screen under your minimap
accept Uruk!##31117 |or
accept Cheng Bo!##31120 |or
step
kill Uruk##62613 |q 31117/1 |goto Townlong Steppes 50.40,48.90
step
kill Cheng Bo##62554 |q 31120/1 |goto Townlong Steppes 60.70,42.10
step
talk Master Snowdrift##63009
turnin Uruk!##31117 |goto Townlong Steppes 49.60,70.50 |or
turnin Cheng Bo!##31120 |goto Townlong Steppes 49.60,70.50 |or
|next "end"
step
label "bearheart"
talk Ban Bearheart##62304
accept The Challenger's Ring: Snow Blossom##31038 |goto Townlong Steppes 49.00,70.40
|only if not completedq(31038)
|only if rep('Shado-Pan')>=Honored
step
talk Ban Bearheart##62304
accept The Challenger's Ring: Yalia Sagewhisper##31104 |goto Townlong Steppes 49.00,70.40
|only if rep('Shado-Pan')>=Revered
step
talk Snow Blossom##62380
Ask her to meet in the Challenger's Ring. |q 31038/1 |goto Townlong Steppes 48.90,70.10
|only if haveq(31038)
step
talk Snow Blossom##62834
I challenge you!
Defeat Snow Blossom |q 31038/2 |goto Townlong Steppes 50.20,67.90
|only if haveq(31038)
step
talk Ban Bearheart##62304
turnin The Challenger's Ring: Snow Blossom##31038 |goto Townlong Steppes 49.00,70.40
|only if haveq(31038)
step
talk Yalia Sagewhisper##62303
Ask her to meet you in the Challenger's Ring |q 31104/1 |goto Townlong Steppes 48.90,70.00
|only if haveq(31104)
step
talk Yalia Sagewhisper##62850
I challenge you!
Defeat Yalia Sagewhisper |q 31104/2 |goto Townlong Steppes 50.40,67.70
|only if haveq(31104)
step
talk Ban Bearheart##62304
turnin The Challenger's Ring: Yalia Sagewhisper##31104 |goto Townlong Steppes 49.00,70.40
|only if haveq(31104)
step
talk Ban Bearheart##62304
accept Born Free##31047 |goto Townlong Steppes 49.00,70.40 |or 4
accept The Mogu Menace##31105 |goto Townlong Steppes 49.00,70.40 |or 4
accept The Mogu Menace##31106 |goto Townlong Steppes 49.00,70.40 |or 4
accept The Mogu Menace##31039 |goto Townlong Steppes 49.00,70.40 |or 4
accept Bronze Claws##31044 |goto Townlong Steppes 49.00,70.40 |or 4
accept Illusions Of The Past##31045 |goto Townlong Steppes 49.00,70.40 |or 4
accept Grave Consequences##31048 |goto Townlong Steppes 49.00,70.40 |or 4
accept Dark Arts##31043 |goto Townlong Steppes 49.00,70.40 |or 4
accept Onyx Hearts##31042 |goto Townlong Steppes 49.00,70.40 |or 4
accept Spiteful Sprites##31040 |goto Townlong Steppes 49.00,70.40 |or 4
accept Egg Rescue!##31041 |goto Townlong Steppes 49.00,70.40 |or 4
accept Little Hatchlings##31046 |goto Townlong Steppes 49.00,70.40 |or 4
step
Talk to Snow Blossom or Fei Li and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
talk Snow Blossom##62380 |goto Townlong Steppes 48.90,70.10
talk Fei Li##62354 |goto Townlong Steppes 48.80,70.20
confirm
|only if not completedq(31104)
step
Talk to Snow Blossom, Fei Li, or Yalia Sagewhisper and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
talk Snow Blossom##62380 |goto Townlong Steppes 48.90,70.10
talk Fei Li##62354 |goto Townlong Steppes 48.80,70.20
talk Yalia Sagewhisper##62303 |goto Townlong Steppes 48.80,70.00
confirm
|only if completedq(31104)
step
talk Moshu the Arcane##62810
accept Through the Portal##31110 |goto Townlong Steppes 28.80,22.40
|only if not completedq(31110)
step
clicknpc Ball and Chain##62539 |only if haveq(31047)
Free 6 Wild Cloudriders |q 31047/1 |goto Townlong Steppes 32.80,25.10 |only if haveq(31047)
click Shan'ze Cage##215573 |goto Townlong Steppes 32.80,25.10 |only if haveq(31046)
Free 20 Cloudrider Hatchlings. |q 31046/1 |goto Townlong Steppes 32.80,25.10 |only if haveq(31046)
click Shiny Egg##214481 |only if haveq(31041)
collect 8 Cloudrunner Egg##83129 |q 31041/1 |goto Townlong Steppes 32.80,25.10 |only if haveq(31041)
|only if haveq(31041) or haveq(31046) or haveq(31047)
stickystart "bronzeclaw"
stickystart "darkwoodscharmer"
stickystart "arcanepowder"
step
kill 3 Shan'ze Illusionist##62440+ |q 31045/1 |goto Townlong Steppes 24.40,15.20 |only if haveq(31045)
click Shan'ze Tablet##212319 |only if haveq(31043)
collect 8 Shan'ze Tablet##83130 |q 31043/1 |goto Townlong Steppes 24.40,15.20 |only if haveq(31043)
click Mogu Burial Urn##212324 |only if haveq(31048)
kill 24 Shan'ze Ancestor##62285+ |q 31048/1 |goto Townlong Steppes 24.40,15.20 |only if haveq(31048)
kill Onyx Stormclaw##62448 |only if haveq(31042)
collect 4 Onyx Heart##83138 |q 31042/1 |goto Townlong Steppes 24.40,15.20 |only if haveq(31042)
step
label "bronzeclaw"
kill Shan'ze Serpentbinder##62293+, Shan'ze Beastmaster##62530+ |only if haveq(31105) or haveq(31106) or haveq (31039)
Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31105/1 |goto Townlong Steppes 28.50,18.50 |only if haveq(31105)
Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31106/1 |goto Townlong Steppes 28.50,18.50 |only if haveq(31106)
Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31039/1 |goto Townlong Steppes 28.50,18.50 |only if haveq(31039)
kill Bronze Quilen##62266+ |only if haveq(31044)
collect 20 Bronze Claw##83153+ |q 31044/1 |goto Townlong Steppes 28.50,18.50 |only if haveq(31044)
step
label "darkwoodscharmer"
kill Darkwoods Pixie##62268+, Darkwoods Charmer##62457+
Kill 30 Darkwoods Sprites or Darkwoods Charmers. |q 31040/1 |goto Townlong Steppes 23.00,19.50
|only if haveq(31040)
step
label "arcanepowder"
kill Shan'ze Serpentbinder##62293+, Shan'ze Illusionist##62440+, Shan'ze Ancestor##62285+, Shan'ze Beastmaster##62515+, Darkwoods Charmer##62520
collect 1000 Ancient Arcane Powder##84102+ |q 31110/1
|only if haveq(31110)
step
Next to you will either be Fei Li or Snow Blossom
talk Fei Li##62354
talk Snow Blossom##62380
turnin The Mogu Menace##31105
turnin The Mogu Menace##31106
turnin The Mogu Menace##31039
turnin Bronze Claws##31044
turnin Illusions Of The Past##31045
turnin Grave Consequences##31048
turnin Dark Arts##31043
turnin Onyx Hearts##31042
turnin Born Free##31047
turnin Spiteful Sprites##31040
turnin Egg Rescue!##31041
turnin Little Hatchlings##31046
accept When The Dead Speak##31062 |or
accept Riding the Storm##31061 |or
accept In Sprite Of Everything##31049 |or
|only if not completedq(31104)
step
Next to you will either be Fei Li, Snow Blossom, or Yalia Sagewhisper
talk Fei Li##62354
talk Snow Blossom##62380
talk Yalia Sagewhisper##62303
turnin The Mogu Menace##31105
turnin The Mogu Menace##31106
turnin The Mogu Menace##31039
turnin Bronze Claws##31044
turnin Illusions Of The Past##31045
turnin Grave Consequences##31048
turnin Dark Arts##31043
turnin Onyx Hearts##31042
turnin Born Free##31047
turnin Spiteful Sprites##31040
turnin Egg Rescue!##31041
turnin Little Hatchlings##31046
accept When The Dead Speak##31062 |or
accept Riding the Storm##31061 |or
accept In Sprite Of Everything##31049 |or
|only if completedq(31104)
step
Use the Bronze Claws on the Cloudrunners around this area |use Bronze Claws##83134
kill Shan'ze Cloudrunner##62584
Free 8 Shan'ze Cloudriders |q 31061/1 |goto Townlong Steppes 30.90,12.60
|only if haveq(31061)
step
Click the Leave Vehicle button |outvehicle
|only if haveq(31061)
step
_Enter_ the tunnel |goto Townlong Steppes 20.30,15.80 < 15
kill Darkwoods Faerie##62522 |q 31049/1 |goto Townlong Steppes 19.50,13.80
|only if haveq(31049)
step
_Leave_ the tunnel |goto Townlong Steppes 20.30,15.80 < 15
kill Shan'ze Deathspeaker##62559 |q 31062/1 |goto Townlong Steppes 32.30,9.50
|tip Make sure you destroy his Spirit Gems, if you let them pile up they can overwhelm you.
|only if haveq(31062)
step
talk Moshu the Arcane##62810
turnin Through the Portal##31110 |goto Townlong Steppes 28.80,22.40
|only if haveq(31110)
step
talk Ban Bearheart##62304
turnin When The Dead Speak##31062 |goto Townlong Steppes 49.00,70.40
turnin Riding the Storm##31061 |goto Townlong Steppes 49.00,70.40
turnin In Sprite Of Everything##31049 |goto Townlong Steppes 49.00,70.40
|next "end"
step
label "ling"
talk Ling of the Six Pools##63614
accept The Challenger's Ring: Hawkmaster Nurong##31220 |goto Townlong Steppes 49.00,71.30
|only if not completedq(31220)
|only if rep('Shado-Pan')>=Honored
step
talk Ling of the Six Pools##63614
accept The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto Townlong Steppes 49.00,71.30
|only if rep('Shado-Pan')>=Revered
step
talk Tenwu of the Red Smoke##63616
Ask him to meet you in the Challenger's Ring |q 31221/1 |goto Townlong Steppes 48.90,71.20
|only if haveq(31221)
step
talk Tenwu of the Red Smoke##64471
Let's see if you can back that talk up
Defeat Temwu of the Red Smoke |q 31221/2 |goto Townlong Steppes 50.60,68.50
|only if haveq(31221)
step
talk Ling of the Six Pools##63614
turnin The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto Townlong Steppes 49.00,71.30
|only if haveq(31221)
step
talk Hawkmaster Nurong##63618
Ask him to meet you in the Challenger's Ring |q 31220/1 |goto Townlong Steppes 49.00,70.90
|only if haveq(31220)
step
talk Hawkmaster Nurong##64470
Let's go!
Defeat Hawkmaster Nurong |q 31220/2 |goto Townlong Steppes 50.70,68.20
|only if haveq(31220)
step
talk Ling of the Six Pools##63614
turnin The Challenger's Ring: Hawkmaster Nurong##31220 |goto Townlong Steppes 49.00,71.30
|only if haveq(31220)
step
talk Ling of the Six Pools##63614
accept Sra'vess Wetwork##31196 |goto Townlong Steppes 49.00,71.30 |or 4
accept The Bigger They Come...##31197 |goto Townlong Steppes 49.00,71.30 |or 4
accept A Morale Victory##31198 |goto Townlong Steppes 49.00,71.30 |or 4
accept Destroy the Siege Weapons!##31199 |goto Townlong Steppes 49.00,71.30 |or 4
accept Fumigation##31200 |goto Townlong Steppes 49.00,71.30 |or 4
accept Friends, Not Food!##31201 |goto Townlong Steppes 49.00,71.30 |or 4
step
Talk to Hawkmaster Nurong or Taoshi and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
talk Hawkmaster Nurong##63618 |goto Townlong Steppes 48.70,71.20
talk Taoshi##63617 |goto Townlong Steppes 48.70,71.00
confirm
|only if not completedq(31221)
step
Talk to Hawkmaster Nurong, Taoshi, or Tenwu of the Red Smoke and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
talk Hawkmaster Nurong##63618 |goto Townlong Steppes 48.70,71.20
talk Taoshi##63617 |goto Townlong Steppes 48.70,71.00
talk Tenwu of the Red Smoke##63616 |goto Townlong Steppes 48.90,71.20
confirm
|only if completedq(31221)
step
talk Ku-Mo##65341
accept Seeking Father##30933 |goto Townlong Steppes 48.70,71.10
If this quest is unavailable, click here. |confirm
|only if not completedq(30933)
stickystart "lessergreatermantid"
step
click Sra'thik Siege Weapon##213311
Small Southern Siege Weapon destroyed |q 31199/2 |goto Townlong Steppes 27.50,54.60
|only if haveq(31199)
step
click Sra'thik Siege Weapon##213311
Large Southern Siege Weapon destroyed |q 31199/1 |goto Townlong Steppes 25.80,53.80
|only if haveq(31199)
step
click Sra'thik Idol##213309
Southern Idol destroyed |q 31198/1 |goto Townlong Steppes 23.50,55.50
|only if haveq(31198)
step
click Sra'thik Idol##213309
Central Idol destroyed |q 31198/3 |goto Townlong Steppes 21.50,49.20
|only if haveq(31198)
step
click Sra'thik Siege Weapon##213311
Large Northern Siege Weapon destroyed |q 31199/3 |goto Townlong Steppes 27.20,41.20
|only if haveq(31199)
step
click Sra'thik Siege Weapon##213311
Small Northern Siege Weapon destroyed |q 31199/4 |goto Townlong Steppes 26.20,39.80
|only if haveq(31199)
step
click Sra'thik Idol##213309
Eastern Idol destroyed |q 31198/4 |goto Townlong Steppes 27.80,41.90
|only if haveq(31198)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Egg Chamber bombed |q 31200/3 |goto Townlong Steppes 23.60,44.70
|only if haveq(31200)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Torture Cell bombed |q 31200/4 |goto Townlong Steppes 22.00,41.60
|only if haveq(31200)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Slaughtering Pit bombed |q 31200/5 |goto Townlong Steppes 21.20,43.20
|only if haveq(31200)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Amber Vault bombed |q 31200/1 |goto Townlong Steppes 21.00,45.90
|only if haveq(31200)
step
click Sra'thik Idol##213309
Western Idol destroyed |q 31198/2 |goto Townlong Steppes 16.20,45.80
|only if haveq(31198)
step
talk Shado-Pan Trainee##64459
Tell them "No you're not!"
Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/3 |goto Townlong Steppes 17.60,58.00
|only if haveq(31201)
step
talk Shado-Pan Trainee##64460
Tell them "No you're not!"
Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/2 |goto Townlong Steppes 17.40,57.00
|only if haveq(31201)
step
talk Sentinel Ku-Yao##61694
Tell him his son has been looking for him
Search for Sentinel Ku-Yao. |q 30933/1 |goto Townlong Steppes 17.40,57.00
|only if haveq(30933)
step
talk Shado-Pan Trainee##64461
Tell them "No you're not!"
Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/1 |goto Townlong Steppes 18.00,53.50
|only if haveq(31201)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Nutriment Cell bombed |q 31200/2 |goto Townlong Steppes 23.90,47.30
|only if haveq(31200)
step
label "lessergreatermantid"
kill Sra'thik Mutilator##63678+, Sra'thik Cacophyte##63680+, Sra'thik Drone##63677+, Sra'thik Regenerator##63681+, Sra'thik Swiftwing##63683+ |only if haveq(31196)
Kill 15 Lesser Sra'thik mantid. |q 31196/1 |only if haveq(31196)
kill Sra'thik Swarm-Leader##63685+, Sra'thik Vessguard##63686+, Sra'thik Will-Breaker##63684+, Sra'thik Deathmixer##63688+ |only if haveq(31197)
Kill 4 Greater Sra'thik mantid. |q 31197/1 |only if haveq(31197)
step
Next to you is either Hawkmaster Nurong or Taoshi
talk Taoshi##63617
talk Hawkmaster Nurong##63618
turnin Sra'vess Wetwork##31196
turnin The Bigger They Come...##31197
turnin A Morale Victory##31198
turnin Destroy the Siege Weapons!##31199
turnin Fumigation##31200
turnin Friends, Not Food!##31201
|only if not completedq(31221)
step
Next to you is either Hawkmaster Nurong, Taoshi, or Tenwu.
Talk to Taoshi
Talk to Hawkmaster Nurong
Talk to Tenwu of the Red Smoke
turnin Sra'vess Wetwork##31196
turnin The Bigger They Come...##31197
turnin A Morale Victory##31198
turnin Destroy the Siege Weapons!##31199
turnin Fumigation##31200
turnin Friends, Not Food!##31201
|only if completedq(31221)
step
Click the Quest Discovered box that displays on the right side of the screen under your minimap
accept Target of Opportunity: Sra'thik Hivelord##31204 |or
accept Target of Opportunity: Sra'thik Swarmlord##31203 |or
step
kill Sra'thik Swarmlord##63693 |q 31203/1 |goto Townlong Steppes 16.40,40.90
|only if haveq(31203)
step
_Enter_ the building |goto Townlong Steppes 27.10,44.10 < 15
kill Sra'thik Hivelord##63694 |q 31204/1 |goto Townlong Steppes 24.30,44.00
|only if haveq(31204)
step
_Leave_ the building |goto Townlong Steppes 27.10,44.10 < 15
talk Ku-Mo##65341
turnin Seeking Father##30933 |goto Townlong Steppes 48.70,71.10
|only if haveq(30933)
step
talk Ling of the Six Pools##63614
turnin Target of Opportunity: Sra'thik Hivelord##31204 |goto Townlong Steppes 49.00,71.40 |or
turnin Target of Opportunity: Sra'thik Swarmlord##31203 |goto Townlong Steppes 49.00,71.40 |or
|next "end"
step
label "end"
talk Rushi the Fox##64595 |goto Townlong Steppes 48.80,70.60
buy 1 Grand Commendation of the Shado-Pan##93220 |n
Use the Commendation of the Shado-Pan you just purchased |complete QC:GetReputation("Shado-Pan").hasBonus |use Grand Commendation of the Shado-Pan##93220
|only if rep("Shado-Pan")>=Revered
step
talk Master Snowdrift##63009
accept Mogu Incursions##31266 |goto Townlong Steppes 49.40,70.60
|only if rep('Shado-Pan')==Exalted and not completedq(31266)
step
kill Shan'ze Spymaster##63888 |q 31266/1 |goto Townlong Steppes 48.80,58.60
|only if rep('Shado-Pan')==Exalted and not completedq(31266)
step
talk Master Snowdrift##63009
turnin Mogu Incursions##31266 |goto Townlong Steppes 49.40,70.60
accept Surprise Attack!##31277 |goto Townlong Steppes 49.40,70.60
|only if rep('Shado-Pan')==Exalted and not completedq(31277)
step
talk Ban Bearheart##63908
Tell him "Let's go".
Join the battle of Niuzao Temple |q 31277/1 |goto Townlong Steppes 42.60,63.90
|only if haveq(31277)
step
Wait for the dialogue to end and fight off the invasion.
kill Shan'ze Brutalizer##63933+, Hei Feng##63920
|tip When he casts Deep Breath step behind him.
Defeat the Mogu Invasion |q 31277/2 |goto Townlong Steppes 41.30,60.00
|only if haveq(31277)
step
talk Ban Bearheart##62304
turnin Surprise Attack!##31277 |goto Townlong Steppes 49.20,71.00
|only if haveq(31277)
step
You have reached the end of this daily guide
Click here to return to the start of the dailies |next "shado_dailies" |confirm
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\The Tillers",{
description="This guide will walk you through becoming exalted with The Tillers faction.",
achieveid={6544},
patch='50004',
},[[
#include "Tillers_Dailies"
]])
QuestCore:RegisterGuide("Reputation Guides\\Mists of Pandaria Reputations\\Tushui Pandaren",{
description="This guide will walk you through becoming exalted with the Tushui Pandaren faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Tushui Pandaren') < Exalted end,
},[[
step
talk Adherent Hanjun##69334
buy Tushui Tabard##83079 |n |goto Stormwind City 68.00,17.60
Equip your Tushui Tabard |equipped Tushui Tabard##83079 |use Tushui Tabard##83079 |future
You can run any dungeon that grants experience to gain reputation for Tushui Pandaren
Become Exalted with Tushui Pandaren |complete rep('Tushui Pandaren')==Exalted
step
Congratulations, you have reached exalted with the Tushui Pandaren!
]])
