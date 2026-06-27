-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Reputation Guides\\Warlords of Draenor\\Arakkoa Outcasts",{
description="This guide will walk you through becoming exalted with the Arakkoa Outcasts faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Arakkoa Outcasts') < Exalted end,
achieveid={9469},
patch='60001',
},[[
stickystart "info"
step
label "farm"
Killing enemies and questing in Spires of Arak gives you Arakkoa Outcasts rep:
Farm in Skettis |next "skettis" |confirm
Farm in Lost Veil Anzu |next "veil" |confirm
step
label "skettis"
kill Skyreach Labormaster##85542+, Skyreach Tempest-Keeper##84467+, Dread Raven##84083+, Flighted Storm-Spinner##89085+
Kill mobs around _Skettis_ for Arakkoa Outcast reputation |goto Spires of Arak 56.90,11.70
Click to return to the menu |next "farm" |confirm
step
label "veil"
kill Infected Plunderer##86215+, Infected Mechanic##89144+, Befuddled Relic-Seeker##86205+, Highmaul Relic-Seeker##86155+, Highmaul Skullcrusher##89127+
Kill mobs around _Lost Veil Anzu_ for Arakkoa Outcast reputation |goto Spires of Arak 73.40,45.30
Click to return to the menu |next "farm" |confirm
step
label "info"
Your current reputation rank is:
_Neutral_ |only if rep('Arakkoa Outcasts')==Neutral
_Friendly_ |only if rep('Arakkoa Outcasts')==Friendly
_Honored_ |only if rep('Arakkoa Outcasts')==Honored
_Revered_ |only if rep('Arakkoa Outcasts')==Revered
_Exalted_ |only if rep('Arakkoa Outcasts')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Warlords of Draenor\\Frostwolf Orcs",{
description="This guide will walk you through becoming exalted with the Frostwolf Orcs faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Frostwolf Orcs') < Exalted end,
achieveid={9471},
patch='60001',
},[[
stickystart "info"
step
label "menu"
Killing enemies and questing in Frostfire Ridge give you Frostwolf Orc rep:
Stonefury Cliffs |next "stone" |confirm
Magnarok |next "magnarok" |confirm
Iron Siegeworks |next "iron" |confirm
step
label "stone"
kill Bloodmaul Brute##77991+, Bloodmaul Magma Shaper##77992+, Bloodmaul Taskmaster##77993+, Bloodmaul Geomancer##78578
Kill Bloodmaul mobs and their pets found around _Stonefury Cliffs_ for Frostwolf Orcs reputation |goto Frostfire Ridge/0 44.60,18.80
Return to the main menu |next "menu" |confirm
step
label "magnarok"
Many mobs in this area are _Elite_
kill Icecrag Mountainbreaker##87346+, Vicious Acidmaw##76905+, Burning Slagmaw##72348+
Kill mobs found in _Magnarok_ for Frostwolf Orcs reputation |goto Frostfire Ridge/0 69.70,30.50
Return to the main menu |next "menu" |confirm
step
label "iron"
kill Grom'kar Shocktrooper##77944+, Grom'kar Footsoldier##85997+, Grom'kar Pulverizer##78210+, Grom'kar Warforger##77945+, Grom'kar Enforcer##77940
Kill Grom'kar mobs around _Iron Siegeworks_ for Frostwolf Orcs reputation |goto Frostfire Ridge/0 86.10,54.90
Return to the main menu |next "menu" |confirm
step
label "info"
Your current reputation rank is:
_Neutral_ |only if rep('Frostwolf Orcs')==Neutral
_Friendly_ |only if rep('Frostwolf Orcs')==Friendly
_Honored_ |only if rep('Frostwolf Orcs')==Honored
_Revered_ |only if rep('Frostwolf Orcs')==Revered
_Exalted_ |only if rep('Frostwolf Orcs')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Warlords of Draenor\\Laughing Skull Orcs",{
description="This guide will walk you through becoming exalted with the Laughing Skull Orcs faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Laughing Skull Orcs') < Exalted end,
achieveid={9475},
patch='60001',
},[[
step
Routing to Rep |next "menu" |only if hasbuilding(144,2) or hasbuilding(145,3)
Routing to End |next "end" |only if default
stickystart "info"
step
label "menu"
Killing enemies in Gorgrond gives you Laughing Skull Orcs rep:
Select an area below to kill mobs in for reputation
The Pit |next "pit" |confirm
Everbloom Wilds |next "wilds" |confirm
step
label "pit"
kill Iron Cauterizer##85127+, Iron Enforcer##85124+, Iron Bulwark##86536+, Iron Deadshot##86528+, Iron Warden##86499+
Kill mobs around _The Pit_ for Laughing Skill Orcs reputation |goto Gorgrond 48.90,28.90
Return to the main menu |next "menu" |confirm
step
label "wilds"
kill Venomous Ravager##86263+, Everbloom Wasp##86264+, Lumbering Ancient##86262+, Brine Lasher##86267
Kill mobs around _Everbloom Wilds_ for Laughing Skull Orcs reputation |goto Gorgrond 64.20,35.00
Return to the main menu |next "menu" |confirm
step
label "info"
Your current reputation rank is:
_Neutral_ |only if rep('Laughing Skull Orcs')==Neutral
_Friendly_ |only if rep('Laughing Skull Orcs')==Friendly
_Honored_ |only if rep('Laughing Skull Orcs')==Honored
_Revered_ |only if rep('Laughing Skull Orcs')==Revered
_Exalted_ |only if rep('Laughing Skull Orcs')==Exalted
step
label "end"
You must have at least a _level 2 Trading Post_ in your Garrison to gain Laughing Skull Orcs reputation!
|tip Use the Garrison Buildings guide to accomplish this.
]])
QuestCore:RegisterGuide("Reputation Guides\\Warlords of Draenor\\Order of the Awakened",{
description="This guide will walk you through becoming exalted with the Order of the Awakened faction.",
achieveid={10350},
patch='60200',
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (40-70)_
Click here to check out our Tanaan Jungle Questline guide |next "Leveling Guides\\Draenor (10-70)\\Tanaan Jungle (40-70)" |confirm |or
confirm |only if not completedq(38578) |or
step
label "order_awakened_start"
talk Dawn-Seeker Krisek##95424
accept Unseen Influence##39433 |goto Tanaan Jungle/0 60.44,46.72
step
Follow the path |goto Tanaan Jungle/0 54.90,64.10 < 30 |only if walking
kill Broodlord Ixkor##92429
|tip You may have to wait for it to respawn.
collect 1 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 57.80,67.30
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 55.90,66.10 < 30 |only if walking
Continue following the path |goto Tanaan Jungle/0 54.90,63.50 < 30 |only if walking
Run through here |goto Tanaan Jungle/0 51.90,60.50 < 30 |only if walking
Jump down here |goto Tanaan Jungle/0 49.10,57.40 < 10 |only if walking
kill Captain Grok'mar##93264
|tip You may have to wait for him to respawn.
collect 2 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 48.60,57.40
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Jump up here |goto Tanaan Jungle/0 49.10,57.40 < 10 |only if walking
Follow the path |goto Tanaan Jungle/0 49.10,59.30 < 30 |only if walking
Continue following the dirt path |goto Tanaan Jungle/0 46.60,65.90 < 30 |only if walking
Turn off the road here |goto Tanaan Jungle/0 43.10,70.20 < 20 |only if walking
Enter the hole in the ground |goto Tanaan Jungle/0 42.40,68.90 < 20 |walk
Follow the path |goto Tanaan Jungle/0 40.50,69.30 < 20 |only if walking
kill Kris'kar the Unredeemed##93279
|tip You may have to wait for him to respawn.
collect 3 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 39.60,68.10
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 40.50,69.30 < 20 |only if walking
Leave the hole in the ground |goto Tanaan Jungle/0 42.40,68.90 < 20 |walk
kill Bramblefell##91093
|tip You may have to wait for him to respawn. He's a big tree ent that patrols the northern part of Zorammarsh, so you may need to search for him.
collect 4 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 40.80,69.60
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 38.20,75.10 < 30 |only if walking
Enter the cave |goto Tanaan Jungle/0 37.40,75.90 < 30 |walk
Run down the path |goto Tanaan Jungle/0 36.40,77.00 < 20 |only if walking
kill Captain Ironbeard##93076
|tip You may have to wait for him to respawn. He's a skeleton that walks around in this area of the cave, so you may need to search for him.
collect 5 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 36.50,79.80
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 36.70,78.90 < 20 |only if walking
Continue following the path |goto Tanaan Jungle/0 36.40,76.40 < 20 |only if walking
Follow the path |goto Tanaan Jungle/0 38.50,74.60 < 40 |only if walking
Run on the dirt road |goto Tanaan Jungle/0 37.50,69.50 < 30 |only if walking
Follow the path |goto Tanaan Jungle/0 35.60,67.50 < 30 |only if walking
Follow the dirt path up |goto Tanaan Jungle/0 31.10,63.00 < 30 |only if walking
Run up the stairs |goto Tanaan Jungle/0 28.80,66.70 < 20 |only if walking
Continue up the stairs |goto Tanaan Jungle/0 29.10,68.40 < 20 |only if walking
Follow the stairs up |goto Tanaan Jungle/0 30.40,68.60 < 20 |only if walking
kill Ceraxas##90434
|tip You may have to wait for it to respawn.
collect 6 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 31.40,68.00
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Run down the stairs |goto Tanaan Jungle/0 30.70,68.50 < 20 |only if walking
Follow the stairs up |goto Tanaan Jungle/0 30.30,70.20 < 20 |only if walking
kill Imp-Master Valessa##90429
|tip You may have to wait for her to respawn. She patrols this small area, so you may need to search for her.
collect 7 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 31.60,72.80
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 45.30,44.70 < 30 |only if walking
kill Felsmith Damorka##92647
|tip You may have to wait for her to respawn.
collect 8 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 45.90,47.20
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 47.80,44.70 < 30 |only if walking
kill Grand Warlock Nethekurse##91695
|tip You may have to wait for him to respawn. He walks in a circle around this area on this path, so you may need to search for him.
collect 9 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 47.40,42.30
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
kill Commander Org'mok##89675
|tip You may have to wait for him to respawn. He walks back and forth on this path, so you may need to search for him.
collect 10 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 50.30,45.20
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
talk Dawn-Seeker Krisek##95424
turnin Unseen Influence##39433 |goto Tanaan Jungle/0 60.44,46.72
step
You've completed the daily for today
Click to restart the dailies run |confirm |next "order_awakened_start"
]])
QuestCore:RegisterGuide("Reputation Guides\\Warlords of Draenor\\The Saberstalkers",{
description="This guide will walk you through becoming exalted with The Saberstalkers faction.",
achieveid={10350},
patch='60200',
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (100) Main Questline_
confirm |only if not completedq(38578)
step
label "saberstalkers_start"
talk Nimi Brightcastle##93396
accept Tooth and Claw##39529 |goto Tanaan Jungle/0 59.70,45.90 |or
|tip This quest has a chance to be available each day, but is not guaranteed to be available.
_
Click here if the quest is not available |confirm |or
step
_Go through_ the doorway |goto Tanaan Jungle/0 60.80,44.70 < 20
kill Hulking Diretusk##89688+, Diretusk Sow##92876+, Diretusk Piglet##92875+
collect 100 Tanaan Jungle Tooth##128438 |q 39529/1 |goto Tanaan Jungle/0 63.90,41.50
step
_Follow_ the path up |goto Tanaan Jungle/0 61.90,43.50 < 20
talk Nimi Brightcastle##93396
turnin Tooth and Claw##39529 |goto Tanaan Jungle/0 59.70,45.90
step
_Follow_ the path around the Alliance town |goto Tanaan Jungle/0 55.00,56.10 < 20
_Follow_ the path |goto Tanaan Jungle/0 54.50,62.90 < 30
_Run on_ the dirt road |goto Tanaan Jungle/0 54.70,64.90 < 20
_Go up_ the dirt path |goto Tanaan Jungle/0 54.00,70.50 < 20
talk Z'tenga the Walker##92805
accept Rumble in the Jungle##39565 |goto Tanaan Jungle/0 55.30,74.80
|tip This quest can only be done once per week.
step
_Follow_ the path |goto Tanaan Jungle/0 54.70,76.70 < 30
kill Blackfang Prowler##89746+, Blackfang Shaman##92481+, Blackfang Savage##89695+, Blackfang Hunter##89747+
|tip They are all around this area. You can use the Group Finder and select Premade Groups -> Custom, then search for "Fang'rila" or "Blackfang". Being in a group will make this go much faster.
collect 40 Blackfang Claw##124099 |q 39565 |goto Tanaan Jungle/0 55.80,78.60
step
talk Z'tenga the Walker##92805
buy Minor Blackfang Challenge Totem##124093 |complete itemcount(124093) > 0 or completedq(39565) |goto Tanaan Jungle/0 55.30,74.70
buy Major Blackfang Challenge Totem##124094 |complete itemcount(124094) > 0 or completedq(39565) |goto Tanaan Jungle/0 55.30,74.70
buy Prime Blackfang Challenge Totem##124095 |complete itemcount(124095) > 0 or completedq(39565) |goto Tanaan Jungle/0 55.30,74.70
step
_Follow_ the path |goto Tanaan Jungle/0 54.70,75.90 < 30
_Enter_ the Challenge Arena |goto Tanaan Jungle/0 54.80,80.90 < 20
use Minor Blackfang Challenge Totem##124093
kill Akrrilo##92766 |q 39565/1 |goto Tanaan Jungle/0 54.40,81.00
|tip Other people can help you, or you can help other people who summon him. Everyone will get credit.
step
use Major Blackfang Challenge Totem##124094
kill Rendarr##92817 |q 39565/2 |goto Tanaan Jungle/0 54.40,81.00
|tip Other people can help you, or you can help other people who summon him. Everyone will get credit.
step
use Prime Blackfang Challenge Totem##124095
kill Eyepiercer##92819 |q 39565/3 |goto Tanaan Jungle/0 54.40,81.00
|tip Other people can help you, or you can help other people who summon him. Everyone will get credit.
step
_Follow_ the path |goto Tanaan Jungle/0 54.90,77.40 < 30
talk Z'tenga the Walker##92805
turnin Rumble in the Jungle##39565 |goto Tanaan Jungle/0 55.30,74.80
step
You've completed the dailies for today
Click to restart the dailies run |confirm |next "saberstalkers_start"
]])
QuestCore:RegisterGuide("Reputation Guides\\Warlords of Draenor\\Steamwheedle Preservation Society",{
description="This guide will walk you through becoming exalted with the Steamwheedle Preservation Society faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Steamwheedle Preservation Society') < Exalted end,
achieveid={9472},
patch='60001',
},[[
step
label "menu"
You Are _Neutral_ with Steamwheedle Preservation Society |only if rep('Steamwheedle Preservation Society')==Neutral
You Are _Friendly_ with Steamwheedle Preservation Society |only if rep('Steamwheedle Preservation Society')==Friendly
You Are _Honored_ with Steamwheedle Preservation Society  |only if rep('Steamwheedle Preservation Society')==Honored
You Are _Revered_ with Steamwheedle Preservation Society  |only if rep('Steamwheedle Preservation Society')==Revered
You Are _Exalted_ with Steamwheedle Preservation Society  |only if rep('Steamwheedle Preservation Society')==Exalted
_Click a line below to_:
Farm Gorian Artifact Fragments |next "farm" |confirm
_
Chest runs for Artifact Fragments and Highmaul Relics |next "loot" |confirm
_
Kill Rares in Nagrand |next "rare" |confirm
step
label "farm"
kill Direfang Prowler##86931+, Warsong Wolf Trainer##87231+, Marsh Anaconda##87039+, Highmaul Guard##87221+, Young Razorclaw##88957+, Wetland Riverbeast##87020+, Grand Elekk##86741+, Thorncoat Talbuk##86727+
collect Gorian Artifact Fragment##118099 |n |goto Nagrand D 36.00,34.10
|tip Turn these in as stacks of 20 for Steamwheedle Preservation Society reputation.
Click to turn in |confirm |next "rare_find"
step
label "loot"
Follow the path, looking at these locations for Highmaul Reliquary chests
map Nagrand D
path follow loose; loop on; ants straight
path	27.80,46.40	35.10,48.60	37.40,42.90
path	49.10,37.60	52.70,33.60	55.20,34.20
path	56.50,38.20	63.10,36.00	64.70,21.60
path	59.00,20.00	57.80,18.60	51.80,26.10
path	49.90,25.70	40.60,25.00	38.80,27.50
click Highmaul Reliquary##237227
collect Gorian Artifact Fragment##118099 |n
collect Highmaul Relic##118100 |n
|tip You turn these in for Steamwheedle Preservation Society reputation.
Click to turn in |confirm
step
label "rare_find"
talk Sallee Silverclamp##87393
|tip Turn in your Highmaul Relics and Gorian Artifact Fragments.
accept A Rare Find##37125 |goto Nagrand D 50.40,41.30 |repeatable |or |only if itemcount(118100) >= 1
accept Fragments of the Past##35147 |goto Nagrand D 50.40,41.30 |repeatable |or |only if itemcount(118099) >= 20
_Click_ to return to the menu |confirm |next "menu"
step
label "rare"
Follow the path:
map Nagrand D
path	30.00,44.80	34.10,51.60	41.70,45.00
path	60.30,38.60	64.40,30.40	62.20,17.50
path	51.20,16.50	48.10,22.00	37.50,38.50
kill Thek'talon##86750,Mu'gra##87666, Xelganak##86835, Dekorhan##86743, Direhoof##86729, Bergruu##86732, Aogexon##86774, Gagrog the Brutal##86771, Vileclaw##88951
_Collect the items that each rare drops_ |only if itemcount(118660) ==0 or itemcount(118660) ==0 or itemcount(118659)==0 or itemcount(118661)==0 or itemcount(118656) ==0 or itemcount(118657)==0 or itemcount(118655)==0 or itemcount(118654)==0 or itemcount(118658)==0 or itemcount(120172)==0
collect Thek'talon's Talon##118660 |n |only if itemcount(118660) >= 1
collect Mu'gra's Head##118659 |n |only if itemcount(118659) >= 1
collect Xelganak's Stinger##118661 |n |only if itemcount(118661) >= 1
collect Dekorhan's Tusk##118656 |n |only if itemcount(118656) >= 1
collect Direhoof's Hide##118657 |n |only if itemcount(118657) >= 1
collect Bergruu's Horn##118655 |n |only if itemcount(118655) >= 1
collect Aogexon's Fang##118654 |n |only if itemcount(118654) >= 1
collect Gagrog's Skull##118658 |n |only if itemcount(118658) >= 1
collect Vileclaw's Claw##120172 |n |only if itemcount(120172) >= 1
|tip You don't have to collect them all.
Click to turn in |confirm
step
talk Gazmolf Futzwangler##87706 |goto Nagrand D/0 50.30,41.10
|tip Turn in your quest items.
accept Aogexon's Fang##37210 |only if itemcount(118654) >= 1 |or
accept Bergruu's Horn##37211 |or |only if itemcount(118655) >= 1 |or
accept Dekorhan's Tusk##37221 |or |only if itemcount(118656) >= 1 |or
accept Direhoof's Hide##37222 |or |only if itemcount(118657) >= 1 |or
accept Gagrog's Skull##37223 |or |only if itemcount(37223) >= 1 |or
accept Mu'gra's Head##37224 |or |only if itemcount(118659) >= 1 |or
accept Thek'talon's Talon##37225 |or |only if itemcount(118660) >= 1 |or
accept Xelganak's Stinger##37226 |or |only if itemcount(118661) >= 1 |or
accept Vileclaw's Claw##37520 |or |only if itemcount(120172) >= 1 |or
_Click_ to return to the menu |confirm always |next "menu" |only if default
]])
QuestCore:RegisterGuide("Reputation Guides\\Warlords of Draenor\\Vol'jin's Headhunters",{
description="This guide will walk you through becoming exalted with the Vol'jin's Headhunters faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Vol\'jin\'s Headhunters') < Exalted end,
achieveid={10350},
patch='60200',
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (100) Main Questline_
confirm |only if not completedq(38578)
step
label "voljin_headhunters_start"
click Tanaan Planning Map##241725
|tip It looks like a round table with a map laying on it.
accept Assault on Ironhold Harbor##37940 |goto Tanaan Jungle/0 61.50,45.90 |or
accept Bleeding the Bleeding Hollow##38044 |goto Tanaan Jungle/0 61.50,45.90 |or
accept Battle At The Iron Front##38047 |goto Tanaan Jungle/0 61.50,45.90 |or
accept Assault on the Ruins of Kra'nak##38252 |goto Tanaan Jungle/0 61.50,45.90 |or
accept Assault on The Fel Forge##38441 |goto Tanaan Jungle/0 61.50,45.90 |or
accept Assault on the Temple of Sha'naar##38449 |goto Tanaan Jungle/0 61.50,45.90 |or
accept Assault on the Throne of Kil'jaeden##38586 |goto Tanaan Jungle/0 61.50,45.90 |or
|tip You will be able to choose between 2 of these quests, but will only be able to accept 1 of these quests per day.
step
kill Grom'kar Warsmith##89935+, Grom'kar Sentry##89857+, Grom'kar Leadslinger##89777+, Grom'kar Cauterizer##90136+
clicknpc True Iron Bomb##90069
|tip They look like round metal spiked balls on the ground and sitting on objects all around this area. Get them and cast the spell they grant you on Iron Battle Engines. They look like big metal artillery machines all around this area.
click Box of Iron Horde Equipment##239839
|tip They look like wooden crates on the ground around this area.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags made of cloth and bone all around this area.
click Inferno Shot##243205
|tip They look like silver metal artillery capsules laying on the ground around this area. They give you a buff that allows you to use Harbor Cannons around this area, which allow you to kill mobs easily.
Assault the Iron Horde Forces at Ironhold Harbor |q 37940/1 |goto Tanaan Jungle/0 39.60,37.00
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the path |goto Tanaan Jungle/0 21.30,58.70 < 30
kill Eye Sentry##95235+, Bleeding Hollow Hunter##89699+, Felblood Overseer##92706+, Bleeding Hollow Cabalist##90851+, Bleeding Hollow Brute##89706+
clicknpc Blood Ritual Orb##83670+
|tip They look like floating swirling red balls around this area.
Assault the Bleeding Hollow at Zeth'Gol |q 38044/1 |goto Tanaan Jungle/0 22.30,51.10
|tip You will see a progress bar in your quest tracking area.
step
click Medical Supplies##239971
|tip They look like wooden crates with red crosses on them on the ground all around this area.
collect First Aid Bandages##122139 |n
clicknpc Wounded Grunt##90452+
|tip You need First Aid Bandages in order to heal them.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags made of cloth and bone all around this area.
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+, Iron Wargronn##90585+, Iron Sniper##77767+
Aid the Battle at the Iron Front |q 38047/1 |goto Tanaan Jungle/0 11.40,56.10
|tip You will see a progress bar in your quest tracking area.
step
kill Felborn Enforcer##90620+, Sethekk Neophyte##90312+, Felborn Instructor##89748
clicknpc Ritual Circle##90300
|tip They look like circular green glowing symbols on the ground around this area.
Assault the Shadow Council Forces at the Ruins of Kra'nak |q 38252/1 |goto Tanaan Jungle/0 24.00,39.60
|tip You will see a progress bar in your quest tracking area.
step
kill Felblood Warrior##90066+, Felblood Overseer##91760+, Felblood Deadeye##91764+, Forge Engineer##91721+
click Siege Equipment Blueprints##241669
|tip They look like small tan pieces of paper laying on the ground and on objects around this area.
Assault the Iron Horde Forces at the Fel Forge |q 38441/1 |goto Tanaan Jungle/0 45.30,43.50
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the path |goto Tanaan Jungle/0 31.10,63.00 < 30
_Go up_ the stairs |goto Tanaan Jungle/0 28.90,66.70 < 20
kill Sargerei Nullifier##90295+, Sargerei Felbinder##90286+
clicknpc Bound Spirit##90703
|tip They look like floating draenei spirits kicking in the air and being choked around this area.
clicknpc Defiled Corpse##90302
|tip They look like dead draenei laying on the ground around this area.
Assault the Sargerei Forces at the Temple of Sha'naar |q 38449/1 |goto Tanaan Jungle/0 28.50,67.90
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the road |goto Tanaan Jungle/0 58.10,42.50 < 30
_Run up_ the zigzag path |goto Tanaan Jungle/0 58.80,31.80 < 30
kill Felflame Fiend##92082+, Shadowheart Fiend##92083+, Infernal Devastator##92031+, Felblood Corruptor##92396+, Felguard Sentinel##92026+
Assault the Shadow Council Forces at the Throne of Kil'jaeden |q 38586/1 |goto Tanaan Jungle/0 56.00,25.60
|tip You will see a progress bar in your quest tracking area.
|tip This is a group quest. Use the Group Finder to easily find a group by opening it and selecting Premade Groups -> Custom, then searching for "Kil'jaeden".
step
talk Draka##90481
turnin Assault on Ironhold Harbor##37940 |goto Tanaan Jungle/0 61.50,45.80 |only if haveq(37940) or completedq(37940)
turnin Bleeding the Bleeding Hollow##38044 |goto Tanaan Jungle/0 61.50,45.80 |only if haveq(38044) or completedq(38044)
turnin Battle At The Iron Front##38047 |goto Tanaan Jungle/0 61.50,45.80 |only if haveq(38047) or completedq(38047)
turnin Assault on the Ruins of Kra'nak##38252 |goto Tanaan Jungle/0 61.50,45.80 |only if haveq(38252) or completedq(38252)
turnin Assault on The Fel Forge##38441 |goto Tanaan Jungle/0 61.50,45.80 |only if haveq(38441) or completedq(38441)
turnin Assault on the Temple of Sha'naar##38449 |goto Tanaan Jungle/0 61.50,45.80 |only if haveq(38449) or completedq(38449)
turnin Assault on the Throne of Kil'jaeden##38586 |goto Tanaan Jungle/0 61.50,45.80 |only if haveq(38586) or completedq(38586)
step
talk Shadow Hunter Denjai##96014
accept Pressing the Attack##39526 |goto Tanaan Jungle/0 61.70,45.70
accept Harnessing Their Power##39514 |goto Tanaan Jungle/0 61.70,45.70 |or
accept Disarming Sha'naar##39513 |goto Tanaan Jungle/0 61.70,45.70 |or
accept Secrets of the Shadow Council##39512 |goto Tanaan Jungle/0 61.70,45.70 |or
accept Blood of Fallen Brothers##39511 |goto Tanaan Jungle/0 61.70,45.70 |or
accept A Little Wetwork##39510 |goto Tanaan Jungle/0 61.70,45.70 |or
accept Bloodied Blades of Zeth'Gol##39509 |goto Tanaan Jungle/0 61.70,45.70 |or
|tip You will only be able to accept 2 of these quests per day.
step
kill Iron Wargronn##90585+
collect Wargronn Harness##128434 |q 39514/1 |goto Tanaan Jungle/0 13.10,56.20
step
accept Battle At The Iron Front##39444
click Medical Supplies##239971
|tip They look like wooden crates with red crosses on them on the ground all around this area.
collect First Aid Bandages##122139 |n
clicknpc Wounded Grunt##90452+
|tip You need First Aid Bandages in order to heal them.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags made of cloth and bone all around this area.
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+, Iron Wargronn##90585+, Iron Sniper##77767+
Aid the Battle at the Iron Front |q 39444/1 |goto Tanaan Jungle/0 11.40,56.10
|tip You will see a progress bar in your quest tracking area.
|only if not completedq("39526/1") and not completedq(38047)
step
_Follow_ the path up |goto Tanaan Jungle/0 31.10,63.00 < 30
_Run up_ the stairs |goto Tanaan Jungle/0 28.80,66.70 < 30
_Follow_ the stairs up |goto Tanaan Jungle/0 29.20,68.40 < 30
_Enter_ the mine |goto Tanaan Jungle/0 29.40,70.80 < 20
click Unrefined Draenic Crystal##243794
|tip They look like small clusters of white crystals on the ground and on objects inside this mine.
collect 8 Unrefined Draenic Crystal##128433 |q 39513/1 |goto Tanaan Jungle/0 29.20,71.00
step
_Follow_ the path |goto Tanaan Jungle/0 31.10,63.00 < 30
_Go up_ the stairs |goto Tanaan Jungle/0 28.90,66.70 < 20
accept Assault on the Temple of Sha'naar##39450
kill Sargerei Nullifier##90295+, Sargerei Felbinder##90286+
clicknpc Bound Spirit##90703
|tip They look like floating draenei spirits kicking in the air and being choked around this area.
clicknpc Defiled Corpse##90302
|tip They look like dead draenei laying on the ground around this area.
Assault the Sargerei Forces at the Temple of Sha'naar |q 39450/1 |goto Tanaan Jungle/0 28.50,67.90
|tip You will see a progress bar in your quest tracking area.
|only if not completedq("39526/1") and not completedq(38449)
step
kill Felborn Enforcer##90620+, Sethekk Neophyte##90312+, Felborn Instructor##89748
collect 20 Shadow Council Missive##128432 |q 39512/1 |goto Tanaan Jungle/0 24.00,39.60
step
accept Assault on the Ruins of Kra'nak##39448
kill Felborn Enforcer##90620+, Sethekk Neophyte##90312+, Felborn Instructor##89748
clicknpc Ritual Circle##90300
|tip They look like circular green glowing symbols on the ground around this area.
Assault the Shadow Council Forces at the Ruins of Kra'nak |q 39448/1 |goto Tanaan Jungle/0 24.00,39.60
|tip You will see a progress bar in your quest tracking area.
|only if not completedq("39526/1") and not completedq(38252)
step
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+
collect 20 Vial of Fel Blood##128431 |q 39511/1 |goto Tanaan Jungle/0 11.40,56.10
step
kill Grom'kar Warsmith##89935+, Grom'kar Sentry##89857+, Grom'kar Leadslinger##89777+, Grom'kar Cauterizer##90136+
collect 15 Iron Horde Naval Manifest##128429 |q 39510/1 |goto Tanaan Jungle/0 39.60,37.00
step
_Follow_ the path |goto Tanaan Jungle/0 21.30,58.70 < 30
kill Bleeding Hollow Hunter##89699+, Bleeding Hollow Cabalist##90851+, Bleeding Hollow Brute##89706+
collect 25 Bleeding Hollow Ritual Blade##128428 |q 39509/1 |goto Tanaan Jungle/0 22.30,51.10
step
talk Shadow Hunter Denjai##96014
turnin Pressing the Attack##39526 |goto Tanaan Jungle/0 61.70,45.70
turnin Harnessing Their Power##39514 |goto Tanaan Jungle/0 61.70,45.70 |only if haveq(39514) or completedq(39514)
turnin Disarming Sha'naar##39513 |goto Tanaan Jungle/0 61.70,45.70 |only if haveq(39513) or completedq(39513)
turnin Secrets of the Shadow Council##39512 |goto Tanaan Jungle/0 61.70,45.70 |only if haveq(39512) or completedq(39512)
turnin Blood of Fallen Brothers##39511 |goto Tanaan Jungle/0 61.70,45.70 |only if haveq(39511) or completedq(39511)
turnin A Little Wetwork##39510 |goto Tanaan Jungle/0 61.70,45.70 |only if haveq(39510) or completedq(39510)
turnin Bloodied Blades of Zeth'Gol##39509 |goto Tanaan Jungle/0 61.70,45.70 |only if haveq(39509) or completedq(39509)
step
talk Nimi Brightcastle##93396
accept Demonslayer of Tanaan##39519 |goto Tanaan Jungle/0 59.70,45.90 |or
accept Bringing Down the Iron Horde##39532 |goto Tanaan Jungle/0 59.70,45.90 |or
|tip This quest only has a chance of being available each, day, so it's not guaranteed to be available. You can only accept one of these quests, if it's available.
step
_Go through_ the doorway |goto Tanaan Jungle/0 60.90,44.60 < 20 |walk
_Follow_ the path |goto Tanaan Jungle/0 59.80,41.90 < 30
kill Corrupting Fiend##93024+ |tip The imps spawn in groups of 3 around this area.
Slay #20# Demons |q 39519/1 |goto Tanaan Jungle/0 53.90,43.60
You can find more around [Tanaan Jungle/0 56.90,35.20]
step
kill Grom'kar Warsmith##89935+, Grom'kar Sentry##89857+, Grom'kar Leadslinger##89777+, Grom'kar Cauterizer##90136+
Slay #25# Iron Horde Orcs |q 39532/1 |goto Tanaan Jungle/0 39.60,37.00
step
talk Nimi Brightcastle##93396
turnin Demonslayer of Tanaan##39519 |goto Tanaan Jungle/0 59.70,45.90 |only if haveq(39519) or completedq(39519)
turnin Bringing Down the Iron Horde##39532 |goto Tanaan Jungle/0 59.70,45.90 |only if haveq(39532) or completedq(39532)
step
You've completed the dailies for today
Click to restart the dailies run |confirm |next "voljin_headhunters_start"
]])
QuestCore:RegisterGuide("Reputation Guides\\Warlords of Draenor\\Vol'jin's Spear",{
description="This guide will walk you through becoming exalted with the Vol'jin's Spear faction.",
achieveid={9473, 9215},
patch='60001',
},[[
step
Your current reputation rank is:
_Neutral_ |only if rep("Vol'jin's Spear")==Neutral
_Friendly_ |only if rep("Vol'jin's Spear")==Friendly
_Honored_ |only if rep("Vol'jin's Spear")==Honored
_Revered_ |only if rep("Vol'jin's Spear")==Revered
_Exalted_ |only if rep("Vol'jin's Spear")==Exalted
confirm
|only if completedq(36196)
step
Click _Quest Accept_ Box:
accept Welcome to Ashran##36196 |goto Ashran/0 41.75,22.68
|tip Click Enter Dungeon when asked to join the Ashran battle. You may have to wait for queue.
step
talk General Ushet Wolfbarger##84473
turnin Welcome to Ashran##36196 |goto Ashran/0 45.10,28.04
|tip Click Enter Dungeon when asked to join the Ashran battle. You may have to wait for queue.
accept Reporting For Duty##36197 |goto Ashran/0 45.10,28.04
step
talk Angry Zurge##83869
Select _"Reporting in!"_
Speak to Zurge |q 36197/2 |goto Ashran/0 45.70,28.96
accept The Road of Glory##36227 |goto Ashran/0 45.70,28.96
step
talk Cymre Brightblade##94864
Select _"Cymre! Is that you?"_
Speak to Cymre Brightblade |q 36197/1 |goto Ashran/0 45.89,29.12
accept Uncovering the Artifact Fragments##36198 |goto Ashran/0 45.89,29.12
step
talk Mare Wildrunner##84660
Select _"You're to show me Ashran?"_
Speak to Mare Wildrunner# |q 36197/3 |goto Ashran/0 47.06,26.81
accept Survey Ashran##36226 |goto Ashran/0 47.06,26.81
step
talk General Ushet Wolfbarger##84473
turnin Reporting For Duty##36197 |goto Ashran/0 45.10,28.04
stickystart "roundonekills"
stickystart "artifacts"
step
Cross the bridge and enter Ashran |goto Ashran/0 47.94,30.29 < 10 |walk
Explore the Brute's Rise |q 36226/3 |goto Ashran/0 54.70,34.60
step
Explore the Road of Glory |q 36226/2 |goto Ashran/0 49.58,44.17
step
Explore the Molten Quarry |q 36226/1 |goto Ashran/0 54,69
step
Explore the Ashmaul Burial Grounds |q 36226/4 |goto Ashran/0 40.20,63.30
step
Explore the Amphitheater of Annihilation |q 36226/5 |goto Ashran/0 39.40,40.50
step
label "roundonekills"
Kill #5# Alliance Players on the Road of Glory |q 36227/1 |goto Ashran/0 49.00,64.00
step
label "artifacts"
Kill creatures of Ashran and loot artifact fragments
Artifact Fragments looted |q 36198/1
step
talk Mare Wildrunner##84660
turnin Survey Ashran##36226 |goto Ashran/0 47.06,26.81
step
talk Angry Zurge##83869
turnin The Road of Glory##36227 |goto Ashran/0 45.70,28.96
accept Into The Wilderness##36228 |goto Ashran/0 45.70,28.96
step
talk Fura##83995
turnin Uncovering the Artifact Fragments##36198 |goto Ashran/0 45.26,27.14
step
Kill an Alliance player in Ashran and recover a piece of their armor
|tip Right click their corpse to "Remove insignia".
Tattered Armor Scraps |q 36228/1
step
talk Angry Zurge##83869
turnin Into The Wilderness##36228 |goto Ashran/0 45.70,28.96
]])
