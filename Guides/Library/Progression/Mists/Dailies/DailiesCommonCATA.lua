-- QuestCore bundled guide (mists)
if not QuestCore then return end
QuestCore:RegisterGuide("Dailies Guides\\Cataclysm\\Hyjal\\Mount Hyjal Dailies",{
expansion="mists",
cataready=true,
description="This guide will help you complete the \"Vigilance on Wings\" daily quest.",
startlevel=80,
},[[
step
Complete the "Mount Hyjal (80-82)" Leveling Guide |complete completedq(25832)
|tip The "Return to Aviana" quest must be complete to do the "Vigilance on Wings" daily quest.
|loadguide "Leveling Guides\\Cataclysm 80-85\\Mount Hyjal (80-82)"
step
label "Begin_Daily_Quests"
Enter the Portal |goto Mount Hyjal/0 39.17,58.25 |complete subzone("Firelands Hatchery") |q 29177 |future
step
talk Farden Talonshrike##40578
|tip Inside the cave.
accept Vigilance on Wings##29177 |goto Mount Hyjal/0 37.22,56.18
step
click Twilight Weapon Rack##130
|tip Inside the cave.
|tip This item is unique.
|tip If you can't pick up a lance, check your bank.
collect 1 Twilight Firelance##52716 |goto Mount Hyjal/0 37.14,56.18 |q 29177
|only if haveq(29177) or completedq(29177)
step
Equip the Twilight Firelance |equipped Twilight Firelance##52716 |q 29177
|only if haveq(29177) or completedq(29177)
step
clicknpc Aviana's Guardian##40723
|tip Inside the cave.
Mount Up to Joust |invehicle |goto Mount Hyjal/0 37.07,56.37 |q 29177
|only if haveq(29177) or completedq(29177)
step
kill 10 Twilight Lancer##40660 |q 29177/1 |goto Mount Hyjal/0 35.08,53.60
|tip Use the Flap ability on your bar to control your altitude.
|tip Hit it slowly to maintain a relatively level altitude.
|tip Spam the ability to rapidly move forward while gaining altitude.
|tip Fly through lancers in the air pointing towards them to kill them.
|tip Holding the right mouse button and turning helps to quickly change direction while using Flap.
|tip Do your best to avoid the falling flaming boulders that deal damage.
Get a spare mount at [36.42,49.60]
|tip If you accidentally dismount, get a spare mount near the lava.
|only if haveq(29177) or completedq(29177)
step
talk Farden Talonshrike##40578
|tip Inside the cave.
turnin Vigilance on Wings##29177 |goto Mount Hyjal/0 37.22,56.18
|only if haveq(29177) or completedq(29177)
step
Dismount the Guardian |outvehicle |goto Mount Hyjal/0 39.20,57.56 |script VehicleExit()
step
Enter the Portal |goto Mount Hyjal/0 39.20,57.56 |complete subzone("The Flamewake")
step
You have completed the Hyjal dailies available today
|tip This guide will reset when more become available.
'|complete not completedq(29177) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Dailies Guides\\Cataclysm\\Deepholm\\Therazane Dailies",{
expansion="mists",
cataready=true,
description="This guide will help you complete the Therazane daily quests in Deepholm.",
startlevel=81,
},[[
step
Complete the "Deepholm (82-83)" Leveling Guide |complete completedq(26709)
|tip Refer to the leveling guide to accomplish this.
Click Here to Load the Guide |confirm |next "Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)"
step
label "Begin_Daily_Quests"
Talk to NPCs around this area
|tip Accept any daily quests that are offered.
|tip Two additional daily quests are offered (one possible per day) when you reach revered or higher standing with the Therazane faction.
confirm |goto Deepholm/0 56.23,13.21
|autoacceptany 27046-27051,28390,28391,28488,26710
step
use the Stonework Mallet##60266
|tip Use it next to the Pale Resonating Crystal.
|tip It's a huge green crystal sitting on the ground.
Strike the Pale Resonating Crystal |q 28391/1 |goto Deepholm/0 32.68,24.33
|only if haveq(28391) or completedq(28391)
step
kill Aeosera##43641 |q 28391/2 |goto Deepholm/0 32.68,24.33
|tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.
|tip When she is casting her Searing Breath ability, jump to another rock and attack her while she is breathing fire to the other rock.
|tip Repeat this until she surrenders.
|only if haveq(28391) or completedq(28391)
stickystart "Kill_Gyreworms"
stickystart "Collect_Painite_Mote"
step
Enter the cave |goto Deepholm/0 58.30,25.60 < 10 |walk
talk Ricket##44968
|tip Inside the cave.
accept Underground Economy##27048 |goto Deepholm/0 61.39,26.16
|only if not haveq(28488,26710) or completedq(28488,26710)
step
use Ricket's Tickers##65514
|tip Use it next to Deep Alabaster Crystals.
|tip They look like huge white rocks around this area inside the cave.
collect 3 Deep Alabaster Crystal##65504 |q 27048/1 |goto Deepholm/0 63.52,22.27
|only if haveq(27048) or completedq(27048)
step
Follow the path |goto Deepholm/0 62.02,23.85 < 10 |walk
use Ricket's Tickers##65514
|tip Use it next to Deep Celestite Crystals.
|tip They look like huge blue rocks around this area inside the cave.
collect 3 Deep Celestite Crystal##65507 |q 27048/2 |goto Deepholm/0 61.85,19.20
|only if haveq(27048) or completedq(27048)
step
clicknpc Ruby Gemstone Cluster##48639
|tip Inside the cave.
|tip Mount up and move quickly to avoid being swallowed by the colossal worm pathing the circle.
kill Enormous Gyreworm##48533
|tip It will attack.
collect Ruby Crystal Cluster##64404 |q 28488/1 |goto Deepholm/0 64.39,15.08
|only if haveq(28488) or completedq(28488)
step
use Ricket's Tickers##65514
|tip Use it next to Deep Amethyst Crystals.
|tip They look like huge purple rocks around this area inside the cave.
collect 3 Deep Amethyst Crystal##65508 |q 27048/3 |goto Deepholm/0 64.45,18.80
|only if haveq(27048) or completedq(27048)
step
Follow the path |goto Deepholm/0 65.48,18.42 < 10 |walk
use Ricket's Tickers##65514
|tip Use it next to Deep Garnet Crystals.
|tip They look like huge red rocks around this area inside the cave.
collect 3 Deep Garnet Crystal##65510 |q 27048/4 |goto Deepholm/0 66.51,20.92
|only if haveq(27048) or completedq(27048)
step
Follow the path |goto Deepholm/0 64.75,18.62 < 15 |walk
talk Pebble##49956
|tip On the ledge overlooking the room inside the cave.
|tip Be careful not to fall off before talking to Pebble.
Select _"Come little guy, let's get out of here."_
confirm |goto Deepholm/0 63.05,20.85
|only if haveq(26710) or completedq(26710)
step
label "Kill_Gyreworms"
Enter the cave |goto Deepholm/0 58.30,25.60 < 10 |walk |only if not haveq(28488,26710) or completedq(28488,26710)
kill Gorged Gyreworm##42766, Gyreworm##44257
|tip All over the cave.
|tip Walking over patches of disturbed ground will spawn them.
Slay #10# Gyreworms |q 27046/1 |goto Deepholm/0 63.46,23.52
|only if haveq(27046) or completedq(27046)
step
label "Collect_Painite_Mote"
click Painite Shard##205195+
|tip They look like small green glowing crystals sitting on the ground inside the cave.
collect 10 Painite Mote##60791 |q 27047/1 |goto Deepholm/0 63.46,23.52
|only if haveq(27047) or completedq(27047)
step
Follow the path |goto Deepholm/0 62.69,27.24 < 10 |walk
talk Ricket##44968
|tip Inside the cave.
|tip Mount up and move quickly to avoid being swallowed by the colossal worm pathing the circle.
turnin Underground Economy##27048 |goto Deepholm/0 61.39,26.16
|only if haveq(27048) or completedq(27048)
step
Watch the dialogue
Bring Pebble to Safety |q 26710/1 |goto Deepholm/0 58.11,25.36
|only if haveq(26710) or completedq(26710)
stickystart "Kill_Fungal_Behemoths"
stickystart "Collect_Bags_of_Verlok_Miracle-Grow"
step
click Sprouting Crimson Mushroom##205152
|tip They look like tiny mushrooms on the ground around this area.
|tip Only click the solid blue, solid red, or white-brown ones.
|tip The blue ones with red spots will explode and hurt you.
Destroy #10# Freshly Sprouted Mushrooms |q 27050/1 |goto Deepholm/0 74.38,42.10
|only if haveq(27050) or completedq(27050)
step
label "Kill_Fungal_Behemoths"
kill 8 Fungal Behemoth##42475 |q 27049/1 |goto Deepholm/0 74.38,42.10
|only if haveq(27049) or completedq(27049)
step
label "Collect_Bags_of_Verlok_Miracle-Grow"
kill Verlok Grubthumper##43367+, Verlok Shroomtender##43368+
collect Bag of Verlok Miracle-Grow##60767 |q 27051/1 |goto Deepholm/0 74.38,42.10
|tip Loot it from Verlock enemies.
|only if haveq(27051) or completedq(27051)
step
Enter the cave |goto Deepholm/0 68.59,28.97 < 15 |walk
talk Earthmender Norsala##43503
|tip Inside the cave.
|tip Avoid the mushrooms as you walk or they will give you a debuff.
Select _"I'm ready when you are, Norsala"_
confirm |goto Deepholm/0 69.80,31.84
|only if haveq(28390) or completedq(28390)
step
kill Fungalmancer Glop##43372 |q 28390/1 |goto Deepholm/0 69.45,33.73
|tip Inside the cave.
|tip Follow him each time he runs away.
|tip Avoid the mushrooms as you walk or they will give you a debuff.
|tip While fighting Fungalmancer Glop, kill the Boomshrooms he creates.
|tip Don't let them grow too big or they will explode and deal a lot of damage.
|only if haveq(28390) or completedq(28390)
step
talk Felsen the Enduring##43805
turnin Fear of Boring##27046 |goto Deepholm/0 56.06,14.40 |only if haveq(27046) or completedq(27046)
turnin Motes##27047 |goto Deepholm/0 56.06,14.40 |only if haveq(27047) or completedq(27047)
turnin Beneath the Surface##28488 |goto Deepholm/0 56.06,14.40 |only if haveq(28488) or completedq(28488)
|only if haveq(27046,27047,28488) or completedq(27046,27047,28488)
step
talk Pyrite Stonetender##44945
turnin Lost In The Deeps##26710 |goto Deepholm/0 55.37,14.15
|only if haveq(26710) or completedq(26710)
step
talk Gorsik the Tumultuous##43804
|tip It stops at this spot and then walks down the east path.
turnin Soft Rock##27049 |goto Deepholm/0 57.33,12.52 |only if haveq(27049) or completedq(27049)
turnin Fungal Fury##27050 |goto Deepholm/0 57.33,12.52 |only if haveq(27050) or completedq(27050)
|only if haveq(27049,27050) or completedq(27049,27050)
step
talk Ruberick##44973
turnin Through Persistence##27051 |goto Deepholm/0 59.60,14.03 |only if haveq(27051) or completedq(27051)
turnin Glop, Son of Glop##28390 |goto Deepholm/0 59.60,14.03 |only if haveq(28390) or completedq(28390)
|only if haveq(27051,28390) or completedq(27051,28390)
step
talk Terrath the Steady##43806
|tip It stops at this spot and then walks down the west path.
turnin The Restless Brood##28391 |goto Deepholm/0 56.63,14.09
|only if haveq(28391) or completedq(28391)
step
You have completed the Therazane dailies available today
|tip This guide will reset when more become available.
'|complete not completedq(27046,27047,28488,26710,27049,27050,27051,28390,28391) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Dailies Guides\\Cataclysm\\Uldum\\Uldum Dailies",{
expansion="mists",
cataready=true,
description="This guide will help you complete the Uldum daily quests.",
startlevel=83,
},[[
step
Complete the "Uldum (83-84)" Leveling Guide |complete completedq(28633)
|tip Complete the guide to unlock both available daily quests.
|loadguide "Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)"
step
label "Begin_Daily_Quests"
talk Nomarch Teneth##46603
accept Thieving Little Pluckers##28250 |goto Uldum/0 60.28,38.28
step
Use your Tahret Dynasty Mallet next to stacks of Pygmies |use Tahret Dynasty Mallet##63351
|tip Use it on to create a short-range frontal cone attack.
|tip Use it to hit the Pygmy enemies stacked on top of each other near trees trying to steal fruit.
Smash #30# Thieving Pluckers |q 28250/1 |goto Uldum/0 59.41,39.51
|only if haveq(28250) or completedq(28250)
step
talk Nomarch Teneth##46603
turnin Thieving Little Pluckers##28250 |goto Uldum/0 60.28,38.28
|only if haveq(28250) or completedq(28250)
step
talk Weathered Nomad##49523
accept Fire From the Sky##28736 |goto Uldum/0 41.37,5.53
step
clicknpc Confiscated Artillery##49499
Board the Artillery |invehicle |q 28736 |goto Uldum/0 41.35,5.62
|only if haveq(28736) or completedq(28736)
step
Slay #100# Infantrymen |q 28736/1 |goto Uldum/0 40.36,9.78
|tip Use the "Designate Target" ability on your action bar on the Infantrymen below.
|tip It takes approximately 5+ seconds for the artillery shell to strike the ground.
|tip Longer distances take more time to strike.
|tip Plan your shots so mobs walk into it by leading them slightly.
|only if haveq(28736) or completedq(28736)
step
talk Weathered Nomad##49523
turnin Fire From the Sky##28736 |goto Uldum/0 41.37,5.53
|only if haveq(28736) or completedq(28736)
step
You have completed the Uldum dailies available today
|tip This guide will reset when more become available.
'|complete not completedq(28250,28736) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Mount Hyjal\\Molten Front Campaign",{
expansion="mists",
},[[
step
Complete the _Aessina's Miracle_ Quest |q 25372 |future
|tip Use the {o}Mount Hyjal{} Leveling guide to accomplish this.
step
talk Matoclaw##52669
accept Opening the Door##29145 |goto Mount Hyjal/0 27.17,62.57
step
talk Arch Druid Hamuul Runetotem##52838
turnin Opening the Door##29145 |goto Mount Hyjal/0 27.08,54.51
accept A Ritual of Flame##29195 |goto Mount Hyjal/0 27.08,54.51
step
kill Charred Invader##52853+
|tip They look like {o}fire elementals{}.
|tip {o}Leyara will appear{} when the {o}bar fills up{}.
kill Leyara##52863
Open the Portal to the Firelands |q 29195/1 |goto Mount Hyjal/0 27.38,55.63
step
talk Malfurion Stormrage##52845
turnin A Ritual of Flame##29195 |goto Mount Hyjal/0 27.36,55.24
accept To the Sanctuary!##29196 |goto Mount Hyjal/0 27.36,55.24
step
talk Matoclaw##52669
turnin To the Sanctuary!##29196 |goto Mount Hyjal/0 27.17,62.57
accept Caught Unawares##29197 |goto Mount Hyjal/0 27.17,62.57
step
kill Raging Invader##52557+
|tip They look like {o}fire elementals{}.
Kill #6# Elementals Near Thisalee |q 29197/2 |goto Mount Hyjal/0 24.49,55.72
step
kill Raging Invader##52557+
|tip They look like {o}fire elementals{}.
Kill #6# Elementals Near Elderlimb |q 29197/1 |goto Mount Hyjal/0 34.04,57.66
step
kill Raging Invader##52557+
|tip They look like {o}fire elementals{}.
Kill #6# Elementals Near Tholo and Anren |q 29197/3 |goto Mount Hyjal/0 41.67,56.35
step
talk Arch Druid Hamuul Runetotem##52838
turnin Caught Unawares##29197 |goto Mount Hyjal/0 27.17,62.57
accept The Sanctuary Must Not Fall##29198 |goto Mount Hyjal/0 27.17,62.57
step
Watch the cutscene
Protect Malfurion |q 29198/1 |goto Mount Hyjal/0 26.98,62.91
step
talk Malfurion Stormrage##52845
turnin The Sanctuary Must Not Fall##29198 |goto Mount Hyjal/0 27.02,62.70
step
talk Arch Druid Hamuul Runetotem##52838
accept Calling for Reinforcements##29199 |goto Mount Hyjal/0 27.11,62.81
step
earn 20 Mark of the World Tree##416 |q 29199/1
|tip Use the {o}Molten Front Daily Quests{} guide to accomplish this.
|tip You will get them from {o}completing daily quests{}.
step
talk Arch Druid Hamuul Runetotem##52838
turnin Calling for Reinforcements##29199 |goto Mount Hyjal/0 27.11,62.81
accept Leyara##29200 |goto Mount Hyjal/0 27.11,62.81
step
talk Leyara##53014
Ask her _"Malfurion, a coward? How can you justify that?"_ |gossip 113666
Tell her _"Malfurion is not here. Only me."_ |gossip 113667
Ask her _"Tauren arch druid? Do you mean Hamuul?"_ |gossip 113668
Watch the dialogue
Find Leyara |q 29200/1 |goto Mount Hyjal/0 6.65,33.82
step
talk Matoclaw##52669
turnin Leyara##29200 |goto Mount Hyjal/0 27.17,62.56
step
talk Malfurion Stormrage##52845
accept Through the Gates of Hell##29201 |goto Mount Hyjal/0 27.02,62.69
step
kill Obsidian Slaglord##53381
Secure a Foothold in the Firelands |q 29201/1 |goto Molten Front/0 49.71,84.94
step
talk Malfurion Stormrage##53385
|tip Inside the small cave.
turnin Through the Gates of Hell##29201 |goto Molten Front/0 47.15,90.58
step
talk Matoclaw##52669
accept The Fate of Runetotem##29202 |goto Mount Hyjal/0 27.17,62.56
step
talk Dorda'en Nightweaver##52986
turnin The Fate of Runetotem##29202 |goto Mount Hyjal/0 27.53,62.51
step
talk Malfurion Stormrage##52135
|tip Inside the small cave.
accept Druids of the Talon##29181 |goto Molten Front/0 47.02,91.36
accept The Shadow Wardens##29214 |goto Molten Front/0 47.02,91.36
step
earn 150 Mark of the World Tree##416 |q 29214/1
|tip Use the {o}Molten Front Daily Quests{} guide to accomplish this.
|tip You will get them from {o}completing daily quests{}.
step
talk Captain Saynna Stormrunner##52844
turnin The Shadow Wardens##29214 |goto Mount Hyjal/0 26.80,62.15
step
talk Matoclaw##52669
accept The Hunt Begins##29215 |goto Mount Hyjal/0 27.17,62.57
step
talk Captain Saynna Stormrunner##52493
|tip Inside the small cave.
turnin The Hunt Begins##29215 |goto Molten Front/0 47.58,90.55
step
kill Druid of the Flame##52872+
click Dried Acorn
|tip It looks like a {o}small brown seed{}.
|tip It appears on the ground.
accept The Mysterious Seed##29245 |goto Molten Front/0 71.07,41.96
step
talk Avrilla##52489
turnin The Mysterious Seed##29245 |goto Molten Front/0 50.65,87.26
accept Planting Season##29249 |goto Molten Front/0 50.65,87.26
step
click Un'Goro Soil
Watch the dialogue
Plant the Acorn |q 29249/1 |goto 53.50,90.70
step
_Click the Complete Quest Box:_
turnin Planting Season##29249
accept Little Lasher##29254
step
talk Avrilla##52489
turnin Little Lasher##29254 |goto Molten Front/0 50.65,87.26
step
talk Skylord Omnuron##50082
|tip Upstairs inside the building.
turnin Druids of the Talon##29181 |goto Mount Hyjal/0 43.54,45.88
step
talk Isara Riverstride##50068
|tip Inside the building.
accept Flight of the Storm Crows##29182 |goto Mount Hyjal/0 42.63,45.74
step
talk Skylord Omnuron##52490
turnin Flight of the Storm Crows##29182 |goto Molten Front/0 43.04,80.62
step
talk Damek Bloombeard##53214
|tip Inside the small cave.
accept Additional Armaments##29281 |goto Molten Front/0 46.91,89.99
step
earn 125 Mark of the World Tree##416 |q 29281/1
|tip Use the {o}Molten Front Daily Quests{} guide to accomplish this.
|tip You will get them from {o}completing daily quests{}.
step
talk Matoclaw##52669
turnin Additional Armaments##29281 |goto Mount Hyjal/0 27.17,62.57
accept Well Armed##29282 |goto Mount Hyjal/0 27.17,62.57
step
talk Ricket##53196
|tip Inside the small cave.
turnin Well Armed##29282 |goto Molten Front/0 46.76,90.17
step
talk Varlan Highbough##53882
accept Calling the Ancients##29283 |goto Molten Front/0 44.45,88.77
step
earn 125 Mark of the World Tree##416 |q 29283/1
|tip Use the {o}Molten Front Daily Quests{} guide to accomplish this.
|tip You will get them from {o}completing daily quests{}.
step
talk Elderlimb##52906
turnin Calling the Ancients##29283 |goto Mount Hyjal/0 26.00,61.30
step
talk Matoclaw##52669
accept Aid of the Ancients##29284 |goto Mount Hyjal/0 27.17,62.57
step
talk Elderlimb##52488
turnin Aid of the Ancients##29284 |goto Molten Front/0 43.78,89.02
step
talk Ayla Shadowstorm##53881
accept Filling the Moonwell##29279 |goto Molten Front/0 44.08,86.33
step
earn 125 Mark of the World Tree##416 |q 29279/1
|tip Use the {o}Molten Front Daily Quests{} guide to accomplish this.
|tip You will get them from {o}completing daily quests{}.
step
talk Matoclaw##52669
turnin Filling the Moonwell##29279 |goto Mount Hyjal/0 27.17,62.56
accept Nourishing Waters##29280 |goto Mount Hyjal/0 27.17,62.56
step
talk Ayla Shadowstorm##53881
turnin Nourishing Waters##29280 |goto Molten Front/0 44.09,86.33
step
talk Malfurion Stormrage##52135
|tip Inside the small cave.
accept Into the Depths##29203 |goto Molten Front/0 47.02,91.38
step
Enter the cave |goto Molten Front/0 57.91,49.64 < 20 |walk |only if not subzone("Igneous Depths")
kill Leyara |q 29203/1 |goto Molten Front/0 64.60,59.26
|tip Inside the cave.
|tip Your {o}allies{} will {o}help you fight{}.
step
Leave the cave |goto 57.80,49.60 < 20 |walk |only if subzone("Igneous Depths") and indoors()
talk Malfurion Stormrage##52135
|tip Inside the small cave.
turnin Into the Depths##29203 |goto Molten Front/0 47.02,91.38
step
click Mailbox
collect Smoke-Stained Locket##69854 |n
use the Smoke-Stained Locket##69854
accept A Smoke-Stained Locket##29298 |goto Mount Hyjal/0 41.98,44.47
step
talk Rabine Saturna##11801
|tip Inside the building.
turnin A Smoke-Stained Locket##29298 |goto Moonglade/0 51.69,45.10
accept Unlocking the Secrets Within##29302 |goto Moonglade/0 51.69,45.10
step
Watch the dialogue
|tip Inside the building.
Look into Leyara's Memories |q 29302/1 |goto Moonglade/0 51.69,45.10
step
talk Rabine Saturna##11801
|tip Inside the building.
turnin Unlocking the Secrets Within##29302 |goto Moonglade/0 51.69,45.10
accept Tragedy and Family##29303 |goto Moonglade/0 51.69,45.10
step
click Night Elf Grave
Select _"Present the Smoke-Stained Locket."_ |gossip 113676
Watch the dialogue
Look Deeper into Leyara's Memories |q 29303/1 |goto Ashenvale/0 40.50,53.28
step
_Click the Complete Quest Box:_
turnin Tragedy and Family##29303
accept The Tipping Point##29310
step
click Small Gravestone
Select _"Present the Smoke-Stained Locket."_ |gossip 113677
Watch the dialogue
Look Deeper into Leyara's Memories |q 29310/1 |goto Mount Hyjal/0 7.56,34.58
step
_Click the Complete Quest Box:_
turnin The Tipping Point##29310
accept The Rest is History##29311
step
talk Malfurion Stormrage##52135
|tip Inside the small cave.
turnin The Rest is History##29311 |goto Molten Front/0 47.02,91.38
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Mount Hyjal\\Molten Front Daily Quests",{
expansion="mists",
},[[
step
Complete _The Sanctuary Must Not Fall_ Quest |q 29198 |future
|tip Use the {o}Molten Front Campaign{} guide to accomplish this.
step
label "Start_Dailies"
Wait for Daily Quests to Reset |complete not completedq(29163,29149,29127,29123,29166,29147,29164,29125,29246,29247,29248,29101,29161,29128)
|tip You can only complete these quests {o}once per day{}.
step
talk Matoclaw##52669
|tip You will only be able to accept {o}one quest per day{}.
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept Rage Against the Flames##29163		|goto Mount Hyjal/0 27.17,62.56		|or
accept Supplies for the Other Side##29166	|goto Mount Hyjal/0 27.17,62.56		|or
'|accept Rage Against the Flames##29149		|goto Mount Hyjal/0 27.17,62.56		|or
'|accept Rage Against the Flames##29127		|goto Mount Hyjal/0 27.17,62.56		|or
'|accept Rage Against the Flames##29123		|goto Mount Hyjal/0 27.17,62.56		|or
step
talk Matoclaw##52669
|tip You will only be able to accept {o}one quest per day{}.
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept Call the Flock##29147		|goto Mount Hyjal/0 27.17,62.56		|or
accept Perfecting Your Howl##29164	|goto Mount Hyjal/0 27.17,62.56		|or
accept Between the Trees##29125		|goto Mount Hyjal/0 27.17,62.56		|or
step
talk Dorda'en Nightweaver##52986
|tip You will only be able to accept {o}one quest per day{}.
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept Relieving the Pain##29246	|goto Mount Hyjal/0 27.53,62.51		|or
accept Treating the Wounds##29247	|goto Mount Hyjal/0 27.53,62.51		|or
accept Releasing the Pressure##29248	|goto Mount Hyjal/0 27.53,62.51		|or
step
talk Mylune##52671
|tip You will only be able to accept {o}one quest per day{}.
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept Punting Season##29101		|goto Mount Hyjal/0 27.11,62.02		|or
accept Those Bears Up There##29161	|goto Mount Hyjal/0 27.11,62.02		|or
step
talk Captain Soren Moonfall##53073
|tip He walks around this area.
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept The Protectors of Hyjal##29128 |goto Mount Hyjal 27.30,61.60
stickystart "Howl_Atop_Invaders_Corpses"
stickystart "Slay_Invaders_From_The_Firelands"
step
clicknpc Child of Tortolla##52177+
|tip They look like {o}small turtles{}.
Punt #5# Children of Tortolla into the Water |q 29101/1 |goto Mount Hyjal/0 23.51,59.93
|tip Use the {o}Punt Turtle{} ability and aim into the {o}water nearby{}.
|only if haveq(29101)
step
_Click the Complete Quest Box:_
turnin Punting Season##29101
accept Echoes of Nemesis##29122
|only if haveq(29101) or completedq(29101)
step
label "Howl_Atop_Invaders_Corpses"
kill Flame Terror##52219+
|tip They look like {o}fire elementals{}.
use the Fang of the Wolf##69235
|tip Next to their {o}corpses{}.
Howl Atop #10# Invaders' Corpses |q 29164/1 |goto Mount Hyjal/0 20.46,59.25
You can find more around [Mount Hyjal/0 15.88,50.90]
|only if haveq(29164)
step
_Click the Complete Quest Box:_
turnin Perfecting Your Howl##29164
accept The Call of the Pack##29165
|only if haveq(29164) or completedq(29164)
step
label "Slay_Invaders_From_The_Firelands"
kill Flame Terror##52219+
|tip They look like {o}fire elementals{}.
Slay #6# Invaders from the Firelands |q 29123/1 |goto Mount Hyjal/0 20.46,59.25 |only if haveq(29123)
Slay #7# Invaders from the Firelands |q 29149/1 |goto Mount Hyjal/0 20.46,59.25 |only if haveq(29149)
Slay #8# Invaders from the Firelands |q 29127/1 |goto Mount Hyjal/0 20.46,59.25 |only if haveq(29127)
Slay #9# Invaders from the Firelands |q 29163/1 |goto Mount Hyjal/0 20.46,59.25 |only if haveq(29163)
You can find more around [Mount Hyjal/0 15.88,50.90]
|only if haveq(29123) or haveq(29149) or haveq(29127) or haveq(29163)
step
talk Tooga##52425
Tell it _"I am prepared to face Nemesis, Tooga."_ |gossip 113603
Watch the dialogue
kill Nemesis##52383 |q 29122/1 |goto Mount Hyjal/0 24.01,55.79
|tip Get inside the {o}yellow bubble{} when you see the {o}on-screen message{}.
|only if haveq(29122)
step
use the Fang of the Wolf##69225
kill Lylagar##52766 |q 29165/1 |goto Mount Hyjal/0 41.82,55.87
|only if haveq(29165)
step
use the Quill of the Bird-Queen##69234
Transform into the Wings of Aviana |invehicle |q 29147
|only if haveq(29147)
stickystart "Gather_Forest_Owls"
stickystart "Gather_Alpine_Songbirds"
step
Gather #2# Goldwing Hawks |q 29147/3 |goto Mount Hyjal/0 14.02,41.89
|tip Use the {o}Call the Flock{} ability near {o}Goldwing Hawks{}.
|tip They look like {o}larger brown birds{}.
'|clicknpc Goldwing Hawk##52594
|only if haveq(29147)
step
label "Gather_Forest_Owls"
Gather #5# Forest Owls |q 29147/2 |goto Mount Hyjal/0 14.02,41.89
|tip Use the {o}Call the Flock{} ability near {o}Forest Owls{}.
|tip They look like {o}medium sized grey birds{}.
'|clicknpc Forest Owl##52596
|only if haveq(29147)
step
label "Gather_Alpine_Songbirds"
Gather #12# Alpine Songbirds |q 29147/1 |goto Mount Hyjal/0 14.02,41.89
|tip Use the {o}Call the Flock{} ability near {o}Alpine Songbirds{}.
|tip They look like {o}small white birds{}.
'|clicknpc Alpine Songbird##52595
|only if haveq(29147)
step
_Click the Complete Quest Box:_
turnin Call the Flock##29147
accept Wings Aflame##29148
|only if haveq(29147) or completedq(29147)
step
use the Quill of the Bird-Queen##69212
kill Millagazor##52649 |q 29148/1 |goto Mount Hyjal/0 13.28,44.76
|tip It will eventually {o}fly up to escape{}.
|tip {o}Let it go{}, your flock of {o}birds will finish it off{}.
|only if haveq(29148)
step
clicknpc Climbing Tree##40190+
|tip They look like {o}wooden ladders{} at the {o}base of trees{}.
|tip Use the {o}Climb Up{} and {o}Climb Down{} abilities to {o}move around on the trees{}.
clicknpc Hyjal Bear Cub##40240+
|tip They look like {o}small bears in the trees{}.
|tip Use the {o}Chuck-a-bear{} ability to {o}throw the cubs{} from the {o}top of the trees{}.
|tip Throw them onto the {o}leather skin trampoline{} on the ground nearby.
Chuck #6# Hyjal Bear Cubs to Safety |q 29161/1 |goto Mount Hyjal/0 13.57,33.24
|only if haveq(29161)
step
_Click the Complete Quest Box:_
turnin Those Bears Up There##29161
accept Nature's Blessing##29162
|only if haveq(29161) or completedq(29161)
step
use the Emerald of Aessina##69232
kill Pyrachnis##52749 |q 29162/1 |goto Mount Hyjal/0 13.25,44.75
|tip Continue using the item {o}throughout the fight{}.
|only if haveq(29162)
stickystart "Collect_Flamewaker_Scales"
stickystart "Collect_Blueroot_Vines"
step
Capture #3# Spirits of Malorne |q 29125/1 |goto Mount Hyjal/0 38.50,56.06
|tip They look like {o}grey deer running around{}.
|tip Get {o}close to them{} on the ground.
|only if haveq(29125)
step
_Click the Complete Quest Box:_
turnin Between the Trees##29125
accept The Power of Malorne##29126
|only if haveq(29125) or completedq(29125)
step
use the Guardian's Staff##68997
kill Galenges##52399 |q 29126/1 |goto Mount Hyjal/0 41.67,56.13
|only if haveq(29126)
step
label "Collect_Flamewaker_Scales"
kill Charred Flamewaker##52791+
|tip They look like {o}orange naga{}.
collect 100 Flamewaker Scale##69679 |q 29248/1 |goto Mount Hyjal/0 38.59,56.88
|only if haveq(29248)
step
label "Collect_Blueroot_Vines"
click Blueroot Vine##208442+
|tip They look like {o} twisted grey roots{}, usually {o}next to trees{}.
collect 7 Blueroot Vine##69236 |q 29166/1 |goto Mount Hyjal/0 38.59,56.88
|only if haveq(29166)
step
talk Mylune##52671
turnin Nature's Blessing##29162		|goto Mount Hyjal/0 27.11,62.02		|only if haveq(29162) or completedq(29162)
turnin Echoes of Nemesis##29122		|goto Mount Hyjal/0 27.11,62.02		|only if haveq(29122) or completedq(29122)
|only if haveq(29162,29122) or completedq(29162,29122)
step
talk Matoclaw##52669
turnin Rage Against the Flames##29163		|goto Mount Hyjal/0 27.17,62.57		|only if haveq(29163) or completedq(29163)
turnin Rage Against the Flames##29149		|goto Mount Hyjal/0 27.17,62.57		|only if haveq(29149) or completedq(29149)
turnin Rage Against the Flames##29127		|goto Mount Hyjal/0 27.17,62.57		|only if haveq(29127) or completedq(29127)
turnin Rage Against the Flames##29123		|goto Mount Hyjal/0 27.17,62.57		|only if haveq(29123) or completedq(29123)
turnin Wings Aflame##29148			|goto Mount Hyjal/0 27.17,62.57		|only if haveq(29148) or completedq(29148)
turnin The Call of the Pack##29165		|goto Mount Hyjal/0 27.17,62.57		|only if haveq(29165) or completedq(29165)
turnin The Power of Malorne##29126		|goto Mount Hyjal/0 27.17,62.57		|only if haveq(29126) or completedq(29126)
turnin Supplies for the Other Side##29166	|goto Mount Hyjal/0 27.17,62.57		|only if haveq(29166) or completedq(29166)
|only if haveq(29163,29149,29127,29123,29148,29165,29126,29166) or completedq(29163,29149,29127,29123,29148,29165,29126,29166)
step
talk Dorda'en Nightweaver##52986
turnin Releasing the Pressure##29248 |goto Mount Hyjal/0 27.53,62.51
|only if haveq(29248) or completedq(29248)
stickystart "Collect_Sulfur_Laced_Wrappings"
stickystart "Slay_Invaders_At_Sethrias_Roost"
step
kill Seething Pyrelord##52300+
|tip They look like {o}armored fire elementals{}.
collect 4 Flame-Wreathed Heart##69678 |q 29246/1 |goto Mount Hyjal/0 31.02,76.87
You can find more around [Mount Hyjal/0 33.69,96.03]
|only if haveq(29246)
step
label "Collect_Sulfur_Laced_Wrappings"
kill Fiery Behemoth##52289+
|tip They look like {o}rock giants{}.
collect 4 Sulfur-Laced Wrapping##69677 |q 29247/1 |goto Mount Hyjal/0 31.02,76.87
You can find more around [Mount Hyjal/0 33.69,96.03]
|only if haveq(29247)
step
label "Slay_Invaders_At_Sethrias_Roost"
Kill enemies around this area
|tip They look like {o}armored fire elementals{} and {o}rock giants{}. |notinsticky
Slay #6# Invaders at Sethria's Roost |q 29128/1 |goto Mount Hyjal/0 31.02,76.87
You can find more around [Mount Hyjal/0 33.69,96.03]
'|kill Seething Pyrelord##52300, Fiery Behemoth##52289
|only if haveq(29128)
step
talk Dorda'en Nightweaver##52986
turnin Relieving the Pain##29246	|goto Mount Hyjal/0 27.53,62.51		|only if haveq(29246) or completedq(29246)
turnin Treating the Wounds##29247	|goto Mount Hyjal/0 27.53,62.51		|only if haveq(29247) or completedq(29247)
|only if haveq(29246,29247) or completedq(29246,29247)
step
Routing Guide	|complete not completedq(29201)		|next "Start_Dailies"		|or	|only if not completedq(29201)
Routing Guide	|complete completedq(29201)		|next "Molten_Front_Dailies"	|or	|only if completedq(29201)
step
label "Molten_Front_Dailies"
talk Avrilla##52489
|tip You will only be able to accept {o}one quest per day{}.
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept Some Like It Hot##29299	|goto Molten Front/0 50.66,87.26	|or
accept Embergris##29255		|goto Molten Front/0 50.66,87.26	|or
accept Steal Magmolias##29257	|goto Molten Front/0 50.66,87.26	|or
step
talk Rayne Feathersong##52467
|tip You will only be able to accept {o}one quest per day{}.
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept Aggressive Growth##29139		|goto Molten Front/0 48.52,86.26	|or
accept Wisp Away##29143			|goto Molten Front/0 48.52,86.26	|or
step
talk Ricket##53196
|tip Inside the small cave.
|tip You will only be able to accept {o}one quest per day{}.
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept A Bitter Pill##29263	|goto Molten Front/0 46.75,90.16	|or
accept Living Obsidium##29278	|goto Molten Front/0 46.75,90.16	|or
|only if completedq(29281)
step
talk Captain Irontree##53080
accept Burn Victims##29138 |goto Molten Front/0 45.64,86.14
step
talk General Taldris Moonfall##52824
turnin The Protectors of Hyjal##29128 |goto Molten Front/0 45.59,85.83
step
talk General Taldris Moonfall##52824
|tip You will only be able to accept {o}two quests per day{}.
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept Hostile Elements##29179		|goto Molten Front/0 45.59,85.83	|or 2
accept Traitors Return##29142		|goto Molten Front/0 45.59,85.83	|or 2
accept The Harder They Fall##29141	|goto Molten Front/0 45.59,85.83	|or 2
accept Breach in the Defenses##29137	|goto Molten Front/0 45.59,85.83	|or 2
accept The Dogs of War##29304		|goto Molten Front/0 45.59,85.83	|or 2
stickystart "Help_The_Crimson_Lasher_Drink_From_Ember_Pools"
stickystart "Collect_Magmolias"
stickystart "Collect_Embergris"
stickystart "Kill_Molten_Behemoths"
stickystart "Kill_Charred_Combatants"
stickystart "Kill_Druids_Of_The_Flame"
stickystart "Kill_Lava_Bursters"
stickystart "Kill_Ancient_Charhounds"
stickystart "Save_Wounded_Hyjal_Defenders"
stickystart "Plant_Smothervines"
stickystart "Collect_Obsidium_Meteorites"
step
kill Firekin##53092+
|tip They look like {o}red imps{} that {o}emerge{} from {o}portals{}.
|tip The {o}portals{} look like {o}two steam vents close together{}.
Close a Fire Portal |q 29143/1 |goto Molten Front/0 51.52,64.98
|only if haveq(29143)
step
label "Help_The_Crimson_Lasher_Drink_From_Ember_Pools"
kill Emberspit Scorpion##53240+
|tip They will spawn {o}Ember Pools{} on the ground.
|tip Your {o}Crimson Lasher{} will {o}drink them{}.
Help the Crimson Lasher Drink from #6# Ember Pools |q 29299/1 |goto Molten Front/0 48.61,51.62
|only if haveq(29299)
step
label "Collect_Magmolias"
clicknpc Magmolia##53091+
|tip They look like {o}flowers in the pools of lava{}.
kill Lava Burster##53090+
|tip They {o}sometimes appear{} after clicking Magmolias.
collect 8 Magmolia##69725 |q 29257/1 |goto Molten Front/0 46.94,60.04
|only if haveq(29257)
step
label "Collect_Embergris"
Kill Charred enemies around this area
|tip They look like {o}fire elementals{}.
collect 5 Embergris##69722 |q 29255/1 |goto Molten Front/0 50.02,69.83
'|kill Charred Soldier##52504, Charred Vanquisher##52503
|only if haveq(29255)
step
label "Kill_Molten_Behemoths"
kill 3 Molten Behemoth##52552 |q 29141/1 |goto Molten Front/0 50.02,69.83
|tip They look like {o}rock giants{}.
|only if haveq(29141)
step
label "Kill_Charred_Combatants"
Kill Charred enemies around this area
|tip They look like {o}fire elementals{}.
Slay #8# Charred Combatants |q 29179/1 |goto Molten Front/0 50.02,69.83
'|kill Charred Soldier##52504, Charred Vanquisher##52503
|only if haveq(29179)
step
label "Kill_Druids_Of_The_Flame"
kill 3 Druid of the Flame##54343 |q 29142/1 |goto Molten Front/0 50.02,69.83
|tip They look like {o}humanoid enemies{}.
|only if haveq(29142)
step
label "Kill_Lava_Bursters"
kill 5 Lava Burster##52633 |q 29137/1 |goto Molten Front/0 50.02,69.83
|tip They look like {o}large armored worms{}.
|only if haveq(29137)
step
label "Kill_Ancient_Charhounds"
kill 5 Ancient Charhound##54339 |q 29304/1 |goto Molten Front/0 50.02,69.83
|tip They look like {o}large burning skeleton dogs{}.
|only if haveq(29304)
step
label "Save_Wounded_Hyjal_Defenders"
use the Enchanted Salve##69240
|tip Use it on {o}Wounded Hyjal Defenders{}.
|tip They look like {o}various friendly dead soldiers{}.
Save #8# Wounded Hyjal Defenders |q 29138/1 |goto Molten Front/0 50.02,69.83
'|clicknpc Wounded Hyjal Defender##52834
|only if haveq(29138)
step
label "Plant_Smothervines"
click Ash Pile##208545+
|tip They look like {o}mounds of brown dirt{}.
Plant #5# Smothervines |q 29139/1 |goto Molten Front/0 50.02,69.83
|only if haveq(29139)
step
clicknpc Lava Bubbles##53131+
|tip They look like {o}yellow bubbles in the pools of lava{}.
|tip A {o}Subterranean Magma Worm{} will appear.
use The Bitter Pill##69759
|tip Use it when the {o}Subterranean Magma Worm{} is {o}almost done{} casting {o}Burning Hunger{}.
kill Subterranean Magma Worm##53112 |q 29263/1 |goto Molten Front/0 48.61,51.62
|only if haveq(29263)
step
label "Collect_Obsidium_Meteorites"
clicknpc Magnetic Stone##53373+
|tip They look like {o}stone spikes{}.
click Obsidium Meteorite+
|tip They look like {o}spiked rocks{} that {o}appear{} on the ground.
collect 10 Obsidium Meteorite##69807 |q 29278/1 |goto Molten Front/0 50.20,50.25
|only if haveq(29278)
step
talk Avrilla##52489
turnin Some Like It Hot##29299		|goto Molten Front/0 50.66,87.26	|only if haveq(29299) or completedq(29299)
turnin Embergris##29255			|goto Molten Front/0 50.66,87.26	|only if haveq(29255) or completedq(29255)
turnin Steal Magmolias##29257		|goto Molten Front/0 50.66,87.26	|only if haveq(29257) or completedq(29257)
|only if haveq(29299,29255,29257) or completedq(29299,29255,29257)
step
talk Rayne Feathersong##52467
turnin Aggressive Growth##29139 |goto Molten Front/0 48.52,86.24 |only if haveq(29139) or completedq(29139)
turnin Wisp Away##29143 |goto Molten Front/0 48.52,86.24 |only if haveq(29143) or completedq(29143)
|only if haveq(29139,29143) or completedq(29139,29143)
step
talk Damek Bloombeard##53214
|tip Inside the small cave.
turnin A Bitter Pill##29263		|goto Molten Front/0 46.92,90.00	|only if haveq(29263) or completedq(29263)
turnin Living Obsidium##29278		|goto Molten Front/0 46.92,90.00	|only if haveq(29278) or completedq(29278)
|only if haveq(29263,29278) or completedq(29263,29278)
step
talk Captain Irontree##53080
turnin Burn Victims##29138 |goto Molten Front/0 45.64,86.16
|only if haveq(29138) or completedq(29138)
step
talk General Taldris Moonfall##52824
turnin Hostile Elements##29179		|goto Molten Front/0 45.58,85.83	|only if haveq(29179) or completedq(29179)
turnin Traitors Return##29142		|goto Molten Front/0 45.58,85.83	|only if haveq(29142) or completedq(29142)
turnin The Harder They Fall##29141	|goto Molten Front/0 45.58,85.83	|only if haveq(29141) or completedq(29141)
turnin Breach in the Defenses##29137	|goto Molten Front/0 45.58,85.83	|only if haveq(29137) or completedq(29137)
turnin The Dogs of War##29304		|goto Molten Front/0 45.58,85.83	|only if haveq(29304) or completedq(29304)
|only if haveq(29179,29142,29141,29137,29304) or completedq(29179,29142,29141,29137,29304)
step
Routing Guide	|complete completedq(29214,29181)	|or	|next "Choose_Daily_Quest_Line"
Routing Guide	|complete not completedq(29214,29181)	|or	|next "Start_Dailies"
step
label "Choose_Daily_Quest_Line"
talk General Taldris Moonfall##52824
|tip {o}Choose the quest line{} you want to complete.				|only if completedq(29214) and completedq(29181)
|tip You will only be able to accept {o}one quest per day{}.			|only if completedq(29214) and completedq(29181)
accept The Forlorn Spire##29205		|goto Molten Front/0 45.58,85.83	|or	|noautoaccept	|next "Shadow_Wardens_Dailies"		|only if completedq(29214)
|tip This quest is for the {o}Shadow Wardens{} daily quests.											|only if completedq(29214)
|tip  The {o}Shadow Wardens{} daily quests are thought to be {o}easier to complete{}.								|only if completedq(29214)
accept Into the Fire##29206		|goto Molten Front/0 45.58,85.83	|or	|noautoaccept	|next "Druid_Of_The_Talon_Dailies"	|only if completedq(29181)
|tip This quest is for the {o}Druid of the Talon{} daily quests.										|only if completedq(29181)
|only if completedq(29214) or completedq(29181)
step
label "Druid_Of_The_Talon_Dailies"
Locate the Windcaller |goto Molten Front/0 43.01,80.21 < 10 |q 29206
'|clicknpc Windcaller Voramus##53217, Windcaller Nordrala##53355
step
Watch the dialogue
|tip They begin {o}walking into the fire{} nearby.
Begin Following the Windcaller |goto Molten Front/0 43.01,80.21 > 10 |q 29206
'|clicknpc Windcaller Voramus##53217, Windcaller Nordrala##53355
step
Watch the dialogue
|tip Follow the {o}Windcaller{} and {o}protect them{} as you walk.
|tip {o}Walk behind them{} through the {o}fire{}, so the {o}flames don't burn you{}.
kill Pyrelord##52683
|tip It looks like a {o}large fire elemental{}.
|tip Your allies will {o}help you fight.{}.
Protect the Druid of the Talon Windcaller |q 29206/1 |goto Molten Front/0 33.71,67.41
'|clicknpc Windcaller Voramus##53217, Windcaller Nordrala##53355
step
talk Thisalee Crow##52444
|tip Inside the underground cave.
turnin Into the Fire##29206 |goto Molten Front/0 42.53,59.70
accept Flamewakers of the Molten Flow##29264 |goto Molten Front/0 42.53,59.70
accept Fire Flowers##29265 |goto Molten Front/0 42.53,59.70
step
talk Anren Shadowseeker##52478
|tip If there's {o}no quest{} available, {o}skip the step{}.
|tip Inside the underground cave.
accept Hounds of Shannox##29274 |goto 41.90,61.50
stickystart "Slay_Flamewakers"
stickystart "Collect_Houndbone_Ash"
step
click Lucifern##208551+
|tip They look like {o}small red plants{}.
|tip Inside the underground cave.
collect 5 Lucifern##69765 |q 29265/1 |goto Molten Front/0 51.91,54.70
|only if haveq(29265)
step
label "Slay_Flamewakers"
Kill Flamewaker enemies around this area
|tip They look like {o}naga{}.
|tip Inside the underground cave. |notinsticky
Slay #8# Flamewakers |q 29264/1 |goto Molten Front/0 51.91,54.70
'|kill Flamewaker Sentinel##53085, Flamewaker Hunter##53143, Flamewaker Shaman##53093
|only if haveq(29264)
step
label "Collect_Houndbone_Ash"
kill Charhound##53152+
|tip They look like {o}burning skeleton dogs{}.
|tip Inside the underground cave. |notinsticky
collect 6 Houndbone Ash##69816 |q 29274/1 |goto Molten Front/0 43.58,50.59
|only if haveq(29274)
step
talk Anren Shadowseeker##53233
|tip Inside the underground cave.
accept Need... Water... Badly...##29272 |goto Molten Front/0 51.90,30.95
step
talk Anren Shadowseeker##53233
|tip Inside the underground cave.
Select _"Here's some water, Anren. Let's get you out of this cave."_ |gossip 113665
Begin Following Anren Shadowseeker |goto Molten Front/0 51.90,30.95 > 10 |q 29272
step
Escort Anren to the Front of the Cave |q 29272/1 |goto Molten Front/0 42.75,59.87
|tip Follow {o}Anren Shadowseeker{} and {o}protect him{} as he walks.
|tip {o}Jump in the {o}air vents{} to navigate the cave.
|tip He eventually walks to this location.
|tip Inside the underground cave.
'|clicknpc Anren Shadowseeker##53234
step
talk Thisalee Crow##52444
|tip Inside the underground cave.
turnin Flamewakers of the Molten Flow##29264 |goto Molten Front/0 42.53,59.70
step
Leave the Molten Flow Cave |complete subzone ("The Furnace") |goto Molten Front/0 33.30,67.55
|tip {o}Jump{} at this location.
|tip Inside the underground cave.
|only if subzone("The Molten Flow")
step
talk Tholo Whitehoof##52477
turnin Need... Water... Badly...##29272 |goto Molten Front/0 35.99,59.00
step
talk Tholo Whitehoof##52477
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept How Hot##29273 |goto Molten Front/0 35.99,59.00
step
talk Anren Shadowseeker##52478
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept Hounds of Shannox##29274 |goto Molten Front/0 35.80,59.37
step
talk Choluna##52492
turnin Fire Flowers##29265 |goto Molten Front/0 36.29,56.33
step
talk Ricket##53304
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept The Bigger They Are##29295 |goto 36.30,56.60
step
talk Morthis Whisperwing##52491
|tip You will only be able to accept {o}one quest per day{}.
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept Peaked Interest##29287		|goto Molten Front/0 34.50,56.21	|or
accept Fire in the Skies##29290		|goto Molten Front/0 34.50,56.21	|or
accept Starting Young##29288		|goto Molten Front/0 34.50,56.21	|or
step
talk Arthorn Windsong##53259
|tip You will only be able to accept {o}one quest per day{}.
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept Singed Wings##29293		|goto Molten Front/0 34.30,56.41	|or
accept Territorial Birds##29296		|goto Molten Front/0 34.30,56.41	|or
step
click Trained Fire Hawk
Ride the Trained Fire Hawk |invehicle |goto Molten Front/0 33.93,57.22 |q 29290
|only if haveq(29290)
stickystart "Slay_Amassing_Cinderwebs"
stickystart "Slay_Amassing_Flamewakers"
step
_As You Fly:_
kill 3 Molten Lord##53310 |q 29290/3
|tip They look like {o}stone giants{}.
|only if haveq(29290)
step
label "Slay_Amassing_Cinderwebs"
_As You Fly:_ |notinsticky
Kill Cinderweb enemies around this area
|tip They look like {o}spiders{}.
Slay #40# Amassing Cinderwebs |q 29290/2
|only if haveq(29290)
step
label "Slay_Amassing_Flamewakers"
_As You Fly:_ |notinsticky
Kill Flamewaker enemies around this area
|tip They look like {o}naga{}.
Slay #100# Amassing Flamewakers |q 29290/1
|only if haveq(29290)
step
Return to the Furnace |outvehicle |q 29290
|tip Use the {o}Return to the Furnace{} ability.
|only if haveq(29290)
step
talk Morthis Whisperwing##52491
turnin Fire in the Skies##29290 |goto Molten Front/0 34.50,56.21
|only if haveq(29290) or completedq(29290)
step
Jump Off the Cliff |invehicle |goto Molten Front/0 33.84,55.31
|tip You will be {o}caught{} and {o}carried across{} the chasm.
|tip You will {o}not die{}.
|only if haveq(29287,29288,29293,29296)
step
Watch the dialogue
Traverse the Chasm |outvehicle |goto Molten Front/0 22.40,54.37 |notravel
|only if haveq(29287,29288,29293,29296)
stickystart "Rescue_Druids_Of_The_Talon"
stickystart "Collect_Fire_Hark_Hatchlings"
stickystart "Kill_Fire_Hawks"
stickystart "Collect_Living_Obsidium_Chips"
step
use Tholo's Thermometer##69806
|tip At the top of the mountain.
|tip {o}Jump{} at the {o}air vents{} to {o}fly up{} the mountain. |notinsticky
Sample the Central Lava Pool |q 29273/3 |goto Molten Front/0 23.75,39.51
|only if haveq(29273)
step
click a Fire Hawk Egg##208630
|tip They look like {o}orange eggs in a pool of lava{}.
|tip At the top of the mountain.
|tip {o}Jump{} at the {o}air vents{} to {o}fly up{} the mountain. |notinsticky
|tip You will be attacked.
collect Fire Hawk Egg##69836 |q 29287/1 |goto Molten Front/0 23.76,41.75
|only if haveq(29287)
step
use Tholo's Thermometer##69806
|tip At the top of the mountain.
|tip {o}Jump{} at the {o}air vents{} to {o}fly up{} the mountain. |notinsticky
Sample the Northwestern Lava Pool |q 29273/1 |goto Molten Front/0 22.46,29.12
|only if haveq(29273)
step
use Tholo's Thermometer##69806
|tip At the top of the mountain.
|tip {o}Jump{} at the {o}air vents{} to {o}fly up{} the mountain. |notinsticky
Sample the Northeastern Lava Pool |q 29273/2 |goto Molten Front/0 29.99,29.74
|only if haveq(29273)
step
label "Rescue_Druids_Of_The_Talon"
clicknpc Injured Druid of the Talon##53243+
|tip They look like {o}birds and bats{} laying on the ground.
|tip You can find them {o}all around the mountain{}. |notinsticky
|tip {o}Jump{} at the {o}air vents{} to {o}fly up{} the mountain. |notinsticky
Rescue #5# Druids of the Talon |q 29293/1 |goto Molten Front/0 22.83,32.15
|only if haveq(29293)
step
label "Collect_Fire_Hark_Hatchlings"
clicknpc Fire Hawk Hatchling##53275+
|tip They look like {o}small fire birds{}.
|tip You can find them {o}all around the mountain{}. |notinsticky
|tip {o}Jump{} at the {o}air vents{} to {o}fly up{} the mountain. |notinsticky
collect 5 Fire Hawk Hatchling##69845 |q 29288/1 |goto Molten Front/0 22.83,32.15
|only if haveq(29288)
step
label "Kill_Fire_Hawks"
kill 5 Fire Hawk##53245 |q 29296/1 |goto Molten Front/0 22.83,32.15
|tip They look like {o}large fire birds{}.
|tip You can find them {o}all around the mountain{}. |notinsticky
|tip {o}Jump{} at the {o}air vents{} to {o}fly up{} the mountain. |notinsticky
|only if haveq(29296)
step
label "Collect_Living_Obsidium_Chips"
kill Obsidium Punisher##52107+
|tip They look like {o}rock elementals{}.
|tip You can find them {o}all around the mountain{}. |notinsticky
|tip {o}Jump{} at the {o}air vents{} to {o}fly up{} the mountain. |notinsticky
click Living Obsidium Chip+
|tip They look like {o}gray rocks{} that appear on the ground.
collect 10 Living Obsidium Chip##69860 |q 29295/1 |goto Molten Front/0 22.83,32.15
|only if haveq(29295)
step
Leave Fireplume Peak |complete not subzone("Fireplume Peak") |goto Molten Front/0 29.38,52.90
|tip {o}Jump{} at the {o}air vents{} to {o}fly across{} the chasm.
|only if haveq(29287,29288,29293,29296)
step
talk Arthorn Windsong##53259
turnin Singed Wings##29293		|goto Molten Front/0 34.30,56.41	|only if haveq(29293) or completedq(29293)
turnin Territorial Birds##29296		|goto Molten Front/0 34.30,56.41	|only if haveq(29296) or completedq(29296)
step
talk Morthis Whisperwing##52491
turnin Peaked Interest##29287		|goto Molten Front/0 34.50,56.21	|only if haveq(29287) or completedq(29287)
turnin Starting Young##29288		|goto Molten Front/0 34.50,56.21	|only if haveq(29288) or completedq(29288)
step
talk Choluna##52492
accept Strike at the Heart##29305 |goto Molten Front/0 36.29,56.33
|only if completedq(29283)
step
kill Ancient Charhound##54339+
|tip They look like {o}large fire dogs{}.
collect 6 Houndbone Ash##69816 |q 29274/1 |goto Molten Front/0 39.30,55.20
You can find more around:
[Molten Front/0 39.60,39.40]
[Molten Front/0 55.90,62.98]
|only if haveq(29274)
step
talk Witherbranch##53074
Select _"Wait no longer, I'm ready to fight."_ |gossip 113769
|tip You {o}can't talk to him{} if the {o}fight already started{}.
Slay the Lieutenant of Flame |q 29305/1 |goto Molten Front/0 47.73,27.57
|tip The {o}name{} of the enemy is {o}random{}.
'|kill Ancient Charscale##53055, Devout Harbinger##53834, Ancient Smoldering Behemoth##53771, Cinderweb Queen##53759, Ancient Firelord##53864
|only if haveq(29305)
step
talk Tholo Whitehoof##52477
turnin Hounds of Shannox##29274 |goto Molten Front/0 51.54,85.48
|only if haveq(29274) or completedq(29274)
step
talk Anren Shadowseeker##52478
turnin How Hot##29273 |goto Molten Front/0 51.29,85.80
|only if haveq(29273) or completedq(29273)
step
talk Damek Bloombeard##53214
|tip Inside the small cave.
turnin The Bigger They Are##29295 |goto Molten Front/0 46.91,89.99
|only if haveq(29295) or completedq(29295)
step
talk Skylord Omnuron##52490
turnin Strike at the Heart##29305 |goto Molten Front/0 43.04,80.61
|only if haveq(29305) or completedq(29305)
step
|next "Start_Dailies"
|only if completedq(29206)
step
label "Shadow_Wardens_Dailies"
Locate the Druid Assault Group |goto Molten Front/0 54.70,70.90 < 15 |q 29205
step
Protect the Druid Assault Group |q 29205/1 |goto Molten Front/0 65.18,65.52
|tip Follow {o}your allies{} and protect them as they walk.
|tip They {o}must stay alive{}.
|tip They eventually walk to this location.
|tip Your allies have {o}various names{}.
'|kill Flamewatch Igniter##52999, Flamewatch Sentinel##52663, Pyrelord##52998
step
talk Marin Bladewing##52494
turnin The Forlorn Spire##29205 |goto Molten Front/0 64.87,67.29
step
talk Marin Bladewing##52494
|tip You will only be able to accept {o}one quest per day{}.
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept Solar Core Destruction##29211		|goto Molten Front/0 64.87,67.29	|or
accept The Wardens are Watching##29192		|goto Molten Front/0 64.87,67.29	|or
step
talk Tholo Whitehoof##52477
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept The Flame Spider Queen##29276 |goto Molten Front/0 66.27,66.09
step
talk Ricket##54163
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept Bye Bye Burdy##29297 |goto Molten Front/0 66.43,65.39
step
talk Deldren Ravenelm##52921
|tip You will only be able to accept {o}two quests per day{}.
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept Pyrorachnophobia##29159		|goto Molten Front/0 66.08,63.96	|or 2
accept Egg-stinction##29160		|goto Molten Front/0 66.08,63.96	|or 2
accept Wicked Webs##29189		|goto Molten Front/0 66.08,63.96	|or 2
stickystart "Collect_Flame_Venom"
stickystart "Collect_Searing_Web_Fluid"
stickystart "Free_Victims"
stickystart "Slay_Cinderweb_Spiders"
stickystart "Collect_Cinderweb_Eggs"
step
use the Burd Sticker##69832
|tip Use it on {o}Druids of the Flame{}.
|tip They look like {o}fire birds flying in the air{}.
|tip Try to target the ones {o}near the ground{}.
|tip They can be {o}spread out{}.
Slay #3# Druids of the Flame in Fire Crow Form |q 29297/1 |goto Molten Front/0 71.41,47.26
'|clicknpc Druid of the Flame##52661
|only if haveq(29297)
step
click Solar Core
|tip It looks like a {o}large floating orb{}.
|tip {o}Ignore the enemies{}, just {o}run in{} and click it.
|tip You will be {o}thrown to safety{}.
Detonate the Solar Core |q 29211/1 |goto Molten Front/0 70.78,38.26
|only if haveq(29211)
step
kill Druid of the Flame##52122+
|tip Your {o}Shadow Warden{} follower will {o}lay down a metal trap{}.
|tip {o}Walk over it{} to {o}lure the druid{} into the trap.
Capture a Druid of the Flame |q 29192/1 |goto Molten Front/0 71.07,41.96
'|kill Druid of the Flame##52872
|only if haveq(29192)
step
label "Collect_Flame_Venom"
kill Cinderweb Creeper##52648+
|tip They look like {o}yellow spiders on the ground{}.
collect 8 Flame Venom##69808 |q 29276/1 |goto Molten Front/0 65.60,50.50
step
label "Collect_Searing_Web_Fluid"
kill Cinderweb Spinner##52981+
|tip They look like {o}red spiders up on the rocks{}.
collect 8 Searing Web Fluid##69809 |q 29276/2 |goto Molten Front/0 65.60,50.50
'|kill Cinderweb Creeper##52648, Cinderweb Spinner##52981
|only if haveq(29276)
step
label "Free_Victims"
click Cinderweb Cocoon+
|tip They look like {o}red web balls stuck to the walls{}.
Free #8# Victims |q 29189/1 |goto Molten Front/0 65.60,50.50
|only if haveq(29189)
step
label "Slay_Cinderweb_Spiders"
Kill Cinderweb enemies
|tip They look like {o}spiders{}. |notinsticky
Slay #8# Cinderweb Spiders |q 29159/1 |goto Molten Front/0 65.60,50.50
'|kill Cinderweb Creeper##52648, Cinderweb Spinner##52981
|only if haveq(29159)
step
label "Collect_Cinderweb_Eggs"
click Cinderweb Egg Sac+
|tip They look like {o}brown-ish red cocoons{}.
collect 20 Cinderweb Egg##152976 |q 29160/1 |goto Molten Front/0 65.60,50.50
|only if haveq(29160)
step
talk Deldren Ravenelm##52921
turnin Pyrorachnophobia##29159		|goto Molten Front/0 66.08,63.96		|only if haveq(29159) or completedq(29159)
turnin Egg-stinction##29160		|goto Molten Front/0 66.08,63.96		|only if haveq(29160) or completedq(29160)
turnin Wicked Webs##29189		|goto Molten Front/0 66.08,63.96		|only if haveq(29189) or completedq(29189)
|only if haveq(29159,29160,29189) or completedq(29159,29160,29189)
step
talk Marin Bladewing##52494
turnin Solar Core Destruction##29211		|goto Molten Front/0 64.86,67.29		|only if haveq(29211) or completedq(29211)
turnin The Wardens are Watching##29192		|goto Molten Front/0 64.86,67.29		|only if haveq(29192) or completedq(29192)
|only if haveq(29211,29192) or completedq(29211,29192)
step
talk Marin Bladewing##52494
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept Enduring the Heat##29210 |goto Molten Front/0 64.86,67.29
step
talk Anren Shadowseeker##52478
|tip If there's {o}no quest{} available, {o}skip the step{}.
accept Fandral's Methods##29275 |goto Molten Front/0 66.02,66.09
step
Enter the Igneous Depths |q 29210/1 |goto Molten Front/0 57.91,49.62
|tip It looks like a {o}cave entrance{}.
|only if haveq(29210)
stickystart "Collect_Flame_Druid_Staff"
stickystart "Collect_Flame_Druid_Spellbook"
stickystart "Collect_Flame_Druid_Reagent_Pouch"
stickystart "Collect_Flame_Druid_Idol"
step
click Flame Rune+
|tip They look like {o}glowing blue symbols on the ground{}.
|tip There are {o}8 of them{}.
|tip Inside the cave, throughout.
Destroy All the Flame Runes |q 29210/2 |goto Molten Front/0 57.91,49.62
|only if haveq(29210)
step
label "Collect_Flame_Druid_Staff"
click Flame Druid Staff##208588
|tip They look like {o}tiny sticks{}.
|tip Inside the cave. |notinsticky
collect Flame Druid Staff##69810 |q 29275/1 |goto Molten Front/0 57.91,49.62
|only if haveq(29275)
step
label "Collect_Flame_Druid_Spellbook"
click Flame Druid Spellbook##208590
|tip They look like {o}tiny books{}.
|tip Inside the cave. |notinsticky
collect Flame Druid Spellbook##69811 |q 29275/2 |goto Molten Front/0 57.91,49.62
|only if haveq(29275)
step
label "Collect_Flame_Druid_Reagent_Pouch"
click Flame Druid Reagent Pouch##208592
|tip They look like {o}tiny vials{}.
|tip Inside the cave. |notinsticky
collect Flame Druid Reagent Pouch##69812 |q 29275/3 |goto Molten Front/0 57.91,49.62
|only if haveq(29275)
step
label "Collect_Flame_Druid_Idol"
click Flame Druid Idol##208593
|tip They look like {o}tiny statues{}.
|tip Inside the cave. |notinsticky
collect Flame Druid Idol##69813 |q 29275/4 |goto Molten Front/0 57.91,49.62
|only if haveq(29275)
step
talk Theresa Barkskin##52823
|tip Outside, next to the cave entrance.
turnin Enduring the Heat##29210 |goto Molten Front/0 57.75,49.51
|only if haveq(29210) or completedq(29210)
step
talk Shalis Darkhunter##53056
|tip Outside, next to the cave entrance.
accept Strike at the Heart##29243 |goto Molten Front/0 57.53,49.48
|only if completedq(29283)
step
talk Witherbranch##53074
Select _"Wait no longer, I'm ready to fight."_ |gossip 113769
|tip You {o}can't talk to him{} if the {o}fight already started{}.
Slay the Lieutenant of Flame |q 29243/1 |goto Molten Front/0 47.73,27.57
|tip The {o}name{} of the enemy is {o}random{}.
'|kill Ancient Charscale##53055, Devout Harbinger##53834, Ancient Smoldering Behemoth##53771, Cinderweb Queen##53759, Ancient Firelord##53864
|only if haveq(29243)
step
talk Tholo Whitehoof##52477
turnin Fandral's Methods##29275 |goto Molten Front/0 51.54,85.49
|only if haveq(29275) or completedq(29275)
step
talk Anren Shadowseeker##52478
turnin The Flame Spider Queen##29276 |goto Molten Front/0 51.30,85.78
|only if haveq(29276) or completedq(29276)
step
talk Damek Bloombeard##53214
|tip Inside the small cave.
turnin Bye Bye Burdy##29297 |goto Molten Front/0 46.91,89.99
|only if haveq(29297) or completedq(29297)
step
talk Captain Saynna Stormrunner##52493
|tip Inside the small cave.
turnin Strike at the Heart##29243 |goto Molten Front/0 47.58,90.54
|only if haveq(29243) or completedq(29243)
step
|next "Start_Dailies"
|only if completedq(29205)
]])
