-- Bundled QuestCore guide
if not QuestCore then return end

QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Biblo Archivist",{
description="Locate all the hidden lore books in Hallowfall.",
achieveid={40622},
patch='110002',
startlevel=70,
keywords={"The War Within", "Exploration"},
},[[
step
Click the Lore Book
Collect _500 Dishes Using Cave Fish and Mushrooms_ |achieve 40622/2 |goto Hallowfall/0 43.90,49.97
|tip On the table, bottom floor.
step
Click the Lore Book
Collect _The Big Book of Arathi Idioms_ |achieve 40622/1 |goto Hallowfall/0 48.11,39.56
|tip On the side table, back left corner.
step
Click the Lore Book
Collect _Palawltar's Codex of Dimensional Structure_ |achieve 40622/6 |goto Hallowfall/0 48.75,64.71
|tip In the bookshelf on the back wall.
step
Click the Lore Book
Collect _Lightspark Sky Academy Gradebook_ |achieve 40622/11 |goto Hallowfall/0 52.63,59.99
|tip On the desk, bottom floor.
step
Click the Lore Book
Collect _Beledar - The Emperor's Vision_ |achieve 40622/10 |goto Hallowfall/0 56.56,65.18
|tip In the Captain's cabin, on his desk, on the ship.
step
Click the Lore Book
Collect _From the Depths They Come_ |achieve 40622/5 |goto Hallowfall/0 57.79,51.77
|tip On the ground, at the water line.
step
Click the Lore Book
Collect _The Song of Renilash_ |achieve 40622/9 |goto Hallowfall/0 70.21,56.85
|tip Inside the pavilion tent, upon the altar.
step
Click the Lore Book
Collect _Care and Feeding of the Imperial Lynx_ |achieve 40622/3 |goto Hallowfall/0 69.36,43.98
|tip Inside the house, on the floor directly to the right as you enter.
step
Click the Lore Book
Collect _Light's Gambit Playbook_ |achieve 40622/4 |goto Hallowfall/0 68.69,41.42
|tip On the bridge.
step
Click the Lore Book
Collect _Shadow Curfew Guidelines_ |achieve 40622/7 |goto Hallowfall/0 64.21,28.09
|tip In the house, on the table against the back wall.
step
Click the Lore Book
Collect _Shadow Curfew Journal_ |achieve 40622/8 |goto Hallowfall/0 59.81,22.11
|tip Inside the ruins of the cabin.
step
Enter the building |goto Hallowfall/0 40.12,51.37
talk Ryfus Sacredpyr##221630 |goto Hallowfall/0 40.00,51.00
|tip Inside the building.
Select _"Ask your question."
Select _"That the Cosmos consisted of monopole elemental phase spaces."
Select _"Patience and respect."
Select _"Seek shelter and light. Have plans, have backup plans. Find joy while sheltering."
Select _"The third fleet."
Select _"The remains of gods."
Select _"From the letters of Mereldar."
Click Here to Continue |confirm |next |or
'|complete hastoy(225659) |or
step
click Small Chest
|tip Its a tiny chest on the table next to Ryfus.
collect Arathi Book Collection##225659 |goto Hallowfall/0 40.02,51.17 |or
'|complete hastoy(225659) |or
step
use Arathi Book Collection##225659
toy Arathi Book Collection##225659
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\War Within\\Explore K'aresh",{
patch='110200',
author="QuestCore",
description="This guide will show you the path to accomplish the Explore K'aresh achievement.",
achieveid={42740},
startlevel=80,
},[[
step
achieve 42740/7 |goto Tazavesh/0 62.05,92.91
step
achieve 42740/1 |goto K'aresh/0 47.91,60.06
step
achieve 41740/8 |goto K'aresh/0 64.47,47.55
step
achieve 42740/2 |goto K'aresh/0 68.68,54.57
step
achieve 42740/3 |goto K'aresh/0 74.88,36.70
step
achieve 42740/9 |goto K'aresh/0 72.64,14.12
step
achieve 41740/6 |goto K'aresh/0 58.14,23.06
step
achieve 41740/5 |goto K'aresh/0 50.11,23.10
step
achieve 41740/4 |goto K'aresh/0 50.35,36.35
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Khaz Algar Glyph Hunter",{
description="Complete the Glyph Hunter achievements in Khaz Algar.",
achieveid={40702},
patch='110002',
startlevel=70,
keywords={"The War Within", "Exploration"},
},[[
step
Fly Through the Skyriding Glyph: Storm's Watch |goto Isle of Dorn/0 38.11,40.79
|tip Just under the tree canopy, on the West side of the tree.
Click Here to Continue |confirm |next |or
'|achieve 40166/3 |or
step
Fly Through the Skyriding Glyph: Dhar Oztan |goto Isle of Dorn/0 23.15,58.52
|tip At the tip top of the Dhaz Oztan mountain.
Click Here to Continue |confirm |next |or
'|achieve 40166/2 |or
step
Fly Through the Skyriding Glyph: Dhar Durgaz |goto Isle of Dorn/0 44.55,79.95
|tip Near the top level of the Dhar Durgaz tower.
Click Here to Continue |confirm |next |or
'|achieve 40166/4 |or
step
Fly Through the Skyriding Glyph: Sunken Shield |goto Isle of Dorn/0 68.22,71.74
|tip Above the stone pillar.
Click Here to Continue |confirm |next |or
'|achieve 40166/5 |or
step
Fly Through the Skyriding Glyph: Mourning Rise |goto Isle of Dorn/0 62.09,44.83
|tip At the top of a rock.
Click Here to Continue |confirm |next |or
'|achieve 40166/9 |or
step
Fly Through the Skyriding Glyph: Ironwold |goto Isle of Dorn/0 71.95,47.22
|tip Under the bridge.
Click Here to Continue |confirm |next |or
'|achieve 40166/10 |or
step
Fly Through the Skyriding Glyph: Cinderbrew Meadery |goto Isle of Dorn/0 78.19,42.74
|tip Above the mountain peak.
Click Here to Continue |confirm |next |or
'|achieve 40166/8 |or
step
Fly Through the Skyriding Glyph: The Three Shields |goto Isle of Dorn/0 75.76,22.22
|tip Middle of the three islands off Northeast coast.
Click Here to Continue |confirm |next |or
'|achieve 40166/1 |or
step
Fly Through the Skyriding Glyph: Thunderhead Peak |goto Isle of Dorn/0 56.37,17.65
|tip On the northwest side of the mountain, between the stone obelisks.
Click Here to Continue |confirm |next |or
'|achieve 40166/7 |or
step
Fly Through the Skyriding Glyph: Thul Medran |goto Isle of Dorn/0 47.79,27.22
|tip Above the mountain peak.
Click Here to Continue |confirm |next |or
'|achieve 40166/6 |or
step
Fly Through the Skyriding Glyph: Gundargaz |goto The Ringing Deeps/0 44.57,31.85
|tip High up between large pipes.
Click Here to Continue |confirm |next |or
'|achieve 40703/1 |or
step
Fly Through the Skyriding Glyph: The Waterworks |goto The Ringing Deeps/0 42.27,51.77
|tip Above the waterfall.
Click Here to Continue |confirm |next |or
'|achieve 40703/9 |or
step
Fly Through the Skyriding Glyph: The Rumbling Wastes |goto The Ringing Deeps/0 51.96,56.08
|tip At the top of a mountain overlooking the rail tracks.
Click Here to Continue |confirm |next |or
'|achieve 40703/5 |or
step
Fly Through the Skyriding Glyph: The Living Grotto |goto The Ringing Deeps/0 45.72,66.11
|tip Near the ceiling, just above the waterfall.
Click Here to Continue |confirm |next |or
'|achieve 40703/6 |or
step
Fly Through the Skyriding Glyph: Abyssal Excavation |goto The Ringing Deeps/0 59.62,95.38
|tip Near the ceiling, by some stalagmites.
Click Here to Continue |confirm |next |or
'|achieve 40703/7 |or
step
Fly Through the Skyriding Glyph: Taelloch Mine |goto The Ringing Deeps/0 58.77,66.14
|tip Above the structures near the ceiling.
Click Here to Continue |confirm |next |or
'|achieve 40703/8 |or
step
Fly Through the Skyriding Glyph: Chittering Den |goto The Ringing Deeps/0 65.21,34.23
|tip At the very top of the middle waterfall.
Click Here to Continue |confirm |next |or
'|achieve 40703/4 |or
step
Fly Through the Skyriding Glyph: Lost Mines |goto The Ringing Deeps/0 53.00,31.31
|tip At the top of a ridge.
Click Here to Continue |confirm |next |or
'|achieve 40703/3 |or
step
Fly Through the Skyriding Glyph: The Stonevault Exterior |goto The Ringing Deeps/0 42.70,9.87
|tip Above the structure, near the ceiling.
Click Here to Continue |confirm |next |or
'|achieve 40703/2 |or
step
Fly Through the Skyriding Glyph: Dunelle's Kindness |goto Hallowfall/0 69.95,44.24
|tip High up, next to the tower.
Click Here to Continue |confirm |next |or
'|achieve 40704/4 |or
step
Fly Through the Skyriding Glyph: The Fangs |goto Hallowfall/0 62.87,51.84
|tip Above a stone outcrop.
Click Here to Continue |confirm |next |or
'|achieve 40704/1 |or
step
Fly Through the Skyriding Glyph: Sanguine Grasps |goto Hallowfall/0 63.67,65.47
|tip Near the low ceiling, between the stalagtites.
Click Here to Continue |confirm |next |or
'|achieve 40704/3 |or
step
Fly Through the Skyriding Glyph: Tenir's Ascent |goto Hallowfall/0 57.57,64.89
|tip Under the docks, in between the air ship and the building.
Click Here to Continue |confirm |next |or
'|achieve 40704/10 |or
step
Fly Through the Skyriding Glyph: Sina's Yearning |goto Hallowfall/0 57.22,32.43
|tip Near the ceiling, by the stalagtites.
Click Here to Continue |confirm |next |or
'|achieve 40704/2 |or
step
Fly Through the Skyriding Glyph: Bleak Sand |goto Hallowfall/0 62.80,07.20
|tip Above the peak of a small mountain.
Click Here to Continue |confirm |next |or
'|achieve 40704/5 |or
step
Fly Through the Skyriding Glyph: Velhan's Claim |goto Hallowfall/0 45.72,12.37
|tip Under the arch of the house bridge.
Click Here to Continue |confirm |next |or
'|achieve 40704/9 |or
step
Fly Through the Skyriding Glyph: Priory of the Sacred Flame |goto Hallowfall/0 35.54,34.02
|tip At the top of one of the towers.
Click Here to Continue |confirm |next |or
'|achieve 40704/7 |or
step
Fly Through the Skyriding Glyph: Fortune's Fall |goto Hallowfall/0 30.89,51.60
|tip Above the wreckage of a boat.
Click Here to Continue |confirm |next |or
'|achieve 40704/8 |or
step
Fly Through the Skyriding Glyph: Mereldar |goto Hallowfall/0 43.40,52.89
|tip At the top of a house.
Click Here to Continue |confirm |next |or
'|achieve 40704/6 |or
step
Fly Through the Skyriding Glyph: Ruptured Lake |goto Azj-Kahet/0 24.73,41.57
|tip Up high, through the large hole in the ceiling, among some hanging roots.
Click Here to Continue |confirm |next |or
'|achieve 40705/3 |or
step
Fly Through the Skyriding Glyph: Eye of Ansurek |goto Azj-Kahet/0 43.04,57.25
|tip Under the docks.
Click Here to Continue |confirm |next |or
'|achieve 40705/4 |or
step
Fly Through the Skyriding Glyph: Old Sacrificial Pit |goto Azj-Kahet/0 13.85,33.94
|tip Inside a cave near the ceiling to the west over the City of Threads.
Click Here to Continue |confirm |next |or
'|achieve 40705/5 |or
step
Fly Through the Skyriding Glyph: Deepwalker Pass |goto Azj-Kahet/0 58.53,89.72
|tip Under the supports of a hanging platform.
Click Here to Continue |confirm |next |or
'|achieve 40705/6 |or
step
Fly Through the Skyriding Glyph: The Maddening Deep |goto Azj-Kahet/0 66.37,84.62
|tip Under a bridge.
Click Here to Continue |confirm |next |or
'|achieve 40705/7 |or
step
Fly Through the Skyriding Glyph: Rak-Ush |goto Azj-Kahet/0 73.26,84.38
|tip Against the wall behind some fungus.
Click Here to Continue |confirm |next |or
'|achieve 40705/8 |or
step
Fly Through the Skyriding Glyph: Silken Ward |goto Azj-Kahet/0 57.59,57.49
|tip Under the platform.
Click Here to Continue |confirm |next |or
'|achieve 40705/9 |or
step
Fly Through the Skyriding Glyph: Untamed Valley |goto Azj-Kahet/0 65.45,51.79
|tip Near the ceiling, among stalagtites.
Click Here to Continue |confirm |next |or
'|achieve 40705/11 |or
step
Fly Through the Skyriding Glyph: Trickling Abyss |goto Azj-Kahet/0 70.47,25.45
|tip Near the ceiling, next to a pillar, as you head down the tunnel.
Click Here to Continue |confirm |next |or
'|achieve 40705/10 |or
step
Fly Through the Skyriding Glyph: Arathi's End |goto Azj-Kahet/0 63.48,13.91
|tip Up inside the tunnel, next to some hanging moss and stalagtites.
Click Here to Continue |confirm |next |or
'|achieve 40705/1 |or
step
Fly Through the Skyriding Glyph: Siegehold |goto Azj-Kahet/0 46.65,21.33
|tip High above Seigehold, on a rocky ledge.
Click Here to Continue |confirm |next |or
'|achieve 40705/2 |or
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\K'aresh Glyph Hunter",{
description="Complete the Glyph Hunter achievement in K'aresh.",
achieveid={42727},
patch='110200',
startlevel=80,
keywords={"The War Within", "Exploration"},
},[[
step
Collect the Skyriding Glyph: Tazavesh, the Veiled Market |achieve 42727/7 |goto Tazavesh/0 55.11,67.56 |notravel
|tip At the top of the arch.
step
Collect the Skyriding Glyph: Serrated Peaks |achieve 42727/5 |goto K'aresh/0 54.72,53.28 |notravel
step
Collect the Skyriding Glyph: Eco-Dome: Primus |achieve 42727/2 |goto K'aresh/0 46.46,58.36 |notravel
|tip High above the dome.
step
Collect the Skyriding Glyph: Shadow Point |achieve 42727/6 |goto K'aresh/0 43.95,17.05 |notravel
step
Collect the Skyriding Glyph: Fracture of Laacuna |achieve 42727/3 |goto K'aresh/0 54.69,23.40 |notravel
step
Collect the Skyriding Glyph: Castigaar |achieve 42727/1 |goto K'aresh/0 60.95,38.73 |notravel
step
Collect the Skyriding Glyph: The Oasis |achieve 42727/8 |goto K'aresh/0 74.06,32.51 |notravel
|tip High above the dome.
step
Collect the Skyriding Glyph: North Sufaad |achieve 42727/4 |goto K'aresh/0 76.46,46.28 |notravel
|tip Below the overhang.
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\The Missing Lynx",{
description="Pet the ferocious warcats around Hallowfall.",
achieveid={40625},
patch='110002',
startlevel=70,
keywords={"The War Within", "Exploration"},
},[[
step
Complete The War Within Storyline
|tip You must complete the The War Within storyline and unlock world quests in Hallowfall to reveal all of the tasks required to complete this achievement.
|tip Most of the tasks are available before completing the storyline.
|tip Use "The War Within Leveling Guides" to complete this.
Click Here to Load the "Intro & Isle of Dorn (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the "Intro & Isle of Dorn (Full Zones" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
|tip
Click Here to Continue with this Guide |confirm |next
'|complete achieved(20597)
step
clicknpc Evan##227336 |goto Hallowfall/0 42.69,53.84
'|script DoEmote("PET")
|tip Inside the building.
|tip Right click or use the /pet emote.
Click Here to Continue |confirm |next |or
'|achieve 40625/2 |or
step
clicknpc Emery##227335 |goto Hallowfall/0 42.73,53.84
'|script DoEmote("PET")
|tip Inside the building.
|tip Right click or use the /pet emote.
Click Here to Continue |confirm |next |or
'|achieve 40625/3 |or
step
clicknpc Jinx##227411 |goto Hallowfall/0 42.30,53.81
'|script DoEmote("PET")
|tip He walks around inside the building.
|tip Right click or use the /pet emote.
Click Here to Continue |confirm |next |or
'|achieve 40625/4 |or
step
clicknpc Gobbo##227442 |goto Hallowfall/0 42.14,53.71
'|script DoEmote("PET")
|tip On the bed, inside the house.
|tip Right click or use the /pet emote.
Click Here to Continue |confirm |next |or
'|achieve 40625/14 |or
step
clicknpc Moog##225421 |goto Hallowfall/0 69.27,43.72
'|script DoEmote("PET")
|tip Inside the building.
|tip Right click or use the /pet emote.
Click Here to Continue |confirm |next |or
'|achieve 40625/5 |or
step
clicknpc Iggy##225420 |goto Hallowfall/0 69.29,43.68
'|script DoEmote("PET")
|tip Inside the building.
|tip Right click or use the /pet emote.
Click Here to Continue |confirm |next |or
'|achieve 40625/6 |or
step
clicknpc Fuzzy##219412 |goto Hallowfall/0 64.44,18.57
'|script DoEmote("PET")
|tip Right click or use the /pet emote.
Click Here to Continue |confirm |next |or
'|achieve 40625/11 |or
step
clicknpc Furball##218887 |goto Hallowfall/0 64.44,18.57
'|script DoEmote("PET")
|tip Near Fuzzy.
|tip Right click or use the /pet emote.
Click Here to Continue |confirm |next |or
'|achieve 40625/12 |or
step
clicknpc Dander##221106 |goto Hallowfall/0 61.91,20.80
'|script DoEmote("PET")
|tip Right click or use the /pet emote.
Click Here to Continue |confirm |next |or
'|achieve 40625/13 |or
step
Kill enemies around this area
collect 3 Radiant Remnants##206350 |n
|tip Toss them into the small brazier.
click Lesser Keyflame##421006 |goto Hallowfall/0 63.30,29.40
|tip If it's already lit, you should find Nightclaw nearby.
Click Here to Continue |confirm |next |or
'|achieve 40625/7 |or
step
clicknpc Nightclaw##216549 |goto Hallowfall/0 42.14,53.71
'|script DoEmote("PET")
|tip You must light the Lesser Keyflame for this lynx to appear.
|tip Right click or use the /pet emote.
Click Here to Continue |confirm |next |or
'|achieve 40625/7 |or
step
click Light's Blooming Keyflame##415734 |goto Hallowfall/0 63.50,28.50
|tip To activate the keyflame, add up to 20 Radiant Remnants to start the timer.
|tip Once it's lit, you should find Puurlock and Shadowpouncer nearby.
|tip If you don't see them here after starting the timer, kill mobs within range of Light's Blooming Keyflame.
Click Here to Continue |confirm |next |or
'|achieve 40625/9 |or
step
clicknpc Puurlock##215606 |goto Hallowfall/0 63.79,29.32
'|script DoEmote("PET")
|tip Next to a wagon when the rare isn't at this location.
|tip Right click or use the /pet emote.
Click Here to Continue |confirm |next |or
'|achieve 40625/9 |or
step
clicknpc Shadowpouncer##215590 |goto Hallowfall/0 63.27,28.07
'|script DoEmote("PET")
|tip In front of a tower, next to a lady NPC, when the rare isn't at this location.
|tip Right click or use the /pet emote.
Click Here to Continue |confirm |next |or
'|achieve 40625/8 |or
step
clicknpc Miral Murder-Mittens##215041 |goto Hallowfall/0 61.20,30.51
'|script DoEmote("PET")
|tip Right click or use the /pet emote.
Click Here to Continue |confirm |next |or
'|achieve 40625/10 |or
step
clicknpc Magpie##220720 |goto Hallowfall/0 60.42,60.22
'|script DoEmote("PET")
|tip Right click or use the /pet emote.
Click Here to Continue |confirm |next |or
'|achieve 40625/1 |or
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Khaz Algar Safari",{
description="Catch every battle pet on Khaz Algar.",
achieveid={40194},
patch='110002',
startlevel=70,
keywords={"The War Within", "Exploration"},
},[[
step
Reach Level 70 |ding 70
|tip You must be level 70 and have The War Within expansion active.
step
clicknpc Magmashell Crawler##222713
This battle pet can be found in The Ringing Deeps and Dornogal.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Magmashell Crawler##4518 |goto Dornogal/0 50.63,42.25
Can also be found around:
[Dornogal/0 45.78,59.61]
[Dornogal/0 45.79,59.20]
[Dornogal/0 50.81,65.19]
[The Ringing Deeps/0 38.87,7.59]
[The Ringing Deeps/0 44.23,11.21]
[The Ringing Deeps/0 38.04,19.76]
[The Ringing Deeps/0 46.45,18.06]
step
clicknpc Sandstone Mosswool##222775
|tip This battle pet can be found in Dornogal and on Isle of Dorn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
|tip This pet can also be captured as a backup pet on the Isle of Dorn.
learnpet Sandstone Mosswool##4526 |goto Dornogal/0 53.11,23.94
Can also be found around:
[Dornogal/0 63.78,27.21]
[Dornogal/0 73.59,32.20]
[Dornogal/0 35.20,32.39]
[Dornogal/0 36.62,72.39]
[Isle of Dorn/0 42.61,73.18]
[Isle of Dorn/0 57.39,29.19]
[Isle of Dorn/0 61.59,27.59]
step
clicknpc Fallowspark Glowfly##222613
|tip This battle pet can be found, usually around light sources, in Dornogal, Isle of Dorn, Hallowfall, The Ringing Deeps, and Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Fallowspark Glowfly##4514 |goto Dornogal/0 54.60,18.00
Can also be found around:
[Isle of Dorn/0 59.80,30.60]
[Isle of Dorn/0 53.60,68.40]
[Isle of Dorn/0 57.80,61.20]
[Isle of Dorn/0 65.60,56.20]
[The Ringing Deeps/0 49.84,32.40]
[The Ringing Deeps/0 44.84,30.40]
[The Ringing Deeps/0 52.04,73.00]
[Hallowfall/0 70.80,45.40]
[Hallowfall/0 70.46,46.08]
[Azj-Kahet/0 54.00,51.80]
[Azj-Kahet/0 77.80,61.40]
step
clicknpc Meek Bloodlasher##222875
|tip You can find this battle pet in The Ringing Deeps, Isle of Dorn, and Hallowfall.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Meek Bloodlasher##4533 |goto Isle of Dorn/0 53.85,66.74
Can also be found around:
[Isle of Dorn/0 51.60,67.38]
[Isle of Dorn/0 72.80,39.00]
[Isle of Dorn/0 73.20,37.79]
[The Ringing Deeps/0 49.24,30.19]
[The Ringing Deeps/0 39.43,35.21]
[The Ringing Deeps/0 46.24,39.20]
[The Ringing Deeps/0 53.03,35.21]
[The Ringing Deeps/0 51.04,63.21]
[Hallowfall/0 62.60,45.20]
[Hallowfall/0 55.79,37.59]
step
clicknpc Ghostcap Menace##222877
|tip This battle pet can be found in Hallowfall, The Ringing Deeps, and Isle of Dorn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Ghostcap Menace##4535 |goto Isle of Dorn/0 53.85,66.74
Can also be found around:
[Isle of Dorn/0 51.60,70.38]
[Isle of Dorn/0 70.80,43.00]
[Isle of Dorn/0 66.20,48.79]
[The Ringing Deeps/0 47.44,30.59]
[The Ringing Deeps/0 52.43,34.01]
[The Ringing Deeps/0 40.04,35.40]
[The Ringing Deeps/0 46.43,43.59]
[The Ringing Deeps/0 52.44,63.41]
[Hallowfall/0 58.80,28.38]
[Hallowfall/0 58.79,36.59]
step
clicknpc Mossy Snail##222499
|tip This battle pet can be found in Isle of Dorn and Dornogal.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Mossy Snail##4485 |goto Dornogal/0 75.61,32.04
Can also be found around:
[Isle of Dorn/0 44.60,59.38]
[Isle of Dorn/0 33.56,63.00]
[Isle of Dorn/0 24.60,68.99]
[Isle of Dorn/0 40.20,74.58]
[Isle of Dorn/0 49.60,75.00]
[Isle of Dorn/0 63.38,67.79]
[Isle of Dorn/0 54.20,60.18]
[Isle of Dorn/0 68.80,54.80]
[Isle of Dorn/0 72.80,29.79]
step
clicknpc Subterranean Dartswog##222736
|tip This battle pet can be found in Hallowfall, The Ringing Deeps, Isle of Dorn, and Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Subterranean Dartswog##4521 |goto Isle of Dorn/0 57.60,44.58
Can also be found around:
[Isle of Dorn/0 53.36,67.00]
[Isle of Dorn/0 67.00,47.19]
[Isle of Dorn/0 63.00,31.19]
[The Ringing Deeps/0 50.47,34.22]
[The Ringing Deeps/0 53.47,34.80]
[The Ringing Deeps/0 67.64,35.76]
[The Ringing Deeps/0 49.05,58.42]
[Hallowfall/0 45.80,32.78]
[Hallowfall/0 49.79,64.01]
[Azj-Kahet/0 53.01,32.62]
[Azj-Kahet/0 59.22,47.38]
[Azj-Kahet/0 59.80,67.20]
step
clicknpc Troglofrog##222739
|tip This battle pet can be found in Hallowfall, The Ringing Deeps, Isle of Dorn, and Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Troglofrog##4522 |goto Isle of Dorn/0 53.77,66.59
Can also be found around:
[Isle of Dorn/0 61.61,60.18]
[Isle of Dorn/0 57.59,69.19]
[Isle of Dorn/0 66.19,32.39]
[The Ringing Deeps/0 40.85,31.42]
[The Ringing Deeps/0 43.87,46.60]
[The Ringing Deeps/0 65.84,40.00]
[The Ringing Deeps/0 56.25,70.02]
[Hallowfall/0 76.58,39.98]
[Hallowfall/0 56.59,31.41]
[Azj-Kahet/0 38.01,58.02]
[Azj-Kahet/0 41.22,52.00]
[Azj-Kahet/0 58.80,63.60]
step
clicknpc Fragrant Stonelamb##222774
|tip This battle pet can be found on the Isle of Dorn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Fragrant Stonelamb##4525 |goto Isle of Dorn/0 57.21,42.19
Can also be found around:
[Isle of Dorn/0 58.81,26.81]
[Isle of Dorn/0 69.79,31.19]
[Isle of Dorn/0 69.39,46.19]
[Isle of Dorn/0 53.41,53.79]
[Isle of Dorn/0 53.59,74.79]
[Isle of Dorn/0 38.21,73.19]
[Isle of Dorn/0 30.60,64.59]
step
clicknpc Shale Mosswool##222778
|tip This battle pet can be found on the Isle of Dorn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Shale Mosswool##4529 |goto Isle of Dorn/0 38.02,38.81
Can also be found around:
[Isle of Dorn/0 55.58,60.21]
[Isle of Dorn/0 60.79,59.59]
[Isle of Dorn/0 57.20,26.41]
[Isle of Dorn/0 61.41,27.00]
step
clicknpc Bedrock Stonecharger##223090
|tip This battle pet can be found on the Isle of Dorn and in Dornogal.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Bedrock Stonecharger##4541 |goto Dornogal/0 53.11,23.94
Can also be found around:
[Dornogal/0 59.18,55.61]
[Isle of Dorn/0 45.20,52.58]
[Isle of Dorn/0 50.39,72.39]
[Isle of Dorn/0 60.59,44.59]
[Isle of Dorn/0 34.47,81.61]
step
clicknpc Cobalt Ramolith##223094
|tip This battle pet can be found on the Isle of Dorn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Cobalt Ramolith##4538 |goto Isle of Dorn/0 45.60,60.80
Can also be found around:
[Isle of Dorn/0 53.49,20.12]
[Isle of Dorn/0 44.60,66.58]
[Isle of Dorn/0 32.59,64.00]
[Isle of Dorn/0 25.59,54.39]
[Isle of Dorn/0 66.17,44.61]
[Isle of Dorn/0 53.62,31.62]
[Isle of Dorn/0 44.60,24.18]
[Isle of Dorn/0 56.01,16.60]
step
clicknpc Granite Ramolith##223093
|tip This battle pet can be found in Isle of Dorn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Granite Ramolith##4539 |goto Isle of Dorn/0 39.41,43.22
Can also be found around:
[Isle of Dorn/0 37.28,44.20]
[Isle of Dorn/0 39.62,41.79]
[Isle of Dorn/0 46.00,57.61]
[Isle of Dorn/0 43.62,69.79]
[Isle of Dorn/0 24.22,51.59]
[Isle of Dorn/0 35.80,74.21]
[Isle of Dorn/0 45.02,77.21]
step
clicknpc Alabaster Stonecharger##223092
|tip This battle pet can be found on the Isle of Dorn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Alabaster Stonecharger##4540 |goto Isle of Dorn/0 46.99,29.54
Can also be found around:
[Isle of Dorn/0 45.58,25.60]
[Isle of Dorn/0 51.22,27.59]
[Isle of Dorn/0 58.00,18.61]
step
clicknpc Cinderhoney Emberstinger##223698
|tip This battle pet can be found on the Isle of Dorn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Cinderhoney Emberstinger##4577 |goto Isle of Dorn/0 68.37,41.63
Can also be found around:
[Isle of Dorn/0 71.58,36.02]
[Isle of Dorn/0 75.20,43.39]
[Isle of Dorn/0 75.22,47.81]
step
clicknpc Azure Flickerfly##222614
|tip This battle pet can be found, usually around light sources, in The Ringing Deeps and Hallowfall.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Azure Flickerfly##4515 |goto The Ringing Deeps/0 36.64,18.20
Can also be found around:
[The Ringing Deeps/0 39.04,24.00]
[The Ringing Deeps/0 38.44,28.60]
[Hallowfall/0 55.40,40.20]
[Hallowfall/0 55.80,43.40]
[Hallowfall/0 63.60,46.00]
step
clicknpc Common Ploughworm##222584
|tip This battle pet can be found in The Ringing Deeps and Hallowfall.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Common Ploughworm##4499 |goto The Ringing Deeps/0 38.24,16.20
Can also be found around:
[The Ringing Deeps/0 36.24,19.80]
[The Ringing Deeps/0 38.84,21.80]
[The Ringing Deeps/0 40.44,27.80]
[The Ringing Deeps/0 43.84,34.60]
[The Ringing Deeps/0 53.44,29.20]
[Hallowfall/0 47.60,42.00]
[Hallowfall/0 64.40,30.00]
step
clicknpc Ebon Ploughworm##222582
|tip This battle pet can be found in The Ringing Deeps and Hallowfall.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Ebon Ploughworm##4498 |goto The Ringing Deeps/0 38.46,22.23
Can also be found around:
[The Ringing Deeps/0 41.04,25.80]
[The Ringing Deeps/0 39.44,27.60]
[The Ringing Deeps/0 51.04,30.60]
[Hallowfall/0 40.80,54.20]
step
clicknpc Chitin Burrower##222071
|tip This battle pet can be found in Hallowfall, The Ringing Deeps, and Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Chitin Burrower##4457 |goto The Ringing Deeps/0 50.24,38.80
Can also be found around:
[The Ringing Deeps/0 73.84,60.20]
[The Ringing Deeps/0 72.64,64.40]
[Hallowfall/0 55.80,43.00]
[Hallowfall/0 69.80,52.60]
[Hallowfall/0 72.60,59.60]
[Hallowfall/0 78.40,42.60]
[Azj-Kahet/0 76.80,64.40]
[Azj-Kahet/0 78.00,60.20]
step
clicknpc Arachnoid Hatchling##222066
|tip This battle pet can be found in Hallowfall, The Ringing Deeps, and Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Arachnoid Hatchling##4456 |goto The Ringing Deeps/0 51.24,45.20
Can also be found around:
[The Ringing Deeps/0 58.44,44.60]
[The Ringing Deeps/0 68.04,38.00]
[Azj-Kahet/0 54.00,51.80]
[Azj-Kahet/0 77.80,61.40]
step
clicknpc Vibrant Glowfly##222615
|tip This battle pet can be found, usually around light sources, in The Ringing Deeps, Azj-Kahet, and Hallowfall.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Vibrant Glowfly##4516 |goto The Ringing Deeps/0 41.44,14.00
Can also be found around:
[The Ringing Deeps/0 36.04,19.80]
[The Ringing Deeps/0 46.84,20.00]
[The Ringing Deeps/0 61.64,30.80]
[The Ringing Deeps/0 43.84,34.60]
[The Ringing Deeps/0 58.44,47.60]
[Hallowfall/0 50.00,40.00]
[Hallowfall/0 41.40,55.00]
[Azj-Kahet/0 61.20,51.20]
[Azj-Kahet/0 75.00,78.00]
step
clicknpc Snuffling##223715
|tip This battle pet can be found in The Ringing Deeps.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Snuffling##4574 |goto The Ringing Deeps/0 62.85,47.39
Can also be found around:
[The Ringing Deeps/0 40.85,31.42]
[The Ringing Deeps/0 43.87,46.60]
[The Ringing Deeps/0 65.84,40.00]
[The Ringing Deeps/0 56.25,70.02]
step
clicknpc Greenlands Chicken##222194
|tip This battle pet can be found in Hallowfall.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Greenlands Chicken##4461 |goto Hallowfall/0 61.21,29.84
Can also be found around:
[Hallowfall/0 48.80,40.00]
[Hallowfall/0 47.80,63.60]
step
clicknpc Arathi Chicken##222195
|tip This battle pet can be found in Hallowfall.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Arathi Chicken##4460 |goto Hallowfall/0 63.15,28.12
Can also be found around:
[Hallowfall/0 66.00,28.00]
[Hallowfall/0 62.20,38.00]
[Hallowfall/0 50.00,37.00]
[Hallowfall/0 47.00,64.80]
step
clicknpc Winged Arachnoid##222608
|tip This battle pet can be found in Hallowfall and Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Winged Arachnoid##4510 |goto Hallowfall/0 65.86,39.39
Can also be found around:
[Hallowfall/0 68.80,32.22]
[Hallowfall/0 69.79,53.79]
[Hallowfall/0 72.20,62.98]
[Hallowfall/0 65.59,64.02]
[Azj-Kahet/0 69.00,74.60]
[Azj-Kahet/0 78.40,75.40]
[Azj-Kahet/0 78.20,80.60]
step
clicknpc Umbral Amalgam##223136
|tip This battle pet can be found in Hallowfall.
|tip It can also be a backline pet.
|tip Beware of it's self-destruct spell, as the pet may kill itself and avoid capture.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Umbral Amalgam##4544 |goto Hallowfall/0 46.19,31.82
Can also be found around:
[Hallowfall/0 76.58,39.98]
[Hallowfall/0 58.79,54.21]
[Hallowfall/0 61.78,44.18]
[Hallowfall/0 63.19,49.01]
[Hallowfall/0 72.00,45.81]
[Hallowfall/0 58.80,49.21]
[Hallowfall/0 48.38,59.00]
[Hallowfall/0 54.19,52.01]
step
clicknpc Aubergine Scootlefish##222325
|tip This battle pet can be found in Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Aubergine Scootlefish##4471 |goto Azj-Kahet/0 36.56,55.02
Can also be found around:
[Azj-Kahet/0 59.60,47.40]
[Azj-Kahet/0 77.20,42.60]
[Azj-Kahet/0 54.80,67.20]
[Azj-Kahet/0 70.60,74.80]
step
clicknpc Verdant Scootlefish##222344
|tip This battle pet can be found in Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Verdant Scootlefish##4477 |goto Azj-Kahet/1 35.20,53.00
Can also be found around:
[Azj-Kahet/0 40.00,61.20]
[Azj-Kahet/0 54.20,41.00]
[Azj-Kahet/0 61.60,47.60]
[Azj-Kahet/0 71.20,45.80]
[Azj-Kahet/0 73.60,38.80]
step
clicknpc Vile Bloodtick##222421
|tip This battle pet can be found in Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Vile Bloodtick##4483 |goto Azj-Kahet/0 47.19,56.63
Can also be found around:
[Azj-Kahet/0 47.41,51.20]
[Azj-Kahet/0 53.60,68.20]
[Azj-Kahet/0 57.20,63.60]
step
clicknpc Voidling Ooze##222354
|tip This battle pet can be found in Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Voidling Ooze##4481 |goto Azj-Kahet/0 60.80,74.80
Can also be found around:
[Azj-Kahet/0 61.00,81.60]
[Azj-Kahet/0 63.60,89.00]
[Azj-Kahet/0 67.00,84.60]
step
clicknpc Shadowy Oozeling##222351
|tip This battle pet can be found in Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Shadowy Oozeling##4480 |goto Azj-Kahet/1 63.85,87.34
Can also be found around:
[Azj-Kahet/0 61.00,80.60]
[Azj-Kahet/0 63.60,87.60]
[Azj-Kahet/0 66.60,77.60]
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Lost and Found",{
description="Return every lost Hallowfall memento found with Maera Ashyld.",
achieveid={40618},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
talk Maera Ashyld##220718
accept Runway Scare-a-way##80673 |goto Hallowfall/0 60.49,60.21
accept Torching Lights##80677 |goto Hallowfall/0 60.49,60.21
stickystart "Kill_Flickering_Glowmoths"
step
use the Lamplighter Firearm##219943
|tip Use it on {o}Moth Eggs{}.
|tip They look like {o}clusters of brown eggs{}.
|tip They are {o}up on the huge tall plants{}.
Torch #15# Moth Egg Bunches |q 80677/1 |goto Hallowfall/0 61.14,62.53
step
label "Kill_Flickering_Glowmoths"
kill 25 Flickering Glowmoth##220691 |q 80673/1 |goto Hallowfall/0 61.14,62.53
|tip They are flying up {o}above the huge tall plants{}.
|tip {o}Fly through them (skyriding){} to kill them.
step
talk Maera Ashyld##220718
turnin Runway Scare-a-way##80673 |goto Hallowfall/0 60.49,60.21
turnin Torching Lights##80677 |goto Hallowfall/0 60.49,60.21
accept Time Lost##80678 |goto Hallowfall/0 60.49,60.21
step
Kill enemies around this area
click Sludge Pile+
|tip They look like {o}small mounds of junk{}.
Collect #6# Mementos |q 80678/1 |goto Hallowfall/0 60.39,61.79
'|kill Sludgeborn Shambler##220734, Mirehat Fungalmancer##221362, Mirehat Sporedancer##221363, Cultivated Mireshroom##221366
step
talk Maera Ashyld##220718
turnin Time Lost##80678 |goto Hallowfall/0 60.49,60.21
step
talk Phillip Taversil##218486
accept Stuffed Lynx Toy##80679 |goto Hallowfall/0 43.28,55.44 |instant
step
click Grave Offering Location##439890
accept Tarnished Compass##80680 |goto Hallowfall/0 43.48,51.73 |instant
step
talk Keyrra Flamestonge##215527
accept Broken Bracelet##80681 |goto Hallowfall/0 65.45,32.23 |instant
step
Wait for the Next Weekly Reset |complete not completedq(82749) or completedq(82810)
|tip To continue, you must wait for the next Tuesday reset.
step
talk Maera Ashyld##220718
|tip This quest is only available after the weekly reset following the completion of {o}Time Lost{} quest.
|tip It should be available now. |only if not completedq(82749)
accept Time Found##82810 |goto Hallowfall/0 60.49,60.21
step
Kill enemies around this area
click Sludge Pile+
|tip They look like {o}small mounds of junk{}.
Collect #6# Mementos |q 82810/1 |goto Hallowfall/0 60.39,61.79
'|kill Sludgeborn Shambler##220734, Mirehat Fungalmancer##221362, Mirehat Sporedancer##221363, Cultivated Mireshroom##221366
step
talk Maera Ashyld##220718
turnin Time Found##82810 |goto Hallowfall/0 60.49,60.21
step
talk Auralia Steelstrike##213145
accept Dented Spearhead##82846 |goto Hallowfall/0 42.35,55.00 |instant
step
talk Kiera Horth##217813
|tip Inside the building.
accept Filigreed Cleric##82849 |goto Hallowfall/0 43.97,49.71 |instant
step
talk Haverd Sunhart##226051
|tip Up on the platform.
accept Ivory Tinderbox##82845 |goto Hallowfall/0 41.64,34.76 |instant
step
Wait for the Next Weekly Reset |complete not completedq(82750) or completedq(82813)
|tip To continue, you must wait for the next Tuesday reset.
step
talk Maera Ashyld##220718
|tip This quest is only available after the weekly reset following the completion of {o}Time Found{} quest.
accept Time Borrowed##82813 |goto Hallowfall/0 60.49,60.21
step
Kill enemies around this area
click Sludge Pile+
|tip They look like {o}small mounds of junk{}.
Collect #6# Mementos |q 82813/1 |goto Hallowfall/0 60.39,61.79
'|kill Sludgeborn Shambler##220734, Mirehat Fungalmancer##221362, Mirehat Sporedancer##221363, Cultivated Mireshroom##221366
step
talk Maera Ashyld##220718
turnin Time Borrowed##82813 |goto Hallowfall/0 60.49,60.21
step
talk Barahl Lynflayme##217609
|tip Inside the building.
accept Wooden Figure##82832 |goto Hallowfall/0 69.25,43.83 |instant
step
talk Lorel Ironglen##222813
accept Calcified Journal##82835 |goto Hallowfall/0 48.42,38.89 |instant
step
talk Amy Lychenstone##220859
|tip She walks all over this area of town.
|tip Check along the roads and inside the buildings at the two locations.
accept Sturdy Locket##82815 |goto Hallowfall/0 43.19,49.79 |instant
Also check around [Hallowfall/0 42.07,49.39]
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\The War Within Achievements\\Secrets of the K'areshi",{
description="This guide will help you find all the secrets of the K'areshi for the achievement.",
achieveid={40618},
patch='110200',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Unlock Phase Diving |complete completedq(89561)
|tip Phase diving is required to complete this achievement.
|tip Use the K'aresh leveling guides to accomplish this.
|loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\K'aresh (Story Only)"
|loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\K'aresh (Full Zone)"
step
talk Hashim##241588
|tip He shares the Reshii Wraps upgrade interface.
|tip Earn 12 Ethereal Strands from Heavy Trunks rewarded from K'aresh Delves.
Empower your _Reshii Wraps_ Cloak to Rank 5: What Lies Beyond (720 item level) |complete reshiipoints()>=12 |goto K'aresh 50.34,36.33
step
click Phase Conduit
Gain the "Phase Diving" Buff |complete hasbuff("spell:1214374") or achieved(60890,2) |goto K'aresh/0 45.21,23.91
step
click From Vengeance to Void##558110
|tip It's a tiny scroll propped against the structure.
|tip If you lose your phase diving buff, go back one step.
achieve 60890/3 |goto K'aresh/0 42.29,20.93
step
Enter the building |goto K'aresh/0 49.04,26.71 < 10 |walk
click Multiversal Energy Dynamics and the Murmuration Paradox##558108
|tip It is a book on the console facing east, in the center of the structure.
|tip Beware of the elite mob that patrols.
|tip If you lose your phase diving buff, go back two steps.
achieve 60890/2 |goto K'aresh/0 49.64,26.76
step
|script CancelSpellByName("Phase Diving")
|tip Remove the buff to return to normal space.
step
click Phase Conduit
Gain the "Phase Diving" Buff |complete hasbuff("spell:1214374") or achieved(60890,4) |goto K'aresh/0 75.87,33.11
step
wclick The Facets of K'aresh
|tip It's a large scroll on a table with some bones and an open book.
|tip If you lose your phase diving buff, go back one step.
achieve 60890/4 |goto K'aresh/0 72.13,29.40
step
|script CancelSpellByName("Phase Diving")
|tip Remove the buff to return to normal space.
step
click Geologist Field Journal##558372
|tip Under a canopy, next to a tray of bottles, on the cushioned platform.
|tip You cannot see this while phase diving.
achieve 60890/10 |goto K'aresh/0 48.92,57.15
step
Enter the building |goto Tazavesh/0 39.17,18.84 < 5 |walk
click Dog-Eared Book##558090
|tip Its an open book, inside the building, on the bed.
|tip If it isn't there, wait a few minutes for it to spawn.
achieve 60890/7 |goto Tazavesh/0 37.29,25.69
step
click Ba'key's Aromatic Broker Cookies Recipes##558109
|tip It is a scroll standing on it's end, inside the building, on the floor, behind some food-laden crates.
achieve 60890/6 |goto Tazavesh/0 46.34,18.57
step
click Coins: An Oath We Exchange##558115
|tip It is a small scroll, on the service counter.
achieve 60890/9 |goto Tazavesh/0 41.68,39.82
step
Enter the building |goto Tazavesh/0 47.97,57.05 < 5 |walk
click Phase Conduit
Gain the "Phase Diving" Buff |complete hasbuff("spell:1214374") or achieved(60890,1) |goto Tazavesh/0 46.78,56.84
step
click Checklist of Minor Pleasures##558375
|tip Beside a group of chairs.
|tip Beware of elite mobs that patrol.
|tip If you lose your phase diving buff, go back one step.
achieve 60890/5 |goto Tazavesh/0 38.23,45.60
step
click I Have Become Void!##558117
|tip It is posted with a knife on a tree.
|tip If you lose your phase diving buff, go back two steps.
achieve 60890/1 |goto Tazavesh/0 36.79,58.07
step
|script CancelSpellByName("Phase Diving")
|tip Remove the buff to return to normal space.
step
click Mysterious Notebook##558105
|tip It is a green book on a small table with a steward owl statue.
|tip You cannot see this while phase diving.
achieve 60890/8 |goto Tazavesh/0 58.45,91.51
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within\\Exploration\\Treasures of K'aresh",{
description="This guide will show you how to get the Treasures of K'aresh achievement.",
achieveid={42741},
patch='110200',
startlevel=70,
author="QuestCore",
keywords={"War","Within","TWW"},
},[[
step
Complete Story Campaign and Side Quests in K'aresh -AND- Unlock Phase Diving
|tip Use the _K'aresh (Full Zone)_ Leveling Guides to accomplish this.
Complete the Story Quest Chain and Acquire the Reshii Wraps Cloak |complete completedq(85037)
loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\K'aresh (Full Zone)"
step
talk Hashim##241588
|tip Earn Ethereal Strands from inside Heavy Trunks rewarded from K'aresh Delves.
|tip You need 12 total Ethereal Strands to upgrade to Rank 5.
|tip Speak to Hashim at Overlook Zo'Shuul in K'aresh to view your Reshii Wraps's current level, and to upgrade.
|tip He is up the ramp, and has a {y}Ethereal Strands Owned{} bar above his head.
Empower your _Reshii Wraps_ cloak to Rank 5: What Lies Beyond (720 item level) |complete reshiipoints()>=12 |goto K'aresh/0 50.34,36.33
step
Reach Renown Level 11 with The K'aresh Trust |complete factionrenown(2658) >= 11
|tip Use The K'aresh Trust Reputation Guide to accomplish this.
loadguide "Reputation Guides\\The War Within Reputations\\The K'aresh Trust"
step
Recommended to Complete this Achievement: Collect 2 to 4 Goblin Glider Kits -AND/OR- Collect 2 to 4 Untethered Xy'bucha
|tip Need for these items may change depending on your race/class.
|tip Acquire {w}Goblin Glider Kits{} from an Engineer with at least 25 Draenor Engineering skill or from the auction house.
|tip Loot {g}Untethered Zy'bucha{} while phase diving in random spots in K'aresh.
|confirm
step
Use the Phase Conduit
Gain the "Phase Diving" Buff |complete hasbuff("spell:1214374") |goto K'aresh/0 50.41,36.40
step
click Phaseblade of the Void Marches##548010
achieve 42741/26 |goto K'aresh/0 50.81,35.35
step
Use the Phase Conduit
Gain the "Phase Diving" Buff |complete hasbuff("spell:1214374") |goto K'aresh/0 45.21,23.91
step
click Shadowguard Crusher##529664
|tip Inside the building.
achieve 42741/21 |goto K'aresh/0 49.20,18.06
step
|script CancelSpellByName("Phase Diving")
|tip Remove the buff to return to normal space.
step
click the Sand-Worn Coffer##499097
|tip On top of the rocky spire.
achieve 42741/14 |q 85840 |goto K'aresh/0 54.46,24.45
step
Use the Phase Conduit
Gain the "Phase Diving" Buff |complete hasbuff("spell:1214374") |goto K'aresh/0 56.20,21.52
step
Enter Voidscar Cavern |goto K'aresh/0 57.00,24.04 < 10 |walk
|tip Go to the back of the cave to find the small cavern.
click Warglaive of the Audacious Hunter##547995
achieve 42741/24 |goto Voidscar Cavern/0 62.77,51.47
step
click the Crudely Stitched Sack##502603
|tip On a floating rock.
achieve 42741/11 |q 86323 |goto K'aresh/0 58.68,34.25
step
click Skeletal Tail Bones##502547
|tip This is lying on the sand at the foot of the giant obelisk.
collect Ixthal the Observling##243158 |n
achieve 42741/10 |goto K'aresh/0 77.79,27.87
step
clicknpc Flickering Lantern##499334
|tip It is a tiny lantern on the ground.
talk Ihya##233881
Select _"Where did you last see them?"_ |gossip 125467
Gain the Flickering Lantern buff |complete hasbuff(471549) |goto K'aresh/0 76.11,45.26 |or
'|complete achieved(42741,1) |or
step
talk Naji##234112
Select _"Your brother is looking for you."_ |gossip 125469
Send Naji to Meet Ihya |q 86066 |future |goto K'aresh/0 68.27,45.26 |or
'|complete achieved(42741,1) |or
step
talk M'alim##234113
Select _"Your brother is looking for you."_ |gossip 125470
Send M'alim to Meet Ihya |q 86067 |future |goto K'aresh/0 69.85,60.55 |or
'|complete achieved(42741,1) |or
step
talk Sahra##234075
Select _"Your brother is looking for you."_ |gossip 125468
Send Sahra to Meet Ihya |q 86065 |future |goto K'aresh/0 75.44,39.84 |or
'|complete achieved(42741,1) |or
step
talk Ihya##233881
Select _"<Return Ihya's lantern.>"_ |gossip 125544
Lose the Flickering Lantern buff |q 85958 |future |goto K'aresh/0 76.11,45.26 |or
'|complete achieved(42741,1) |or
step
clicknpc Flickering Lantern##527489
|tip It is a tiny lantern on the ground.
collect The Brothers' Final Gift##248199 |n
achieve 42741/1 |goto K'aresh/0 76.11,45.26
step
click Battered Book##503363
|tip Next to the structure.
collect 1 Battered Book##233794 |goto K'aresh/0 66.55,44.80 |or
'|complete achieved(42741,2) |or
step
click Submerged Bottle##503370
|tip In the pool.
collect 1 Submerged Bottle##233799 |goto K'aresh/0 76.23,31.24 |or
'|complete achieved(42741,2) |or
step
click Ancient Coffer##503375
|tip It's a little chest on the circular ledge of the broken building.
achieve 42741/2 |goto K'aresh/0 60.90,38.35
step
Enter the cave |goto K'aresh/0 60.73,42.05 < 10 walk
click Wastelander Stash##502437
|tip Inside the cave.
achieve 42741/6 |q 86301 |goto K'aresh/0 60.53,42.12
step
click Ixthar's Favorite Crystal##504172
achieve 42741/5 |goto K'aresh/0 64.10,43.98
step
Use the Phase Conduit
Gain the "Phase Diving" Buff |complete hasbuff("spell:1214374") |goto K'aresh/0 65.44,47.98
step
click Korogath's Talon##529669
|tip It is a sword stuck between boulders here.
achieve 42741/23 |goto K'aresh/0 64.43,42.68
step
Use the Phase Conduit
Gain the "Phase Diving" Buff |complete hasbuff("spell:1214374") |goto K'aresh/0 51.38,67.14
step
click Tulwar of the Golden Guard##529643 |goto K'aresh/0 51.04,65.09
|tip It looks like a curved sword stuck in a ring hanging off the back of the cart.
achieve 42741/19
step
click Shattered Crystals##502485
|tip On a rock on the mountain.
achieve 42741/9 |goto K'aresh/0 70.20,47.73
step
Enter the cave |goto K'aresh/0 68.82,47.91 < 10 |walk
click Rashaal's Vase##502471
|tip Inside the cave.
achieve 42741/8 |goto K'aresh/0 70.22,47.74
step
click Forlorn Wind Chimes##499093 |goto K'aresh/0 69.73,52.30
|tip They are hanging from the small branch.
achieve 42741/3
step
Use the Phase Conduit
Gain the "Phase Diving" Buff |complete hasbuff("spell:1214374") |goto K'aresh/0 77.17,48.94
step
click Efrat's Forgotten Bulwark##529537 |goto K'aresh/0 77.99,48.95
|tip Under the bridge.
achieve 42741/18
step
Use the Phase Conduit
Gain the "Phase Diving" Buff |complete hasbuff("spell:1214374") |goto K'aresh/0 77.13,49.05
step
click Sufaadi Skiff Lantern##529591
|tip Hanging on the stern of the skiff.
|tip Jump to the deck by using a race or class cooldown (such as Wild Charge or Slowfall), a potion (such as Untethered Xy'bucha), or use a Goblin Glider and jump from a nearby cliff.
achieve 42741/22 |goto K'aresh/0 80.70,52.68
step
Prepare a Goblin Glider Kit -or- a Slowfall Skill/Item
confirm
step
Use the Phase Conduit
Gain the "Phase Diving" Buff |complete hasbuff("spell:1214374") |goto K'aresh/0 77.17,48.94
step
Follow the path
map K'aresh/0
path follow smart; loop off; dist 30
path	77.14,49.01	75.95,53.70	76.49,54.59	76.79,56.50	77.15,58.33	77.79,59.06
Reach the jumping-off point |goto K'aresh/0 77.79,59.06 < 10 |c |noway
step
click Petrified Branch of Janaa##529539
|tip Mount up , then run and jump off the very tip of the lower rock outcrop.
|tip Immediately use a Goblin Glider, racial skill or spell, or something similar, to float or propel you to the small island.
achieve 42741/20 |goto K'aresh/0 78.34,61.54
step
|script CancelSpellByName("Phase Diving")
|tip Remove the buff to return to normal space.
step
Use the Phase Conduit
Gain the "Phase Diving" Buff |complete hasbuff("spell:1214374") |goto K'aresh/0 51.23,48.61
step
click Light-Soaked Cleaver##529525
achieve 42741/16 |goto K'aresh/0 52.50,46.80
step
|script CancelSpellByName("Phase Diving")
|tip Remove the buff to return to normal space.
step
click the Abandoned Lockbox##499082
|tip This is one of five possible locations.
achieve 42741/12 |goto K'aresh/0 53.99,59.22
You can also find it around:
[K'aresh/0 53.95,54.95]
[K'aresh/0 60.09,60.86]
[K'aresh/0 59.75,53.71]
step
click the Lightly Dented Luggage##499086
achieve 42741/13 |q 91352 |goto K'aresh/0 53.70,64.06
You can also find it around:
[K'aresh/0 54.90,62.50]
[K'aresh/0 55.70,64.20]
step
Use the Phase Conduit
Gain the "Phase Diving" Buff |complete hasbuff("spell:1214374") |goto K'aresh/0 51.51,67.09
step
click the Ethereal Voidforged Container##527414
|tip On top of the pillar attached to the wall.
|tip Carefully jump up the tiny pink platforms, on to the roof of the canopy, then up the rest of the tiny platforms to the wall.
|tip You may need to use your mount, or just jump, or you can use a racial skill or spell to help you reach the top.
|tip You might try flying to the pillar in regular mode, then using an {g}Untethered Zy'bucha{} to enter phased space.
|tip If you can't see the tiny pink platforms, or the item, you still haven't gotten to Renown 11 with the Kareshi Trust.
achieve 42741/15 |goto K'aresh/0 52.10,68.30
step
|script CancelSpellByName("Phase Diving")
|tip Remove the buff to return to normal space.
step
click Tumbled Package##502452
|tip On the floating island.
achieve 42741/7 |q 86304 |goto K'aresh/0 65.34,63.62
step
click Mail Overflow##503837
|tip This is a cart outside the building to the right of the Mailroom Door.
|tip If the object isn't interactive, you need to complete the quest, {y}What Is Left of Home{}.
Gain the {g}Mail Overflow{} buff |complete hasbuff(1213857) |goto Tazavesh/0 47.77,62.66 |or
'|complete achieved(42741,4) |or
step
click Mailroom Distribution##503823
|tip Stand in the swirling circles in front of delivery portals and click the extra action button.
|tip Inside the building.
|tip Keep doing this until a chest appears to the right of the door.
achieve 42741/4 |q 86467 |goto Tazavesh/0 48.16,64.04
step
Use the Phase Conduit
Gain the "Phase Diving" Buff |complete hasbuff("spell:1214374") |goto Tazavesh/0 46.94,57.09
step
Enter the building |goto Tazavesh/0 47.94,63.19
click P.O.S.T. Master's Prototype Parcel and Postage Presser##548001
achieve 42741/25 |goto Tazavesh/0 47.39,69.65
|tip Inside the Mail Room.
step
Use the Phase Conduit
Gain the "Phase Diving" Buff |complete hasbuff("spell:1214374") |goto Tazavesh/0 46.94,57.09
|tip Inside the building on Tazavesh.
step
Go to the stairs on The Gilded Landing |goto Tazavesh/0 38.67,17.29 < 10 |c |or
|tip It's the landing with the Tazavesh, The Veiled Market dungeon entrance.
'|complete achieved(42741,17) |or
step
Jump down very carefully on to the ledge here |goto Tazavesh/0 37.96,17.71 < 3 |c |or
'|complete achieved(42741,17) |or
step
Follow the Ledge Carefully
Jump down on to the ground around here |goto Tazavesh/0 34.89,30.96 < 7 |c |or
'|complete achieved(42741,17) |or
step
click Spear of Fallen Memories##529533
|tip It is embedded into a stone pillar.
achieve 42741/17 |goto Tazavesh/0 23.83,46.81
step
Use the Phase Conduit
Gain the "Phase Diving" Buff |complete hasbuff("spell:1214374") |goto Tazavesh/0 46.94,57.09
|tip Inside the building on Tazavesh.
step
Go to the End of Xy Imports Receiving landing |goto Tazavesh/0 64.78,25.69 < 10 |c |or
|tip You can see the small island when you look down from the landing.
'|complete achieved(42741,27) |or
step
click Bladed Rifle of Unfettered Momentum##548597
|tip Use a Goblin Glider, slowfall device, or spell to jump carefully down to the small island below.
|tip You might let yourself fall a bit first, because it's a long way.
achieve 42741/27 |goto K'aresh/0 69.97,70.89
]])
QuestCore:RegisterGuide("Achievement Guides\\Feats of Strength\\Events\\Two Minutes to Midnight",{
patch='120000',
author="QuestCore",
description="This guide will guide you through the Two Minutes to Midnight achievement available during the Twilight Ascension Event.",
achieveid={42300},
startlevel=30,
keywords={"War","Within","TWW","Midnight"},
},[[
step
Defeat all Ritual Leaders in the Twilight Highlands
|tip Defeat all the ritual rare bosses in Twilight Highlands during the Twilight Ascension Event.
|tip These spawn every 5 minutes on a predictable rotation.
|tip Click the _Next step_ arrow to advance to the rare that is up.
|tip The following steps are in spawn order, and should spawn approximately every 5 minutes.
confirm
step
label "BERG_THE_SPELLFIST"
kill Berg the Spellfist##237853
achieve 42300/1 |goto Twilight Highlands/0 57.54,75.38
step
kill Corla Herald of Twilight##237997
achieve 42300/4 |goto Twilight Highlands/0 70.98,30.59
step
kill Void Zealot Devinda##246272
achieve 42300/7 |goto Twilight Highlands/0 46.74,25.19
step
kill Asira Dawnslayer##246343
achieve 42300/10 |goto Twilight Highlands/0 45.20,48.79
step
kill Archbishop Benedictus##246462
achieve 42300/13 |goto Twilight Highlands/0 42.71,17.10
step
kill Nedrand the Eyegorger##246577
achieve 42300/16 |goto Twilight Highlands/0 65.19,52.21
step
kill Exectioner Lynthelma##246840
achieve 42300/2 |goto Twilight Highlands/0 57.54,75.38
step
kill Gustavan Herald of the End##246565
achieve 42300/5 |goto Twilight Highlands/0 70.98,30.59
step
kill Voidclaw Hexathor##246578
achieve 42300/8 |goto Twilight Highlands/0 46.70,25.19
step
kill Mirrorvise##246566
achieve 42300/11 |goto Twilight Highlands/0 45.20,48.79
step
kill Saligrum the Observer##246558
achieve 42300/14 |goto Twilight Highlands/0 41.78,16.49
step
kill Redeye the Skullchewer##246572
achieve 42300/17 |goto Twilight Highlands/0 65.21,52.19
step
kill T'aavihan the Unbound##246844
achieve 42300/3 |goto Twilight Highlands/0 57.54,75.38
step
kill Ray of Putrescence##246460
achieve 42300/6 |goto Twilight Highlands/0 70.98,30.59
step
kill Ix the Bloodfallen##246471
achieve 42300/9 |goto Twilight Highlands/0 46.69,25.22
step
kill Commander Ix'vaarha##246478
achieve 42300/12 |goto Twilight Highlands/0 45.20,48.79
step
kill Sharfadi Bulwark of the Night##246559
achieve 42300/15 |goto Twilight Highlands/0 41.78,16.49
step
kill Ez'Haadosh the Liminality##246549
achieve 42300/18 |goto Twilight Highlands/0 65.21,52.19
step
kill Voice of the Eclipse##253378
|tip This rare can spawn randomly in any of the following locations.
|tip You only need to kill this once for the achievement.
achieve 42300/19 |goto Twilight Highlands/0 40.11,14.19
Also spawns:
[Twilight Highlands/0 67.01,53.41]
[Twilight Highlands/0 69.11,29.49]
[Twilight Highlands/0 47.21,45.60]
[Twilight Highlands/0 56.52,73.19]
step
End Guide |only if achieved(42300) |next "ACHIEVED_42300"
Back to Start |only if not achieved(42300) |next "BERG_THE_SPELLFIST"
step
label "ACHIEVED_42300"
Congratulations!
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\TWW Raids\\Glory of the Nerub-ar Raider",{
description="Return every lost Hallowfall memento found with Maera Ashyld.",
achieveid={40618},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
_Defeat Ulgrax while keeping the Spider Silk Grub alive in Nerub-ar Palace at Normal difficulty or higher._
|tip You can move the Spider Silk Grub by walking up to him.
|tip The Spider Silk Grub can not be healed, and despawns if it is hit by any damage.
|tip Position your raid team so the Spider Silk Grub doesn't get hit by Ulgrax's attacks or charges.
|tip Ads during the intermission phase are the most likely to hit him, so zerg Ulgrax down in the first phase to skip.
|tip The achievement is earned once Ulgrax is defeated and the Spider Silk Grub is still alive.
achieve 40232/1
step
_Defeat The Bloodbound Horror after all players are Slimed! and then defeat a Volatile Ooze in Nerub-ar Palace on Normal difficulty or higher._
|tip After being hit by the frontal cone attack, Gruesome Disgorge, each player must step on a slime in the shadow realm to gain the Slimed! debuff.
|tip Players, be sure to defeat the ads before running for slimes to avoid unnecessary raid damage.
|tip Once all players are Slimed! and phased out, stack the raid to spawn, and defeat, the Volatile Ooze.
|tip If a player dies, the Volatile Ooze will not spawn, and you must reset and try again.
|tip The achievement is earned once The Bloodbound Horror is defeated after following the steps.
achieve 40232/2
step
_Defeat Sikran after all players are affected by Riposte in Nerub-ar Palace on Normal difficulty or higher._
|tip Four players click one of the weapon racks that are outside the boss area.
|tip When Sikran is at around 20% health, these players should use the extra action button on Sikran, which will drop the weapon for another player to pick up.
|tip The weapons might be difficult to see on the floor, so move the boss around to reveal them to players that need the debuff.
|tip Once all players have used their extra action button on Sikran, and have the Riposte debuff, then kill Sikran.
|tip If a player dies after getting the Riposte debuff, they can still get the achievement once Sikran is dead.
|tip The achievement is earned once Sikran is defeated after all players have the Riposte debuff.
achieve 40232/3
step
_Defeat Rasha'nan after all players ride a single wave per cast of Rolling Acid in Nerub-ar Palace on Normal difficulty or higher._
|tip The raid team should remain in the middle of the platform, as in the regular fight.
|tip Players that get the wave, position themselves either to the right or the left, both on the same side of the raid team.
|tip These two players should ride the wave they spawn, each going in the opposite direction without overlapping.
|tip The player placing the wave on the outside edge rides his wave alone, while the player placing the wave nearest the raid team rides the wave moving the opposite way, along with the rest of the raid team.
|tip All players need to ride a single green wave each time it is cast or the achievement will fail, and you must reset and try again.
|tip If any player gets hit by both waves, you must reset and try again.
|tip The achievement is earned once Rasha'nan is defeated, and every raid member has ridden a single wave each time Rolling Acid was cast.
achieve 40232/4
step
_Defeat Broodtwister Ovi'nax after everyone proves their /love to a Disheartened Worm in Nerub-ar Palace on Normal difficulty or higher._
|tip In the small chamber before the the boss room, The Narthex, one player needs to pick up the Mysterious Glowing Egg.
|tip The egg carrier will have a reduced movement speed, and should stack on an agreed upon set of eggs during the battle.
|tip Players who get the Experimental Dosage debuff (swirling blue circles) should overlap on the egg carrier to crack the egg, and also spawn the ads.
|tip The egg being carried will break, and a Disheartened Worm will spawn.
|tip All players needing the achievement should /love the Disheartened Worm to get the Affectionate debuff.
|tip The Disheartened Worm can be damaged, so do not defeat it before everyone has gotten the debuff.
|tip The achievement is earned once players have defeated Broodtwister Ovi'nax after using /love on the Disheartened Worm.
achieve 40232/5
step
_Defeat Nexus-Princess Ky'veza while she has an active Kill Streak in Nerub-ar Palace on Normal difficulty or higher._
|tip The player who pulls Ky'vesa by clicking the burning diary will be one-shotted, giving her Kill Streak for approximately one minute.
|tip To maintain Kill Streak, designate a player to die before Kill Streak expires.
|tip Players designated to die can allow themselves either to be pulled into a Nether Rift, or to get hit by Regicide or Eclipse during the intermission phase.
|tip Be ready to have a back up player die if the first player death does not trigger Kill Streak.
|tip The duration of Kill Streak may actually vary with raid size.
|tip The achievement is earned once Ky'vesa is defeated with Kill Streak active.
achieve 40232/6
step
_Defeat the Silken Court after Anub'arash and Takazj have gained the Bond of Friendship in Nerub-ar Palace on Normal difficulty or higher._
|tip One player must collect the Anub'arash Plushy, located on the left side, on the wall ledge, at the entrance to the to the corridor leading to Ky'vesa's room.
|tip A different player must collect the Box of Candy on the bannister at the bottom of the stairwell leading out of Ky'vesa's room.
|tip The players that loot these will have extra-action buttons that allow them to throw the items to the bosses BEFORE the pull: the plushy should go to Anub'arash, and the candy to Takazj.
|tip Together, the bosses will then receive the Bond of Friendship buff, which allows them to heal each when they are close together, so they must be tanked away from each other whenever possible.
|tip The achievement is earned once Anub'arash and Takazj are defeated with the Bond of Friendship active.
achieve 40232/7
step
_Defeat Queen Ansurek after all players use Abyssal Conduits to travel underneath her during Frothing Gluttony in Nerub-ar Palace on Normal difficulty or higher._
|tip In the third phase, Queen Ansurek will cast Abyssal Conduit on two players which will eventually drop portals where they are standing.
|tip Players with the portals need to drop them on either side of the hole in the platform from each other so that, when used, players will cross over the hole in the middle of the platform under the boss, thus avoiding boss mechanic, Frothing Gluttony, and at the same time cross underneath the boss.
|tip When Frothing Gluttony is cast, all players need to cross over when the circle is just about to reach them, exiting the circle safely, and the boss will gain stacks of the Missed 'Em by That Much debuff equal to the number of players in the raid.
|tip Players that were dead before this phase will also give the boss the debuff.
|tip The achievement is earned once Queen Ansurek is defeated with stacks of the Missed 'Em by That Much debuff equal to the number of players in your raid team.
achieve 40232/8
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Quests\\Loremaster of Khaz Algar",{
description="Complete every intitial zone questline in The War Within expansion.",
achieveid={20596},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Earn the "Loremaster of Khaz Algar" Achievement |achieve 20596 |only if achieved(20596)
The Isle of Dorn |achieve 20596/1 |only if not achieved(20596,1)
The Ringing Deeps |achieve 20596/2 |only if not achieved(20596,2)
Hallowfall |achieve 20596/3 |only if not achieved(20596,3)
Azj-Kahet |achieve 20596/4 |only if not achieved(20596,4)
Sojourner of Isle of Dorn |achieve 20596/5 |only if not achieved(20596,5)
Sojourner of The Ringing Deeps |achieve 20596/6 |only if not achieved(20596,6)
Sojourner of Hallowfall |achieve 20596/7 |only if not achieved(20596,7)
Sojourner of Azj-kahet|achieve 20596/8 |only if not achieved(20596,8)
|tip Refer to the respective Story Only guides before completed the Full Zone guides. |only if not achieved(20596)
Click Here to Load the "Intro & Isle of Dorn (Full Zone)" Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
Click Here to Load the "The Ringing Deeps (Full Zone)" Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\The Ringing Deeps (Full Zone)"
Click Here to Load the "Hallowfall (Full Zone)" Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Hallowfall (Full Zone)"
Click Here to Load the "Azj-Kahet (Full Zone)" Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Azj-Kahet (Full Zone)"
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Quests\\The Isle of Dorn",{
description="Complete the main story quests in The Isle of Dorn.",
achieveid={20118},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Earn "The Isle of Dorn" Achievement |achieve 20118 |only if achieved(20118)
Complete the Main Story Questlines in The Isle of Dorn: |only if not achieved(20118)
|tip Questlines you have not completed will be shown. |only if not achieved(20118)
Breaking Point |achieve 20118/1 |only if achieved(20118,1)
Earthen Fissures |achieve 20118/2 |only if achieved(20118,2)
The First Blow |achieve 20118/3 |only if achieved(20118,3)
|tip
Click Here to Load the "Intro & Isle of Dorn (Story Only)" Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)" |only if achieved(20118)
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Quests\\The Ringing Deeps",{
description="Complete the main story quests in The Ringing Deeps.",
achieveid={19560},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Earn "The Ringing Deeps" Achievement |achieve 19560 |only if achieved(19560)
Complete the Main Story Questlines in The Ringing Deeps: |only if not achieved(19560)
|tip Questlines you have not completed will be shown. |only if not achieved(19560)
(Intro and Chapter 1) |achieve 19560/1 |only if not achieved(19560,1)
(Chapter 2) |achieve 19560/2 |only if not achieved(19560,2)
(Chapter 3) |achieve 19560/3 |only if not achieved(19560,3)
|tip
Click Here to Load "The Ringing Deeps (Story Only)" Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The Ringing Deeps (Story Only)" |only if not achieved(19560)
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Quests\\Hallowfall",{
description="Complete the main story quests in Hallowfall.",
achieveid={20598},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Earn the "Hallowfall" Achievement |achieve 20598 |only if achieved(20598)
Complete the Main Story Questlines in Hallowfall: |only if not achieved(20598)
|tip Questlines you have not completed will be shown. |only if not achieved(20598)
The Guiding Star |achieve 20598/1 |only if not achieved(20598,1)
Gathering Shadows |achieve 20598/2 |only if not achieved(20598,2)
Hope in Solidarity |achieve 20598/3 |only if not achieved(20598,3)
|tip
Click here to Load the "Hallowfall (Story Only)" Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Hallowfall (Story Only)" |only if not achieved(20598)
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Quests\\Azj-Kahet",{
description="Complete the main story quests in Azj-Kahet.",
achieveid={19559},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Earn the "Azj-Kahet" Achievement |achieve 19559 |only if achieved(19559)
Complete the Main Story Questlines in Azj-Kahet: |only if not achieved(19559)
|tip Questlines you have not completed will be shown. |only if not achieved(19559)
|tip Refer to the "Azj-Kahet (Story Only)" guide to accomplish this. |only if not achieved(19559)
Friend in the Dark |achieve 19559/1 |only if not achieved(19559,1)
Unraveling the Trapped |achieve 19559/2 |only if not achieved(19559,2)
Plans Within Plans |achieve 19559/3 |only if not achieved(19559,3)
|tip
Click Here to Load the "Azj-Kahet (Story Only)" Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Azj-Kahet (Story Only)" |only if not achieved(19559)
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Quests\\Sojourner of Isle of Dorn",{
description="Complete every storyline in the Isle of Dorn.",
achieveid={20595},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
ding 80
step
Earn the "Sojourner of Isle of Dorn" Achievement |achieve 20595 |only if achieved(20595)
Complete the Following Story Questlines in Isle of Dorn: |only if not achieved(20595)
|tip Questlines you have not completed will be shown. |only if not achieved(20595)
|tip Refer to the "Intro & Isle of Dorn (Full Zone)" guide to accomplish this. |only if not achieved(20595)
Spores of Dread |achieve 20595/1 |only if not achieved(20595,1)
Behind Closed Doors |achieve 20595/2 |only if not achieved(20595,2)
Seven Soldiers |achieve 20595/3 |only if not achieved(20595,3)
Lost Lord of the Storm |achieve 20595/4 |only if not achieved(20595,4)
Hope, An Anomaly |achieve 20595/5 |only if not achieved(20595,5)
The Hermit |achieve 20595/6 |only if not achieved(20595,6)
A Titanic Expedition |achieve 20595/7 |only if not achieved(20595,7)
Remember Me, Earthen |achieve 20595/8 |only if not achieved(20595,8)
Brotherhood in the Skolzgal Wood |achieve 20595/9 |only if not achieved(20595,9)
All Ore Nothing |achieve 20595/10 |only if not achieved(20595,10)
|tip
Click Here to Refer to the "Intro & Isle of Dorn (Full Zone)" Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"  |only if not achieved(20595)
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Quests\\Sojourner of The Ringing Deeps",{
description="Complete every storyline in The Ringing Deeps.",
achieveid={40799},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Earn the "Sojourner of The Ringing Deeps" Achievement |achieve 40799 |only if achieved(40799)
Complete the Following Story Questlines in The Ringing Deeps: |only if not achieved(40799)
|tip Questlines you have not completed will be shown. |only if not achieved(40799)
The Caretaker of Brunwin's Terrace |achieve 40799/1 |only if not achieved(40799,1)
Broken Tools |achieve 40799/2 |only if not achieved(40799,2)
Routine Maintenance |achieve 40799/3 |only if not achieved(40799,3)
Dread in the Den |achieve 40799/4 |only if not achieved(40799,4)
Envenomed Invasion |achieve 40799/5 |only if not achieved(40799,5)
Fearbreaker |achieve 40799/6 |only if not achieved(40799,6)
Into the Fog |achieve 40799/7 |only if not achieved(40799,7)
Magma-nificence |achieve 40799/8 |only if not achieved(40799,8)
Kobold Culture and Integration |achieve 40799/9 |only if not achieved(40799,9)
Rampage at Nibelgaz Mine |achieve 40799/10 |only if not achieved(40799,10)
Abysmal Extraction |achieve 40799/11 |only if not achieved(40799,11)
Revenge in the Rumbling Wastes |achieve 40799/12 |only if not achieved(40799,12)
Tired of Rest |achieve 40799/13 |only if not achieved(40799,12)
Frolicking in the Fetid Grotto |achieve 40799/14 |only if not achieved(40799,14)
|tip
Click Here to Refer to "The Ringing Deeps (Full Zone)" Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\The Ringing Deeps (Full Zone)" |only if not achieved(40799)
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Quests\\Sojourner of Hallowfall",{
description="Complete every storyline in Hallowfall.",
achieveid={40844},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Earn the "Sojourner of Hallowfall" Achievement |achieve 40844 |only if achieved(40844)
Complete the Following Story Questlines in Hallowfall: |only if not achieved(40844)
|tip Questlines you have not completed will be shown. |only if not achieved(40844)
Light to Velhan's Claim |achieve 40844/1 |only if not achieved(40844,1)
The Priory |achieve 40844/2 |only if not achieved(40844,2)
Striking Steel |achieve 40844/3 |only if not achieved(40844,3)
Lost in the Darkness |achieve 40844/4 |only if not achieved(40844,4)
The Sky's the Limit |achieve 40844/5 |only if not achieved(40844,5)
Crushing Depths |achieve 40844/6 |only if not achieved(40844,6)
The Last Mage of Hallowfall |achieve 40844/7 |only if not achieved(40844,7)
The Weight of Duty |achieve 40844/8 |only if not achieved(40844,8)
Apart for Purpose |achieve 40844/9 |only if not achieved(40844,9)
Rest at Last |achieve 40844/10 |only if not achieved(40844,10)
An Orphan's Dilemma |achieve 40844/11 |only if not achieved(40844,11)
The Mysterious Chef |achieve 40844/12 |only if not achieved(40844,12)
What Grows in the Dark |achieve 40844/13 |only if not achieved(40844,13)
They Mysterious Chef |achieve 40844/14 |only if not achieved(40844,14)
Memories of the Sky|achieve 40844/15 |only if not achieved(40844,15)
|tip
Click Here to Refer to the "Hallowfall (Full Zone)" Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Hallowfall (Full Zone)"
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Quests\\Sojourner of Azj-Kahet",{
description="Complete every storyline in Azj-Kahet.",
achieveid={40636},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Earn the "Sojourner of Azj-Kahet" Achievement |achieve 40636 |only if achieved(40636)
Complete the Following Story Questlines in Azj-Kahet: |only if not achieved(40636)
|tip Questlines you have not completed will be shown. |only if not achieved(40636)
Rak-Ush Swarmery |achieve 40636/1 |only if not achieved(40636,1)
Pillar-nest Vosh |achieve 40636/2 |only if not achieved(40636,2)
Gutter Work |achieve 40636/3 |only if not achieved(40636,3)
Melody of Madness |achieve 40636/4 |only if not achieved(40636,4)
Pawns of Puppetry |achieve 40636/5 |only if not achieved(40636,5)
The Wormlands |achieve 40636/6 |only if not achieved(40636,6)
Haggling with Mmarl |achieve 40636/7 |only if not achieved(40636,7)
The Second Front |achieve 40636/8 |only if not achieved(40636,8)
Mr. Sunflower's Therapy |achieve 40636/9 |only if not achieved(40636,9)
The Wild Camp |achieve 40636/10 |only if not achieved(40636,10)
Pillar-nest of Horrors |achieve 40636/11 |only if not achieved(40636,11)
Subterfuge in Silk |achieve 40636/12 |only if not achieved(40636,12)
Silken Ward |achieve 40636/13 |only if not achieved(40636,13)
Grieve & Weave |achieve 40636/14 |only if not achieved(40636,14)
All Good THings... |achieve 40636/15 |only if not achieved(40636,15)
|tip
Click Here to Refer to the "Azj-Kahet (Full Zone)" Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Azj-Kahet (Full Zone)"
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\You Xal Not Pass",{
description="End Xal'atath's schemes (for now) by completing various achievements.",
achieveid={41201},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Earn the "Slate of the Union" Achievement |achieve 41186/1
|tip Below are links to the meta achievements required to complete Slate of the Union. |only if not achieved(41186,1)
Click Here to Load the "Adventurer of the Isle of Dorn" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Adventurer of the Isle of Dorn" |achieve 41186/1 |only if not achieved(41186,1)
Click Here to Load the "Treasures of the Isle of Dorn" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Treasures of the Isle of Dorn" |achieve 41186/2 |only if not achieved(41186,2)
Click Here to Load the "Flat Earthen" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Flat Earthen" |achieve 41186/3 |only if not achieved(41186,3)
Click Here to Load the "We're Here All Night" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\We're Here All Night" |achieve 41186/4 |only if not achieved(41186,4)
Click Here to Load the "A Star of Dorn" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\A Star of Dorn" |achieve 41186/5 |only if not achieved(41186,5)
Click Here to Load the "Rocked to Sleep" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Rocked to Sleep" |achieve 41186/6 |only if not achieved(41186,6)
step
Complete the "Rage Aside the Machine" Scheme |achieve 41187/2
|tip Below are links to the meta achievements required to complete Rage Aside the Machine. |only if not achieved(41187,2)
Click Here to Load the "Adventurer of The Ringing Deeps" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Adventurer of The Ringing Deeps" |achieve 41187/1 |only if not achieved(41187,1)
Click Here to Load the "Treasures of The Ringing Deeps" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Treasures of The Ringing Deeps" |achieve 41187/2 |only if not achieved(41187,2)
Click Here to Load the "It's Not Much, But It's Honest Work" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\It's Not Much, But It's Honest Work" |achieve 41187/3 |only if not achieved(41187,3)
Click Here to Load the "Super Size Snuffling" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Super Size Snuffling" |achieve 41187/4 |only if not achieved(41187,4)
Click Here to Load the "Notable Machines" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Notable Machines" |achieve 41187/5 |only if not achieved(41187,5)
Click Here to Load the "Not So Quick Fix" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Not So Quick Fix" |achieve 41187/6 |only if not achieved(41187,6)
Click Here to Load the "To All the Slimes I love" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\To All the Slimes I Love" |achieve 41187/7 |only if not achieved(41187,7)
step
Complete the "Crystal Chronicled" Scheme |achieve 41188/3
|tip Below are links to the meta achievements required to complete Crystal Chronicled. |only if not achieved(41188,3)
Click Here to Load the "Adventurer of Hallowfall" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Adventurer of Hallowfall" |achieve 41188/1 |only if not achieved(41188,1)
Click Here to Load the "Treasures of Hallowfall" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Treasures of Hallowfall" |achieve 41188/2 |only if not achieved(41188,2)
Click Here to Load the "The Missing Lynx" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\The Missing Lynx" |achieve 41188/3 |only if not achieved(41188,3)
Click Here to Load the "Mereldar Menace" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Mereldar Menace" |achieve 41188/4 |only if not achieved(41188,4)
Click Here to Load the "Biblo Archivist" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Biblo Archivist" |achieve 41188/5 |only if not achieved(41188,5)
Click Here to Load the "Beacon of Hope" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Beacon of Hope" |achieve 41188/6 |only if not achieved(41188,6)
Click Here to Load the "Sharing the Light" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Sharing the Light" |achieve 41188/7 |only if not achieved(41188,7)
Click Here to Load the "Lost and Found" Achievement Guide |confirm |next "Achievement Guides\\Quests\\The War Within Achievements\\Lost and Found" |achieve 41188/8 |only if not achieved(41188,8)
Click Here to Load the "Igniting the Keyflames" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Igniting the Keyflames" |achieve 41188/9 |only if not achieved(41188,9)
Click Here to Load the "Children's Entertainer" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Children's Entertainer" |achieve 41188/10 |only if not achieved(41188,10)
step
Complete the "Azj the World Turns" Scheme |achieve 41189/4
|tip Below are links to the meta achievements required to complete Azj the World Turns. |only if not achieved(41189,4)
Click Here to Load the "Adventurer of Azj-Kahet" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Adventurer of Azj-Kahet" |achieve 41189/1 |only if not achieved(41189,1)
Click Here to Load the "Treasures of Azj-Kahet" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Treasures of Azj-Kahet" |achieve 41189/2 |only if not achieved(41189,2)
Click Here to Load the "You Can't Hang With Us" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\You Can't Hang With Us" |achieve 41189/3 |only if not achieved(41189,3)
Click Here to Load the "The Unseeming" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\The Unseeming" |achieve 41189/4 |only if not achieved(41189,4)
Click Here to Load the "Worm Theory" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Worm Theory" |achieve 41189/5 |only if not achieved(41189,5)
Click Here to Load the "Itsy Bitsy Spider" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Itsy Bitsy Spider" |achieve 41189/6 |only if not achieved(41189,6)
Click Here to Load the "Smelling History" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Smelling History" |achieve 41189/7 |only if not achieved(41189,7)
Click Here to Load the "Bookworm" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Bookworm" |achieve 41189/8 |only if not achieved(41189,8)
step
Complete the "Isle Remember you" Scheme |achieve 41133/5
|tip Below are links to the meta achievements required to complete Isle Remember you. |only if not achieved(41133,5)
Click Here to Load the "A Song of Secrets" Achievement Guide |confirm |next  "Achievement Guides\\The War Within Achievements\\Exploration\\A Song of Secrets" |achieve 41133/1 |only if not achieved(41133,1)
Click Here to Load the "Siren-ity Now!" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Siren-ity Now!" |achieve 41133/2 |only if not achieved(41133,2)
Click Here to Load the "Excavation Projects" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Excavation Projects" |achieve 41133/3 |only if not achieved(41133,3)
Click Here to Load the "Clean Up on Isle Siren" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Clean Up on Isle Siren" |achieve 41133/4 |only if not achieved(41133,4)
Click Here to Load the "Treasures of the Storm" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\Treasures of the Storm" |achieve 41133/5 |only if not achieved(41133,5)
Click Here to Load the "A Choir of Citrines" Achievement Guide |confirm |next "Achievement Guides\\The War Within Achievements\\Exploration\\A Choir of Citrines" |achieve 41133/6 |only if not achieved(41133,6)
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Adventurer of the Isle of Dorn",{
description="Clear 10 special encounters within the Isle of Dorn.",
achieveid={40435},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete #10# Encounters across the Isle of Dorn |achieve 40435
|tip There are 22 Special Encounters that appear throughout the Isle of Dorn.
|tip Use points of interest to complete the encounters.
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Treasures of the Isle of Dorn",{
description="Collect the Treasures of the Isle of Dorn.",
achieveid={40434},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Enter the cave |goto Isle of Dorn/0 48.70,31.06 < 15
|tip At the base of the waterfall.
talk Freysworn Letitia##222940
|tip Inside the cave.
Select _"How can I help?"_ |gossip 122602
collect Crab-Guiding Branch##224185 |n
use the Crab-Guiding Branch##224185
|tip Use it on the Pearlescent Shellcrab.
Click Here to Continue |confirm |achieve 40434/1 |goto Isle of Dorn/0 48.59,30.04
step
talk Pearlescent Shellcrab##224548
use the Crab-Guiding Branch##224185
|tip Use it on the Pearlescent Shellcrab.
Find the Storm's Watch Pearlescent Shellcrab |goto Isle of Dorn/0 38.28,42.01 |q 82756 |future
step
talk Pearlescent Shellcrab##224548
|tip At the base of the trees.
use the Crab-Guiding Branch##224185
|tip Use it on the Pearlescent Shellcrab.
Find the Pearlescent Shellcrab |goto Isle of Dorn/0 19.73,58.43 |q 82755 |future
step
talk Pearlescent Shellcrab##224548
use the Crab-Guiding Branch##224185
|tip Use it on the Pearlescent Shellcrab.
Find the Pearlescent Shellcrab |goto Isle of Dorn/0 50.71,70.57 |q 82751 |future
step
talk Pearlescent Shellcrab##224548
use the Crab-Guiding Branch##224185
|tip Use it on the Pearlescent Shellcrab.
Find the Pearlescent Shellcrab |goto Isle of Dorn/0 74.92,49.39 |q 82752 |future
step
talk Pearlescent Shellcrab##224548
use the Crab-Guiding Branch##224185
|tip Use it on the Pearlescent Shellcrab.
Find the Pearlescent Shellcrab |goto Isle of Dorn/0 70.76,20.01 |q 82753 |future
step
talk Pearlescent Shellcrab##224548
use the Crab-Guiding Branch##224185
|tip Use it on the Pearlescent Shellcrab.
Find the Pearlescent Shellcrab |goto Isle of Dorn/0 41.85,27.02 |q 82754 |future
step
Enter the cave |goto Isle of Dorn/0 48.70,31.06 < 15
|tip At the base of the waterfall.
talk Freysworn Letitia##222940
|tip Inside the cave.
Select _"What have you discovered?"_ |gossip 122272
click Tree's Treasure##443318
Find the "Tree's Treasure" Treasure |achieve 40434/1 |goto Isle of Dorn/0 48.59,30.04
stickystart "Gather_Goldengill_Trout"
step
map Isle of Dorn/0
path bouncet; loop off; dist 30
path	33.27,57.72	33.71,60.02	33.90,62.11	35.20,62.43	36.49,63.35
path	38.33,65.28	40.53,64.74	42.71,62.18	44.03,60.87
Follow the path
collect 5 Dornish Pike##220143
|tip Fish them from Calm Surface Ripples or purchase them from the AH.
|tip They share spawns with other schools of fish along the coast.
step
label "Gather_Goldengill_Trout"
map Isle of Dorn/0 |notinsticky
path bouncet; loop off; dist 30 |notinsticky
path	33.27,57.72	33.71,60.02	33.90,62.11	35.20,62.43	36.49,63.35 |notinsticky
path	38.33,65.28	40.53,64.74	42.71,62.18	44.03,60.87 |notinsticky
Follow the path |notinsticky
collect 1 Goldengill Trout##222533
|tip Fish them from Glimmerpools or Festering Rotpools, or purchase them from the AH.
|tip They share spawns with other schools of fish along the coast. |notinsticky
step
talk Dalaran Sewer Turtle##212928
Select _"<Offer five Dornish Pike.>"_ |gossip 121107
Offer the Dornish Pike |goto Isle of Dorn/0 40.91,73.77 |q 79585 |future
step
talk Dalaran Sewer Turtle##223338
|tip You will likely need to wait between 5 and 10 minutes to interact with the turtle again.
|tip Log out and back in after 10 minutes if the turtle doesn't turn purple again.
Select _"<Offer one Goldengill Trout.>"_ |gossip 122356
Offer the Goldengill Trout |goto Isle of Dorn/0 40.91,73.77 |q 79586 |future
step
talk Dalaran Sewer Turtle##212945
Select _"<Lean in closer.>"_ |gossip 122357
click Turtle's Thanks##444354
Find the "Turtle's Thanks" Treasure |goto Dornogal/0 58.35,30.31 |achieve 40434/2
step
talk Lionel##223104
Select _"<Get the fish to the water.>"_ |gossip 122296
accept Weak Lionfish##82212 |goto Isle of Dorn/0 40.62,59.86
step
clicknpc Plump Snapcrab##223159
collect 5 Plump Snapcrab##222906 |achieve 40434/3 |goto Isle of Dorn/0 38.75,60.46
step
talk Lionel##223143
Select _"<Give Lionel the plump crabs.>"_ |gossip 122310
click Magical Treasure Chest##444022
Find the "Magical Treasure Chest" Treasure |achieve 40434/3 |goto Isle of Dorn/0 40.64,59.86
step
click Elemental Pearl##442718
|tip Underwater.
collect Elemental Pearl##221504 |goto Isle of Dorn/0 53.07,18.54  |q 82134 |future
step
talk Weary Water Elemental##222847
Select _"<Hand the pearl to the water elemental.>"_ |gossip 122226
Give the Pearl to the Weary Water Elemental |goto Isle of Dorn/0 54.00,19.13 |q 82134 |future
step
click Mysterious Orb##444215
Find the "Mysterious Orb" Treasure |achieve 40434/4 |goto Isle of Dorn/0 53.99,19.18
step
click Boskroot Cap##442814
|tip All around this area.
collect Boskroot Cap##221550 |goto Isle of Dorn/0 52.79,66.10 |q 82142 |future
step
talk U'llort the Self-Exiled##222894
Select _"<Hand U'llort a Boskroot Cap.>"_ |gossip 122262
click Mushroom Cap##444233
Find the "Mushroom Cap" Treasure |achieve 40434/5 |goto Isle of Dorn/0 	55.00,65.64
step
talk One-Eyed Thak##223227
Select _"You have been here for several days?"_ |gossip 122348 |goto Isle of Dorn/0 38.07,43.58
Select _"Why did the earth people bring you here?"_ |gossip 122347
Select _"Yes, show me."_ |gossip 122346
accept Friendly Thak##82245 |goto Isle of Dorn/0 38.07,43.58
step
Follow Thak |q 82245 |future |goto Isle of Dorn/0 36.87,42.24
step
Watch the Dialogue
click Thak's Treasure##444137
Find the "Thak's Treasure" Treasure |achieve 40434/6 |goto Isle of Dorn/0 36.95,42.20
step
click Mosswool Flower##443638
Follow the Mosswool Flower
accept The Lost Mosswool##82145 |goto Isle of Dorn/0 59.60,24.61
step
clicknpc Lost Mosswool##222963
Follow the Mosswool Flower |goto Isle of Dorn/0 59.11,27.07
Click Here to Continue |confirm |achieve 40434/7
step
clicknpc Lost Mosswool##222965
Inspect the Lost Mosswool |q 82145 |future |goto Isle of Dorn/0 59.74,28.70
step
click Mosswool Flower##443638
Find the "Mosswool Flower" Treasure |achieve 40434/7 |goto Isle of Dorn/0 59.74,28.71
step
click Kobold Pickaxe##444899
Find the "Kobold Pickaxe" Treasure |achieve 40434/8 |goto Isle of Dorn/0 62.57,43.27
step
click Jade Pearl##444773
Find the "Jade Pearl" Treasure |achieve 40434/9 |goto Isle of Dorn/0 77.23,24.45
step
Enter the cave |goto Isle of Dorn/0 47.62,61.64 < 15
|tip Fly to the bottom of the cave.
click Shimmering Opal Lily##444894
|tip Floating in the water inside the cave.
Find the "Shimmering Opal Lily" Treasure |achieve 40434/10 |goto Isle of Dorn/0 48.90,60.89
step
click Infused Cinderbrew##446473
Find the "Infused Cinderbrew" Treasure |achieve 40434/11 |goto Isle of Dorn/0 56.22,60.94
step
click Web-Wrapped Axe##446476
|tip Inside the building.
Find the "Web-Wrapped Axe" Treasure |achieve 40434/12 |goto Isle of Dorn/0 59.12,23.47
step
Earn the "Treasures of the Isle of Dorn" Achievement |achieve 40434
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Flat Earthen",{
description="Become the victim of a workplace accident in the Forgegrounds of Dornogal.",
achieveid={40606},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Become the Victim of a Workplace Accident in the Forgegrounds of Dornogal |achieve 40606 |goto Isle of Dorn/0 50.07,61.99
|tip You will be killed.
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\We're Here All Night",{
description="Participate in five different Theater Troupe Plays.",
achieveid={40859},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Participate in the Theater Troupe Play: "The Rivals" |achieve 40859/1 |goto Isle of Dorn/0 56.44,51.38
Participate in the Theater Troupe Play: "The Wanderer" |achieve 40859/2 |goto Isle of Dorn/0 56.44,51.38
Participate in the Theater Troupe Play: "Forget Me Not" |achieve 40859/3 |goto Isle of Dorn/0 56.44,51.38
Participate in the Theater Troupe Play: "The Cruelty of Dornic" |achieve 40859/4 |goto Isle of Dorn/0 56.44,51.38
Participate in the Theater Troupe Play: "The Thraegar's Descent" |achieve 40859/5 |goto Isle of Dorn/0 56.44,51.38
Earn the "Theater Troupe" Achievement |ahchieve 40859 |only if achieved(40859)
|tip The plays shuffle every hour. |only if not achieved(40859)
|tip Only objectives you have yet to complete will appear. |only if not achieved(40859)
Click Here to Load the "Theater Troupe" Daily Guide |confirm |next "Daily Guides\\The War Within (70-80)\\Theater Troupe"
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\A Star of Dorn",{
description="Unlock all actor perks for the Theater Troupe.",
achieveid={40860},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Reach Renown Level 8 with the Council of Dornogal |complete factionrenown(2590) >= 8
|tip Complete daily quests, weekly quests, and zone quests in the Isle of Dorn to gain renown.
step
talk Wendeline##215748
accept Quickchange Artist##82775 |goto Isle of Dorn/0 56.81,52.19
step
talk Wendeline##215748
turnin Quickchange Artist##82775 |goto Isle of Dorn/0 56.81,52.19
Unlock the "Quickchange Artist" Actor Perk |achieve 40860/1 |goto Isle of Dorn/0 56.81,52.19
step
Reach Renown Level 10 with the Council of Dornogal |complete factionrenown(2590) >= 3
|tip Complete daily quests, weekly quests, and zone quests in the Isle of Dorn to gain renown.
step
talk Elma##217248
accept Attention-Getter##82781 |goto Isle of Dorn/0 56.71,52.36
step
turnin Attention-Getter##82781 |goto Isle of Dorn/0 56.71,52.36
Unlock the "Attention-Getter" Actor Perk |achieve 40860/2 |goto Isle of Dorn/0 56.71,52.36
step
Reach Renown Level 14 with the Council of Dornogal |complete factionrenown(2590) >= 14
|tip Complete daily quests, weekly quests, and zone quests in the Isle of Dorn to gain renown.
step
talk Rabaan##215745
accept Authenticity in Dress##82782 |goto Isle of Dorn/0 56.77,52.19
step
talk Rabaan##215745
turnin Authenticity in Dress##82782 |goto Isle of Dorn/0 56.77,52.19
Unlock the "Authenticity in Dress" Actor Perk |achieve 40860/3 |goto Isle of Dorn/0 56.77,52.19
step
Reach Renown Level 21 with the Council of Dornogal |complete factionrenown(2590) >= 21
|tip Complete daily quests, weekly quests, and zone quests in the Isle of Dorn to gain renown.
step
talk Burkhalt##215745
accept Resonant Performance##82784 |goto Isle of Dorn/0 56.77,52.19
|tip If the quest doesn't appear, try to relog.
step
talk Burkhalt##215745
turnin Resonant Performance##82784 |goto Isle of Dorn/0 56.77,52.19
Unlock the "Resonant Performance" Actor Perk |achieve 40860/4 |goto Isle of Dorn/0 56.77,52.19
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Rocked to Sleep",{
description="Read the plaques of the following inert earthen.",
achieveid={40504},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Read "Attwogaz's" Plaque |achieve 40504/1 |goto The Ringing Deeps/0 58.76,36.41 |only if not achieved(40504,1)
Read "Hathlaz's" Plaque |achieve 40504/2 |goto The Ringing Deeps/0 40.25,13.52  |only if not achieved(40504,2)
Read "Krattdaz's" Plaque |achieve 40504/3 |goto The Ringing Deeps/0 39.07,40.91 |only if not achieved(40504,3)
Read "Uisgaz's" Plaque |achieve 40504/4 |goto The Ringing Deeps/0 50.86,30.21 |only if not achieved(40504,4)
Read "Vendedaz's" Plaque |achieve 40504/5 |goto The Ringing Deeps/0 44.45,31.80 |only if not achieved(40504,5)
Read "Merunth's" Plaque |achieve 40504/6 |goto The Ringing Deeps/0 55.04,93.70 |only if not achieved(40504,6)
Read "Varerko's" Plaque |achieve 40504/7 |goto The Ringing Deeps/0 45.25,49.02 |only if not achieved(40504,7)
Read "Alfritha's" Plaque |achieve 40504/8 |goto The Ringing Deeps/0 44.35,70.70  |only if not achieved(40504,8)
Read "Gundrig's" Plaque |achieve 40504/9 |goto The Ringing Deeps/0 61.25,83.81 |only if not achieved(40504,9)
Read "Sathilga's" Plaque |achieve 40504/10 |goto The Ringing Deeps/0 59.95,55.72 |only if not achieved(40504,10)
Earn the "Rocked to Sleep" Achievement |only if achieved(40504)
|tip Only objectives you have yet to complete will appear. |only if not achieved(40504)
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Adventurer of The Ringing Deeps",{
description="Complete 10 of the following special encounters across The Ringing Deeps.",
achieveid={40837},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete #10# Encounters across The Ringing Deeps |achieve 40837
|tip There are 18 Special Encounters that appear throughout the Isle of Dorn.
|tip Use points of interest to complete the encounters.
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Treasures of The Ringing Deeps",{
description="Discover the hidden treasures across The Ringing Deeps.",
achieveid={40724},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
click Kaja'Cola Machine##444256
|tip Inside the building.
collect Goblin Mini Fridge##220774 |n
Find the "Kaja 'Cola Machine" Treasure |achieve 40724/7 |goto The Ringing Deeps/0 54.85,64.37
|tip The order required: Bluesberry Blast, Orange O-pocalypse, Oyster Outburst, Mangoro Mania.
step
click Cursed Pickaxe##444071
collect Cursed Pickaxe##224837 |n
Find the "Cursed Pickaxe" Treasure |achieve 40724/2 |goto The Ringing Deeps/0 58.90,63.11
step
Enter the cave |goto The Ringing Deeps/0 64.55,40.49 < 15
click Webbed Knapsack##420053
|tip Inside the cave.
Find the "Webbed Knapsack" Treasure |achieve 40724/1 |goto The Ringing Deeps/0 64.70,38.84
step
click Waterlogged Refuse##455890
Find the "Waterlogged Refuse" Treasure |achieve 40724/5 |goto The Ringing Deeps/0 62.04,33.42
step
click Candle Stub##446035
|tip There are 10 around the chest.
click Scary Dark Chest##445403
collect Oop'lajax##224439 |n
Find the "Scary Dark Chest" Treasure |achieve 40724/6 |goto The Ringing Deeps/0 54.78,30.31
step
Enter the cave |goto The Ringing Deeps/0 50.61,14.24 < 10
click Munderut's Forgotten Stash##444087
|tip Inside the cave.
Find the "Munderut's Forgotten Stash" Treasure |achieve 40724/3 |goto The Ringing Deeps/0 51.24,13.85
step
click Discarded Toolbox##444115
collect Lava-Forged Cogwheel##224644 |n
Find the "Discarded Toolbox" Treasure |achieve 40724/4 |goto The Ringing Deeps/0 41.35,17.45
step
Enter the cave |goto The Ringing Deeps/0 47.83,52.95 < 10
click Buried Treasure##433774
Open the Chest |goto The Ringing Deeps/0 46.54,53.02 |q 80487 |future
step
click Buried Treasure##433778
Open the Chest |goto The Ringing Deeps/0 46.20,52.84 |q 80490 |future
step
click Buried Treasure##433773
collect Forgotten Key##217960 |goto The Ringing Deeps/0 46.13,53.34 |q 80485 |future
step
click Forgotten Treasure##433733
collect Sovereign's Finery Chest##224783 |n
Find the "Forgotten Treasure" Treasure |achieve 40724/10 |goto The Ringing Deeps/0 46.31,53.48
step
click Blocked Intake##446100 |goto The Ringing Deeps/0 44.09,48.96
|tip Connect the left most pipe to the rightmost pipe.
click Dislodged Blockage##446151
collect Blightbud##221548 |n
Find the "Dislodged Blockage" Treasure |achieve 40724/8 |goto The Ringing Deeps/0 44.05,48.89
step
click Loose Crystal Shard##446347
collect Rough Deepruby Shard##223878 |goto The Ringing Deeps/0 53.26,49.43 |q 82464 |future
step
click Loose Crystal Shard##446347
collect Rough Deeptopaz Shard##223879 |goto The Ringing Deeps/0 58.36,63.13 |q 82464 |future
step
click Loose Crystal Shard##446352
collect Rough Deepdiamond Shard##223882 |goto The Ringing Deeps/0 64.03,53.23 |q 82464 |future
step
click Loose Crystal Shard##446351
collect Rough Deepemerald Shard##223881 |goto The Ringing Deeps/0 54.88,38.05 |q 82464 |future
step
click Loose Crystal Shard##446349
collect Rough Deepamethyst Shard##223880 |goto The Ringing Deeps/0 53.11,21.89 |q 82464 |future
step
Enter the building |goto The Ringing Deeps/0 43.59,32.16 < 5
click Dusty Prospector's Chest##446341
|tip Downstairs inside the building.
Find the "Dusty Prospector's Chest" Treasure |achieve 40724/9 |goto The Ringing Deeps/0 44.89,31.63
step
Earn the "Treasures of the Isle of Dorn" Achievement |achieve 40724
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\It's Not Much, But It's Honest Work",{
description="Defeat the Awakened Phalanx in Awakening The Machine.",
achieveid={40662},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
kill Awakened Phalanx##229782
|tip Spawns in the 'Awakening the Machine' event on Wave 20.
|tip Speaker Kuldas must survive.
|tip If you can't heal, you can bring bandages for him.
|tip You and Kuldas must survive.
Earn the "It's Not Much, But It's Honest Work" Achievement |achieve 40662
|tip Refer to the 'Awakening the Machine' guide to accomplish this.
Click Here to Load the "Awakening the Machine" Guide |confirm |next "Daily Guides\\The War Within (70-80)\\Awakening the Machine/Snuffling Weeklies"
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Notable Machines",{
description="Read the following Notes On Machine Speakers in The Ringing Deeps.",
achieveid={40628},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
click Notes On The Machine Speakers##455269 |only if not achieved(40628,1)
Read the "Notes On The Machine Speakers: Fragment I" |achieve 40628/1 |goto The Ringing Deeps/0 41.74,28.80 |only if not achieved(40628,1)
click Notes On The Machine Speakers II##455274 |only if not achieved(40628,2)
Read the "Notes On The Machine Speakers: Fragment II" |achieve 40628/2 |goto The Ringing Deeps/0 44.74,25.90 |only if not achieved(40628,2)
click Notes On The Machine Speakers III##455275 |only if not achieved(40628,3)
Read the "Notes On The Machine Speakers: Fragment III" |achieve 40628/3 |goto The Ringing Deeps/0 46.94,14.50 |only if not achieved(40628,3)
click Notes On The Machine Speakers IV##455276 |only if not achieved(40628,4)
Read the "Notes On The Machine Speakers: Fragment IV" |achieve 40628/4 |goto The Ringing Deeps/0 35.74,21.00 |only if not achieved(40628,4)
|tip On a wood frame. |only if not achieved(40628,4)
click Notes On The Machine Speakers V##455277 |only if not achieved(40628,5)
Read the "Notes On The Machine Speakers: Fragment V" |achieve 40628/5 |goto The Ringing Deeps/0 59.54,58.80 |only if not achieved(40628,5)
click Notes On The Machine Speakers VI##455278 |only if not achieved(40628,6)
Read the "Notes On The Machine Speakers: Fragment VI" |achieve 40628/6 |goto The Ringing Deeps/0 60.94,79.60 |only if not achieved(40628,6)
|tip If you are on a campaign quest in the area, they will not show up. |only if not achieved(40628)
|tip Only objectives you have yet to complete will appear. |only if not achieved(40628)
Earn the "Notable Machines" Achievement |achieve 40628
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\To All the Slimes I Love",{
description="The critters of The Ringing Deeps might not be as fluffy, but they still need your /love.",
achieveid={40475},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Use the "/love" Emote on a "Spring Mole" |achieve 40475/1 |goto The Ringing Deeps/0 53.32,67.64 |script DoEmote("LOVE")
step
Use the "/love" Emote on a "Snake" |achieve 40475/2 |goto The Ringing Deeps/0 47.12,15.43 |script DoEmote("LOVE")
step
Use the "/love" Emote on a "Lightdarter" |achieve 40475/3 |goto The Ringing Deeps/0 60.37,32.38 |script DoEmote("LOVE")
step
Use the "/love" Emote on a "Tiny Sporbit" |achieve 40475/4 |goto The Ringing Deeps/0 48.69,54.73 |script DoEmote("LOVE")
step
Use the "/love" Emote on a "Dustcrawler Beetle" |achieve 40475/5 |goto The Ringing Deeps/0 37.85,16.38 |script DoEmote("LOVE")
step
Use the "/love" Emote on a "Mass of Worms" |achieve 40475/6 |goto The Ringing Deeps/0 56.15,92.21 |script DoEmote("LOVE")
step
Use the "/love" Emote on a "Grottoscale Hatchling" |achieve 40475/7 |goto The Ringing Deeps/0 54.63,68.61  |script DoEmote("LOVE")
step
Use the "/love" Emote on a "Crackcreeper" |achieve 40475/8 |goto The Ringing Deeps/0 50.51,29.92 |script DoEmote("LOVE")
step
Use the "/love" Emote on a "Lava Slug" |achieve 40475/9 |goto The Ringing Deeps/0 44.34,12.57 |script DoEmote("LOVE")
step
Use the "/love" Emote on a "Earthenwork Stoneskitterer" |achieve 40475/10 |goto The Ringing Deeps/0 41.62,13.52 |script DoEmote("LOVE")
step
Use the "/love" Emote on a "Cavern Skiplet" |achieve 40475/11 |goto The Ringing Deeps/0 68.69,39.65 |script DoEmote("LOVE")
step
Use the "/love" Emote on a "Moss Sludglet" |achieve 40475/12 |goto The Ringing Deeps/0 53.14,65.74 |script DoEmote("LOVE")
step
Use the "/love" Emote on a "Cavern Mote" |achieve 40475/13 |goto The Ringing Deeps/0 37.85,16.38 |script DoEmote("LOVE")
step
Use the "/love" Emote on a "Stumblegrub" |achieve 40475/14 |goto The Ringing Deeps/0 57.80,30.27 |script DoEmote("LOVE")
step
Use the "/love" Emote on a "Darkgrotto Hopper" |achieve 40475/15 |goto The Ringing Deeps/0 50.25,34.73 |script DoEmote("LOVE")
step
Use the "/love" Emote on a "Oozeling" |achieve 40475/16 |goto The Ringing Deeps/0 62.85,38.78 |script DoEmote("LOVE")
step
Use the "/love" Emote on a "Pebble Scarab" |achieve 40475/17 |goto The Ringing Deeps/0 55.24,45.92 |script DoEmote("LOVE")
step
Use the "/love" Emote on a "Rock Snail" |achieve 40475/18 |goto The Ringing Deeps/0 38.26,14.37|script DoEmote("LOVE")
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Super Size Snuffling",{
description="Obtain 100 Odd Glob of Wax.",
achieveid={40585},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete the Warband Questline |q 83496
|tip Refer to the Warband guide to accomplish this
Click Here to Load the "Warband" Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Warbands"
step
Reach Renown Level 2 with The Assembly of the Deeps |complete factionrenown(2594) >= 2
|tip Complete daily quests, weekly quests, and zone quests in The Ringing Deeps to gain renown.
step
click Disturbed Eart##241838
|tip They spawn in any Khaz Algar zone at random.
|tip They will be outlined in purple like treasures, but don't appear as treasures on the map.
|tip Sometimes enemies will spawn the drop them.
collect 100 Odd Glob of Wax##212493 |achieve 40585
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Not So Quick Fix",{
description="Repair 6 busted earthen consoles in The Ringing Deeps.",
achieveid={40473},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Water Console |achieve 40473/1 |goto The Ringing Deeps/0 41.14,46.41 |only if not achieved(40473,1)
Abyssal Console |achieve 40473/2 |goto The Ringing Deeps/0 54.85,93.31 |only if not achieved(40473,2)
Taelloch Console |achieve 40473/3 |goto The Ringing Deeps/0 59.55,61.09 |only if not achieved(40473,3)
Obsidian Console |achieve 40473/4 |goto The Ringing Deeps/0 64.94,48.81 |only if not achieved(40473,4)
Lost Console |achieve 40473/5 |goto The Ringing Deeps/0 52.25,22.52 |only if not achieved(40473,5)
Earthen Console |achieve 40473/6 |goto The Ringing Deeps/0 42.14,14.11 |only if not achieved(40473,6)
|tip Only objectives you have yet to complete will appear. |only if not achieved(40473)
Earn the "Not So Quick Fix" Achievement |achieve 40473
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Adventurer of Hallowfall",{
description="Complete 10 of the following special encounters across Hallowfall.",
achieveid={40851},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete #10# Encounters across Hallowfall |achieve 40851
|tip There are 25 Special Encounters that appear throughout Hallowfall.
|tip Use points of interest to complete the encounters.
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Treasures of Hallowfall",{
description="Discover the hidden treasures across Hallowfall.",
achieveid={40848},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
talk Torran Dellain##217645
buy 1 Meaty Haunch##225238 |goto Hallowfall/0 69.25,43.95 |achieve 40848/1
step
talk Caesper##225948
Select _"<Place the Meaty Haunch in his mouth, and back up.>"_ |gossip 122845 |goto Hallowfall/0 41.78,58.24
Follow Caesper
click Disturbed Lynx Treasure##453167
Discover "Caesper's" Hidden Treasure |achieve 40848/1 |goto Hallowfall/0 42.12,58.97
step
talk Dead Arathi##226025
|tip On the ground near some bushes.
Select _"<Read the note.>"_ |gossip 122856
Select _"<Take the Key.>"_ |gossip 122857
collect Smuggler's Key##225335 |goto Hallowfall/0 55.43,51.64 |achieve 40848/2
step
click Smuggler's Treasure
Select _"(Smuggler's Key) Insert the Key."_ |gossip 122853
|tip Up on the cliff above where you found the key.
click Smuggler's Treasure
Discover the "Smuggler's Treasure"  |achieve 40848/2 |goto Hallowfall/0 55.13,51.93
step
Enter the cave |goto Hallowfall/0 59.67,60.66 < 10
click Dark Ritual##453359
|tip On the ground surrounded by purple candles inside the cave.
Select _"(Start Ritual) What could possibly go wrong?"_ |gossip 122867
Defeat the waves of enemies
click Shadowed Essence##453374
|tip It spawns after the waves of enemies are defeated.
Complete the "Dark Ritual" Treasure |achieve 40848/3 |goto Hallowfall/0 59.52,59.66
step
click Collect Palawltar's Codex of Dimensional Structure
|tip On the bookshelf inside the building.
collect Collect Palawltar's Codex of Dimensional Structure##225216 |goto Hallowfall/0 48.75,64.71 |achieve 40848/4
step
click Beledar - The Emperor's Vision
|tip Inside the ship.
collect Beledar - The Emperor's Vision##225203 |goto Hallowfall/0 56.56,65.16 |achieve 40848/4
step
click Care and Feeding of the Imperial Lynx
|tip Inside the building.
collect Care and Feeding of the Imperial Lynx##225207 |goto Hallowfall/0 69.35,43.99 |achieve 40848/4
step
click The Song of Renilash
|tip Inside the tent.
collect The Song of Renilash##225215 |goto Hallowfall/0 70.20,56.85 |achieve 40848/4
step
click Collect Shadow Curfew Guidelines
|tip On a table inside the building.
collect Shadow Curfew Guidelines##225204 |goto Hallowfall/0 64.22,28.11 |achieve 40848/4
step
click The Big Book of Arathi Idioms
|tip Inside the building.
collect The Big Book of Arathi Idioms##225212 |goto Hallowfall/0 48.10,39.55 |achieve 40848/4
step
Enter the building |goto Hallowfall/0 40.11,51.37 < 10
talk Ryfus Sacredpyr##221630
|tip Inside the building.
Select _"Ask your question."_ |gossip 122882
|tip Ignore the other dialogue that doesn't apear below.
Select _"That the Cosmos consisted of monopole elemental phase spaces."_ |gossip 122886
Select _"Patience and respect."_ |gossip 122892
Select _"Seek shelter and light. Have plans, have backup plans. Find joy while sheltering."_ |gossip 122900
Select _"The third fleet."_ |gossip 122905
Select _"The remains of gods."_ |gossip 122913
Select _"From the letters of Mereldar."_ |gossip 122918
Select _"That's all the questions. What do I win?"_ |gossip 122916
click Loremaster's Reward##453741
|tip Appears on the table next to Ryfus.
collect Arathi Book Collection##225659 |n
Collect the "Arathi Loremaster" Treasure |achieve 40848/4
step
kill Kobyss Shadeshaper##215653+
collect Sunless Lure##225554 |goto Hallowfall/0 54.93,27.27 |achieve 40848/5
step
kill Ragefin Necromancer##213406+
collect Ragefin Necrostaff##225560 |goto Hallowfall/0 35.71,54.04 |achieve 40848/5
step
kill Hungering Shimmerfin##215243+
collect Hungering Shimmerfin##225559 |goto Hallowfall/0 49.15,48.33 |achieve 40848/5
step
kill Murkfin Depthstalker##213622+
collect Murkfin Lure##225558 |goto Hallowfall/0 48.23,17.50 |achieve 40848/5
step
use the Murkfin Lure##225558
collect Illusive Kobyss Lure##225641 |achieve 40848/5
step
click Jewel of the Cliffs##441606
collect Massive Sapphire Chunk##224580 |n
Collect the "Jewel of the Cliffs" Treasure |achieve 40848/6 |goto Hallowfall/0 55.78,69.55
step
click Windswept Satchel##441611
|tip Hanging off the ledge of the building.
collect Arathor Courier's Satchel##224578 |n
Collect the "Priory Satchel" Treasure |achieve 40848/7 |goto Hallowfall/0 30.23,38.76
step
click Lost Memento##441638
collect Lightbearer's Pendant##224575 |n
Collect the "Lost Necklace" Treasure |achieve 40848/8 |goto Hallowfall/0 50.06,13.84
step
map Hallowfall/0
path	49.66,51.34	52.28,51.86	54.82,51.53	57.38,50.85	60.08,49.89
path	62.34,48.03	62.09,44.44	59.99,42.00	57.91,40.13	55.79,38.26
path	53.65,36.45	51.39,34.69	49.14,33.16	46.93,32.67	45.07,34.46
path	43.95,37.46	43.65,41.01	44.43,44.64	45.83,47.77	47.74,50.06
path	50.07,51.50
Follow the path
talk Sky-Captain Dornald##222333
|tip Flying around on a ship along this path.
Select _"How is the Mighty Lynx doing?"_ |gossip 122035
Click Here to Continue |confirm |achieve 40848/9
step
map Hallowfall/0
path	43.51,19.17	43.76,22.08	44.60,25.05	45.84,27.52	47.36,29.59
path	49.30,30.99	51.32,30.44	52.31,27.76	53.22,24.76	54.19,21.16
path	54.86,18.39	55.50,16.03	55.13,12.72	54.20,10.20	52.25,8.17
path	50.26,7.27	48.44,7.06	46.26,7.63	44.60,9.86	43.51,13.45
path	43.44,18.65
Follow the path
|tip Flying around on a ship along this path.
talk Sky-Captain Onaro##222337
Select _"How is the Resolute Flame doing?"_ |gossip 122054
Click Here to Continue |confirm |achieve 40848/9
step
map Hallowfall/0
path	30.18,29.79	31.92,27.97	33.69,26.31	35.62,24.78	37.75,23.26
path	39.96,22.13	42.26,22.88	43.97,25.83	45.08,29.37	45.38,33.15
path	44.99,36.95	42.11,41.88	39.68,43.27	37.03,43.62	34.26,43.35
path	31.63,42.51	28.87,40.42	27.53,37.15	28.01,33.30	29.86,30.17
Follow the path
|tip Flying around on a ship along this path.
talk Sky-Captain Aerthin##222323
Select _"How is the Righteous Hammer?"_ |gossip 122053
Click Here to Continue |confirm |achieve 40848/9
step
map Hallowfall/0
path	30.00,53.89	31.19,56.55	33.28,57.87	35.45,58.58	38.03,59.55
path	40.70,61.12	42.99,62.78	45.95,63.37	48.17,61.10	49.37,56.36
path	49.32,51.04	47.21,47.79	44.60,45.82	41.23,45.21	38.65,45.07
path	35.61,45.14	32.50,46.35
Follow the path
|tip Flying around on a ship along this path.
talk Sky-Captain Clairmonte##222311
Select _"How is your ship doing?"_ |gossip 122052
Click Here to Continue |confirm |achieve 40848/9
step
click Sunken Cache##441800
|tip Underwater.
collect Silver Linin' Scepter##224554
Collect the "Sunken Cache" Treasure |achieve 40848/9 |goto Hallowfall/0 45.94,45.12
step
Enter the cave |goto Hallowfall/0 57.61,27.43 < 10
Gain the "Glimmering Illumination" Buff |havebuff  Glimmering Illumination##442529 |only if not achieved(40848,10)
|tip A moth flies around inside the cave.
|tip It will toss out orbs towards circles that appear on the ground.
|tip Try to stand beneath the moth as it moves as you need 5 stacks of "Star Glimmer" in order gain Glimmering Illumination.
|tip Once you have Glimmering Illumination the chest will be revealed.
click Illuminated Footlocker##437211
collect Cave Spelunker's Torch##224552 |n
Collect the "Illuminated Footlocker" Treasure |achieve 40848/10 |goto Hallowfall/0 58.38,27.16
step
Enter the cave |goto Hallowfall/0 76.08,53.71 < 10
click Spore-Covered Coffer##419695
Collect the "Spore-Covered Coffer" Treasure |achieve 40848/11 |goto Hallowfall/0 76.77,53.84
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Mereldar Menace",{
description="Set a bad example.",
achieveid={40151},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
click Throwing Stone##412066
Use the Throwing Stone |invehicle Throwing Stone##219916 |achieve 40151/1 |goto Hallowfall/0 41.91,55.51
step
Set a Bad Example at the "Orphanage Window" |achieve 40151/1 |goto Hallowfall/0 41.91,55.51
|tip Look at the orphanage west of the rock.
|tip Aim up at the window.
|tip Use the "Throw Rock" ability on your action bar.
|tip If you don't get credit, try aiming for other spots.
step
Set a Bad Example at the "Notice Board" |achieve 40151/2 |goto Hallowfall/0 42.54,55.51
|tip Turn east, and hit the notice board.
|tip If you need to readjust positioning to have obstacles out the way, do so.
step
Set a Bad Example at the "Food Stall" |achieve 40151/3 |goto Hallowfall/0 42.45,54.39
|tip Turn Northeast, it's the furthest stall of 3.
|tip Aim for Merea Bright Steur if you're having trouble getting credit.
step
Set a Bad Example at the "Fountain" |achieve 40151/4 |goto Hallowfall/0 42.35,54.91
step
Set a Bad Example at the "Spice Stall" |achieve 40151/5 |goto Hallowfall/0 42.29,54.39
|tip The middle stall.
|tip Aim for the NPCs.
step
Drop the Stone |outvehicle Throwing Stone##219916
|only if not achieved(40151,8)
step
click Throwing Stone##412066
Use the Throwing Stone |invehicle Throwing Stone##219916 |achieve 40151/9 |goto Hallowfall/0 42.27,52.54
step
Set a Bad Example at the "Lamplighter Doorway" |achieve 40151/7 |goto Hallowfall/0 43.02,52.35
|tip Face east and hit the doorway of the building.
step
Set a Bad Example at the "Light and Flame" |achieve 40151/6 |goto Hallowfall/0 42.95,52.71
|tip Aim for Paige Ambleglow, outside the building.
step
Set a Bad Example at the "Barracks Doorway" |achieve 40151/8 |goto Hallowfall/0 41.32,52.96
|tip Southwest tent.
|tip Aim just above the doorway.
step
click Throwing Stone##412066
Use the Throwing Stone |invehicle Throwing Stone##219916 |achieve 40151/10 |goto Hallowfall/0 44.23,51.22
step
Set a Bad Example at the "Holy Oil" |achieve 40151/9 |goto Hallowfall/0 43.50,50.78
|tip Face west and aim for the center of the object.
step
Set a Bad Example at the "Airship Darting Board" |achieve 40151/10 |goto Hallowfall/0 44.68,51.77
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Beacon of Hope",{
description="Contribute Radiant Remnants to light lesser keyflames and complete the following quests.",
achieveid={40308},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Earn the "Beacon of Hope" Achievement |achieve 40308
|tip Refer to the "Spreading the Light Keyflame Weekly Quests" guide to accomplish this.
Click Here to Load the "Spreading the Light Keyflame Weekly Quests" Guide |confirm |next "Daily Guides\\The War Within (70-80)\\Spreading the Light Keyflame Weekly Quests"
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Igniting the Keyflames",{
description="Contribute 100 Radiant Remnants to any Keyflames.",
achieveid={40308},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
click Lesser Keyflame##411332
map Hallowfall/0
path	65.40,28.10	63.30,29.40	64.60,30.60	63.60,33.60	64.40, 30.90
path	65.80,24.40	64.40,18.70	61.50,17.50
collect Radiant Remnant##206350 |n
|tip You need as many as you haave to contribute.
Contribute #100# Radiant Remnants to any Keyflames |achieve 40313
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Sharing the Light",{
description="Complete each of these bonus events found at the larger activated Keyflames.",
achieveid={40311},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
collect 20 Radiant Remnant##206350 |n
click Bleak Sand Keyflame##421502
|tip Turn in the Radiant Ramnants to the Keyflame.
accept Bleak Sand##79471 |achieve 40311/1 |goto Hallowfall/0 62.05,12.69
step
use Sentry Flare##211073
Kill enemies around this area |kill Shadowtide Corruptor##220838, Bloodswell Creation##220891, Drowned Arathi##218024, Shadowtide Bulwark##220886, Shadowtide Disciple##220844, Kobyss Swordsnapper##216984, Blaughk Slime Eyes##218073
Protect the Bleak Sand Keyflame #100# |q 79471/1 |achieve 40311/1 |goto Hallowfall/0 62.05,12.69
step
Complete the "Bleak Sand" Keyflame Event |achieve 40311/1 |goto Hallowfall/0 61.98,12.78
step
collect 20 Radiant Remnant##206350 |n
click Faded Shore Keyflame##421501
accept Waters of War##79470 |achieve 40311/2 |goto Hallowfall/0 61.92,16.96
step
use Sentry Flare##211073
Kill enemies around this area |kill Kobyss Swordsnapper##216984, Blaughk Slime Eyes##218073, Drowned Arathi##218024, Kobyss Shellbreaker##213598, Kobyss Soul-Twister##217505, Kobyss Soul-Twister##220905, Klugi the Skullhunter##218074, Blaughk Slime Eyes##218073, Nocturnus##216964, Coralscar##216965, Sandmaw##217511, Shadowsand##220759
Protect the Faded Shore Keyflame #100# |q 79470/1 |goto Hallowfall/0 61.92,16.96
step
Complete the "Faded Shore" Event |achieve 79470/1 |goto Hallowfall/0 61.92,16.96
step
collect 20 Radiant Remnant##206350 |n
click Duskrise Acreage Keyflame##403492
accept Lurking Below##79469 |goto Hallowfall/0 61.83,31.99
stickystart "Use_Dirt_Cracker_Pick"
step
use the Dirt-Cracker Pick##215467 |notinsticky
|tip Use it on disturbed dirt on the ground around this area. |notinsticky
kill 8 Shadow-Chasm Worm##217962 |q 79469/1 |goto Hallowfall/0 61.83,31.99
step
label "Use_Dirt_Cracker_Pick"
use the Dirt-Cracker Pick##215467 |notinsticky
|tip Use it on disturbed dirt on the ground around this area. |notinsticky
Use the Dirt-Cracker Pick |q 79469/2 |goto Hallowfall/0 61.96,32.08
step
Complete the "Duskrise Acreage Keyflame" Event  |achieve 40311/3 |goto Hallowfall/0 61.83,31.99
step
collect 20 Radiant Remnant##206350 |n
click Stillstone Pond Keyflame##415362
accept Bog Beast Banishment##79380 |goto Hallowfall/0 66.51,23.91
step
Kill enemies around this area |kill Vileroot##214783, Wretchroot##216630, Mawblossom##216214, Blighttwine##214817, Witherthorn##214790, Shadowstarved Bullfrog##214406, Stillpond Sparkbug##214821, Stillpond Tidewader##214835
Elimenate the StillStone Threat #100# |q 79380/1 |goto Hallowfall/0 66.51,23.91
step
Complete the "Stillstone Pond Keyflame" Event |achieve 40311/5 |goto Hallowfall/0 66.51,23.91
step
collect 20 Radiant Remnant##206350 |n
click Fungal Field Keyflame##415560
accept Cutting Edge##78590 |goto Hallowfall/0 63.79,32.12
step
Kill enemies around this area |kill Invasive Lashroom##206194, Shadowleaf Sprout##214001, Shadowleaf Rootling##214270
Slay #60# Fingal Enemies |q 78590/1 |goto Hallowfall/0 63.79,32.12
step
click Hallowfall Scythe##411656
|tip On the ground at random locations around this area.
collect Hallowfall Scythe# |q 78590/2 |goto Hallowfall/0 63.79,32.12
step
Complete the "Fungal Field Keyflame" Event |achieve 40311/6  |goto Hallowfall/0 63.79,32.12
step
collect 20 Radiant Remnant##206350 |n
click Torchlight Mine Keyflame##421492
accept The Midnight Sentry##78657 |goto Hallowfall/0 63.93,19.74
step
Kill Shadowed enemies around this area |kill Shadowed Gloomrender##217063, Shadowed Gloomrender##219644
use the Sentry Flare##211073
Slay #10# Shadowed Gloomrenders |q 78657/1 |goto Hallowfall/0 63.93,19.74
step
Torchlight Mine (The Midnight Sentry) |achieve 40311/4 |goto Hallowfall/0 63.93,19.74
step
collect 20 Radiant Remnant##206350 |n
click Light's Blooming Keyflame##415734
accept Glowing Harvest##79329 |goto Hallowfall/0 63.52,28.39
step
Kill enemies around this area
collect 12 Remnant Satchel##212755 |q 79329/1 |goto Hallowfall/0 63.52,28.39
step
Complete the "Light's Blooming Keyflame" Event |achieve 40311/7 |goto Hallowfall/0 63.52,28.39
step
collect 20 Radiant Remnant##206350 |n
click Whirring Field Keyflame##415737
accept A Better Cabbage Smacker##76338 |goto Hallowfall/0 64.97,29.40
stickystart "Collect_8_Gyro_Optic_Spring"
stickystart "Collect_5_Cleanbrass_Bolts"
step
click Control-Gear##419608 |goto Hallowfall/0 64.58,26.00
|tip It can spawn in several locations around this area.
Return the Control-Gear to Ezgi |q 76338/3 |goto Hallowfall/0 65.21,29.07
step
label "Collect_8_Gyro_Optic_Spring"
kill Dark-Crazed Harvester##206067+
collect 8 Gyro-Optic Spring##206518 |q 76338/1
step
label "Collect_5_Cleanbrass_Bolts"
Kill enemies around this area |kill Dark-Crazed Harvester##206067, Crazed Cabbage Smacker##206514, Deathpetal##206184, Moth'ethk##206203, Toadstomper##207803, Duskshadow##221179, Ravageant##207826, Finclaw Bloodtide##207780
collect 5 Cleanbrass Bolts##206519 |q 76338/2
step
Complete the "Whirring Field Keyflame" Event |achieve 40311/8 |goto Hallowfall/0 64.97,29.40
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Children's Entertainer",{
description="Complete every game with the orphans of Mereldar.",
achieveid={40150},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
stickystart "Quest_Reminder"
step
talk Arathi Orphan##218515
|tip Upstairs inside the building.
|tip Pick any dialogue option.
Play "Who is scariest?" with the Orphans of Mereldar |achieve 40150/1 |goto Hallowfall/0 41.73,55.66
step
clicknpc Arathi Orphan##218456
|tip They will run in circles around this area.
Play "Tag" with the Orphans of Mereldar |achieve 40150/2 |goto Hallowfall/0 41.84,55.17
step
talk Arathi Orphan
Select _"I can play."_
|tip Use the abilities on your action bar.
|tip Use the abilities {o}until they kill you{}.
Play "Scary Monster" with the Orphans of Mereldar |achieve 40150/3 |goto Hallowfall/0 42.02,55.43
step
talk Arathi Orphan
Select _"I'm ready for a challenge"_ |goto Hallowfall/0 41.98,55.60
|tip Traverse to the other side of the plaground WITHOUT touching the ground.
|tip {o}Druids{} with Wild Charge can use it to help traverse the platforming.
|tip {b}Mage{} can use Alter Time at the goal and skip the platforming.
|tip {g}Monks{} can use Transcendence at the goal and skip the platforming.
|tip {p}Warlocks{} can place Demonic Circle at the goal and skip the platforming.
clicknpc
Play "Floor is Undersea" with the Orphans of Mereldar |achieve 40150/4 |goto Hallowfall/0 41.71,55.26
step
talk Arathi Orphan##218493
Begin Playing with the Orphan |invehicle |goto Hallowfall/0 41.90,55.53 |achieve 40150/5
step
Play "Hit the Target" with the Orphans of Mereldar |goto Hallowfall/0 42.00,55.40 |achieve 40150/5
|tip Use the ability on your action bar.
|tip Aim at one of the {o}red and white targets{} nearby.
step
talk Arathi Orphan
Select _"I can play."_ |goto Hallowfall/0 41.88,55.26
clicknpc Arathi Orphan
|tip Upstairs inside the orphanage.
Play "Hide and Seek" with the Orphans of Mereldar |achieve 40150/6 |goto Hallowfall/0 41.75,55.80
step
talk Arathi Orphan
Select _"I'm ready for a challenge."_ |goto Hallowfall/0 41.88,55.26
clicknpc Arathi Orphan
|tip Wait here for them to run past.
Play "Hide and Seek - Challenge" with the Orphans of Mereldar |achieve 40150/7 |goto Hallowfall/0 43.25,52.85
step
talk Arathi Orphan
Select _"I'm ready for a challenge."_ |goto Hallowfall/0 41.98,55.58
Select _"Bring it on."_
|tip Traverse to the other side of the plaground WITHOUT touching the ground.
|tip {o}Druids{} with Wild Charge can use it to help traverse the platforming.
|tip {b}Mage{} can use Alter Time at the goal and skip the platforming.
|tip {g}Monks{} can use Transcendence at the goal and skip the platforming.
|tip {p}Warlocks{} can place Demonic Circle at the goal and skip the platforming.
clicknpc Arathi Orphan
Play "Floor is Undersea - Challenge" with the Orphans of Mereldar |achieve 40150/8 |goto Hallowfall/0 41.70,55.24
step
label "Quest_Reminder"
This Achievement Can Only Be Completed While on the Quest "Mereldar's Light" or the World Quest "Work Hard, Play Hard"
|tip Progress for this achievement should work across characters.
|tip "Floor is Undersea"and "Hide and Seek" Challenge can only be done during "Work Hard, Play Hard".
|only if not achieved(40150)
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Adventurer of Azj-Kahet",{
description="Complete 10 special encounters across Azj-Kahet.",
achieveid={40840},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete #10# Encounters across Hallowfall |achieve 40840
|tip There are 19 Special Encounters that appear throughout Hallowfall.
|tip Use points of interest to complete the encounters.
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Treasures of Azj-Kahet",{
description="Collect treasures across Azj-Kahet.",
achieveid={40828},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
click Nerubian Offerings##446101
|tip Beneath the platform.
Collect the Nerubian Offerings |achieve 40828/8 |goto Nerub'ar/1 31.63,20.77
step
click Trapped Trove##446421
|tip Inside the floating building.
|tip Avoid the web in the building.
collect Spinner##222966 |n
Collect the Trapped Trove Stash |achieve 40828/4 |goto Nerub'ar/1 67.30,74.35
step
click Harmonizing Instrument##434918
click Black Blood Extractor##445034
Gain the Unseeming Shift Debuff  |havebuff  Unseeming Shift##420847 |goto Azj-Kahet/1 61.54,83.94 |q 82520 |future
step
kill Corrupted Memory##223908
collect 1 Cache Key##223870 |goto Azj-Kahet/1 62.72,87.92 |q 82520 |future
step
click Memory Cache##446404
collect Mind Slurp##225544 |n
Collect the Memory Cache Supplies |goto Azj-Kahet/1 62.72,87.92 |q 82520 |future
step
click Disturbed Soil##201871
|tip Respawns every 5 minutes.
Collect the Disturbed Soil |achieve 40828/6 |goto Azj-Kahet/0 67.46,90.71
step
click Niffen Stash##446135
|tip Beneath the bridge.
Collect the Niffen Stash |achieve 40828/9 |goto Azj-Kahet/0 54.46,50.80
step
click Nest Egg##446423
|tip Up on the web, above ground.
collect Pillarnest Bonedrinker##221760 |n
Collect the Nest Egg Supplies |achieve 40828/5 |goto Azj-Kahet/0 49.56,43.71
step
click Concealed Contraband##446419
|tip Hidden within a passage in the rocks.
Collect the Concealed Contraband Stash |achieve 40828/1 |goto Azj-Kahet/0 34.04,60.99
step
click Missing Scout's Pack##446140
Collect the Missing Scout's Pack |achieve 40828/10 |goto Azj-Kahet/0 38.77,37.23
step
Enter the cave |goto Azj-Kahet/0 65.50,27.69 < 15
click Silk-Spun Supplies##446299
|tip Inside the cave.
Collect the Silk-Spun Supplies |achieve 40828/7 |goto Azj-Kahet/0 67.49,27.54
step
click "Weaving Supplies"##452708
|tip At the top of the tower.
collect Web-Vandal's Spinning Wheel##225347 |n
Collect the Weaving Supplies |achieve 40828/3 |goto Azj-Kahet/0 78.61,33.19
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\You Can't Hang With Us",{
description="Be expunged from the City of Threads by guards.",
achieveid={40634},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Stand Next to the Guard
|tip They will become hostile.
|tip You will need to get 10 stacks of Eradicator's Mark.
|tip The guards will be attacking you all the while, so bring a potion just in case you can't self heal.
Earn the "You Can't Hang With Us" Achievement |achieve 40634 |goto Nerub'ar/1 56.28,13.28
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\The Unseeming",{
description="Be expunged from the City of Threads by guards.",
achieveid={40633},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Stand in the Bloody Pool
|tip You will take continuous damage as well as be attacked while the stacks gather.
|tip Bring a potion just in case you can't self heal.
Gain #100# Stacks of Unseeming Shift |achieve 40633 |goto Azj-Kahet/0 67.25,83.58
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Worm Theory",{
description="Complete 3 world quests that appear in Rak-Ush and the Wormlands.",
achieveid={40869},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete the Following World Quests in Rak-Ush and the Wormlands:
|tip Refer to the World Quest Guide to accomplish this.
Grub Run |achieve 40869/1
Wormcraft Rumble |achieve 40869/2
Worm Sign, Sealed, Delivered |achieve 40869/3
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Itsy Bitsy Spider",{
description="Wave to the following weave-rats.",
achieveid={40624},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
talk Webster##227217
"/wave" at Webster |achieve 40624/1 |goto Dornogal/0 31.62,63.15
[Azj-Kahet/0 57.07,41.75]
step
talk Spindle##230098
'|talk 216213
|tip There are several locations Spindle can spawn.
"/wave" at Spindle |achieve 40624/2 |goto Dornogal/0 46.19,50.09 |script DoEmote("WAVE")
[Nerub'ar/1 87.78,59.31]
[Azj-Kahet/0 55.64,43.95]
[Nerub'ar/1 56.04,32.89]
step
talk Scampering Weave-Rat##217468
|tip Walking around this area.
"/wave" at a Scampering Weave-Rat |achieve 40624/5 |goto Nerub'ar/1 47.33,14.34
step
talk Bobbin##224734
"/wave" at Bobbin |achieve 40624/6 |goto Azj-Kahet/0 56.37,43.33 |script DoEmote("WAVE")
step
talk Thimble##224885
"/wave" at Thimble  |achieve 40624/4 |goto Nerub'ar/1 55.88,32.50 |script DoEmote("WAVE")
step
talk Ru'murh##224192
|tip Look for the Rumor Broker that appears on the Minimap while in the City of Threads.
'|talk 224198
'|talk 224201
'|talk 224190
'|talk 224200
'|talk 224196
'|talk 224199
'|talk 224195
|tip There are a lot of places Ru'murh can spawn.
|tip Making a '/target Ru'murh' macro and flying around the city may be required.
|tip More coordinates will be added as they are confirmed spawn points.
"/wave" at Ru'murh |achieve 40624/3 |goto Nerub'ar/0 55.70,47.83
[Nerub'ar/0 45.49,50.28]
|tip Inside the building.
[Nerub'ar/1 54.95,25.95]
|tip Inside the building.
[Nerub'ar/1 41.48,22.38]
[Nerub'ar/1 54.50,33.91]
|tip Inside the building.
[Nerub'ar/1 70.25,31.74]
[Nerub'ar/1 70.26,31.72]
[Nerub'ar/1 68.58,50.90]
[Azj-Kahet/0 64.18,74.98]
|tip Inside the building.
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Smelling History",{
description="Read the following Azj-Kakhet books while under the effects of Polymorphic Translation.",
achieveid={40542},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
stickystart "Reading_Buff"
step
talk Siesbarg##218192
buy 3 Potion of Polymorphic Translation: Nerubian##225784 |goto Nerub'ar/0 45.60,13.20 |achieve 40542
|tip They cost 33 Kej each.
|tip It's a 10 minute buff.
|tip There are 12 locations to visit.
step
click Strands of Memory##454328
|tip Inside the building.
Read the "Strands of Memory" Book |achieve 40542/1 |goto Nerub'ar/1 27.67,54.60
step
click Ethos of War Part 1##454343
Read the "Ethos of War, Part 1" Book |achieve 40542/2 |	goto Azj-Kahet/0 62.96,31.17
step
Enter the tunnel |goto Azj-Kahet/0 64.89,29.71 < 10
click Ethos of War Part 2##454344
|tip Inside the cave.
Read the "Ethos of War, Part 2" Book |achieve 40542/3 |goto Azj-Kahet/0 66.69,31.29
step
click Ethos of War Part 3##454348
|tip Inside the building.
Read the "Ethos of War, Part 3" Book |achieve 40542/4 |	goto Azj-Kahet/0 48.86,23.99
step
click Ethos of War Part 4##454350
|tip Inside the building.
Read the "Ethos of War, Part 4" Book |achieve 40542/5 |goto Azj-Kahet/0 43.25,25.58
step
Enter the building |goto Nerub'ar/1 40.02,33.86 < 10
click Queen Xekatha##454313
|tip Inside the building.
Read the "Queen Xekatha" Book |achieve 40542/6 |goto Nerub'ar/1 38.26,35.57
step
click Queen Anub'izek##454320
|tip On the stack of books inside the building.
Read the "Queen Anub'izek" Book |achieve 40542/7 |goto Nerub'ar/1 36.99,32.65
step
click Queen Zaltra##454316
|tip Inside the building.
Read the "Queen Zaltra" Book |achieve 40542/8 |goto 2213 38.42,32.27
step
Enter the building |goto Nerub'ar/1 39.75,38.77
click Treatise on Forms: Sages##454332
|tip Leaning against the desk inside the building.
Read the "Treatise on Forms: Sages" Book |achieve 40542/9 |goto Nerub'ar/1 38.22,39.02
step
click Treatise on Forms: Skitterlings##454330
|tip Inside the building.
Read the "Treatise on Forms: Skitterlings" Book |achieve 40542/10 |goto Nerub'ar/1 38.56,37.71
step
Enter the building |goto Nerub'ar/1 25.72,51.51 < 10
click Treatise on Forms: Lords##456927
|tip Inside the building.
Read the "Treatise on Forms: Lords" Book |achieve 40542/11 |goto Nerub'ar/1 23.65,51.07
step
click Treatise on Forms: Ascended##456928
|tip Inside the building.
Read the "Treatise on Forms: Ascended" Book |achieve 40542/12 |goto Nerub'ar/1 77.96,41.06
step
label "Reading_Buff"
use the Potion of Polymorphic Translation: Nerubian##225784
Gain the "Polymorphic Translation" Buff |complete hasbuff(456122) |achieve 40542
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Bookworm",{
description="Read the following books while under the effects of Polymorphic Translation.",
achieveid={40629},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
talk Siesbarg##218192
buy 1 Potion of Polymorphic Translation: Nerubian##225784 |goto Nerub'ar/0 45.60,13.20 |achieve 40629
|tip They cost 33 Kej each.
|tip It's a 10 minute buff.
|tip There are 3 locations to visit.
stickystart "Reading_Buff"
step
Enter the tunnel |goto Azj-Kahet/0 40.83,36.38 < 10
click Entomological Essay on Grubs Volume 1##454335
|tip Inside the cave.
Read the "Entomological Essay on Grubs, Volume 1" Book |achieve 40629/1 |goto Azj-Kahet/0 40.10,39.80
step
click Entomological Essay on Grubs Volume 2##454336
|tip Inside the cave.
Read the "Entomological Essay on Grubs, Volume 2" Book |achieve 40629/2 |goto Azj-Kahet/0 39.79,40.51
step
click Entomological Essay on Grubs Volume 3##454338
|tip Inside the cave.
Read the "Entomological Essay on Grubs, Volume 3" Book |achieve 40629/3 |goto Azj-Kahet/0 39.09,42.58
step
label "Reading_Buff"
use the Potion of Polymorphic Translation: Nerubian##225784
Gain the "Polymorphic Translation" Buff |complete hasbuff(456122) |achieve 40629
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\A Song of Secrets",{
description="Complete the questline on Siren Isle.",
achieveid={41045},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete the "Siren Isle" Questline |achieve 41045
|tip Refer to the guide to accomplish this.
Click Here to Load the "Siren Isle" Quest Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Siren Isle"
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Siren-ity Now!",{
description="Complete all weekly quests on the Siren Isle.",
achieveid={41042},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete the Following Weekly Quests on Siren Isle: |only if not achieved(41042)
Legacy of the Vrykul |achieve 41042/1 |only if not achieved(41042,1)
Tides of Greed |achieve 41042/2 |only if not achieved(41042,2)
Serpent's Wrath |achieve 41042/3 |only if not achieved(41042,3)
Historical Documents |achieve 41042/4 |only if not achieved(41042,4)
Rock 'n' Stone Revival |achieve 41042/5 |only if not achieved(41042,5)
Longship Landing |achieve 41042/6 |only if not achieved(41042,6)
Secure the Perimeter |achieve 41042/7 |only if not achieved(41042,7)
A Ritual of Runes |achieve 41042/8 |only if not achieved(41042,8)
Cannon Karma |achieve 41042/9 |only if not achieved(41042,9)
Pirate Plunder |achieve 41042/10 |only if not achieved(41042,10)
Ooker Dooker Literature Club |achieve 41042/11 |only if not achieved(41042,11)
Silence the Song |achieve 41042/12 |only if not achieved(41042,12)
Cart Blanche |achieve 41042/13 |only if not achieved(41042,13)
Ruffled Pages |achieve 41042/14 |only if not achieved(41042,14)
Crystal Crusade |achieve 41042/15 |only if not achieved(41042,15)
Beach Comber |achieve 41042/16 |only if not achieved(41042,16)
Three Heads of the Deep |achieve 41042/17 |only if not achieved(41042,17)
|tip Only quests you've not completed will appear. |only if not achieved(41042)
Complete the "Siren-ity Now!" Achievement |achieve 41042 |only if achieved(41042)
|tip Refer to the Siren Isle Weekly Quest Guide to accomplish this. |only if not achieved(41042)
Click Here to Load the "Siren Isle Weekly Quest" Guide |confirm |next "Daily Guides\\The War Within (70-80)\\Siren Isle Weekly Quests" |only if not achieved(41042)
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Excavation Projects",{
description="Contribute to each of the following excavations on the Siren Isle Command Map.",
achieveid={41043},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Contribute to the Following Excavations on the Siren Isle Command Map: |only if not achieved(41043)
Complete "The Drowned Lair" Excavation Project |achieve 41043/1 |goto Siren Isle/0 69.31,43.21 |only if not achieved(41043,1)
Complete "The Drain" Excavation Project |achieve 41043/2 |goto Siren Isle/0 69.31,43.21 |only if not achieved(41043,2)
Complete the "Shuddering Hollow" Excavation Project |achieve 41043/3 |goto Siren Isle/0 69.31,43.21 |only if not achieved(41043,3)
|tip All 3 events need to be completed before contribution resets.
|tip Only those not completed will appear.
achieve 41043
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Treasures of the Storm",{
description="Open 10 Runed Storm Caches found around Siren Isle.",
achieveid={41131},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
map Siren Isle
path loop off; bounce
path	70.20,34.00	62.00,44.80	61.40,61.50	60.80,62.30	68.30,73.60
path	63.80,85.00	53.80,75.60	49.70,75.80	49.20,72.80	51.50,63.50
path	44.90,62.80	39.60,66.80	31.00,72.40	40.00,52.10	42.20,47.50
path	39.10,40.70	37.90,38.80	38.90,20.20	51.60,48.30	53.70,44.60
path	53.00,40.70	52.10,40.	52.50,32.40
Look for Chests Along the Path
|tip When you're near one, gusts of wind will guide you towards them.
|tip You should be able to loot chests that other people open.
click Runed Storm Cache##500407
Open #10# Runed Storm Caches |achieve 41131
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\A Choir of Citrines",{
description="Collect each of the Citrine gems on the Siren Isle.",
achieveid={41050},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete the "Siren Isle" Questline |achieve 41045
|tip Refer to the guide to accomplish this.
Click Here to Load the "Siren Isle" Quest Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Siren Isle"
step
Windsinger's Runed Citrine |achieve 41050/9
|tip From the Reforged Anew Questline.
step
talk Taljori##233259
Select _"What have you got for sale?"_ |gossip 125439
buy Seabed Leviathan's Citrine##228647  |achieve 41050/5  |goto Siren Isle/0 65.70,41.71
|tip It can also be collected from from the weekly quest "Serpent's Wrath".
buy Legendary Skipper's Citrine##228646 |achieve 41050/4 |goto Siren Isle/0 65.70,41.71
|tip It can also be collected from the weekly quest "Tides of Greed".
buy Roaring War-Queen's Citrine##228648 |achieve 41050/6 |goto Siren Isle/0 65.70,41.71
step
talk Didi the Wrench##231997
Kill enemies around this area
|tip Anything from Siren Isles can drop it.
|tip It can also be found in chests.
buy Thunderlord's Crackling Citrine##228634 |achieve 41050/10 |goto Siren Isle/0 71.29,45.93
step
talk Apprentice Tanmar##231536
buy Mariner's Hallowed Citrine##228644 |achieve 41050/3 |goto Siren Isle/0 72.20,42.97
step
Storm Sewer's Citrine |achieve 41050/1
Old Salt's Bardic Citrine |achieve 41050/2
|tip From Nerathor during the "Drowned Lair" Command Map Event.
Undersea Overseer's Citrine |achieve 41050/11
Squall Sailor's Citrine |achieve 41050/12
|tip Possible drop from "The Drain" Command Map Event.
Stormbringer's Runed Citrine |achieve 41050/7
Fathomdweller's Runed Citrine |achieve 41050/8
|tip From Stalagnarok during the "Shuddering Hollow" Command Map Event.
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Slate of the Union",{
description="Aid the Assembly of the Deeps by completing the achievements below.",
achieveid={41186},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete the "Adventurer of the Isle of Dorn" Achievement |achieve 41186/1
Complete the "Treasures of the Isle of Dorn" Achievement |achieve 41186/2
Complete the "Flat Earthen" Achievement |achieve 41186/3
Complete the "We're Here All Night" Achievement |achieve 41186/4
Complete the "A Star of Dorn" Achievement |achieve 41186/5
Complete the "Rocked to Sleep" Achievement |achieve 41186/6
|tip Refer to the respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Rage Aside the Machine",{
description="Aid the Assembly of the Deeps by completing the achievements below.",
achieveid={41187},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete the "Adventurer of The Ringing Deeps" Achievement |achieve 41187/1
Complete the "Treasures of The Ringing Deeps" Achievement |achieve 41187/2
Complete the "It's Not Much, But It's Honest Work" Achievement |achieve 41187/3
Complete the "Super Size Snuffling" Achievement |achieve 41187/4
Complete the "Notable Machines" Achievement |achieve 41187/5
Complete the "Not So Quick Fix" Achievement |achieve 41187/6
Complete the "To All the Slimes I Love" Achievement |achieve 41187/7
|tip Refer to the respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Isle Remember You",{
description="Complete all the Siren Isle achievements listed within.",
achieveid={41133},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
achieve 41133/1  |only if not achieved(41133,1)
|tip Refer to the "A Song of Secrets" Guide to accomplish this. |only if not achieved(41133,1)
loadguide "Achievement Guides\\The War Within Achievements\\Exploration\\A Song of Secrets" |only if not achieved(41133,1)
achieve 41133/2 |only if not achieved(41133,2)
|tip Refer to the "Siren-ity Now!" Guide to accomplish this. |only if not achieved(41133,2)
loadguide "Achievement Guides\\The War Within Achievements\\Exploration\\Siren-ity Now!" |only if not achieved(41133,2)
achieve 41133/3 |only if not achieved(41133,3)
|tip Refer to the "Excavation Projects" Guide to accomplish this. |only if not achieved(41133,3)
loadguide "Achievement Guides\\The War Within Achievements\\Exploration\\Excavation Projects" |only if not achieved(41133,3)
achieve 41133/4 |only if not achieved(41133,4)
|tip Refer to the "Clean Up on Isle Siren" Guide to accomplish this. |only if not achieved(41133,4)
loadguide "Achievement Guides\\The War Within Achievements\\Exploration\\Clean Up on Isle Siren" |only if not achieved(41133,4)
achieve 41133/5 |only if not achieved(41133,5)
|tip Refer to the "Treasures of the Storm" Guide to accomplish this. |only if not achieved(41133,5)
loadguide "Achievement Guides\\The War Within Achievements\\Exploration\\Treasures of the Storm" |only if not achieved(41133,5)
achieve 41133/6 |only if not achieved(41133,6)
|tip Refer to the "A Choir of Citrines" Guide to accomplish this. |only if not achieved(41133,6)
loadguide "Achievement Guides\\The War Within Achievements\\Exploration\\A Choir of Citrines" |only if not achieved(41133,6)
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Crystal Chronicled",{
description="Complete 10 of the following special encounters across Hallowfall.",
achieveid={41188},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete the "Adventurer of Hallowfall" Achievement |achieve 41188/1
Complete the "Treasure of Hallowfall" Achievement |achieve 41188/2
Complete "The Missing Lynx" Achievement |achieve 41188/3
Complete the "Mereldar Menace" Achievement |achieve 41188/4
Complete the "Bilbo Archivist" Achievement |achieve 41188/5
Complete the "Beacon of Hope" Achievement |achieve 41188/6
Complete the "Sharing the Light" Achievement |achieve 41188/7
Complete the "Lost and Found" Achievement |achieve 41188/8
Complete the "Igniting the Keyflames" Achievement |achieve 41188/9
Complete the "Children's Entertainer" Achievement |achieve 41188/10
|tip Refer to the respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Exploration\\Azj the World Turns",{
description="Complete 10 special encounters across Azj-Kahet.",
achieveid={41189},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Earn the "Adventurer of Azj-Kahet" Achievement |achieve 41189/1
Earn the "Treasures of Azj-Kahet" Achievement |achieve 41189/2
Earn the "You Can't Hang With Us" Achievement |achieve 41189/3
Earn "The Unseeming" Achievement |achieve 41189/4
Earn the "Worm Theory" Achievement |achieve 41189/5
Earn the "Itsy Bitsy Spider" Achievement |achieve 41189/6
Earn the "Smelling History" Achievement |achieve 41189/7
Earn the "Bookworm" Achievement |achieve 41189/8
|tip Refer to the respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Leave No Treasure Unfound",{
description="Discover all treasures across 14 different delves.",
achieveid={40506},
patch='110002',
startlevel=70,
keywords={"War","Within","TWW"},
},[[
step
Complete the _"Kriegval's Rest Discoveries"_ Achievement |achieve 40506/1
Complete _"The Spiral Weave Discoveries"_ Achievement |achieve 40506/2
Complete _"The Underkeep Discoveries"_ Achievement |achieve 40506/3
Complete _"The Sinkhole Discoveries"_ Achievement |achieve 40506/4
Complete the _"Earthcrawl Mines Discoveries"_ Achievement |achieve 40506/5
Complete the _"Fungal Folly Discoveries"_ Achievement |achieve 40506/6
Complete the _"Mycomancer Cavern Discoveries"_ Achievement |achieve 40506/7
Complete the _"Skittering Breach Discoveries"_ Achievement |achieve 40506/8
Complete _"The Dread Pit Discoveries"_ Achievement |achieve 40506/9
Complete the _"Nightfall Sanctum Discoveries"_ Achievement |achieve 40506/10
Complete _"The Waterworks Discoveries"_ Achievement |achieve 40506/11
Complete the _"Tak-Rethan Abyss Discoveries"_ Achievement |achieve 40506/12
Complete the _"Excavation Sit 9 Discoveries"_ Achievement |achieve 40506/13
Complete the _"Sidestreet Sluice Discoveries"_ Achievement |achieve 40506/14
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\The Dread Pit Discoveries",{
description="Discover the treasure within The Dread Pit.",
achieveid={40812},
patch='110002',
startlevel=70,
keywords={"War","Within","TWW","Delves","Dread","Pit"},
},[[
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto The Dread Pit/0 41.05,45.52 |q 83677 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto The Dread Pit/0 36.26,16.65 |q 83659 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto The Dread Pit/0 57.84,27.62 |q 83678 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto The Dread Pit/0 57.47,56.15 |q 83658 |future
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\The Waterworkds Discoveries",{
description="Discover the treasure within The Waterworks.",
achieveid={40816},
patch='110002',
startlevel=70,
keywords={"War","Within","TWW","Waterworks"},
},[[
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto The Waterworks/0 49.91,24.58 |q 83684 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto The Waterworks/0 44.35,38.21 |q 83650 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto The Waterworks/0 47.91,53.51 |q 83667 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto The Waterworks/0 49.58,79.15 |q 83456 |future
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Fungal Folly Discoveries",{
description="Discover the treasure within Fungal Folly.",
achieveid={40803},
patch='110002',
startlevel=70,
keywords={"War","Within","TWW","Fungal","Folly"},
},[[
step
Jump across with this mushroom |goto Fungal Folly/0 54.02,51.68 < 5
Jump up with this mushroom |goto Fungal Folly/0 55.74,43.26 < 5
click Sturdy Chest##223116
Open the Sturdy Chest |goto Fungal Folly/0 53.44,41.49 |q 83690 |future
step
Jump down here |goto Fungal Folly/0 47.30,37.95 < 10
click Sturdy Chest##223116
|tip Underwater.
Open the Sturdy Chest |goto Fungal Folly/0 49.49,35.93 |q 83452 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Fungal Folly/0 34.48,65.69 |q 83689 |future
step
Jump up here |goto Fungal Folly/0 34.81,68.27 < 5
Jump up here |goto Fungal Folly/0 30.86,68.29 < 5
click Sturdy Chest##223116
Open the Sturdy Chest |goto Fungal Folly/0 32.82,73.96 |q 83671 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Fungal Folly/0 58.63,46.91 |q 83702 |future
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Kriegval's Rest Discoveries",{
description="Discover the treasure within Kriegval's Rest.",
achieveid={40807},
patch='110002',
startlevel=70,
keywords={"War","Within","TWW","Kriegval's","Rest"},
},[[
click Sturdy Chest##223116
Open the Sturdy Chest |goto Kriegval's Rest/0 46.23,19.74 |q 83665 |future
step
Jump up here |goto Kriegval's Rest/0 63.91,54.26 < 5
click Sturdy Chest##223116
|tip It's on top the makeshift path.
Open the Sturdy Chest |goto Kriegval's Rest/0 62.10,52.86 |q 83698 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Kriegval's Rest/0 74.46,70.13 |q 83683 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Kriegval's Rest/0 69.97,85.23 |q 83666 |future
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Mycomancer Cavern Discoveries",{
description="Discover the treasure within Mycomancer Cavern.",
achieveid={40808},
patch='110002',
startlevel=70,
keywords={"War","Within","TWW","Mycomancer","Cavern"},
},[[
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Mycomancer Cavern/0 49.85,21.58 |q 83652 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Mycomancer Cavern/0 63.31,45.37 |q 83691 |future
step
map Mycomancer Cavern/0
path loop off; dist 5
path	53.16,41.93	59.09,34.68	63.90,36.16	65.32,37.18	68.72,41.38
Jump up using the mushrooms
click Sturdy Chest##223116
Open the Sturdy Chest |q 83455 |future
step
Jump down here carefully |goto Mycomancer Cavern/0 41.50,61.81
click Sturdy Chest##223116
Open the Sturdy Chest |goto Mycomancer Cavern/0 40.71,61.44 |q 83672 |future
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Nightfall Sanctum Discoveries",{
description="Discover the treasure within Nightfall Sanctum.",
achieveid={40809},
patch='110002',
startlevel=70,
keywords={"War","Within","TWW","Nightfall","Sanctum"},
},[[
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Nightfall Sanctum/0 77.78,36.12 |q 83688 |future
step
click Sturdy Chest##223116
|tip Walk over the edge at an angle to towards the chest.
Open the Sturdy Chest |goto Nightfall Sanctum/0 70.87,44.41 |q 83670 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Nightfall Sanctum/0 39.10,74.35 |q 83454 |future
step
Jump down towards the platform |goto Nightfall Sanctum/0 38.68,48.38 < 5
click Sturdy Chest##223116
Open the Sturdy Chest |goto Nightfall Sanctum/0 40.06,36.65 |q 83701 |future
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Skittering Breach Discoveries",{
description="Discover the treasure within Skittering Breach.",
achieveid={40810},
patch='110002',
startlevel=70,
keywords={"War","Within","TWW","Skittering","Breach"},
},[[
step
click Sturdy Chest##223116
|tip Inside the building.
Open the Sturdy Chest |goto Skittering Breach/0 50.78,65.81 |q 83679 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Skittering Breach/0 27.43,26.46 |q 83660 |future
step
click Sturdy Chest##223116
|tip Outside the building.
Open the Sturdy Chest |goto Skittering Breach/0 55.92,24.17 |q 83696 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Skittering Breach/0 66.75,14.63 |q 83680 |future
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\The Sinkhole Discoveries",{
description="Discover the treasure within The Sinkhole.",
achieveid={40813},
patch='110002',
startlevel=70,
keywords={"War","Within","TWW","The","Sinkhole"},
},[[
step
click Sturdy Chest##223116
|tip Underwater near the start.
Open the Sturdy Chest |goto The Sinkhole/0 52.22,13.37 |q 83453 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto The Sinkhole/0 43.48,60.65 |q 83668 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto The Sinkhole/0 72.56,61.21 |q 83700 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto The Sinkhole/0 48.40,69.23 |q 83685 |future
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Tak-Rethan Abyss Discoveries",{
description="Discover the treasure within Tak-Rethan Abyss.",
achieveid={40811},
patch='110002',
startlevel=70,
keywords={"War","Within","TWW","Tak-Rethan","Abyss"},
},[[
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Tak-Rethan Abyss/0 59.75,24.83 |q 83651 |future
step
click Sturdy Chest##223116
|tip On top of the coral.
|tip You'll have to jump to it to reach.
Open the Sturdy Chest |goto Tak-Rethan Abyss/0 64.75,49.19 |q 83686 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Tak-Rethan Abyss/0 44.78,49.76 |q 83687 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Tak-Rethan Abyss/0 35.14,58.61 |q 83669 |future
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\The Spiral Weave Discoveries",{
description="Discover the treasure within The Spiral Weave.",
achieveid={40814},
patch='110002',
startlevel=70,
keywords={"War","Within","TWW","The","Spiral","Weave"},
},[[
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto The Spiral Weave/0 50.02,46.22 |q 83649 |future
step
Progress through the scenario
Click the Grapple Point Here [The Spiral Weave/0 37.23,15.56]
click Sturdy Chest##223116
|tip On top of the beam.
Open the Sturdy Chest |goto The Spiral Weave/0 36.32,10.54 |q 83661 |future
step
Jump down here |goto The Spiral Weave/0 46.97,45.84 < 5
click Sturdy Chest##223116
Open the Sturdy Chest |goto The Spiral Weave/0 46.01,46.41 |q 83681 |future
step
Walk down onto the beam below |goto The Spiral Weave/0 44.29,47.10 < 5
click Sturdy Chest##223116
Open the Sturdy Chest |goto The Spiral Weave/0 42.20,47.86 |q 83662 |future
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Excavation Site 9 Discoveries",{
description="Discover the treasure within Excavation Site 9.",
achieveid={41100},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
click Sturdy Chest##223116
|tip Next to the head of the statue on top of the platforms.
|tip Use the platforms to the left to jump up and reach it.
Open the Sturdy Chest |goto Excavation Site 9/0 73.34,39.81 |q 86343 |future
step
Follow the path down |goto Excavation Site 9/0 65.09,57.75 < 10
click Sturdy Chest##223116
Open the Sturdy Chest |goto Excavation Site 9/0 57.02,46.81 |q 86345 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Excavation Site 9/0 50.92,61.52 |q 86347 |future
step
click Sturdy Chest##223116
|tip Between the two canopies.
Open the Sturdy Chest |goto Excavation Site 9/0 33.62,59.11 |q 86346 |future
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Sidestreet Sluice Discoveries",{
description="Discover the treasure within Sidestreet Sluice.",
achieveid={41101},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW","Sidestreet","Sluice"},
},[[
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Sidestreet Sluice/0 33.44,73.19 |q 86790 |future
step
click Sturdy Chest##223116
|tip On the ledge.
Open the Sturdy Chest |goto Sidestreet Sluice/2 77.26,39.48 |q 86789 |future
step
click Sturdy Chest##223116
|tip Down behind the sludge tank.
Open the Sturdy Chest |goto Sidestreet Sluice/0 61.70,65.77 |q 86787 |future
step
click Sturdy Chest##223116
|tip In the treasure room after clearing the delve.
Open the Sturdy Chest |goto Sidestreet Sluice/0 74.37,74.28 |q 86788 |future
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\The Underkeep Discoveries",{
description="Discover the treasure within The Underkeep.",
achieveid={40815},
patch='110002',
startlevel=70,
keywords={"War","Within","TWW","The","Underkeep"},
},[[
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto The Underkeep/0 35.88,34.63 |q 83664 |future
step
Click here if "Torture Victims" is the Active Story |confirm |next |only if not completedq(83682)
|tip You will need to wait for 'Torture Victims' to be active in order to attain this treasure. |only if not completedq(83682)
Click here if "Weaver Rescue" is the Active Story |confirm |next "Weaver" |only if not completedq(83663)
|tip You will need to wait for 'Weaver Rescue' to be active in order to attain this treasure. |only if not completedq(83663)
|only if not achieved(40815)
step
click Sturdy Chest##223116
|tip Progress through the delve.
Open the Sturdy Chest |goto The Underkeep/0 63.59,32.54 |q 83682 |future |next "End"
step
label "Weaver"
click Sturdy Chest##223116
Open the Sturdy Chest |goto The Underkeep/0 39.34,69.02 |q 83663 |future
step
label "End"
click Sturdy Chest##223116
Open the Sturdy Chest |goto The Underkeep/0 72.11,89.01 |q 83697 |future
|tip This is only available during the 'Torture Victims' Scenario.
Click Here if the "Torture Victims" Storyline Isn't Active |confirm |only if not completedq(83697)
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Earthcrawl Mines Discoveries",{
description="Discover the treasure within Earthcrawl Mines.",
achieveid={40806},
patch='110002',
startlevel=70,
keywords={"War","Within","TWW"},
},[[
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Earthcrawl Mines/0 45.26,14.76 |q 83440 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Earthcrawl Mines/0 43.54,26.89 |q 83438 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Earthcrawl Mines/0 32.81,40.03
Click Here to Continue |confirm |achieve 40806 |future
step
Jump Down Here |goto Earthcrawl Mines/0 34.50,34.28 < 3
click Sturdy Chest##223116
|tip On top of the crane.
Open the Sturdy Chest |goto Earthcrawl Mines/0 36.33,33.05 |q 83441 |future
step
click Sturdy Chest##223116
Open the Sturdy Chest |goto Earthcrawl Mines/0 53.12,82.07 |q 83439 |future
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\One Rank Higher",{
description="Defeat the One-Armed Bandit after activating one of the four Chip Defense Machines on normal or higher.",
achieveid={41119},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
kill One-Armed Bandit##228458
Activate One Chip Defense Machines located at these positions:
[Liberation of Undermine/1 80,55]
[Liberation of Undermine/1 58,49]
[Liberation of Undermine/1 66,29]
[Liberation of Undermine/1 66,80]
|tip The switches are within the Gallagio area of the raid.
|tip Doing so will enable additional mechanics during the fight:
|tip Gold Switch Increases the bosses health.
|tip Blue Switch randomly silences raid members.
|tip Purple Switch decreases healing raid members recieve.
|tip Red Switch summons fire rings that need to be dodged.
|tip
Defeat the One-Armed Bandit After Activating One of the Chip Defense Machines |achieve 41119
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Two Ranks Higher",{
description="Defeat the One-Armed Bandit after activating two of the four Chip Defense Machines on normal or higher.",
achieveid={41120},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
kill One-Armed Bandit##228458
Activate Two Chip Defense Machines located at these positions:
[Liberation of Undermine/1 80,55]
[Liberation of Undermine/1 58,49]
[Liberation of Undermine/1 66,29]
[Liberation of Undermine/1 66,80]
|tip The switches are within the Gallagio area of the raid.
|tip Doing so will enable additional mechanics during the fight:
|tip Gold Switch Increases the bosses health.
|tip Blue Switch randomly silences raid members.
|tip Purple Switch decreases healing raid members recieve.
|tip Red Switch summons fire rings that need to be dodged.
|tip
Defeat the One-Armed Bandit After Activating Two of the Chip Defense Machines |achieve 41120
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Three Ranks Higher",{
description="Defeat the One-Armed Bandit after activating three of the four Chip Defense Machines on normal or higher.",
achieveid={41121},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
kill One-Armed Bandit##228458
Activate Three Chip Defense Machines located at these positions:
[Liberation of Undermine/1 80,55]
[Liberation of Undermine/1 58,49]
[Liberation of Undermine/1 66,29]
[Liberation of Undermine/1 66,80]
|tip The switches are within the Gallagio area of the raid.
|tip Doing so will enable additional mechanics during the fight:
|tip Gold Switch Increases the bosses health.
|tip Blue Switch randomly silences raid members.
|tip Purple Switch decreases healing raid members recieve.
|tip Red Switch summons fire rings that need to be dodged.
|tip
Defeat the One-Armed Bandit After Activating Three of the Chip Defense Machines |achieve 41121
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Best In Class",{
description="Defeat the One-Armed Bandit after activating all four Chip Defense Machines on normal or higher.",
achieveid={41122},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
kill One-Armed Bandit##228458
Activate All Chip Defense Machines located at these positions:
[Liberation of Undermine/1 80,55]
[Liberation of Undermine/1 58,49]
[Liberation of Undermine/1 66,29]
[Liberation of Undermine/1 66,80]
|tip The switches are within the Gallagio area of the raid.
|tip Doing so will enable additional mechanics during the fight:
|tip Gold Switch Increases the bosses health.
|tip Blue Switch randomly silences raid members.
|tip Purple Switch decreases healing raid members recieve.
|tip Red Switch summons fire rings that need to be dodged.
|tip
Defeat the One-Armed Bandit After Activating All Four of the Chip Defense Machines |achieve 41122
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Quests\\War Within\\Fate of the Kirin Tor",{
description="Complete the two major storylines listed within the guide.",
achieveid={40791},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete the Following Storylines:
Arcane Desolation |achieve 40791/1
Strength Amidst Ruins |achieve 40791/2
|tip Complete 'The Fate of the Kirin Tor' guide to accomplish this.
Click Here to Load the "The Fate of the Kirin Tor" Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The Fate of the Kirin Tor"
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Delve Beyond",{
description="Complete 500 delves.",
achieveid={41095},
patch='110002',
startlevel=70,
keywords={"War","Within","TWW"},
},[[
step
Complete #500# Delves |achieve 41095
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Delve Infinite",{
description="Complete 1,000 delves.",
achieveid={41096},
patch='110002',
startlevel=70,
keywords={"War","Within","TWW"},
},[[
step
Complete #1000# Delves |achieve 41096
]])
QuestCore:RegisterGuide("Achievement Guides\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Delver's Dirigible Recovery",{
description="Complete the 'Ship it!' quest.",
achieveid={41751},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete The War Withing Campaign |q 83503 |future
|tip Use the guide to accomplish this.
Click Here to Load "The War Within Campaign" Guide|confirm |next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The War Within Campaign" |or
step
talk Brann Bronzebeard##206017
accept Bountiful Delves##81514 |goto Dornogal/0 47.39,44.40
step
collect Restored Coffer Key## |q 81514/2
|tip These come from 'Bountiful Delves' only.
|tip You will be able to identify one by a golden door instead of a brown one using the default interface options.
|tip You can also complete the Weekly Delve Quest and attain one from the Pinnacle Cache.
step
talk Brann Bronzebeard##206017
turnin Bountiful Delves##81514 |goto Dornogal/0 47.39,44.40
accept Ship It!##81510 |goto Dornogal/0 47.39,44.40
step
click Brann Bronzebeard##206017
talk Brann Bronzebeard##206017
Select _"What do you have to show me?"_ |gossip 132121
Watch the Dialogue
Speak with Brann Bronzebeard |q 81510/1 |goto Dornogal/0 47.39,44.40
step
talk Brann Bronzebeard##206017
turnin Ship It!##81510 |goto Dornogal/0 47.39,44.40
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Quests\\War Within\\Read Between the Lines",{
description="Read through seven lore books located throughout Undermine.",
achieveid={41588},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete the First 4 Chapters of Undermine |complete achieved(40900,1) and achieved(40900,2) and achieved(40900,3) and achieved(40900,4) |or
|tip Refer to the Undermine guides to accomplish this.
Click Here to Load the "Undermine (Story Only)" Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)" |or
Click Here to Load the "Undermine (Full Zone)" Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)" |or
step
click Extractor Drill X-78 Safety Guide##502914
|tip Inside the cave.
Read the "Extractor Drill X-78 Safety Guide" Lore Book |goto The Ringing Deeps/0 67.25,98.09 |q 86569 |future
step
click Rocket Drill Safety Manual##499605
Read the "Rocket Drill Safety Manual" Lore Book |achieve 41588/1 |goto The Ringing Deeps/0 72.90,73.15
step
click Sewer Gate
Jump into the Sewer Gate |goto Undermine/0 33.80,57.56
click Second Half of Noggenfogger's Journal##502902
|tip On the shelf inside the sewer.
Read the "Second Half of Noggenfogger's Journal" Lore Book |goto Undermine/0 32.82,58.97 |q 86571 |future
step
click A Threatening Letter##502908
|tip Downstairs inside the building.
Read the "A Threatening Letter" Lore Book |goto Undermine/0 27.30,70.77 |q 86567 |future
step
click Gallywix's Notes##502903
|tip Inside the cave.
Read the "Gallywix's Notes" Lore Book |achieve 41588/7 |goto Undermine/0 60.96,64.40 |q 86573 |future
step
click Misplaced Work Order##502917
|tip On top of the crates.
Read the "Misplaced Work Order" Lore Book |goto Undermine/0 65.63,14.21 |q 86568 |future
step
click Sewer Gate
Jump into the Sewer Gate |goto Undermine/0 40.51,28.61
click First Half of Noggenfogger's Journal##502893
Read the "First Half of Noggenfogger's Journal" Lore Book |goto Undermine/0 40.40,28.51 |q 86572 |future
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Pet Battles\\War Within\\Family Battler of Undermine",{
description="Complete the 10 achievements listed regarding the Undermine within the guide.",
achieveid={41551},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Earn the Following Achievements:
Aquatic Battler of Undermine |achieve 41551/1
Beast Battler of Undermine |achieve 41551/2
Critter Battler of Undermine |achieve 41551/3
Dragonkin Battler of Undermine |achieve 41551/4
Elemental Battler of Undermine |achieve 41551/5
Flying Battler of Undermine |achieve 41551/6
Humanoid Battler of Undermine |achieve 41551/7
Magic Battler of Undermine |achieve 41551/8
Mechanical Battler of Undermine |achieve 41551/9
Undead Battler of Undermine |achieve 41551/10
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Pet Battles\\War Within\\Aquatic Battler of Undermine",{
description="Defeat the elite pets and trainers of Undermine with a team of all level 25 Aquatic pets.",
achieveid={41542},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
talk Creech##237718
|tip Beneath the steps.
Select _"Begin pet battle."_ |gossip 131878
|tip Use Zangar Crawler with skills 1,2,2.
|tip Use Snarly with skills 1,1,2.
|tip Use Any Level 25 Aquatic Pet.
Defeat Creech With a Team of Aquatic Battle Pets of Level 25 |achieve 41542/4 |goto Undermine/0 32.11,82.21
step
clicknpc Precision Powerdrill##237701
|tip Use Inland Croaker with skills 2,1,1.
|tip Use Spawn of G'nathus with skills 1,2,1.
|tip Use Skittering Eel as Back Up with skills 2,1,1.
Defeat Precision Powerdrill With a Team of Aquatic Battle Pets of Level 25 |achieve 41542/1 |goto Undermine/0 55.15,69.70
step
talk Prezly Wavecutter##237712
Select _"Begin pet battle."_ |gossip 131876
|tip Use Slimy Fangtooth with skills 2,2,2.
|tip Use Abyssal Lurker witih skills 2,1,1.
|tip Use Pengu with skills 1,1,1.
Defeat Prezly Wavecutter With a Team of Aquatic Battle Pets of Level 25 |achieve 41542/3 |goto Undermine/0 59.61,27.25
step
Run up the stairs |goto Undermine/0 39.39,25.87 < 7
Run up the stairs |goto Undermine/0 39.53,23.39 < 7
Run down the stairs |goto Undermine/0 39.21,20.85 < 7
talk Baxx the Purveyor##237703
Select _"Begin pet battle."_ |gossip 131873
|tip Use Storm-Infused Snapdragon with skills 1,1,2.
|tip Use Sandyback Crawler with skills 2,1,2.
|tip Use Slimy Fantooth with skills 1,1,1.
Defeat Baxx the Purveyor With a Team of Aquatic Battle Pets of Level 25 |achieve 41542/2 |goto Undermine/0 38.94,16.06
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Pet Battles\\War Within\\Beast Battler of Undermine",{
description="Defeat the elite pets and trainers of Undermine with a team of all level 25 Beast pets.",
achieveid={41543},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
talk Creech##237718
|tip Beneath the steps.
Select _"Begin pet battle."_ |gossip 131878
|tip Use Bunbo with skills 1,2,1.
|tip Use Slumbertooth with skills 1,1,1.
|tip Use any Level 25 Beast Pet.
Defeat Creech With a Team of Beast Battle Pets of Level 25  |achieve 41543/4 |goto Undermine/0 32.11,82.21
step
clicknpc Precision Powerdrill##237701
|tip Use Indigo with skills 1,1,2.
|tip Use Thunder Lizard Runt with skills 2,2,1.
|tip Use Snowfang with skills 2,2,2.
Defeat Precision Powerdrill With a Team of Beast Battle Pets of Level 25 |achieve 41543/1 |goto Undermine/0 55.15,69.70
step
talk Prezly Wavecutter##237712
Select _"Begin pet battle."_ |gossip 131876
|tip Use Moon Moon with skills 1,1,1.
|tip Use Dreadmaw with skills 2,1,2.
|tip Use Ragepeep with skills 1,1,1.
Defeat Prezly Wavecutter With a Team of Beast Battle Pets of Level 25 |achieve 41543/3 |goto Undermine/0 59.61,27.25
step
Run up the stairs |goto Undermine/0 39.39,25.87 < 7
Run up the stairs |goto Undermine/0 39.53,23.39 < 7
Run down the stairs |goto Undermine/0 39.21,20.85 < 7
talk Baxx the Purveyor##237703
Select _"Begin pet battle."_ |gossip 131873
|tip Use Thunderfoot Calf with skills 2,2,1.
|tip Use Silithid Hatchling with skills 2,1,2.
|tip Use Xu-Fu, Cub of Xuen with skills 1,2,2.
Defeat Baxx the Purveyor With a Team of Beast Battle Pets of Level 25 |achieve 41543/2 |goto Undermine/0 38.94,16.06
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Pet Battles\\War Within\\Critter Battler of Undermine",{
description="Defeat the elite pets and trainers of Undermine with a team of all level 25 Critter pets.",
achieveid={41541},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
talk Creech##237718
|tip Beneath the steps.
Select _"Begin pet battle."_ |gossip 131878
|tip Use Wolpertinger with skills 1,1,2.
|tip Use Snoozles with skills 2,1,1.
|tip Use Darkmoon Hatchling with skills 2,1,2.
Defeat Creech With a Team of Critter Battle Pets of Level 25  |achieve 41541/4 |goto Undermine/0 32.11,82.21
step
clicknpc Precision Powerdrill##237701
|tip Use Vicious Leporid with skills 1,1,2.
|tip Use Ivy with skills 2,1,1.
|tip Use Giant Woodworm with skills 1,1,1.
Defeat Precision Powerdrill With a Team of Critter Battle Pets of Level 25 |achieve 41541/1 |goto Undermine/0 55.15,69.70
step
talk Prezly Wavecutter##237712
Select _"Begin pet battle."_ |gossip 131876
|tip Use Nether Roach with skills 2,1,1.
|tip Use Crispin with skills 1,1,2.
|tip Use Darkmoon Hatchling with skills 1,2,1.
Defeat Prezly Wavecutter With a Team of Critter Battle Pets of Level 25 |achieve 41541/3 |goto Undermine/0 59.61,27.25
step
Run up the stairs |goto Undermine/0 39.39,25.87 < 7
Run up the stairs |goto Undermine/0 39.53,23.39 < 7
Run down the stairs |goto Undermine/0 39.21,20.85 < 7
talk Baxx the Purveyor##237703
Select _"Begin pet battle."_ |gossip 131873
|tip Use Alpine Chipmunk with skills 2,2,2.
|tip Use Ivy with skills 1,1,1.
|tip Use Endmite with skills 2,1,1.
Defeat Baxx the Purveyor With a Team of Critter Battle Pets of Level 25 |achieve 41541/2 |goto Undermine/0 38.94,16.06
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Pet Battles\\War Within\\Dragonkin Battler of Undermine",{
description="Defeat the elite pets and trainers of Undermine with a team of all level 25 Dragonkin pets.",
achieveid={41544},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
talk Creech##237718
|tip Beneath the steps.
Select _"Begin pet battle."_ |gossip 131878
|tip Use the Stormborne Whelpling with skills 2,2,2.
|tip Use the Nexus Whelpling with skills 2,2,2.
|tip Use the Stormie with skills 1,2,2.
Defeat Creech With a Team of Dragonkin Battle Pets of Level 25 |achieve 41544/4 |goto Undermine/0 32.11,82.21
step
clicknpc Precision Powerdrill##237701
|tip Use the Yu'la Broodling of Yu'lon with skills 1,2,2.
|tip Use the Twlight Whelpling with skills 2,1,1.
|tip Use the Red Dragonhawk Hatchling with skills 2,2,2.
Defeat Precision Powerdrill With a Team of Dragonkin Battle Pets of Level 25 |achieve 41544/1 |goto Undermine/0 55.15,69.70
step
talk Prezly Wavecutter##237712
Select _"Begin pet battle."_ |gossip 131876
|tip Use a Stormborne Whelp 1,2,2
|tip Use a Nexus Whelp 1,2,2
|tip Any 25 Dragonkin.
Defeat Prezly Wavecutter With a Team of Dragonkin Battle Pets of Level 25 |achieve 41544/3 |goto Undermine/0 59.61,27.25
step
Run up the stairs |goto Undermine/0 39.39,25.87 < 7
Run up the stairs |goto Undermine/0 39.53,23.39 < 7
Run down the stairs |goto Undermine/0 39.21,20.85 < 7
talk Baxx the Purveyor##237703
Select _"Begin pet battle."_ |gossip 131873
|tip Use a Thundering Serpent Hatchling with skills 1,1,2.
|tip Use a Nelthara with skills 1,2,1
|tip Use a Bronze Proto-Whelp as backup.
Defeat Baxx the Purveyor With a Team of Dragonkin Battle Pets of Level 25 |achieve 41544/2 |goto Undermine/0 38.94,16.06
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Pet Battles\\War Within\\Elemental Battler of Undermine",{
description="Defeat the elite pets and trainers of Undermine with a team of all level 25 Elemental pets.",
achieveid={41545},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
talk Creech##237718
|tip Beneath the steps.
Select _"Begin pet battle."_ |gossip 131878
|tip Use the Shiverweb Broodling with skills 2,1,2.
|tip Use the Wailing Lasher with skills 1,2,2.
|tip Use any Level 25 Elemental Pet.
Defeat Creech With a Team of Elemental Battle Pets of Level 25 |achieve 41545/4 |goto Undermine/0 32.11,82.21
step
clicknpc Precision Powerdrill##237701
|tip Use the Waxwick with skills 2,1,2.
|tip Use the Char with skills 1,1,2.
|tip Use the any Level 25 Elemental as backup.
Defeat Precision Powerdrill With a Team of Elemental Battle Pets of Level 25 |achieve 41545/1 |goto Undermine/0 55.15,69.70
step
talk Prezly Wavecutter##237712
Select _"Begin pet battle."_ |gossip 131876
|tip Use the Crimson Geode with skills 1,1,1.
|tip Use the Fel Flame with skills 1,1,1.
|tip Use the Pandaren Air Spirit with skills 1,1,1.
Defeat Prezly Wavecutter With a Team of Elemental Battle Pets of Level 25 |achieve 41545/3 |goto Undermine/0 59.61,27.25
step
Run up the stairs |goto Undermine/0 39.39,25.87 < 7
Run up the stairs |goto Undermine/0 39.53,23.39 < 7
Run down the stairs |goto Undermine/0 39.21,20.85 < 7
talk Baxx the Purveyor##237703
Select _"Begin pet battle."_ |gossip 131873
|tip Use the Stormwrath with skills 2,2,2.
|tip Use the Living Sandling with skills 1,2,2.
|tip Use the Sophic Amalgamation with skills 1,1,1.
Defeat Baxx the Purveyor With a Team of Elemental Battle Pets of Level 25 |achieve 41545/2 |goto Undermine/0 38.94,16.06
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Pet Battles\\War Within\\Flying Battler of Undermine",{
description="Defeat the elite pets and trainers of Undermine with a team of all level 25 Flying pets.",
achieveid={41546},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
talk Creech##237718
|tip Beneath the steps.
Select _"Begin pet battle."_ |gossip 131878
|tip Use the Crimson Bat Pup with skills 2,1,1
|tip Use the Bloodsting Wasp with skills 2,2,2
|tip Use Any Level 25 Flying Pet.
Defeat Creech With a Team of Flying Battle Pets of Level 25 |achieve 41546/4 |goto Undermine/0 32.11,82.21
step
clicknpc Precision Powerdrill##237701
|tip Use the Squally with skills 1,2,2.
|tip Use Flash with skills 1,1,1.
|tip Use Thundo with skills 1,2,1.
Defeat Precision Powerdrill With a Team of Flying Battle Pets of Level 25 |achieve 41546/1 |goto Undermine/0 55.15,69.70
step
talk Prezly Wavecutter##237712
Select _"Begin pet battle."_ |gossip 131876
|tip Use 3 Fel Afflicted Skyfin with skills 2,1,2.
Defeat Prezly Wavecutter With a Team of Flying Battle Pets of Level 25 |achieve 41546/3 |goto Undermine/0 59.61,27.25
step
Run up the stairs |goto Undermine/0 39.39,25.87 < 7
Run up the stairs |goto Undermine/0 39.53,23.39 < 7
Run down the stairs |goto Undermine/0 39.21,20.85 < 7
talk Baxx the Purveyor##237703
Select _"Begin pet battle."_ |gossip 131873
|tip Use the Vale Flitter with skills 1,2,2
|tip Use the Ra'kim with skills 2,2,1
|tip Use the Coastal Sandpiper with skills 2,1,1
Defeat Baxx the Purveyor With a Team of Flying Battle Pets of Level 25 |achieve 41546/2 |goto Undermine/0 38.94,16.06
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Pet Battles\\War Within\\Humanoid Battler of Undermine",{
description="Defeat the elite pets and trainers of Undermine with a team of all level 25 Humanoid pets.",
achieveid={41547},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
talk Creech##237718
|tip Beneath the steps.
Select _"Begin pet battle."_ |gossip 131878
|tip Use the Stunted Yeti 1,1,1
|tip Use any other level 25 humanoid pets.
Defeat Creech With a Team of Humanoid Battle Pets of Level 25 |achieve 41547/4 |goto Undermine/0 32.11,82.21
step
clicknpc Precision Powerdrill##237701
|tip Use Father Winter's Helper with skills 2,1,1.
|tip Use the Grumpling with skills 2,2,2.
|tip Use the Kun-Lai Runt with skills 2,2,2.
Defeat Precision Powerdrill With a Team of Humanoid Battle Pets of Level 25 |achieve 41547/1 |goto Undermine/0 55.15,69.70
step
talk Prezly Wavecutter##237712
Select _"Begin pet battle."_ |gossip 131876
|tip Use the Wretched Servant with skills 2,2,1.
|tip Use the Anubisath Idol with skills 1,1,1.
|tip Any Humanoid Pet as backup.
Defeat Prezly Wavecutter With a Team of Humanoid Battle Pets of Level 25 |achieve 41547/3 |goto Undermine/0 59.61,27.25
step
Run up the stairs |goto Undermine/0 39.39,25.87 < 7
Run up the stairs |goto Undermine/0 39.53,23.39 < 7
Run down the stairs |goto Undermine/0 39.21,20.85 < 7
talk Baxx the Purveyor##237703
Select _"Begin pet battle."_ |gossip 131873
|tip Use the Ranishu Runt with skills 1,2,2
|tip Use the Anubisath Idol with skills 1,1,2
|tip Use the Void-Scarred Anubisath as back.
Defeat Baxx the Purveyor With a Team of Humanoid Battle Pets of Level 25 |achieve 41547/2 |goto Undermine/0 38.94,16.06
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Pet Battles\\War Within\\Magic Battler of Undermine",{
description="Defeat the elite pets and trainers of Undermine with a team of all level 25 Magic pets.",
achieveid={41548},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
talk Creech##237718
|tip Beneath the steps.
Select _"Begin pet battle."_ |gossip 131878
|tip Use the Sapphire Cub with skills 2,2,2.
|tip Use the Spectral Porcupette with skills 1,2,2.
|tip Use Any Level 25 Magic Pet as a third.
Defeat Creech With a Team of Magic Battle Pets of Level 25 |achieve 41548/4 |goto Undermine/0 32.11,82.21
step
clicknpc Precision Powerdrill##237701
|tip Use Baa'l with skills 2,2,2.
|tip Use Gerald with skills 1,2,1.
|tip Use the Enchanted Torch with skills 1,1,1.
Defeat Precision Powerdrill With a Team of Magic Battle Pets of Level 25 |achieve 41548/1 |goto Undermine/0 55.15,69.70
step
talk Prezly Wavecutter##237712
Select _"Begin pet battle."_ |gossip 131876
|tip Use 2 Anomalus with skills 2,2,1.
|tip Use the Enchanted Pen with skills 1,1,1.
Defeat Prezly Wavecutter With a Team of Magic Battle Pets of Level 25 |achieve 41548/3 |goto Undermine/0 59.61,27.25
step
Run up the stairs |goto Undermine/0 39.39,25.87 < 7
Run up the stairs |goto Undermine/0 39.53,23.39 < 7
Run down the stairs |goto Undermine/0 39.21,20.85 < 7
talk Baxx the Purveyor##237703
Select _"Begin pet battle."_ |gossip 131873
|tip Use the Eye of Corruption with skills 1,2,2.
|tip Use the Servant of Demidos with skills 1,2,2.
|tip Use the Enchanted Broom with skills 1,1,2.
Defeat Baxx the Purveyor With a Team of Magic Battle Pets of Level 25 |achieve 41548/2 |goto Undermine/0 38.94,16.06
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Pet Battles\\War Within\\Mechanical Battler of Undermine",{
description="Defeat the elite pets and trainers of Undermine with a team of all level 25 Mechanical pets.",
achieveid={41549},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
talk Creech##237718
|tip Beneath the steps.
Select _"Begin pet battle."_ |gossip 131878
|tip Use False Knucklebump with skills 1,1,2.
|tip Use Anodized Robo Cub with skills 1,1,1.
|tip Use Any Level 25 Mechanical Pet.
Defeat Creech With a Team of Mechanical Battle Pets of Level 25 |achieve 41549/4 |goto Undermine/0 32.11,82.21
step
clicknpc Precision Powerdrill##237701
|tip Use Blackfuse Bombling with skills 1,2,1.
|tip Use Darkmoon Zeppelin with skills 1,2,1.
|tip Use Tinytron with skills 2,1,2.
Defeat Precision Powerdrill With a Team of Mechanical Battle Pets of Level 25 |achieve 41549/1 |goto Undermine/0 55.15,69.70
step
talk Prezly Wavecutter##237712
Select _"Begin pet battle."_ |gossip 131876
|tip Use Sunreaver Micro-Sentry with skills 1,1,1.
|tip Use Timeless Mechanical Dragonling with skills 2,1,1.
|tip Use Iron Starlette with skills 1,1,1.
Defeat Prezly Wavecutter With a Team of Mechanical Battle Pets of Level 25 |achieve 41549/3 |goto Undermine/0 59.61,27.25
step
Run up the stairs |goto Undermine/0 39.39,25.87 < 7
Run up the stairs |goto Undermine/0 39.53,23.39 < 7
Run down the stairs |goto Undermine/0 39.21,20.85 < 7
talk Baxx the Purveyor##237703
Select _"Begin pet battle."_ |gossip 131873
|tip Use Sunreaver Micro-Sentry with skills 2,2,1.
|tip Use Tinytron with skills 2,1,2
|tip Use Timeless Mechanical Dragonling as backup.
Defeat Baxx the Purveyor With a Team of Mechanical Battle Pets of Level 25 |achieve 41549/2 |goto Undermine/0 38.94,16.06
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Pet Battles\\War Within\\Undead Battler of Undermine",{
description="Defeat the elite pets and trainers of Undermine with a team of all level 25 Undead pets.",
achieveid={41550},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
talk Creech##237718
|tip Beneath the steps.
Select _"Begin pet battle."_ |gossip 131878
|tip Use "Risen Saber Kitten" with skills 2,1,1.
|tip Use "Scraps" with skills 1,1,2.
|tip The third slot can be any undead pet.
Defeat Creech With a Team of Undead Battle Pets of Level 25 |achieve 41550/4 |goto Undermine/0 32.11,82.21
step
clicknpc Precision Powerdrill##237701
|tip Use "Boneshard" with skills 1,1,2.
|tip Use "Blighted Squirrel" with skills 2,1,2.
|tip Use "Fragment of Anger" with skills 2,1,2.
Defeat Precision Powerdrill With a Team of Undead Battle Pets of Level 25 |achieve 41550/1 |goto Undermine/0 55.15,69.70
step
talk Prezly Wavecutter##237712
Select _"Begin pet battle."_ |gossip 131876
|tip Use "Fragment of Desire" with skills 2,1,1.
|tip Use "Detective Ray" with skills 2,1,2.
|tip Use "Drowned Hatchling" with skills 1,1,1.
Defeat Prezly Wavecutter With a Team of Undead Battle Pets of Level 25 |achieve 41550/3 |goto Undermine/0 59.61,27.25
step
Run up the stairs |goto Undermine/0 39.39,25.87 < 7
Run up the stairs |goto Undermine/0 39.53,23.39 < 7
Run down the stairs |goto Undermine/0 39.21,20.85 < 7
talk Baxx the Purveyor##237703
Select _"Begin pet battle."_ |gossip 131873
|tip Use "Son of Sethe" with skills 2,2,1.
|tip Use "Widget the Departed" with skills 1,2,1.
|tip Use "Cursed Birman" with skills 1,2,2.
Defeat Baxx the Purveyor With a Team of Undead Battle Pets of Level 25 |achieve 41550/2 |goto Undermine/0 38.94,16.06
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\A Good Day to Dye Hard",{
description="Defeat Mug'Zee, Heads of Security while all players are dyed the same color in Liberation of Undermine on Normal difficulty or higher.",
achieveid={41211},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Inside the Liberation of Undermine Raid:
kill Mug'Zee##229953
|tip Stand next to the Purple Coin.
|tip Make sure you don't click it.
|tip Eventually you will be splashed and gain the 'Dyed Purple' buff.
havebuff  Dyed Purple##1213796
|tip Defeat Mug'Zee after the buff is active.
Earn the "A Good Day to Dye Hard" Achievement |achieve 41211
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\The Key to Madness",{
description="Open 500 Bountiful Coffers with Restored Coffer Keys.",
achieveid={40885},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Open 500 Bountiful Coffers
|tip You can open 4 Bountiful Coffers per day.
|tip The achievement is account wide, so alts should count towards the overall goal if you want ot speed things along.
Earn the "The Key to Madness" Achievement |achieve 40885
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Reputation\\War Within\\In with the Cartels",{
description="Reach Honored with the Bilgewater, Blackwater, Steamwheedle and Venture Co. Cartels of Undermine.",
achieveid={41349},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Earn Honored with the Following Cartels:
|tip You will choose who to ally with each week to earn reputation.
Bilgewater Cartel |achieve 41349/1
Blackwater Cartel |achieve 41349/2
Steamwheedle Cartel |achieve 41349/3
Venture Co.|achieve 41349/4
|tip Refer to The Cartels of Undermine reputation guide to accomplish this.
Click Here to Load "The Cartels of Undermine" Reputation Guide |confirm |next "Reputation Guides\\The War Within Reputations\\The Cartels of Undermine"
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Glory of the Delver",{
description="Complete the War Within delve achievements listed within.",
achieveid={40438},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Earn the "Delve Loremaster: War Within" Achievement |achieve 40438/1
Earn the "Leave No Treasure Unfound" Achievement |achieve 40438/2
Earn the "Sporesweeper" Achievement |achieve 40438/3
Earn the "Just Keep Swimming" Achievement |achieve 40438/4
Earn the "Spider Senses" Achievement |achieve 40438/5
Earn the "Daystormer" Achievement |achieve 40438/6
Earn the "Brann Development" Achievement |achieve 40438/7
Earn the "My First Nemesis" Achievement |achieve 40438/8
|tip Refer to their respective guides to accomplish this.
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Sporesweeper",{
description="Successfully complete a Fungarian delve without being hit by Explosive Spores on Tier 8 or higher.",
achieveid={40445},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Inside "Fungal Folly" OR the "Mycomancer Cavern" Delve at _Tier 8 or Higher_:
|tip Avoid taking damage from the spores that float around the entire Delve.
|tip They will swell when you're close to them and eventually, a green swirling pattern will appear beneath them when they are about to explode.
|tip It gives you enough time to move out of them.
|tip Pets are safe to be hit by the spores.
Complete a Delve _Without_ Taking Damage From Explosive Spores |achieve 40445
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Just Keep Swimming",{
description="Successfully complete a Kobyss delve without ever losing your breath on Tier 8 or higher.",
achieveid={40452},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Inside "The Sinkhole" or the "Tak-Rethan" Delve at _Tier 8 or Higher_:
|tip There will be bubbles as you traverse the delve.
|tip They provide air, so if you're able, drag enemies to nearby bubbles and stand on where they spawn as you fight.
|tip Avoid bubbles that have green around them.
|tip 'Potions of Water Breathing' or the 'Mastercraft Kalu'ak Fishing Pole', or any other equipment that applies underwater breathing can negate this entirely.
Successfully Complete a Kobyss Delve _Without_ Losing Your Breath |achieve 40452
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Spider Senses",{
description="",
achieveid={40453},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
This Achievement Can Be Earned In the Following Delves Under the Specific Conditions Listed:
_The Dread Pit during the "Kobold Kidnapping, Lost Gems and Smashing Skardyn" Stories_
_Earthcrawl Mines during the "Fiery Grounds, Kidnapped Earthen and Precious Ore" Stories_
_Skittering Breach during the "Old Rituals" Stories_
_The Spiral Weave during the "Strange Disturbances and Down to Size" Stories_
|tip Hit the eggs with ranged when possible to temporarily disable them.
|tip Don't touch any webbed ground.
|tip Keep Brann away from the webs as there's a bug that will cause it to fail if he walks in them.
|tip If you see him comment about not standing in the webs, you've likely failed.
|tip Track the achievment progress to be sure.
Successfully Complete a Nerubian Delve _Without_ Spawning Ambushers from Webs _OR_ Taking Damage from Nerubian Eggs _On Tier 8 or Higher_ |achieve 40453
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Daystormer",{
description="Successfully complete an Order of Night delve without being targeted by Artillery fire on Tier 8 or higher.",
achieveid={40454},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
This Achievement Can Be Earned In the Following Delves Under the Specific Conditions Listed:
_Nightfall Sanctum During the "Dark Ritual and Signal Noise" Stories_
_Skittering Breach During the "Renilash Beckons" Stories_
|tip Avoid purple circles that appear on the ground.
|tip If you're unsure, track the achievement to see if you've failed or not.
|tip As it currently is, you MUST use the parachute and land in order to earn the achievement.
Successfully Complete an Order of Night Delve _Without_ Being Targeted by Artillery Fire _on Tier 8 or Higher_ |achieve 40454
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Brann Development",{
description="Raise Brann Bronzebeard to level 25.",
achieveid={40538},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete any Delve:
|tip Brann will gain experience throughout.
|tip There will be objects throughout the Delves that will give Brann additional experience.
Raise Brann Bronzebeard to Level 25 |achieve 40538
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\My First Nemesis",{
description="Defeat Zekvir in his lair before the release of the next season of delves.",
achieveid={40103},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Clear Zekvir on Tier ? Difficulty (Solo or in a Group)|achieve 40103
|tip Clear any delves on Tier 8 with lives remaining.
|tip Then clear a Tier 10 Delve with lives remaining.
|tip Zekvir will have 81 Million Health.
|tip Avoid "Angler's Web" which is a cone targeting its current target.
|tip "Claw Smash" will target random characters and should be dodged.
|tip Move out of "Horrendous Roar" a 15 yard AoE and will fear you if you don't avoid it.
|tip Interrupt "Enfeebling Spittle" when possible (Magic + Snare).
|tip During "Call Web Terror" a cocoon spawns thatwil hatch a spider if not killed within 20 seconds.
|tip The spider casts 5 second stuns if it spawns.
|tip DPS downt he cocoons that appear.
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\My New Nemesis",{
description="Defeat The Underpin in his lair before the release of the next season of delves.",
achieveid={41530},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Defeat 'The Underpin' |achieve 41530
|tip The Underpin has 185 Million Health.
|tip "Crush" is an ability that appears as a circle on the ground.
|tip Move out of it as it does heavy damage and stuns you for 4 seconds after if you survive.
|tip "Flamethrower" is a cone in front of Underpin.
|tip It hits for heavy damage and deals a dot after, so move out of it.
|tip "Time Bomb Launcher" sends 5 bombs into the air and land on the ground.
|tip They will explode 30 seconds after, the radius indicated by circles around them.
|tip They deal heavy damage so avoid them, naturally.
|tip "Call Cronies" will summon 3 adds.
|tip They will fire off lines that will deal heavy damage and should be avoided.
|tip You can kick the Time Bombs into them to damage them.
|tip When they die, they'll leave behind fire on the ground that deal damage and should be avoided.
|tip "Divert Energy to Shields" gratns a shield equal to 10% of his health.
|tip He takes 100% increased damage for 20 seconds during this time.
|tip He'll cast "Recharge" during this time, which will heal him for 25% of his max health if the shield isn't broken.
|tip When the shield breaks, patches on the ground will appear, causing damage over tmie.
|tip Move him away from the puddles.
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Glory of the Liberation of Undermine Raider",{
description="",
achieveid={41286},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Earn the "Hold My Gear!" Achievement |achieve 41286/1
Earn the "One Rank Higher" Achievement |achieve 41286/2
Earn the "The Splash Zone" Achievement |achieve 41286/3
Earn the "Just /Dance" Achievement |achieve 41286/4
Earn the "Conveyor Slayer" Achievement |achieve 41286/5
Earn the "Garbage In, Garbage Out" Achievement |achieve 41286/6
Earn the "Sleep with the Fishes" Achievement |achieve 41286/7
Earn the "Scheming on a Thing" Achievement |achieve 41286/8
|tip Refer to their respective guides to accomplish them.
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Garbage In, Garbage Out",{
description="",
achieveid={41596},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Inside the Liberation of Undermine Raid ({g}Normal or Higher Difficulty{}):
kill Stix Bunkjunker##230322
|tip You will likely need additional healers for this achievement.
|tip Incinerate or roll on {y}'Garbage Piles'{} created by {b}Electromagnetic Sorting{}.
|tip {r}ALL{} Garbage Piles must be destroyed before the next Electromagnetic Sorting cast.
Earn the "Garbage In, Garbage Out" Achievement |achieve 41596
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Hold My Gear!",{
description="",
achieveid={41208},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Inside the Liberation of Undermine Raid ({g}Normal or Higher Difficulty{}):
kill The Geargrinders##225821
|tip Locate and use raid markers to point out the five objects needed for the achievement.
|tip During the encounter, {r}Geargrinder Bikers{} will spawn in 3s on normal difficulty.
|tip Try to gather them in a similar area so they aren't scattered throughout the arena and easy to find.
|tip Kill them, and have a designated raid member mount the bike.
|tip Once the objectives are met, defeat the boss for the achievement.
Dumpster |achieve 41208/1
Trash Pile |achieve 41208/2
The Stack |achieve 41208/3
Tool Rack|achieve 41208/4
Storage Crate |achieve 41208/5
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Just /Dance",{
description="",
achieveid={41338},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Inside the Liberation of Undermine Raid ({g}Normal or Higher Difficulty{}):
kill Rik Reverb##228648
|tip During the intermission phase, a member of the raid needs to use the {b}/dance{} emote in the area under the {b}Disco Ball{}.
Earn the "Just /Dance" Achievement |achieve 41338
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\The Splash Zone",{
description="",
achieveid={41554},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Inside the Liberation of Undermine Raid ({g}Normal or Higher Difficulty{}):
kill Flarendo##229181
kill Torq##229177
|tip
talk Snix Longpocket##235623
buy "Fireproof" Punch##236412 |n
use the "Fireproof" Punch##236412
|tip
talk Skitto Screwjack##235624
buy "Shockproof" Soda##236413 |n
use the "Shockproof" Soda##236413
|tip
|tip You will need to drink both before the encounters.
|tip You must have the {y}Hubris{} buff for the achievement to count.
havebuff  Hubris##1219684
Earn "The Splash Zone" Achievement |achieve 41554
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Conveyor Slayer",{
description="",
achieveid={41711},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Inside the Liberation of Undermine Raid ({g}Normal or Higher Difficulty{}):
kill Sprocketmonger Lockenstock##230583
|tip Complete the encounter without being hit by {r}Blazing Beam{}, {r}Rocket Barrage{}, {r}Mega Magnetize{}, {r}Jumbo Void Beam{} or {r}Void Barrage{}.
|tip Currently, it's possible to earn this achievement if you die, as long as it's not to the abilities listed.
Earn the "Conveyor Slayer" Achievement |achieve 41711
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Sleep with the Fishes",{
description="Defeat Mug'Zee, Heads of Security while all players have slept with the fishes in Liberation of Undermine on Normal difficulty or higher.",
achieveid={41337},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Inside the Liberation of Undermine Raid ({g}Normal or Higher Difficulty{}):
kill Mug'Zee##229953
|tip Upon entering the arena, there's a teleport pad on the left.
|tip It will send you to the aquarium.
|tip Swim to {b}Fish Stix{} and attack the {r}Cement Block{} to free him.
|tip During the fight, Fish Stix will summon {g}Sleepy Fish{}.
|tip Everyone in the raid must pop the bubble.
|tip Once the Sleepy Fish is on the floor, use the {y}/sleep{} emote while targeting it.
|tip The entire raid must have the {o}Slept with the Fishes{} debuff for the achievement to pop once the boss is killed.
Earn the "Sleep with the Fishes" Achievement |achieve 41337
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Scheming on a Thing",{
description="Defeat Chrome King Gallywix after Giga Bomb Detonation-ing 3 Giga Controls during a single Giga Coils in Liberation of Undermine on Normal difficulty or higher.",
achieveid={41347},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Inside the Liberation of Undermine Raid ({g}Normal or Higher Difficulty{}):
kill Chrome King Gallywix##231075
|tip The goal of this achievement is to bomb 3 {r}Giga Coils{} with {o}Giga Bomb Detonations{}.
|tip This can be accomplished during the Intermission Phase.
|tip Kill the {r}Darkfuse Technicians{}.
|tip Assign players to pick up the {g}Giga Bombs{} they drop and have them take it to the {y}Giga Controls{} to detonate.
Earn the "Scheming on a Thing" Achievement |achieve 41347
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Exploration\\War Within\\C.H.E.T.T.mate",{
description="",
achieveid={41629},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Reach Renown Level 13 with The Cartels of Undermine |complete factionrenown(2653) >= 13
step
Earn the "C.H.E.T.T.mate" Achievement |achieve 41629
|tip Complete the C.H.E.T.T. Lists 100 times.
|tip Refer to The Cartels of Undermind reputation guide to accomplish this.
Click Here to Load the "The Cartels of Undermine" Reputation Guide |confirm |next "Reputation Guides\\The War Within Reputations\\The Cartels of Undermine"
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Slimy Yet Satisfying",{
description="Defeat Ulgrax the Devourer while keeping the Spider Silk Grub alive in Nerub-ar Palace on Normal difficulty or higher.",
achieveid={40261},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Inside the Nerub-ar Palace Raid ({g}Normal or Higher Difficulty{}):
kill Ulgrax the Devourer##215657
|tip You can move the Spider Silk Grub by walking up to him.
|tip The Spider Silk Grub can not be healed, and despawns if it is hit by any damage.
|tip Position your raid team so the Spider Silk Grub doesn't get hit by Ulgrax's attacks or charges.
|tip Ads during the intermission phase are the most likely to hit him, so zerg Ulgrax down in the first phase to skip.
|tip The achievement is earned once Ulgrax is defeated and the Spider Silk Grub is still alive.
Defeat {r}Ulgrax the Devourer{} while keeping the {g}Spider Silk Grub{} Alive |achieve 40261
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Sik Parry Bro",{
description="Defeat Sikran after all players are affected by Riposte in Nerub-ar Palace on Normal difficulty or higher.",
achieveid={40255},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Inside the Nerub-ar Palace Raid ({g}Normal or Higher Difficulty{}):
kill Sikran ##219853
|tip Four players click one of the weapon racks that are outside the boss area.
|tip When Sikran is at around 20% health, these players should use the extra action button on Sikran, which will drop the weapon for another player to pick up.
|tip The weapons might be difficult to see on the floor, so move the boss around to reveal them to players that need the debuff.
|tip Once all players have used their extra action button on Sikran, and have the Riposte debuff, then kill Sikran.
|tip If a player dies after getting the Riposte debuff, they can still get the achievement once Sikran is dead.
|tip The achievement is earned once Sikran is defeated after all players have the Riposte debuff.
{g}Riposte{} Sikran Before Defeating the Encounter |achieve 40255
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Would You Still /love Me if I Was a Worm...",{
description="Defeat Broodtwister Ovi'nax after everyone proves their /love to a Disheartened Worm in Nerub-ar Palace on Normal difficulty or higher.",
achieveid={40263},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Inside the Nerub-ar Palace Raid ({g}Normal or Higher Difficulty{}):
kill Broodtwister Ovi'nax##214506
|tip In the small chamber before the the boss room, The Narthex, one player needs to pick up the Mysterious Glowing Egg.
|tip The egg carrier will have a reduced movement speed, and should stack on an agreed upon set of eggs during the battle.
|tip Players who get the Experimental Dosage debuff (swirling blue circles) should overlap on the egg carrier to crack the egg, and also spawn the ads.
|tip The egg being carried will break, and a Disheartened Worm will spawn.
|tip All players needing the achievement should /love the Disheartened Worm to get the Affectionate debuff.
|tip The Disheartened Worm can be damaged, so do not defeat it before everyone has gotten the debuff.
|tip The achievement is earned once players have defeated Broodtwister Ovi'nax after using /love on the Disheartened Worm.
Defeat {r}Broodtwister Ovi'nax{} After Proving Your {g}/love{} to the Disheartened Worm |achieve 40263
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Love is in the Lair",{
description="Defeat the Silken Court after Anub'arash and Takazj have gained the Bond of Friendship in Nerub-ar Palace on Normal difficulty or higher.",
achieveid={40730},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Inside the Nerub-ar Palace Raid ({g}Normal or Higher Difficulty{}):
kill Anub'arash##223779
|tip One player must collect the Anub'arash Plushy, located on the left side, on the wall ledge, at the entrance to the to the corridor leading to Ky'vesa's room.
|tip A different player must collect the Box of Candy on the bannister at the bottom of the stairwell leading out of Ky'vesa's room.
|tip The players that loot these will have extra-action buttons that allow them to throw the items to the bosses BEFORE the pull: the plushy should go to Anub'arash, and the candy to Takazj.
|tip Together, the bosses will then receive the Bond of Friendship buff, which allows them to heal each when they are close together, so they must be tanked away from each other whenever possible.
|tip The achievement is earned once Anub'arash and Takazj are defeated with the Bond of Friendship active.
Defeat {r}Anub'arash and Talazj{} While Under the Affect of {g}Bond of Friendship{} |achieve 40730
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\You Can't See Me",{
description="Defeat The Bloodbound Horror after all players are Slimed! and then defeat a Volatile Ooze in Nerub-ar Palace on Normal difficulty or higher.",
achieveid={40260},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Inside the Nerub-ar Palace Raid ({g}Normal or Higher Difficulty{}):
kill The Bloodbound Horror##214502
|tip After being hit by the frontal cone attack, Gruesome Disgorge, each player must step on a slime in the shadow realm to gain the Slimed! debuff.
|tip Players, be sure to defeat the ads before running for slimes to avoid unnecessary raid damage.
|tip Once all players are Slimed! and phased out, stack the raid to spawn, and defeat, the Volatile Ooze.
|tip If a player dies, the Volatile Ooze will not spawn, and you must reset and try again.
|tip The achievement is earned once The Bloodbound Horror is defeated after following the steps.
Defeat {r}The Bloodbound Horror{} after Defeating the {r}Volatile Ooze{} |achieve 40260
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Cowabunga",{
description="Defeat Rasha'nan after all players ride a single wave per cast of Rolling Acid in Nerub-ar Palace on Normal difficulty or higher.",
achieveid={40262},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Inside the Nerub-ar Palace Raid ({g}Normal or Higher Difficulty{}):
kill Rasha'nan##224552
|tip The raid team should remain in the middle of the platform, as in the regular fight.
|tip Players that get the wave, position themselves either to the right or the left, both on the same side of the raid team.
|tip These two players should ride the wave they spawn, each going in the opposite direction without overlapping.
|tip The player placing the wave on the outside edge rides his wave alone, while the player placing the wave nearest the raid team rides the wave moving the opposite way, along with the rest of the raid team.
|tip All players need to ride a single green wave each time it is cast or the achievement will fail, and you must reset and try again.
|tip If any player gets hit by both waves, you must reset and try again.
|tip The achievement is earned once Rasha'nan is defeated, and every raid member has ridden a single wave each time Rolling Acid was cast.
Defeat {r}Rasha'nan{} After {g}ALL Players Surf Rolling Acid Once{} |achieve 40262
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Kill Streak",{
description="Defeat Nexus-Princess Ky'veza while she has an active Kill Streak in Nerub-ar Palace on Normal difficulty or higher.",
achieveid={40264},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Inside the Nerub-ar Palace Raid ({g}Normal or Higher Difficulty{}):
kill Nexus-Princess Ky'veza##228470
|tip The player who pulls Ky'vesa by clicking the burning diary will be one-shotted, giving her Kill Streak for approximately one minute.
|tip To maintain Kill Streak, designate a player to die before Kill Streak expires.
|tip Players designated to die can allow themselves either to be pulled into a Nether Rift, or to get hit by Regicide or Eclipse during the intermission phase.
|tip Be ready to have a back up player die if the first player death does not trigger Kill Streak.
|tip The duration of Kill Streak may actually vary with raid size.
|tip The achievement is earned once Ky'vesa is defeated with Kill Streak active.
Defeat {r}Nexus-Princess Ky'veza{} while she has {g}Kill Streak{} Active |achieve 40264
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Missed 'Em by That Much",{
description="Defeat Queen Ansurek after all players use Abyssal Conduits to travel underneath her during Frothing Gluttony in Nerub-ar Palace on Normal difficulty or higher.",
achieveid={40266},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Inside the Nerub-ar Palace Raid ({g}Normal or Higher Difficulty{}):
kill Queen Ansurek##218370
|tip In the third phase, Queen Ansurek will cast Abyssal Conduit on two players which will eventually drop portals where they are standing.
|tip Players with the portals need to drop them on either side of the hole in the platform from each other so that, when used, players will cross over the hole in the middle of the platform under the boss, thus avoiding boss mechanic, Frothing Gluttony, and at the same time cross underneath the boss.
|tip When Frothing Gluttony is cast, all players need to cross over when the circle is just about to reach them, exiting the circle safely, and the boss will gain stacks of the Missed 'Em by That Much debuff equal to the number of players in the raid.
|tip Players that were dead before this phase will also give the boss the debuff.
Defeat Queen Ansurek with stacks of the {g}Missed 'Em by That Much{} Debuff EQUAL to the Number of Players in Your Raid |achieve 40266
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Allied Races: Earthen",{
description="Complete 4 Storylines found throughout The War Within Quests.",
achieveid={40307},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete the Following War Within Storylines:
The War Withing Campaign |achieve 40307/1
Mourning Rise |achieve 40307/2
Broken Tools |achieve 40307/3
Merrix and Steelvein |achieve 40307/4
|tip Refer to the Earthen Race Unlock guide to accomplish this.
Click Here to Load the "Earthen Race Unlock" Guide |confirm |next "Leveling Guides\\Allied Races\\Earthen Race Unlock"
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Quests\\War Within\\The Grand Tapestry",{
description="Reach the maximum reputation with the Weaver in Azj'Kahet.",
achieveid={40874},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Reach the Maximum Reputation with The Weaver in Azj'Kahet |achieve 40874
|tip Refer to The Weaver reputation guide to accomplish this.
Click Here to Load "The Weaver" Reputation Guide |confirm |next "Reputation Guides\\The War Within Reputations\\The Weaver"
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Exploration\\War Within\\Grand, Gutsy Solutions",{
description="Complete the quest 'Grand, Gutsy Solutions.'",
achieveid={41200},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete the Quest {g}Grand, Gutsy Solutions{} |achieve 41200
|tip Refer to the Azj-Kahet (Full Zone) guide to accomplish this.
Click Here to Load the "Azj-Kahet (Full Zone)" Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Azj-Kahet (Full Zone)"
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Expansion Features\\Skyriding\\Undermine Breaknecking: Bronze",{
description="Complete all normal Breakneck races in Undermine.",
achieveid={41081},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
talk Grimy Timekeeper##233917
Select _"I'd like to try the course."_ |gossip 125493
accept Breakneck Bolt##85900 |goto Undermine/0 26.15,52.97 |or
'|achieve 41081/1 |or
step
Complete the "Breakneck Bolt: Bronze" Race Within 40 Seconds or Less |achieve 41081/1
step
talk Grimy Timekeeper##233917
Select _"I'd like to try the Reverse course."_ |gossip 125492
accept Breakneck Bolt - Reverse##85901 |goto Undermine/0 26.15,52.97 |or
'|achieve 41081/2 |or
step
Complete the "Breakneck Bolt Reverse: Bronze" Race Within 40 Seconds or Less |achieve 41081/2
step
talk Grimy Timekeeper##233918
Select _"I'd like to try the course."_ |gossip 125495
accept Junkyard Jaunt##85902 |goto Undermine/0 43.67,77.65 |or
'|achieve 41081/3  |or
step
Complete the "Junkyard Jaunt: Bronze" Race Within 40 Seconds or Less |achieve 41081/3
step
talk Grimy Timekeeper##233918
Select _"I'd like to try the Reverse course."_ |gossip 125494
accept Junkyard Jaunt - Reverse##85903 |goto Undermine/0 43.67,77.65 |or
'|achieve 41081/4 |or
step
Complete the "Junkyard Jaunt Reverse: Bronze" Race Within 40 Seconds or Less |achieve 41081/4
step
talk Grimy Timekeeper##233919
Select _"I'd like to try the course."_ |gossip 125497
accept Casino Cruise##85904 |goto Undermine/0 39.46,53.89 |or
'|achieve 41081/5 |or
step
Complete the "Casino Cruise: Bronze" Race Within 40 Seconds or Less |achieve 41081/5
step
talk Grimy Timekeeper##233919
Select _"I'd like to try the Reverse course."_ |gossip 125496
accept Casino Cruise - Reverse##85905 |goto Undermine/0 39.46,53.89
step
Complete the "Casino Cruise Reverse: Bronze" Race Within 40 Seconds or Less |achieve 41081/6
step
talk Grimy Timekeeper##233920
Select _"I'd like to try the course."_ |gossip 125499
accept Sandy Scuttle##85906 |goto Undermine/0 47.63,43.85 |or
'|achieve 41081/7 |or
step
Complete the "Sandy Scuttle: Bronze" Race Within 40 Seconds or Less |achieve 41081/7
step
talk Grimy Timekeeper##233920
Select _"I'd like to try the Reverse course."_ |gossip 125498
accept Sandy Scuttle - Reverse##85907 |goto Undermine/0 47.63,43.85 |or
'|achieve 41081/8 |or
step
Complete the Reverse "Sandy Scuttle Reverse: Bronze" Race Within 40 Seconds or Less |achieve 41081/8
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Algari Dungeoneer",{
description="Defeat every Dungeon in Khaz Algar on Mythic or Mythic Keystone difficulty as a Tank, Healer, and Damage Dealer.",
achieveid={40138},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete the Following Meta Achievements:
Algari Dungeon Damage Dealer |achieve 40139
Algari Dungeon Healer |achieve 40140
Algari Dungeon Tank |achieve 40141
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Algari Dungeon Damage Dealer",{
description="Defeat every Dungeon in Khaz Algar on Mythic or Mythic Keystone difficulty as a Damage Dealer.",
achieveid={40139},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete the Follow Dungeons as a {g}Damage Dealer{} on {r}Mythic Difficulty or with Mythic Keystone Difficulty{}:
|tip This refers to the role you enter a dungeon as.
The Dawnbreaker |achieve 40139/1
Cinderbrew Meadery |achieve 40139/2
City of Threads |achieve 40139/3
The Stonevault |achieve 40139/4
Darkflame Cleft |achieve 40139/5
Priory of the Sacred Flame |achieve 40139/6
Ara-Kara, City of Echoes |achieve 40139/7
The Rookery |achieve 40139/8
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Algari Dungeon Healer",{
description="Defeat every Dungeon in Khaz Algar on Mythic or Mythic Keystone difficulty as a Healer.",
achieveid={40140},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete the Follow Dungeons as a {g}Healer{} on {r}Mythic Difficulty or with Mythic Keystone Difficulty{}:
|tip This refers to the role you enter a dungeon as.
The Dawnbreaker |achieve 40140/1
Cinderbrew Meadery |achieve 40140/2
City of Threads |achieve 40140/3
The Stonevault |achieve 40140/4
Darkflame Cleft |achieve 40140/5
Priory of the Sacred Flame |achieve 40140/6
Ara-Kara, City of Echoes |achieve 40140/7
The Rookery |achieve 40140/8
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Algari Dungeon Tank",{
description="Defeat every Dungeon in Khaz Algar on Mythic or Mythic Keystone difficulty as a Tank.",
achieveid={40141},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete the Follow Dungeons as a {g}Tank{} on {r}Mythic Difficulty or with Mythic Keystone Difficulty{}:
|tip This refers to the role you enter a dungeon as.
The Dawnbreaker |achieve 40141/1
Cinderbrew Meadery |achieve 40141/2
City of Threads |achieve 40141/3
The Stonevault |achieve 40141/4
Darkflame Cleft |achieve 40141/5
Priory of the Sacred Flame |achieve 40141/6
Ara-Kara, City of Echoes |achieve 40141/7
The Rookery |achieve 40141/8
]])
QuestCore:RegisterGuide("Achievement Guides\\Character Achievements\\Reputation\\The War Within Achievements\\Khaz Algar Diplomat",{
description="Reach max renown with each of the reputations listed below.",
achieveid={41169},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Reach Renown Level 25 with the Council of Dornogal |complete factionrenown(2590) >= 25
|tip Refer to the reputation guide to accomplish this.
Click Here to Load the "Council of Dornogal" Reputation Guide |confirm |next "Reputation Guides\\The War Within Reputations\\Council of Dornogal"
|tip
Reach Renown Level 25 with Hallowfall Arathi |complete factionrenown(2570) >= 25
|tip Refer to the reputation guide to accomplish this.
Click Here to Load the "Hallowfall Arathi" Reputation Guide |confirm |next "Reputation Guides\\The War Within Reputations\\Hallowfall Arathi"
|tip
Reach Renown Level 25 with The Assembly of the Deeps |complete factionrenown(2594) >= 25
|tip Refer to the reputation guide to accomplish this.
Click Here to Load "The Assembly of the Deeps" Reputation Guide |confirm |next "Reputation Guides\\The War Within Reputations\\The Assembly of the Deeps"
|tip
Reach Renown Level 25 with The Severed Threads |complete factionrenown(2600) >= 25
|tip Refer to the reputation guide to accomplish this.
Click Here to Load "The Severed Threads" Reputation Guide |confirm |next "Reputation Guides\\The War Within Reputations\\The Severed Threads"
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\Sojourner of Undermine",{
description="Complete the optional Undermine storylines listed below.",
achieveid={40894},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Earn the "Sojourner of Undermine" Achievement |achieve 40894
|tip Refer to the {g}'Undermine (Full Zone)'{} guide to accomplish this.
Click Here to Load the "Undermine (Full Zone)" Leveling Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\The War Within Achievements\\Khaz Algar Lore Hunter",{
description="This guide will help you complete ten days of activities to collect the Prismatic Snapdragon mount.",
achieveid={40762},
startlevel=80,
patch='110007',
},[[
step
click Watcher of the South##441278
|tip On top of the Mountain.
Collect the "Water of the South" Lore Object |q 82048 |goto Isle of Dorn/0 42.12,80.26 |future
step
click Titan Console##441231
Collect the "Titan Console" Lore Object |achieve 40762/2 |goto Isle of Dorn/0 78.11,27.82
step
click Galan's Edict##441183
|tip Underwater.
Collect the "Galan's Edict" Lore Object |q 82038 |goto Isle of Dorn/0 37.30,52.54 |future
step
click Watcher of the North##441284
|tip On top of the mountain.
Collect the "Watcher of the North" Lore Object |q 82047 |goto Isle of Dorn/0 57.22,20.01 |future
step
click Stone of The Unbound##441223
|tip On the ground.
Collect the "Stone of The Unbound" Lore Object |q 82046 |goto Isle of Dorn/0 44.08,30.14 |future
step
click A Skull on a Sign
|tip Behind the giant pillar.
Discover A Skull on a Sign |q 82049 |goto The Ringing Deeps/0 35.16,17.39 |future
step
click Warning: Collapsed Tunnel##441577
|tip Inside the cave.
Collect the "Warning: Collapsed Tunnel" Lore Object |q 82051 |goto The Ringing Deeps/0 67.20,42.41 |future
step
click Submerged Sign##441563
|tip In the water on the platform.
Collect the "Submerged Sign" Lore Object |q 82052 |goto The Ringing Deeps/0 47.31,72.41 |future
step
Enter the cave |goto The Ringing Deeps/0 46.34,57.59 < 10
click Wax-Drenched Sign##441555
|tip Inside the cave.
Collect the "Wax-Drenched Sign" Lore Object |q 82053 |goto The Ringing Deeps/0 46.05,58.26  |future
step
click Kobold Warning Sign
Discover the Kobold Warning Sign |q 82054 |goto The Ringing Deeps/0 60.79,56.14 |future
step
click Captain's Chest##441628
|tip Underwater at the side of the ship.
Collect the "Captain's Chest" Lore Object |q 82061 |goto Hallowfall/0 25.72,38.45 |future
step
click A Worn Down Book##441633
Collect the "A Worn Down Book" Lore Object |q 82063 |goto Hallowfall/0 25.08,53.71 |future
step
Follow the path |goto Hallowfall/0 79.13,41.73 < 15
click A Weathered Tome##441637
|tip In the passage.
Collect the "A Weathered Tome" Lore Object |q 82064 |goto Hallowfall/0 78.24,40.42 |future
step
click A Tattered Note##441688
|tip Within the mountain crevice.
Collect the "A Tattered Note" Lore Object |q 82065 |goto Hallowfall/0 71.43,36.67 |future
step
click A Scout's Journal##441720
|tip In the water beneath the platform.
Collect the "A Scout's Journal" Lore Object |q 82066 |goto Hallowfall/0 62.21,45.57 |future
step
clicknpc Weathered Shadecaster##222283
|tip In the top floor of the tower.
Select _"<Press the button.>"_ |gossip 122182
Discover the Weathered Shadecaster |q 82082 |goto Azj-Kahet/0 71.13,62.33 |future
step
talk Forgotten Shadecaster##222634
|tip on the highest platform.
Select _"<Press the button.>"_ |gossip 122175
Discover the Forgotten Shadecaster |q 82079 |goto Azj-Kahet/0 58.38,89.51 |future
step
click Neglected Shadecaster##222304
|tip On the highest level.
Select _"<Press the button.>"_ |gossip 122187
Collect the "Neglected Shadecaster" Lore Object |achieve 40762/18 |goto Nerub'ar/1 08.50,30.59 |future
step
talk Kah'teht##222369
|tip Hanging on the wall near the base of the waterfall.
Select _"King?"_ |gossip 122038
Select _"What Happened to you?"_ |gossip 122163
Collect the "Kah'teht" Lore Object |q 82069 |goto Azj-Kahet/0 75.43,33.24 |future
step
talk Mad Nerubian##222381
|tip Hanging on the walls above the caves.
Select _"Who are you?"_ |gossip 122043
Select _"Why were you exiled?"_ |gossip 122042
Discover the Mad Nerubian |q 82067 |goto Azj-Kahet/0 54.07,18.88 |future
step
click Palawltar's Codex of Dimensional Structure
|tip Inside the building.
Discover Palawltar's Codex of Dimensional Structure |q 83309 |goto Hallowfall/0 48.75,64.71 |future
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\The War Within Achievements\\Going Goblin Mode",{
description="This guide will teach you how to obtain the Going Goblin Mode Achievement.",
achieveid={41586},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Adventurer of Undermine |achieve 41586/1
Treasures of Undermine |achieve 41586/2
Nine-Tenths of the Law |achieve 41586/3
Read Between the Lines |achieve 41586/4
That Can-Do Attitude |achieve 41586/5
You're My Friend Now |achieve 41586/6
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\The War Within Achievements\\Adventurer of Undermine",{
description="",
achieveid={41216},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete 10 of the Following Special Encounters Across Undermine:
|tip Refer to PoI's to accomplish this.
Scrap Beak |achieve 41216/1
Ratspit |achieve 41216/2
Tally Doublespeak |achieve 41216/3
Slimesby |achieve 41216/4
V.V. Goosworth |achieve 41216/5
Thwack |achieve 41216/6
S.A.L. |achieve 41216/7
Nitro |achieve 41216/8
Candy Stickemup |achieve 41216/9
Grimewick |achieve 41216/10
Swigs Farsight |achieve 41216/11
Ephemeral Agent Lathyd |achieve 41216/12
The Junk-Wall |achieve 41216/13
Slugger the Smart |achieve 41216/14
Chief Foreman Gutso |achieve 41216/15
FLyboy Snooty |achieve 41216/16
M.A.G.N.O. |achieve 41216/17
Giovante |achieve 41216/18
Scapchewer |achieve 41216/19
Volstrike the Charged |achieve 41216/20
Darkfuse Precipitant |achieve 41216/21
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\The War Within Achievements\\Treasures of Undermine",{
description="Discover the hidden treasures across Undermine.",
achieveid={41217},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Discover the Following Hidden Treasure Across Undermine:
|tip Refer to PoI's to accomplish this.
Unexploded Fireworks |achieve 41217/1
Suspicious Book |achieve 41217/2
Fireworks Hat |achieve 41217/3
Exploded Plunger |achieve 41217/4
Blackened Dice |achieve 41217/5
Lonely Tub |achieve 41217/6
Potent Potable |achieve 41217/7
Abandoned Toolbox |achieve 41217/8
Papa's Prized Putter |achieve 41217/9
Unsupervised Takeout |achieve 41217/10
Particularly Nice Lamp |achieve 41217/11
Uncracked Cold Ones |achieve 41217/12
Marooned Floatmingo |achieve 41217/13
Trick Deck of Cards |achieve 41217/14
Crumpled Schematics |achieve 41217/15
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\The War Within Achievements\\Nine-Tenths of the Law",{
description="Successfully unlock all five of Muff's Auto-Lockers throughout Undermine.",
achieveid={40948},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
click Electrified Lock##239226
|tip Solve the puzzle.
click Muff's Auto-Locker##467468
Gorillion Fork |q 85072 |goto 2346 23.82,45.38  |future
step
click Electrified Lock##239226
|tip Solve the puzzle.
click Muff's Auto-Locker##467468
Gorillion Chasis |q 85117 |goto 2346 34.33,82.86 |future
step
click Electrified Lock##239226
|tip Solve the puzzle.
click Muff's Auto-Locker##467468
Gorillion Grease |q 85114 |goto 2346 71.45,85.94 |future
step
click Electrified Lock##239226
|tip Solve the puzzle.
click Muff's Auto-Locker##467468
Gorillion Engine |q 85116 |goto 2346 56.67,55.47 |future
step
Follow the path up |goto Undermine/0 72.71,24.55 < 10
Continue up the path |goto Undermine/0 74.48,26.21 < 10
click Electrified Lock##239226
|tip Beneath the stairs.
|tip Solve the puzzle.
click Muff's Auto-Locker##467468
Gorillion Batteries |q 85115 |goto 2346 75.14,22.95 |future
]])
QuestCore:RegisterGuide("Achievement Guides\\Quests\\The War Within Achievements\\You're My Friend Now",{
description="Make friends with all 5 Grabbable Rats in Undermine.",
achieveid={41708},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
|goto Undermine/0 43.59,11.31 |achieve 41708/1
|tip Beneath the stands on a dumpster.
step
|goto Undermine/0 28.48,55.79  |achieve 41708/2
|tip In the second floor on top of a garbage can.
step
|goto Undermine/0 35.95,85.63 |achieve 41708/3
|tip Standing on the railing.
step
|goto Undermine/0 65.26,88.26 |achieve 41708/4
|tip In a burrow.
step
|goto Undermine/0 65.86,43.95 |achieve 41708/5
|tip Next to a fake palm tree.
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\The War Within Achievements\\That Can-Do Attitude",{
description="Find enlightenment by cleaning the streets of Undermine by kicking Discarded Cans.",
achieveid={41589},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
clicknpc Discarded Can##237103
clicknpc Discarded Can##237073
map Undermine/0
path dist 25
path	24.40,56.20	27.43,66.27	32.64,65.50	34.10,56.69	33.62,75.51
path	40.50,89.09	44.42,55.67	53.24,60.33	56.28,52.00	52.26,46.28
path	46.40,47.71	41.87,42.12	40.19,43.49	41.35,38.09	51.09,33.92
path	54.78,31.65	61.18,23.88	66.83,31.52	70.53,25.33	69.50,24.34
path	53.86,10.64	46.71,10.96
Follow the path
|tip Check for Discarded Cans around the path.
|tip There may be multiple at each point.
|tip They respawn slowly.
|tip Sometimes, you can interact with them more than once.
Kick #25# Discarded Cans |achieve 41589/1 |count 25
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\The War Within Achievements\\Undermined",{
description="Complete the following storylines in Undermine.",
achieveid={40900},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Complete the Following Storylines in Undermine:
Trust Issues |achieve 40900/1
Undermine Awaits |achieve 40900/2
Uncovering the Truth |achieve 40900/3
Breaking the Shackles |achieve 40900/4
Ignite the Fuel of Change |achieve 40900/5
Homecoming |achieve 40900/6
|tip Refer to the Undermine leveling guide to accomplish this.
Click Here to Load the "Undermine (Story Only)" Leveing Guide |confirm |next "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\The War Within Achievements\\C.H.E.T.T. a Look",{
description="Turn in a completed C.H.E.T.T. List.",
achieveid={41626},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
Reach Renown Level 13 with The Cartels of Undermine |complete factionrenown(2653) >= 13
step
Earn the "C.H.E.T.T. a Look" Achievement |achieve 41626
|tip Complete the C.H.E.T.T. Lists.
|tip Refer to The Cartels of Undermind reputation guide to accomplish this.
Click Here to Load the "The Cartels of Undermine" Reputation Guide |confirm |next "Reputation Guides\\The War Within Reputations\\The Cartels of Undermine"
]])
QuestCore:RegisterGuide("Achievement Guides\\Exploration\\The War Within Achievements\\Gobblin' with Glublurp",{
description="Bring an Ethereal Glimmerling to Glublurp.",
achieveid={40614},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
click Glimmering Crystal##454729
|tip It looks like a blue cluster of crystals in random locations around this area.
Find the Glimmering Crystal |goto The Ringing Deeps/0 60.00,41.41
step
clicknpc Ethereal Glimmerling##227138
Find the Ethereal Glimmerling |goto The Ringing Deeps/0 58.36,33.60
step
clicknpc Gluglurp ##227132
Bring an Ethereal Glimmerling to Glublurp |achieve 40614 |goto The Ringing Deeps/0 44.30,50.20
|tip Beneaht the K in the waterworks.
]])
QuestCore:RegisterGuide("Achievement Guides\\Dungeons & Raids\\The War Within Achievements\\Flarendo's Biggest Fan",{
description="Defeat the Cauldron of Carnage while being Flarendo's Biggest Fan in Liberation of Undermine on Normal difficulty or higher.",
achieveid={40791},
patch='110002',
startlevel=80,
keywords={"War","Within","TWW"},
},[[
step
talk Flaming Megafan##238586
|tip Choose the dialogue.
kill Professor Boomspark##229287
Gain the {g}Flarendo's Biggest Fan{} Buff |complete hasbuff(467901) |achieve 40791
]])
