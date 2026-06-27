-- QuestCore bundled guide (mists)
if not QuestCore then return end
if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\Dominance Offensive Dailies",{
expansion="mists",
mopready=true,
startlevel=90,
description="This guide will take you through The Dominance Offensive dailies Becoming Exalted with the Dominance Offensive allows you to purchase an epic flying mount, epic armor, and battle pets for your character.",
},[[
step
talk Sunwalker Dezco##64566
accept Meet the Scout##32249 |goto Vale of Eternal Blossoms/0 62.92,28.17
step
talk Scout Rokla##67812
turnin Meet the Scout##32249 |goto Krasarang Wilds/0 8.73,64.36
step
Watch the dialogue
talk Garrosh Hellscream##62092
|tip He will eventually reach the beach.
accept The Might of the Warchief##32250 |goto Krasarang Wilds/0 8.67,64.45
stickystart "Slay_Alliance_Troops"
step
talk Blood Guard Gro'tash##67927
|tip Kill any enemies he is attacking.
Find Blood Guard Gro'tash |q 32250/2 |goto Krasarang Wilds/0 10.70,53.16
step
talk Grizzle Gearslip##67926
|tip Kill any enemies he is attacking.
Find Grizzle Gearslip |q 32250/3 |goto Krasarang Wilds/0 15.73,57.76
step
label "Slay_Alliance_Troops"
kill Alliance Sentinel##67900, Alliance Footman##67901, Alliance Priest##67902
Slay #25# Alliance |q 32250/1 |goto Krasarang Wilds/0 11.51,61.24
step
_Next to you:_
talk Garrosh Hellscream##62092
turnin The Might of the Warchief##32250 |goto Krasarang Wilds/0 11.51,61.24
accept Domination Point##32108 |goto Krasarang Wilds/0 11.51,61.24
step
click Signal Fire##216274
turnin Domination Point##32108 |goto Krasarang Wilds/0 8.46,63.92
step
talk Kromthar##67785
fpath Domination Point |goto Krasarang Wilds/0 9.69,52.51
step
label "Begin_Daily_Quests"
talk Blood Guard Gro'tash##67880
accept The Ruins of Ogudei##32449 |goto Krasarang Wilds/0 10.08,53.87 |or |next "Ruins_of_Ogudei_Hub"
accept The Time is Now!##32450 |goto Krasarang Wilds/0 10.08,53.87 |or |next "Lion's_Landing_Hub"
accept Flash! Aaaaaahhhh!##32235 |goto Krasarang Wilds/0 10.08,53.87 |or
|tip Only one of these quests will be available if this NPC is offering quests today.
If No Quests Are Available, Click Here |confirm |or |next "Cave_Hub"
step
talk Brolic##67767
|tip He walks in a circle around the bonfire.
accept Tear It Up##32126 |goto Krasarang Wilds/0 10.37,53.86
step
talk Shokia##67618
accept Death on Two Legs##32123 |goto Krasarang Wilds/0 10.33,55.70
step
use the Bilgewater Molotov##92019
|tip Use it to kill Skyfire Gyrocopter X2 enemies around this area.
|tip They fly around in the air above this area.
|tip You can do this while mounted.
kill 6 Skyfire Gyrocopter X2##67359 |q 32235/1 |goto Krasarang Wilds/0 11.98,57.13
|only if haveq(32235) or completedq(32235)
stickystart "Slay_Alliance_Troops_2"
step
clicknpc Alliance Supply Drop##67969+
Destroy #8# Alliance Supply Drops |q 32126/1 |goto Krasarang Wilds/0 8.26,61.87
You can find more around:
[Krasarang Wilds/0 8.29,66.65]
[Krasarang Wilds/0 11.25,66.69]
|only if haveq(32126) or completedq(32126)
step
label "Slay_Alliance_Troops_2"
kill Shieldwall Marine##67354, Shieldwall Stormcaller##67425, Dwarven Mortar Team Engineer##67913
Sill #10# Alliance |q 32123/1 |goto Krasarang Wilds/0 8.03,61.31
|only if haveq(32123) or completedq(32123)
step
talk Shokia##67618
turnin Death on Two Legs##32123 |goto Krasarang Wilds/0 10.33,55.70
|only if haveq(32123) or completedq(32123)
step
talk Brolic##67767
|tip He walks in a circle around the bonfire.
turnin Tear It Up##32126 |goto Krasarang Wilds/0 10.37,53.86
|only if haveq(32126) or completedq(32126)
step
talk Blood Guard Gro'tash##67880
turnin Flash! Aaaaaahhhh!##32235 |goto Krasarang Wilds/0 10.08,53.87
accept Another One Bites the Dust##32128 |goto Krasarang Wilds/0 10.08,53.87
|only if haveq(32235) or completedq(32235)
step
talk Brolic##67767
|tip He walks in a circle around the bonfire.
accept All Dead, All Dead##32127 |goto Krasarang Wilds/0 10.37,53.86
|only if completedq(32126)
step
kill Captain Brent the Black##67626 |q 32127/1 |goto Krasarang Wilds/0 12.79,75.80
|tip On the second floor of the ship towards the back.
|only if haveq(32127) or completedq(32127)
step
click Powder Magazine##216231
|tip It's on the bottom floor of the ship next to fireworks and bombs.
Destroy the Defiant Ammunition |q 32128/2 |goto Krasarang Wilds/0 12.33,75.58
|only if haveq(32128) or completedq(32128)
step
kill Captain Mulkey##67627 |q 32127/2 |goto Krasarang Wilds/0 15.28,76.37
|tip On the second floor of the ship towards the back.
|only if haveq(32127) or completedq(32127)
step
click Powder Magazine##216231
|tip It's on the bottom floor of the ship next to fireworks and bombs.
Destroy the Valor's Edge Ammunition |q 32128/1 |goto Krasarang Wilds/0 15.10,76.62
|only if haveq(32128) or completedq(32128)
step
talk Blood Guard Gro'tash##67880
turnin Another One Bites the Dust##32128 |goto Krasarang Wilds/0 10.08,53.87
|only if haveq(32128) or completedq(32128)
step
talk Brolic##67767
|tip He walks in a circle around the bonfire.
turnin All Dead, All Dead##32127 |goto Krasarang Wilds/0 10.37,53.86
|next "End_of_Quests"
|only if haveq(32127) or completedq(32127)
step
label "Cave_Hub"
click Bounty Board##232398
accept Wanted: Lieutenant Ethan Jacobson##32223 |goto Krasarang Wilds/0 12.74,56.72 |or
accept Wanted: Chief Engineer Cogwrench##32222 |goto Krasarang Wilds/0 12.74,56.72 |or
|tip Only one of these quests will be available.
step
talk Rivett Clutchpop##67608
accept Storming the Beach##32221 |goto Krasarang Wilds/0 12.92,56.13 |or
accept Bilgewater Infiltrators##32214 |goto Krasarang Wilds/0 12.92,56.13 |or
|tip Only one of these quests will be available.
step
talk Duke##67562
accept Krasarang Steampot##32199 |goto Krasarang Wilds/0 13.77,55.78 |or
accept Mystery Meatloaf##32197 |goto Krasarang Wilds/0 13.77,55.78 |or
|tip Only one of these quests will be available.
step
talk Boss-Lady Trixel##67535
accept Work Order: Iron##32140 |goto Krasarang Wilds/0 13.79,55.85 |or
accept Work Order: Fuel##32136 |goto Krasarang Wilds/0 13.79,55.85 |or
accept Work Order: Lumber##32138 |goto Krasarang Wilds/0 13.79,55.85 |or
|tip Only one of these quests will be available.
stickystart "Kill_Shieldwall_Forces"
step
use the "New" and "Improved" Infared Heat Focals##92475
|tip It will cause Saboteurs to be visible and show on the mimimap.
kill 10 SI:7 Saboteur##67689 |q 32214/1 |goto Krasarang Wilds/0 9.65,61.07
|only if haveq(32214) or completedq(32214)
step
kill Chief Engineer Cogwrench##68012 |q 32222/1 |goto Krasarang Wilds/0 21.67,51.09
|only if haveq(32222) or completedq(32222)
step
kill Lieutenant Ethan Jacobson##68028 |q 32223/1 |goto Krasarang Wilds/0 19.07,70.99
|only if haveq(32223) or completedq(32223)
step
label "Kill_Shieldwall_Forces"
kill Shieldwall Marine##67354, Dwarven Mortar Team Engineer##67545, Shieldwall Stormcaller##67425
Kill #10# Shieldwall Forces |q 32221/1 |goto Krasarang Wilds/0 18.95,68.43
|only if haveq(32221) or completedq(32221)
step
talk Zino "The Shredder" Quickchop##67534
turnin Work Order: Lumber##32138 |goto Krasarang Wilds/0 20.48,58.06
accept Stacked!##32139 |goto Krasarang Wilds/0 20.48,58.06
|only if haveq(32138) or completedq(32138)
step
talk Daxil "The Gem" Oregrind##67537
turnin Work Order: Iron##32140 |goto Krasarang Wilds/0 22.57,62.37
accept Power Metal##32141 |goto Krasarang Wilds/0 22.57,62.37
|only if haveq(32140) or completedq(32140)
step
talk Grizzle Gearslip##67542
turnin Work Order: Fuel##32136 |goto Krasarang Wilds/0 25.54,60.47
accept Runnin' On Empty##32137 |goto Krasarang Wilds/0 25.54,60.47
|only if haveq(32136) or completedq(32136)
step
talk Bixy Buzzsaw##67553
accept Precious Resource##32237 |goto Krasarang Wilds/0 25.25,60.41
|only if completedq(32136)
step
talk Bixy Buzzsaw##67533
accept Universal Remote-Explode##32238 |goto Krasarang Wilds 20.6,58.1
|only if completedq(32138)
step
talk Bixy Buzzsaw##67553
accept Bug Off!##32236 |goto Krasarang Wilds/0 22.38,62.29
|only if completedq(32140)
stickystart "Collect_Domination_Point_Lumber"
step
use the Universal Remote##91902
|tip Use it on Shieldwall Mecha-Pounders to weaken them.
kill 9 Shieldwall Mecha-Pounder##68011 |q 32238/1 |goto Krasarang Wilds/0 19.98,61.21
|only if haveq(32238) or completedq(32238)
step
label "Collect_Domination_Point_Lumber"
click Domination Point Lumber##216177
collect 9 Domination Point Lumber##216177 |q 32139/1 |goto Krasarang Wilds/0 19.98,61.21
|only if haveq(32139) or completedq(32139)
stickystart "Collect_Polluted_Viseclaw_Meat"
stickystart "Collect_Chunk_of_Mystery_Meat"
step
click Fauly Valve+
|tip They look like round leaking valves on pipes around this area.
Tighten #8# Faulty Valves |q 32237/1 |goto Krasarang Wilds/0 23.62,56.34
|only if haveq(32237) or completedq(32237)
step
click "Distilled" Fuel Barrel+
|tip They look like partially submerged brown barrels in and around water around this area.
collect 9 "Distilled" Fuel Barrel##91846 |q 32137/1 |goto Krasarang Wilds/0 26.38,63.36
|only if haveq(32137) or completedq(32137)
step
label "Collect_Polluted_Viseclaw_Meat"
kill Polluted Viseclaw##67896, Polluted Viseclaw Scuttler##68584
collect 5 Polluted Viseclaw Meat##91869 |q 32199/1 |goto Krasarang Wilds/0 26.38,63.36
|only if haveq(32199) or completedq(32199)
step
label "Collect_Chunk_of_Mystery_Meat"
kill Mature Terrapin##67895, Polluted Viseclaw##67896, Polluted Viseclaw Scuttler##68584
collect 7 Chunk of Mystery Meat##91874 |q 32197/1 |goto Krasarang Wilds/0 26.38,63.36
|only if haveq(32197) or completedq(32197)
stickystart "Collect_Energized_Iron_Ore_Chunks"
stickystart "Kill_Shale_Shards"
step
Enter the cave |goto Krasarang Wilds/0 21.89,61.56 < 10 |walk
use the Hand-Dandy Bug Off Sprayer##93026
|tip Use it on Agitated Shale Spiders to spawn Shale Shards inside the cave.
Spray #5# Agitated Shale Spiders |q 32236/1 |goto Krasarang Wilds/0 19.86,62.43
|only if haveq(32236) or completedq(32236)
step
label "Kill_Shale_Shards"
kill 12 Shale Shards##68653 |q 32236/2 |goto Krasarang Wilds/0 19.86,62.43
|tip Inside the cave.
|only if haveq(32236) or completedq(32236)
step
label "Collect_Energized_Iron_Ore_Chunks"
click Energized Iron##216178+
|tip They look like large ore deposits inside the cave.
click Energized Iron Ore Chunk##216716+
|tip They spawn after clicking larger Energized Iron.
collect 7 Energized Iron Ore Chunk##91848 |q 32141/1 |goto Krasarang Wilds/0 19.86,62.43
|only if haveq(32141) or completedq(32141)
step
talk Bixy Buzzsaw##67533
turnin Universal Remote-Explode##32238 |goto Krasarang Wilds 20.6,58.1
|only if haveq(32238) or completedq(32238)
step
talk Zino "The Shredder" Quickchop##67534
turnin Stacked!##32139 |goto Krasarang Wilds/0 20.48,58.06
|only if haveq(32139) or completedq(32139)
step
talk Bixy Buzzsaw##67553
turnin Bug Off!##32236 |goto Krasarang Wilds 22.38,62.29
|only if haveq(32236) or completedq(32236)
step
talk Bixy Buzzsaw##67553
turnin Precious Resource##32237 |goto Krasarang Wilds/0 25.25,60.41
|only if haveq(32237) or completedq(32237)
step
talk Sezik Steampot##67536
turnin Krasarang Steampot##32199 |goto Krasarang Wilds/0 26.06,58.07 |only if haveq(32199) or completedq(32199)
turnin Mystery Meatloaf##32197 |goto Krasarang Wilds/0 26.06,58.07 |only if haveq(32197) or completedq(32197)
|only if haveq(32199,32197) or completedq(32199,32197)
step
talk Boss-Lady Trixel##67535
turnin Power Metal##32141 |goto Krasarang Wilds/0 13.79,55.85 |only if haveq(32141) or completedq(32141)
turnin Runnin' On Empty##32137 |goto Krasarang Wilds/0 13.79,55.85 |only if haveq(32137) or completedq(32137)
|only if haveq(32137,32141) or completedq(32137,32141)
step
talk Rivett Clutchpop##67608
turnin Storming the Beach##32221 |goto Krasarang Wilds/0 12.92,56.13 |only if haveq(32221) or completedq(32221)
turnin Bilgewater Infiltrators##32214 |goto Krasarang Wilds/0 12.92,56.13 |only if haveq(32214) or completedq(32214)
|only if haveq(32221,32214) or completedq(32221,32214)
step
talk Blood Guard Gro'tash##67880
turnin Wanted: Lieutenant Ethan Jacobson##32223 |goto Krasarang Wilds/0 10.08,53.87 |only if haveq(32223) or completedq(32223)
turnin Wanted: Chief Engineer Cogwrench##32222 |goto Krasarang Wilds/0 10.08,53.87 |only if haveq(32222) or completedq(32222)
|only if haveq(32223,32222) or completedq(32223,32222)
|next "End_of_Quests"
step
label "Lion's_Landing_Hub"
talk Shademaster Kiryn##67628
turnin The Time is Now!##32450 |goto Krasarang Wilds/0 75.83,34.47
accept Hero Killer##32135 |goto Krasarang Wilds/0 75.83,34.47
accept Worker Harassment##32132 |goto Krasarang Wilds/0 75.83,34.47
accept Sentry Wards##32133 |goto Krasarang Wilds/0 75.83,34.47
|only if haveq(32450) or completedq(32450)
step
talk Zazzix "Toasty" Sparkrocket##67402
accept Good Luck, Have Fun##32130 |goto Krasarang Wilds/0 75.86,34.16 |or 2
accept We Require More Minerals!##32131 |goto Krasarang Wilds/0 75.86,34.16 |or 2
accept Hard Counter##32134 |goto Krasarang Wilds/0 75.86,34.16 |or 2
|tip Only two of these quests will be available.
|only if completedq(32450)
stickystart "Kill_Shieldwall_Peasants"
stickystart "Kill_Dwarven_Mortar_Team_Engineers"
stickystart "Kill_Dwarven_Mortar_Tubes"
stickystart "Collect_Extra-Waxy_Alliance_Ears"
step
kill Thane Stonehearth##67636 |q 32135/1 |goto Krasarang Wilds/0 81.27,24.57
|tip He walks around this area.
|only if haveq(32135) or completedq(32135)
step
clicknpc Town Hall Sentry Ward Location##67744
|tip Inside the building.
Place the Sentry Ward in Town Hall |q 32133/1 |goto Krasarang Wilds/0 86.27,25.58
|only if haveq(32133) or completedq(32133)
step
clicknpc Docks Sentry Ward Location##67742
Place the Sentry Ward on the Docks |q 32133/2 |goto Krasarang Wilds/0 86.10,33.13
|only if haveq(32133) or completedq(32133)
step
clicknpc Barracks Sentry Ward Location##67743
|tip Upstairs inside the building.
Place the Sentry Ward in the Barracks |q 32133/3 |goto Krasarang Wilds/0 87.75,32.74
|only if haveq(32133) or completedq(32133)
step
label "Kill_Shieldwall_Peasants"
kill 30 Shieldwall Peasant##67423 |q 32132/1 |goto Krasarang Wilds/0 84.13,23.22
|only if haveq(32132) or completedq(32132)
step
label "Kill_Dwarven_Mortar_Team_Engineers"
kill 8 Dwarven Mortar Team Engineer##67545 |q 32134/1 |goto Krasarang Wilds/0 83.23,25.38
|only if haveq(32134) or completedq(32134)
step
label "Kill_Dwarven_Mortar_Tubes"
kill 2 Dwarven Mortar Tube##67541 |q 32134/2 |goto Krasarang Wilds/0 83.23,25.38
|only if haveq(32134) or completedq(32134)
step
kill Shieldwall Engineer##67441+
click Animatable Stone
collect 20 Animatable Stone##91823 |q 32131/1 |goto Krasarang Wilds/0 78.38,18.54
|only if haveq(32131) or completedq(32131)
step
label "Collect_Extra-Waxy_Alliance_Ears"
kill Shieldwall Footman##67304, Shieldwall Rifleman##67297, Dwarven Mortar Team Engineer##67545, Shieldwall Huntress##67317, Shieldwall Vindicator##67296, Shieldwall Peasant##67423
collect 10 Extra-Waxy Alliance Ears##92474 |q 32130/1 |goto Krasarang Wilds/0 84.81,27.11
|only if haveq(32130) or completedq(32130)
step
talk Zazzix "Toasty" Sparkrocket##67402
turnin Good Luck, Have Fun##32130 |goto Krasarang Wilds/0 75.86,34.16 |only if haveq(32130) or completedq(32130)
turnin We Require More Minerals!##32131 |goto Krasarang Wilds/0 75.86,34.16 |only if haveq(32131) or completedq(32131)
turnin Hard Counter##32134 |goto Krasarang Wilds/0 75.86,34.16 |only if haveq(32134) or completedq(32134)
|only if haveq(32130,32131,32134) or completedq(32130,32131,32134)
step
talk Shademaster Kiryn##67628
turnin Hero Killer##32135 |goto Krasarang Wilds/0 75.83,34.47 |only if haveq(32135) or completedq(32135)
turnin Worker Harassment##32132 |goto Krasarang Wilds/0 75.83,34.47 |only if haveq(32132) or completedq(32132)
turnin Sentry Wards##32133 |goto Krasarang Wilds/0 75.83,34.47 |only if haveq(32133) or completedq(32133)
|only if haveq(32135,32132,32133) or completedq(32135,32132,32133)
|next "End_of_Quests"
step
label "Ruins_of_Ogudei_Hub"
talk Belloc Brightblade##67847
turnin The Ruins of Ogudei##32449 |goto Krasarang Wilds/0 76.31,34.08
accept Taking Advantage##32118 |goto Krasarang Wilds/0 76.31,34.08
|only if haveq(32449) or completedq(32449)
step
click Portal to Ruins of Ogudei
Reach the Ruins of Ogudei |complete subzone("Ruins of Ogudei") or completedq(32118) |goto Krasarang Wilds/0 76.20,33.98
|only if haveq(32118) or completedq(32118)
step
talk Kaelis Sunsoar##68274
turnin Taking Advantage##32118 |goto Krasarang Wilds/3 35.30,42.14
accept The Spirit Trap##32342 |goto Krasarang Wilds/3 35.30,42.14 |or 5
accept It Is A Mystery##32344 |goto Krasarang Wilds/3 35.30,42.14 |or 5
accept We're Not Monsters!##32345 |goto Krasarang Wilds/3 35.30,42.14 |or 5
accept Legacy of Ogudei##32120 |goto Krasarang Wilds/3 35.30,42.14 |or 5
accept Ogudei's Lieutenants##32343 |goto Krasarang Wilds/3 35.30,42.14 |or 5
accept Kick 'em While They're Down##32348 |goto Krasarang Wilds/3 35.30,42.14 |or 5
|tip One of these quests will not be available.
|only if haveq(32118) or completedq(32118)
stickystart "Collect_Meng-do's_Essence"
stickystart "Collect_Ancient_Mogu_Essence"
stickystart "Collect_Spirit_Traps"
stickystart "Free_Troubled_Slave_Spirits"
step
Run up the ramp |goto Krasarang Wilds/3 80.12,40.55 < 10
Follow the path |goto Krasarang Wilds/3 70.47,84.96 < 10
Continue following the path |goto Krasarang Wilds/3 93.56,47.83 < 10
kill Gen-li Twister of Words##68169
collect Gen-Li's Essence##92736 |q 32343/1 |goto Krasarang Wilds/2 68.08,82.44
|only if haveq(32343) or completedq(32343)
step
label "Collect_Meng-do's_Essence"
kill Meng-do Strength of Mountains##68170
collect Meng-do's Essence##92735 |q 32343/1 |goto Krasarang Wilds/2 66.59,78.85
|only if haveq(32343) or completedq(32343)
step
Disperse the Anamoly |q 32344/1 |goto Krasarang Wilds/3 89.81,12.54
|tip Walk around this cave and pay attention to your Anamoly Reader above your actionbars.
|tip This quest is like a "Hot & Cold" game, where the closer you get, the greater anamoly reading you get.
|tip When you have 100%, you will automatically disperse the anamoly.
|only if haveq(32344) or completedq(32344)
step
label "Collect_Spirit_Traps"
kill Spirit Trap##68061+
|tip They look like floating blue crystals inside the cave.
Collect #3# Spirit Traps |q 32342/1 |goto Krasarang Wilds/3 89.81,12.54
|only if haveq(32342) or completedq(32342)
step
label "Collect_Ancient_Mogu_Essence"
kill Spiritbound Brutalizer##68073, Spiritbound Arcanist##68070
collect 5 Ancient Mogu Essence##92704 |q 32120/1 |goto Krasarang Wilds/3 46.31,12.11
|only if haveq(32120) or completedq(32120)
step
label "Free_Troubled_Slave_Spirits"
kill Troubled Slave Spirit##68074+
Free #14# Troubled Slave Spirits |q 32345/1 |goto Krasarang Wilds/3 46.31,12.11
|only if haveq(32345) or completedq(32345)
step
Follow the path |goto Krasarang Wilds/3 61.27,38.35 < 10 |only if walking
kill Shieldwall Footman##67304, Shieldwall Rifleman##67297, Lion's Landing Guard Captain##68310
Slay #12# Lion's Landing Military |q 32348/1 |goto Krasarang Wilds/1 53.95,22.39
|only if haveq(32348) or completedq(32348)
step
Follow the path down |goto Krasarang Wilds/3 70.93,40.35 < 10 |only if walking
talk Kaelis Sunsoar##68274
turnin The Spirit Trap##32342 |goto Krasarang Wilds/3 35.30,42.14 |only if haveq(32342) or completedq(32342)
turnin It Is A Mystery##32344 |goto Krasarang Wilds/3 35.30,42.14 |only if haveq(32344) or completedq(32344)
turnin We're Not Monsters!##32345 |goto Krasarang Wilds/3 35.30,42.14 |only if haveq(32345) or completedq(32345)
turnin Legacy of Ogudei##32120 |goto Krasarang Wilds/3 35.30,42.14 |only if haveq(32120) or completedq(32120)
turnin Ogudei's Lieutenants##32343 |goto Krasarang Wilds/3 35.30,42.14 |only if haveq(32343) or completedq(32343)
turnin Kick 'em While They're Down##32348 |goto Krasarang Wilds/3 35.30,42.14 |only if haveq(32348) or completedq(32348)
|only if haveq(32342,32344,32345,32120,32343,32348) or completedq(32342,32344,32345,32120,32343,32348)
step
label "End_of_Quests"
You Have Completed the Available Daily Quests |complete false or not completedq(32449,32450,32235,32126,32123,32127,32128,32223,32222,32221,32214,32199,32197,32140,32136,32138,32139,32141,32137,32238,32237,32236,32135,32132,32133,32130,32131,32134,32118,32342,32344,32345,32120,32343,32348) |next "Begin_Daily_Quests"
|tip New quests will become available with the next daily server reset.
|tip |only if rep("Dominance Offensive") >= Revered
buy Grand Commendation of the Dominance Offensive##93232 |goto Krasarang Wilds/0 10.83,53.37 |n |only if rep("Dominance Offensive") >= Revered
|tip You can buy the Grand Commedation of the Dominance Offensive from Tuskripper Grunka. |only if rep("Dominance Offensive") >= Revered
|tip If you're seeing {b}bonus{} rep at the end of daily turnins, you don't need to purchase this. |only if rep("Dominance Offensive") >= Revered
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\Sunreaver Onslaught Dailies",{
expansion="mists",
mopready=true,
startlevel=90,
description="This guide will take you through the Sunreaver Onslaught Dailies.",
},[[
step
label "Reset"
clicknpc Assignment Map##70567 |goto Isle of Thunder/0 32.45,35.23
Click PvE at the assignment screen |q 32259 |future
|tip If no daily quests are available, make sure you're caught up with the Isle of Thunder questline.
step
talk Lor'themar Theron##67990
accept Za'Tual##32729 |goto Isle of Thunder/0 32.51,35.58
accept Encroaching Force##32521
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
step
talk Girana the Blooded##67673
accept The Zandalari Colossus##32230 |goto Isle of Thunder/0 32.43,35.22
accept The Court of Bones##32728 |goto Isle of Thunder/0 32.43,35.22
accept The Shuddering Moor##32228 |goto Isle of Thunder/0 32.43,35.22
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
step
talk Magister Hathorel##67663
accept Ihgaluk Crag##32730 |goto Isle of Thunder/0 32.47,35.24
accept A Wing to Fly On##32506
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
step
talk High Arcanist Savor##67662
accept The Sleepless Legion##32285 |goto Isle of Thunder 33.50,35.10 |or
accept Enemies Beneath the Tower##32287 |goto Isle of Thunder 33.50,35.10 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
step
map Isle of Thunder/0
path follow smart; loop on; ants straight; dist 45
path    39.15,51.85	40.40,54.34	41.27,58.69	42.25,63.92	45.52,66.22
path    50.92,65.87	52.99,64.50	53.21,58.01	52.15,53.62	51.39,52.77
path	48.56,48.23	45.56,47.41	40.80,48.30
clicknpc Wild Pterrorwing Hatchling##69428
|tip The hatchling roams around this circular path, some searching may be necessary.
Catch a Wild Pterrorwing Hatchling |q 32506/1
|only if haveq(32506) or completedq(32506)
step
kill 6 Animated Warrior##67473+ |q 32285/1  |goto Isle of Thunder 43.00,55.20
|only if haveq(32285) or completedq(32285)
step
Run up the stairs |goto Isle of Thunder/0 38.44,50.73 < 20
Enter the building |goto Isle of Thunder/0 34.99,48.92 < 10
kill Kaida the Bloodletter##69250 |q 32495/1 |goto Isle of Thunder 35.00,48.20
|only if haveq(32495) or completedq(32495)
step
label "Court_of_Bones"
map Isle of Thunder
path dist 40
path loop off
path	46.52,48.35	48.57,50.45	50.14,53.64	53.16,57.03	53.31,58.36
kill Mighty Devilsaur##69406 |q 32228/1
|only if haveq(32228) or completedq(32228)
step
map Isle of Thunder/0
path loop off
path	44.60,63.60	43.00,63.00	41.80,62.40
kill Zandalari Colossus##69405 |q 32230/1
|tip It patrols around this circular path, some searching may be necessary.
|only if haveq(32230) or completedq(32230)
step
label "Kill_Nurkala"
kill Nurkala##69663 |q 32521/1 |goto Isle of Thunder/0 45.10,35.60
|only if haveq(32521) or completedq(32521)
step
talk Grand Magister Rommath##67989
turnin The Court of Bones##32728 |goto Isle of Thunder/0 38.47,51.33
accept Grave Circumstances##32201 |goto Isle of Thunder/0 38.47,51.33
accept The Call of Thunder##32225 |goto Isle of Thunder/0 38.47,51.33
accept The Bloodletter##32495 |goto Isle of Thunder/0 38.47,51.33
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32728) or completedq(32728)
step
talk Ryshelle Brightlock##69389
accept Stone Cold##32219 |goto Isle of Thunder/0 38.47,51.17
accept Into the Crypts##32226 |goto Isle of Thunder/0 38.47,51.17
accept Rise No More!##32224 |goto Isle of Thunder/0 38.47,51.17
accept The Conquest of Stone##32517 |goto Isle of Thunder/0 38.47,51.17
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32728) or completedq(32728)
step
talk Captain Aerthas Firehawk##67983
accept Ashes of the Enemy##32218 |goto Isle of Thunder/0 38.55,51.13
accept Soul Surrender##32220  |goto Isle of Thunder/0 38.55,51.13
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32728) or completedq(32728)
stickystart "Save_Scouts"
stickystart "Slay_Shanze_Court_of_Bones"
stickystart "Slay_Risen_Ancestors"
stickystart "Kill_Grave_Guardians"
stickystart "Burn_Mummified_Remains"
stickystart "Kill_Mighty_Devilsaur"
stickystart "Kill_Zandalari_Colossus"
stickystart "Kill_Nurkala"
step
label "Court_of_Bones_Objectives"
Run up the ramp |goto Isle of Thunder/0 39.32,55.41 < 10
Enter the building |goto Isle of Thunder/0 36.34,58.99 < 10
use the Incantation of Gura##93803
kill Gura the Reclaimed##69241+ |q 32226/1 |goto Isle of Thunder/0 36.79,56.44 |subzone Hall of the Exalted
|tip Downstairs inside the building. |notinsticky
|only if haveq(32226) or completedq(32226)
step
Kill Shan'ze Soulrippers around this area |kill Shan'ze Soulripper##69236, Shan'ze Soulripper##69903
Stop the Ancient Stone Conqueror Ritual |q 32517/1 |goto Isle of Thunder 35.10,64.30
|only if haveq(32517) or completedq(32517)
step
kill Shan'ze Thundercaller##69264+
Stop the Shan'ze Thundercallers Ritual |q 32225/1 |goto Isle of Thunder 32.90,55.90
|only if haveq(32225) or completedq(32225)
step
label "Save_Scouts"
click Tormented Cage
Save #6# Scouts |q 32220/1 |goto Isle of Thunder 36.10,51.80
|only if haveq(32220) or completedq(32220)
step
label "Slay_Shanze_Court_of_Bones"
Kill Shan'ze enemies around this area |kill Shan'ze Gravekeeper##69235, Shan'ze Thundercaller##69264
Slay #10# Shan'ze Mogu at the Court of Bones |q 32201/1 |goto Isle of Thunder/0 35.50,52.30
|only if haveq(32201) or completedq(32201)
step
label "Slay_Risen_Ancestors"
kill 15 Risen Ancestor##69237+ |q 32224/1 |goto Isle of Thunder/0 35.50,52.30
|only if haveq(32224) or completedq(32224)
step
label "Kill_Grave_Guardians"
kill 8 Grave Guardian##69240+ |q 32219/1 |goto Isle of Thunder/0 35.50,52.30
|only if haveq(32219)  or completedq(32219)
step
label "Burn_Mummified_Remains"
use the Blessed Torch##93751
|tip They're laying in coffins scattered around this area.
Burn #8# Mummified Remains |q 32218/1 |only if haveq(32218) |goto Isle of Thunder/0 36.98,52.66
You can find more around [Isle of Thunder/0 38.31,59.26]
|only if haveq(32218) or completedq(32218)
step
label "Za'Tual"
talk Halduron Brightwing##70520
turnin Za'Tual##32729 |goto Isle of Thunder/0 36.72,64.79 |only if haveq(32729) or completedq(32729)
accept Surgical Death##32275 |goto Isle of Thunder/0 36.72,64.79
accept Harbingers of the Loa##32252 |goto Isle of Thunder/0 36.72,64.79
accept Dangers of Za'Tual##32200 |goto Isle of Thunder/0 36.72,64.79
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
step
talk Elina Zaralae##69418
accept Dark Offerings##32217 |goto Isle of Thunder/0 36.63,64.67
accept Heinous Sacrifice##32215 |goto Isle of Thunder/0 36.63,64.67
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
step
talk Kethiel Sunlance##67984
accept Pterrible Ptorment##32216 |goto Isle of Thunder/0 36.76,64.92
accept Preventing a Future Threat##32227 |goto Isle of Thunder/0 36.76,64.92
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
step
label "Za'Tual_Objectives"
kill Zandalari Arcweaver##69224+
Free the Tormented Skyscreamer |q 32216/1 |goto Isle of Thunder 41.30,69.90
|only if haveq(32216) or completedq(32216)
step
Run over _Hatchling Skyscreamers_ in this area to scare them.
Scare 12 Hatchling Skyscreamers |q 32227/1 |goto Isle of Thunder/0 28.00,77.20
|only if haveq(32227) or completedq(32227)
stickystart "Kill_Zandalari_Beastcaller"
stickystart "Kill_Zandalari_Warrior"
stickystart "Kill_Zandalari_Spiritbinder"
stickystart "Kill_Za'Tual_Trolls"
stickystart "Destroy_Zandalari_Offering"
stickystart "Kill_Mighty_Devilsaur"
stickystart "Kill_Zandalari_Colossus"
stickystart "Kill_Nurkala"
step
kill Spiritbinder Tec'uat##69255 |only if haveq(32275)
click Tec'uat's Altar
Destroy Tec'uat's Altar |q 32215/2 |goto Isle of Thunder 39.80,65.30
|only if haveq(32215) or completedq(32215)
step
kill Spiritbinder Pa'chek##69256 |only if haveq(32275)
click Pa'chek's Altar
Destroy Pa'chek's Altar |q 32215/3 |goto Isle of Thunder 38.70,78.60
|only if haveq(32215) or completedq(32215)
step
kill Spiritbinder Cha'lat##69254 |only if haveq(32275)
click Cha'lat's Altar
Destroy Cha'lat's Altar |q 32215/1 |goto Isle of Thunder 33.90,76.20
|only if haveq(32215) or completedq(32215)
step
label "Destroy_Zandalari_Offering"
click Zandalari Offering##216991
|tip They look like brown and gold boxes with white tusks on the side.
|tip They are found throughout all of Za'Tual.
Destroy 6 Zandalari Offerings |q 32217/1 |goto Isle of Thunder/0 34.33,67.45
You can find more around: |notinsticky
[Isle of Thunder/0 33.94,76.11] |notinsticky
[Isle of Thunder/0 40.81,74.37] |notinsticky
|only if haveq(32217) or completedq(32217)
step
Kill Zandalari enemies around this area |kill Zandalari Arcanital##69281, Zandalari Speaker##69136
|tip There aren't very many around.
Slay #2# Harbingers of the Loa |q 32252/1 |goto Isle of Thunder 36.40,70.00
You can find more around [38.90,76.40]
|only if haveq(32252) or completedq(32252)
step
label "Kill_Zandalari_Beastcaller"
kill Zandalari Beastcaller##69065+ |q 32275/1 |goto Isle of Thunder/0 34.33,67.45
|tip They are found throughout all of Za'Tual. |notinsticky
You can find more around: |notinsticky
[Isle of Thunder/0 33.94,76.11] |notinsticky
[Isle of Thunder/0 40.81,74.37] |notinsticky
|only if haveq(32275) or completedq(32275)
step
label "Kill_Zandalari_Warrior"
kill Zandalari Jaguar Warrior##69171+ |q 32275/2 |goto Isle of Thunder/0 34.33,67.45
|tip They are found throughout all of Za'Tual. |notinsticky
You can find more around: |notinsticky
[Isle of Thunder/0 33.94,76.11] |notinsticky
[Isle of Thunder/0 40.81,74.37] |notinsticky
|only if haveq(32275) or completedq(32275)
step
label "Kill_Zandalari_Spiritbinder"
kill Zandalari Spiritbinder##69225+ |q 32275/3 |goto Isle of Thunder/0 34.33,67.45
|tip They are found throughout all of Za'Tual. |notinsticky
You can find more around: |notinsticky
[Isle of Thunder/0 33.94,76.11] |notinsticky
[Isle of Thunder/0 40.81,74.37] |notinsticky
|only if haveq(32275) or completedq(32275)
step
label "Kill_Za'Tual_Trolls"
Kill Zandalari enemies around this area |kill Zandalari Stoneshield##69223, Zandalari Commoner##69170, Zandalari Beastcaller##69065, Zandalari Jaguar Warrior##69171, Drakkari God-Hulk##69200
|tip They are found throughout all of Za'Tual. |notinsticky
Slay #12# Troll in Za'Tual |q 32200/1 |goto Isle of Thunder/0 34.33,67.45
You can find more around: |notinsticky
[Isle of Thunder/0 33.94,76.11] |notinsticky
[Isle of Thunder/0 40.81,74.37] |notinsticky
|only if haveq(32200) or completedq(32200)
step
label "Kill_Mighty_Devilsaur"
map Isle of Thunder
path loop off
path	46.52,48.35	48.57,50.45	50.14,53.64	53.16,57.03	53.31,58.36
kill Mighty Devilsaur##69406 |q 32228/1
|only if haveq(32228) or completedq(32228)
step
label "Kill_Zandalari_Colossus"
map Isle of Thunder/0
path loop off
path	44.60,63.60	43.00,63.00	41.80,62.40
kill Zandalari Colossus##69405 |q 32230/1
|tip It patrols around this circular path, some searching may be necessary.
|only if haveq(32230) or completedq(32230)
step
label "Kill_Nurkala"
kill Nurkala##69663 |q 32521/1 |goto Isle of Thunder/0 45.10,35.60
|only if haveq(32521) or completedq(32521)
step
Run up the stairs |goto Isle of Thunder/0 38.44,50.73 < 20
Enter the building |goto Isle of Thunder/0 34.99,48.92 < 10
kill Kaida the Bloodletter##69250 |q 32495/1 |goto Isle of Thunder 35.00,48.20
|only if haveq(32495) or completedq(32495)
step
label "Ihgaluk_Crag_Dailies"
talk Archmage Aethas Sunreaver##67660
turnin Ihgaluk Crag##32730 |goto Isle of Thunder/0 46.87,66.90
accept The Skumblade Threat##32204 |goto Isle of Thunder/0 46.87,66.90
accept Manipulating the Saurok##32254 |goto Isle of Thunder/0 46.87,66.90
accept Subtle Encouragement##32605 |goto Isle of Thunder/0 46.87,66.90
accept De-Constructed##32255 |goto Isle of Thunder/0 46.87,66.90
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32730) or completedq(32730)
step
talk Sunwalker Dezco##69425
accept The Residents of Ihgaluk##32274 |goto Isle of Thunder/0 46.74,66.76
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32730) or completedq(32730)
step
talk Amalia Penshire##69371
accept Just Some Light Clean-Up Work##32299 |goto Isle of Thunder/0 47.01,66.73
accept The Creeping Carpet of Ihgaluk##32489 |goto Isle of Thunder/0 47.01,66.73
accept Left to Rot##32491 |goto Isle of Thunder/0 47.01,66.73|only if questactive(32491)
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32730) or completedq(32730)
step
talk Archmage Aethas Sunreaver##67660
accept Skin of the Saurok##32507 |goto Isle of Thunder/0 46.92,66.91 |or
|tip NOTE:
|tip This quest will give you the ability to disguise yourself as a saurok.
|tip This spell will happen automatically whenever you are outside of combat and inside Ihgaluk Crag.
|tip If you try to attack another saurok, the disguise will vanish and all saurok will be hostile to you until you are out of combat again.
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(67660) |or
|tip If no quests are offered, this step will advance.
|only if not completedq(32507)
step
label "Ighaluk_Crag_Objectives"
Kill Skumblade enemies around this area |kill Skumblade Filthmonger##69228, Skumblade Brute##69338, Skumblade Scavenger##69227
Slay a Skumblade Saurok |q 32507/1 |goto Isle of Thunder 47.20,79.60 |only if haveq(32507)
|only if not completedq(32507)
step
_Click the Quest Complete Box:_
turnin Skin of the Saurok##32507 |only if haveq(32507)
|only if not completedq(32507)
stickystart "Crush_Ihgaluk_Roaches"
stickystart "Kill_Skumblade_Enemies"
stickystart "Plant_Mogu_Weapons"
stickystart "Slay_Skumblade_Brute"
stickystart "Slay_Skumblade_Saur-Priest"
stickystart "Slay_Skumblae_Seadragon"
stickystart "Kill_Mighty_Devilsaur"
stickystart "Kill_Zandalari_Colossus"
stickystart "Kill_Nurkala"
step
kill Fetid Meat Pile##69247+
Destroy the Fetid Meat Pile |q 32491/1 |goto Isle of Thunder 51.50,78.40
|only if haveq(32491) or completedq(32491)
step
clicknpc Malfunctioning Sunreaver##69289
Recover the Malfunctioning Sunreaver |q 32255/4 |goto Isle of Thunder/0 46.60,71.90
|only if haveq(32255) or completedq(32255)
step
clicknpc Magister Arlan##69293
|tip Walking around this area.
Speak with Magister Arlan |q 32254/1 |goto Isle of Thunder 44.60,83.30
|only if haveq(32254) or completedq(32254)
step
clicknpc Disabled Sunreaver Construct##69439
Recover the Disabled Construct |q 32255/1 |goto Isle of Thunder/0 44.20,81.80
|only if haveq(32255) or completedq(32255)
step
Follow the path up |goto Isle of Thunder/0 50.49,77.17 < 20
clicknpc Magistrix Vesara##69310
|tip Walking around this area.
Speak with Magistrix Vesara |q 32254/3 |goto Isle of Thunder 51.70,73.60
|only if haveq(32254) or completedq(32254)
step
map Isle of Thunder/0
path follow loose;loop;ants straight; dist 40
path	51.80,74.40	53.30,77.00	54.30,79.30	55.10,82.20	55.10,82.20
path	55.30,84.20	54.90,86.70	53.90,88.30	52.40,90.40	50.80,90.50
path	49.20,89.50	49.40,85.80	49.80,84.00	49.40,82.00	49.20,79.80
path	50.10,78.40	50.40,77.10	50.60,75.80
clicknpc Distressed Sunreaver Construct##69290
Recover the Distressed Construct |q 32255/3
|only if haveq(32255) or completedq(32255)
step
clicknpc Magister Sarien##69309
|tip Walking around inside the cave.
Speak with Magister Sarien |q 32254/2 |goto Isle of Thunder 51.50,85.00
|only if haveq(32254) or completedq(32254)
step
clicknpc Buried Sunreaver Construct##69288
Recover the Buried Construct |q 32255/2 |goto Isle of Thunder/0 53.60,91.20
|only if haveq(32255) or completedq(32255)
step
kill Quivering Filth##69251+
Disperse 75 Filth |q 32299/1 |goto Isle of Thunder 51.50,81.00
|only if haveq(32299) or completedq(32299)
step
label "Slay_Skumblade_Brute"
kill 1 Skumblade Brute##69338 |q 32274/1 |goto Isle of Thunder 50.90,78.90
|only if haveq(32274) or completedq(32274)
step
label "Slay_Skumblade_Saur-Priest"
Follow the path up |goto Isle of Thunder 50.50,76.80 < 10
kill 1 Skumblade Saur-Priest##69229 |q 32274/2 |goto Isle of Thunder 49.80,76.10
|only if haveq(32274) or completedq(32274)
step
label "Slay_Skumblae_Seadragon"
kill 1 Skumblade Seadragon##69226+ |q 32274/3 |goto Isle of Thunder 56.30,86.40
|only if haveq(32274) or completedq(32274)
step
label "Crush_Ihgaluk_Roaches"
Crush #75# Ihgaluk Roaches |q 32489/1 |goto Isle of Thunder/0 46.36,78.70
You can find more around [Isle of Thunder 53.90,78.00]
|only if haveq(32489) or completedq(32489)
step
label "Plant_Mogu_Weapons"
Kill Skumblade enemies around this area |kill Skumblade Brute##69338, Skumblade Shortfang##69348, Skumblade Scavenger##69227, Skumblade Fleshripper##69210
|tip Use the "Plant the Spear" ability that appears on screen to plant weapons on their corpses.
Plant #9# Mogu weapons |q 32605/1 |goto Isle of Thunder 45.20,74.70
|only if haveq(32605) or completedq(32605)
step
label "Kill_Skumblade_Enemies"
Kill Skumblade enemies around this area |kill Skumblade Brute##69338, Skumblade Shortfang##69348, Skumblade Scavenger##69227, Skumblade Fleshripper##69210, Skumblade Filthmonger##69228, Skumblade Saur-Priest##69229, Skumblade Seadragon##69226
Slay #10# Skumblade Saurok |q 32204/1 |goto Isle of Thunder 45.20,74.70
|only if haveq(32204) or completedq(32204)
step
Kill Shan'ze enemies around this area |kill Shan'ze Bloodseeker##69431, Shan'ze Animator##70069
Slay #7# Diremoor Shan'ze Mogu|q 32287/1 |goto Isle of Thunder/0 47.00,61.40
|only if haveq(32287) or completedq(32287)
step
label "Kill_Mighty_Devilsaur"
map Isle of Thunder
path loop off
path	46.52,48.35	48.57,50.45	50.14,53.64	53.16,57.03	53.31,58.36
kill Mighty Devilsaur##69406 |q 32228/1
|only if haveq(32228) or completedq(32228)
step
label "Kill_Zandalari_Colossus"
map Isle of Thunder/0
path loop off
path	44.60,63.60	43.00,63.00	41.80,62.40
kill Zandalari Colossus##69405 |q 32230/1
|tip It patrols around this circular path, some searching may be necessary.
|only if haveq(32230) or completedq(32230)
step
label "Kill_Nurkala"
kill Nurkala##69663 |q 32521/1 |goto Isle of Thunder/0 45.10,35.60
|only if haveq(32521) or completedq(32521)
step
Run up the stairs |goto Isle of Thunder/0 38.44,50.73 < 20
Enter the building |goto Isle of Thunder/0 34.99,48.92 < 10
kill Kaida the Bloodletter##69250 |q 32495/1 |goto Isle of Thunder 35.00,48.20
|only if haveq(32495) or completedq(32495)
step
label "turnin"
talk Amalia Penshire##69371
turnin The Creeping Carpet of Ihgaluk##32489 |goto Isle of Thunder/0 47.01,66.73 |only if haveq(32489) or completedq(32489)
turnin Just Some Light Clean-Up Work##32299 |goto Isle of Thunder/0 47.01,66.73 |only if haveq(32299) or completedq(32299)
turnin Left to Rot##32491 |goto Isle of Thunder/0 47.01,66.73 |only if haveq(32491) or completedq(32491)
|only if haveq(32489,32299,32491) or completedq(32489,32299,32491)
step
talk Archmage Aethas Sunreaver##67660
turnin The Skumblade Threat##32204 |goto Isle of Thunder/0 46.87,66.90 |only if haveq(32204) or completedq(32204)
turnin Manipulating the Saurok##32254 |goto Isle of Thunder/0 46.87,66.90 |only if haveq(32254) or completedq(32254)
turnin Subtle Encouragement##32605 |goto Isle of Thunder/0 46.87,66.90 |only if haveq(32605) or completedq(32605)
turnin De-Constructed##32255 |goto Isle of Thunder/0 46.87,66.90 |only if haveq(32255) or completedq(32255)
accept Competing Magic##32561 |goto Isle of Thunder/0 46.90,66.90
accept Competing Magic##32520 |goto Isle of Thunder/0 46.86,66.91
accept Encroaching Force##32521 |goto Isle of Thunder/0 46.90,66.90
accept Imposing Threat##32562 |goto Isle of Thunder/0 46.90,66.90
accept The Beating of Troll Drums##32524 |goto Isle of Thunder/0 46.90,66.90
accept Among the Bones##32293 |goto Isle of Thunder/0 46.90,66.90
accept The Beast Pens##32523 |goto Isle of Thunder/0 46.86,66.91
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32204,32254,32605,32255) or completedq(32204,32254,32605,32255)
step
talk Sunwalker Dezco##69425
turnin The Residents of Ihgaluk##32274 |goto Isle of Thunder/0 46.74,66.76
|only if haveq(32274) or completedq(32274)
step
talk Magistrix Saia##69433
accept Skin of the Saurok##32507 |goto Isle of Thunder/0 46.91,66.89
|only if not completedq(32507)
step
kill Skumblade Filthmonger##69228, Skumblade Brute##69338, Skumblade Scavenger##69227
Slay a Skumblade Saurok |q 32507/1 |goto Isle of Thunder 47.20,79.60
|only if not completedq(32507)
step
_Click the Quest Complete Box:_
turnin Skin of the Saurok##32507
|only if not completedq(32507)
step
kill Zur'chaka the Bonecrafter##69666 |q 32293/1 |goto Isle of Thunder/0 41.90,79.40
|only if haveq(32293) or completedq(32293)
step
kill Arcweaver Jor'guva##69665 |q 32561/1 |goto Isle of Thunder 44.20,68.70 |only if haveq(32561) or completedq(32561)
kill Arcweaver Jor'guva##69665 |q 32520/1 |goto Isle of Thunder 44.20,68.70 |only if haveq(32520) or completedq(32520)
|only if haveq(32561,32520) or completedq(32561,32520)
step
talk Elina Zaralae##69418
turnin Dark Offerings##32217 |goto Isle of Thunder/0 36.63,64.67 |only if haveq(32217) or completedq(32217)
turnin Heinous Sacrifice##32215 |goto Isle of Thunder/0 36.63,64.67 |only if haveq(32215) or completedq(32215)
|only if haveq(32217,32215) or completedq(32217,32215)
step
talk Kethiel Sunlance##67984
turnin Pterrible Ptorment##32216 |goto Isle of Thunder/0 36.76,64.92 |only if haveq(32216) or completedq(32216)
turnin Preventing a Future Threat##32227 |goto Isle of Thunder/0 36.76,64.92 |only if haveq(32227) or completedq(32227)
|only if haveq(32216,32227) or completedq(32216,32227)
step
talk Halduron Brightwing##70520
turnin Harbingers of the Loa##32252 |goto Isle of Thunder/0 36.72,64.79 |only if haveq(32252) or completedq(32252)
turnin Surgical Death##32275 |goto Isle of Thunder/0 36.72,64.79 |only if haveq(32275) or completedq(32275)
turnin Dangers of the Za'Tual##32200 |goto Isle of Thunder/0 36.72,64.79 |only if haveq(32200) or completedq(32200)
accept Encroaching Force##32521 |goto Isle of Thunder/0 36.72,64.79
accept The Beast Pens##32523 |goto Isle of Thunder/0 36.72,64.79
accept The Beating of Troll Drums##32524 |goto Isle of Thunder/0 36.72,64.79
accept Among the Bones##32293 |goto Isle of Thunder/0 36.72,64.79
accept Imposing Threat##32522 |goto Isle of Thunder/0 36.72,64.79
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|tip If no quests are offered, this step will advance.
step
talk Ryshelle Brightlock##69389
turnin Stone Cold##32219 |goto Isle of Thunder/0 38.47,51.17 |only if haveq(32219) or completedq(32219)
turnin Rise No More!##32224 |goto Isle of Thunder/0 38.47,51.17 |only if haveq(32224) or completedq(32224)
turnin Into the Crypts##32226 |goto Isle of Thunder/0 38.47,51.17 |only if haveq(32226) or completedq(32226)
turnin The Conquest of Stone##32517 |goto Isle of Thunder/0 38.47,51.17 |only if haveq(32517) or completedq(32517)
|only if haveq(32219,32224,32226,32517) or completedq(32219,32224,32226,32517)
step
talk Captain Aerthas Firehawk##67983
turnin Ashes of the Enemy##32218 |goto Isle of Thunder/0 38.55,51.13
|only if haveq(32218) or completedq(32218)
step
talk Grand Magister Rommath##67989
turnin Grave Circumstances##32201 |goto Isle of Thunder/0 38.47,51.34 |only if haveq(32201) or completedq(32201)
turnin The Bloodletter##32495 |goto Isle of Thunder/0 38.47,51.34 |only if haveq(32495) or completedq(32495)
turnin Soul Surrender##32220 |goto Isle of Thunder/0 38.47,51.34 |only if haveq(32220) or completedq(32220)
turnin The Call of Thunder##32225 |goto Isle of Thunder/0 38.47,51.34 |only if haveq(32225) or completedq(32225)
turnin Encroaching Force##32521 |goto Isle of Thunder/0 38.47,51.34 |only if haveq(32521) or completedq(32521)
accept Encroaching Force##32521 |goto Isle of Thunder/0 38.47,51.34 |or
accept Competing Magic##32520 |goto Isle of Thunder/0 38.47,51.34 |or
accept Imposing Threat##32522 |goto Isle of Thunder/0 38.47,51.34 |or
accept The Beating of Troll Drums##32524 |goto Isle of Thunder/0 38.47,51.34 |or
accept The Beast Pens##32523 |goto Isle of Thunder/0 38.47,51.34 |or
accept Among the Bones##32293 |goto Isle of Thunder/0 38.47,51.34 |or
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
step
kill Arcweaver Jor'guva##69665 |q 32561/1 |goto Isle of Thunder 44.20,68.70 |only if haveq(32561) or completedq(32561)
kill Arcweaver Jor'guva##69665 |q 32520/1 |goto Isle of Thunder 44.20,68.70 |only if haveq(32520) or completedq(32520)
|only if haveq(32561,32520) or completedq(32561,32520)
step
Run up the stairs |goto Isle of Thunder/0 38.44,50.73 < 20
Enter the building |goto Isle of Thunder/0 34.99,48.92 < 10
kill Kaida the Bloodletter##69250 |q 32495/1 |goto Isle of Thunder 35.00,48.20
|only if haveq(32495) or completedq(32495)
step
talk High Arcanist Savor##67662
turnin The Sleepless Legion##32285 |goto Isle of Thunder/0 33.53,35.15
|only if haveq(32285) or completedq(32285)
step
talk Magister Hathorel##67663
turnin A Wing to Fly On##32506 |goto Isle of Thunder/0 32.48,35.24
|only if haveq(32506) or completedq(32506)
step
talk Girana the Blooded##67673
turnin The Zandalari Colossus##32230 |goto Isle of Thunder 32.50,35.20 |only if haveq(32230) or completedq(32230)
turnin The Shuddering Moor##32228 |goto Isle of Thunder 32.50,35.20 |only if haveq(32228) or completedq(32228)
|only if haveq(32230,32228) or completedq(32230,32228)
step
talk Lor'themar Theron##67990
turnin Harbingers of the Loa##32252 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32252) or completedq(32252)
turnin Dangers of Trolltonshire##32200 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32200) or completedq(32200)
turnin Among the Bones##32293 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32293) or completedq(32293)
turnin Surgical Death##32275 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32275) or completedq(32275)
turnin Competing Magic##32561 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32561) or completedq(32561)
turnin Competing Magic##32520 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32520) or completedq(32520)
turnin Grave Circumstances##32201 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32201) or completedq(32201)
turnin Soul Surrender##32220 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32220) or completedq(32220)
turnin The Call of Thunder##32225 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32225) or completedq(32225)
turnin Encroaching Force##32521 |goto Isle of Thunder/0 32.51,35.58|only if haveq(32521) or completedq(32521)
accept Competing Magic##32561 |goto Isle of Thunder/0 32.51,35.58
accept Competing Magic##32520 |goto Isle of Thunder/0 32.51,35.58
accept Encroaching Force##32521 |goto Isle of Thunder/0 32.51,35.58
accept Imposing Threat##32562 |goto Isle of Thunder/0 32.51,35.58
accept Imposing Threat##32522 |goto Isle of Thunder/0 32.51,35.58
accept The Beating of Troll Drums##32524 |goto Isle of Thunder/0 32.51,35.58
accept The Beast Pens##32523 |goto Isle of Thunder/0 32.51,35.58
accept Among the Bones##32293  |goto Isle of Thunder/0 32.51,35.58
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
step
Routing to the Conqueror's Terrace |next "Conqueror_Terrace" |only if haveq(32524) or completedq(32524) |or
Routing to the Beast Terrace |next "Beast_Terrace" |only if haveq(32523) or completedq(32523) |or
|only if haveq(32524,32523) or completedq(32524,32523)
step
label "Beast_Terrace"
kill Nurkala##69663 |q 32521/1 |goto Isle of Thunder/0 45.10,35.60
|only if haveq(32521) or completedq(32521)
step
map Isle of Thunder/0
path loop off
path	46.52,48.35	48.57,50.45	50.14,53.64	53.16,57.03	53.31,58.36
kill Mighty Devilsaur##69406 |q 32228/1
|only if haveq(32228) or completedq(32228)
step
map Isle of Thunder/0
path loop off
path	44.60,63.60	43.00,63.00	41.80,62.40
kill Zandalari Colossus##69405 |q 32230/1
|tip It patrols around this circular path, some searching may be necessary.
|only if haveq(32230) or completedq(32230)
step
kill Zur'chaka the Bonecrafter##69666 |q 32293/1 |goto Isle of Thunder/0 41.90,79.40
|only if haveq(32293) or completedq(32293)
step
kill 1 Horgak the Enslaver##70176 |q 32562/1 |goto Isle of Thunder/0 45.70,59.50 |only if haveq(32562)
kill 1 Horgak the Enslaver##70176 |q 32522/1 |goto Isle of Thunder/0 45.70,59.50 |only if haveq(32522)
|only if haveq(32562,32522)
step
label "Kill_Nurkala"
kill Nurkala##69663 |q 32521/1 |goto Isle of Thunder/0 45.10,35.60
|only if haveq(32521) or completedq(32521)
step
talk Scout Captain Elsia##67985
Find Scout Captain Elsia at the Beast Pens |q 32523/1 |goto Isle of Thunder/0 47.10,40.70
|only if haveq(32523) or completedq(32523)
step
talk Scout Captain Elsia##67985
turnin The Beast Pens##32523 |goto Isle of Thunder/0 47.10,40.70
|only if haveq(32523) or completedq(32523)
step
talk Magister Edien Sunhollow##67986
accept Saur Loser##32207 |goto Isle of Thunder/0 47.20,40.80
accept Direhorn or Devilsaur##32297 |goto Isle of Thunder/0 47.20,40.80
accept Loa-saur##32283 |goto Isle of Thunder/0 47.20,40.80
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32523) or completedq(32523)
step
talk Scout Captain Elsia##67985
accept Dino Might##32298 |or |goto Isle of Thunder/0 47.10,40.70
accept Compy Stomp##32282 |or |goto Isle of Thunder/0 47.10,40.70
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32523) or completedq(32523)
step
label "Beast_Pens_Objectives"
kill 1 Horgak the Enslaver##70176 |q 32562/1 |goto Isle of Thunder/0 45.70,59.50 |only if haveq(32562)
kill 1 Horgak the Enslaver##70176 |q 32522/1 |goto Isle of Thunder/0 45.70,59.50 |only if haveq(32522)
|only if haveq(32562,32522)
stickystart "Use_Saur_Fetish"
stickystart "Kill_Beast_Pen_Trolls"
stickystart "Kill_Trained_Saurid"
stickystart "Kill_Raptors"
kill Loa Speaker##69302 |q 32283/1 |goto 53.60,44.60
|only if haveq(32283) or completedq(32283)
step
label "Use_Saur_Fetish"
Kill Zandalari enemies around this area |kill Zandalari Saurcaller##69154, Zandalari Fetish-Binder##69155
click Saur Fetish##218373
collect 5 Saur Fetish##93668 |n
use the Saur Fetish##93668
Use #5# Saur Fetishes on dinosaurs in the area |q 32298/1 |only if haveq(32298) |goto Isle of Thunder/0 49.20,40.90
|only if haveq(32298) or completedq(32298)
step
label "Kill_Beast_Pen_Trolls"
Kill enemies around this area |kill Trained Compy##58071, Zandalari Fetish-Binder##69155,  Zandalari Beastlord##69144, Zandalari Fetish-Binder##69155, Zandalari Saurcaller##69154
|tip They look like trolls.
Kill #10# Beast Pens Trolls |q 32207/1 |goto Isle of Thunder/0 49.20,40.90
You Can Find More Around [goto Isle of Thunder/0 49.40,38.20]
|only if haveq(32207) or completedq(32207)
step
label "Kill_Raptors"
Kill enemies around this area |kill Tamed Bladetalon##69180, Maturing Raptor##69183
|tip They look like raptors.
Slay #5# Raptors |q 32282/1 |goto Isle of Thunder/0 49.20,40.90
You can find more raptors around the following location |goto 49.60,37.90
|only if haveq(32282) or completedq(32282)
step
label "Kill_Trained_Saurid"
kill 10 Trained Saurid##58071 |q 32282/2 |goto Isle of Thunder/0 49.20,40.90
|only if haveq(32282) or completedq(32282)
step
kill Master Caller##69286+
|tip Kill everything around it as well.
Disrupt the Binding Ritual |q 32297/1 |goto Isle of Thunder/0 51.80,32.90
|only if haveq(32297) or completedq(32297)
step
talk Scout Captain Elsia##67985
turnin Dino Might##32298 |goto Isle of Thunder/0 47.20,40.60 |only if haveq(32298) or completedq(32298)
turnin Compy Stomp##32282 |goto Isle of Thunder/0 47.20,40.60 |only if haveq(32282) or completedq(32282)
|only if haveq(32298,32282) or completedq(32298,32282)
step
talk Magister Edien Sunhollow##67986
turnin Saur Loser##32207 |goto Isle of Thunder/0 47.22,40.75 |only if haveq(32207) or completedq(32207)
turnin Loa-saur##32283 |goto Isle of Thunder/0 47.22,40.75 |only if haveq(32283) or completedq(32283)
turnin Direhorn or Devilsaur##32297 |goto Isle of Thunder/0 47.22,40.75 |only if haveq(32297) or completedq(32297)
accept Save Our Scouts!##32209 |or |goto Isle of Thunder/0 47.22,40.75
accept Maximum Capacitor##32208 |or |goto Isle of Thunder/0 47.22,40.75
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32523) or completedq(32523)
step
talk Scout Captain Elsia##67985
accept Encroaching Force##32563 |goto Isle of Thunder/0 47.17,40.64
accept Zandalari on the Rise##32564 |goto Isle of Thunder/0 47.17,40.64
|tip If quests are offered, you will not be able to accept all of these quests.
Click Here If No Quests Are Available |confirm
|only if haveq(32523) or completedq(32523)
step
kill Arcweaver Jor'guva##69665 |q 32564/1 |goto Isle of Thunder 44.20,68.70
|only if haveq(32564) or completedq(32564)
step
kill Nurkala##69663 |q 32563/1 |goto Isle of Thunder 45.30,35.10
|only if haveq(32563) or completedq(32563)
step
talk Scout Captain Elsia##67985
turnin Encroaching Force##32563 |goto Isle of Thunder/0 47.17,40.64 |only if haveq(32563) or completedq(32563)
turnin Zandalari on the Rise##32564 |or |goto Isle of Thunder/0 47.17,40.64 |only if haveq(32564) or completedq(32564)
|only if haveq(32563,32564) or completedq(32563,32564)
step
use the Arcane Emancipator##93761
|tip Use it on Scout Alaine.
Rescue Scout Alaine |q 32209/3 |goto Isle of Thunder/1 28.00,62.20
|only if haveq(32209) or completedq(32209)
step
use the Arcane Emancipator##93761
|tip Use it on Scout Elearis.
Rescue Scout Elearis |q 32209/1 |goto Isle of Thunder/1 44.30,54.80
|only if haveq(32209) or completedq(32209)
step
use the Arcane Emancipator##93761
|tip Use it on Scout Merior.
Rescue Scout Merior |q 32209/2 |goto Isle of Thunder/1 54.30,35.20
|only if haveq(32209) or completedq(32209)
step
clicknpc Lightning Drill##69671
Destroy the Western Lightning Drill |q 32208/1 |goto Isle of Thunder/1 21.00,69.90
|only if haveq(32208) or completedq(32208)
step
clicknpc Lightning Drill##69671
Destroy the Central Lightning Drill |q 32208/2 |goto Isle of Thunder/1 32.60,37.50
|only if haveq(32208) or completedq(32208)
step
clicknpc Lightning Drill##69671
Destroy the Eastern Lightning Drill |q 32208/3 |goto Isle of Thunder/1 62.20,15.40
|only if haveq(32208) or completedq(32208)
step
kill Metal Lord Mono-Han##69326 |q 32209/4 |goto Isle of Thunder/0 54.90,31.30
|only if haveq(32209) or completedq(32209)
step
kill Metal Lord Mono-Han##69326 |q 32208/4 |goto Isle of Thunder/0 54.90,31.30
|only if haveq(32208) or completedq(32208)
step
_Click the Quest Complete Box:_
turnin Save Our Scouts!##32209 |only if haveq(32209) or completedq(32209)
turnin Maximum Capacitor##32208 |only if haveq(32208) or completedq(32208)
accept Forge Ahead!##32292 |goto Isle of Thunder/0 53.93,49.77 |or
accept Forge Ahead!##32722 |goto Isle of Thunder/0 53.93,49.77 |or
|tip Sometimes, it won't offer the quest to you through the box.
|tip Speak with Scout Captain Elsia if the quest didn't accept automatically.
Check here if Beast Pens Was Active [Isle of Thunder/0 47.17,40.64]
|tip If the quest doesn't show up, make sure you don't have any quests for the Thundering Isles to turn in.
Click here when no more quests are available |confirm
|only if haveq(32523) or completedq(32523)
step
kill Itoka##69461 |q 32292/1 |goto Isle of Thunder/0 57.70,34.00 |only if haveq(32292) or completedq(32292)
kill Itoka##69461 |q 32722/1 |goto Isle of Thunder/0 57.70,34.00 |only if haveq(32722) or completedq(32722)
|only if haveq(32292,32722) or completedq(32292,32722)
step
kill Fleshcrafter Hoku##69435
collect Mogu Codex Fragment##93731 |q 32292/2 |goto Isle of Thunder/0 55.40,38.40 |only if haveq(32292) or completedq(32292)
collect Mogu Codex Fragment##93731 |q 32722/2 |goto Isle of Thunder/0 55.40,38.40 |only if haveq(32722) or completedq(32722)
|only if haveq(32292,32722) or completedq(32292,32722)
step
talk Scout Captain Elsia##70551
turnin Forge Ahead!##32292 |goto Isle of Thunder/0 58.70,42.70 |only if haveq(32292) or completedq(32292)
turnin Forge Ahead!##32722 |goto Isle of Thunder/0 58.70,42.70 |only if haveq(32722) or completedq(32722)
|only if haveq(32292,32722) or completedq(32292,32722)
step
talk Taoshi##69413
accept Extended Shore Leave##32676 |or |goto Isle of Thunder/0 58.60,42.70
accept Raiding the Vault##32677 |or |goto Isle of Thunder/0 58.60,42.70
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(69413) |or
|tip If no quests are offered, this step will advance.
|only if haveq(32523) or completedq(32523)
step
kill Lu-Shero##69274
collect Hoard-Keeper's Key##95374 |q 32677 |goto Isle of Thunder/2 58.60,66.20
|only if haveq(32677) or completedq(32677)
step
click Stormy Chest##218853
collect 1 Choker of Storms##95372 |q 32677/1 |goto 33.20,28.30
|only if haveq(32677) or completedq(32677)
step
collect Workshop Orders##95371 |q 32676/2 |goto Isle of Thunder/0 63.80,38.90
|only if haveq(32676) or completedq(32676)
step
kill Arcweaver Uzan##69272+ |q 32676/1 |goto Isle of Thunder/0 67.70,46.30
|only if haveq(32676) or completedq(32676)
step
Run up the stairs |goto Isle of Thunder/0 38.44,50.73 < 20
Enter the building |goto Isle of Thunder/0 34.99,48.92 < 10
kill Kaida the Bloodletter##69250 |q 32495/1 |goto Isle of Thunder 35.00,48.20
|only if haveq(32495) or completedq(32495)
step
Rounting to Conqueror's Terrace |next |only if haveq(32524) or completedq(32524)
Routing to the Start |next "Final_Turnin" |only if default
step
label "Conqueror_Terrace"
kill Nurkala##69663 |q 32521/1 |goto Isle of Thunder/0 45.10,35.60
|only if haveq(32521) or completedq(32521)
step
map Isle of Thunder/0
path loop off
path	46.52,48.35	48.57,50.45	50.14,53.64	53.16,57.03	53.31,58.36
kill Mighty Devilsaur##69406 |q 32228/1
|only if haveq(32228) or completedq(32228)
step
map Isle of Thunder/0
path loop off
path	44.60,63.60	43.00,63.00	41.80,62.40
kill Zandalari Colossus##69405 |q 32230/1
|tip It patrols around this circular path, some searching may be necessary.
|only if haveq(32230) or completedq(32230)
step
kill Zur'chaka the Bonecrafter##69666 |q 32293/1 |goto Isle of Thunder/0 41.90,79.40
|only if haveq(32293) or completedq(32293)
step
kill 1 Horgak the Enslaver##70176 |q 32562/1 |goto Isle of Thunder/0 45.70,59.50 |only if haveq(32562)
kill 1 Horgak the Enslaver##70176 |q 32522/1 |goto Isle of Thunder/0 45.70,59.50 |only if haveq(32522)
|only if haveq(32562,32522)
step
talk Scout Captain Elsia##67985
turnin The Beating of Troll Drums##32524 |goto Isle of Thunder/0 53.93,49.77 |only if haveq(32524) or completedq(32524)
accept Very Disarming##32233 |goto Isle of Thunder/0 53.93,49.77
accept This Just Won't Do##32206 |goto Isle of Thunder/0 53.93,49.77
accept What's Inside Counts##32232 |goto Isle of Thunder/0 53.93,49.77
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(67985) |or
|tip If no quests are offered, this step will advance.
|only if haveq(32524) or completedq(32524)
step
talk Magister Edien Sunhollow##67986
accept Power Play##32494 |or 2 |goto Isle of Thunder/0 53.94,49.86
accept Knowledge Is Power##32234 |or 2 |goto Isle of Thunder/0 53.94,49.86
accept They All Fall Down##32493 |or 2 |goto Isle of Thunder/0 53.94,49.86
|tip If quests are offered, you will not be able to accept all of these quests.
Check for Quests |complete nodailies(67986) |or
|tip If no quests are offered, this step will advance.
|only if completedq(32524)
stickystart "Collect_Ritual_Artifacts"
stickystart "Collect_Loa-Infused_Blades"
stickystart "Slay_Conqueror's_Terrace_Trolls"
stickystart "Capture_Zandalari_Spirits"
step
label "Conqueror_Terrace_Objectives"
kill Arcanital Ra'kul##69300
collect 1 Mask of the Dark Mystic##93734 |q 32494/2 |goto Isle of Thunder/0 56.73,46.35
|only if haveq(32494) or completedq(32494)
step
kill Spiritbinder Tu'chek##69301
collect Mask of the Spirit-Caller##93733 |q 32494/1 |goto Isle of Thunder/0 59.40,56.60
|only if haveq(32494) or completedq(32494)
step
Kill Priest enemies around this area |kill Priest of the Hydra##69568, Priest of the Direhorn##69569, Priest of the Hawk##69570, Priest of the Serpent##69567
|tip Kill all of them ones channeling magic onto Tak'u.
kill Guardian Tak'u##69336 |q 32232/1 |goto Isle of Thunder/0 60.20,54.00
|only if haveq(32232) or completedq(32232)
step
label "Collect_Ritual_Artifacts"
click Ritual Artifact##218053
collect 6 Ritual Artifact##93735 |q 32234/1 |goto Isle of Thunder/0 57.10,50.40
|only if haveq(32234) or completedq(32234)
step
label "Collect_Loa-Infused_Blades"
click Loa-Infused Blade##218056
collect 7 Loa-Infused Blade##93736 |q 32233/1 |goto Isle of Thunder/0 55.70,50.70
|only if haveq(32233) or completedq(32233)
step
label "Slay_Conqueror's_Terrace_Trolls"
Kill Zandalari enemies around this area |kill Zandalari Acolyte##69295, Zandalari Bloodguard##69294, Zandalari Haruspex##69297, Zandalari Soultwister##69296, Priest of the Hydra##69568, Priest of the Direhorn##69569, Priest of the Hawk##69570, Priest of the Serpent##69567
Slay #8# Conqueror's Terrace Zandalari |q 32206/1 |goto Isle of Thunder/0 56.71,50.34
|only if haveq(32206) or completedq(32206)
step
label "Capture_Zandalari_Spirits"
kill Spirit-Bound Sentry##69335
use the Resonance Siphon##93806
|tip Use it on Spirit-Bound Sentries.
Capture #5# Zandalari Spirits |q 32493/1 |goto Isle of Thunder 55.70,50.70
|only if haveq(32493) or completedq(32493)
step
talk Scout Captain Elsia##67985
turnin This Just Won't Do##32206 |goto Isle of Thunder/0 53.90,49.80 |only if haveq(32206) or completedq(32206)
turnin Very Disarming##32233 |goto Isle of Thunder/0 53.90,49.80 |only if haveq(32233) or completedq(32233)
turnin What's Inside Counts##32232 |goto Isle of Thunder/0 53.90,49.80 |only if haveq(32232) or completedq(32232)
|only if haveq(32206,32233,32232) or completedq(32206,32233,32232)
step
talk Magister Edien Sunhollow##67986
turnin Power Play##32494 |goto Isle of Thunder/0 53.90,49.80 |only if haveq(32494) or completedq(32494)
turnin Knowledge Is Power##32234 |goto Isle of Thunder/0 53.93,49.86 |only if haveq(32234) or completedq(32234)
turnin They All Fall Down##32493 |goto Isle of Thunder/0 53.93,49.86 |only if haveq(32493) or completedq(32493)
accept Save Our Scouts!##32209 |or |goto Isle of Thunder/0 53.93,49.86
accept Maximum Capacitor##32208 |or |goto Isle of Thunder/0 53.93,49.86
Click here when no more quests are available |confirm
step
talk Scout Captain Elsia##67985
accept Raining Bones##32294 |or |goto Isle of Thunder/0 53.93,49.77
accept Encroaching Force##32565 |or |goto Isle of Thunder/0 53.93,49.77
Click here when no more quests are available |confirm
step
kill Zur'chaka the Bonecrafter##69666 |q 32294/1 |goto Isle of Thunder 54.50,45.30
|only if haveq(32294) or completedq(32294)
step
kill Nurkala##69663 |q 32565/1 |goto Isle of Thunder 61.90,61.60
|only if haveq(32565) or completedq(32565)
step
talk Scout Captain Elsia##67985
turnin Raining Bones##32294 |goto Isle of Thunder 53.90,49.80 |only if haveq(32294) or completedq(32294)
turnin Encroaching Force##32565 |goto Isle of Thunder 53.90,49.80 |only if haveq(32565) or completedq(32565)
|only if haveq(32294,32565) or completedq(32294,32565)
step
use the Arcane Emancipator##93761
Rescue Scout Alaine |q 32209/3 |goto Isle of Thunder/1 28.00,62.20
|only if haveq(32209) or completedq(32209)
step
use the Arcane Emancipator##93761
Rescue Scout Elearis |q 32209/1 |goto Isle of Thunder/1 44.30,54.80
|only if haveq(32209) or completedq(32209)
step
use the Arcane Emancipator##93761
Rescue Scout Merior |q 32209/2 |goto Isle of Thunder/1 54.30,35.20
|only if haveq(32209) or completedq(32209)
step
clicknpc Lightning Drill##69671
Destroy the Western Lightning Drill |q 32208/1 |goto Isle of Thunder/1 21.00,69.90
|only if haveq(32208) or completedq(32208)
step
clicknpc Lightning Drill##69671
Destroy the Central Lightning Drill |q 32208/2 |goto Isle of Thunder/1 32.60,37.50
|only if haveq(32208) or completedq(32208)
step
clicknpc Lightning Drill##69671
Destroy the Eastern Lightning Drill |q 32208/3 |goto Isle of Thunder/1 62.20,15.40
|only if haveq(32208) or completedq(32208)
step
kill Metal Lord Mono-Han##69326 |q 32209/4 |goto Isle of Thunder/0 54.90,31.30
|only if haveq(32209) or completedq(32209)
step
kill Metal Lord Mono-Han##69326+ |q 32208/4 |goto Isle of Thunder/0 54.90,31.30
|only if haveq(32208) or completedq(32208)
step
_Click the Quest Complete Box:_
turnin Save Our Scouts!##32209 |only if haveq(32209) or completedq(32209)
turnin Maximum Capacitor##32208 |only if haveq(32208) or completedq(32208)
accept Forge Ahead!##32292 |goto Isle of Thunder/0 53.93,49.77 |or
accept Forge Ahead!##32722 |goto Isle of Thunder/0 53.93,49.77 |or
|tip Sometimes, it won't offer the quest to you through the box.
|tip Speak with Scout Captain Elsia if the quest didn't accept automatically.
Check here if Beast Pens Was Active [Isle of Thunder/0 47.17,40.64]
Click here when no more quests are available |confirm
step
Continuing Quests |next |only if haveq(32292,32722) or completedq(32292,32722)
Routing to Start |next "Reset" |only if not haveq(32292,32722)
step
kill Itoka##69461 |q 32292/1 |goto Isle of Thunder/0 57.70,34.00 |only if haveq(32292) or completedq(32292)
kill Itoka##69461 |q 32722/1 |goto Isle of Thunder/0 57.70,34.00 |only if haveq(32722) or completedq(32722)
|only if haveq(32292,32722) or completedq(32292,32722)
step
kill Fleshcrafter Hoku##69435
collect Mogu Codex Fragment##93731 |q 32292/2 |goto Isle of Thunder/0 55.40,38.40 |only if haveq(32292) or completedq(32292)
collect Mogu Codex Fragment##93731 |q 32722/2 |goto Isle of Thunder/0 55.40,38.40 |only if haveq(32722) or completedq(32722)
|only if haveq(32292,32722) or completedq(32292,32722)
step
talk Scout Captain Elsia##70551
turnin Forge Ahead!##32292 |goto Isle of Thunder/0 58.70,42.70 |only if haveq(32292) or completedq(32292)
turnin Forge Ahead!##32722 |goto Isle of Thunder/0 58.70,42.70 |only if haveq(32722) or completedq(32722)
|only if haveq(32292,32722) or completedq(32292,32722)
step
talk Taoshi##69413
accept Extended Shore Leave##32676 |goto Isle of Thunder/0 58.67,42.76
accept Raiding the Vault##32677 |goto Isle of Thunder/0 58.67,42.76
Click here when no more quests are available |confirm
step
kill Lu-Shero##69274
|tip Inside the building.
collect 1 Hoard-Keeper's Key##95374 |q 32677 |goto Isle of Thunder/2 58.60,66.20
|only if haveq(32677) or completedq(32677)
step
click Stormy Chest##218853
collect Choker of Storms##95372 |q 32677/1 |goto 33.20,28.30
|only if haveq(32677) or completedq(32677)
step
collect Workshop Orders##95371 |q 32676/2 |goto Isle of Thunder/0 63.80,38.90
|only if haveq(32676) or completedq(32676)
step
kill Arcweaver Uzan##69272 |q 32676/1 |goto Isle of Thunder/0 67.70,46.30
|only if haveq(32676) or completedq(32676)
step
Run up the stairs |goto Isle of Thunder/0 38.44,50.73 < 20
Enter the building |goto Isle of Thunder/0 34.99,48.92 < 10
kill Kaida the Bloodletter##69250 |q 32495/1 |goto Isle of Thunder 35.00,48.20
|only if haveq(32495) or completedq(32495)
step
label "Final_Turnin"
talk Lor'themar Theron##67990
turnin Extended Shore Leave##32676 |goto Isle of Thunder/0 32.50,35.50 |only if haveq(32676) or completedq(32676)
turnin Raiding the Vault##32677 |goto Isle of Thunder/0 32.50,35.50 |only if haveq(32677) or completedq(32677)
turnin Competing Magic##32520 |goto Isle of Thunder/0 32.50,35.50 |only if haveq(32520) or completedq(32520)
turnin Competing Magic##32561 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32561) or completedq(32561)
turnin Imposing Threat##32562 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32562) or completedq(32562)
turnin Imposing Threat##32522 |goto Isle of Thunder/0 32.51,35.58 |only if haveq(32522) or completedq(32522)
turnin Harbingers of the Loa##32252 |goto Isle of Thunder/0 32.51,35.58  |only if haveq(32252) or completedq(32252)
turnin Dangers of Trolltonshire##32200 |goto Isle of Thunder/0 32.51,35.58  |only if haveq(32200) or completedq(32200)
turnin Among the Bones##32293 |goto Isle of Thunder/0 32.51,35.58  |only if haveq(32293) or completedq(32293)
turnin Surgical Death##32275 |goto Isle of Thunder/0 32.51,35.58  |only if haveq(32275) or completedq(32275)
turnin Encroaching Force##32565 |goto Isle of Thunder/0 32.51,35.58  |only if haveq(32565) or completedq(32565)
turnin Encroaching Force##32521 |goto Isle of Thunder/0 32.51,35.58  |only if haveq(32521) or completedq(32521)
turnin Encroaching Force##32563 |goto Isle of Thunder/0 32.51,35.58  |only if haveq(32563) or completedq(32563)
|only if haveq(32252,32200,32293,32275,32676,32677,32520,32561,32562,32522,32565,32521,32563) or completedq(32252,32200,32293,32275,32676,32677,32520,32561,32562,32522,3252,32565,32521,32563)
step
talk Girana the Blooded##67673
turnin The Zandalari Colossus##32230 |goto Isle of Thunder 32.50,35.20
turnin The Shuddering Moor##32228 |goto Isle of Thunder 32.50,35.20
|only if haveq(32230,32228) or completedq(32230,32228)
step
talk Magister Hathorel##67663
turnin A Wing to Fly On##32506 |goto Isle of Thunder 32.50,35.20
|only if haveq(32506) or completedq(32506)
step
You have completed the available daily quests |complete false or not completedq(32729,32521,32230,32728,32228,32730,32506,32201,32225,32495,32219,32226,32224,32517,32218,32220,32275,32252,32200,32217,32215,32216,32227,32523,32524,32293,32522,32204,32254,32605,32255,32274,32299,32489,32491,32561,32520,32562) |next "Reset"
|tip New quests will become available with the next daily server reset.
]])
QuestCore:RegisterGuide("Daily Guides\\Mists of Pandaria Dailies\\Beastmaster's Hunt Dailies (Dominance Offensive)",{
expansion="mists",
mopready=true,
startlevel=90,
description="This guide will take you through the vendor quests for the Dominance Offensive to kill one of 3 beasts for reputation each day.",
},[[
step
talk Sunwalker Dezco##64566
accept Meet the Scout##32249 |goto Vale of Eternal Blossoms/0 62.92,28.17
step
talk Scout Rokla##67812
turnin Meet the Scout##32249 |goto Krasarang Wilds/0 8.73,64.36
step
Watch the dialogue
talk Garrosh Hellscream##62092
|tip He will eventually reach the beach.
accept The Might of the Warchief##32250 |goto Krasarang Wilds/0 8.67,64.45
stickystart "Slay_Alliance_Troops"
step
talk Blood Guard Gro'tash##67927
|tip Kill any enemies he is attacking.
Find Blood Guard Gro'tash |q 32250/2 |goto Krasarang Wilds/0 10.70,53.16
step
talk Grizzle Gearslip##67926
|tip Kill any enemies he is attacking.
Find Grizzle Gearslip |q 32250/3 |goto Krasarang Wilds/0 15.73,57.76
step
label "Slay_Alliance_Troops"
kill Alliance Sentinel##67900, Alliance Footman##67901, Alliance Priest##67902
Slay #25# Alliance |q 32250/1 |goto Krasarang Wilds/0 11.51,61.24
step
_Next to you:_
talk Garrosh Hellscream##62092
turnin The Might of the Warchief##32250 |goto Krasarang Wilds/0 11.51,61.24
accept Domination Point##32108 |goto Krasarang Wilds/0 11.51,61.24
step
click Signal Fire##216274
turnin Domination Point##32108 |goto Krasarang Wilds/0 8.46,63.92
step
talk Kromthar##67785
fpath Domination Point |goto Krasarang Wilds/0 9.69,52.51
step
label "Collect_Tokens"
kill Shieldwall Footman##67304, Shieldwall Rifleman##67297, Dwarven Mortar Team Engineer##67545, Shieldwall Huntress##67317, Shieldwall Vindicator##67296, Shieldwall Peasant##67423
collect 90 Lion's Landing Commission##91838 |goto Krasarang Wilds/0 85.26,27.78
|tip You will need 30 commissions for each vendor quest item, 3 items in total.
|tip You will buy the items and accept the quests one at a time due to the items being unique.
step
talk Ongrom Black Tooth##67751
buy 1 Sturdy Crane Snare##91819 |goto Krasarang Wilds/0 10.77,53.60 |q 32161 |future
step
use the Sturdy Crane Snare##91819
accept Beastmaster's Hunt: The Crane##32161 |goto Krasarang Wilds/0 10.77,53.60
step
talk Ongrom Black Tooth##67751
buy 1 Sturdy Tiger Trap##91821 |goto Krasarang Wilds/0 10.77,53.60 |q 32162 |future
step
use the Sturdy Tiger Trap##91821
accept Beastmaster's Hunt: The Tiger##32162 |goto Krasarang Wilds/0 10.77,53.60
step
talk Ongrom Black Tooth##67751
buy 1 Sturdy Crab Crate##91822 |goto Krasarang Wilds/0 10.77,53.60 |q 32163 |future
step
use the Sturdy Crab Crate##91822
accept Beastmaster's Hunt: The Crab##32163 |goto Krasarang Wilds/0 10.77,53.60
step
kill Great Crane##59763+
collect Pristine Jet Crownfeather##91815 |q 32161/2 |goto Krasarang Wilds/0 72.66,44.93
step
kill Unga Villager##60358+
|tip Make sure you stay in the quest area and kill the correct mobs.
|tip Mobs along the beach don't drop the fish.
collect 30 Funky Rotten Fish##91817 |q 32163/1 |goto Krasarang Wilds/0 46.77,91.08
You can find some bigger clusters around [Krasarang Wilds/0 44.01,90.62]
step
kill Child of Chi-Ji##60616+
|tip You will need to kill a lot of these all over the island.
|tip Fly around the beach area, killing the small groups of cranes.
|tip Then work on the interior while they respawn.
collect 5 Pristine Golden Crownfeather##91814 |q 32161/1 |goto Krasarang Wilds/0 34.32,72.33
The beach can be found at [Krasarang Wilds/0 28.49,68.60]
step
click Mound of Dirt##216161
turnin Beastmaster's Hunt: The Crane##32161 |goto Krasarang Wilds/0 39.21,61.92
step
Watch the dialogue
talk Ancient Bloodcrown Crane##67555
|tip It will walk up and fall to the ground.
accept Beastmaster's Quarry: The Crane##32181 |goto Krasarang Wilds/0 39.26,61.85
step
kill Wasteland Yak##66549, Wasteland Calf##66595
collect 25 Unbruised Yak Haunch##91816 |q 32162/1 |goto Dread Wastes/0 52.40,66.75
You can find more around:
[Dread Wastes/0 45.48,55.54]
[Dread Wastes/0 37.55,52.10]
step
click Mound of Dirt##216161
turnin Beastmaster's Hunt: The Tiger##32162 |goto Krasarang Wilds/0 13.87,41.34
step
Watch the dialogue
talk Krasari Elder##67556
|tip It will walk up and fall to the ground.
accept Beastmaster's Quarry: The Tiger##32182 |goto Krasarang Wilds/0 13.89,41.20
step
click Mound of Dirt##216161
turnin Beastmaster's Hunt: The Crab##32163 |goto Krasarang Wilds/0 56.30,42.05
step
Watch the dialogue
talk Colossal Viseclaw##67508
|tip It will walk up and become captured in a crate.
accept Beastmaster's Quarry: The Crab##32183 |goto Krasarang Wilds/0 56.34,42.15
step
talk Huntsman Blake##67558
turnin Beastmaster's Quarry: The Crane##32181 |goto Krasarang Wilds/0 84.33,18.85
turnin Beastmaster's Quarry: The Tiger##32182 |goto Krasarang Wilds/0 84.33,18.85
turnin Beastmaster's Quarry: The Crab##32183 |goto Krasarang Wilds/0 84.33,18.85
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
accept Ancient's Fall##32167 |goto Krasarang Wilds/0 84.33,18.85
step
talk Huntsman Blake##67558
turnin Ancient's Fall##32167 |goto Krasarang Wilds/0 84.33,18.85
step
label "Krasari_Elder"
talk Huntsman Blake##67558
Select _"We would like to fight the Krasari Elder."_ |gossip 40761
|tip Stay close to it at all times.
|tip It will occassionally vanish.
|tip If you have a Hunter, put a flare out.
kill Krasari Elder##67556
accept End of an Elder##32168 |goto Krasarang Wilds/0 84.33,18.85
step
talk Huntsman Blake##67558
turnin End of an Elder##32168 |goto Krasarang Wilds/0 84.33,18.85
step
label "Colossal_Viseclaw"
talk Huntsman Blake##67558
Select _"We would like to fight the Colossal Viseclaw."_ |gossip 40762
kill Colossal Viseclaw##67508
|tip During the fight, kite it around and stay mobile.
|tip It has a damage reduction buff that decreases while while it moves.
|tip Stop moving when the buff nears zero or it will reset upon reaching zero.
accept A Colossal Victory##32169 |goto Krasarang Wilds/0 84.33,18.85
step
talk Huntsman Blake##67558
turnin A Colossal Victory##32169 |goto Krasarang Wilds/0 84.33,18.85
step
You Have Completed the Available Daily Quests |complete false or not completedq(32161,32162,32163,32181,32182,32183,32167,32168,32169) |next "Collect_Tokens"
|tip New quests will become available with the next daily server reset.
]])
