-- Bundled QuestCore guide
if not QuestCore then return end

if not QC.CommonPets then return end
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Aubergine Scootlefish",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Aubergine Scootlefish battle pet.",
keywords={"Aquatic"},
pet=4471,
},[[
step
clicknpc Aubergine Scootlefish##222325
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Aubergine Scootlefish##4471 |goto Azj-Kahet/0 36.56,55.02
Can also be found around:
[Azj-Kahet/0 59.60,47.40]
[Azj-Kahet/0 77.20,42.60]
[Azj-Kahet/0 54.80,67.20]
[Azj-Kahet/0 70.60,74.80]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Bombshell Crab",{
patch='110100',
source='Pet Battle',
description="This guide will teach you how to acquire the Bombshell Crab battle pet.",
keywords={"Pet Battle","Aquatic"},
pet=4656,
},[[
step
clicknpc Bombshell Crab##231550
|tip This battle pet is found as a front and backline pet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Bombshell Crab##4656 |goto Undermine/0 51.62,38.78
You can find more around:
[Undermine/0 47.20,39.21]
[Undermine/0 50.59 31.59]
[Undermine/0 46.81 30.41]
[Undermine/0 42.80 28.38]
[Undermine/0 40.03 24.62]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Cave Crab",{
patch='110100',
source='Pet Battle',
description="This guide will teach you how to acquire the Cave Crab battle pet.",
keywords={"Pet Battle","Aquatic","TWW","The War Within","Undermine"},
pet=4658,
},[[
step
clicknpc Cave Crab##231570
|tip This battle pet is found as a front and backline pet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Cave Crab##4658 |goto Undermine/0 66.42,30.38
You can find more around:
[Undermine/0 68.02,24.61]
[Undermine/0 70.01,25.19]
[Undermine/0 65.01,20.78]
[Undermine/0 62.00,12.38]
[Undermine/0 59.63,28.82]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Claudius",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Claudius battle pet.",
keywords={"Aquatic"},
pet=4602,
},[[
step
This battle pet was available for purchase through the Trading Post.
|tip It may not be available at this time.
Click Here to Continue |confirm |next |or
'|complete haspet(4602) |or
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Drop Pets\\Craboom",{
patch='110100',
source='Drop',
description="This guide will teach you how to acquire the Craboom battle pet.",
keywords={"Drop","Aquatic","Operation: Floodgate","Dungeon","Swampface"},
pet=4759,
},[[
step
ding 70 |or
'|complete haspet(4759) |or
step
Press _I_ and Queue for {y}Operation: Floodgate{} Dungeon
|tip This pet drops in Follower, and Normal to Mythic difficulties.
kill Swampface##226396
|tip It is the 3rd boss in the dungeon.
collect Craboom##236768 |or
|tip You may have to kill this boss more than once to acquire the pet.
'|complete haspet(4759) |or
step
use Craboom##236768
learnpet Craboom##4759
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Dalaran Sewer Turtle",{
patch='110000',
source='Puzzle',
description="This guide will teach you how to acquire the Dalaran Sewer Turtle battle pet.",
keywords={"Aquatic"},
pet=4594,
},[[
stickystart "AND_A_GOLDENGILL_TROUT"
step
collect 5 Dornish Pike##220143 |or
|tip You can fish these up with the fishing skill from Calm Surfacing Ripple schools along the Isle of Dorn coast, or purchase them from the auction house.
'|complete haspet(4594) |or
step
label "AND_A_GOLDENGILL_TROUT"
collect 1 Goldengill Trout##222533 |or
|tip You can fish these with the fishing skill from Glimmerpool schools along the Isle of Dorn coast, or purchase them from the auction house.
'|complete haspet(4594) |or
step
talk Dalaran Sewer Turtle##223338
Select _"<Offer five Dornish Pike..>"_ |gossip 122356
Give 5 Dornish Pike to Dalaran Sewer Turtle |goto Isle of Dorn/0 40.91,73.77
|confirm |or
'|complete haspet(4594) |or
step
talk Dalaran Sewer Turtle##223338
Select _"<Offer one Goldengill Trout.>"_ |gossip 122356
|tip You may have to wait some minutes after giving the Dornish Pike before this action becomes available.
Give 1 Goldengill Trout to Dalaran Sewer Turtle |goto Isle of Dorn/0 40.91,73.77
|confirm |or
'|complete haspet(4594) |or
step
talk Dalaran Sewer Turtle##212945
|tip This is the second turtle from the left, the turtle with a purple outline.
Select _"<Lean in closer.>"_ |gossip 122357 |goto Dornogal/0 58.28,30.26
click Turtle's Thanks##444354
|tip On the ground in front of the turtles.
collect Sewer Turtle Whistle##224549 |or
'|complete haspet(4594) |or
step
use Sewer Turtle Whistle##224549
learnpet Dalaran Sewer Turtle##4594
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Diamond Crab",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Diamond Crab battle pet.",
keywords={"Aquatic"},
pet=3361,
},[[
step
clicknpc Diamond Crab##192363
|tip This battle pet is seen as a {b}rare backline pet{} when pet battling around the coastline of the Isle of Dorn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Diamond Crab##3361 |goto Isle of Dorn/0 48.09,76.30
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Fathom Incher",{
patch='110002',
source='Quest',
description="This guide will teach you how to acquire the Fathom Incher battle pet.",
keywords={"Aquatic"},
pet=4520,
},[[
step
kill Kobyss Shadeshaper##215653+
|tip Stealthed at this location, and in this area.
|tip These drop the quest item.
collect Gasping Fish##217352 |n
accept Gasping Plea##80312 |goto Hallowfall/0 53.47,29.93 |or
'|complete haspet(4520) |or
step
extraaction Put Me in the Water##440905
extraaction Put Me in the Water##440980
Drop the Gasping Fish in the Water at This Location
|tip Click the action button that appears on your screen.
|tip You may have to dismount to see the extra action button.
Drop the fish into the water near Sunless Strand |q 80312/1 |goto Hallowfall/0 54.53,25.33 |or
'|complete haspet(4520) |or
step
talk Peculiar Fish##219430
|tip In the water.
turnin Gasping Plea##80312 |goto Hallowfall/0 54.53,25.33 |or
accept Tidal Charms##80313 |goto Hallowfall/0 54.53,25.33
accept Voices From the Deep##80314 |goto Hallowfall/0 54.53,25.33
'|complete haspet(4520) |or
stickystart "COLLECT_12_SUNLESS_SHARDS"
step
click Kobyss Shrine
Raised Shrine studied |q 80314/1 |goto Hallowfall/0 55.29,24.17 |or
'|complete haspet(4520) |or
step
click Kobyss Shrine
Submerged Shirne studied |q 80314/2 |goto Hallowfall/0 56.33,22.54 |or
'|complete haspet(4520) |or
step
click Kobyss Shrine
Guarded Shrine studied |q 80314/3 |goto Hallowfall/0 56.99,24.78 |or
'|complete haspet(4520) |or
step
label "COLLECT_12_SUNLESS_SHARDS"
Kill Humanoid Sunless enemies around here
collect 12 Sunless Shard##217709 |q 80313/1 |goto Hallowfall/0 56.23,24.49 |or
'|complete haspet(4520) |or
step
talk Peculiar Fish##219430
|tip In the water.
turnin Tidal Charms##80313 |goto Hallowfall/0 54.53,25.33 |or
turnin Voices From the Deep##80314 |goto Hallowfall/0 54.53,25.33
accept Alluring Offer##80315 |goto Hallowfall/0 54.53,25.33
'|complete haspet(4520) |or
stickystart "KILL_CHIEFTAIN_GILCARVER"
step
use the Beguiling Lure (Optional)##440025
|tip It appears as a button on your screen.
|tip Use it once to activate it, then use it again when mobs are inside the cicle to do damage.
kill 5 Sunless Tidemarshal##219602 |q 80315/2 |goto Hallowfall/0 54.00,19.90 |or
'|complete haspet(4520) |or
step
label "KILL_CHIEFTAIN_GILCARVER"
use the Beguiling Lure (Optional)##440025 |notinsticky
|tip It appears as a button on your screen. |notinsticky
|tip Use it once to activate it, then use it again when he is inside the cicle to do damage. |notinsticky
kill Chieftain Gillcarver##219633 |q 80315/3 |goto Hallowfall/0 54.00,19.90 |or
'|complete haspet(4520) |or
step
talk Peculiar Fish##219430
|tip In the water.
turnin Alluring Offer##80315 |goto Hallowfall/0 54.53,25.33 |or
accept Return to the Sea##80316 |goto Hallowfall/0 54.53,25.33
'|complete haspet(4520) |or
step
clicknpc Peculiar Fish##220117
collect Rehydrated Fish##217816 |q 80316/1 |goto Hallowfall/0 54.53,25.33 |or
'|complete haspet(4520) |or
step
Put the Fish in the Water
|tip It appears as a button on your screen.
Drop the fish in deeper waters in Bleak Sand |q 80316/2 |goto Hallowfall/0 56.93,8.72 |or
'|complete haspet(4520) |or
step
talk Peculiar Fish##219430
turnin Return to the Sea##80316 |goto Hallowfall/0 56.93,8.72 |n
collect Fathom Incher##222964 |goto Hallowfall/0 56.93,8.72 |or
'|complete haspet(4520) |or
step
use Fathom Incher##222964
learnpet Fathom Incher##4520
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Kaja Crab",{
patch='110100',
source='Pet Battle',
description="This guide will teach you how to acquire the Kaja Crab battle pet.",
keywords={"Pet Battle","Aquatic"},
pet=4659,
},[[
step
clicknpc Kaja Crab##231572
|tip This pet can be found along the Kaja'coast of Zuldazar.
|tip Kill critter pets around this area to precipitate a spawn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Kaja Crab##4659 |goto Zuldazar/0 22.02,61.95
You may find more inside this cave |goto Zuldazar/0 23.09,60.13
You can find more around:
[Zuldazar/0 19.03,55.55]
[Zuldazar/0 21.95,61.80]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Oop'lajax",{
patch='110002',
source='Puzzle',
description="This guide will teach you how to acquire the Oop'lajax battle pet.",
keywords={"Aquatic"},
pet=4470,
},[[
step
click Scary Dark Chest##445403 |goto The Ringing Deeps/0 54.74,30.40
|tip Light all the candles around it within 15 seconds.
|tip If the chest was opened recently, it may still be unlocked for others.
collect Oop'lajax##224439 |or
'|complete haspet(4470)
step
use Oop'lajax##224439
|tip It will be an item in your bags.
learnpet Oop'lajax##4470
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Paleshell Crab",{
patch='110100',
source='Pet Battle',
description="This guide will teach you how to acquire the Paleshell Crab battle pet.",
keywords={"Aquatic"},
pet=4660,
},[[
step
clicknpc Paleshell Crab##231574
|tip This pet can be found along the southeastern bank of the Blackwater Marina in northeastern Undermine.
|tip Kill critter pets around this area to precipitate a spawn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Paleshell Crab##4660 |goto Undermine/0 61.01,31.88
Can also be found around:
[Undermine/0 69.22,20.38]
[Undermine/0 68.49,24.94]
[Undermine/0 66.21,30.30]
[Undermine/0 64.74,32.49]
[Undermine/0 60.01,28.02]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Sapphire Crab",{
patch='110002',
source='Puzzle',
description="This guide will teach you how to acquire the Sapphire Crab battle pet.",
keywords={"Aquatic"},
pet=3362,
},[[
step
clicknpc Lionel###223143 |goto Isle of Dorn/0 40.62,59.87
|tip He is a blue lion fish stuck on the beach begging for help.
Click Here to Proceed |confirm |next
step
collect 5 Plump Snapcrab##222906
|tip These will look like tiny critters running around on the beach nearby.
Click Here to Proceed |confirm |next
step
clicknpc Lionel###223143 |goto Isle of Dorn/0 40.62,59.87
|tip Choose "Give Lionel the Plump Snapcrabs."
Click Here to Proceed |confirm |next
step
click Magical Treasure Chest##444022
|tip It will appear next to Lionel before he swims away.
Click Here to Proceed |confirm |next
step
collect Sapphire Crab##224579
step
use Sapphire Crab##224579
learnpet Sapphire Crab##3362
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Scavenging Snapdragon",{
patch='110007',
source='PetBattle',
description="This guide will teach you how to acquire the Scavenging Snapdragon battle pet.",
keywords={"Aquatic"},
pet=4731,
},[[
step
clicknpc Scavenging Snapdragon##236040
|tip This pet can be found in the Siren Isle: Seafury Tempest.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Scavenging Snapdragon##4731 |goto Siren Isle/0 46.59,75.62
Can also be found around:
[Siren Isle/0 38.62,84.78]
[Siren Isle/0 40.79,68.39]
[Siren Isle/0 35.61,76.43]
[Siren Isle/0 23.80,65.42]
[Siren Isle/0 61.01,10.02]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Shadowbog Hopper",{
patch='110002',
source='Treasure',
description="This guide will teach you how to acquire the Shadowbog Hopper battle pet.",
keywords={"Aquatic","Keyflame","Stillstone Pond"},
pet=4472,
},[[
step
collect 6 Radiant Remnants##206350 |or
|tip You can acquire these by killing elite and normal mobs in Hallowfall, or completing quests, opening chests, or patches of disturbed earth.
'|complete haspet(4472) |or
step
Light the Lesser Keyflame |goto Hallowfall/0 64.42,30.94
|tip Use 3 Radiant Remnants at this Lesser Keyflame.
|tip Once the Lesser Keyflame at this location is lit, Chef Dinaire should appear.
|tip Reserve at least 3 Radiant Remnants for the next step.
|confirm |or
'|complete haspet(4472) |or
step
talk Chef Dinaire####206533
|tip They cost 3 Radiant Remnants.
buy Darkroot Grippers##206670 |goto Hallowfall/0 64.47,31.08 |or
'|complete haspet(4472) |or
step
use Darkroot Grippers##206670
|tip They will be in your inventory.
|tip This buff will last for 8 hours.
Gain the "Shadowrooted Grippers" Buff |complete hasbuff(414219) |or
'|complete haspet(4472) |or
step
clicknpc Shadowrooted Vine##225986
|tip They look like tiny, wiggling vines around the Stillstone Pond area.
|tip Click and pull the vines.
collect Shadowbog Hopper##221819 |goto Hallowfall/0 66.56,23.92 |or
'|complete haspet(4472) |or
step
use Shadowbog Hopper##221819
learnpet Shadowbog Hopper##4472
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Skippy",{
patch='110002',
source='Vendor',
description="This guide will teach you how to acquire the Skippy battle pet.",
keywords={"Aquatic"},
pet=4495,
},[[
step
collect 50 Polished Pet Charm##163036
|tip You can get these from the world quest pet battles that reward them in Legion, Battle for Azeroth, Shadowlands, Dragonflight, and The War Within areas.
|tip Use the World Quest guides in these areas to do this by clicking the world quest pet battles on your map.
step
talk Erani##219230
|tip Inside the building.
buy Skippy##221494 |goto Dornogal/0 58.52,64.85
step
use Skippy##221494
learnpet Skippy##4495
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Slim",{
patch='110002',
source='Quest',
description="This guide will teach you how to acquire the Slim battle pet.",
keywords={"Aquatic"},
pet=4542,
},[[
step
accept Gutter Work##79722 |goto Dornogal/0 39.78,40.40
|tip You will accept this quest automatically.
step
collect 17 Mangled Kobyss Innards##222921 |goto Hallowfall/0 56.23,24.49
step
collect 20 Chunked Kobyss Innards##224102 |goto Hallowfall/0 56.23,24.49
step
collect 25 Uncertain Kobyss Innards##224103 |goto Hallowfall/0 56.23,24.49
step
collect 34 Rotting Kobyss Innards##224232 |goto Hallowfall/0 56.23,24.49
step
collect Slim##221494
step
use Slim##221494
learnpet Slim##4542
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Snapdragon Pup",{
patch='110007',
source='PetBattle',
description="This guide will teach you how to acquire the Snapdragon Pup battle pet.",
keywords={"Aquatic"},
pet=4711,
},[[
step
clicknpc Snapdragon Pup##236040
|tip This pet can be found on Siren Isle.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Snapdragon Pup##4711 |goto Siren Isle/0 60.60,69.02
Can also be found around:
[Siren Isle/0 59.78,66.58]
[Siren Isle/0 69.82,60.39]
[Siren Isle/0 57.21,74.38]
[Siren Isle/0 65.40,84.82]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Starkstripe Hopper",{
patch='110002',
source='Vendor',
description="This guide will teach you how to acquire the Starkstripe Hopper battle pet.",
keywords={"Aquatic"},
pet=4524,
},[[
step
collect 50 Polished Pet Charm##163036
|tip You can get these from the world quest pet battles that reward them in Legion, Battle for Azeroth, Shadowlands, Dragonflight, and The War Within areas.
|tip Use the World Quest guides in these areas to do this by clicking the world quest pet battles on your map.
step
talk Erani##219230
|tip Inside the building.
Select _"Want to trade some pet charms?"_ |gossip 106777
buy Starkstripe Hopper##221811 |goto Dornogal/0 58.52,64.85
step
use Starkstripe Hopper##221811
learnpet Starkstripe Hopper##4524
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Storm-Infused Snapdragon",{
patch='110007',
source='PetBattle',
description="This guide will teach you how to acquire the Storm-Infused Snapdragon battle pet.",
keywords={"Aquatic"},
pet=4731,
},[[
step
clicknpc Storm-Infused Snapdragon##236040
|tip This pet can be found in the Siren Isle: Seafury Tempest.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Storm-Infused Snapdragon##4731 |goto Siren Isle/0 66.00,66.02
Can also be found around:
[Siren Isle/0 61.20,71.58]
[Siren Isle/0 64.02,79.39]
[Siren Isle/0 57.81,70.78]
[Siren Isle/0 58.00,50.02]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Subterranean Dartswog",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Subterranean Dartswog battle pet.",
keywords={"Aquatic"},
pet=4521,
},[[
step
clicknpc Subterranean Dartswog##222736
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
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Troglofrog",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Troglofrog battle pet.",
keywords={"Aquatic"},
pet=4522,
},[[
step
clicknpc Troglofrog##222739
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
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Tropical Frog",{
patch='110100',
source='Pet Battle',
description="This guide will teach you how to acquire the Tropical Frog battle pet.",
keywords={'Pet Battle','Aquatic'},
pet=4666,
startlevel=1,
endlevel=80,
},[[
step
clicknpc Tropical Frog##231616
|tip This pet can be found in the Siren Isle: Seafury Tempest.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Tropical Frog##4666 |goto Zuldazar/0 21.82,61.29
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Venture Bombshell",{
patch='110100',
source='Pet Battle',
author="QuestCore",
description = "This guide will teach you how to acquire the Venture Bombshell pet.",
keywords={"Aquatic"},
pet=4657,
},[[
step
clicknpc Venture Bombshell##222344
|tip This pet spawns around The Heaps in south central Undermine.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Venture Bombshell##4657 |goto Undermine/0 47.73,63.31
[Undermine/0 43.60,66.20]
[Undermine/0 46.62,63.80]
[Undermine/0 52.20,85.60]
[Undermine/0 56.60,80.80]
[Undermine/0 66.60,86.60]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Verdant Scootlefish",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Verdant Scootlefish battle pet.",
keywords={"Aquatic"},
pet=4477,
},[[
step
clicknpc Verdant Scootlefish##222344
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Verdant Scootlefish##4477 |goto Azj-Kahet/1 42.83,63.66
[Azj-Kahet/0 40.00,61.20]
[Azj-Kahet/0 54.20,41.00]
[Azj-Kahet/0 61.60,47.60]
[Azj-Kahet/0 71.20,45.80]
[Azj-Kahet/0 73.60,38.80]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Wriggle",{
patch='110002',
source='Drop',
description="This guide will teach you how to acquire the Wriggle battle pet.",
keywords={"Aquatic"},
pet=4496,
},[[
step
Complete a Kobyss Delve, or press _I_, select Premade Groups, then Delves, and join a group for a Kobyss Delve.
|confirm
step
click Kobyss Delve's Heavy Trunk
|tip You may have to do more than one delve to acquire the pet.
collect Wriggle##221496 |goto Dornogal/0 39.78,40.40
step
use Wriggle##221496
learnpet Wriggle##4496
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Alabaster Stonecharger",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Alabaster Stonecharger battle pet.",
keywords={"Beast"},
pet=4540,
},[[
step
clicknpc Alabaster Stonecharger##223092
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Alabaster Stonecharger##4540 |goto Isle of Dorn/0 46.99,29.54
Can also be found around:
[Isle of Dorn/0 45.58,25.60]
[Isle of Dorn/0 51.22,27.59]
[Isle of Dorn/0 58.00,18.61]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Arachnoid Hatchling",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Arachnoid Hatchling battle pet.",
keywords={"Beast"},
pet=4456,
},[[
step
clicknpc Arachnoid Hatchling##222066
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Arachnoid Hatchling##4456 |goto The Ringing Deeps/0 54.11,42.48
Can also be found around:
[The Ringing Deeps/0 58.44,44.60]
[The Ringing Deeps/0 68.04,38.00]
[Azj-Kahet/0 54.00,51.80]
[Azj-Kahet/0 77.80,61.40]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Argos",{
patch='110100',
source='World Event',
description="This guide will teach you how to acquire the Argos battle pet.",
keywords={"World Event","Beast","Children's Week"},
pet=4466,
},[[
step
Choose the Children's Week Guide to Complete
|tip This pet is a reward for completing the Children's Week quest chain.
Click Here to Load the Children's Week Stormwind Quests Guide |confirm |loadguide "Events Guides\\Children's Week\\Children's Week Stormwind Quests" |or
-OR-
Click Here to Load the Children's Week Dornogal Quests Guide |confirm |loadguide "Events Guides\\Children's Week\\Children's Week Dornogal Quests" |or
'|complete completedq(171) |or
'|complete completedq(89322) |or
'|complete haspet(4466) |or
step
collect Well-Loved Figurine##241215 |or
|tip You acquire this by choosing it as a quest reward when completing the final quest from the Children's Week Quest Guide.
'|complete haspet(4466) |or
step
talk
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Baby Blizzard Bear",{
patch='110002',
source='Achievement','FeatOfStrength','Vendor',
description="This guide will teach you about the Baby Blizzard Bear battle pet.",
keywords={"Beast"},
pet=202,
},[[
step
This pet was a 4th Anniversary Celebration gift from Blizzard in 2008
It Returned for the 20th Anniversary Celebration as a Vendor Item in 2024
|tip It may not be available now, but it may be available again some time in the future.
|confirm |next
step
talk Ransin Donner##2943
|tip In the Forlorn Cavern.
|tip You may have to enter a code.
collect Baby Blizzard Bear##44819 |or
'|complete haspet(202) |or
step
use Baby Blizzard Bear##44819
learnpet Baby Blizzard Bear##202
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Battleboar Piglet",{
patch='110007',
source='PetBattle',
description="This guide will teach you how to acquire the Battleboar Piglet battle pet.",
keywords={"Beast","Siren Isle"},
pet=4724,
},[[
step
clicknpc Battleboar Piglet##234734
|tip This pet spawns during Vrykul week on Siren Isle.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Battleboar Piglet##4724 |goto Siren Isle/0 69.60,61.60
Can also be found around:
[Siren Isle/0 69.11,60.94]
[Siren Isle/0 65.56,70.03]
[Siren Isle/0 63.59,79.79]
[Siren Isle/0 57.02,74.42]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Bean",{
patch='110002',
source='Vendor',
description="This guide will teach you how to acquire the Bean battle pet.",
keywords={"Beast"},
pet=4464,
},[[
step
earn 2250 Kej##3056 |or
|tip Earn this currency by completing quests and world quests, looting treasures, and killing mobs, in Azj-Kahet.
'|complete haspet(4464) |or
step
talk Pelefien <Clerk>##218198
buy Freshly Webbed Kebab##221850 |goto City of Threads/0 50.60,26.40 |or
|tip Pelefien may have a limited supply of these.
|tip If Pelefien doesn't have it in inventory, check the inventory of other vendors nearby.
'|complete haspet(4464) |or
You can also check the inventories of these vendors in the City of Threads:
Tyro Uwe [City of Threads/0 44.80,16.60]
Kurth [City of Threads/0 49.00,26.80]
Kram'an [City of Threads/0 49.60,26.60]
Yaggi [City of Threads/0 49.60,26.20]
step
use Freshly Webbed Kebab##221850
learnpet Bean##4464
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Bedrock Stonecharger",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Bedrock Stonecharger battle pet.",
keywords={"Beast"},
pet=4541,
},[[
step
clicknpc Bedrock Stonecharger##223090
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Bedrock Stonecharger##4541 |goto Dornogal/0 53.11,23.94
Can also be found around:
[Dornogal/0 59.18,55.61]
[Isle of Dorn/0 45.20,52.58]
[Isle of Dorn/0 50.39,72.39]
[Isle of Dorn/0 60.59,44.59]
[Isle of Dorn/0 34.47,81.61]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Bouncer",{
patch='110002',
source='Drop',
description="This guide will teach you how to acquire the Bouncer battle pet.",
keywords={"Beast"},
pet=4489,
},[[
step
Complete a Nerubian Delve
|tip Use our Delve Guides to accomplish this.
|tip Click the 4 horizontal lines in the top left corner of the QuestCore Guide Reader and type "Delves" into the search field.
|tip Choose a Nerubian Delve guide.
Click Here to Proceed |confirm |next |or
'|complete haspet(4489) |or
step
click Nerubian Delve's Heavy Trunk##0000
|tip You may need to run Nerubian Delves more than once to obtain this.
collect Bouncer##222971 |or
'|complete haspet(4489) |or
step
use Bouncer##222971
learnpet Bouncer##4489
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Cave Kroling",{
patch='110007',
source='PetBattle',
description="This guide will teach you how to acquire the Cave Kroling battle pet.",
keywords={"Beast","Siren Isle"},
pet=4703,
},[[
step
clicknpc Cave Kroling##234101
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
|tip Find these pets in any underground area on the Isle.
learnpet Cave Kroling##4703 |goto The Forgotten Vault/0 72.57,51.15
Can also be found around:
[Siren Isle/0 48.25,15.73]
[Siren Isle/0 51.88,37.94]
[Siren Isle/0 53.13,37.22]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Chitin Burrower",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Chitin Burrower battle pet.",
keywords={"Beast"},
pet=4457,
},[[
step
clicknpc Chitin Burrower##222071
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Chitin Burrower##4457 |goto The Ringing Deeps/0 55.63,36.12
Can also be found around:
[The Ringing Deeps/0 73.84,60.20]
[The Ringing Deeps/0 72.64,64.40]
[Hallowfall/0 55.80,43.00]
[Hallowfall/0 69.80,52.60]
[Hallowfall/0 72.60,59.60]
[Hallowfall/0 78.40,42.60]
[Azj-Kahet/0 76.80,64.40]
[Azj-Kahet/0 78.00,60.20]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Cliffreach Cub",{
patch='110007',
source='PetBattle',
description="This guide will teach you how to acquire the Cliffreach Cub battle pet.",
keywords={"Beast","Siren Isle"},
pet=4723,
},[[
step
clicknpc Cliffreach Cub##234710
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
|tip Use an Experimental Go-Pack to reach the higher places where this pet resides.
learnpet Cliffreach Cub##4723 |goto Siren Isle/0 41.60,67.09
Can also be found around:
[Siren Isle/0 54.88,19.37]
[Siren Isle/0 28.58,62.15]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Cobalt Ramolith",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Cobalt Ramolith battle pet.",
keywords={"Beast"},
pet=4538,
},[[
step
clicknpc Cobalt Ramolith##223094
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
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Crackleroar",{
patch='110007',
source='PetBattle',
description="This guide will teach you how to acquire the Crackleroar battle pet.",
keywords={"Beast"},
pet=4726,
},[[
step
kill Stormtouched Pridetalon##230827
|tip He flies around this area.
collect Crackleroar##234379 |goto Siren Isle/0 53.80,25.20 |or
You may also find him around:
[Siren Isle/0 41.80,60.00]
[Siren Isle/0 31.02,63.41]
'|complete haspet(4726)
step
use Crackleroar##234379
learnpet Crackleroar##4726
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Eepy",{
patch='110100',
source='Vendor',
description="This guide will teach you how to acquire the Eepy battle pet.",
keywords={"Vendor","Beast"},
pet=4632,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete haspet(4632) |or
step
ding 80 |or
'|complete haspet(4632) |or
step
Unlock Undermine
|tip Use the leveling guides to unlock Undermine.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete haspet(4632) |or
step
Reach Renown Rank {b}Revered{} with Steamwheedle Cartel Faction in Undermine |complete factionrenown(2677) >= Revered |or
|tip You can also purchase this pet at the auction house.
'|complete haspet(4632) |or
step
Enter the building |goto Undermine/0 29.02,69.63 < 7 |walk
talk Lab Assistant Laszly##231408
|tip Downstairs inside the building.
buy Eepy##232853 |goto Undermine/0 27.13,72.59 |or
'|complete haspet(4632) |or
step
use Eepy##232853
learnpet Eepy##4632
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Faithful Dog",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Faithful Dog battle pet.",
keywords={"Beast"},
pet=4596,
},[[
step
label "BACK_TO_DOG_BOWL"
click Half-Buried Dog Bowl##452438
|tip It is between an open crate and an Elekk Plushie in front of a small pile of rocks near a golden statue.
talk Dog##225486 |goto Isle of Dorn/0 31.44,51.30
Select _"<Pet his head.>"_ |gossip 122743
collect Faithful Dog##224766 |next "FAITHFUL_DOG" |or
|tip
|tip If the dog bowl isn't at this location, click the link below.
Click Here if the Half-Buried Dog Bowl is missing |confirm |next "MOP_TILLER_REP"
'|complete haspet(4596) |or
step
label "MOP_TILLER_REP"
Go to Pandaria to Earn _The Tillers_ Reputation
|tip Start and expand your farm, complete The Tillers Union quest chain, and become Best Friends with the individual Tillers.
|tip Use the Valley of the Four Winds Leveling guide, or The Tillers Daily guide, to accomplish this.
|loadguide "Leveling Guides\\Pandaria (10-70)\\Valley of the Four Winds (15-70)"
|tip
|loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Tillers"
Reach 12,600 Into Revered Reputation with _The Tillers_ |complete repval("The Tillers","Revered") >= 12600 |or
'|complete haspet(4596) |or
step
talk Lost Dog##59533
|tip He is laying on the ground between two boulders.
accept Lost and Lonely##30526 |goto Valley of the Four Winds/0 42.40,50.00 |or
'|complete haspet(4596) |or
step
kill Skyrange Mushan##64309
collect 20 Tasty T-Bone##80144 |q 30526/1 |goto Valley of the Four Winds/0 28.20,36.30 |or
'|complete haspet(4596) |or
step
talk Lost Dog##59533
turnin Lost and Lonely##30526 |goto Valley of the Four Winds/0 42.40,50.00 |or
'|complete haspet(4596) |or
step
click Loose Pebble##269037
|tip Find a small pebble on the main streets of Dalaran.
|tip You can also find these in the auction house.
collect Pebble##147420 |goto Dalaran L/10 54.71,52.55 |or
'|complete haspet(4596) |or
Also may find a Loose Pebble at these spots:
[Dalaran L/10 52.03,62.00]
[Dalaran L/10 48.97,70.38]
[Dalaran L/10 46.59,53.55]
[Dalaran L/10 40.93,54.37]
[Dalaran L/10 42.93,43.25]
[Dalaran L/10 38.03,28.88]
[Dalaran L/10 47.55,28.45]
[Dalaran L/10 43.98,17.45]
[Dalaran L/10 54.06,40.47]
step
Go to Your Garrison's Herb Garden
talk Dog##87553
Select _"<Show the stone from Dalaran's streets to the dog.>"_ |gossip 46801
|tip Do not throw or trade the pebble until you have shown it to Dog.
Click Here to Proceed |confirm |next |or
'|complete haspet(4596) |or
|tip
|tip If you don't have a garrison yet, use the Warlords of Draenor Intro leveling guide to accomplish this.
|tip Continue the guide until you can establish a Level 1 Herb Garden in your garrison.
|loadguide "Leveling Guides\\Draenor (10-70)\\Draenor Intro"
step
Return to Dalaran
|tip Confirm Dog is in the Magical Menagerie Pet Shop in Dalaran, and speak to him.
|tip If he is not there, you need to show the pebble to Dog in your garrison again.
Click Here to Proceed |confirm |next "BACK_TO_DOG_BOWL" |or
'|complete haspet(4596) |or
step
label "FAITHFUL_DOG"
use Faithful Dog##224766
learnpet Faithful Dog##4596
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Foreman",{
patch='110100',
source='Achievement',
description="This guide will teach you how to acquire the Foreman battle pet.",
keywords={"Achievement","Beast","Undermine"},
pet=4631,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete haspet(4631) |or
step
ding 80 |or
'|complete haspet(4631) |or
step
Unlock Undermine
|tip Use the leveling guides to unlock Undermine.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete haspet(4631) |or
step
achieve 41551 |or
|tip Defeat all of the pet battle NPCs in Undermine with teams made up of all one family for each of the pet families.
Precision Powerdrill [Undermine/0 55.14,69.70]
Baxx the Purveyor [Undermine/0 38.94,16.06]
Prezly Wavecutter [Undermine/0 59.61,27.26]
Creech [Undermine/0 32.11,82.22]
'|complete haspet(4631) |or
step
collect Foreman##232855 |or
'|complete haspet(4631) |or
step
use Foreman##232855
learnpet Foreman##4631
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Fringe",{
patch='110002',
source='Vendor',
description="This guide will teach you how to acquire the Fringe battle pet.",
keywords={"Beast"},
pet=4596,
},[[
step
earn 250 Polished Pet Charms##163036 |or
earn 2250 Kej##3056 |or
|tip Earn Polished Pet Charms by completing pet battle world quests in BFA, Shadowlands, and the Dragon Isles.
|tip Use the "World Quest Guides" to accomplish this by clicking Battle Pet World Quests on your map that reward Polished Pet Charms.
'|complete haspet(4596) |or
step
talk Clutchmother Marn'tiq <Pet Battle Master>##218207
|tip You can purchase this pet with 2250 Kej from Tyro Uwe at the coordinates below.
buy Fringe##222973 |goto City of Threads/0 44.19,17.14 |or
Tyro Uwe can be found at [Nerub'ar/1 44.97,16.60]
'|complete haspet(4596) |or
step
use Fringe##222973
learnpet Fringe##4596
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Fuzzy",{
patch='110002',
source='Achievement',
description="This guide will teach you how to acquire the Fuzzy battle pet.",
keywords={"Beast"},
pet=4490,
},[[
step
achieve 40980 |or
'|complete haspet(4490) |or
step
collect Fuzzy##222970 |or
'|complete haspet(4490) |or
step
use Fuzzy##222970
learnpet Fuzzy##4490
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Granite Ramolith",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Granite Ramolith battle pet.",
keywords={"Beast"},
pet=4539,
},[[
step
clicknpc Granite Ramolith##223093
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
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Guacamole",{
patch='110002',
source='Vendor',
description="This guide will teach you how to acquire the Guacamole battle pet.",
keywords={"Beast"},
pet=4576,
},[[
step
Reach Renown Rank 17 with The Assembly of the Deeps |complete factionrenown(2594) >= 17 |or
|tip Complete quests and world quests for The Assembly of the Deeps.
|tip Use the "Assembly of the Deeps" Reputation Guide to accomplish this.
|tip You can also purchase this pet at the auction house.
loadguide "Reputation Guides\\The War Within Reputations\\The Assembly of the Deeps"
'|complete haspet(4576) |or
step
earn 6500 Resonance Crystals##2815 |or
|tip Earn Resonance Crystals by killing Rare, or Rare Elite creatures, completing quests, and opening treasures in The War Within areas.
'|complete haspet(4576) |or
step
talk Waxmonger Squick <Renown Quartermaster>##217253
buy Guacamole##221486 |goto The Ringing Deeps/0 43.14,32.93 |or
'|complete haspet(4576) |or
step
use Guacamole##221486
learnpet Guacamole##4576
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Beast Pets\\Jimmy",{
patch='110205',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Jimmy battle pet.",
keywords={"Drop","Beast"},
pet=4834,
startlevel=80,
},[[
step
kill Morgil the Netherspawn##232108
|tip He looks like a giant flea that patrols around here.
|tip You may have to kill this mob more than once to obtain the pet.
collect Jimmy##244915 |goto K'aresh/0 56.02,50.38 |or
'|complete haspet(4834) |or
step
use Jimmy##244915
learnpet Jimmy##4834
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Jump Jump",{
patch='110002',
source='Vendor',
description="This guide will teach you how to acquire the Jump Jump battle pet.",
keywords={"Beast"},
pet=4491,
},[[
step
Reach Renown Rank 15 with The Severed Threads |complete factionrenown(2600) >= 15 |or
'|complete haspet(4491) |or
step
earn 2250 Kej##3056 |or
|tip Earn Kej by killing Rare, or Rare Elite creatures in The War Within areas.
'|complete haspet(4491) |or
step
talk Lady Vinazian##223750 <Severed Threads Quartermaster>
talk Y'tekhi##220867 <Renown Quartermaster>
buy Jump Jump##222972 |goto Azj-Kahet/0 57.60,46.80 |or
'|complete haspet(4491) |or
step
use Jump Jump##222972
learnpet Jump Jump##4491
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Marmaduke",{
patch='110002',
source='Quest',
description="This guide will teach you how to acquire the Marmaduke battle pet.",
keywords={"Beast"},
pet=4708,
},[[
step
ding 80 |or
'|complete haspet(4708) |or
step
Unlock Siren Isle and complete this quest chain up through _The Radiant Vault_ |complete completedq(84724) |or
|tip Take the first quest, "The Expedition Awaits", from Dawn inside Foundation Hall in Dornogal.
'|complete haspet(4708) |or
step
Enter the cave |goto Siren Isle/0 44.13,23.13 < 15 |walk
click Singing Tablet
Select _"<Place your hand in the divot around the crystal.>"_ |gossip 125531
Enter the Forgotten Tomb |goto The Forgotten Vault/0 60.61,15.00 < 7 |c |or
'|complete haspet(4708) |or
step
click Tattered Journal
accept The Tattered Journal##85570 |goto The Forgotten Vault/0 37.13,77.23 |or
'|complete haspet(4708) |or
step
talk Stellin Verasa##229716
turnin The Tattered Journal##85570 |goto Siren Isle/0 71.04,39.69
accept Scattered To The Winds##85571 |goto Siren Isle/0 71.04,39.69 |or
'|complete haspet(4708) |or
step
click Weathered Journal Page
collect Weathered Journal Page##235547 |q 85571/4 |goto Siren Isle/0 71.04,59.33 |or
'|complete haspet(4708) |or
step
click Soggy Journal Page
collect Soggy Journal Page##235544 |q 85571/2 |goto Siren Isle/0 51.43,75.82 |or
'|complete haspet(4708) |or
step
click Torn Journal Page
|tip Under the platform.
collect Torn Journal Page##235546 |q 85571/3 |q 85571/3 |goto Siren Isle/0 46.07,47.07 |or
'|complete haspet(4708) |or
step
click Faded Journal Page
|tip Upstairs inside the building.
collect Faded Journal Page##235543 |q 85571/1 |q 85571/1 |goto Siren Isle/0 39.25,54.20 |or
'|complete haspet(4708) |or
step
Follow the path up |goto Siren Isle/0 52.23,44.23 < 10 |only if walking
Follow the path |goto Siren Isle/0 59.90,24.04 < 10 |only if walking
Enter the cave |goto Siren Isle/0 56.14,12.23 < 7 |walk
click Stained Journal Page
|tip Inside the cave.
collect Stained Journal Page##235545 |q 85571/5 |goto Siren Isle/0 55.81,14.69 |or
'|complete haspet(4708) |or
step
talk Stellin Verasa##229716
turnin Scattered To The Winds##85571 |goto Siren Isle/0 71.04,39.69
accept A Group Effort##85572 |goto Siren Isle/0 71.04,39.69 |or
'|complete haspet(4708) |or
step
talk Ricket##227810
Select _"What do you make of these pages?"_ |gossip 125515
Speak to Ricket |q 85572/2 |goto Siren Isle/0 71.80,45.87 |or
'|complete haspet(4708) |or
step
talk Skitter##228109
Select _"What do you make of these pages?"_ |gossip 125526
Speak to Skitter |q 85572/3 |goto Siren Isle/0 69.26,43.59 |or
'|complete haspet(4708) |or
step
talk Alta##228394
Select _"What do you make of these pages?"_ |gossip 125529
Speak to Alta |q 85572/1 |goto Siren Isle/0 66.96,40.85 |or
'|complete haspet(4708) |or
step
talk Stellin Verasa##229716
turnin A Group Effort##85572 |goto Siren Isle/0 71.04,39.69
accept Laid To Rest At Last##85573 |goto Siren Isle/0 71.04,39.69 |or
'|complete haspet(4708) |or
step
click Tattered Kul Tiran Journal
|tip Behind the house on the cliff.
Retrieve the Tattered Kul Tiran Journal |q 85573/1 |goto Siren Isle/0 38.89,54.80 |or
'|complete haspet(4708) |or
step
talk Stellin Verasa##229716
turnin Laid To Rest At Last##85573 |goto Siren Isle/0 71.04,39.69 |or
'|complete haspet(4708) |or
step
click Well Loved Squeaky Toy#500697
|tip This is upstairs, inside the building, against the wall, next to the last bed.
collect Well Loved Squeaky Toy##233027 |goto Siren Isle/0 39.33,54.22 |q 86261 |future |or
'|complete haspet(4708) |or
step
talk Marmaduke##234172
|tip He roams around the central area of Siren Isle.
|tip Follow the path.
map Siren Isle/0
path follow smart; loop on; ants straight; dist 30
path	57.97,49.05	55.73,47.05	51.35,45.53	49.80,46.43	48.26,48.30
path	44.91,49.28	43.74,47.62	43.38,45.86	42.57,46.09	43.12,48.53
path	44.47,49.52	46.54,50.87	46.87,54.10	47.31,56.02	49.82,56.03
path	51.51,54.94	52.43,52.18	55.46,51.68	57.97,54.41	58.15,57.96
path	56.62,56.99	55.61,53.65
Select _"<Give Marmaduke the Well Loved Squeaky Toy.>"_ |gossip 131174
You gave Marmaduke his second favorite toy |q 86261 |future |or
'|complete haspet(4708) |or
step
talk Marmaduke##234357
accept Homeward Bound to Safer Shores##86261 |goto Siren Isle/0 68.30,44.93 |or
'|complete haspet(4708) |or
step
talk Marmaduke##234357
Select _"<Pet Marmaduke.>"_ |gossip 131212
Pet the goodest boy |q 86261/1 |or
'|complete haspet(4708) |or
step
talk Marmaduke##234357
turnin Homeward Bound to Safer Shores##86261 |goto Siren Isle/0 68.30,44.93 |n
collect Marmaduke##233056 |or
'|complete haspet(4708) |or
step
use Marmaduke##233056
learnpet Marmaduke##4708
step
click Ducky Friend##507120
|tip This is upstairs, inside the building, on the last bed.
|tip You can summon Marmaduke and right click these in your bag to give him one.
|tip These respawn in the same place when you run out.
collect Marmaduke's "Ducky Friend"##233447 |goto Siren Isle/0 39.21,54.15 |n
|confirm
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Mikah",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Mikah battle pet.",
keywords={"Beast"},
pet=3547,
},[[
step
"Mikah" is a Backup Pet for wild pet battles in The Ringing Deeps
|tip Click a wild battle pet to start the battle.
|tip If Mikah is a back up pet, reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
|tip Look for pet battle icons on your minimap.
learnpet Mikah##3547 |goto The Ringing Deeps/0 38.50,28.50
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Mister Mans",{
patch='110105',
source='Vendor',
description="This guide will teach you how to acquire the Mister Mans battle pet.",
keywords={"Vendor","Beast"},
pet=4794,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete haspet(4794) |or
step
Reach Renown Rank 3 with {p}Flame's Radiance{} |complete factionrenown(2653) >= 8 |or
|tip Use the {p}Flame's Radiance{} Reputation Guide to accomplish this.
loadguide "Reputation Guides\\The War Within Reputations\\The Cartels of Undermine"
'|complete haspet(4794) |or
step
earn 6500 Resonance Crystals##2815 |or
'|complete haspet(4794) |or
step
talk Lars Bronsmaelt##240852
buy Mister Mans##238986 |goto Hallowfall/0 28.28,56.18 |or
'|complete haspet(4794) |or
step
use Mister Mans##238986
learnpet Mister Mans##4794
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Mutt",{
patch='110100',
source='Drop',
description="This guide will teach you how to acquire the Mutt battle pet.",
keywords={"","Beast"},
pet=4636,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete haspet(4636) |or
step
ding 80 |or
'|complete haspet(4636) |or
step
Unlock Undermine
|tip Use the leveling guides to unlock Undermine, and complete the quest, "Welcome to Undermine".
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete completedq(83096) |or
'|complete haspet(4636) |or
step
Reach Renown Rank 8 with {b}The Cartels of Undermine{} |complete factionrenown(2653) >= 8 |or
|tip Use the {b}Cartels of Undermine{} Reputation Guide to accomplish this.
Click Here to Load the {b}Cartels of Undermine{} Reputation Guide |confirm |loadguide "Reputation Guides\\The War Within Reputations\\The Cartels of Undermine"
'|complete haspet(4636) |or
step
talk Smaks Topskimmer##231409
|tip Inside the building.
accept Many Jobs, Handle It!##85869 |goto Undermine/0 43.86,50.82 |or
'|complete haspet(4636) |or
step
talk Kaydee Racketring##231049
|tip Inside the building.
Sign a Cartel Contract for the Week |q 85869/1 |goto Undermine/0 42.90,52.30 |or
'|complete haspet(4636) |or
step
label "SHIPPING_&_HANDLING"
Follow the Green Arrow
|tip It directs you to complete the Shipping & Handling jobs.
|tip Complete 10 jobs to achieve a Job Streak in Undermine.
|tip If you do not see the green arrow, check your Objective Tracker to see what Shipping & Handling job you are on.
Complete #10# Shipping & Handling Jobs |q 85869/2 |or
'|complete haspet(4636) |or
step
collect Mutt##232852 |or
|tip If you didn't collect the pet, complete another Job Streak.
Click Here to Complete Another Job Streak |confirm |next "SHIPPING_&_HANDLING"
'|complete haspet(4636) |or
step
use Mutt##232852
learnpet Mutt##4636
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Pinkskin Burrower",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Pinkskin Burrower battle pet.",
keywords={"Beast"},
pet=4571,
},[[
step
clicknpc Pinkskin Burrower##223706
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
|tip Look for pet battle icons on your minimap around Shadowvein Point.
learnpet Pinkskin Burrower##4571 |goto The Ringing Deeps/0 57.27,47.88
Find more at:
[The Ringing Deeps/0 50.70,61.81]
[The Ringing Deeps/0 56.52,87.36]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Rak-Ush Battleshell",{
patch='110002',
source='Quest',
description = "This guide will teach you how to acquire the Rak-Ush Battleshell battle pet.",
keywords={"Beast"},
pet=4582,
},[[
step
Reach Level 78 |ding 78 |or
'|complete haspet(4582) |or
step
Complete the _Rak-Ush Storyline_ Quests in Azj-Kahet to unlock Rak-Ush Stagshell World Quests |complete completedq(79123) |or
|tip Use the Azj-Kahet Leveling Guide to accomplish this.
|loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Azj-Kahet (Full Zone)"
'|complete haspet(4582) |or
step
Wait for the World Quest "Permanent Hire" to Become Active in Azj-Kahet |complete questactive(79123) |or
'|complete haspet(4582) |or
step
Complete the World Quest "Permanent Hire"
|tip Use the World Quest Guide by clicking the World Quest on your Minimap.
collect Rak-Ush Battleshell##225935 |or
'|complete haspet(4582) |or
step
use Rak-Ush Battleshell##225935
learnpet Rak-Ush Battleshell##4582
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Rak-Ush Threadling",{
patch='110000',
source='Vendor',
description="This guide will teach you how to acquire the Rak-Ush Threadling battle pet.",
keywords={"Beast"},
pet=4455,
},[[
step
earn 2250 Kej##3056 |or
|tip Earn Kej by killing Rare, or Rare Elite creatures in The War Within areas.
'|complete haspet(4455) |or
step
talk Ves'trak <Rak-Ush Operations>##217253
buy Rak-Ush Threadling##221486 |goto Azj-Kahet/0 74.73,81.16 |or
'|complete haspet(4455) |or
step
use Rak-Ush Threadling##221486
learnpet Rak-Ush Threadling##4455
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Rusty Kroling",{
patch='110007',
source='PetBattle',
description="This guide will teach you how to acquire the Rusty Kroling battle pet.",
keywords={"Beast","Siren Isle"},
pet=4702,
},[[
step
clicknpc Rusty Kroling##234097
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
|tip Find these pets generally near buildings or construction.
learnpet Rusty Kroling##4702 |goto Siren Isle/0 49.14,50.12
Can also be found around:
[Siren Isle/0 48.25,15.73]
[Siren Isle/0 51.88,37.94]
[Siren Isle/0 53.13,37.22]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Sandstone Ramolith",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Sandstone Ramolith battle pet.",
keywords={"Beast"},
pet=4546,
},[[
step
collect 50 Polished Pet Charm##163036 |or
|tip You can get these from the world quest pet battles that reward them in Legion, Battle for Azeroth, Shadowlands, Dragonflight, and The War Within areas.
|tip Use the World Quest guides in these areas to do this by clicking the world quest pet battles on your map.
'|complete haspet(4546) |or
step
talk Erani##219230
|tip Inside the building.
Select _"Want to trade some pet charms?"_ |gossip 106777
buy Sandstone Ramolith##222978 |goto Dornogal/0 58.52,64.85 |or
'|complete haspet(4546) |or
step
use Sandstone Ramolith##222978
learnpet Sandstone Ramolith##4546
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Scruff",{
patch='110100',
source='Vendor',
description="This guide will teach you how to acquire the Scruff battle pet.",
keywords={"Vendor","Beast"},
pet=4633,
},[[
step
earn 30 Twilight Blade Insignia##3319 |or
|tip Earn these by completing world quests and killing rares during the Midnight Twilight Ascension Pre-Patch Event.
'|complete haspet(4633) |or
step
talk Materialist Ophinell##249196
buy Scruff##231467 |goto Twilight Highlands/0 49.75,81.31 |or
'|complete haspet(4633) |or
step
use Scruff##231467
learnpet Scruff##4633
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Beast Pets\\Shimmering Inchshifter",{
patch='110200',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Shimmering Inchshifter battle pet.",
keywords={"Drop","Beast"},
pet=4839,
startlevel=80,
},[[
step
Complete the Quest {p}Ecological Succession{}
|tip You can use the {p}Ecological Succession{} Leveling Guide to accomplish this.
Click Here to Load the {p}Ecological Succession{} Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Ecological Succession"
collect Wriggling Pinnacle Cache##245611 |or
'|complete haspet(4839) |or
step
use Wriggling Pinnacle Cache##245611
|tip You may have to complete this weekly quest more than once to obtain the battle pet.
collect Shimmering Inchshifter##245215 |or
'|complete haspet(4839) |or
step
use Shimmering Inchshifter##245215
learnpet Shimmering Inchshifter##4839
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Skitterbite",{
patch='110007',
source='Vendor',
description="This guide will teach you how to acquire the Skitterbite battle pet.",
keywords={"Beast"},
pet=4727,
},[[
step
collect 750 Flame-Blessed Iron##3090 |or
|tip Acquire these from killing elites, completing quests and world quests, and looting treasures on Siren Isle.
'|complete haspet(4727) |or
step
talk Soweezi##234390
buy Skitterbite##234395 |goto Siren Isle/0 69.96,48.46 |or
'|complete haspet(4727) |or
step
use Skitterbite##234395
learnpet Skitterbite##4727
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Skittish Sniffler",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Skittish Sniffler battle pet.",
keywords={"Beast"},
pet=4573,
},[[
step
clicknpc Skittish Sniffler##223712
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Skittish Sniffler##4573 |goto The Ringing Deeps/0 56.36,86.29
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Sneef",{
patch='110002',
source='Drop',
description="This guide will teach you how to acquire the Sneef battle pet.",
keywords={"Beast"},
pet=4575,
},[[
step
Complete a Kobold delve, or press _I_, select Premade Groups, then Delves, then join and complete a Kobold Delve.
Click to proceed |confirm |next
step
click Kobold Delve's Heavy Trunk
collect Sneef##223718
|tip You may have to run Kobold delves more than once to receive this pet drop.
step
use Sneef##223718
learnpet Sneef##4575
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Snuffling",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Snuffling battle pet.",
keywords={"Beast"},
pet=4574,
},[[
step
clicknpc Snuffling##223715
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Snuffling##4574 |goto The Ringing Deeps/0 62.85,47.39
Can also be found around:
[The Ringing Deeps/0 40.85,31.42]
[The Ringing Deeps/0 43.87,46.60]
[The Ringing Deeps/0 65.84,40.00]
[The Ringing Deeps/0 56.25,70.02]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Tidal Kroling",{
patch='110007',
source='PetBattle',
description="This guide will teach you how to acquire the Tidal Kroling battle pet.",
keywords={"Beast","Siren Isle"},
pet=4628,
},[[
step
clicknpc Tidal Kroling##223715
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Tidal Kroling##4628 |goto Siren Isle/0 43.07,33.69
Can also be found around:
[The Ringing Deeps/0 40.85,31.42]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Violet Sporbit",{
patch='110002',
source='Treasure',
description="This guide will teach you how to acquire the Violet Sporbit battle pet.",
keywords={"Beast"},
pet=4506,
},[[
step
Complete a Fungarian delve, or press _I_, select Premade Groups, then Delves, then join and complete a Fungarian Delve.
Click to proceed |confirm |next
step
collect Violet Sporbit##222590 |or
'|complete haspet(4506) |or
step
use Violet Sporbit##222590
learnpet Violet Sporbit##4506
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Thunder",{
patch='110002',
source='Quest',
description = "This guide will teach you how to acquire the Thunder pet.",
keywords={"Beast"},
pet=4462,
},[[
step
Complete the Khaz Algar Main Story and The War Within Campaign
|tip Complete this using the Khaz Algar Leveling Guides.
|loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and achieved(20597) |or
'|complete haspet(4462) |or
step
Reach Level 80 |ding 80
step
collect 3 Radiant Remnants##206350 |or
|tip You can acquire these by killing elite and normal mobs in Hallowfall, or completing quests, opening chests, or patches of disturbed earth.
'|complete haspet(4462) |or
step
Light the Lesser Keyflame |goto Hallowfall/0 64.38,18.73
|tip Use 3 Radiant Remnants at this Lesser Keyflame.
|tip Once the Lesser Keyflame at this location is lit, Attica Whiskervale should appear.
|confirm |or
'|complete haspet(4462) |or
step
talk Attica Whiskervale##212419
accept Glow in the Dark##76169 |goto Hallowfall/0 64.45,18.82 |or
'|complete haspet(4462)|or
step
talk Attica Whiskervale##212419
Select _"Who is Captain Lancekat?"_ |gossip 121078
Select _"What happened to the Lynx?"_ |gossip 121086
collect Attica's Cave Torch##219198 |q 76169/1 |goto Hallowfall/0 64.45,18.82 |or
'|complete haspet(4462)|or
step
Enter the Nearby Cave |goto Hallowfall/0 65.77,18.86
use Attica's Cave Torch##219198
|tip You can only see the tiny bottles shining, and locate Peevish Paeton if you've activated the Attica's Cave Torch.
Gain the "Attica's Cave Torch" Buff |complete hasbuff(426360) |or
'|complete haspet(4462)|or
step
stickystart "LOCATE_PEEVISH_PAETON"
use Attica's Cave Torch##219198 |only if not hasbuff(426360)
click Dauntless Draught##403458
|tip Inside Coldshadow Cave.
collect 8 Dauntless Draught##206203 |q 76169/3 |goto Hallowfall/0 66.16,17.48 |or
'|complete haspet(4462)|or
step
label "LOCATE_PEEVISH_PAETON"
use Attica's Cave Torch##219198 |only if not hasbuff(426360) |notinsticky
click Peevish Paeton Berncort##205797
|tip Inside Coldshadow Cave. |notinsticky
Peevish Paeton Berncort located |q 76169/2 |goto Hallowfall/0 66.69,16.09 |or
'|complete haspet(4462)|or
step
talk Attica Whiskervale##212419
turnin Glow in the Dark##76169 |goto Hallowfall/0 64.45,18.82
accept Tale of Tails##82007 |goto Hallowfall/0 64.40,18.80 |or
'|complete haspet(4462)|or
step
clicknpc Beans##222372
Locate Beans |q 82007/2 |goto Hallowfall/0 64.00,19.80 |or
He may also be at [Hallowfall/0 63.60,19.40]
'|complete haspet(4462)|or
step
clicknpc Thunder##222375
Locate Thunder |q 82007/3 |goto Hallowfall/0 62.00,20.80 |or
'|complete haspet(4462)|or
step
clicknpc Beef##222373
Locate Beef |q 82007/1 |goto Hallowfall/0 66.20,15.60 |or
'|complete haspet(4462)|or
step
clicknpc Cap'n Elaena##222374
Locate Cap'n Elaena |q 82007/4 |goto Hallowfall/0 66.80,21.00 |or
'|complete haspet(4462)|or
step
talk Attica Whiskervale##212419
turnin Tale of Tails##82007 |goto Hallowfall/0 64.40,18.80 |or
'|complete haspet(4462)|or
step
collect Thunder##220782 |or
'|complete haspet(4462) |or
step
use Thunder##220782
learnpet Thunder##4462
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Tiberius",{
patch='110002',
source='Vendor',
description="This guide will teach you how to acquire the Tiberius battle pet.",
keywords={"Beast"},
pet=4463,
},[[
step
Reach Renown Rank 15 with Hallowfall Arathi |complete factionrenown(2570) >= 15 |or
|tip Gain renown by completing quests and world quests for this faction.
|tip Use the "Hallowfall Arathi" Reputation Guide to accomplish this.
|loadguide "Reputation Guides\\The War Within Reputations\\Hallowfall Arathi\\Hallowfall Arathi" |or
'|complete haspet(4463) |or
step
earn 6500 Resonance Crystals##3056 |or
|tip Earn Resonance Crystals by killing Rare, or Rare Elite creatures, completing quests, and opening treasures in The War Within areas.
'|complete haspet(4463) |or
step
talk Auralia Steelstrike <Renown Quartermaster>##217253
buy Tiberius##221848 |goto Hallowfall/0 41.27,53.05 |or
'|complete haspet(4463) |or
step
use Tiberius##221848
learnpet Tiberius##4463
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Vanilla",{
patch='110002',
source='Quest',
description="This guide will teach you how to acquire the Vanilla battle pet.",
keywords={"Beast"},
pet=4465,
},[[
step
ding 80
step
Complete the Hallowfall Campaign |complete completedq(78630) |or
'|complete haspet(4465) |or
step
talk Aliya Hillhelm##206528
accept Seeds of Evil##79108 |goto Hallowfall/0 61.18,30.52 |or
'|complete haspet(4465) |or
step
kill Invasive Shadowblossom##214923
collect 16 Corrupted Shadowleaf Seed##212153 |q 79108/1 |goto Hallowfall/0 60.70,30.20 |or
'|complete haspet(4465) |or
step
talk Aliya Hillhelm##206528
turnin Seeds of Evil##79108 |goto Hallowfall/0 61.18,30.52
accept Follow Miral##79109 |goto Hallowfall/0 61.18,30.52 |or
'|complete haspet(4465) |or
step
Click the Hoe |q 79109/1 |goto Hallowfall/0 60.76,25.15 |or
'|complete haspet(4465) |or
step
Click the Bag |q 79109/2 |goto Hallowfall/0 60.12,24.28 |or
'|complete haspet(4465) |or
step
Click the Lamp |q 79109/3 |goto Hallowfall/0 60.30,22.81 |or
'|complete haspet(4465) |or
step
talk Mirel Murder-Mittens##215041
turnin Follow Miral##79109 |goto Hallowfall/0 60.29,21.13
accept Save Tomothy##79110 |goto Hallowfall/0 60.29,21.13 |or
'|complete haspet(4465) |or
step
kill The Grasping Darkness##215064
|tip Inside the building.
The Grasping Darkness slain |q 79110/1 |goto Hallowfall/0 60.20,20.67 |or
'|complete haspet(4465) |or
step
talk Mirel Murder-Mittens##215041
turnin Save Tomothy##79110 |n
collect Vanilla##222594 |goto Hallowfall/0 60.29,21.13
step
use Vanilla##222594
learnpet Vanilla##4465
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Beast Pets\\Vitriolic Inchshifter",{
patch='110200',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Vitriolic Inchshifter battle pet.",
keywords={"Drop","Beast"},
pet=4836,
startlevel=80,
},[[
step
Complete the Quest {p}Ecological Succession{}
|tip You can use the {p}Ecological Succession{} Leveling Guide to accomplish this.
Click Here to Load the {p}Ecological Succession{} Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Ecological Succession"
collect Wriggling Pinnacle Cache##245611 |or
'|complete haspet(4836) |or
step
use Wriggling Pinnacle Cache##245611
|tip You may have to complete this weekly quest more than once to obtain the battle pet.
collect Vitriolic Inchshifter##245212 |or
'|complete haspet(4836) |or
step
use Vitriolic Inchshifter##245212
learnpet Vitriolic Inchshifter##4836
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Wobbles",{
patch='110002',
source='Vendor',
description="This guide will teach you how to acquire the Wobbles battle pet.",
keywords={"Beast"},
pet=4597,
},[[
step
Unlock "Snuffling"
Reach Renown Rank 2 with The Assembly of the Deeps |complete factionrenown(2594) >= 2 |or
'|complete haspet(4597) |or
step
Dig Disturbed Earth##241838
|tip You can find these in all Khaz Algar zones.
|tip They look like blobs of dirt in a set of small circles on the ground.
|tip If you're having trouble finding them, enable in-game Outline Mode: Interface Tab > Display Section.
collect 50 Odd Glob of Wax##212493 |or
'|complete haspet(4597) |or
step
talk Middles <The Wax Collector>##225166
|tip Inside the building.
|tip Contribute 100% to receive one Firelight Ruby.
collect Firelight Ruby##224642 |goto The Ringing Deeps/0 43.44,35.20 |or
'|complete haspet(4597) |or
step
talk Gnawbles##216164
|tip Inside the building, next to Middles.
buy Wobbles##224760 |goto The Ringing Deeps/0 43.44,35.20 |or
'|complete haspet(4597) |or
step
use Wobbles##224760
learnpet Wobbles##4597
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Beast Pets\\Xanthous Siphonmite",{
patch='110200',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Xanthous Siphonmite battle pet.",
keywords={"Drop","Beast"},
pet=4833,
startlevel=80,
},[[
step
Complete the Quest {p}Ecological Succession{}
|tip You can use the {p}Ecological Succession{} Leveling Guide to accomplish this.
Click Here to Load the {p}Ecological Succession{} Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Ecological Succession"
collect Wriggling Pinnacle Cache##245611 |or
'|complete haspet(4833) |or
step
use Wriggling Pinnacle Cache##245611
|tip You may have to complete this weekly quest more than once to obtain the battle pet.
collect Xanthous Siphonmite##244914 |or
'|complete haspet(4833) |or
step
use Xanthous Siphonmite##244914
learnpet Xanthous Siphonmite##4833
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Acid-Drenched Rat",{
patch='110100',
source='Pet Battle',
description="This guide will teach you how to acquire the Acid-Drenched Rat battle pet.",
keywords={"Critter"},
pet=4652,
},[[
step
clicknpc Acid-Drenched Rat##231470
|tip These are usually common throughout the zone.
|tip Kill Wily Rats if they aren't around, as this may cause them to spawn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Acid-Drenched Rat##4652 |goto Undermine/0 63.72,21.46
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Arathi Chicken",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Arathi Chicken battle pet.",
keywords={"Critter"},
pet=4460,
},[[
step
clicknpc Arathi Chicken##222195
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Arathi Chicken##4460 |goto Hallowfall/0 63.15,28.12
Can also be found around:
[Hallowfall/0 66.00,28.00]
[Hallowfall/0 62.20,38.00]
[Hallowfall/0 50.00,37.00]
[Hallowfall/0 47.00,64.80]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Beetriz",{
patch='100205',
source='Promotion',
description="This guide will teach you how to acquire the Beetriz battle pet.",
keywords={"Twitch Promotion","Critter"},
pet=4410,
},[[
step
This pet was available as a Twitch Drop
|tip Only available between Apr 22, 2025 - May 20, 2025, but may become available again.
|confirm |next
step
collect Beetriz##212791 |or
'|complete haspet(4410) |or
step
use Beetriz##212791
learnpet Beetriz##4410
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Brown Leafbug",{
patch='110002',
source='Vendor',
description="This guide will teach you how to acquire the Brown Leafbug battle pet.",
keywords={"Critter"},
pet=4586,
},[[
step
collect 50 Polished Pet Charm##163036
|tip You can get these from the world quest pet battles that reward them in Legion, Battle for Azeroth, Shadowlands, Dragonflight, and The War Within areas.
|tip Use the World Quest guides in these areas to do this by clicking the world quest pet battles on your map.
step
talk Erani##219230
|tip Inside the building.
Select _"Want to trade some pet charms?"_ |gossip 106777
buy Brown Leafbug##224101 |goto Dornogal/0 58.52,64.85
step
use Brown Leafbug##224101
learnpet Brown Leafbug##4586
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Critter Pets\\Drop Pets\\Cerulean Lapbug",{
patch='110200',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Cerulean Lapbug battle pet.",
keywords={"Drop","Critter"},
pet=4848,
startlevel=80,
},[[
step
Complete the Quest {p}Ecological Succession{}
|tip You can use the {p}Ecological Succession{} Leveling Guide to accomplish this.
Click Here to Load the {p}Ecological Succession{} Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Ecological Succession"
collect Wriggling Pinnacle Cache##245611 |or
'|complete haspet(4848) |or
step
use Wriggling Pinnacle Cache##245611
|tip You may have to complete this weekly quest more than once to obtain the battle pet.
collect Cerulean Lapbug##245274 |or
'|complete haspet(4848) |or
step
use Cerulean Lapbug##245274
learnpet Cerulean Lapbug##4848
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Common Ploughworm",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Common Ploughworm battle pet.",
keywords={"Critter"},
pet=4499,
},[[
step
clicknpc Common Ploughworm##222584
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Common Ploughworm##4499 |goto The Ringing Deeps/0 61.09,79.45
[The Ringing Deeps/0 36.24,19.80]
[The Ringing Deeps/0 38.84,21.80]
[The Ringing Deeps/0 40.44,27.80]
[The Ringing Deeps/0 43.84,34.60]
[The Ringing Deeps/0 53.44,29.20]
[Hallowfall/0 47.60,42.00]
[Hallowfall/0 64.40,30.00]
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Critter Pets\\Copper Lapbug",{
patch='110200',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Copper Lapbug battle pet.",
keywords={"Drop","Critter"},
pet=4847,
startlevel=80,
},[[
step
Complete the Quest {p}Ecological Succession{}
|tip You can use the {p}Ecological Succession{} Leveling Guide to accomplish this.
Click Here to Load the {p}Ecological Succession{} Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Ecological Succession"
collect Wriggling Pinnacle Cache##245611 |or
'|complete haspet(4847) |or
step
use Wriggling Pinnacle Cache##245611
|tip You may have to complete this weekly quest more than once to obtain the battle pet.
collect Copper Lapbug##245273 |or
'|complete haspet(4847) |or
step
use Copper Lapbug##245273
learnpet Copper Lapbug##4847
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Cruncher",{
source='Vendor',
description="This guide will teach you how to acquire the Cruncher battle pet.",
keywords={"","Critter"},
pet=4655,
},[[
step
ding 80 |or
'|complete haspet(4655) |or
step
Reach Renown Level 14 with {b}The Cartels of Undermine{} |complete factionrenown(2653) >= 14 |or
|tip Use the "The Cartels of Undermine" Reputation Guide to accomplish this.
Click Here to Load "The Cartels of Undermine" Reputation Guide |confirm |loadguide "Reputation Guides\\The War Within Reputations\\Council of Dornogal\\Council of Dornogal"
'|complete haspet(4655) |or
step
earn 1 Vintage Kaja'Cola Can##3220 |or
|tip Shovel trash, loot treasures, kill elite and rare mobs, complete world quests.
'|complete haspet(4655) |or
step
talk Angelo Rustbin##234776
buy Cruncher##232858 |goto Undermine/0 25.76,38.13 |or
'|complete haspet(4655) |or
step
use Cruncher##232858
learnpet Cruncher##4655
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Ebon Ploughworm",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Ebon Ploughworm battle pet.",
keywords={"Critter"},
pet=4498,
},[[
step
clicknpc Ebon Ploughworm##222582
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Ebon Ploughworm##4498 |goto The Ringing Deeps/0 39.46,27.43
Can also be found around:
[The Ringing Deeps/0 41.04,25.80]
[The Ringing Deeps/0 39.44,27.60]
[The Ringing Deeps/0 51.04,30.60]
[Hallowfall/0 40.80,54.20]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Fragrant Stonelamb",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Fragrant Stonelamb battle pet.",
keywords={"Critter"},
pet=4525,
},[[
step
clicknpc Fragrant Stonelamb##222774
|tip This pet can be found in the Isle of Dorn.
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
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Frenzied Bloodtick",{
patch='110000',
source='Unknown',
description="This guide will teach you how to acquire the Frenzied Bloodtick battle pet.",
keywords={"Critter"},
pet=4484,
},[[
step
clicknpc Frenzied Bloodtick##234023
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Frenzied Bloodtick##4484 |goto The Ringing Deeps/0 70.00,87.60
Can also be found around:
[The Ringing Deeps/0 68.20,91.20]
[The Ringing Deeps/0 70.59,92.41]
[The Ringing Deeps/0 69.78,96.20]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Gizmo the Pure",{
patch='110002',
source='Achievement',
description="This guide will teach you how to acquire the Gizmo the Pure battle pet.",
keywords={"Critter"},
pet=4614,
},[[
step
achieve 40871/3 |or
|tip Use "The War Within 20th Anniversary Celebration: Guest Relations" Events Guide to achieve this.
Click Here to Open loadguide "Events Guides\\The War Within (70-80)\\20th Anniversary Celebration\\Guest Relations"
'|complete haspet(4614) |or
step
Check Your Mail for a Letter From Riko
collect Gizmo the Pure##228740 |or
'|complete haspet(4614) |or
step
use Gizmo the Pure##228740
learnpet Gizmo the Pure##4614
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Greenlands Chicken",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Greenlands Chicken battle pet.",
keywords={"Critter"},
pet=4461,
},[[
step
clicknpc Greenlands Chicken##222194
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Greenlands Chicken##4461 |goto Hallowfall/0 61.21,29.84
Can also be found around:
[Hallowfall/0 48.80,40.00]
[Hallowfall/0 47.80,63.60]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Lab Rat",{
patch='110100',
source='',
description="This guide will teach you how to acquire the Lab Rat battle pet.",
keywords={'','Critter'},
pet=4653,
},[[
step
ding 80 |or
'|complete haspet(4653) |or
step
Reach Renown Level 14 with {b}The Cartels of Undermine{} |complete factionrenown(2653) >= 14 |or
|tip Use the "The Cartels of Undermine" Reputation Guide to accomplish this.
Click Here to Load "The Cartels of Undermine" Reputation Guide |confirm |loadguide "Reputation Guides\\The War Within Reputations\\Council of Dornogal\\Council of Dornogal"
'|complete haspet(4653) |or
step
earn 3 Vintage Kaja'Cola Can##3220 |or
|tip At Renown Level 2 with The Cartels of Undermine, you unlock {y}Shoveling Trash{} during {b}S.C.R.A.P.{} jobs in Undermine.
|tip At Renown Level 14 with The Cartels of Undermine, you can begin to loot Vintage Kaja'Cola Cans when shoveling, looting chests, or killing rares.
'|complete haspet(4653) |or
step
talk  Angelo Rustbin##234776
buy Lab Rat##232859 |goto Undermine/0 25.76,38.13 |or
'|complete haspet(4653) |or
step
use Lab Rat##232859
learnpet Lab Rat##4653
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Lil' Bonechewer",{
patch='110002',
source='Achievement',
description="This guide will teach you how to acquire the Lil' Bonechewer battle pet.",
keywords={"Critter"},
pet=4500,
},[[
step
ding 80 |or
'|complete haspet(4500) |or
step
achieve 40869 |or
|tip This achievement requires you to complete 3 quests.
|tip Use the "Worm Theory" Achievement Guide to accomplish this.
Click Here to Load the "Worm Theory" Achievement Guide |confirm |loadguide "Achievement Guides\\The War Within Achievements\\Exploration\\Worm Theory"
'|complete haspet(4500) |or
step
use Lil' Bonechewer##225934
learnpet Lil' Bonechewer##4500
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Loamy",{
patch='110002',
source='Vendor',
description="This guide will teach you how to acquire the Loamy battle pet.",
keywords={"Critter"},
pet=4530,
},[[
step
Reach Renown Level 13 with The Council of Dornogal |complete factionrenown(2590) >= 13 |or
|tip Use the "The Council of Dornogal" Reputation Guide to accomplish this.
|tip
|loadguide "Reputation Guides\\The War Within Reputations\\Council of Dornogal\\Council of Dornogal"
'|complete haspet(4530) |or
step
earn 6500 Resonance Crystals##2815 |or
|tip Earn Resonance Crystals by killing Rare, or Rare Elite creatures, completing quests, and opening treasures in The War Within areas.
'|complete haspet(4530) |or
step
talk Auditor Balwurz <Keeper of Renown>##223728
|tip Upstairs inside the building.
buy Loamy##222965 |goto Dornogal/0 39.20,24.20 |or
'|complete haspet(4530) |or
step
use Loamy##222779
learnpet Loamy##4530
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Lil' Moss Rosy",{
patch='110002',
source='Treasure',
description="This guide will teach you how to acquire the Lil' Moss Rosy battle pet.",
keywords={"Critter"},
pet=4527,
},[[
step
Click the Lost Mosswool##222963 |goto Isle of Dorn/0 59.62,24.59 |count 1
|tip Follow the Lost Mosswool.
step
Click the Lost Mosswool##222965 |goto Isle of Dorn/0 59.10,27.06 |count 2
|tip Follow the Lost Mosswool.
step
Click the Lost Mosswool##222965 |goto Isle of Dorn/0 59.75,28.70 |count 3
|tip Follow the Lost Mosswool.
step
click Mosswool Flower##443638
collect Lil' Moss Rosy##222776 |goto Isle of Dorn/0 59.80,28.70
step
use Lil' Moss Rosy##222778
learnpet Lil' Moss Rosy##4527
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Mossy Snail",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Mossy Snail battle pet.",
keywords={"Critter"},
pet=4485,
},[[
step
clicknpc Mossy Snail##222499
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
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Mr. Long-Legs",{
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Mr. Long-Legs battle pet.",
keywords={"Drop","Critter"},
pet=4845,
startlevel=80,
},[[
step
click Battered Book##503363
|tip Next to the structure.
collect 1 Battered Book##233794 |q 86415 |future |goto K'aresh/0 66.55,44.80 |or
'|complete haspet(4845) |or
step
click Submerged Bottle##503370
|tip In the pool.
collect 1 Submerged Bottle##233799 |q 86415 |future |goto K'aresh/0 76.23,31.24 |or
'|complete haspet(4845) |or
step
click Ancient Coffer##503375
|tip It's a little chest on the circular ledge of the broken building.
collect Mr. Long-Legs##245269 |q 86416 |future |goto K'aresh/0 60.90,38.35 |or
'|complete haspet(4845) |or
step
use Mr. Long-Legs##245269
learnpet Mr. Long-Legs##4845
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Sandstone Mosswool",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Sandstone Mosswool battle pet.",
keywords={"Critter"},
pet=4526,
},[[
step
clicknpc Sandstone Mosswool##222775
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
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Critter Pets\\Scrappy Thorntail",{
patch='110200',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Scrappy Thorntail battle pet.",
keywords={"Drop","Critter"},
pet=4826,
startlevel=80,
},[[
step
Complete the Quest {p}Ecological Succession{}
|tip You can use the {p}Ecological Succession{} Leveling Guide to accomplish this.
Click Here to Load the {p}Ecological Succession{} Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Ecological Succession"
collect Wriggling Pinnacle Cache##245611 |or
'|complete haspet(4826) |or
step
use Wriggling Pinnacle Cache##245611
|tip You may have to complete this weekly quest more than once to obtain the battle pet.
collect Scrappy Thorntail##244468 |or
'|complete haspet(4826) |or
step
use Scrappy Thorntail##244468
learnpet Scrappy Thorntail##4826
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Shale Mosswool",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Shale Mosswool battle pet.",
keywords={"Critter"},
pet=4529,
},[[
step
clicknpc Shale Mosswool##222778
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Shale Mosswool##4529 |goto Isle of Dorn/0 36.93,42.64
Can also be found around:
[Isle of Dorn/0 55.58,60.21]
[Isle of Dorn/0 60.79,59.59]
[Isle of Dorn/0 57.20,26.41]
[Isle of Dorn/0 61.41,27.00]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Underroach",{
patch='110100',
source='Pet Battle',
description="This guide will teach you how to acquire the Underroach battle pet.",
keywords={"Critter"},
pet=4654,
},[[
step
clicknpc Underroach##231481
|tip These wee beasties can be in buildings, or outside.
|tip Kill off critters to precipitate a spawn.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Underroach##4654 |goto Undermine/0 47.19,56.63
Can also be found around:
[Undermine/0 45.61,48.00]
[Undermine/0 55.62,48.01]
[Undermine/0 42.00,79.40]
[Undermine/0 63.04,81.80]
[Undermine/0 24.11,54.77]
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Critter Pets\\Veridian Thorntail",{
patch='110200',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Veridian Thorntail battle pet.",
keywords={"Drop","Critter"},
pet=4825,
startlevel=80,
},[[
step
Complete the Quest {p}Ecological Succession{}
|tip You can use the {p}Ecological Succession{} Leveling Guide to accomplish this.
Click Here to Load the {p}Ecological Succession{} Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Ecological Succession"
collect Wriggling Pinnacle Cache##245611 |or
'|complete haspet(4825) |or
step
use Wriggling Pinnacle Cache##245611
|tip You may have to complete this weekly quest more than once to obtain the battle pet.
collect Veridian Thorntail##244467 |or
'|complete haspet(4825) |or
step
use Veridian Thorntail##244467
learnpet Veridian Thorntail##4825
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Vile Bloodtick",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Vile Bloodtick battle pet.",
keywords={"Critter"},
pet=4483,
},[[
step
clicknpc Vile Bloodtick##222421
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Vile Bloodtick##4483 |goto Azj-Kahet/0 47.19,56.63
Can also be found around:
[Azj-Kahet/0 47.41,51.20]
[Azj-Kahet/0 47.22,56.59]
[Azj-Kahet/0 53.60,68.20]
[Azj-Kahet/0 57.20,63.60]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Wily Rat",{
patch='110100',
source='Pet Battle',
description = "This guide will teach you how to acquire the Wily Rat pet.",
keywords={"Critter","Undermine"},
pet=4651,
},[[
step
clicknpc Wily Rat##231477
|tip Kill other critter NPCs if you don't see spawns.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Wily Rat##4651 |goto Undermine/0 51.02,50.60
Can also be found around:
[Undermine/0 47.41,51.20]
[Undermine/0 46.62,58.59]
[Undermine/0 55.80,66.60]
[Undermine/0 63.00,74.00]
[Undermine/0 38.60,62.60]
[Undermine/0 33.60,60.60]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Winged Arachnoid",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Winged Arachnoid battle pet.",
keywords={"Critter"},
pet=4510,
},[[
step
clicknpc Winged Arachnoid##222608
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
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Dragonkin Pets\\Scourge of the Aspects",{
patch='110100',
source='Vendor',
description="This guide will teach you how to acquire the Scourge of the Aspects battle pet.",
keywords={"Vendor","Dragonkin"},
pet=4756,
},[[
step
Complete Revisited Horrific Visions
|tip The scenario location of the Horrific Visions of N'Zoth alternates between Stormwind and Orgrimmar.
|tip Use the Revisited Horrific Visons Event Guides to achieve this.
Click Here to Load the Revisited Horrific Visions of Orgrimmar |confirm |loadguide "Events Guides\\The War Within (70-80)\\Revisited Horrific Vision of Orgrimmar" |or
|tip
Click Here to Load the Revisited Horrific Visions of Stormwind |confirm |loadguide "Events Guides\\The War Within (70-80)\\Revisited Horrific Vision of Stormwind" |or
'|complete haspet(4756) |or
step
earn 5000 Displaced Corrupted Mementos##3149 |or
|tip These drop in the reward chests after completing Horrific Visions of N'Zoth.
'|complete haspet(4756) |or
step
talk Torie##238138
Select _"Yes, I would like to see what you have available."_ |gossip 133016
buy Scourge of the Aspects##235980 |goto Dornogal/0 34.35,68.32 |or
'|complete haspet(4756) |or
step
use Scourge of the Aspects##235980
learnmount Scourge of the Aspects##4756
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Fyrn",{
patch='100200',
source='Blizzard Store',
description="This guide will teach you how to acquire the Fyrn battle pet.",
keywords={"Dragonkin"},
pet=4264,
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Once purchased or awarded, you may need to unwrap in your mount inventory.
|tip Check the Blizzard online Shop and purchase to acquire the Fyrn battle pet.
learnpet Fyrn##4264
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Blightbud",{
patch='110002',
source='Puzzle',
description="This guide will teach you how to acquire the Blightbud battle pet.",
keywords={"Elemental"},
pet=4536,
},[[
step
click Blocked Intake##446100 |goto The Ringing Deeps/0 44.04,48.90
|tip Solve the puzzle to dislodge the treasure.
click Dislodged Blockage##446151
collect Blightbud##221548 |or
'|complete haspet(4536) |or
step
use Blightbud##221548
learnpet Blightbud##4536
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Cinderhoney Emberstinger",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Cinderhoney Emberstinger battle pet.",
keywords={"Elemental"},
pet=4577,
},[[
step
clicknpc Cinderhoney Emberstinger##223698
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Cinderhoney Emberstinger##4577 goto Isle of Dorn/0 68.37,41.63
Can also be found around:
[Isle of Dorn/0 71.58,36.02]
[Isle of Dorn/0 75.20,43.39]
[Isle of Dorn/0 75.22,47.81]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Cinderwold Sizzlestinger",{
patch='110002',
source='Quest',
description="This guide will teach you how to acquire the Cinderwold Sizzlestinger battle pet.",
keywords={"Elemental"},
pet=4570,
},[[
step
Reach Level 73 |ding 73 |or
'|complete haspet(4570) |or
step
Complete the Quest "Home Is Where the Candle Is"
|tip This is the final quest of a side quest chain that starts with "Dripsy Forgot Her Candle" in The Ringing Deeps.
|tip Use the "The War Within (Full Zones)" Leveling Guide to accomplish this.
Click Here to Load "The War Within (Full Zones)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)" \Or
'|complete haspet(4570) |or
step
collect Cinderwold Sizzlestinger##223625 |goto The Ringing Deeps/0 42.84,34.00 |q 79683 |or
'|complete haspet(4570) |or
step
use Cinderwold Sizzlestinger##223625
learnpet Cinderwold Sizzlestinger##4570
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Ghostcap Menace",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Ghostcap Menace battle pet.",
keywords={"Elemental"},
pet=4535,
},[[
step
clicknpc Ghostcap Menace##222877
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
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Magmashell Crawler",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Magmashell Crawler battle pet.",
keywords={"Elemental"},
pet=4518,
},[[
step
clicknpc Magmashell Crawler##222713
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
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Meek Bloodlasher",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Meek Bloodlasher battle pet.",
keywords={"Elemental"},
pet=4533,
},[[
step
clicknpc Meek Bloodlasher##222875
|tip You can usually find these in The Ringing Deeps wherever there are mushroom NPCs.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Meek Bloodlasher##4533 |goto The Ringing Deeps/0 39.29,33.64
Can also be found around:
[Isle of Dorn/0 51.60,67.38]
[Isle of Dorn/0 72.80,39.00]
[Isle of Dorn/0 73.20,37.79]
[The Ringing Deeps/0 49.24,30.19]
[The Ringing Deeps/0 39.43,35.21]
[The Ringing Deeps/0 46.24,39.20]
[The Ringing Deeps/0 53.03,35.21]
[The Ringing Deeps/0 51.04,62.01]
[Hallowfall/0 62.60,45.20]
[Hallowfall/0 55.79,37.59]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Merriment",{
patch='110070',
source='Promotion',
description="This guide will teach you how to acquire the Merriment battle pet.",
keywords={"Promotion","Elemental"},
pet=4733,
},[[
step
This pet is part of a Promotional Purchase acquired in the Blizzard Online Store.
|tip Check the Blizzard Store and purchase the Sha-Infused Heroic Pack to acquire this pet.
|confirm |or
'|complete haspet(4733) |or
step
learnpet Merriment##4733
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Mind Slurp",{
patch='110002',
source='Treasure',
description="This guide will teach you how to acquire the Mind Slurp battle pet.",
keywords={"Elemental"},
pet=4599,
},[[
step
kill Black Blood Extractor##445034+
|tip These are small tanks of red liquid around this area.
Gain the "Unseeming Shift" Debuff |havebuff spell:420847 |goto Azj-Kahet/1 63.70,82.50 |or
'|complete haspet(4599) |or
step
kill Corrupted Memory##223908
|tip This mob standing in front of the memory cache drops the cache key.
collect Cache Key##223870 |goto Azj-Kahet/1 62.71,87.99 |or
'|complete haspet(4599) |or
step
click Memory Cache##446404
|tip The mob respawns quickly.
collect Mind Slurp##225544 |goto Azj-Kahet/1 62.71,87.99 |or
'|complete haspet(4599) |or
step
use Mind Slurp##225544
learnpet Mind Slurp##4599
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Nightfarm Growthling",{
patch='110000',
source='Drop',
description="This guide will teach you how to acquire the Nightfarm Growthling battle pet.",
keywords={"Elemental"},
pet=4534,
},[[
step
collect 8 Radiant Remnants##206350 |or
|tip You can acquire these by killing elite and normal mobs in Hallowfall, or completing quests, opening chests, or patches of disturbed earth.
'|complete haspet(4534) |or
step
Light the Lesser Keyflame |goto Hallowfall/0 64.56,30.58
|tip Use 3 Radiant Remnants at this Lesser Keyflame.
|tip Once the Lesser Keyflame at this location is lit, Yorvas Flintstrike should appear.
|tip Reserve at least 5 Radiant Remnants for the next step.
|confirm |or
'|complete haspet(4534) |or
step
talk Yorvas Flintstrike##208186
Select _"Let me browse your goods."_ |gossip 121620
buy Patrol Torch##219148 |goto Hallowfall/0 64.59,30.69 |or
|tip It costs 5 Radiant Remnants.
'|complete haspet(4534) |or
step
use Patrol Torch##219148
|tip It will be in your inventory.
|tip You should get an extra action button on your screen.
|tip If the button doesn't appear, try dragging the torch to your bar and clicking it from there.
Gain the "Patrol Torch" Buff |complete hasbuff(442962) |or
'|complete haspet(4534) |or
step
extraaction Show the Light##430509
Search the Fungal Fields
|tip Walk around the Fungal Fields and use the ability.
|tip The pet will be revealed by the torch.
|tip This might take some time, but it also might be quick.
|tip Do not fly on a mount or you may lose your Patrol Torch buff.
|tip Be the first to click the pet when it appears because others may click it, too.
collect Nightfarm Growthling##221546 |goto Hallowfall/0 63.82,32.05 |or
'|complete haspet(4534) |or
step
use Nightfarm Growthling##221546
learnpet Nightfarm Growthling##4534
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Ravenous Shalewing",{
patch='100102',
source='Drop',
description="This guide will teach you how to acquire the Ravenous Shalewing battle pet.",
keywords={"Elemental"},
pet=4534,
},[[
step
The Location of this Pet is Unknown
|confirm
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Waxwick",{
patch='110002',
source='Achievement',
description="This guide will teach you how to acquire the Waxwick battle pet.",
keywords={"Elemental"},
pet=4517,
},[[
step
achieve 40194 |n
|tip Collect every battle pet on Khaz Algar.
|tip Use the "Khaz Algar Safari" Achievement Guide to accomplish this.
Click Here to Load the "Khaz Algar Safari" Achievement Guide |confirm |loadguide "Achievement Guides\\The War Within Achievements\\Hallowfall\Exploration\\Khaz Algar Safari" |or
collect Waxwick##221821 |or
'|complete haspet(4517) |or
step
use Waxwick##221821
learnpet Waxwick##4517
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Azure Flickerfly",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Azure Flickerfly battle pet.",
keywords={"Flying"},
pet=4515,
},[[
step
clicknpc Azure Flickerfly##222614
|tip These can be found around light sources around the Ringing Deeps in most areas.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Azure Flickerfly##4515 |goto Hallowfall/0 55.40,40.20
Can also be found around:
[Hallowfall/0 55.80,43.40]
[The Ringing Deeps/0 36.64,18.20]
[The Ringing Deeps/0 39.04,24.00]
[The Ringing Deeps/0 38.44,28.60]
[The Ringing Deeps/0 40.86,44.18]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Bop",{
patch='110000',
source='Drop',
description="This guide will teach you how to acquire the Bop battle pet.",
keywords={"Flying"},
pet=4469,
},[[
step
kill Goldie Baronbottom##218523
|tip She can be found in the Cinderbrew Meadery dungeon.
collect Bop##223155 |or
'|complete haspet(4469) |or
step
use Bop##223155
learnpet Bop##4469
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Fallowspark Glowfly",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Fallowspark Glowfly battle pet.",
keywords={"Flying"},
pet=4514,
},[[
step
clicknpc Fallowspark Glowfly##222613
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Fallowspark Glowfly##4514 |goto Isle of Dorn/0 59.80,30.60
Can also be found around:
[Isle of Dorn/0 53.60,68.40]
[Isle of Dorn/0 57.80,61.20]
[Isle of Dorn/0 65.60,56.20]
[The Ringing Deeps/0 38.90,27.95]
[The Ringing Deeps/0 49.84,32.40]
[The Ringing Deeps/0 44.84,30.40]
[The Ringing Deeps/0 52.04,73.00]
[Hallowfall/0 70.80,45.40]
[Hallowfall/0 70.46,46.08]
[Azj-Kahet/0 54.00,51.80]
[Azj-Kahet/0 77.80,61.40]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Flash",{
patch='110000',
source='TWW Promotion',
description="This guide will teach you how to acquire the Flash battle pet.",
keywords={"Flying"},
pet=4590,
},[[
step
You must have Purchased the {p}Epic{} or {o}Legendary{} Version of _The War Within_ to Acquire These Pets
|confirm
step
Summon the {b}"Squally"{} Battle Pet |complete activepet(4266) |or
|tip {p}Epic{} or {o}Legendary{} version of _The War Within_ is required to obtain this quest and these battle pets.
'|complete haspet(4590) |or
step
talk Squally##209681
accept Gryphons of a Feather##82809 |or
'|complete haspet(4590) |or
step
talk Kurdran Wildhammer##222277
Select <"Tell Kurdran about Squally's despondant mood.">
Speak with Kurdran Wildhammer |q 82809/1 |goto Valdrakken/0 38.34,94.89 |or
'|complete haspet(4590) |or
step
clicknpc Thundo##224768
|tip He is a {y}yellow baby gryphon{} on an animal skull.
Find Thundo |q 82809/4 |goto Thaldraszus/0 49.30,80.26 |or
'|complete haspet(4590) |or
step
clicknpc Gale##224770
|tip He is a {p}purple baby gryphon{} sitting on the bank of a pond near the top of a mountain.
Find Gale |q 82809/3 |goto Ohn'ahran Plains/0 58.35,31.40 |or
'|complete haspet(4590) |or
step
clicknpc Flash##224716
|tip He is a {r}red baby gryphon{} that is sitting alone on a blackend rock near a lava flow.
Find Flash |q 82809/2 |goto The Waking Shores/0 71.79,26.01 |or
'|complete haspet(4590) |or
step
Summon the {b}"Squally"{} Battle Pet |complete activepet(4266) |or
'|complete haspet(4591) |or
step
talk Squally##209681
turnin Gryphons of a Feather##82809 |n
collect Flash##224259 |or
'|complete haspet(4590) |or
step
use Flash##224259
learnpet Flash##4590
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Gale",{
patch='110000',
source='TWW Promotion',
description="This guide will teach you how to acquire the Gale battle pet.",
keywords={"Flying","Gryphons of a Feather"},
pet=4589,
},[[
step
You must have Purchased the {p}Epic{} or {o}Legendary{} Version of _The War Within_ to Acquire These Pets
|confirm
step
Summon the {b}"Squally"{} Battle Pet |complete activepet(4266) |or
|tip {p}Epic{} or {o}Legendary{} version of _The War Within_ is required to obtain this quest and these battle pets.
'|complete haspet(4589) |or
step
talk Squally##209681
accept Gryphons of a Feather##82809 |or
'|complete haspet(4589) |or
step
talk Kurdran Wildhammer##222277
Select <"Tell Kurdran about Squally's despondant mood.">
Speak with Kurdran Wildhammer |q 82809/1 |goto Valdrakken/0 38.34,94.89 |or
'|complete haspet(4589) |or
step
clicknpc Thundo##224768
|tip He is a {y}yellow baby gryphon{} on an animal skull.
Find Thundo |q 82809/4 |goto Thaldraszus/0 49.30,80.26 |or
'|complete haspet(4589) |or
step
clicknpc Gale##224770
|tip He is a {p}purple baby gryphon{} sitting on the bank of a pond near the top of a mountain.
Find Gale |q 82809/3 |goto Ohn'ahran Plains/0 58.35,31.40 |or
'|complete haspet(4589) |or
step
clicknpc Flash##224716
|tip He is a {r}red baby gryphon{} that is sitting alone on a blackend rock near a lava flow.
Find Flash |q 82809/2 |goto The Waking Shores/0 71.79,26.01 |or
'|complete haspet(4589) |or
step
Summon the {b}"Squally"{} Battle Pet |complete activepet(4266) |or
'|complete haspet(4589) |or
step
talk Squally##209681
turnin Gryphons of a Feather##82809 |n
collect Gale##224261 |or
'|complete haspet(4589) |or
step
use Gale##224261
learnpet Gale##4589
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Flying Pets\\Drop Pets\\Graceful Cosmic Ray Pup",{
patch='110200',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Graceful Cosmic Ray Pup battle pet.",
keywords={"Drop","Flying"},
pet=4840,
startlevel=80,
},[[
step
Complete the Quest {p}Ecological Succession{}
|tip You can use the {p}Ecological Succession{} Leveling Guide to accomplish this.
Click Here to Load the {p}Ecological Succession{} Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Ecological Succession"
collect Wriggling Pinnacle Cache##245611 |or
'|complete haspet(4840) |or
step
use Wriggling Pinnacle Cache##245611
|tip You may have to complete this weekly quest more than once to obtain the battle pet.
collect Graceful Cosmic Ray Pup##245252 |or
'|complete haspet(4840) |or
step
use Graceful Cosmic Ray Pup##245252
learnpet Graceful Cosmic Ray Pup##4840
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Hallowed Glowfly",{
patch='110002',
source='Puzzle',
description="This guide will teach you how to acquire the Hallowed Glowfly battle pet.",
keywords={"Flying"},
pet=4467,
},[[
step
ding 80
step
earn 2 Radiant Remnant##206350
step
Restore the Lesser Stillstone Pond Keyflame in Hallowfall. |goto Hallowfall/0 65.82,24.43
Click Here to Continue |conbfirm |next
step
talk Taerry Bilgestone##215956
|tip This vendor is available when the Lesser Sillstone Pond Keyflame is lit.
buy Sparkbug Jar##218107 |goto Hallowfall/0 65.80,24.40
step
click Hallowfall Sparkfly##441795
|tip Walk South along the Water's Edge until you find a Hallowfall Sparkfly.
collect Hallowed Glowfly##222298 |goto Hallowfall/0 43.06,27.95
step
use Hallowed Glowfly##222298
learnpet Hallowed Glowfly##4467
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Lettuce",{
patch='110100',
source='Achievement',
description="This guide will teach you how to acquire the Lettuce battle pet.",
keywords={"Achievement","Flying"},
pet=3518,
},[[
step
ding 80 |or
'|complete haspet(3518) |or
step
achieve 41092 |n
|tip Catch all of the battle pets listed in the Undermine Safari Achievement.
collect Lettuce##205013 |or
'|complete haspet(3518) |or
step
use Lettuce##205013
learnpet Lettuce##3518
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Parley",{
patch='110007',
source='Vendor',
description="This guide will teach you how to acquire the Parley battle pet.",
keywords={"Flying","Plunderstorm"},
pet=4695,
},[[
step
Press "I" and Queue for _Plunderstorm_ on the Player vs. Player Tab of the Group Finder
|tip You can go solo, or group with friends!
|tip The currency is called Plunder, and can be picked up off the ground, looted after killing enemy mobs and players, from opening chests, completing quests, and winning matches.
|tip You don't lose Plunder if you die.
|tip There is no renown to push.
|confirm |or
'|complete haspet(4695) |or
step
Press "I", then Select _Plunderstorm_, then Click the Link for the _Plunderstore_ from the Player vs. Player Tab
|tip Click the "Pets" tab, and select Parley.
collect Parley##235989 |or
'|complete haspet(4695) |or
step
use Parley##235989
learnpet Parley##4695
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Pillaged Parrot",{
patch='110007',
source='PetBattle',
description="This guide will teach you how to acquire the Pillaged Parrot battle pet.",
keywords={"Flying","Siren Isle"},
pet=4710,
},[[
step
clicknpc Pillaged Parrot##234367
|tip This pet spawns during Pirate week on Siren Isle.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Pillaged Parrot##4710 |goto Siren Isle/0 53.07,69.48
Can also be found around:
[Siren Isle/0 53.07,69.48]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Pillarnest Bonedrinker",{
patch='110002',
source='Puzzle',
description="This guide will teach you how to acquire the Pillarnest Bonedrinker battle pet.",
keywords={"Flying"},
pet=4513,
},[[
step
click Nest Egg##446423
|tip On a web near the ceiling.
collect Pillarnest Bonedrinker##221760 |goto Azj-Kahet/0 50.60,48.10 |or
'|complete haspet(4513) |or
step
use Bonedrinker##221760
learnpet Pillarnest Bonedrinker##4513
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Proper Parrot",{
patch='110007',
source='Drop',
description="This guide will teach you how to acquire the Proper Parrot battle pet.",
keywords={"Flying","Siren Isle"},
pet=2541,
},[[
step
Kill rare and elite pirate enemies on Siren Isle
|tip This pet drops during pirate week on Siren Isle.
collect Proper Parrot##166358 |goto Siren Isle/0 53.07,69.48 |or
'|complete haspet(2541) |or
step
use Proper Parrot##16635
learnpet Proper Parrot##2541
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Squally",{
patch='110000',
source='TWW Promotion',
description="This guide will teach you how to acquire the Squally battle pet.",
keywords={"Flying","Gryphons of a Feather"},
pet=4266,
},[[
step
This Battle Pet was Offered as Part of a Promotion
Purchase the {p}Epic{} or {o}Legendary{} Version of _The War Within_ to Acquire This Pet
|confirm |or
'|complete haspet(4266) |or
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Thundo",{
patch='110000',
source='TWW Promotion',
description="This guide will teach you how to acquire the Thundo battle pet.",
keywords={"Flying","Gryphons of a Feather"},
pet=4591,
},[[
step
You must have Purchased the {p}Epic{} or {o}Legendary{} Version of _The War Within_ to Acquire These Pets
|confirm
step
Summon the {b}"Squally"{} Battle Pet |complete activepet(4266) |or
|tip {p}Epic{} or {o}Legendary{} version of _The War Within_ is required to obtain this quest and these battle pets.
'|complete haspet(4591) |or
step
talk Squally##209681
accept Gryphons of a Feather##82809 |or
'|complete haspet(4591) |or
step
talk Kurdran Wildhammer##222277
Select <"Tell Kurdran about Squally's despondant mood.">
Speak with Kurdran Wildhammer |q 82809/1 |goto Valdrakken/0 38.34,94.89 |or
'|complete haspet(4591) |or
step
clicknpc Thundo##224768
|tip He is a {y}yellow baby gryphon{} on an animal skull.
Find Thundo |q 82809/4 |goto Thaldraszus/0 49.30,80.26 |or
'|complete haspet(4591) |or
step
clicknpc Gale##224770
|tip He is a {p}purple baby gryphon{} sitting on the bank of a pond near the top of a mountain.
Find Gale |q 82809/3 |goto Ohn'ahran Plains/0 58.35,31.40 |or
'|complete haspet(4591) |or
step
clicknpc Flash##224716
|tip He is a {r}red baby gryphon{} that is sitting alone on a blackend rock near a lava flow.
Find Flash |q 82809/2 |goto The Waking Shores/0 71.79,26.01 |or
'|complete haspet(4591) |or
step
Summon the {b}"Squally"{} Battle Pet |complete activepet(4266) |or
'|complete haspet(4591) |or
step
talk Squally##209681
turnin Gryphons of a Feather##82809 |n
collect Thundo##224260 |or
'|complete haspet(4591) |or
step
use Thundo##224260
learnpet Thundo##4591
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Timbered Sky Snakelet",{
patch='110007',
source='In-Game Shop',
description="This guide will teach you how to acquire the Timbered Sky Snakelet battle pet.",
keywords={"In-Game Shop","Flying"},
pet=4684,
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Once purchased or awarded, you may need to unwrap in your mount inventory.
|tip Check the Blizzard online Shop and purchase to acquire the Timbered Sky Snakelet battle pet.
learnpet Timbered Sky Snakelet##4684
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Undermoth",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Undermoth battle pet.",
keywords={"Flying"},
pet=3550,
},[[
step
clicknpc Undermoth##204361
|tip This battle pet is seen as a backline pet when battling wild pets in The Maddening Deep of Lower Azj-Kahet.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Undermoth##3550 |goto Azj-Kahet/0 64.99,84.95
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Venomwing",{
patch='110002',
source='Vendor',
description="This guide will teach you how to acquire the Venomwing battle pet.",
keywords={"Flying"},
pet=4511,
},[[
step
collect 50 Polished Pet Charm##163036 |or
|tip You can get these from the world quest pet battles that reward them in Legion, Battle for Azeroth, Shadowlands, Dragonflight, and The War Within areas.
|tip Use the World Quest guides in these areas to do this by clicking the world quest pet battles on your map.
'|complete haspet(4511) |or
step
talk Erani##219230
|tip Inside the building.
Select _"Want to trade some pet charms?"_ |gossip 106777
buy Venomwing##221761 |goto Dornogal/0 58.52,64.85 |or
'|complete haspet(4511) |or
step
use Venomwing##221761
learnpet Venomwing##4511
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Vibrant Glowfly",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Vibrant Glowfly battle pet.",
keywords={"Flying"},
pet=4516,
},[[
step
clicknpc Vibrant Glowfly##222615
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Vibrant Glowfly##4516 |goto The Ringing Deeps/0 36.04,19.80
[The Ringing Deeps/0 46.84,20.00]
[The Ringing Deeps/0 61.64,30.80]
[The Ringing Deeps/0 43.84,34.60]
[The Ringing Deeps/0 58.44,47.60]
[Hallowfall/0 50.00,40.00]
[Hallowfall/0 41.40,55.00]
[Azj-Kahet/0 61.20,51.20]
[Azj-Kahet/0 75.00,78.00]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Whoopy",{
patch='100207',
source='In-Game Shop',
description="This guide will teach you how to acquire the Whoopy battle pet.",
keywords={"In-Game Shop","Flying"},
pet=4568,
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Once purchased or awarded, you may need to unwrap in your mount inventory.
|tip Check the Blizzard online Shop and purchase to acquire the Whoopy battle pet.
learnpet Whoopy##4568
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Chester",{
patch='110002',
source='Drop',
description="This guide will teach you how to acquire the Chester battle pet.",
keywords={"Humanoid"},
pet=4537,
},[[
step
achieve 40817 |or
|tip This achievement requires you to find and open 10 Hidden Troves using Delver's Bounties.
'|complete haspet(4537) |or
step
collect Chester##221820 |goto Azj-Kahet/0 50.60,48.10 |or
'|complete haspet(4537) |or
step
use Chester##221820
learnpet Chester##4537
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Coppers",{
patch='110002',
source='Vendor',
description="This guide will teach you how to acquire the Coppers battle pet.",
keywords={"Humanoid"},
pet=4598,
},[[
step
Unlock "Snuffling"
Reach Renown Rank 2 with The Assembly of the Deeps |complete factionrenown(2594) >= 2 |or
'|complete haspet(4598) |or
step
Dig Disturbed Earth##241838
|tip You can find these in all Khaz Algar zones.
|tip They look like blobs of dirt in a set of small circles on the ground.
|tip If you're having trouble finding them, enable in-game Outline Mode: Interface Tab > Display Section.
collect 50 Odd Glob of Wax##212493 |or
|tip These can also be fished, dropped from mobs, and contained in certain treasures.
'|complete haspet(4598) |or
step
talk Middles <The Wax Collector>##225166
|tip Inside the building.
|tip Contribute 10 times, 100%, to Middles's collection to receive one Firelight Ruby.
collect Firelight Ruby##224642 |goto The Ringing Deeps/0 43.44,35.20 |or
'|complete haspet(4598) |or
step
talk Gnawbles##216164
|tip Inside the building, next to Middles.
buy Coppers##224646 |goto The Ringing Deeps/0 43.44,35.20 |or
'|complete haspet(4598) |or
step
use Coppers##224646
learnpet Coppers##4598
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Frumpy Softpaw",{
patch='110105',
source='Trading Post',
description="This guide will teach you how to acquire the Frumpy Softpaw battle pet.",
keywords={"Trading Post","Humanoid"},
pet=4757,
},[[
step
earn 350 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete haspet(4757) |or
step
Talk to the Trading Post Official
buy Frumpy Softpaw##238178 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete haspet(4757) |or
step
learnpet Frumpy Softpaw##4757
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Parrlok",{
patch='110002',
source='Promotion',
description="This guide will teach you how to acquire the Parrlok battle pet.",
keywords={"Humanoid"},
pet=0000,
},[[
step
This pet was part of a promotion on Discord.
Stream 15 minutes of World of Warcraft on Discord
|tip The World of Warcraft: The War Within Quest can be accepted on Discord.
|tip This promotion is only available 08/23/2024 to 09/08/2024, but may become available again in the future.
collect Parrlok##228758 |or
'|complete haspet(0000) |or
step
use Parrlok##228758
learnpet Parrlok##0000
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Alchemical Runoff",{
patch='110100',
source='Pet Battle',
description="This guide will teach you how to acquire the Alchemical Runoff battle pet.",
keywords={"Magic"},
pet=4693,
},[[
step
clicknpc Alchemical Runoff##231728
|tip These pets may sometimes be difficult to catch due to obstructed battlefield issues.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Alchemical Runoff##4693 |goto Undermine/0 39.63,79.00
You can find more around:
[Undermine/0 25.81,67.60]
[Undermine/0 32.62,67.22]
[Undermine/0 43.59,92.81]
[Undermine/0 40.61,80.01]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Bluedoo",{
patch='100200',
source='World Quest',
description="This guide will teach you how to acquire the Bluedoo battle pet.",
keywords={"Magic"},
pet=4669,
},[[
step
earn 400 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete haspet(4669) |or
step
Talk to the Trading Post Official
buy Bluedoo##231713 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete haspet(4669) |or
step
learnpet Bluedoo##4669
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Magic Pets\\Dread Horrorling",{
patch='110200',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Dread Horrorling battle pet.",
keywords={"Drop","Magic"},
pet=4827,
startlevel=80,
},[[
step
Complete the Quest {p}Ecological Succession{}
|tip You can use the {p}Ecological Succession{} Leveling Guide to accomplish this.
Click Here to Load the {p}Ecological Succession{} Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Ecological Succession"
collect Wriggling Pinnacle Cache##245611 |or
'|complete haspet(4827) |or
step
use Wriggling Pinnacle Cache##245611
|tip You may have to complete this weekly quest chain more than once to obtain the battle pet.
collect Dread Horrorling##244907 |or
'|complete haspet(4827) |or
step
use Dread Horrorling##244907
learnpet Dread Horrorling##4827
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Hemospore",{
patch='110100',
source='Pet Battle',
description="This guide will teach you how to acquire the Hemospore battle pet.",
keywords={"Pet Battle","Magic"},
pet=4507,
},[[
step
clicknpc Hemospore##231728
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Hemospore##4507 |goto The Ringing Deeps/0 71.63,91.60
You can find more around:
[The Ringing Deeps/0 71.01,94.80]
[The Ringing Deeps/0 69.22,92.22]
[The Ringing Deeps/0 73.02,90.77]
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Magic Pets\\Impartial Watcher",{
patch='110200',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Impartial Watcher battle pet.",
keywords={"Drop","Magic"},
pet=4828,
startlevel=80,
},[[
step
Complete the Quest {p}Ecological Succession{}
|tip You can use the {p}Ecological Succession{} Leveling Guide to accomplish this.
Click Here to Load the {p}Ecological Succession{} Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Ecological Succession"
collect Wriggling Pinnacle Cache##245611 |or
'|complete haspet(4828) |or
step
use Wriggling Pinnacle Cache##245611
|tip You may have to complete this weekly quest more than once to obtain the battle pet.
collect Impartial Watcher##244909 |or
'|complete haspet(4828) |or
step
use Impartial Watcher##244909
learnpet Impartial Watcher##4828
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Flying Pets\\Inquisitive Cosmic Ray Pup",{
patch='110200',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Inquisitive Cosmic Ray Pup battle pet.",
keywords={"Drop","Flying"},
pet=4844,
startlevel=80,
},[[
step
Complete the Quest {p}Ecological Succession{}
|tip You can use the {p}Ecological Succession{} Leveling Guide to accomplish this.
Click Here to Load the {p}Ecological Succession{} Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Ecological Succession"
collect Wriggling Pinnacle Cache##245611 |or
'|complete haspet(4844) |or
step
use Wriggling Pinnacle Cache##245611
|tip You may have to complete this weekly quest more than once to obtain the battle pet.
collect Inquisitive Cosmic Ray Pup##245253 |or
'|complete haspet(4844) |or
step
use Inquisitive Cosmic Ray Pup##245253
learnpet Inquisitive Cosmic Ray Pup##4844
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Magic Pets\\Ixthal the Observling",{
patch='110200',
source='Treasure',
author="QuestCore",
description="This guide will teach you how to acquire the Ixthal the Observling battle pet.",
keywords={"Zone","Magic"},
pet=4813,
startlevel=80,
},[[
step
click Skeletal Tail Bones##502547
|tip This is a string of bones lying on the sand underneath the obelisk.
collect Ixthal the Observling##243158 |goto K'aresh/0 77.78,27.87
step
use Ixthal the Observling##243158
learnpet Ixthal the Observling##4813
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Magic Pets\\Penumbral Terror",{
patch='110200',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the Penumbral Terror battle pet.",
keywords={"Vendor","Magic"},
pet=4829,
startlevel=80,
},[[
step
earn 4 Untethered Coin##3303 |goto K'aresh/0 50.36,36.31 |or
|tip Complete the weekly quest "More Than Just a Phase" to earn this currency.
|tip Click the quest on your map to load the QuestCore guide.
'|complete haspet(4829) |or
step
talk Shad'anis##241624
|tip Up the ramp.
buy Penumbral Terror##244910 |goto K'aresh/0 50.36,36.31 |or
'|complete haspet(4829) |or
step
use Penumbral Terror##244910
learnpet Penumbral Terror##4829
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Magic Pets\\Vendor Pets\\P.O.S.T. Assistant",{
patch='110207',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the P.O.S.T. Assistant battle pet.",
keywords={"Vendor","Magic"},
pet=4911,
startlevel=10,
},[[
step
earn 2200 Timewarped Badges##1166 |or
|tip Earn these from completing Timewalking Dungeons, and Timewalking event quests.
'|complete haspet(4911) |or
step
talk Collector Ta'steld##252687
|tip He is only available during the Shadowlands Timewalking Event.
buy P.O.S.T. Assistant##254876 |goto Oribos/0 56.35,64.09 |or
'|complete haspet(4911) |or
step
use P.O.S.T. Assistant##254876
learnpet P.O.S.T. Assistant##4911
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Reek",{
patch='110100',
source='Achievement',
description="This guide will teach you how to acquire the Reek battle pet.",
keywords={"Achievement","Magic"},
pet=2844,
},[[
step
achieve 41928 |or
'|complete haspet(2844) |or
step
collect Reek##174463 |or
'|complete haspet(2844) |or
step
use Reek##174463
learnpet Reek##2844
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Remembered Construct",{
patch='110000',
source='Vendor',
description="This guide will teach you how to acquire the Remembered Construct battle pet.",
keywords={"Magic"},
pet=4451,
},[[
step
collect 10000 Residual Memories##3089
step
talk Remembrancer Amuul <Residual Memories Vendor>##223710
buy Remembered Construct##218245 |goto Dalaran L/12 33.29,84.46
step
use Remembered Construct##218245
learnpet Remembered Construct##4451
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Remembered Riverpaw",{
patch='110000',
source='Vendor',
description="This guide will teach you how to acquire the Remembered Riverpaw battle pet.",
keywords={"Magic"},
pet=4450,
},[[
step
earn 10000 Residual Memories##3089
step
talk Remembrancer Amuul <Residual Memories Vendor>##223710
buy Remembered Riverpaw##218086 |goto Dalaran L/12 33.29,84.46
step
use Remembered Riverpaw##218086
learnpet Remembered Riverpaw##4450
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Remembered Spawn",{
patch='110000',
source='Vendor',
description="This guide will teach you how to acquire the Remembered Spawn battle pet.",
keywords={"Magic"},
pet=4452,
},[[
step
earn 10000 Residual Memories##3089
step
talk Remembrancer Amuul <Residual Memories Vendor>##223710
buy Remembered Spawn##218246 |goto Dalaran L/12 33.29,84.46
step
use Remembered Spawn##218246
learnpet Remembered Spawn##4452
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Magic Pets\\Vendor Pets\\Rhay'Dahr",{
patch='110200',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the Rhay'Dahr companion pet.",
keywords={"Vendor","Magic"},
pet=4830,
},[[
step
earn 30 Twilight Blade Insignia##3319 |or
|tip Earn these by completing world quests and killing rares during the Midnight Twilight Ascension Pre-Patch Event.
'|complete haspet(4830) |or
step
talk Materialist Ophinell##249196
buy Rhay'Dahr##244911 |goto Twilight Highlands/0 49.75,81.31 |or
'|complete haspet(4830) |or
step
use Rhay'Dahr##244911
learnpet Rhay'Dahr##4830
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Shadowy Oozeling",{
patch='110000',
source='PetBattle',
description="This guide will teach you how to acquire the Shadowy Oozeling battle pet.",
keywords={"Magic"},
pet=4480,
},[[
step
clicknpc Extractor Storage##445035, Black Blood Extractor##445034
|tip They look like smoky, red globes with spiky harness.
|tip Don't click the Harmonizing Instruments, as they remove the buff.
|tip You can also stand in the pools.
Gain 50 Stacks of the "Unseeming Shift" Buff |complete hasbuff("spell:420847",50)
step
clicknpc Shadowy Oozeling##222351
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
|tip May also be a backline pet when battling other pets in this area.
learnpet Shadowy Oozeling##4480 |goto Azj-Kahet/1 63.85,87.34
[Azj-Kahet/0 61.00,80.60]
[Azj-Kahet/0 66.60,77.60]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Sir Shady Mrrgglton Junior",{
patch='110000',
source='Vendor',
description="This guide will teach you how to acquire the Sir Shady Mrrgglton Junior battle pet.",
keywords={"Magic"},
pet=4543,
},[[
step
earn 100000 Undercoin##2803 |or
|tip Receive this currency from delves, delve quests, and delve caches.
'|complete haspet(4543) |or
step
talk Sir Finley Mrrgglton <Delve Treasures>##208070
buy Sir Shady Mrrgglton Junior##222974 |goto Dornogal/0 50.60,48.10 |or
'|complete haspet(4543) |or
step
use Sir Shady Mrrgglton Junior##222974
learnpet Sir Shady Mrrgglton Junior##4543
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Umbral Amalgam",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Umbral Amalgam battle pet.",
keywords={"Magic"},
pet=4544,
},[[
step
clicknpc Umbral Amalgam##223136
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
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Voidling Ooze",{
patch='110002',
source='PetBattle',
description="This guide will teach you how to acquire the Voidling Ooze battle pet.",
keywords={"Magic"},
pet=4481,
},[[
step
clicknpc Extractor Storage##445035, Black Blood Extractor##445034
|tip They look like smoky, red globes with spiky harness.
|tip Don't click the Harmonizing Instruments, as they remove the buff.
|tip You can also stand in the pools.
Gain 50 Stacks of the "Unseeming Shift" Buff |complete hasbuff("spell:420847",50)
step
clicknpc Voidling Ooze##222354
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Voidling Ooze##4481 |goto Azj-Kahet/0 61.00,81.60
Can also be found around:
[Azj-Kahet/0 63.60,89.00]
[Azj-Kahet/0 67.00,84.60]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Writhing Transmutagen",{
patch='110000',
source='Professions',
description="This guide will teach you how to acquire the Writhing Transmutagen battle pet.",
keywords={"Magic","Crafted","Alchemy","Transmutation"},
pet=4482,
},[[
step
collect Writhing Transmutagen##223487
|tip This can be crafted with Khaz Algar Thaumaturgy Alchemy.
|tip You can also purchase it from the auction house.
learnpet Writhing Transmutagen##4482
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Bilgewater Junkhauler",{
patch='110100',
source='Pet Battle',
description="This guide will teach you how to acquire the Bilgewater Junkhauler battle pet.",
keywords={"Reputation","Mechanical","Vendor","Bilgewater Cartel"},
pet=4645,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete haspet(4645) |or
step
ding 80 |or
'|complete haspet(4645) |or
step
Unlock Undermine
|tip Use the leveling guides to unlock Undermine.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete haspet(4649) |or
step
Reach {g}Revered{} Reputation with the _Bilgewater Cartel_ |complete rep("Bilgewater Cartel") >= Revered |or
|tip Complete quests, world quests, and Surge Pricing Events in _Bilgewater Cartel_ territory.
|tip Choose _Bilgewater Cartel_ for the weekly quest from Smaks Topskimmer in The Intercontinental Hotel.
'|complete haspet(4645) |or
step
earn 6500 Resonance Crystals##2815 |or
|tip Earn Resonance Crystals by killing Rare, or Rare Elite creatures, completing quests, and opening treasures in The War Within areas.
'|complete haspet(4645) |or
step
talk Rocco Razzboom##231406
buy Bilgewater Junkhauler##232845 |or
'|complete haspet(4645) |or
step
use Bilgewater Junkhauler##232845
learnpet Bilgewater Junkhauler##4645
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Blackwater Kegmover",{
patch='110100',
source='Vendor',
description="This guide will teach you how to acquire the Blackwater Kegmover battle pet.",
keywords={"Vendor","Mechanical"},
pet=4649,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete haspet(4649) |or
step
ding 80 |or
'|complete haspet(4649) |or
step
Unlock Undermine
|tip Use the leveling guides to unlock Undermine.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete haspet(4649) |or
step
collect 5 Miscellaneous Mechanica##234741 |or
|tip This rare item can drop from Rare and Elite mobs, and can even be fished out of pools.
|tip The most reliable drop seem to come from Venture Co. Paragon Troves.
'|complete haspet(4649) |or
step
talk Ditty Fuzeboy##236411
|tip Inside the building.
buy Blackwater Kegmover##232850 |goto Undermine/0 35.39,41.42 |or
'|complete haspet(4649) |or
step
use Blackwater Kegmover##232850
learnpet Blackwater Kegmover##4649
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Crimson Mechasaur",{
patch='110100',
source='Vendor',
description="This guide will teach you how to acquire the Crimson Mechasaur battle pet.",
keywords={"Vendor","Mechanical"},
pet=4638,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete haspet(4638) |or
step
ding 80 |or
'|complete haspet(4638) |or
step
Unlock Undermine
|tip Use the leveling guides to unlock Undermine.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete haspet(4638) |or
step
collect 5 Miscellaneous Mechanica##234741 |or
|tip This rare item can drop from Rare and Elite mobs, and can even be fished out of pools.
|tip The most reliable drop seem to come from Venture Co. Paragon Troves.
'|complete haspet(4638) |or
step
talk Ditty Fuzeboy##236411
|tip Inside the building.
buy Crimson Mechasaur##232842 |goto Undermine/0 35.39,41.42 |or
'|complete haspet(4638) |or
step
use Crimson Mechasaur##232842
learnpet Crimson Mechasaur##4638
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Fuz-Size Flarendo",{
patch='110100',
source='',
description="This guide will teach you how to acquire the Fuz-Size Flarendo battle pet.",
keywords={"","Mechanical"},
pet=4640,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete haspet(4640) |or
step
ding 80 |or
'|complete haspet(4640) |or
step
Unlock Undermine
|tip Use the leveling guides to unlock Undermine.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete haspet(4640) |or
step
Reach Renown Rank 9 with the Gallagio Loyalty Rewards Club |complete factionrenown(2685) >= 9 |or
'|complete haspet(4640) |or
step
talk Snix Longpocket##235623
|tip Inside the Liberation of Undermine Raid instance.
|tip This vendor is available at any difficulty, including LFR.
buy Fuz-Size Flarendo##232844 |or
'|complete haspet(4640) |or
step
use Fuz-Size Flarendo##232844
learnpet Fuz-Size Flarendo##4640
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Gorillion",{
patch='110100',
source='Quest',
description="This guide will teach you how to acquire the Gorillion battle pet.",
keywords={"Quest","Mechanical"},
pet=4642,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete haspet(4642) |or
step
ding 80 |or
'|complete haspet(4642) |or
step
Unlock Undermine and Complete the Welcome to Undermine quest
|tip Use the leveling guides to unlock Undermine.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete completedq(83096) |or
'|complete haspet(4642) |or
step
click Muff's Auto-Locker##467468
|tip Solve the Electric Lock puzzles.
collect Gorillion Fork##234427 |goto Undermine/0 23.81,45.37 |q 87406 |future |or
'|complete haspet(4642) |or
step
click Muff's Auto-Locker##474393
|tip Solve the Electric Lock puzzles.
collect Gorillion Grease##234430 |goto Undermine/0 71.46,85.88 |q 87406 |future |or
'|complete haspet(4642) |or
step
click Muff's Auto-Locker
|tip Solve the Electric Lock puzzles.
collect Gorillion Batteries##234431 |goto Undermine/0 75.14,22.95 |q 87406 |future |or
'|complete haspet(4642) |or
step
click Muff's Auto-Locker
|tip Solve the Electric Lock puzzles.
|tip Outside, under the stairs, on the northwest side of the building.
collect Gorillion Engine##234432 |goto Undermine/0 56.66,55.47 |q 87406 |future |or
'|complete haspet(4642) |or
step
click Muff's Auto-Locker
|tip Solve the Electric Lock puzzles.
collect Gorillion Chasis##234433 |goto Undermine/0 34.31,82.86 |q 87406 |future |or
'|complete haspet(4642) |or
step
Combine the Gorillion Pieces
click Gorillion Chasis##234433
|tip This item is in your bag.
collect Inoperative Gorillion##236961 |or
'|complete haspet(4642) |or
step
use Inoperative Gorillion##236961
accept Inoperative Gorillion##87406 |or
'|complete haspet(4642) |or
step
talk Ditty Fuzeboy##236411
|tip Inside the building.
turnin Inoperative Gorillion##87406 |n
collect Gorillion##232843 |goto Undermine/0 35.40,41.41 |or
'|complete haspet(4642) |or
step
use Gorillion##232843
learnpet Gorillion##4642
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Iron Chick",{
patch='110100',
source='Achievement',
description="This guide will teach you how to acquire the Iron Chick battle pet.",
keywords={"Achievement","Mechanical"},
pet=4664,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete haspet(4664) |or
step
ding 80 |or
'|complete haspet(4664) |or
step
Unlock Undermine
|tip Use the leveling guides to unlock Undermine.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete haspet(4664) |or
stickystart "REVERED_WITH_BLACKWATER"
stickystart "REVERED_WITH_STEAMWHEEDLE"
stickystart "REVERED_WITH_VENTURE_COMPANY"
step
Reach Renown Rank {b}Revered{} with {o}Bilgewater Cartel Faction{} in Undermine |complete factionrenown(2673) >= Revered |or
'|complete haspet(4664) |or
step
label "REVERED_WITH_BLACKWATER"
Reach Renown Rank {b}Revered{} with {y}Blackwater Cartel Faction{} in Undermine |complete factionrenown(2675) >= Revered |or
'|complete haspet(4664) |or
step
label "REVERED_WITH_STEAMWHEEDLE"
Reach Renown Rank {b}Revered{} with {g}Steamwheedle Cartel Faction{} in Undermine |complete factionrenown(2677) >= Revered |or
'|complete haspet(4664) |or
step
label "REVERED_WITH_VENTURE_COMPANY"
Reach Renown Rank {b}Revered{} with {p}Venture Company Faction{} in Undermine |complete factionrenown(2671) >= Revered |or
'|complete haspet(4664) |or
step
achieve 41349
collect Iron Chick##232807 |or
'|complete haspet(4664) |or
step
use Iron Chick##23280
learnpet Iron Chick##4664
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Lime Roboclucker",{
patch='110100',
source='Pet Battle',
description="This guide will teach you how to acquire the Lime Roboclucker battle pet.",
keywords={"Pet Battle","Mechanical"},
pet=4663,
},[[
step
clicknpc Lime Roboclucker#231579
|tip This pet can be seen in the backline when battling wild pets in Undermine.
|tip Defeat other battle pets to acquire this pet from their backline.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Lime Roboclucker##4663 |goto Undermine/0 41.84,10.58
Can also be found around:
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Mechagopher",{
patch='110100',
source='Vendor',
description="This guide will teach you how to acquire the Mechagopher battle pet.",
keywords={"Vendor","Mechanical"},
pet=4661,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete haspet(4661) |or
step
ding 80 |or
'|complete haspet(4661) |or
step
Unlock Undermine
|tip Use the leveling guides to unlock Undermine.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete haspet(4661) |or
step
collect 5 Miscellaneous Mechanica##234741 |or
|tip This rare item can drop from Rare and Elite mobs, and can even be fished out of pools.
|tip The most reliable drop seem to come from Venture Co. Paragon Troves.
'|complete haspet(4661) |or
step
talk Ditty Fuzeboy##236411
|tip Inside the building.
buy Mechagopher##232840 |goto Undermine/0 35.39,41.42 |or
'|complete haspet(4661) |or
step
use Mechagopher##232840
learnpet Mechagopher##4661
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Personal-Use Sapper",{
patch='110100',
source='',
description="This guide will teach you how to acquire the Personal-Use Sapper battle pet.",
keywords={"","Mechanical"},
pet=4646,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete haspet(4646) |or
step
ding 80 |or
'|complete haspet(4646) |or
step
Unlock Undermine
|tip Use the leveling guides to unlock Undermine, and complete the quest, "Welcome to Undermine".
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete haspet(4636) |or
step
Reach Renown Rank 8 with {b}The Cartels of Undermine{} |complete factionrenown(2653) >= 8 |or
|tip Use the {b}Cartels of Undermine{} Reputation Guide to accomplish this.
Click Here to Load the {b}Cartels of Undermine{} Reputation Guide |confirm |loadguide "Reputation Guides\\The War Within Reputations\\The Cartels of Undermine"
'|complete haspet(4646) |or
step
talk Smaks Topskimmer##231409
|tip Inside the building.
accept Many Jobs, Handle It!##85869 |goto Undermine/0 43.86,50.82 |or
'|complete haspet(4646) |or
step
talk Kaydee Racketring##231049
|tip Inside the building.
Sign a Cartel Contract for the Week |q 85869/1 |goto Undermine/0 42.90,52.30 |or
'|complete haspet(4646) |or
step
label "SHIPPING_&_HANDLING"
Follow the Green Arrow
|tip It directs you to complete the Shipping & Handling jobs.
|tip Complete 10 jobs to achieve a Job Streak in Undermine.
|tip If you do not see the green arrow, check your Objective Tracker to see what Shipping & Handling job you are on.
Complete #10# Shipping & Handling Jobs |q 85869/2 |or
'|complete haspet(4646) |or
step
collect Personal-Use Sapper##232847 |or
|tip If you didn't collect the pet, complete another Job Streak.
Click Here to Complete Another Job Streak |confirm |next "SHIPPING_&_HANDLING"
'|complete haspet(4646) |or
step
use Personal-Use Sapper##232847
learnpet Personal-Use Sapper##4646
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Professor Punch",{
patch='110100',
source='Vendor',
description="This guide will teach you how to acquire the Professor Punch battle pet.",
keywords={"Vendor","Mechanical"},
pet=4644,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete haspet(4644) |or
step
ding 80 |or
'|complete haspet(4644) |or
step
Unlock Undermine
|tip Use the leveling guides to unlock Undermine.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete haspet(4644) |or
step
collect 8 Miscellaneous Mechanica##234741 |or
|tip This rare item can drop from Rare and Elite mobs, and can even be fished out of pools.
|tip The most reliable drop seem to come from Venture Co. Paragon Troves.
'|complete haspet(4644) |or
step
talk Ditty Fuzeboy##236411
|tip Inside the building.
buy Professor Punch##232841 |goto Undermine/0 35.39,41.42 |or
'|complete haspet(4644) |or
step
use Professor Punch##232841
learnpet Professor Punch##4644
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Rocket Chicken",{
source='Trading Post',
description="This guide will teach you how to acquire the Rocket Chicken battle pet.",
keywords={"Trading Post","Humanoid"},
pet=168,
},[[
step
earn 200 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete haspet(168) |or
step
Talk to the Trading Post Official
buy Rocket Chicken##34492 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete haspet(168) |or
step
learnpet Rocket Chicken##168
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Mechanical Pets\\Rocketfist",{
patch='110100',
source='Vendor',
description="This guide will teach you how to acquire the Rocketfist battle pet.",
keywords={"Venture Company","Mechanical"},
pet=4641,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete haspet(4641) |or
step
ding 80 |or
'|complete haspet(4641) |or
step
Unlock Undermine
|tip Use the leveling guides to unlock Undermine.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete haspet(4641) |or
step
Reach Renown Rank {b}Revered{} with {p}Venture Company Faction{} in Undermine |complete factionrenown(2671) >= Revered |or
'|complete haspet(4641) |or
step
earn 6500 Resonance Crystals##2815 |or
|tip Earn Resonance Crystals by killing Rare, or Rare Elite creatures, completing quests, and opening treasures in The War Within areas.
'|complete haspet(4641) |or
step
talk Ditty Fuzeboy##236411
|tip Inside the building.
buy Venture Companyman##232849 |goto Undermine/0 35.39,41.42 |or
'|complete haspet(4641) |or
step
use Venture Companyman##232849
learnpet Venture Companyman##4641
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Spring-Loaded Ribbitron",{
patch='110100',
source='Pet Battle',
description = "This guide will teach you how to acquire the Spring-Loaded Ribbitron battle pet.",
keywords={"Mechanical"},
pet=4667,
},[[
step
clicknpc Spring-Loaded Ribbitron#231684
|tip This pet is seen in the backline when battling wild pets in Undermine.
|tip Defeat other battle pets to acquire this pet from their backline.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Spring-Loaded Ribbitron##4667 |goto Undermine/0 69.94,59.98
Can also be found around:
[Undermine/0 32.78,25.38]
[Undermine/0 35.19,25.01]
[Undermine/0 36.58,25.02]
[Undermine/0 35.19,24.01]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Steamwheedle Flunkie",{
patch='110100',
source='Vendor',
description="This guide will teach you how to acquire the Steamwheedle Flunkie battle pet.",
keywords={"Vendor","Mechanical"},
pet=4648,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete haspet(4648) |or
step
ding 80 |or
'|complete haspet(4648) |or
step
Unlock Undermine
|tip Use the leveling guides to unlock Undermine.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete haspet(4648) |or
step
collect 5 Miscellaneous Mechanica##234741 |or
|tip This rare item can drop from Rare and Elite mobs, and can even be fished out of pools.
|tip The most reliable drop seem to come from Venture Co. Paragon Troves.
'|complete haspet(4648) |or
step
talk Ditty Fuzeboy##236411
|tip Inside the building.
buy Steamwheedle Flunkie##232846 |goto Undermine/0 35.39,41.42 |or
'|complete haspet(4648) |or
step
use Steamwheedle Flunkie##232846
learnpet Steamwheedle Flunkie##4648
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Tiny Torq",{
patch='110100',
source='Vendor',
description="This guide will teach you how to acquire the Tiny Torq battle pet.",
keywords={"Vendor","Mechanical","Reputation","Gallagio Loyalty Rewards Club"},
pet=4643,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete haspet(4643) |or
step
ding 80 |or
'|complete haspet(4643) |or
step
Unlock Undermine
|tip Use the leveling guides to unlock Undermine.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete haspet(4643) |or
step
Reach Renown Rank 9 with the Gallagio Loyalty Rewards Club |complete factionrenown(2685) >= 9 |or
'|complete haspet(4643) |or
step
talk Skitto Screwjack##235624
|tip Inside the Liberation of Undermine Raid instance.
|tip This vendor is available at any difficulty, including LFR.
|tip This pet costs no currency if you are Renown Rank 9 with the Gallagio Loyalty Rewards Club.
buy Tiny Torq##232806 |or
'|complete haspet(4643) |or
step
use Tiny Torq##232806
learnpet Tiny Torq##4643
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Ultrahopper EX",{
patch='110100',
source='Pet Battle',
description="This guide will teach you how to acquire the Ultrahopper EX battle pet.",
keywords={"Mechanical"},
pet=4668,
},[[
step
clicknpc Ultrahopper EX##223136
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Ultrahopper EX##4668 |goto Undermine/0 30.20,30.40
Can also be found around:
[Undermine/0 32.78,25.38]
[Undermine/0 35.19,25.01]
[Undermine/0 36.58,25.02]
[Undermine/0 35.19,24.01]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Varmint MK II",{
patch='110100',
source='Pet Battle',
description="This guide will teach you how to acquire the Varmint MK II battle pet.",
keywords={"Mechanical"},
pet=4662,
},[[
step
clicknpc Varmint MK II##231577
|tip Kill other critter NPCs if you don't see spawns.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Varmint MK II##4662 |goto Undermine/0 65.60,59.62
Can also be found around:
[Undermine/0 72.01,60.20]
[Undermine/0 65.82,67.19]
[Undermine/0 71.02,65.40]
[Undermine/0 68.61,72.18]
[Undermine/0 75.01,71.78]
[Undermine/0 69.81,81.03]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Venture Companyman",{
patch='110100',
source='Vendor',
description="This guide will teach you how to acquire the Venture Companyman battle pet.",
keywords={"Vendor","Mechanical"},
pet=4650,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete haspet(4650) |or
step
ding 80 |or
'|complete haspet(4650) |or
step
Unlock Undermine
|tip Use the leveling guides to unlock Undermine.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete haspet(4650) |or
step
collect 5 Miscellaneous Mechanica##234741 |or
|tip This rare item can drop from Rare and Elite mobs, and can even be fished out of pools.
|tip The most reliable drop seem to come from Venture Co. Paragon Troves.
'|complete haspet(4650) |or
step
talk Ditty Fuzeboy##236411
|tip Inside the building.
buy Venture Companyman##232849 |goto Undermine/0 35.39,41.42 |or
'|complete haspet(4650) |or
step
use Venture Companyman##232849
learnpet Venture Companyman##4650
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Viridian Mechasaur",{
patch='110100',
source='',
description="This guide will teach you how to acquire the Viridian Mechasaur battle pet.",
keywords={"","Mechanical"},
pet=4639,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
|tip You can also obtain this battle pet from the auction house.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)" |or
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)" |or
'|complete completedq(78232,78231) |or
'|complete haspet(4639) |or
step
ding 80 |or
'|complete haspet(4639) |or
step
Unlock Undermine and Complete the Campaign
|tip Use the leveling guides to unlock and complete the Undermine Campaign and Story Quests.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)" |or
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)" |or
'|complete haspet(4639) |or
step
Reach Renown Level {o}2{} Reputation with _The Cartels of Undermine_ |complete factionrenown(2653) >= 2 |or
|tip Use the {b}Cartels of Undermine Reputation Guide{} to accomplish this.
Click Here to Load the _Cartels of Undermine Reputation Guide_ |confirm |loadguide "Reputation Guides\\The War Within Reputations\\The Cartels of Undermine" |or
'|complete haspet(4639) |or
step
cast Shoveling Trash##3218
|tip Shovel Trash from S.C.R.A.P. heaps and and complete S.C.R.A.P. jobs.
earn 333 Empty Kaja Cola Cans##3218 |only if rep("The Cartels of Undermine") <= 13 |or
earn 1 Vintage Kaja'Cola Can##3220 |only if rep("The Cartels of Undermine") >= 14 |or
'|complete haspet(4639) |or
step
talk Angelo Rustbin##234776
|tip Inside the building.
buy Sifted Pile of Scrap##233557 |goto Undermine/0 25.59,38.20 |or
'|complete haspet(4639) |or
step
use Sifted Pile of Scrap##233557
|tip Right-click on the item in your bag.
collect Viridian Mechasaur##232838 |or
|tip You may have to buy more than one of these to obtain the pet item.
'|complete haspet(4639) |or
step
use Viridian Mechasaur##232838
learnpet Viridian Mechasaur##4639
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Wavebreaker Mechasaur",{
patch='110100',
source='Vendor',
description="This guide will teach you how to acquire the Wavebreaker Mechasaur battle pet.",
keywords={"Vendor","Mechanical"},
pet=4637,
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete haspet(4637) |or
step
ding 80 |or
'|complete haspet(4637) |or
step
Unlock Undermine
|tip Use the leveling guides to unlock Undermine.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete haspet(4637) |or
step
earn 6500 Resonance Crystals##2815 |or
|tip Earn Resonance Crystals by killing Rare, or Rare Elite creatures, completing quests, and opening treasures in The War Within areas.
'|complete haspet(4637) |or
step
talk Boatswain Hardee##231405
|tip Inside the building.
buy Wavebreaker Mechasaur##232839 |goto Undermine/0 63.42,16.74 |or
'|complete haspet(4637) |or
step
use Wavebreaker Mechasaur##232839
learnpet Wavebreaker Mechasaur##4637
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Itchbite",{
patch='110000',
source='Vendor',
description="This guide will teach you how to acquire the Itchbite battle pet.",
keywords={"Undead"},
pet=4476,
},[[
step
earn 2250 Kej##3056
|tip Earn Kej by killing Rare, or Rare Elite creatures in The War Within areas.
step
talk Clutchmother Marn'tiq <Pet Battle Master>##218207
|tip Also available from vendors Tyro Uwe, and Gobbu.
|tip Vendors may only have one of these pet in inventory.
|tip If the pet isn't available, check other vendors.
collect Itchbite##222968 |goto City of Threads/0 50.60,48.10
Tyro Uwe [Nerub'ar/1 44.96,16.64]
Gobbu [Nerub'ar/1 46.60,29.20]
step
use Itchbite##222968
learnpet Itchbite##4476
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Spinner",{
patch='110000',
source='Treasure',
description="This guide will teach you how to acquire the Spinner battle pet.",
keywords={"Undead"},
pet=4473,
},[[
step
click Trapped Trove##446421
|tip In The Transformatory area, high up inside a building that is webbed to the ceiling.
|tip Avoid the webs and click the treasure.
collect Spinner##222966 |goto Azj-Kahet/0 67.38,74.43
step
use Spinner##222966
learnpet Spinner##4473
]])
