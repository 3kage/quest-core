-- QuestCore bundled guide (mists)
if not QuestCore then return end
if not QC.CommonPets then return end
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Dancing Water Skimmer",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Dancing Water Skimmer battle pet.",
pet=751,
mopready=true,
},[[
step
clicknpc Dancing Water Skimmer##65209
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Dancing Water Skimmer##751 |goto Vale of Eternal Blossoms/0 40.74,48.18
You can also find them at: [Vale of Eternal Blossoms/0 62.37,51.68]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Emperor Crab",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Emperor Crab battle pet.",
pet=746,
mopready=true,
},[[
step
clicknpc Emperor Crab##65203
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Emperor Crab##746 |goto Dread Wastes/0 27.95,71.17
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Eternal Strider",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Eternal Strider battle pet.",
pet=383,
mopready=true,
},[[
step
clicknpc Eternal Strider##61088
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Eternal Strider##383  |goto Vale of Eternal Blossoms/0 72.19,27.69
You can also find them at:
[Vale of Eternal Blossoms/0 69.30,44.21]
[Vale of Eternal Blossoms/0 63.94,53.92]
[Vale of Eternal Blossoms/0 82.07,45.84]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Garden Frog",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Garden Frog battle pet.",
pet=569,
mopready=true,
},[[
step
clicknpc Garden Frog##63002
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Garden Frog##569 |goto The Jade Forest/0 54.70,42.90
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Emerald Turtle",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Emerald Turtle battle pet.",
pet=564,
mopready=true,
},[[
step
clicknpc Emerald Turtle##62994
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Emerald Turtle##564 |goto The Jade Forest/0 45.00,36.70
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Golden Civet",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Golden Civet battle pet.",
pet=749,
mopready=true,
},[[
step
clicknpc Golden Civet##63841
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Golden Civet##749 |goto Vale of Eternal Blossoms/0 37.70,31.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Golden Civet Kitten",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Golden Civet Kitten battle pet.",
pet=750,
mopready=true,
},[[
step
clicknpc Golden Civet Kitten##63842
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Golden Civet Kitten##750 |goto Vale of Eternal Blossoms/0 39.80,57.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Gulp Froglet",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Gulp Froglet battle pet.",
pet=1338,
mopready=true,
},[[
step
kill Bufo##72775
|tip Bufo can spawn in the place of any Gulp Frog in this area.
collect 1 Gulp Froglet##104169 |goto Timeless Isle/0 62.70,74.60
step
Use the _Gulp Froglet_ in your bags. |use Gulp Froglet##104169
learnpet Gulp Froglet##1338
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Jungle Darter",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Jungle Darter battle pet.",
pet=565,
mopready=true,
},[[
step
clicknpc Jungle Darter##62997
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Jungle Darter##565 |goto The Jade Forest/0 52.30,67.90
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Kuitan Mongoose",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Kuitan Mongoose battle pet.",
pet=680,
mopready=true,
},[[
step
clicknpc Kuitan Mongoose##63953
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Kuitan Mongoose##680 |goto Townlong Steppes/0 41.40,87.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Leopard Tree Frog",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Leopard Tree Frog battle pet.",
pet=702,
mopready=true,
},[[
step
clicknpc Leopard Tree Frog##63919
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Leopard Tree Frog##702 |goto The Jade Forest/0 45.10,60.30
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Mirror Strider",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Mirror Strider battle pet.",
pet=566,
mopready=true,
},[[
step
clicknpc Mirror Strider##62998
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Mirror Strider##566 |goto The Jade Forest/0 57.90,78.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Mongoose",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Mongoose battle pet.",
pet=737,
mopready=true,
},[[
step
clicknpc Mongoose##65190
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Mongoose##737 |goto Townlong Steppes/0 38.50,85.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Mongoose Pup",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Mongoose Pup battle pet.",
pet=739,
mopready=true,
},[[
step
clicknpc Mongoose Pup##63954
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Mongoose Pup##739 |goto Townlong Steppes/0 21.00,57.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Sa'bak's Favored",{
expansion="mists",
patch='51000',
source='In-GameShop',
description="This guide will teach you how to acquire the Sa'bak's Favored battle pet.",
pet=4850,
mopready=true,
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Check the Blizzard Online Shop and purchase the battle pet.
|tip May also be awarded if you have a 6 month sub.
|tip Once purchased or awarded, you may need to unwrap in your pet inventory.
collect 1 Sa'bak's Favored##239082 |or
'|complete haspet(4850) |or
step
use Sa'bak's Favored##239082
learnpet Sa'bak's Favored##4850
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Sifang Otter",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Sifang Otter battle pet.",
pet=711,
mopready=true,
},[[
step
clicknpc Sifang Otter##63057
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Sifang Otter##711 |goto Valley of the Four Winds/0 31.20,72.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Sifang Otter Pup",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Sifang Otter Pup battle pet.",
pet=712,
mopready=true,
},[[
step
clicknpc Sifang Otter Pup##63358
|tip You may be able to challenge the Sifang Otter and capture the Sifang Otter Pup in the backline.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Sifang Otter Pup##712 |goto Valley of the Four Winds/0 31.20,72.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Softshell Snapling",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Softshell Snapling battle pet.",
pet=713,
mopready=true,
},[[
step
clicknpc Softshell Snapling##63060
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Softshell Snapling##713 |goto Valley of the Four Winds/0 67.80,38.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Spawn of G'nathus",{
expansion="mists",
patch='52000',
source='Drop',
description="This guide will teach you how to acquire the Spawn of G'nathus battle pet.",
pet=1201,
mopready=true,
},[[
step
kill G'nathus##66467
|tip You may need help with this.
|tip You can also obtain this pet from a Satchel of Celestial Chance, or purchase it in the auction house.
collect 1 Spawn of G'nathus##94595 |goto Townlong Steppes/0 29.10,5.00
step
use Spawn of G'nathus##94595
learnpet Spawn of G'nathus##1201
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Spineclaw Crab",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Spineclaw Crab battle pet.",
pet=1337,
mopready=true,
},[[
step
kill Monstrous Spineclaw##73166
|tip This rare spawns in place of the normal elite mobs around the island.
|tip Pick a spawn point that has a big cluster of the elite crabs and farm them.
collect 1 Spineclaw Crab##104168 |goto Timeless Isle/0 22.20,34.60
step
use Spineclaw Crab##104168
learnpet Spineclaw Crab##1337
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Spiny Terrapin",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Spiny Terrapin battle pet.",
pet=723,
mopready=true,
},[[
step
clicknpc Spiny Terrapin##63293
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Spiny Terrapin##723 |goto Krasarang Wilds/0 81.40,23.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Spirebound Crab",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Spirebound Crab battle pet.",
pet=572,
mopready=true,
},[[
step
step
clicknpc Spirebound Crab##63005
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Spirebound Crab##572 |goto The Jade Forest/0 66.20,27.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Swamp Croaker",{
expansion="mists",
patch='52000',
source='PetBattle',
description="This guide will teach you how to acquire the Swamp Croaker battle pet.",
pet=1182,
mopready=true,
},[[
step
clicknpc Swamp Croaker##69819
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Swamp Croaker##1182 |goto Isle of Thunder/0 55.30,70.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Tideskipper",{
expansion="mists",
patch='53000',
source='Drop',
description="This guide will teach you how to acquire the Tideskipper battle pet.",
pet=1230,
mopready=true,
},[[
step
kill Morogrim Tidewalker##21213
collect Shell of Tide-Calling##97552 |goto Serpentshrine Cavern/1 59.40,27.40
step
use Shell of Tide-Calling##97552
learnpet Tideskipper##1230
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Tiny Blue Carp",{
expansion="mists",
patch='52000',
source='Profession',
description="This guide will teach you how to acquire the Tiny Blue Carp battle pet.",
pet=1207,
mopready=true,
},[[
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. |cast Fishing##131474
|tip It may take a while to obtain this pet.
collect 1 Tiny Blue Carp##94933 |goto Vale of Eternal Blossoms/0 72.40,48.50
step
use Tiny Blue Carp##94933
learnpet Tiny Blue Carp##1207
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Tiny Goldfish",{
expansion="mists",
patch='50100',
source='Vendor',
description="This guide will teach you how to acquire the Tiny Goldfish pet.",
pet=652,
mopready=true,
},[[
step
Reach _Honored_ Reputation with _The Anglers_ |complete rep("The Anglers") >= Honored |or
Click here to Load the _The Anglers_ Reputation Guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\The Anglers"
Click here to be Directed to the Vendor |confirm |next "vendor"
|tip This pet requires you to be Honored with The Anglers.
'|complete haspet(652) |or
step
label "reputation"
Train Pandaria Fishing |complete hasprof("Zen Master Fishing",1,600)
|tip You must have learned the fishing profession in order to accept dailies from this faction.
'|complete skill("Zen Master Fishing") >= 1
step
talk Master Angler Marina##64033
accept The Anglers##31369 |goto Vale of Eternal Blossoms/0 86.50,60.10
only if not completedq(31369)
step
talk Fisherman Haito##59584
turnin The Anglers##31369 |goto Krasarang Wilds/0 67.90,45.20
only if not completedq(31369)
step
label "DStart"
talk Fisherman Haito##59584
accept Shocking!##30584 |goto Krasarang Wilds/0 67.90,45.20 |or
accept Jagged Abalone##30586 |goto Krasarang Wilds/0 67.90,45.20 |or
If these quests are unavailable today, click here. |confirm
step
talk Fiznix##60136
accept Like Bombing Fish In A Barrel##30678 |goto Krasarang Wilds/0 67.50,44.60 |or
accept Scavenger Hunt##30698 |goto Krasarang Wilds/0 67.50,44.60 |or
If this quest is unavailable today, click here. |confirm
step
talk Angler Shen##59586
accept Snapclaw##30700 |goto Krasarang Wilds/0 67.50,43.50 |or
accept Fishing for a Bruising##30588 |goto Krasarang Wilds/0 67.50,43.50 |or
If these quests are unavailable today, click here. |confirm
step
talk John "Big Hook" Marsock##60674
accept Bright Bait##30754 |goto Krasarang Wilds/0 68.30,43.50 |or
accept Jumping the Shark##30753 |goto Krasarang Wilds/0 68.30,43.50 |or
If these quests are unavailable today, click here. |confirm
step
talk Trawler Yotimo##60135
accept Armored Carp##30613 |goto Krasarang Wilds/0 67.60,42.50 |or
accept Huff & Puff##30658 |goto Krasarang Wilds/0 67.60,42.50 |or
If these quests are unavailable today, click here. |confirm
step
talk Elder Fisherman Rassan##60673
accept What Lurks Below##30585 |goto Krasarang Wilds/0 68.40,42.10 |or
accept Who Knew Fish Liked Eggs?##30598 |goto Krasarang Wilds/0 68.40,42.10 |or
If these quests are unavailable today, click here. |confirm
step
talk Fo Fook##60675
accept Piranha!##30763 |goto Krasarang Wilds/0 67.20,41.20 |or
accept Viseclaw Soup##30701 |goto Krasarang Wilds/0 67.20,41.20 |or
If these quests are unavailable today, click here. |confirm
step
clicknpc Frenzied Reef Shark##60408
Ride the shark. |invehicle |c |goto Krasarang Wilds/0 68.40,43.10
only if haveq(30753)
step
Use the abilities on your hotbar to kill the shark, make sure not to let your grip bar reach zero.
kill Frenzied Reef Shark##60408 |q 30753/1
only if haveq(30753)
step
click Jagged Abalone##211118
collect 9 Jagged Abalone Meat##80277 |q 30586/1 |goto Krasarang Wilds/0 69.10,37.90
only if haveq(30586)
step
Enter the underwater cave here. |goto Krasarang Wilds/0 71.30,38.50 < 5 |c |walk
only if haveq(30700)
step
kill Snapclaw##60401
collect Snapclaw's Claw##80831 |q 30700/1 |goto Krasarang Wilds/0 73.90,38.40
only if haveq(30700)
step
Leave the cave. |goto Krasarang Wilds/0 71.30,38.50 < 5 |c |walk
only if haveq(30700)
step
Use your fishing skill to fish up 7 Dojani Eel.
collect 7 Dojani Eel##80260 |q 30584/1 |goto Krasarang Wilds/0 65.60,30.50
only if haveq(30584)
step
kill 8 Riverblade Raider##59714+ |q 30588/1 |goto Krasarang Wilds/0 62.40,40.90
only if haveq(30588)
step
kill Viseclaw Fry##61090+, Viseclaw Fisher##58880+
collect 16 Viseclaw Fisher Eye##80832+ |q 30701/1 |goto Krasarang Wilds/0 55.10,45.70
only if haveq(30701)
step
click Suncrawler##211474
collect 7 Suncrawler##81116 |q 30754/1 |goto Krasarang Wilds/0 59.80,38.80
only if haveq(30754)
step
Use your Goblin Fishing Bomb to kill Sting Rays. |use Goblin Fishing Bomb##80599
|tip You can kill the Sting Rays by other means, using the bombs is much quicker though.
kill Sting Ray##60278+
collect 3 Stinger##80600+ |q 30678/1 |goto Krasarang Wilds/0 59.30,46.30
only if haveq(30678)
step
Use your fishing skill to fish up 5 Wolf Piranha.
collect 5 Wolf Piranha##81122 |q 30763/1 |goto Krasarang Wilds/0 36.80,43.30
only if haveq(30763)
step
Use your fishing skill in the Mysterious Whirlpool until Narjon the Gulper appears.
|tip When Narjon spawns, make sure to equip your weapon quickly.
kill Narjon the Gulper##59689 |q 30585/1 |goto Krasarang Wilds/0 34.40,31.40
collect Beloved Ring##80262 |q 30585/2 |goto Krasarang Wilds/0 34.40,31.40
only if haveq(30585)
step
Use your Anglers Fishing Spear near a Prickly Puffer |use Anglers Fishing Spear##80403
|tip The closer you are the easier it is to hit the fish.
kill Prickly Puffer##60037
collect 5 Prickly Puffer Spine##80529 |q 30658/1 |goto Krasarang Wilds/0 51.40,62.20
only if haveq(30658)
step
click Goblin Fishing Raft##211596
Ride a Goblin Fishing Raft |havebuff Rafting##116032 |goto Krasarang Wilds/0 57.50,53.50
only if haveq(30698)
step
Use you fishing skill in the Shipwreck Debris pools to fish up 15 Rusty Shipwreck Debris.
collect 15 Rusty Shipwreck Debris##80830 |q 30698/1 |goto Krasarang Wilds/0 57.30,55.20
You can find more Debris at [64.30,50.60]
only if haveq(30698)
step
click Pristine Crane Egg##211160
collect Pristine Crane Egg##80303 |q 30598/1 |goto Krasarang Wilds/0 65.20,47.50
only if haveq(30598)
step
Use your Anglers Fishing Spear near an Armored Carp |use Anglers Fishing Spear##80403
|tip The closer you are the easier it is to hit the fish.
kill Armored Carp##59936+
collect 5 Armored Carp##80437 |q 30613/1 |goto Krasarang Wilds/0 70.10,51.20
only if haveq(30613)
step
Use the Pristine Crane Egg in your bags |use Pristine Crane Egg##80303
Use your fishing skill in the Crane Yolk Pool and fish up a Silver Goby.
collect Silver Goby##80310 |q 30598/2 |goto Krasarang Wilds/0 68.20,42.70
only if haveq(30598)
step
talk Elder Fisherman Rassan##60673
turnin What Lurks Below##30585 |goto Krasarang Wilds/0 68.40,42.10
turnin Who Knew Fish Liked Eggs?##30598 |goto Krasarang Wilds/0 68.40,42.10
step
talk Fiznix##60136
turnin Like Bombing Fish In A Barrel##30678 |goto Krasarang Wilds/0 67.50,44.60
turnin Scavenger Hunt##30698 |goto Krasarang Wilds 67.50,44.60
step
talk Angler Shen##59586
turnin Snapclaw##30700 |goto Krasarang Wilds 67.50,43.50
turnin Fishing for a Bruising##30588 |goto Krasarang Wilds/0 67.50,43.50
step
talk Trawler Yotimo##60135
turnin Armored Carp##30613 |goto Krasarang Wilds/0 67.60,42.50
turnin Huff & Puff##30658 |goto Krasarang Wilds/0 67.60,42.50
step
talk Fisherman Haito##59584
turnin Shocking!##30584 |goto Krasarang Wilds/0 67.90,45.20
turnin Jagged Abalone##30586 |goto Krasarang Wilds/0 67.90,45.20
step
talk John "Big Hook" Marsock##60674
turnin Bright Bait##30754 |goto Krasarang Wilds/0 68.30,43.50
turnin Jumping the Shark##30753 |goto Krasarang Wilds/0 68.30,43.50
step
talk Fo Fook##60675
turnin Piranha!##30763 |goto Krasarang Wilds/0 67.20,41.20
turnin Viseclaw Soup##30701 |goto Krasarang Wilds/0 67.20,41.20
|next "DStart" |only if rep("The Anglers") <= Honored
|next |only if default
step
label "vendor"
talk Nat Pagle##63721
buy 1 Tiny Goldfish##85447 |goto Krasarang Wilds/0 68.40,43.50
step
learnpet Tiny Goldfish##652 |use Tiny Goldfish##85447
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Tiny Green Carp",{
expansion="mists",
patch='52000',
source='Profession',
description="This guide will teach you how to acquire the Tiny Green Carp battle pet.",
pet=1208,
mopready=true,
},[[
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. |cast Fishing##131474
|tip It may take a while to obtain this pet.
collect 1 Tiny Green Carp##94934 |goto The Jade Forest/0 50.20,21.10
step
use Tiny Green Carp##94934
learnpet Tiny Green Carp##1208
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Tiny Red Carp",{
expansion="mists",
patch='52000',
source='Profession',
description="This guide will teach you how to acquire the Tiny Red Carp battle pet.",
pet=1206,
mopready=true,
},[[
step
Stand on the small island here.
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. |cast Fishing##131474
|tip It may take a while to obtain this pet.
collect 1 Tiny Red Carp##94932 |goto Townlong Steppes/0 35.90,53.30
step
use Tiny Red Carp##94932
learnpet Tiny Red Carp##1206
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Tiny White Carp",{
expansion="mists",
patch='52000',
source='Profession',
description="This guide will teach you how to acquire the Tiny White Carp battle pet.",
pet=1209,
mopready=true,
},[[
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. |cast Fishing##131474
|tip It may take a while to obtain this pet.
collect 1 Tiny White Carp##94935 |goto Kun-Lai Summit/0 32.70,43.90
step
use Tiny White Carp##94935
learnpet Tiny White Carp##1209
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Wanderer's Festival Hatchling",{
expansion="mists",
patch='50400',
source='PetBattle',
description="This guide will teach you how to acquire the Wanderer's Festival Hatchling battle pet.",
pet=1013,
mopready=true,
},[[
step
clicknpc Wanderer's Festival Hatchling##67022
This pet is only obtainable during the Wanderer's Festival every Sunday from 9pm-11pm PST
|tip Once you join the festival, the pets should appear on the beach.
learnpet Wanderer's Festival Hatchling##1013 |goto Krasarang Wilds/0 72.12,32.34
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Yellow-Bellied Bullfrog",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Yellow-Bellied Bullfrog battle pet.",
pet=752,
mopready=true,
},[[
step
clicknpc Yellow-Bellied Bullfrog##63849
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
|tip You may have to wait, realm hop, or battle other pets to find it in the backline.
learnpet Yellow-Bellied Bullfrog##752 |goto Vale of Eternal Blossoms/0 69.00,44.84
You can find more around [Vale of Eternal Blossoms/0 24.60,30.84]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Alpine Foxling",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Alpine Foxling battle pet.",
pet=724,
mopready=true,
},[[
step
clicknpc Alpine Foxling##63550
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Alpine Foxling##724 |goto Kun-Lai Summit/0 38.40,75.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Alpine Foxling Kit",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Alpine Foxling Kit battle pet.",
pet=725,
mopready=true,
},[[
step
clicknpc Alpine Foxling Kit##63551
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Alpine Foxling Kit##725 |goto Kun-Lai Summit/0 39.80,67.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Amethyst Spiderling",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Amethyst Spiderling battle pet.",
pet=716,
mopready=true,
},[[
step
clicknpc Amethyst Spiderling##63288
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Amethyst Spiderling##716 |goto Krasarang Wilds/0 34.60,79.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Bucktooth Flapper",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Bucktooth Flapper battle pet.",
pet=380,
mopready=true,
},[[
step
clicknpc Bucktooth Flapper##62992
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Bucktooth Flapper##380 |goto The Jade Forest/0 54.70,78.10
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Clouded Hedgehog",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Clouded Hedgehog battle pet.",
pet=742,
mopready=true,
},[[
step
clicknpc Clouded Hedgehog##64242
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Clouded Hedgehog##742 |goto Dread Wastes/0 33.10,24.30
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Coral Adder",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Coral Adder battle pet.",
pet=562,
mopready=true,
},[[
step
clicknpc Coral Adder##62991
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Coral Adder##562 |goto The Jade Forest/0 67.00,83.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Crunchy Scorpion",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Crunchy Scorpion battle pet.",
pet=745,
mopready=true,
},[[
step
clicknpc Crunchy Scorpion##63548
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Crunchy Scorpion##745 |goto Dread Wastes/0 65.60,40.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Death Adder Hatchling",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Death Adder Hatchling battle pet.",
pet=1330,
mopready=true,
},[[
step
kill Imperial Python##73163
collect Death Adder Hatchling##104161 |goto Timeless Isle/0 44.40,65.50
step
use Death Adder Hatchling##104161
learnpet Death Adder Hatchling##1330
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Direhorn Runt",{
expansion="mists",
patch='53000',
source='Drop',
description="This guide will teach you how to acquire the Direhorn Runt battle pet.",
pet=1205,
mopready=true,
},[[
step
kill Primal Direhorn Hatchling##70012+
kill Primal Direhorn##70016+
|tip You may need help with this.
collect Direhorn Runt##94573 |goto Isle of Giants/0 60.80,74.80
step
use Direhorn Runt##94573
learnpet Direhorn Runt##1205
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Elder Python",{
expansion="mists",
patch='52000',
source='PetBattle',
description="This guide will teach you how to acquire the Elder Python battle pet.",
pet=1181,
mopready=true,
},[[
step
clicknpc Elder Python##69818
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Elder Python##1181 |goto Isle of Thunder/0 41.30,51.50
You can also find one here: [Isle of Thunder/0 53.50,56.50]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Feverbite Hatchling",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Feverbite Hatchling battle pet.",
pet=714,
mopready=true,
},[[
step
clicknpc Feverbite Hatchling##65054
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Feverbite Hatchling##714 |goto Krasarang Wilds/0 18.00,43.90
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Grove Viper",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Grove Viper battle pet.",
pet=571,
mopready=true,
},[[
step
clicknpc Grove Viper##63004
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Grove Viper##571 |goto The Jade Forest/0 36.50,53.10
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Jumping Spider",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Jumping Spider battle pet.",
pet=699,
mopready=true,
},[[
step
clicknpc Jumping Spider##63715
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Jumping Spider##699 |goto The Jade Forest/0 46.80,32.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Kovok",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Kovok battle pet.",
pet=1334,
mopready=true,
},[[
step
Complete the _Paragons of the Klaxxi_ encounter.
|tip Inside the Throne of Thunder raid.
|tip You may have to kill this boss more than once to obtain the pet.
collect Kovok##104165 |goto Siege of Orgrimmar/11 68.30,35.30
step
use Kovok##104165
learnpet Kovok##1334
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Moon Moon",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Moon Moon battle pet.",
pet=1276,
mopready=true,
},[[
step
kill Moonfang##71992
|tip You can only obtain this pet when the Darkmoon Faire is in town.
collect 1 Moon Moon##101570 |goto Darkmoon Island/0 40.00,45.50
step
use Moon Moon##101570
learnpet Moon Moon##1276
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Plains Monitor",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Plains Monitor battle pet.",
pet=726,
mopready=true,
},[[
step
clicknpc Plains Monitor##63547
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Plains Monitor##726 |goto Kun-Lai Summit/0 67.00,75.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Pygmy Direhorn",{
expansion="mists",
patch='53000',
source='Drop',
description="This guide will teach you how to acquire the Pygmy Direhorn battle pet.",
pet=1200,
mopready=true,
},[[
step
kill Horridon##68476
|tip Inside the Throne of Thunder raid.
|tip You may have to kill this boss more than once to obtain the pet.
|tip You can also purchase this pet from the auction house.
collect Spawn of Horridon##94574 |goto Throne of Thunder/2 26.20,78.20
step
use Pygmy Direhorn##94574
learnpet Pygmy Direhorn##1200
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Silent Hedgehog",{
expansion="mists",
patch='50100',
source='PetBattle',
description="TThis guide will teach you how to acquire the Silent Hedgehog battle pet.",
pet=741,
mopready=true,
},[[
step
clicknpc Silent Hedgehog##64804
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Silent Hedgehog##741 |goto Dread Wastes/0 26.90,29.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Spawn of Garalon",{
expansion="mists",
patch='81500',
source='Drop',
description="This guide will teach you how to acquire the Spawn of Garalon battle pet.",
pet=2587,
mopready=true,
},[[
step
kill Garalon##62164
|tip Inside the Heart of Fear raid.
|tip You may have to kill this boss more than once to obtain the pet.
|tip You can also purchase this pet from the auction house.
collect Spawn of Garalon##167054 |goto Heart of Fear/2 66.60,16.81 |or
'|complete haspet(2587) |or
step
use Spawn of Garalon##167054
learnpet Spawn of Garalon##2587
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Stoneclaw",{
expansion="mists",
patch='81500',
source='Drop',
description="This guide will teach you how to acquire the Stoneclaw battle pet.",
pet=2579,
mopready=true,
},[[
step
Kill Guardian enemies around this area
|tip These look like Chinese dogs.
|tip Inside the Mogu'shan Vaults raid.
|tip You may have to kill this boss more than once to obtain the pet.
|tip You can also purchase this pet from the auction house.
collect Stoneclaw##167047 |goto Mogu'shan Vaults/2 45.78,59.88 |or
'|complete haspet(2579) |or
step
use Stoneclaw##167047
learnpet Stoneclaw##2579
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Stunted Direhorn",{
expansion="mists",
patch='52000',
source='Achievement',
description="This guide will teach you how to acquire the Stunted Direhorn battle pet.",
pet=1184,
mopready=true,
},[[
step
achieve 8300
|tip Win 250 PVP pet battle matches using the Find Battle feature with a full team of level 25 pets.
step
collect Stunted Direhorn##94191
|tip Check your in-game mailbox.
step
use Stunted Direhorn##94191
learnpet Stunted Direhorn##1184
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Summit Kid",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Summit Kid battle pet.",
pet=679,
mopready=true,
},[[
step
clicknpc Summit Kid##64248
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Summit Kid##679 |goto Kun-Lai Summit/0 40.50,83.50
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Temple Snake",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Temple Snake battle pet.",
pet=567,
mopready=true,
},[[
step
clicknpc Temple Snake##62999
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Temple Snake##567 |goto The Jade Forest/0 55.30,62.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Tito",{
expansion="mists",
patch='53000',
source='Achievement',
description="This guide will teach you how to acquire the Tito battle pet.",
pet=1236,
mopready=true,
},[[
step
achieve 8293
|tip Collect all of the battle pets listed from Karazhan, Serpentshrine Cavern, and Tempest Keep.
|tip All the pets listed may also be purchased, if available, in the auction house.
collect Tito's Basket##97558
step
use Tito's Basket##97558
learnpet Tito##1236
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Vengeful Porcupette",{
expansion="mists",
patch='54000',
source='Vendor',
description="This guide will teach you how to acquire the Vengeful Porcupette battle pet.",
pet=1344,
mopready=true,
},[[
step
Kill enemies around this area
|tip There are several caches found throughout the entire isle.
|tip Each enemy drops one coin.
|tip You only receieve a coin if you get the killing blow.
earn 2500 Timeless Coin##777
step
talk Speaker Gulan##73307
buy Censer of Eternal Agony##102467 |goto Timeless Isle/0 74.90,44.90
step
use Censer of Eternal Agony##102467
You will be hostile with BOTH factions once you activate this item.
|tip Note that using this will sacrifice your health by 90%, however this buff is needed to earn Bloody Coins.
|tip Killing players and npcs will net you _Bloody Coins_.
earn 100 Bloody Coin##789
step
talk Speaker Gulan##73307
buy 1 Vengeful Porcupette##103637 |goto Timeless Isle/0 74.90,44.90
step
use Vengeful Porcupette##103637
learnpet Vengeful Porcupette##1344
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Xu-Fu, Cub of Xuen",{
expansion="mists",
patch='54000',
source='Vendor',
description="This guide will teach you how to acquire the Xu-Fu, Cub of Xuen battle pet.",
pet=1266,
mopready=true,
},[[
step
label "start"
You can only obtain this pet by purchasing it using Celestial Coins
|tip You get Celestial Coins from completing the weekly quest, The Celestial Tournament.
confirm
step
talk Master Li##73082
accept The Celestial Tournament##33137 |goto Timeless Isle/0 34.70,59.60
step
talk Master Li##73082
Tell him you'd like to enter the Celestial Tournament |goto Timeless Isle/0 34.70,59.60
confirm
step
Enter the Celestial Tournament |goto Celestial Tournament/0 34.00,55.20 < 1000
step
Once you enter the _Celestial Tournament_ you will notice there are 3 main NPCs that you need to talk to
Click here if those 3 NPCs are _Chen Stormstout_, _Wrathion_, and _Taran Zhu_ |confirm |next "chen"
OR
Click here if those 3 NPCs are _Shademaster Kiryn_, _Blingtron 4000_, and _Wise Mari_ |confirm |next "shademaster"
OR
Click here if those 3 NPCs are _Sully 'The Pickle' McLeary_, _Dr. Ion Goldbloom_, and _Lorewalker Cho_ |confirm |next "thepickle"
step
label "chen"
talk Chen Stormstout##71927
Tell him, "Let's do this!"
|tip Chen Stormstout has a Beast Pet, a Critter Pet and an Elemental Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Chen Stormstout in a pet battle |q 33137 |goto Celestial Tournament/0 40.30,56.50
confirm
step
talk Wrathion##71924
Tell him, "Let's do this!"
|tip Wrathion has an Undead Pet, and two Dragonkin Pets. Use Critter type attacks on his Critters, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Wrathion in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.30
confirm
step
talk Taran Zhu##71931
Tell him, "Let's do this!"
|tip Taran Zhu has three Humanoid Pets. Use Undead type attacks on his Humanoids. Your pets should all be level 25.
Defeat Taran Zhu in a pet battle |q 33137 |goto Celestial Tournament/0 40.10,52.60
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "shademaster"
talk Shademaster Kiryn##71930
Tell her, "Let's do this!"
|tip Shademaster Kiryn has a Humanoid Pet, a Beast Pet and a Mechanical Pet. Use Undead type attacks on her Humanoid, Mechanical type attacks on her Beast, and Elemental type attacks on her Mechanical. Your pets should all be level 25.
Defeat Shademaster Kiryn in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.30
confirm
step
talk Blingtron 4000##71933
Tell him, "Let's do this!"
|tip Blingtron 4000 has an Elemental Pet, a Critter Pet and a Mechanical Pet. Use Aquatic type attacks on his Elemental, Beast type attacks on his Critter, and Elemental type attacks on his Mechanical. Your pets should all be level 25.
Defeat Blingtron 4000 in a pet battle |q 33137 |goto Celestial Tournament/0 40.40,56.50
confirm
step
talk Wise Mari##71932
Tell him, "Let's do this!"
|tip Wise Mari has an Aquatic Pet, a Magic Pet and an Elemental Pet. Use Flying type attacks on his Beast, Dragonkin type attacks on his Magic, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Wise Mari in a pet battle |q 33137 |goto Celestial Tournament/0 40.00,52.70
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "thepickle"
talk Sully 'The Pickle' McLeary##71929
Tell him, "Let's do this!"
|tip Sully 'The Pickle' McLeary has an Undead Pet, a Critter Pet and an Aquatic Pet. Use Critter type attacks on his Undead, Beast type attacks on his Critter, and Flying type attacks on his Aquatic. Your pets should all be level 25.
Defeat Sully 'The Pickle' McLeary in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.40
confirm
step
talk Dr. Ion Goldbloom##71934
Tell him, "Let's do this!"
|tip Dr. Ion Goldbloom has an Flying Pet, a Magic Pet and a Beast Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Mechanical type attacks on his Beast. Your pets should all be level 25.
Defeat Dr. Ion Goldbloom in a pet battle |q 33137 |goto Celestial Tournament/0 40.40,56.40
confirm
step
talk Lorewalker Cho##71926
Tell him, "Let's do this!"
|tip Lorewalker Cho has a Flying Pet, a Magic Pet and a Dragonkin Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Lorewalker Cho in a pet battle |q 33137 |goto Celestial Tournament/0 40.10,52.40
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "phasetwo"
talk Yu'la Broodling of Yu'lon##73507
Tell him, "Let's do this!"
|tip Yu'la is a Dragonkin type pet. Use Humanoid attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Yu'la, Broodling of Yu'lon in a pet battle |scenariogoal 2/23613 |goto Celestial Tournament/0 38.90,56.70
step
talk Xu-Fu Cub of Xuen##73505
Tell him, "Let's do this!"
|tip Xu-Fu is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Xu-Fu, Cub of Xuen in a pet battle |scenariogoal 2/23612 |goto Celestial Tournament/0 40.00,55.20
step
talk Zao Calfling of Niuzao##73506
Tell him, "Let's do this!"
|tip Zao is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Zao, Calfling of Niuzao in a pet battle |scenariogoal 2/23614 |goto Celestial Tournament/0 39.00,53.80
step
talk Chi-Chi Hatchling of Chi-Ji##73503
Tell him, "Let's do this!"
|tip Chi-Chi is a Flying type pet. Use Magic attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Chi-Chi, Hatchling of Chi-Ji in a pet battle |scenariogoal 2/23615 |goto Celestial Tournament/0 38.00,55.20
step
Complete The Celestial Tournament |q 33137/1
step
You will have to have 3 Celestial Coins in order to obtain this pet.
collect 3 Celestial Coin##101529 |next
Click here to go back to the beginning of the guide to complete the weekly quest again. |confirm |next "start"
step
talk Master Li##73082
buy 1 Xu-Fu, Cub of Xuen##101771 |goto Timeless Isle/0 34.80,59.70
step
use Xu-Fu Cub of Xuen##101771
learnpet Xu-Fu, Cub of Xuen##1266
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Zandalari Anklerender",{
expansion="mists",
patch='52000',
source='Drop',
description="This guide will teach you how to acquire the Zandalari Anklerender battle pet.",
pet=1211,
mopready=true,
},[[
step
kill Zandalari Dinomancer##69925+
|tip You may need help with this.
|tip You may have to kill many before obtaining this pet.
|tip Purchasable at the auction house.
collect Zandalari Anklerender##95422 |goto Isle of Giants/0 69.50,71.80
step
use Zandalari Anklerender##95422
learnpet Zandalari Anklerender##1211
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Zandalari Footslasher",{
expansion="mists",
patch='52000',
source='Drop',
description="This guide will teach you how to acquire the Zandalari Footslasher battle pet.",
pet=1212,
mopready=true,
},[[
step
kill Zandalari Dinomancer##69925+
|tip You may need help with this.
|tip You may have to kill many before obtaining this pet.
|tip Purchasable at the auction house.
collect Zandalari Footslasher##95423 |goto Isle of Giants/0 69.50,71.80
step
use Zandalari Footslasher##95423
learnpet Zandalari Footslasher##1212
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Zandalari Kneebiter",{
expansion="mists",
patch='52000',
source='Drop',
description="This guide will teach you how to acquire the Zandalari Kneebiter battle pet.",
pet=1180,
mopready=true,
},[[
step
kill Zandalari Dinomancer##69925+
|tip You may need help with this.
|tip You may have to kill many before obtaining this pet.
|tip Purchasable at the auction house.
collect Zandalari Kneebiter##94126 |goto Isle of Giants/0 69.50,71.80
step
use Zandalari Kneebiter##94126
learnpet Zandalari Kneebiter##1180
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Zandalari Toenibbler",{
expansion="mists",
patch='52000',
source='Drop',
description="This guide will teach you how to acquire the Zandalari Toenibbler battle pet.",
pet=1213,
mopready=true,
},[[
step
kill Zandalari Dinomancer##69925+
|tip You may need help with this.
|tip You may have to kill many before obtaining this pet.
|tip Purchasable at the auction house.
collect Zandalari Toenibbler##95424 |goto Isle of Giants/0 69.50,71.80
step
use Zandalari Toenibbler##95424
learnpet Zandalari Toenibbler##1213
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Zao, Calfling of Niuzao",{
expansion="mists",
patch='54000',
source='Vendor',
description="This guide will teach you how to acquire the Zao, Calfling of Niuzao battle pet.",
pet=1305,
mopready=true,
},[[
step
label "start"
You can only obtain this pet by purchasing it using Celestial Coins
|tip You get Celestial Coins from completing the weekly quest, The Celestial Tournament.
confirm
step
talk Master Li##73082
accept The Celestial Tournament##33137 |goto Timeless Isle/0 34.70,59.60
step
talk Master Li##73082
Tell him you'd like to enter the Celestial Tournament |goto Timeless Isle/0 34.70,59.60
confirm
step
Enter the Celestial Tournament |goto Celestial Tournament/0 34.00,55.20 < 1000
step
Once you enter the _Celestial Tournament_ you will notice there are 3 main NPCs that you need to talk to
Click here if those 3 NPCs are _Chen Stormstout_, _Wrathion_, and _Taran Zhu_ |confirm |next "chen"
OR
Click here if those 3 NPCs are _Shademaster Kiryn_, _Blingtron 4000_, and _Wise Mari_ |confirm |next "shademaster"
OR
Click here if those 3 NPCs are _Sully 'The Pickle' McLeary_, _Dr. Ion Goldbloom_, and _Lorewalker Cho_ |confirm |next "thepickle"
step
label "chen"
talk Chen Stormstout##71927
Tell him, "Let's do this!"
|tip Chen Stormstout has a Beast Pet, a Critter Pet and an Elemental Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Chen Stormstout in a pet battle |q 33137 |goto Celestial Tournament/0 40.30,56.50
confirm
step
talk Wrathion##71924
Tell him, "Let's do this!"
|tip Wrathion has an Undead Pet, and two Dragonkin Pets. Use Critter type attacks on his Critters, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Wrathion in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.30
confirm
step
talk Taran Zhu##71931
Tell him, "Let's do this!"
|tip Taran Zhu has three Humanoid Pets. Use Undead type attacks on his Humanoids. Your pets should all be level 25.
Defeat Taran Zhu in a pet battle |q 33137 |goto Celestial Tournament/0 40.10,52.60
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "shademaster"
talk Shademaster Kiryn##71930
Tell her, "Let's do this!"
|tip Shademaster Kiryn has a Humanoid Pet, a Beast Pet and a Mechanical Pet. Use Undead type attacks on her Humanoid, Mechanical type attacks on her Beast, and Elemental type attacks on her Mechanical. Your pets should all be level 25.
Defeat Shademaster Kiryn in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.30
confirm
step
talk Blingtron 4000##71933
Tell him, "Let's do this!"
|tip Blingtron 4000 has an Elemental Pet, a Critter Pet and a Mechanical Pet. Use Aquatic type attacks on his Elemental, Beast type attacks on his Critter, and Elemental type attacks on his Mechanical. Your pets should all be level 25.
Defeat Blingtron 4000 in a pet battle |q 33137 |goto Celestial Tournament/0 40.40,56.50
confirm
step
talk Wise Mari##71932
Tell him, "Let's do this!"
|tip Wise Mari has an Aquatic Pet, a Magic Pet and an Elemental Pet. Use Flying type attacks on his Beast, Dragonkin type attacks on his Magic, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Wise Mari in a pet battle |q 33137 |goto Celestial Tournament/0 40.00,52.70
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "thepickle"
talk Sully 'The Pickle' McLeary##71929
Tell him, "Let's do this!"
|tip Sully 'The Pickle' McLeary has an Undead Pet, a Critter Pet and an Aquatic Pet. Use Critter type attacks on his Undead, Beast type attacks on his Critter, and Flying type attacks on his Aquatic. Your pets should all be level 25.
Defeat Sully 'The Pickle' McLeary in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.40
confirm
step
talk Dr. Ion Goldbloom##71934
Tell him, "Let's do this!"
|tip Dr. Ion Goldbloom has an Flying Pet, a Magic Pet and a Beast Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Mechanical type attacks on his Beast. Your pets should all be level 25.
Defeat Dr. Ion Goldbloom in a pet battle |q 33137 |goto Celestial Tournament/0 40.40,56.40
confirm
step
talk Lorewalker Cho##71926
Tell him, "Let's do this!"
|tip Lorewalker Cho has a Flying Pet, a Magic Pet and a Dragonkin Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Lorewalker Cho in a pet battle |q 33137 |goto Celestial Tournament/0 40.10,52.40
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "phasetwo"
talk Yu'la Broodling of Yu'lon##73507
Tell him, "Let's do this!"
|tip Yu'la is a Dragonkin type pet. Use Humanoid attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Yu'la, Broodling of Yu'lon in a pet battle |scenariogoal 2/23613 |goto Celestial Tournament/0 38.90,56.70
step
talk Xu-Fu Cub of Xuen##73505
Tell him, "Let's do this!"
|tip Xu-Fu is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Xu-Fu, Cub of Xuen in a pet battle |scenariogoal 2/23612 |goto Celestial Tournament/0 40.00,55.20
step
talk Zao Calfling of Niuzao##73506
Tell him, "Let's do this!"
|tip Zao is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Zao, Calfling of Niuzao in a pet battle |scenariogoal 2/23614 |goto Celestial Tournament/0 39.00,53.80
step
talk Chi-Chi Hatchling of Chi-Ji##73503
Tell him, "Let's do this!"
|tip Chi-Chi is a Flying type pet. Use Magic attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Chi-Chi, Hatchling of Chi-Ji in a pet battle |scenariogoal 2/23615 |goto Celestial Tournament/0 38.00,55.20
step
Complete The Celestial Tournament |q 33137/1
step
You will have to have 3 Celestial Coins in order to obtain this pet.
collect 3 Celestial Coin##101529 |next
Click here to go back to the beginning of the guide to complete the weekly quest again. |confirm |next "start"
step
talk Master Li##73082
buy 1 Zao, Calfling of Niuzao##102146 |goto Timeless Isle/0 34.80,59.70
step
use Zao Calfling of Niuzao##102146
learnpet Zao, Calfling of Niuzao##1305
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Zooey Snake",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Zooey Snake battle pet.",
pet=731,
mopready=true,
},[[
step
clicknpc Zooey Snake##63555
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Zooey Snake##731 |goto Kun-Lai Summit/0 66.30,87.30
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Bandicoon",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Bandicoon battle pet.",
pet=706,
mopready=true,
},[[
step
clicknpc Bandicoon##63062
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Bandicoon##706 |goto Valley of the Four Winds/0 54.10,67.10
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Bandicoon Kit",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Bandicoon Kit battle pet.",
pet=707,
mopready=true,
},[[
step
clicknpc Bandicoon Kit##63064
|tip This pet may be tamed from the backline of a Bandicoon or other pet battles in Valley of the Four Winds.
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Bandicoon Kit##707 |goto Valley of the Four Winds/0 54.10,67.10
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Grassland Hopper",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Grassland Hopper battle pet.",
pet=733,
mopready=true,
},[[
step
clicknpc Grassland Hopper##63549
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Grassland Hopper##733 |goto Townlong Steppes/0 41.70,86.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Gu'chi Swarmling",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Gu'chi Swarmling battle pet.",
pet=1345,
mopready=true,
},[[
step
kill Gu'chi the Swarmbringer##72909
|tip He walks around the village here.
|tip You may have to kill this
collect 1 Gu'chi Swarmling##104291 |goto Timeless Isle/0 40.40,78.00
step
use Gu'chi Swarmling##104291
learnpet Gu'chi Swarmling##1345
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Imperial Silkworm",{
expansion="mists",
patch='51000',
source='Profession',
description="This guide will teach you how to acquire the Imperial Silkworm battle pet.",
pet=1040,
mopready=true,
},[[
step
Click here to gather and create the pet yourself |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
|tip This pet requires you to either have level 25-35 Pandaria Tailoring, or purchase it from the Auction House.
|tip Creating an Imperial Silk or Song of Harmony in the Silken Fields awards a Silkworm Cocoon, which has a chance to drop the pet.
step
label "create"
kill Springtail Leaper##57415+, Springtail Gnasher##57413+
collect 40 Windwool Cloth##72988 |goto Valley of the Four Winds/0 43.90,38.60
step
create 5 Bolt of Windwool Cloth##82441
step
Farm all enemies on the Isle of Thunder to collect Motes of Harmony.
when you get 10, right click them to collect Spirit of Harmony.
collect 3 Spirit of Harmony##76061+
step
create Song of Harmony##130325,Tailoring,1 total
collect 1 Imperial Silk##82447
step
#include "trainer_Tailoring"
learn Silkworm Cocoon##125557
step
create 1 Silkworm Cocoon##92960
step
use Silkworm Cocoon##92960
|tip You may have to open more than one to obtain the pet.
collect 1 Imperial Moth##67230 |or
collect 1 Imperial Silkworm##67233 |or
|next "done"
step
label "buy"
#include "auctioneer"
buy 1 Imperial Silkworm##90902
|next "done"
step
label "done"
learnpet Imperial Moth##1039 |use Imperial Moth##90900 |or
learnpet Imperial Silkworm##1040 |use Imperial Silkworm##90902 |or
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Jungle Grub",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Jungle Grub battle pet.",
pet=678,
mopready=true,
},[[
step
clicknpc Jungle Grub##63304
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Jungle Grub##678 |goto Krasarang Wilds/0 77.80,13.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Malayan Quillrat",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Malayan Quillrat battle pet.",
pet=708,
mopready=true,
},[[
step
clicknpc Malayan Quillrat##63094
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Malayan Quillrat##708 |goto Valley of the Four Winds/0 74.40,40.90
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Malayan Quillrat Pup",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Malayan Quillrat Pup battle pet.",
pet=709,
mopready=true,
},[[
step
clicknpc Malayan Quillrat Pup##63095
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Malayan Quillrat Pup##709 |goto Valley of the Four Winds/0 74.40,40.90
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Marsh Fiddler",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Marsh Fiddler battle pet.",
pet=710,
mopready=true,
},[[
step
clicknpc Marsh Fiddler##63096
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Marsh Fiddler##710 |goto Valley of the Four Winds/0 22.40,44.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Masked Tanuki",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Masked Tanuki battle pet.",
pet=570,
mopready=true,
},[[
step
clicknpc Masked Tanuki##63003
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Masked Tanuki##570 |goto The Jade Forest/0 51.50,74.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Masked Tanuki Pup",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Masked Tanuki Pup battle pet.",
pet=703,
mopready=true,
},[[
step
clicknpc Masked Tanuki Pup##63716
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Masked Tanuki Pup##703 |goto The Jade Forest/0 51.50,74.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Prairie Mouse",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Prairie Mouse battle pet.",
pet=727,
mopready=true,
},[[
step
clicknpc Prairie Mouse##59702
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Prairie Mouse##727 |goto Kun-Lai Summit/0 71.60,94.70
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Rapana Whelk",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Rapana Whelk battle pet.",
pet=743,
mopready=true,
},[[
step
clicknpc Rapana Whelk##64352
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Rapana Whelk##743 |goto Dread Wastes/0 54.30,74.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Red Cricket",{
expansion="mists",
patch='50400',
source='Quest',
description="This guide will teach you how to acquire the Red Cricket battle pet.",
pet=1042,
mopready=true,
},[[
step
This pet is given as a reward for gaining Best Friends status with Sho in Valley of the Four Winds.
confirm
step
You can only start earning reputation with Sho after completing the Tillers prequests.
|tip Becoming Best Friends with Sho rewards you with a Red Cricket Battle Pet and an Orange Tree for your farm.
confirm
|next "menu" |only if completedq(30257)
step
talk Tang Ironhoe##64036 |only Alliance
accept The Tillers##31372 |goto Valley of the Four Winds/0 87.00,60.80 |only Alliance
talk Farmhand Dooka##64011 |only Horde
accept The Tillers##31374 |goto Vale of Eternal Blossoms/0 60.20,22.90 |only Horde
step
talk Farmer Yoon##58721
turnin The Tillers##31372 |goto Valley of the Four Winds/0 52.00,48.00 |only Alliance
turnin The Tillers##31374 |goto Valley of the Four Winds/0 52.00,48.00 |only Horde
accept A Helping Hand##30252 |goto Valley of the Four Winds/0 52.00,48.00
step
clicknpc Unbudging Rock##58719
Clear 8 Unbudging Rocks |q 30252/1 |goto Valley of the Four Winds/0 51.80,48.80
step
talk Farmer Yoon##58646
turnin A Helping Hand##30252 |goto Valley of the Four Winds/0 52.80,47.90
step
talk Farmer Yoon##58646
accept Learn and Grow I: Seeds##30535 |goto Valley of the Four Winds/0 52.30,48.80
step
talk Merchant Greenfield##58718
Tell him you're there to pick up seeds
Get a Packet of Green Cabbage Seeds |q 30535/1 |goto Valley of the Four Winds/0 52.90,52.20
step
talk Farmer Yoon##58646
turnin Learn and Grow I: Seeds##30535 |goto Valley of the Four Winds/0 52.30,48.80
accept Learn and Grow II: Tilling and Planting##30254 |goto Valley of the Four Winds/0 52.30,48.80
step
clicknpc Untilled Soil##59985+
Till 2 patches of Soil |q 30254/1 |goto 52.00,48.30
Use the EZ-Gro Green Cabbage Seeds in your bags on the Tilled Soil |use EZ-Gro Green Cabbage Seeds##80302
Plant seeds in 2 patches of Tilled Soil |q 30254/2 |goto Valley of the Four Winds/0 52.00,48.30
step
talk Farmer Yoon##58646
turnin Learn and Grow II: Tilling and Planting##30254 |goto Valley of the Four Winds/0 52.30,48.80
accept Learn and Grow III: Tending Crops##30255 |goto Valley of the Four Winds/0 52.30,48.80
step
Use the Rusty Watering Can on the Parched EZ-Gro Green Cabbage |use Rusty Watering Can##79104
Water 2 parched Ez-Gro Green Cabbage |q 30255/1 |goto Valley of the Four Winds/0 52.00,48.30
step
talk Farmer Yoon##58646
turnin Learn and Grow III: Tending Crops##30255 |goto Valley of the Four Winds/0 52.30,48.80
accept Learn and Grow IV: Harvesting##30256 |goto Valley of the Four Winds/0 52.30,48.80
step
clicknpc Ripe EZ-Gro Green Cabbage##59833
collect 2 EZ-Gro Green Cabbage##80314 |q 30256/1 |goto Valley of the Four Winds/0 52.00,48.30
step
talk Farmer Yoon##58646
turnin Learn and Grow IV: Harvesting##30256 |goto Valley of the Four Winds/0 52.30,48.80
accept Learn and Grow V: Halfhill Market##30257 |goto Valley of the Four Winds/0 52.30,48.80
step
click Dark Soil##210582
collect Marsh Lily##79268 |q 30257/1 |goto Valley of the Four Winds/0 52.80,48.00
step
talk Gina Mudclaw##58706
turnin Learn and Grow V: Halfhill Market##30257 |goto Valley of the Four Winds/0 53.10,51.80
accept Learn and Grow VI: Gina's Vote##31945 |goto Valley of the Four Winds/0 53.10,51.80
step
talk Merchant Greenfield##58718
buy 1 Scallion Seeds##80591 |q 31945 |goto Valley of the Four Winds/0 52.90,52.20
step
clicknpc Untilled Soil##58562
Use your Scallion Seeds on the Tilled Soil |use Scallion Seeds##80591
Plant Scallion Seeds |q 31945/1 |goto Valley of the Four Winds/0 52.00,48.40
step
label "info"
Click here for information on Bursting Crops |next "bursting" |confirm
Click here for information on Parched Crops |next "parched" |confirm
Click here for information on Infested Crops |next "infested" |confirm
Click here for information on Wiggling Crops |next "wiggling" |confirm
Click here for information on Alluring Crops |next "alluring" |confirm
Click here for information on Smothered Crops |next "smothered" |confirm
Click here for information on Wild Crops |next "wild" |confirm
Click here for information on Runty Crops |next "runty" |confirm
Click here for information on Tangled Crops |next "tangled" |confirm
step
label "bursting"
Unless you got a Bursting Scallion immediately after planting your Scallions, you will have to wait a full day until you can pick your crops
Click here if you are ready to harvest your crops |confirm
step
clicknpc Bursting Scallions##63160
clicknpc Ripe Scallions##63165
Harvest Ripe Scallions |q 31945/2 |goto Valley of the Four Winds/0 52.00,48.40
collect 5 Scallion##74843 |q 31945/3 |goto Valley of the Four Winds/0 52.00,48.40
|next "exit"
step
label "runty"
clicknpc Runty Scallions##63166
Press your Space Bar and jump |goto Valley of the Four Winds/0 52.00,48.40
Click here to return to the information page |next "info" |confirm
Click here when you are have tilled your crops |next "bursting" |confirm
step
label "wiggling"
clicknpc Wiggling Scallions##63169
kill Voracious Virmen##60039 |goto Valley of the Four Winds/0 52.00,48.40
Click here to return to the information page |next "info" |confirm
Click here when you are have tilled your crops |next "bursting" |confirm
step
label "infested"
click Vintage Bug Sprayer##211331
collect Vintage Bug Sprayer##80513 |n
Use your Vintage Bug Sprayer on the Infested Scallions |goto Valley of the Four Winds/0 52.20,48.30 |use Vintage Bug Sprayer##80513
Click here to return to the information page |next "info" |confirm
Click here when you are have tilled your crops |next "bursting" |confirm
step
label "alluring"
clicknpc Alluring Scallions##63159
kill Swooping Plainshawk##60072 |goto Valley of the Four Winds/0 52.20,48.30
Click here to return to the information page |next "info" |confirm
Click here when you are have tilled your crops |next "bursting" |confirm
step
label "wild"
clicknpc Wild Scallions##63170
Ride the Scallion |invehicle |c |goto Valley of the Four Winds/0 52.00,48.40
step
Spam the Flex ability on your new hotbar, when the plant tries to cast Vine Slam, interrupt it with your Gnaw ability
Build 50 stacks on Dominance |outvehicle |c
step
Click here to return to the information page. |next "info" |confirm
Click here when you are have tilled your crops. |next "bursting" |confirm
step
label "tangled"
clicknpc Tangled Scallions##63168 |goto Valley of the Four Winds/0 51.70,48.90 < 5
confirm
step
Click here to return to the information page |next "info" |confirm
Click here when you are have tilled your crops |next "bursting" |confirm
step
label "parched"
Use the Rusty Watering Can on the Parched Scallions |use Rusty Watering Can##79104
Click here to return to the information page |next "info" |confirm |goto Valley of the Four Winds/0 52.00,48.40
Click here when you are have tilled your crops |next "bursting" |confirm |goto Valley of the Four Winds/0 52.00,48.40
step
label "smothered"
clicknpc Encroaching Weed##60185 |goto Valley of the Four Winds/0 52.00,48.40
Ride the Weed |invehicle |c
step
Spam the Pull ability on your new hotbar
Pull the Weed |outvehicle |c
step
Click here to return to the information page |next "info" |confirm
Click here when you are have tilled your crops |next "bursting" |confirm
step
label "exit"
talk Gina Mudclaw##58706
turnin Learn and Grow VI: Gina's Vote##31945 |goto Valley of the Four Winds/0 53.10,51.80
step
label "menu"
_Sho_ is a _Stranger_ to you. |only if rep("Sho")<=Stranger
_Sho_ is your _Aquaintance_. |only if rep("Sho")==Aquaintance
_Sho_ is your _Buddy_. |only if rep("Sho")==Buddy
_Sho_ is your _Friend_. |only if rep("Sho")==Friend
_Sho_ is your _Best Friend_. |only if rep("Sho")==BestFriend
_ |only if rep("Sho")<BestFriend
Click here to use _Cooking_ to raise your reputation. |confirm |next "cooking" |only if rep("Sho")<BestFriend
_ |only if rep("Sho")<BestFriend
Click here to gather gifts to raise your reputation. |confirm |next "gifts" |only if rep("Sho")<BestFriend
You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Sho")==BestFriend
confirm |next "end" |only if rep("Sho")==BestFriend
step
label "cooking"
Click here to continue |confirm |next "eternal_blossom"
Click here to go back to the menu |confirm |next "menu"
|tip In order to create Sho's favorite meal, you must have at least 550 skill points in Cooking.
step
label "eternal_blossom"
talk Kol Ironpaw##58712
learn Eternal Blossom Fish##104299 |goto Valley of the Four Winds/0 53.00,51.40
step
#include "auctioneer"
buy 5 Jade Lungfish##74856
buy 25 Striped Melon##74848
Or
Click here to farm the ingredients yourself |confirm |next "farm_eternal_blossom_1"
tip You should at least have 525 fishing for this.
step
label "farm_eternal_blossom_1"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. Look for Schools of fish to increase your chance of catching Jade Lungfish |cast Fishing##7620
collect 5 Jade Lungfish##74856 |goto The Jade Forest/0 55.00,71.10
step
Skipping farming |next "create_eternal_blossom" |only if itemcount(74848) >= 25 or completedq(30408)
Proceeding to Eternal Blossom Fish |next |only if default
step
label "farm_eternal_blossom_2"
kill Slingtail Treeleaper##61562+
collect 25 Striped Melon##74848 |goto The Jade Forest/0 53.90,81.40
step
label "create_eternal_blossom"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Eternal Blossom Fish##104299,Cooking,5 total
|next "turnin1"
step
label "gifts"
click Dark Soil##210582
When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds/0
path	32.80,49.80	34.90,38.40
path	42.00,31.20	40.90,35.10	44.90,36.50
path	39.70,38.90	46.00,53.90	40.40,51.70
collect 43 Lovely Apple##79268
|next "turnin2"
step
label "turnin1"
talk Sho##58708
turnin A Dish For Sho##30408 |goto Valley of the Four Winds/0 29.50,30.60
|tip You can only turn this quest in once a day.
You can also find Sho in Halfhill at [Valley of the Four Winds/0 53.00,52.00]
Click here to be taken back to the beginning of the Cooking Dailies for Sho |confirm |next "cooking"
step
label "turnin2"
talk Sho##58708
turnin A Lovely Apple for Sho##30404 |goto Valley of the Four Winds/0 29.50,30.60
|tip Keep turning this in until you reach Best Friend status.
You can also find Sho in Halfhill at [Valley of the Four Winds/0 53.00,52.00]
step
label "end"
You have reached the end of the guide.
Please click here to return to the beginning of the guide. |confirm |next "menu"
Become _Best Friends_ with Sho |complete rep("Sho")==BestFriend |next
step
use Red Cricket##85222
learnpet Red Cricket##1042
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Resilient Roach",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Resilient Roach battle pet.",
pet=744,
mopready=true,
},[[
step
clicknpc Resilient Roach##64238
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Resilient Roach##744 |goto Dread Wastes/0 41.90,34.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Savory Beetle",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Savory Beetle battle pet.",
pet=717,
mopready=true,
},[[
step
clicknpc Savory Beetle##63291
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Savory Beetle##717 |goto Krasarang Wilds/0 27.80,50.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Shy Bandicoon",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Shy Bandicoon battle pet.",
pet=677,
mopready=true,
},[[
step
clicknpc Shy Bandicoon##64246
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Shy Bandicoon##677 |goto Valley of the Four Winds/0 21.70,47.50
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Silkbead Snail",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Silkbead Snail battle pet.",
pet=568,
mopready=true,
},[[
step
clicknpc Silkbead Snail##63001
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Silkbead Snail##568 |goto The Jade Forest/0 50.40,90.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Tolai Hare",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Tolai Hare battle pet.",
pet=729,
mopready=true,
},[[
step
clicknpc Tolai Hare##63557
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Tolai Hare##729 |goto Kun-Lai Summit/0 55.50,63.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Tolai Hare Pup",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Tolai Hare Pup battle pet.",
pet=730,
mopready=true,
},[[
step
clicknpc Tolai Hare Pup##63558
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Tolai Hare Pup##730 |goto Kun-Lai Summit/0 55.50,63.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Critter Pets\\Yakrat",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Yakrat battle pet.",
pet=740,
mopready=true,
},[[
step
clicknpc Yakrat##63957
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Yakrat##740 |goto Townlong Steppes/0 83.90,76.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Azure Windseeker",{
expansion="mists",
patch='81500',
source='Drop',
description="This guide will teach you how to acquire the Azure Windseeker battle pet.",
pet=2583,
mopready=true,
},[[
step
kill Tsulong##62442
click Cache of Tsulong##215357
|tip The cache spawns after killing Tsulong.
collect Azure Cloud Serpent Egg##167051 |goto Terrace of Endless Spring/0 69.06,48.88 |or
|tip This pet is not a guaranteed drop.
|tip You can also purchase this pet from the auction house.
'|complete haspet(2583) |or
step
use the Azure Cloud Serpent Egg##167051
learnpet Azure Windseeker##2583
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Cypress",{
expansion="mists",
patch='51000',
source='In-GameShop',
description="This guide will teach you how to acquire the Cypress battle pet.",
pet=4273,
mopready=true,
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Check the Blizzard Online Shop and purchase the battle pet.
|tip May also be awarded if you have a 6 month sub.
|tip Once purchased or awarded, you may need to unwrap in your pet inventory.
collect 1 Cypress##209877 |or
'|complete haspet(4273) |or
step
use Cypress##209877
learnpet Cypress##4273
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Phoenix Hawk Hatchling",{
expansion="mists",
patch='53000',
source='Drop',
description="This guide will teach you how to acquire the Phoenix Hawk Hatchling battle pet.",
pet=1235,
mopready=true,
},[[
step
kill Al'ar##19514
|tip Inside the Tempest Keep raid.
collect Brilliant Phoenix Hawk Feather##97557 |goto Tempest Keep/1 49.60,58.40
step
use Brilliant Phoenix Hawk Feather##97557
learnpet Phoenix Hawk Hatchling##1235
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Wild Crimson Hatchling",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Wild Crimson Hatchling battle pet.",
pet=819,
mopready=true,
},[[
step
clicknpc Wild Crimson Hatchling##65321
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
|tip In order to capture this pet, you must be Exalted with the Order of the Cloud Serpent.
learnpet Wild Crimson Hatchling##819 |goto The Jade Forest/0 56.50,42.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Wild Golden Hatchling",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Wild Golden Hatchling battle pet.",
pet=818,
mopready=true,
},[[
step
clicknpc Wild Golden Hatchling##65324
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
|tip In order to capture this pet, you must be Exalted with the Order of the Cloud Serpent.
learnpet Wild Golden Hatchling##818 |goto The Jade Forest/0 56.50,42.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Wild Jade Hatchling",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Wild Jade Hatchling battle pet.",
pet=817,
mopready=true,
},[[
step
clicknpc Wild Jade Hatchling##
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
|tip In order to capture this pet, you must be Exalted with the Order of the Cloud Serpent.
learnpet Wild Jade Hatchling##817 |goto The Jade Forest/0 56.50,42.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Dragonkin Pets\\Yu'la, Broodling of Yu'lon",{
expansion="mists",
patch='54000',
source='Vendor',
description="This guide will teach you how to acquire the Yu'la, Broodling of Yu'lon battle pet.",
pet=1304,
mopready=true,
},[[
step
label "start"
You can only obtain this pet by purchasing it using Celestial Coins
|tip You get Celestial Coins from completing the weekly quest, The Celestial Tournament.
confirm
step
talk Master Li##73082
accept The Celestial Tournament##33137 |goto Timeless Isle/0 34.70,59.60
step
talk Master Li##73082
Tell him you'd like to enter the Celestial Tournament |goto Timeless Isle/0 34.70,59.60
confirm
step
Enter the Celestial Tournament |goto Celestial Tournament/0 34.00,55.20 < 1000
step
Once you enter the _Celestial Tournament_ you will notice there are 3 main NPCs that you need to talk to
Click here if those 3 NPCs are _Chen Stormstout_, _Wrathion_, and _Taran Zhu_ |confirm |next "chen"
OR
Click here if those 3 NPCs are _Shademaster Kiryn_, _Blingtron 4000_, and _Wise Mari_ |confirm |next "shademaster"
OR
Click here if those 3 NPCs are _Sully 'The Pickle' McLeary_, _Dr. Ion Goldbloom_, and _Lorewalker Cho_ |confirm |next "thepickle"
step
label "chen"
talk Chen Stormstout##71927
Tell him, "Let's do this!"
|tip Chen Stormstout has a Beast Pet, a Critter Pet and an Elemental Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Chen Stormstout in a pet battle |q 33137 |goto Celestial Tournament/0 40.30,56.50
confirm
step
talk Wrathion##71924
Tell him, "Let's do this!"
|tip Wrathion has an Undead Pet, and two Dragonkin Pets. Use Critter type attacks on his Critters, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Wrathion in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.30
confirm
step
talk Taran Zhu##71931
Tell him, "Let's do this!"
|tip Taran Zhu has three Humanoid Pets. Use Undead type attacks on his Humanoids. Your pets should all be level 25.
Defeat Taran Zhu in a pet battle |q 33137 |goto Celestial Tournament/0 40.10,52.60
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "shademaster"
talk Shademaster Kiryn##71930
Tell her, "Let's do this!"
|tip Shademaster Kiryn has a Humanoid Pet, a Beast Pet and a Mechanical Pet. Use Undead type attacks on her Humanoid, Mechanical type attacks on her Beast, and Elemental type attacks on her Mechanical. Your pets should all be level 25.
Defeat Shademaster Kiryn in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.30
confirm
step
talk Blingtron 4000##71933
Tell him, "Let's do this!"
|tip Blingtron 4000 has an Elemental Pet, a Critter Pet and a Mechanical Pet. Use Aquatic type attacks on his Elemental, Beast type attacks on his Critter, and Elemental type attacks on his Mechanical. Your pets should all be level 25.
Defeat Blingtron 4000 in a pet battle |q 33137 |goto Celestial Tournament/0 40.40,56.50
confirm
step
talk Wise Mari##71932
Tell him, "Let's do this!"
|tip Wise Mari has an Aquatic Pet, a Magic Pet and an Elemental Pet. Use Flying type attacks on his Beast, Dragonkin type attacks on his Magic, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Wise Mari in a pet battle |q 33137 |goto Celestial Tournament/0 40.00,52.70
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "thepickle"
talk Sully 'The Pickle' McLeary##71929
Tell him, "Let's do this!"
|tip Sully 'The Pickle' McLeary has an Undead Pet, a Critter Pet and an Aquatic Pet. Use Critter type attacks on his Undead, Beast type attacks on his Critter, and Flying type attacks on his Aquatic. Your pets should all be level 25.
Defeat Sully 'The Pickle' McLeary in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.40
confirm
step
talk Dr. Ion Goldbloom##71934
Tell him, "Let's do this!"
|tip Dr. Ion Goldbloom has an Flying Pet, a Magic Pet and a Beast Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Mechanical type attacks on his Beast. Your pets should all be level 25.
Defeat Dr. Ion Goldbloom in a pet battle |q 33137 |goto Celestial Tournament/0 40.40,56.40
confirm
step
talk Lorewalker Cho##71926
Tell him, "Let's do this!"
|tip Lorewalker Cho has a Flying Pet, a Magic Pet and a Dragonkin Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Lorewalker Cho in a pet battle |q 33137 |goto Celestial Tournament/0 40.10,52.40
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "phasetwo"
talk Yu'la Broodling of Yu'lon##73507
Tell him, "Let's do this!"
|tip Yu'la is a Dragonkin type pet. Use Humanoid attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Yu'la, Broodling of Yu'lon in a pet battle |scenariogoal 2/23613 |goto Celestial Tournament/0 38.90,56.70
step
talk Xu-Fu Cub of Xuen##73505
Tell him, "Let's do this!"
|tip Xu-Fu is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Xu-Fu, Cub of Xuen in a pet battle |scenariogoal 2/23612 |goto Celestial Tournament/0 40.00,55.20
step
talk Zao Calfling of Niuzao##73506
Tell him, "Let's do this!"
|tip Zao is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Zao, Calfling of Niuzao in a pet battle |scenariogoal 2/23614 |goto Celestial Tournament/0 39.00,53.80
step
talk Chi-Chi Hatchling of Chi-Ji##73503
Tell him, "Let's do this!"
|tip Chi-Chi is a Flying type pet. Use Magic attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Chi-Chi, Hatchling of Chi-Ji in a pet battle |scenariogoal 2/23615 |goto Celestial Tournament/0 38.00,55.20
step
Complete The Celestial Tournament |q 33137/1
step
You will have to have _3 Celestial Coins_ in order to obtain this pet.
collect 3 Celestial Coin##101529 |next
Click here to go back to the beginning of the guide to complete the weekly quest again. |confirm |next "start"
step
talk Master Li##73082
buy 1 Yu'la, Broodling of Yu'lon##102147 |goto Timeless Isle/0 34.80,59.70
step
use Yu'la Broodling of Yu'lon##102147
learnpet Yu'la, Broodling of Yu'lon##1304
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Cinder Kitten",{
expansion="mists",
patch='51000',
source='In-GameShop',
description="This guide will teach you how to acquire the Cinder Kitten battle pet.",
pet=1117,
mopready=true,
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Check the Blizzard Online Shop and purchase the battle pet.
|tip Once purchased or awarded, you may need to unwrap in your pet inventory.
collect 1 Cinder Kitten##92707
step
use Cinder Kitten##92707
learnpet Cinder Kitten##1117
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Droplet of Y'Shaarj",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Droplet of Y'Shaarj battle pet.",
pet=1331,
mopready=true,
},[[
step
kill Sha of Pride##71734
|tip Inside the Siege of Orgrimmar raid.
|tip You may have to kill this boss more than once to receive the pet drop.
collect Droplet of Y'Shaarj##104162 |goto Siege of Orgrimmar/3 28.70,67.90
step
use Droplet of Y'Shaarj##104162
learnpet Droplet of Y'Shaarj##1331
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Electrified Razortooth",{
expansion="mists",
patch='52000',
source='PetBattle',
description="This guide will teach you how to acquire the Electrified Razortooth battle pet.",
pet=1179,
mopready=true,
},[[
step
clicknpc Electrified Razortooth##69794
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Electrified Razortooth##1179 |goto Isle of Thunder/0 45.30,64.70
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Gooey Sha-ling",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Gooey Sha-ling battle pet.",
pet=1332,
mopready=true,
},[[
step
kill Sha of Pride##71734
|tip Inside the Siege of Orgrimmar raid.
|tip You may have to kill this boss more than once to receive the pet drop.
collect Gooey Sha-Ling##104163 |goto Siege of Orgrimmar/1 54.20,38.20
step
use Gooey Sha-Ling##104163
learnpet Gooey Sha-ling##1332
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Grinder",{
expansion="mists",
patch='50100',
source='Drop',
description="This guide will teach you how to acquire the Grinder battle pet.",
pet=834,
mopready=true,
},[[
step
kill Karr the Darkener##50347
|tip He is a level 30-35 Rare Elite, depending on your level.
collect 1 Imbued Jade Fragment##86564 |goto Dread Wastes/0 71.90,37.80
step
use Imbued Jade Fragment##86564
learnpet Grinder##834
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Jadefire Spirit",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Jadefire Spirit battle pet.",
pet=1348,
mopready=true,
},[[
step
kill Spirit of Jadefire##72769
|tip You may have to kill this npc more than once to obtain the pet.
|tip You may have to wait for respawn.
collect 1 Jadefire Spirit##104307 |goto Timeless Isle/22 45.40,38.90
step
use Jadefire Spirit##104307
learnpet Jadefire Spirit##1348
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Jademist Dancer",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Jademist Dancer battle pet.",
pet=1333,
mopready=true,
},[[
step
kill Jademist Dancer##72767+
collect 1 Jademist Dancer##104164 |goto Timeless Isle/0 26.30,29.70
|tip You may have to kill this npc more than once to obtain the pet.
|tip You may have to wait for respawn.
step
use Jademist Dancer##104164
learnpet Jademist Dancer##1333
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Living Sandling",{
expansion="mists",
patch='52000',
source='Drop',
description="This guide will teach you how to acquire the Living Sandling battle pet.",
pet=1177,
mopready=true,
},[[
step
kill Sand Elemental##69944+
|tip Inside the Throne of Thunder raid.
|tip This pet has a chance to drop off Sand Elementals.
collect Living Sandling##94125 |goto Throne of Thunder/2 27.63,19.94
step
use Living Sandling##94125
learnpet Living Sandling##1177
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Ominous Flame",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Ominous Flame battle pet.",
pet=1335,
mopready=true,
},[[
step
kill Foreboding Flame##73162+
|tip You may have to kill this npc more than once to obtain the pet.
|tip You may have to wait for respawn.
|tip You can also purchase this pet from the auction house.
collect 1 Ominous Flame##104166 |goto Timeless Isle/22 53.30,66.00
step
use Ominous Flame##104166
learnpet Ominous Flame##1335
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Ruby Droplet",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Ruby Droplet battle pet.",
pet=1328,
mopready=true,
},[[
step
kill Garnia##73282
|tip You may have to make this kill more than once to obtain the pet.
|tip You can also purchase this pet from the auction house.
collect 1 Ruby Droplet##104159 |goto Timeless Isle/0 64.80,28.80
step
use Ruby Droplet##104159
learnpet Ruby Droplet##1328
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Sapphire Cub",{
expansion="mists",
patch='50100',
source='Profession',
description="This guide will teach you how to acquire the Sapphire Cub battle pet.",
pet=846,
mopready=true,
},[[
step
Reach Level 600 Jewelcrafting |only if hasprof("Jewelcrafting",1,600)
|tip You obtain this jewelcrafting design from the Golden Lotus Daily Quest reward or by opening a Serpent's Heart. |only if hasprof("Pandaria Jewelcrafting",1,75)
|tip Please open your Jewelcrafting Profession Interface. |only if hasprof("Jewelcrafting",1,600)
Click Here to Open the "Golden Lotus Dailies" Guide |confirm |loadguide "Daily Guides\\Mists of Pandaria Dailies\\The Golden Lotus Dailies" |only if hasprof("Pandaria Jewelcrafting",1,75)
|tip You can also purchase this pet from the auction house.
collect Sapphire Cub##82775 |or
'|complete haspet(846) |or
step
use Sapphire Cub##82775
learnpet Sapphire Cub##846
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Skunky Alemental",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Skunky Alemental battle pet.",
pet=1336,
mopready=true,
},[[
step
kill Skunky Brew Alemental##71908+
|tip Wait for these to spawn as a random event.
|tip After killing 10, Zhu-Gon will spawn.
kill Zhu-Gon the Sour##71919
collect 1 Skunky Alemental##104167 |goto Timeless Isle/0 38.00,77.60
step
use Skunky Alemental##104167
learnpet Skunky Alemental##1336
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Spirit of the Spring",{
expansion="mists",
patch='81500',
source='Drop',
description="This guide will teach you how to acquire the Spirit of the Spring battle pet.",
pet=2584,
mopready=true,
},[[
step
kill Lei Shi##62983
|tip Inside the Terrace of Endless Spring raid.
|tip You may have to make this kill more than once to obtain the pet.
|tip You can also purchase this pet from the auction house.
collect Spirit of the Spring##167052 |goto Terrace of Endless Spring/0 53.85,49.02
step
use Spirit of the Spring##167052
learnpet Spirit of the Spring##2584
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Tainted Waveling",{
expansion="mists",
patch='53000',
source='Drop',
description="This guide will teach you how to acquire the Tainted Waveling battle pet.",
pet=1231,
mopready=true,
},[[
step
kill Hydross the Unstable##21216
|tip Inside the Serpentshrine Cavern raid.
|tip You may have to make this kill more than once to obtain the pet.
|tip You can also purchase this pet from the auction house.
collect Tainted Core##97553 |goto Serpentshrine Cavern/1 36.80,84.80
step
use Tainted Core##97553
learnpet Tainted Waveling##1231
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Terrible Turnip",{
expansion="mists",
patch='50100',
source='Drop',
description="This guide will teach you how to acquire the Terrible Turnip battle pet.",
pet=650,
mopready=true,
},[[
step
Unlock Halfhill Dailies at your Farm
|tip Accomplish this using the The Tillers Dailies Guide.
|tip This guide includes a link to incomplete prerequisite quest guides as well.
|tip The Terrible Turnip comes from planting and harvesting an Ominous Seed.
|tip The Ominous Seed will rarely drop from harvesting fully grown crops from your farm.
Click Here to Load the _Tillers Dailies_ Guide |confirm |loadguide "Daily Guides\\Mists of Pandaria Dailies\\The Tillers Dailies [NEW]"
collect Terrible Turnip##85220 |or
'|complete haspet(650) |or
step
use Terrible Turnip##85220
learnpet Terrible Turnip##650
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Thundertail Flapper",{
expansion="mists",
patch='52000',
source='PetBattle',
description="This guide will teach you how to acquire the Thundertail Flapper battle pet.",
pet=1175,
mopready=true,
},[[
step
clicknpc Thundertail Flapper##69648
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Thundertail Flapper##1175 |goto Isle of Thunder/0 45.30,64.70
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Amber Moth",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Amber Moth battle pet.",
pet=732,
mopready=true,
},[[
step
clicknpc Amber Moth##65187
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Amber Moth##732 |goto Townlong Steppes/0 47.30,78.70
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Amberglow Stinger",{
expansion="mists",
patch='81500',
source='Drop',
description="This guide will teach you how to acquire the Amberglow Stinger battle pet.",
pet=2586,
mopready=true,
},[[
step
kill Blade Lord Ta'yak##62543
|tip You may have to make this kill more than once to obtain the pet.
|tip You can also purchase this pet from the auction house.
collect Tiny Amber Wings##167053 |goto Heart of Fear/1 59.91,19.37 |or
'|complete haspet(2586) |or
step
use Tiny Amber Wings##167053
learnpet Amberglow Stinger##2586
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Ashwing Moth",{
expansion="mists",
patch='54000',
source='PetBattle',
description="This guide will teach you how to acquire the Ashwing Moth battle pet.",
pet=1324,
mopready=true,
},[[
step
clicknpc Ashwing Moth##73542
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Ashwing Moth##1324 |goto Townlong Steppes/0 47.30,78.70
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Azure Crane Chick",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Azure Crane Chick battle pet.",
pet=1321,
mopready=true,
},[[
step
This pet is looted from Crane Nests on the Timeless Isle.
confirm
step
Loot the Crane Nests Along this Path:
map Timeless Isle/0
path	32.60,69.40	29.70,67.20	31.60,64.60
path	33.10,66.20	43.20,66.00	41.40,69.60
collect 1 Azure Crane Chick##104157
step
use Azure Crane Chick##104157
learnpet Azure Crane Chick##1321
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Chi-Chi, Hatchling of Chi-Ji",{
expansion="mists",
patch='54000',
source='Vendor',
description="This guide will teach you how to acquire the Chi-Chi, Hatchling of Chi-Ji battle pet.",
pet=1303,
mopready=true,
},[[
step
label "start"
You can only obtain this pet by purchasing it using Celestial Coins.
|tip You get Celestial Coins from completing the weekly quest, The Celestial Tournament.
confirm
step
talk Master Li##73082
accept The Celestial Tournament##33137 |goto Timeless Isle/0 34.70,59.60
step
talk Master Li##73082
Tell him you'd like to enter the Celestial Tournament |goto Timeless Isle/0 34.70,59.60
confirm
step
Enter the Celestial Tournament |goto Celestial Tournament/0 34.00,55.20 < 1000
step
Once you enter the _Celestial Tournament_ you will notice there are 3 main NPCs that you need to talk to
Click here if those 3 NPCs are _Chen Stormstout_, _Wrathion_, and _Taran Zhu_ |confirm |next "chen"
OR
Click here if those 3 NPCs are _Shademaster Kiryn_, _Blingtron 4000_, and _Wise Mari_ |confirm |next "shademaster"
OR
Click here if those 3 NPCs are _Sully 'The Pickle' McLeary_, _Dr. Ion Goldbloom_, and _Lorewalker Cho_ |confirm |next "thepickle"
step
label "chen"
talk Chen Stormstout##71927
Tell him, "Let's do this!"
|tip Chen Stormstout has a Beast Pet, a Critter Pet and an Elemental Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Chen Stormstout in a pet battle |q 33137 |goto Celestial Tournament/0 40.30,56.50
confirm
step
talk Wrathion##71924
Tell him, "Let's do this!"
|tip Wrathion has an Undead Pet, and two Dragonkin Pets. Use Critter type attacks on his Critters, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Wrathion in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.30
confirm
step
talk Taran Zhu##71931
Tell him, "Let's do this!"
|tip Taran Zhu has three Humanoid Pets. Use Undead type attacks on his Humanoids. Your pets should all be level 25.
Defeat Taran Zhu in a pet battle |q 33137 |goto Celestial Tournament/0 40.10,52.60
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "shademaster"
talk Shademaster Kiryn##71930
Tell her, "Let's do this!"
|tip Shademaster Kiryn has a Humanoid Pet, a Beast Pet and a Mechanical Pet. Use Undead type attacks on her Humanoid, Mechanical type attacks on her Beast, and Elemental type attacks on her Mechanical. Your pets should all be level 25.
Defeat Shademaster Kiryn in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.30
confirm
step
talk Blingtron 4000##71933
Tell him, "Let's do this!"
|tip Blingtron 4000 has an Elemental Pet, a Critter Pet and a Mechanical Pet. Use Aquatic type attacks on his Elemental, Beast type attacks on his Critter, and Elemental type attacks on his Mechanical. Your pets should all be level 25.
Defeat Blingtron 4000 in a pet battle |q 33137 |goto Celestial Tournament/0 40.40,56.50
confirm
step
talk Wise Mari##71932
Tell him, "Let's do this!"
|tip Wise Mari has an Aquatic Pet, a Magic Pet and an Elemental Pet. Use Flying type attacks on his Beast, Dragonkin type attacks on his Magic, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
Defeat Wise Mari in a pet battle |q 33137 |goto Celestial Tournament/0 40.00,52.70
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "thepickle"
talk Sully 'The Pickle' McLeary##71929
Tell him, "Let's do this!"
|tip Sully 'The Pickle' McLeary has an Undead Pet, a Critter Pet and an Aquatic Pet. Use Critter type attacks on his Undead, Beast type attacks on his Critter, and Flying type attacks on his Aquatic. Your pets should all be level 25.
Defeat Sully 'The Pickle' McLeary in a pet battle |q 33137 |goto Celestial Tournament/0 37.80,57.40
confirm
step
talk Dr. Ion Goldbloom##71934
Tell him, "Let's do this!"
|tip Dr. Ion Goldbloom has an Flying Pet, a Magic Pet and a Beast Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Mechanical type attacks on his Beast. Your pets should all be level 25.
Defeat Dr. Ion Goldbloom in a pet battle |q 33137 |goto Celestial Tournament/0 40.40,56.40
confirm
step
talk Lorewalker Cho##71926
Tell him, "Let's do this!"
|tip Lorewalker Cho has a Flying Pet, a Magic Pet and a Dragonkin Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
Defeat Lorewalker Cho in a pet battle |q 33137 |goto Celestial Tournament/0 40.10,52.40
confirm
step
Defeat three champions of Pandaria in a pet battle |scenariogoal 1/23601 |q 33137 |next "phasetwo"
step
label "phasetwo"
talk Yu'la Broodling of Yu'lon##73507
Tell him, "Let's do this!"
|tip Yu'la is a Dragonkin type pet. Use Humanoid attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Yu'la, Broodling of Yu'lon in a pet battle |scenariogoal 2/23613 |goto Celestial Tournament/0 38.90,56.70
step
talk Xu-Fu Cub of Xuen##73505
Tell him, "Let's do this!"
|tip Xu-Fu is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Xu-Fu, Cub of Xuen in a pet battle |scenariogoal 2/23612 |goto Celestial Tournament/0 40.00,55.20
step
talk Zao Calfling of Niuzao##73506
Tell him, "Let's do this!"
|tip Zao is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Zao, Calfling of Niuzao in a pet battle |scenariogoal 2/23614 |goto Celestial Tournament/0 39.00,53.80
step
talk Chi-Chi Hatchling of Chi-Ji##73503
Tell him, "Let's do this!"
|tip Chi-Chi is a Flying type pet. Use Magic attacks against him in order to defeat him. Your pets should all be level 25.
Defeat Chi-Chi, Hatchling of Chi-Ji in a pet battle |scenariogoal 2/23615 |goto Celestial Tournament/0 38.00,55.20
step
Complete The Celestial Tournament |q 33137/1
|tip Right-click your portrait and choose 'Leave Scenario' to exit the tournament.
step
talk Master Li##73082
turnin The Celestial Tournament##33137 |goto Timeless Isle/0 34.70,59.60
step
You will have to have 3 Celestial Coins in order to obtain this pet.
collect 3 Celestial Coin##101529 |next
|tip Each completion should earn you 1 Celestial Coin.
|tip You can only complete this once a week per account.
Click here to go back to the beginning of the guide to complete the weekly quest again. |confirm |next "start"
step
talk Master Li##73082
buy 1 Chi-Chi, Hatchling of Chi-Ji##102145 |goto Timeless Isle/0 34.80,59.70
step
use Chi-Chi Hatchling of Chi-Ji##102145
learnpet Chi-Chi, Hatchling of Chi-Ji##1303
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Effervescent Glowfly",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Effervescent Glowfly battle pet.",
pet=747,
mopready=true,
},[[
step
clicknpc Effervescent Glowfly##63850
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Effervescent Glowfly##747 |goto Vale of Eternal Blossoms/0 22.80,28.80
You can also find some at [Vale of Eternal Blossoms/0 11.84,33.88]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Flamering Moth",{
expansion="mists",
patch='54000',
source='PetBattle',
description="This guide will teach you how to acquire the Flamering Moth battle pet.",
pet=1325,
mopready=true,
},[[
step
clicknpc Flamering Moth##73543
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Flamering Moth##1325 |goto Timeless Isle/0 55.70,60.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Garden Moth",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Garden Moth battle pet.",
pet=753,
mopready=true,
},[[
step
clicknpc Garden Moth##65215
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Garden Moth##753 |goto The Jade Forest/0 54.10,45.90
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Gilded Moth",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Gilded Moth battle pet.",
pet=748,
mopready=true,
},[[
step
clicknpc Gilded Moth##63838
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Gilded Moth##748 |goto Vale of Eternal Blossoms/0 33.20,65.10
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Imperial Moth",{
expansion="mists",
patch='51000',
source='Profession',
description="This guide will teach you how to acquire the Imperial Moth battle pet.",
pet=1039,
mopready=true,
},[[
step
You may acquire this pet from a {b}Silkworm Cocoon{} that has a chance to drop when a 550+ level Tailor creates Imperial Silk. |confirm
Click Here to Gather the Materials and Craft the Pet Yourself |confirm |next "CRAFT" |only if skill("Tailoring") >= 550
Click Here to Load the Tailoring Profession Leveling guide |confirm |loadguide "Profession Guides\\Tailoring\\Leveling Guides\\Tailoring (1-600)" |only if skill("Tailoring") >= 1
|tip You can also purchase this pet in the auction house.
step
label "CRAFT"
kill Springtail Leaper##57415+, Springtail Gnasher##57413+
collect 40 Windwool Cloth##72988 |goto Valley of the Four Winds/0 43.90,38.60
|only if skill("Tailoring") >= 550
step
Craft the Cloth into Bolts
collect 8 Bolts of Windwool Cloth##82441
|only if skill("Tailoring") >= 550
step
Craft 1 Imperial Silk in the Silken Fields
|tip There is a chance to create a Silkworm Cocoon when crafting the Imperial Silk.
collect Silkworm Cocoon##125557
|only if skill("Tailoring") >= 550
step
Farm all enemies on the Isle of Thunder to collect Motes of Harmony.
when you get 10, right click them to collect Spirit of Harmony.
collect 3 Spirit of Harmony##76061+
|only if skill("Tailoring") >= 550
step
create Song of Harmony##130325,Tailoring,1 total
collect 1 Imperial Silk##82447
|only if skill("Tailoring") >= 550
step
talk Georgio Bolero##1346 |goto Stormwind City/0 53.10,81.30 |only if Alliance
talk Magar##3363 |goto Orgrimmar/1 60.80,59.10 |only if Horde
learn Silkworm Cocoon##125557
|only if skill("Tailoring") >= 550
step
collect 1 Silkworm Cocoon##92960
step
use Silkworm Cocoon##92960
|tip You have a chance of getting the Imperial Moth or the Imperial Silkworm.
|tip If you didn't get the moth, you will have to try again.
collect 1 Imperial Moth##90900 |or
step
use Imperial Moth##90900
learnpet Imperial Moth##1039
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Ji-Kun Hatchling",{
expansion="mists",
patch='52000',
source='Drop',
description="This guide will teach you how to acquire the Ji-Kun Hatchling battle pet.",
pet=1202,
mopready=true,
},[[
step
kill Ji-Kun##69712
|tip Inside the Throne of Thunder raid.
|tip You will need a raid team to reach and defeat this raid boss.
collect Ji-Kun Hatchling##94835
step
use Ji-Kun Hatchling##94835
learnpet Ji-Kun Hatchling##1202
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Kor'thik Swarmling",{
expansion="mists",
patch='81500',
source='Drop',
description="This guide will teach you how to acquire the Kor'thik Swarmling battle pet.",
pet=2585,
mopready=true,
},[[
step
kill Imperial Vizier Zor'lok##62980
|tip Inside the Heart of Fear raid.
|tip You may have to kill this boss more than once to obtain the pet.
|tip You can also purchase this in the Auction House.
collect Kor'thik Swarmling##167058 |goto Heart of Fear/1 68.74,74.46 |or
'|complete haspet(2585) |or
step
use Kor'thik Swarmling##167058
learnpet Kor'thik Swarmling##2585
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Luyu Moth",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Luyu Moth battle pet.",
pet=718,
mopready=true,
},[[
step
clicknpc Luyu Moth##65124
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Luyu Moth##718 |goto Krasarang Wilds/0 82.30,20.30
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Mei Li Sparkler",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Mei Li Sparkler battle pet.",
pet=722,
mopready=true,
},[[
step
clicknpc Mei Li Sparkler##65185
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Mei Li Sparkler##722 |goto Krasarang Wilds/0 39.50,32.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Sandy Petrel",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Sandy Petrel battle pet.",
pet=573,
mopready=true,
},[[
step
clicknpc Sandy Petrel##63006
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Sandy Petrel##573 |goto The Jade Forest/0 66.20,25.30
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Shrine Fly",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Shrine Fly battle pet.",
pet=754,
mopready=true,
},[[
step
clicknpc Shrine Fly##65216
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Shrine Fly##754 |goto The Jade Forest/0 33.40,50.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Sky Lantern",{
expansion="mists",
patch='54000',
source='Vendor',
description="This guide will teach you how to acquire the Sky Lantern battle pet.",
pet=1350,
mopready=true,
},[[
step
Kill enemies around the Timeless Isle
|tip Timeless Coins also drop from caches on the Timeless Isle.
earn 7500 Timeless Coin##777 |goto Timeless Isle/0 47.20,47.70
step
talk Ku-Mo##73819
buy 1 Sky Lantern##104332 |goto Timeless Isle/0 41.20,63.60
step
use Sky Lantern##104332
learnpet Sky Lantern##1350
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Skywisp Moth",{
expansion="mists",
patch='54000',
source='PetBattle',
description="This guide will teach you how to acquire the Skywisp Moth battle pet.",
pet=1326,
mopready=true,
},[[
step
clicknpc Skywisp Moth##73368
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Skywisp Moth##1326 |goto Timeless Isle/0 65.30,23.30
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Szechuan Chicken",{
expansion="mists",
patch='50100',
source='PetBattle',
description="This guide will teach you how to acquire the Szechuan Chicken battle pet.",
pet=728,
mopready=true,
},[[
step
clicknpc Szechuan Chicken##63585
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Szechuan Chicken##728 |goto Kun-Lai Summit/0 60.20,88.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Anubisath Idol",{
expansion="mists",
patch='55000',
source='Drop',
description="This guide will teach you how to acquire the Anubisath Idol battle pet.",
pet=1155,
mopready=true,
},[[
step
Enter the Temple of Ahn'Qiraj |goto Ahn'Qiraj: The Fallen Kingdom/0 46.76,7.47 < 15
kill Emperor Vek'lor##15276
|tip He is one of the Twin Emperors within the Temple of Ahn'Qiraj raid.
|tip Ahn'Qiraj is at the southwestern corner of Silithus on Kalimdor.
|tip You must be at least level 60 and in a raid group to enter this raid.
|tip You may have to kill this boss more than once to obtain the pet.
|tip You can also purchase this pet in the Auction House.
collect 1 Anubisath Idol##93040 |goto Ahn'Qiraj: The Fallen Kingdom/0 46.76,7.47
step
use Anubisath Idol##93040
learnpet Anubisath Idol##1155
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Ashleaf Spriteling",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Ashleaf Spriteling battle pet.",
pet=1323,
mopready=true,
},[[
step
kill Leafmender##73277
|tip You may have to kill this more than once to obtain the pet.
|tip You can also purchase this in the Auction House.
collect 1 Ashleaf Spriteling##104156 |goto Timeless Isle/0 67.30,44.10
step
use Ashleaf Spriteling##104156
learnpet Ashleaf Spriteling##1323
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Bonkers",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Bonkers battle pet.",
pet=1343,
mopready=true,
},[[
step
Kill enemies around the Timeless Isle
|tip Timeless Coins are also looted from caches on the Timeless Isle.
earn 500 Timeless Coin##777 |goto Timeless Isle/0 47.20,47.70
step
Enter the cave |goto Timeless Isle/0 58.50,42.80 < 10 |walk
talk Master Kukuru##72007
buy Kukuru's Cache Key##101538 |goto Timeless Isle/0 59.10,40.60
step
click Timeless Chest##221016
|tip Pick one of the many chests in this room and use your key to open it.
|tip Keep buying keys and opening chests until you loot the pet.
|tip You can also purchase this battle pet in the Auction House.
collect 1 Bonkers##104202
step
use Bonkers##104202
learnpet Bonkers##1343
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Dandelion Frolicker",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Dandelion Frolicker battle pet.",
pet=1329,
mopready=true,
},[[
step
click Neverending Spritewood##220807 |goto Timeless Isle/0 47.70,73.70
|tip This will provide a limited debuff that will turn all Nice Sprites into Angry Sprites.
confirm
step
kill Nice Sprite##71823+, Angry Sprite##71824+
|tip Kill enough of these in the time allotment and a Scary Sprite will spawn.
kill Scary Sprite##71826
collect 1 Dandelion Frolicker##104160 |goto Timeless Isle/0 45.50,73.40
step
use Dandelion Frolicker##104160
learnpet Dandelion Frolicker##1329
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Fiendish Imp",{
expansion="mists",
patch='53000',
source='Drop',
description="This guide will teach you how to acquire the Fiendish Imp battle pet.",
pet=1229,
mopready=true,
},[[
step
kill Terestian Illhoof##15688
|tip Inside the Karazhan raid.
|tip You may have to kill this more than once to obtain the pet.
|tip You can also purchase this in the Auction House.
collect Satyr Charm##97551 |goto Karazhan/11 55.80,76.60
step
use Satyr Charm##97551
learnpet Fiendish Imp##1229
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Lil' Bad Wolf",{
expansion="mists",
patch='53000',
source='Drop',
description="This guide will teach you how to acquire the Lil' Bad Wolf battle pet.",
pet=1226,
mopready=true,
},[[
step
kill The Big Bad Wolf##17521
collect Spiky Collar##97548 |goto Karazhan/4 18.00,34.40
step
use Spiky Collar##97548
learnpet Lil' Bad Wolf##1226
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Baoh-Xi",{
expansion="mists",
patch='81500',
source='Drop',
description="This guide will teach you how to acquire the Baoh-Xi battle pet.",
pet=2582,
mopready=true,
},[[
step
kill Qin-xi##60399
kill Jan-xi##60400
|tip Inside the Mogu'shan Vaults raid.
|tip You may have to kill this more than once to obtain the pet.
|tip You can also purchase this in the Auction House.
collect Mogu Statue##167050 |goto Mogu'shan Vaults/3 68.74,81.71 |or
'|complete haspet(2582) |or
step
use the Mogu Statue##167050
learnpet Baoh-Xi##2582
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Coilfang Stalker",{
expansion="mists",
patch='53000',
source='Drop',
description="This guide will teach you how to acquire the Coilfang Stalker battle pet.",
pet=1232,
mopready=true,
},[[
step
kill Lady Vashj##21212
|tip Inside Serpenshrine Cavern raid.
|tip You will likely need a group for this boss.
collect Dripping Strider Egg##97554 |goto Serpentshrine Cavern/1 71.60,59.00
step
use Dripping Strider Egg##97554
learnpet Coilfang Stalker##1232
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Comet",{
expansion="mists",
patch='81500',
source='Drop',
description="This guide will teach you how to acquire the Comet battle pet.",
pet=2581,
mopready=true,
},[[
step
kill Elegon##60410
|tip Inside the Mogu'shan Vaults raid.
|tip You may have to kill this more than once to obtain the pet.
|tip You can also purchase this in the Auction House.
click Cache of Pure Energy##214386
|tip It spawns after killing Elegon.
collect Celestial Gift##167049 |goto Mogu'shan Vaults/3 20.69,51.17 |or
'|complete haspet(2581) |or
step
use the Celestial Gift##167049
learnpet Comet##2581
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Filthling",{
expansion="mists",
patch='53000',
source='Drop',
description="This guide will teach you how to acquire the Filthling battle pet.",
pet=1245,
mopready=true,
},[[
step
kill Quivering Filth##69251+
|tip Fight them all around  this area.
collect Half-Empty Food Container##97961 |goto Isle of Thunder/0 51.20,81.80
step
use Half-Empty Food Container##97961
learnpet Filthling##1245
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Gusting Grimoire",{
expansion="mists",
patch='52000',
source='TradingCardGame',
description="This guide will teach you how to acquire the Gusting Grimoire battle pet.",
pet=1174,
mopready=true,
},[[
step
Purchase this pet in the auction house
|tip This was a reward from the Trading Card Game.
collect Gusting Grimoire##93669
step
use Gusting Grimoire##93669
learnpet Gusting Grimoire##1174
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Harmonious Porcupette",{
expansion="mists",
patch='54000',
source='Vendor',
description="This guide will teach you how to acquire the Harmonious Porcupette battle pet.",
pet=1346,
mopready=true,
},[[
step
Reach Revered Reputation with Emperor Shaohao |complete rep("Emperor Shaohao") >= Revered
|tip Use the _Emperor Shaohao Reputation_ guide to accomplish this.
Click Here to Load the _Emperor Shaohao Reputation_ guide |confirm |loadguide "Reputation Guides\\Mists of Pandaria Reputations\\Emperor Shaohao"
step
earn 7500 Timeless Coin##777 |goto Timeless Isle/0 53.70,79.90
step
talk Mistweaver Ku##73306
buy 1 Harmonious Porcupette##104295 |goto Timeless Isle/0 42.70,54.70
step
use Harmonious Porcupette##104295
learnpet Harmonious Porcupette##1346
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Lesser Voidcaller",{
expansion="mists",
patch='53000',
source='Drop',
description="This guide will teach you how to acquire the Lesser Voidcaller battle pet.",
pet=1234,
mopready=true,
},[[
step
kill High Astromancer Solarian##18805
|tip Inside The Eye raid in Netherstorm in Outland.
collect Crystal of the Void##97556 |goto Tempest Keep/1 73.80,49.20
step
use Crystal of the Void##97556
learnpet Lesser Voidcaller##1234
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Living Amber",{
expansion="mists",
patch='81500',
source='Drop',
description="This guide will teach you how to acquire the Living Amber battle pet.",
pet=2589,
mopready=true,
},[[
step
kill Amber-Shaper Un'sok##62511
|tip Inside the Heart of Fear raid in the Dread Wastes in Pandaria.
|tip You may have to kill this more than once to obtain the pet.
|tip You can also purchase this in the Auction House.
collect Amber Goo Puddle##167055 |goto Heart of Fear/2 44.19,73.58 |or
'|complete haspet(2589) |or
step
use Amber Goo Puddle##167055
learnpet Living Amber##2589
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Living Fluid",{
expansion="mists",
patch='53000',
source='Drop',
description="This guide will teach you how to acquire the Living Fluid battle pet.",
pet=1243,
mopready=true,
},[[
step
kill Primordius##69017
|tip Inside the Throne of Thunder raid on the Isle of Thunder in Pandaria.
|tip You may have to kill this more than once to obtain the pet.
|tip You can also purchase this in the Auction House.
collect Quivering Blob##97959 |goto Throne of Thunder/5 57.10,77.60 |or
'|complete haspet(1243) |or
step
use Dark Quivering Blob##97960
learnpet Viscous Horror##71199
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Netherspace Abyssal",{
expansion="mists",
patch='53000',
source='Drop',
description="This guide will teach you how to acquire the Netherspace Abyssal battle pet.",
pet=1228,
mopready=true,
},[[
step
kill Prince Malchezaar##15690
|tip Inside the Karazhan raid in Deadwind Pass on Eastern Kingdoms.
|tip You may have to kill this more than once to obtain the pet.
|tip You can also purchase this in the Auction House.
collect Netherspace Portal-Stone##97550 |goto Karazhan/17 48.60,53.60 |or
'|complete haspet(1228) |or
step
use Netherspace Portal-Stone##97550
learnpet Netherspace Abyssal##1228
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Spectral Cub",{
expansion="mists",
patch='51000',
source='Promotion',
description="This battle pet is no longer obtainable.",
pet=1127,
mopready=true,
},[[
step
This pet was a reward for players who attended the Battle.net World Championships in Shanghai in 2012.
|tip This battle pet is no longer obtainable.
confirm
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Spectral Porcupette",{
expansion="mists",
patch='52000',
source='Quest',
description="This guide will teach you how to acquire the Spectral Porcupette battle pet.",
pet=1185,
mopready=true,
},[[
step
Kill enemies around this area
|tip Kill the primal dinomancers, dinosaurs, and skyscreamers around the Isle of Giants.
|tip You can also fish these up on the Isle of Giants.
collect 1000 Giant Dinosaur Bone##94288 |goto Isle of Giants/0 69.37,71.98  |or
'|complete haspet(1185) |or
step
Enter the cave |goto Isle of Giants/0 27.40,58.00 < 10 |walk
talk Ku'ma##70022
|tip Inside the cave.
turnin A Large Pile of Giant Dinosaur Bones##32616 |n
collect Spectral Porcupette##94190 |goto Isle of Giants/0 32.70,53.90 |or
'|complete haspet(1185) |or
step
use Spectral Porcupette##94190
learnpet Spectral Porcupette##1185
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Viscous Horror",{
expansion="mists",
patch='53000',
source='Drop',
description="This guide will teach you how to acquire the Viscous Horror battle pet.",
pet=1244,
mopready=true,
},[[
step
kill Primordius##69017
|tip Inside the Heroic Throne of Thunder raid on the Isle of Thunder in Pandaria.
|tip You may have to kill this more than once to obtain the pet.
|tip You can also purchase this in the Auction House.
collect Dark Quivering Blob##97960 |goto Throne of Thunder/5 57.10,77.60
step
use Dark Quivering Blob##97960
learnpet Viscous Horror##1244
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Blackfuse Bombling",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Blackfuse Bombling battle pet.",
pet=1322,
mopready=true,
},[[
step
You can only obtain this pet from the Siege of Orgrimmar raid.
|tip It can drop from any difficulty.
confirm
step
kill Siegemaster Blackfuse##71504
|tip Inside the Siege of Orgrimmar raid in the Vale of Eternal Blossoms on Pandaria.
|tip You may have to kill this more than once to obtain the pet.
|tip You can also purchase this in the Auction House.
collect Blackfuse Bombling##104158 |goto Siege of Orgrimmar/10 58.70,46.50
step
use Blackfuse Bombling##104158
learnpet Blackfuse Bombling##1322
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Lil' Bling",{
expansion="mists",
patch='54000',
source='Drop',
description="This guide will teach you how to acquire the Lil' Bling battle pet.",
pet=1320,
mopready=true,
},[[
step
This pet will require an _Engineer_ to make. It's suggested you pick up Engineering in order to obtain this item, as it comes from the _Blingtron 4000_ daily.
|tip You may be able to run into the Blingtron 4000 yourself, or ask around in your guild or in Trade Chat if you can use it, but the item needed is an extremely rare spawn from him.
confirm
step
#include "trainer_Engineering"
learn Blingtron 4000##127129
only if skill("Engineering")==600
step
create 1 Blingtron 4000##127129, Engineering,1 total
only if skill("Engineering")==600
step
label "gift"
Call the Blingtron 4000 to you. |use Blingtron 4000##87214 |only if skill("Engineering")==600
Ask around in trade chat or in your guild and see if anyone will summon Blingtron 4000 for you. |only if skill("Engineering")<600
talk Blingtron 4000##43929
accept Blingtron 4000##31752
collect 1 Blingtron 4000 Gift Package##86623
step
use Blingtron 4000 Gift Package##86623
collect 1 Lil' Bling##103670 |next
Click here if you didn't receive the Dusty Old Robot today. |confirm |next "gift"
step
use Lil' Bling##103670
learnpet Lil'Bling##73011
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Menagerie Custodian",{
expansion="mists",
patch='53000',
source='Drop',
description="This guide will teach you how to acquire the Menagerie Custodian battle pet.",
pet=1227,
mopready=true,
},[[
step
kill The Curator##15691
|tip Inside the Karazhan raid in Deadwind Pass on Eastern Kingdoms.
|tip You may have to kill this more than once to obtain the pet.
|tip You can also purchase this in the Auction House.
collect Instant Arcane Sanctum Security Kit##97549 |goto Karazhan/9 41.00,22.00
step
use Instant Arcane Sanctum Security Kit##97549
learnpet Menagerie Custodian##1227
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Pierre",{
expansion="mists",
patch='52000',
source='Profession',
description="This guide will teach you how to acquire the Pierre battle pet.",
pet=1204,
mopready=true,
},[[
step
Creating this pet requires you to have level 75 in Pandaria Engineering
You can also purchase this in the auction house.
confirm
step
Kill any mob in the _Vale of Eternal Blossoms_
collect 1 Schematic: Chief Engineer Jard's Journal##100910
step
use Schematic: Chief Engineer Jard's Journal##100910
accept Chief Engineer Jard's Journal##32630
step
label "a"
You can either buy these materials from the Auction House or farm to obtain them:
collect 15 Living Steel##72104
collect 15 Jard's Peculiar Energy Source##94113
|next "create"
Click here to farm these materials yourself |confirm |next
step
map Townlong Steppes
path	61.60,76.30	59.60,68.30	59.20,58.70
path	63.30,51.70	62.20,44.10	66.80,39.50
path	73.20,46.90	73.20,55.50	75.00,62.70
path	70.50,67.10	68.50,70.70
Follow the provided path.
You will need fewer ores for the _Riddle of Steel_ path. The trade off is you will need to find an alchemist with 90 _Spirit of Harmony_
collect 90 Black Trillium Ore##72094
collect 90 White Trillium Ore##72103
or
You will need to search for multiple alchemists if you take this route. You will only be able to use _Transmute: Living Steel_ once per day with each.
collect 180 Black Trillium Ore##72094
collect 180 White Trillium Ore##72103
collect 300 Ghost Iron Ore##72092
step
create 45 Trillium Bar##102167 |goto Shrine of Seven Stars/1 71.50,51.00
create 90 Trillium Bar##102167 |goto Shrine of Seven Stars/1 71.50,51.00
Click here if you choose the _Spirit of Harmony_ route. |confirm
step
For this next part, you will either need to have level 75 Pandaria Alchemy, or know someone who does.
confirm
step
create 15 Living Steel##130326,Pandaria Alchemy,30 total
|tip This is for those using the Riddle of Steel spell.
create 15 Living Steel##114780,Pandaria Alchemy,30 total
|tip This is for those using Transmute: Living Steel
step
label "create"
create 150 Ghost Iron Bar##102165
step
create 1 Pierre##139196,Engineering,1 total
step
use Pierre##94903
learnpet Pierre##1204
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Pocket Reaver",{
expansion="mists",
patch='53000',
source='Drop',
description="This guide will teach you how to acquire the Pocket Reaver battle pet.",
pet=1233,
mopready=true,
},[[
step
kill Void Reaver##19516
|tip Inside the Tempest Keep raid in Netherstorm in Outland.
|tip You may have to kill this more than once to obtain the pet.
|tip You can also purchase this in the Auction House.
collect Tiny Fel Engine Key##97555 |goto Tempest Keep/1 25.30,49.50
step
use Tiny Fel Engine Key##97555
learnpet Pocket Reaver##1233
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Rascal-Bot",{
expansion="mists",
patch='54000',
source='Profession',
description="This guide will teach you how to acquire the Rascal-Bot battle pet.",
pet=1256,
mopready=true,
},[[
step
Creating this pet requires you to have level 75 in Pandaria Engineering.
You can also purchase this in the auction house.
confirm
step
Kill any mob in the _Vale of Eternal Blossoms_
collect 1 Schematic: Chief Engineer Jard's Journal##100910
step
use Schematic: Chief Engineer Jard's Journal##100910
accept Chief Engineer Jard's Journal##32630
step
label "a"
You can either buy these materials from the auction house or farm to obtain them:
collect 30 Living Steel##72104
collect 30 Jard's Peculiar Energy Source##94113
|next "create"
Click here to farm these materials yourself |confirm |next
step
map Townlong Steppes
path	61.60,76.30	59.60,68.30	59.20,58.70
path	63.30,51.70	62.20,44.10	66.80,39.50
path	73.20,46.90	73.20,55.50	75.00,62.70
path	70.50,67.10	68.50,70.70
Follow the provided path.
You will need fewer ores for the _Riddle of Steel_ path. The trade off is you will need to find an alchemist with 90 _Spirit of Harmony_
collect 180 Black Trillium Ore##72094
collect 180 White Trillium Ore##72103
or
You will need to search for multiple alchemists if you take this route. You will only be able to use _Transmute: Living Steel_ once per day with each.
collect 360 Black Trillium Ore##72094
collect 360 White Trillium Ore##72103
collect 600 Ghost Iron Ore##72092
step
create 90 Trillium Bar##102167 |goto Shrine of Seven Stars/1 71.50,51.00
create 180 Trillium Bar##102167 |goto Shrine of Seven Stars/1 71.50,51.00
Click here if you choose the _Spirit of Harmony_ route. |confirm
step
For this next part, you will either need to have level 75 Pandaria Alchemy, or know someone who does.
confirm
step
create 30 Living Steel##130326,Pandaria Alchemy,30 total
|tip This is for those using the Riddle of Steel spell.
create 30 Living Steel##114780,Pandaria Alchemy,30 total
|tip This is for those using Transmute: Living Steel
step
label "create"
create 300 Ghost Iron Bar##102165
step
create 1 Rascal-Bot##143714,Engineering,1 total
step
use Rascal-Bot##100905
learnpet Rascal-Bot##1256
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Son of Animus",{
expansion="mists",
patch='52000',
source='Drop',
description="This guide will teach you how to acquire the Son of Animus battle pet.",
pet=1183,
mopready=true,
},[[
step
kill Dark Animus##69427
|tip Inside The Throne of Thunder raid on The Isle of Thunder in Pandaria.
|tip You may have to kill this more than once to obtain the pet.
|tip You can also purchase this in the Auction House.
collect Son of Animus##94152
step
use Son of Animus##94152
learnpet Son of Animus##1183
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Sunreaver Micro-Sentry",{
expansion="mists",
patch='52000',
source='Drop',
description="This guide will teach you how to acquire the Sunreaver Micro-Sentry battle pet.",
pet=1178,
mopready=true,
},[[
step
kill Haywire Sunreaver Construct##50358
|tip Inside The Throne of Thunder raid on The Isle of Thunder in Pandaria.
|tip You may have to kill this more than once to obtain the pet.
|tip You can also purchase this in the Auction House.
collect Sunreaver Construct##94124 |goto Isle of Thunder/0 49.20,86.40 |or
'|complete haspet(1178)
step
use Sunreaver Construct##94124
learnpet Sunreaver Micro-Sentry##1178
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Unborn Val'kyr",{
expansion="mists",
patch='53000',
source='PetBattle',
description="This guide will teach you how to acquire the Unborn Val'kyr battle pet.",
pet=1238,
mopready=true,
},[[
step
label "START_UNBORN_VAL'KYR"
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Borean Tundra/0 32.60,60.00 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Borean Tundra/0 80.80,48.20 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Borean Tundra/0 47.80,8.00 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Sholazar Basin/0 44.60,69.20 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Sholazar Basin/0 36.80,19.40 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Sholazar Basin/0 58.50,22.00 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Icecrown/0 44.20,33.40 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Icecrown/0 47.90,86.60 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Icecrown/0 73.80,64.50 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Crystalsong Forest/0 17.60,57.20 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Dragonblight/0 26.80,54.00 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Dragonblight/0 82.20,65.80 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Dragonblight/0 65.60,35.80 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Crystalsong Forest/0 43.40,44.00 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Crystalsong Forest/0 68.20,49.60 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto The Storm Peaks/0 42.50,78.50 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto The Storm Peaks/0 29.00,51.40 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto The Storm Peaks/0 65.20,41.80 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Zul'Drak/0 75.00,22.80 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Zul'Drak/0 57.00,39.80 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Zul'Drak/0 24.60,64.00 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Grizzly Hills/0 25.80,56.80 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Grizzly Hills/0 61.40,18.20 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Grizzly Hills/0 79.60,51.80 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Howling Fjord/0 71.80,43.00 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Howling Fjord/0 68.00,67.60 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm
step
clicknpc Unborn Val'kyr##71163
|tip Reduce its health below 35% and use the "Trap" ability on your pet bar.
|tip You may need to attempt the trap several times.
learnpet Unborn Val'kyr##1238 |goto Howling Fjord/0 46.00,43.00 |next "END_UNBORN_VAL'KYR"
Click here if the pet is not available at this location. |confirm |next "START_UNBORN_VAL'KYR"
step
label "END_UNBORN_VAL'KYR"
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Undead Pets\\Wayward Spirit",{
expansion="mists",
patch='81500',
source='Drop',
description="This pet has a chance to drop from Gara'jal the Spiritbinder in the Mogu'shan Vaults raid.",
pet=2580,
mopready=true,
},[[
step
kill Gara'jal the Spiritbinder##60143
|tip Inside the Mogushan Vaults raid in Kun-Lai Summit on Pandaria.
|tip You may have to kill this more than once to obtain the pet.
|tip You can also purchase this in the Auction House.
collect Wayward Spirit##167048 |goto Mogu'shan Vaults/1 59.91,19.37 |or
'|complete haspet(2580) |or
step
use the Wayward Spirit##167048
learnpet Wayward Spirit##2580
]])
