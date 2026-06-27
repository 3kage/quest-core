-- Bundled QuestCore guide
if not QuestCore then return end

QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Blorp",{
patch='62000',
source='Vendor',
description="This guide will walk you through obtaining the Aquatic pet: Blorp",
pet=1666,
},[[
step
talk Galissa Sundew##55103
buy Blorp's Bubble##126925 |goto Darkmoon Island/0 52.60,88.40
|tip This item costs 50 Darkmoon Daggermaw, which is a fish you can catch by fishing on the Darkmoon Faire's shores.
step
use Blorp's Bubble##126925
learnpet Blorp##1666
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Fen Crab",{
patch='60100',
source='PetBattle',
description="This guide will walk you through obtaining the Aquatic pet: Fen Crab",
pet=1581,
},[[
step
Challenge _any Battle Pet_ to a pet battle
|tip The Fen Crab has a chance to join any pet battle in Tanaan Jungle. Just run around battling and you will come across one soon. They don't seem to be very rare.
Use the _Capture_ ability
|tip Battle it until it's low health, then capture it.
learnpet Fen Crab##1581 |goto Tanaan Jungle/0 62.30,41.70
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Ghostshell Crab",{
patch='62000',
source='Vendor',
description="This guide will walk you through obtaining the Aquatic pet: Ghostshell Crab",
pet=1665,
},[[
step
talk Galissa Sundew##55103
buy Translucent Shell##126926 |goto Darkmoon Island/0 52.60,88.40
|tip This item costs 100 Darkmoon Daggermaw, which is a fish you can catch by fishing on the Darkmoon Faire's shores.
step
use Translucent Shell##126926
learnpet Ghostshell Crab##1665
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Bloodthorn Hatchling",{
patch='60100',
source='Vendor',
description="This guide will walk you through obtaining the Beast pet: Bloodthorn Hatchling",
pet=1577,
},[[
step
talk Tiffy Trapspring##94512 |goto Lunarfall/0 30.20,39.80 |only Alliance
talk Giada Goldleash##94516 |goto Frostwall/0 33.00,40.00 |only Horde
|tip She walks around.
buy Bloodthorn Hatchling##127704 |complete itemcount(127704) > 0 or haspet(1577)
|tip This item costs 50 Pet Charms. Use the "Battle Pet Dailies" guide to earn these.
step
use Bloodthorn Hatchling##127704
learnpet Bloodthorn Hatchling##1577
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Fel Pup",{
patch='unknown',
source='unknown',
description="This guide will walk you through obtaining the Beast pet: Fel Pup",
pet=1660,
},[[
step
_Run up_ the dirt path |goto Tanaan Jungle/0 31.00,63.50 < 30 |only if walking
_Go up_ the stairs |goto Tanaan Jungle/0 28.80,66.80 < 30 |only if walking
_Continue up_ the stairs |goto Tanaan Jungle/0 29.10,68.40 < 20 |only if walking
_Run up_ the stairs |goto Tanaan Jungle/0 30.40,68.60 < 20 |only if walking
kill Ceraxas##90434 |goto Tanaan Jungle/0 31.40,68.00
|tip After killing Ceraxas, an Abandoned Fel Pup spawns nearby.
talk Abandoned Fel Pup##90426
|tip It's a tiny green wolf puppy that appears nearby after killing Ceraxas.
accept A Fel Puppy Of My Own##38428
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Lost Netherpup",{
patch='62000',
source='Vendor',
description="This guide will walk you through obtaining the Beast pet: Lost Netherpup",
pet=1661,
},[[
step
talk Tiffy Trapspring##94512 |goto Lunarfall/0 30.20,39.80 |only Alliance
talk Giada Goldleash##94516 |goto Frostwall/0 33.00,40.00 |only Horde
|tip She walks around.
buy Lost Netherpup##127705 |complete itemcount(127705) > 0 or haspet(1661)
|tip This item costs 200 Pet Charms. Use the "Battle Pet Dailies" guide to earn these.
step
use Lost Netherpup##127705
learnpet Lost Netherpup##1661
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Periwinkle Calf",{
patch='62000',
source='Drop',
description="This guide will walk you through obtaining the Beast pet: Periwinkle Calf",
pet=1663,
},[[
step
There are 15 legendary Tanaan Jungle pet battles that can be completed each day.
|tip These can only be completed once per day per account, not per character.
|tip These are legendary pets, and will be difficult fights.
Challenge _Dreadwalker_ to a pet battle |goto Tanaan Jungle/0 47.30,52.80
Challenge _DIreflame_ to a pet battle |goto Tanaan Jungle/0 57.70,37.30
Challenge _Vile Blood of Draenor_ to a pet battle |goto Tanaan Jungle/0 44.00,45.70
Challenge _Mirecroak_ to a pet battle |goto Tanaan Jungle/0 42.20,71.80
Challenge _Corrupted Thundertail_ to a pet battle |goto Tanaan Jungle/0 53.00,65.20
Challenge _Cursed Spirit_ to a pet battle |goto Tanaan Jungle/0 31.40,38.10
Challenge _Felsworn Sentry_ to a pet battle |goto Tanaan Jungle/0 26.20,31.60
Challenge _Breakclaw_ to a pet battle |goto Tanaan Jungle/0 15.70,44.40
|tip These 8 are the easiest to get to.
|tip For the most part all of the legendary pet battles are the same difficulty.
step
Defeat any of these Legendary pets
use Fel-Touched Pet Supplies##127751
|tip You will get one of these for each legendary pet battle you win in Tanaan Jungle.
use Periwinkle Calf##127754
|tip There is only a chance to get this item in the Fel-Touched Pet Supplies.
learnpet Periwinkle Calf##1663 |goto Tanaan Jungle/0 47.30,52.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Savage Cub",{
patch='62000',
source='Vendor',
description="This guide will walk you through obtaining the Beast pet: Savage Cub",
pet=1692,
},[[
step
talk Z'tenga the Walker##92805 |goto Tanaan Jungle/0 55.30,74.70
buy Savage Cub##128477 |complete itemcount(128477) > 0 or haspet(1692)
|tip You need to be Revered with the Saberstalkers faction, as well as 1,500 Blackfang Claws, in order to be able to purchase this item. Use the Saberstalkers dailies guide to accomplish this.
step
use Savage Cub##128477
learnpet Savage Cub##1692
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Nibbles",{
patch='62200',
source='Promotion',
description="This guide will walk you through obtaining the Critter pet: Nibbles",
pet=1691,
},[[
step
This pet is a reward from ordering the Legion Collector's Edition.
learnpet Nibbles##1691
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Shard of Cyrukh",{
patch='62000',
source='Drop',
description="This guide will walk you through obtaining the Elemental pet: Shard of Cyrukh",
pet=1690,
},[[
step
Complete the Garrison Campaign Quest:
_"The Cipher of Damnation"_ |complete completedq(39394) |only Alliance
_"The Cipher of Damnation"_ |complete completedq(38463) |only Horde
|tip Use the "Warlock" Garrison Campaign quest guide to accomplish this.
step
click Forgotten Shard of the Cipher##241671
use Shard of Cyrukh##128309
learnpet Shard of Cyrukh##1690 |goto Tanaan Jungle/0 63.30,28.10
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Blazing Firehawk",{
patch='62000',
source='Vendor',
description="This guide will walk you through obtaining the Flying pet: Blazing Firehawk",
pet=1693,
},[[
step
talk Dawn-Seeker Krisek##95424 |goto Tanaan Jungle/0 58.00,59.40 |only Alliance
talk Dawn-Seeker Krisek##95424 |goto Tanaan Jungle/0 60.40,46.70 |only Horde
buy Blazing Firehawk##128478 |complete itemcount(128478) > 0 or haspet(1693)
|tip You must be Exalted with the Order of the Awakened faction in order to be able to purchase this. Use the Order of the Awakened dailies guide to accomplish this.
step
use Blazing Firehawk##128478
learnpet Blazing Firehawk##1693
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Bloodbeak",{
patch='60100',
source='PetBattle',
description="This guide will walk you through obtaining the Flying pet: Bloodbeak",
pet=1468,
},[[
step
Challenge a _Bloodbeak_ to a pet battle
|tip They are level 25, small red birds flying low to the ground around this area.
Use the _Capture_ ability
|tip Battle it until it's low health, then capture it.
learnpet Bloodbeak##1468 |goto Tanaan Jungle/0 62.30,41.70
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Cerulean Moth",{
patch='60100',
source='PetBattle',
description="This guide will walk you through obtaining the Flying pet: Cerulean Moth",
pet=1586,
},[[
step
_Follow_ the path |goto Tanaan Jungle/0 55.00,64.20 < 30 |only if walking
Challenge a _Cerulean Moth_ to a pet battle
|tip They are level 25, small blue and white moths flying low to the ground around this area.
Use the _Capture_ ability
|tip Battle it until it's low health, then capture it.
learnpet Cerulean Moth##1586 |goto Tanaan Jungle/0 56.00,66.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Crimsonwing Moth",{
patch='60100',
source='PetBattle',
description="This guide will walk you through obtaining the Flying pet: Crimsonwing Moth",
pet=1589,
},[[
step
Challenge a _Crimsonwing Moth_ to a pet battle
|tip They are level 25, small red and white moths flying low to the ground. There can only be 1 of these spawned at a time in the entire zone, and they spawn in place of other pets in the zone, so finding one will require some searching and patience. Turn on "Track Pets" on your minimap tracking, and keep an eye out for one as you walk around.
Use the _Capture_ ability
|tip Battle it until it's low health, then capture it.
learnpet Crimsonwing Moth##1589
Possible Spawn Points:
Point 1: [Talador/0 67.20,22.80]
Point 2: [Talador/0 74.00,32.20]
Point 3: [Talador/0 71.80,41.20]
Point 4: [Talador/0 57.20,46.40]
Point 5: [Talador/0 37.00,63.80]
Point 6: [Talador/0 38.80,79.20]
Point 7: [Talador/0 49.40,85.80]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Dusty Sporewing",{
patch='60100',
source='Vendor',
description="This guide will walk you through obtaining the Flying pet: Dusty Sporewing",
pet=1588,
},[[
step
talk Tiffy Trapspring##94512 |goto Lunarfall/0 30.20,39.80 |only Alliance
talk Giada Goldleash##94516 |goto Frostwall/0 33.00,40.00 |only Horde
|tip She walks around.
buy Dusty Sporewing##127703 |complete itemcount(127703) > 0 or haspet(1588)
|tip This item costs 50 Pet Charms. Use the "Battle Pet Dailies" guide to earn these.
step
use Dusty Sporewing##127703
learnpet Dusty Sporewing##1588
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Glowing Sporebat",{
patch='60200',
source='Vendor',
description="This guide will walk you through obtaining the Flying pet: Glowing Sporebat",
pet=1598,
},[[
step
talk Tiffy Trapspring##94512 |goto Lunarfall/0 30.20,39.80 |only Alliance
talk Giada Goldleash##94516 |goto Frostwall/0 33.00,40.00 |only Horde
|tip She walks around.
buy Glowing Sporewing##127701 |complete itemcount(127701) > 0 or haspet(1598)
|tip This item costs 100 Pet Charms. Use the "Battle Pet Dailies" guide to earn these.
step
Glowing Sporewing##127701
learnpet Glowing Sporebat##1598
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Sapphire Firefly",{
patch='60100',
source='PetBattle',
description="This guide will walk you through obtaining the Flying pet: Sapphire Firefly",
pet=1592,
},[[
step
Challenge a _Sapphire Firefly_ to a pet battle
|tip They are level 25, and look like small blue wasps flying low to the ground. There can only be 1 of these spawned at a time in the entire zone, and they spawn in place of other pets in the zone, so finding one will require some searching and patience. Turn on "Track Pets" on your minimap tracking, and keep an eye out for one as you walk around.
Use the _Capture_ ability
|tip Battle it until it's low health, then capture it.
learnpet Sapphire Firefly##1592
Possible Spawn Points:
Point 1: [Spires of Arak/0 45.00,35.20]
Point 2: [Spires of Arak/0 45.60,61.80]
Point 3: [Spires of Arak/0 59.00,68.60]
Point 4: [Spires of Arak/0 58.00,51.00]
Point 5: [Spires of Arak/0 55.40,32.40]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Seaborne Spore",{
patch='60100',
source='Drop',
description="This guide will walk you through obtaining the Flying pet: Seaborne Spore",
pet=1539,
},[[
step
There are 15 legendary Tanaan Jungle pet battles that can be completed each day.
|tip These can only be completed once per day per account, not per character.
|tip These are legendary pets, and will be difficult fights.
Challenge _Dreadwalker_ to a pet battle |goto Tanaan Jungle/0 47.30,52.80
Challenge _DIreflame_ to a pet battle |goto Tanaan Jungle/0 57.70,37.30
Challenge _Vile Blood of Draenor_ to a pet battle |goto Tanaan Jungle/0 44.00,45.70
Challenge _Mirecroak_ to a pet battle |goto Tanaan Jungle/0 42.20,71.80
Challenge _Corrupted Thundertail_ to a pet battle |goto Tanaan Jungle/0 53.00,65.20
Challenge _Cursed Spirit_ to a pet battle |goto Tanaan Jungle/0 31.40,38.10
Challenge _Felsworn Sentry_ to a pet battle |goto Tanaan Jungle/0 26.20,31.60
Challenge _Breakclaw_ to a pet battle |goto Tanaan Jungle/0 15.70,44.40
|tip These 8 are the easiest to get to.
|tip For the most part all of the legendary pet battles are the same difficulty..
step
Defeat any of these Legendary pets
use Fel-Touched Pet Supplies##127751
|tip You will get one of these for each legendary pet battle you win in Tanaan Jungle.
use Seaborne Spore##118105
|tip There is only a chance to get this item in the Fel-Touched Pet Supplies.
learnpet Seaborne Spore##1539
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Violet Firefly",{
patch='60100',
source='PetBattle',
description="This guide will walk you through obtaining the Flying pet: Violet Firefly",
pet=1591,
},[[
step
Challenge a _Violet Firefly_ to a pet battle
|tip They are level 25, and look like small purple wasps flying low to the ground around this area. If you are having trouble finding one, they also have a chance to appear as secondary opponents when you battle other pets in Tanaan Jungle.
Use the _Capture_ ability
|tip Battle it until it's low health, then capture it.
learnpet Violet Firefly##1591 |goto Tanaan Jungle/0 26.60,55.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Zangar Spore",{
patch='60100',
source='Drop',
description="This guide will walk you through obtaining the Flying pet: Zangar Spore",
pet=1536,
},[[
step
There are 15 legendary Tanaan Jungle pet battles that can be completed each day.
|tip These can only be completed once per day per account, not per character.
|tip These are legendary pets, and will be difficult fights.
Challenge _Dreadwalker_ to a pet battle |goto Tanaan Jungle/0 47.30,52.80
Challenge _DIreflame_ to a pet battle |goto Tanaan Jungle/0 57.70,37.30
Challenge _Vile Blood of Draenor_ to a pet battle |goto Tanaan Jungle/0 44.00,45.70
Challenge _Mirecroak_ to a pet battle |goto Tanaan Jungle/0 42.20,71.80
Challenge _Corrupted Thundertail_ to a pet battle |goto Tanaan Jungle/0 53.00,65.20
Challenge _Cursed Spirit_ to a pet battle |goto Tanaan Jungle/0 31.40,38.10
Challenge _Felsworn Sentry_ to a pet battle |goto Tanaan Jungle/0 26.20,31.60
Challenge _Breakclaw_ to a pet battle |goto Tanaan Jungle/0 15.70,44.40
|tip These 8 are the easiest to get to.
|tip For the most part all of the legendary pet battles are the same difficulty.
step
Defeat any of these Legendary pets
use Fel-Touched Pet Supplies##127751
|tip You will get one of these for each legendary pet battle you win in Tanaan Jungle.
use Zangar Spore##118101
|tip There is only a chance to get this item in the Fel-Touched Pet Supplies.
learnpet Zangar Spore##1536 |goto Tanaan Jungle/0 47.30,52.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Baby Winston",{
patch='62300',
source='Promotion',
description="This guide will walk you through obtaining the Humaniod pet: Baby Winston",
pet=1828,
},[[
step
This pet is a reward from ordering the Overwatch Collector's Edition.
learnpet Baby Winston##1828
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Crusher",{
patch='62000',
source='Vendor',
description="This guide will walk you through obtaining the Humanoid pet: Crusher",
pet=1688,
},[[
step
talk Trader Araanda##95470 |goto Lunarfall/0 30.00,34.60 |only Alliance
talk Trader Darakk##95471 |goto Frostwall/0 40.80,55.80 |only Horde
buy Crusher##127868 |complete itemcount(127868) > 1
|tip This pet costs 1,000 gold.
step
use Crusher##127868
learnpet Crusher##1688
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Grumpling",{
patch='62200',
source='WorldEvent',
description="This guide will walk you through obtaining the Humaniod pet: Grumpling",
pet=1725,
},[[
step
This pet will be part of the 2015 Feast of Winter Vale event.
learnpet Grumpling##1725
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Hogs",{
patch='60100',
source='Achievement',
description="This guide will walk you through obtaining the Humanoid pet: Hogs",
pet=1384,
},[[
step
talk Mola##54601 |goto Darkmoon Island/0 53.60,55.00
Start the Whack-a-Gnoll game
Whack the _Hoggers_ in the Barrels
|tip They pop out of the barrels. The Hoggers are darker brown in color, with brown hair manes. They give more points each, so focus on whacking them.
Score 45 Points in One Session of Whack-a-Gnoll |achieve 9983
|tip This can only be completed while the Darkmoon Faire is available.
step
use Hogs' Studded Collar##123862
learnpet Hogs##1384
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Murkidan",{
patch='60100',
source='Promotion',
description="This guide will walk you through obtaining the Humaniod pet: Murkidan",
pet=1454,
},[[
step
This pet is a reward from ordering a blizzcon 2015 virtual ticket.
learnpet Murkidan##1454
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Terky",{
patch='24000',
source='Drop',
description="This guide will walk you through obtaining the Humanoid pet: Terky",
pet=1073,
},[[
step
This pet WAS only available during the iCoke promotion in Taiwan.
But was inserted into the game so everyone can get it now in patch 6.2.2.
|tip This pet can be found in a cave that might be a little difficult to find.
|tip The cave is located under water and is bascially just a crack in the wall, once in the cave the egg can be found behind the alter in a pile of bones.
click White Murloc Egg##244447
collect White Murloc Egg##22780 |goto Borean Tundra/0 54.60,89.30
use White Murloc Egg##22780
learnpet Terky##1073
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Brightpaw",{
patch='60100',
source='In-GameShop',
description="This guide will walk you through obtaining the Magic pet: Brightpaw",
pet=1466,
},[[
step
This pet will be a blizzard in-store pet.
learnpet Brightpaw##1466
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Energized Manafiend",{
patch='62100',
source='Drop',
description="This guide will walk you through obtaining the Magic pet: Energized Manafiend",
pet=1764,
},[[
step
kill Rukdug##98198 |goto Nagrand D 26.20,34.30
|tip This is a rare elite mob released in patch 6.2.2.
|tip This may require a group to kill.
|tip To get to this mob you will need to have flying in draenor.
use Vibrating Arcane Crystal##129216
|tip This has a small chance to drop, it is not 100 percent.
learnpet Energized Manafiend##1764
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Empowered Manafiend",{
patch='62100',
source='Drop',
description="This guide will walk you through obtaining the Magic pet: Empowered Manafiend",
pet=1766,
},[[
step
kill Pugg##98199 |goto Nagrand D 28.20,29.60
|tip This is a rare elite mob released in patch 6.2.2.
|tip This may require a group to kill.
|tip To get to this mob you will need to have flying in draenor.
use Warm Arcane Crystal##129217
|tip This has a small chance to drop, it is not 100 percent.
learnpet Empowered Manafiend##1766
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Empyreal Manafiend",{
patch='62100',
source='Drop',
description="This guide will walk you through obtaining the Magic pet: Empyreal Manafiend",
pet=1765,
},[[
step
kill Guk##98200 |goto Nagrand D 23.80,38.20
|tip This is a rare elite mob released in patch 6.2.2.
|tip This may require a group to kill.
|tip To get to this mob you will need to have flying in draenor.
use Glittering Arcane Crystal##129218
|tip This has a small chance to drop, it is not 100 percent.
learnpet Empyreal Manafiend##1765
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Nethaera's Light",{
patch='60200',
source='Drop',
description="This guide will walk you through obtaining the Magic pet: Nethaera's Light",
pet=1604,
},[[
step
Find _Nethaera's Light_
|tip It looks like an orange floating candle that can be at this location. It can also be at many other locations all around Dalaran, though not in the sewer. Make a macro for "/tar Nethaera" and spam it as you fly around Dalaran. It has a short respawn time of 5-10 minutes, so you should find it relatively quickly.
Target _Nethaera's Light_ and _cheer_ at it |script DoEmote("CHEER")
|tip Cheer at it repeatedly until you get the pet. The amount of times you need to cheer at it seems to be random.
|tip This pet is a non combat pet, It can not fight and has no level.
learnpet Nethaera's Light##1604 |goto Dalaran/1 45.30,23.10
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Nightmare Bell",{
patch='62000',
source='PetBattle',
description="This guide will walk you through obtaining the Magic pet: Nightmare Bell",
pet=1664,
},[[
step
There are 15 legendary Tanaan Jungle pet battles that can be completed each day.
|tip These can only be completed once per day per account, not per character.
|tip These are legendary pets, and will be difficult fights.
Challenge _Dreadwalker_ to a pet battle |goto Tanaan Jungle/0 47.30,52.80
Challenge _DIreflame_ to a pet battle |goto Tanaan Jungle/0 57.70,37.30
Challenge _Vile Blood of Draenor_ to a pet battle |goto Tanaan Jungle/0 44.00,45.70
Challenge _Mirecroak_ to a pet battle |goto Tanaan Jungle/0 42.20,71.80
Challenge _Corrupted Thundertail_ to a pet battle |goto Tanaan Jungle/0 53.00,65.20
Challenge _Cursed Spirit_ to a pet battle |goto Tanaan Jungle/0 31.40,38.10
Challenge _Felsworn Sentry_ to a pet battle |goto Tanaan Jungle/0 26.20,31.60
Challenge _Breakclaw_ to a pet battle |goto Tanaan Jungle/0 15.70,44.40
|tip These 8 are the easiest to get to.
|tip For the most part all of the legendary pet battles are the same difficulty.
step
Defeat any of these Legendary pets
use Fel-Touched Pet Supplies##127751
|tip You will get one of these for each legendary pet battle you win in Tanaan Jungle.
use Nightmare Bell##127753
|tip There is only a chance to get this item in the Fel-Touched Pet Supplies.
learnpet Nightmare Bell##1664 |goto Tanaan Jungle/0 47.30,52.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Zeradar",{
patch='54000',
source='Promotion',
description="This guide will walk you through obtaining the Magic pet: Zeradar",
pet=1255,
},[[
step
This pet is a reward for ordering the Starcraft 2: Legacy of the Void Collector's Edition.
learnpet Zeradar##1255
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Corrupted Nest Guardian",{
patch='62000',
source='Drop',
description="This guide will walk you through obtaining the Mechanical pet: Corrupted Nest Guardian",
pet=1672,
},[[
step
Enter the _Hellfire Citadel_ Raid |goto Tanaan Jungle/0 45.60,53.60
kill Shadow-Lord Iskar##95067
use Corrupted Nest Guardian##127749
|tip Only one per kill can drop.
learnpet Corrupted Nest Guardian##1672
]])
