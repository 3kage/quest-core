-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Dancing Water Skimmer",{
patch='50100',
source='PetBattle',
description="This guide will walk you through obtaining the Aquatic pet: Dancing Water Skimmer",
pet=751,
},[[
step
Challenge one to a pet battle and capture it
|tip The Dancing Water Skimmers are around level 24.
learnpet Dancing Water Skimmer##751 |goto Vale of Eternal Blossoms 33.40,64.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Fishy",{
patch='50100',
source='Quest',
description="This guide will walk you through obtaining the Aquatic pet: Fishy",
pet=847,
},[[
step
This pet is obtained through completing part of the Jade Forest main questline.
confirm
step
talk Chief Kah Kah##56336
accept What's in a Name Name?##31239 |goto The Jade Forest 28.00,47.20
step
kill 7 Riverstride Jinyu##56289+ |q 31239/1 |goto The Jade Forest 28.80,46.00
step
talk Chief Kah Kah##56336
turnin What's in a Name Name##31239 |goto The Jade Forest 28.00,47.20
step
learnpet Fishy##847 |use Fishy##84105
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Swamp Croaker",{
patch='52000',
source='PetBattle',
description="This guide will walk you through obtaining the Aquatic pet: Swamp Croaker",
pet=1182,
},[[
step
Challenge one to a pet battle and capture it.
|tip The Swamp Croakers are around level 25 and share a spawn with Thundertail Flappers.
learnpet Swamp Croaker##1182 |goto Isle of Thunder 41.50,49.10
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Tiny Goldfish",{
patch='50100',
source='Vendor',
description="This guide will walk you through obtaining the Aquatic pet: Tiny Goldfish",
pet=652,
},[[
step
Click here to be taken to the guide that will raise your reputation with _The Anglers_. |confirm |next "reputation"
Click here to be taken directly to where you buy the pet. |confirm |next "vendor"
|tip This pet requires you to be Honored with The Anglers.
step
label "reputation"
You must have fishing in order to accept dailies from this faction.
confirm
step
talk Master Angler Karu##64010
accept The Anglers##31370 |goto Vale of Eternal Blossoms 60.90,23.80
|only if not completedq(31370)
step
talk Fisherman Haito##59584
turnin The Anglers##31370 |goto Krasarang Wilds 67.90,45.20
|only if not completedq(31370)
step
There will only be three dailies available from the following questgivers. It is possible for one questgiver to give you two quests in the same day, but it is unlikely.
confirm
step
talk Fisherman Haito##59584
accept Shocking!##30584 |goto Krasarang Wilds 67.90,45.20 |or
accept Jagged Abalone##30586 |goto Krasarang Wilds 67.90,45.20 |or
If these quests are unavailable today, click here. |confirm
step
talk Fiznix##60136
accept Like Bombing Fish In A Barrel##30678 |goto Krasarang Wilds 67.50,44.60 |or
accept Scavenger Hunt##30698 |goto Krasarang Wilds 67.50,44.60 |or
If this quest is unavailable today, click here. |confirm
step
talk Angler Shen##59586
accept Snapclaw##30700 |goto Krasarang Wilds 67.50,43.50 |or
accept Fishing for a Bruising##30588 |goto Krasarang Wilds 67.50,43.50 |or
If these quests are unavailable today, click here. |confirm
step
talk John "Big Hook" Marsock##60674
accept Bright Bait##30754 |goto Krasarang Wilds 68.30,43.50 |or
accept Jumping the Shark##30753 |goto Krasarang Wilds 68.30,43.50 |or
If these quests are unavailable today, click here. |confirm
step
talk Trawler Yotimo##60135
accept Armored Carp##30613 |goto Krasarang Wilds 67.60,42.50 |or
accept Huff & Puff##30658 |goto Krasarang Wilds 67.60,42.50 |or
If these quests are unavailable today, click here. |confirm
step
talk Elder Fisherman Rassan##60673
accept What Lurks Below##30585 |goto Krasarang Wilds 68.40,42.10 |or
accept Who Knew Fish Liked Eggs?##30598 |goto Krasarang Wilds 68.40,42.10 |or
If these quests are unavailable today, click here. |confirm
step
talk Fo Fook##60675
accept Piranha!##30763 |goto Krasarang Wilds 67.20,41.20 |or
accept Viseclaw Soup##30701 |goto Krasarang Wilds 67.20,41.20 |or
If these quests are unavailable today, click here. |confirm
step
clicknpc Frenzied Reef Shark##60408
Ride the shark. |goto Krasarang Wilds 68.40,43.10 |invehicle |c
|only if haveq(30753)
step
Use the abilities on your hotbar to kill the shark, make sure not to let your grip bar reach zero.
kill Frenzied Reef Shark##60408 |q 30753/1
|only if haveq(30753)
step
click Jagged Abalone##211118
collect 9 Jagged Abalone Meat##80277 |q 30586/1 |goto Krasarang Wilds 69.10,37.90
|only if haveq(30586)
step
Enter the underwater cave here. |goto Krasarang Wilds 71.30,38.50 <5 |c
|only if haveq(30700)
step
kill Snapclaw##60401
collect Snapclaw's Claw##80831 |q 30700/1 |goto Krasarang Wilds 73.90,38.40
|only if haveq(30700)
step
Leave the cave. |goto Krasarang Wilds 71.30,38.50 < 5 |c
|only if haveq(30700)
step
Use your fishing skill to fish up 7 Dojani Eel.
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
Use your Goblin Fishing Bomb to kill Sting Rays. |use Goblin Fishing Bomb##80599
|tip You can kill the Sting Rays by other means, using the bombs is much quicker though.
kill Sting Ray##60278+
collect 3 Stinger##80600+ |q 30678/1 |goto Krasarang Wilds 59.30,46.30
|only if haveq(30678)
step
Use your fishing skill to fish up 5 Wolf Piranha.
collect 5 Wolf Piranha##81122 |q 30763/1 |goto Krasarang Wilds 36.80,43.30
|only if haveq(30763)
step
Use your fishing skill in the Mysterious Whirlpool until Narjon the Gulper appears.
|tip When Narjon spawns, make sure to equip your weapon quickly.
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
click Goblin Fishing Raft##211596
Ride a Goblin Fishing Raft |havebuff Rafting##116032 |goto Krasarang Wilds 57.50,53.50
|only if haveq(30698)
step
Use you fishing skill in the Shipwreck Debris pools to fish up 15 Rusty Shipwreck Debris.
collect 15 Rusty Shipwreck Debris##80830 |q 30698/1 |goto Krasarang Wilds 57.30,55.20
You can find more Debris at [64.30,50.60]
|only if haveq(30698)
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
label "vendor"
talk Nat Pagle##63721
buy 1 Tiny Goldfish##85447 |goto Krasarang Wilds 68.40,43.50
step
learnpet Tiny Goldfish##652 |use Tiny Goldfish##85447
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Elder Python",{
patch='52000',
source='PetBattle',
description="This guide will walk you through obtaining the Beast pet: Elder Python",
pet=1181,
},[[
step
Challenge one to a pet battle and capture it
|tip The Swamp Croakers are around level 25 and share a spawn with Thundertail Flappers and Swamp Croakers.
learnpet Elder Python##1181 |goto Isle of Thunder 41.30,51.50
[Isle of Thunder 53.50,56.50]
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Sumprush Rodent",{
patch='51000',
source='PetBattle',
description="This guide will walk you through obtaining the Beast pet: Sumprush Rodent.",
pet=1128,
},[[
step
In order to get this pet, you will need to collect Lion's Landing Commissions.
collect 2000 Lion's Landing Commision##91838 |next "buy"
Click here to farm. |confirm
step
kill Shieldwall Footman##67304+, Dwarven Mortar Team Engineer##67545+, Shieldwall Rifleman##67297+, Shieldwall Vindicator##67296+, Thane Stonehearth##67636
collect Lion's Landing Commission##91838 |goto Krasarang Wilds 81.60,25.30
step
label "buy"
talk Ongrom Black Tooth##67751
buy Rodent Crate##92527 |goto Krasarang Wilds/0 10.80,53.40
You will need to search for a Sumprush Rodent around the area.
Use your Rodent Crate to capture the Sumprush Rodent. |use Rodent Crate##92527
learnpet Sumprush Rodent##1128 |goto Krasarang Wilds/0 10.80,53.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Air Spirit",{
patch='51000',
source='Quest',
description="This guide will walk you through obtaining the Elemental pet: Pandaren Air Spirit",
pet=1125,
},[[
step
This pet is only obtainable after defeating all of the pet battle master trainers
confirm
step
talk Gentle San##64582
accept Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.90,23.60
|only if not completedq(32428)
step
talk Thundering Pandaren Spirit##68465
Challenge him to a pet battle.
|tip The Thundering Pandaren Spirit has an Elemental type Pet, a Magic type Pet, and a Beast Type Pet. Use Aquatic type attacks on its Elemental, Mechanical type attacks on its Beast, and Dragonkin type attacks on its Magic. The pets are all level 25 Legendary.
Defeat Thundering Pandaren Spirit |q 32428/2 |goto Kun-Lai Summit/0 65.00,93.90
|only if not completedq(32428)
step
talk Burning Pandaren Spirit##68463
Challenge him to a pet battle.
Defeat Burning Pandaren Spirit |q 32428/1 |goto Townlong Steppes 57.00,42.20
|only if not completedq(32428)
step
talk Flowing Pandaren Spirit##68462
Challenge him to a pet battle.
Defeat Flowing Pandaren Spirit |q 32428/4 |goto Dread Wastes 61.20,87.60
|only if not completedq(32428)
step
talk Whispering Pandaren Spirit##68464
Challenge him to a pet battle.
Defeat Whispering Pandaren Spirit |q 32428/3 |goto The Jade Forest 28.80,36.00
|only if not completedq(32428)
step
talk Gentle San##64582
turnin Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.90,23.60
|tip You will only be able to accept one of the four pets. You will be able to complete daily quests to get the others.
|only if not completedq(32428)
step
You can obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
confirm
|only if completedq(32428)
step
talk Whispering Pandaren Spirit##68464
accept Whispering Pandaren Spirit##32440 |goto The Jade Forest 28.80,36.00
step
talk Whispering Pandaren Spirit##68464
Challenge him to a pet battle and defeat him. |q 32440/1 |goto The Jade Forest 28.80,36.00
step
talk Whispering Pandaren Spirit##68464
turnin Whispering Pandaren Spirit##32440 |goto The Jade Forest 28.80,36.00
step
Loot the Pandaren Spirit Pet Supplies you just received |use Pandaren Spirit Pet Supplies##93148
collect 1 Pandaren Air Spirit##92799
|tip This item doesn't always drop from this quest reward. You may have to repeat this daily a few times before you get the pet.
step
learnpet Pandaren Air Spirit##1125 |use Pandaren Air Spirit##92799
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Earth Spirit",{
patch='51000',
source='Quest',
description="This guide will walk you through obtaining the Elemental pet: Pandaren Earth Spirit",
pet=1126,
},[[
step
This pet is only obtainable after defeating all of the pet battle master trainers
confirm
step
talk Gentle San##64582
accept Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.90,23.60
|only if not completedq(32428)
step
talk Thundering Pandaren Spirit##68465
Challenge him to a pet battle.
Defeat Thundering Pandaren Spirit |q 32428/2 |goto Kun-Lai Summit/0 65.00,93.90
|only if not completedq(32428)
step
talk Burning Pandaren Spirit##68463
Challenge him to a pet battle.
Defeat Burning Pandaren Spirit |q 32428/1 |goto Townlong Steppes 57.00,42.20
|only if not completedq(32428)
step
talk Flowing Pandaren Spirit##68462
Challenge him to a pet battle.
Defeat Flowing Pandaren Spirit |q 32428/4 |goto Dread Wastes 61.20,87.60
|only if not completedq(32428)
step
talk Whispering Pandaren Spirit##68464
Challenge him to a pet battle.
Defeat Whispering Pandaren Spirit |q 32428/3 |goto The Jade Forest 28.80,36.00
|only if not completedq(32428)
step
talk Gentle San##64582
turnin Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.90,23.60
|tip You will only be able to accept one of the four pets. You will be able to complete daily quests to get the others.
|only if not completedq(32428)
step
|tip You can obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
confirm
|only if completedq(32428)
step
talk Thundering Pandaren Spirit##68465
accept Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 65.00,93.90
step
talk Thundering Pandaren Spirit##68465
Challenge him to a pet battle and defeat him. |q 32441/1 |goto Kun-Lai Summit/0 65.00,93.90
step
talk Thundering Pandaren Spirit##68465
turnin Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 65.00,93.90
step
Loot the Pandaren Spirit Pet Supplies you just received |use Pandaren Spirit Pet Supplies##93149
collect 1 Pandaren Earth Spirit##92800
|tip This item doesn't always drop from this quest reward. You may have to repeat this daily a few times before you get the pet.
step
learnpet Pandaren Earth Spirit##1126 |use Pandaren Earth Spirit##92800
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Fire Spirit",{
patch='51000',
source='Quest',
description="This guide will walk you through obtaining the Elemental pet: Pandaren Fire Spirit",
pet=1124,
},[[
step
This pet is only obtainable after defeating all of the pet battle master trainers
confirm
step
talk Gentle San##64582
accept Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.90,23.60
|only if not completedq(32428)
step
talk Thundering Pandaren Spirit##68465
Challenge him to a pet battle.
Defeat Thundering Pandaren Spirit |q 32428/2 |goto Kun-Lai Summit/0 65.00,93.90
|only if not completedq(32428)
step
talk Burning Pandaren Spirit##68463
Challenge him to a pet battle.
Defeat Burning Pandaren Spirit |q 32428/1 |goto Townlong Steppes 57.00,42.20
|only if not completedq(32428)
step
talk Flowing Pandaren Spirit##68462
Challenge him to a pet battle.
Defeat Flowing Pandaren Spirit |q 32428/4 |goto Dread Wastes 61.20,87.60
|only if not completedq(32428)
step
talk Whispering Pandaren Spirit##68464
Challenge him to a pet battle.
Defeat Whispering Pandaren Spirit |q 32428/3 |goto The Jade Forest 28.80,36.00
|only if not completedq(32428)
step
talk Gentle San##64582
turnin Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.90,23.60
|tip You will only be able to accept one of the four pets. You will be able to complete daily quests to get the others.
|only if not completedq(32428)
step
|tip You can obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
confirm
|only if completedq(32428)
step
talk Burning Pandaren Spirit##68463
accept Burning Pandaren Spirit##32434 |goto Townlong Steppes 57.00,42.20
step
talk Burning Pandaren Spirit##68463
Challenge him to a pet battle and defeat him. |q 32434/1 |goto Townlong Steppes 57.00,42.20
step
talk Burning Pandaren Spirit##68463
turnin Burning Pandaren Spirit##32434 |goto Townlong Steppes 57.00,42.20
step
Loot the Pandaren Spirit Pet Supplies you just received |use Pandaren Spirit Pet Supplies##93146
collect 1 Pandaren Fire Spirit##92798
|tip This item doesn't always drop from this quest reward. You may have to repeat this daily a few times before you get the pet.
step
learnpet Pandaren Fire Spirit##1124 |use Pandaren Fire Spirit##92798
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Water Spirit",{
patch='50400',
source='Quest',
description="This guide will walk you through obtaining the Elemental pet: Pandaren Water Spirit",
pet=868,
},[[
step
This pet is only obtainable after defeating all of the pet battle master trainers
confirm
step
talk Gentle San##64582
accept Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.90,23.60
|only if not completedq(32428)
step
talk Thundering Pandaren Spirit##68465
Challenge him to a pet battle.
Defeat Thundering Pandaren Spirit |q 32428/2 |goto Kun-Lai Summit/0 65.00,93.90
|only if not completedq(32428)
step
talk Burning Pandaren Spirit##68463
Challenge him to a pet battle.
Defeat Burning Pandaren Spirit |q 32428/1 |goto Townlong Steppes 57.00,42.20
|only if not completedq(32428)
step
talk Flowing Pandaren Spirit##68462
Challenge him to a pet battle.
Defeat Flowing Pandaren Spirit |q 32428/4 |goto Dread Wastes 61.20,87.60
|only if not completedq(32428)
step
talk Whispering Pandaren Spirit##68464
Challenge him to a pet battle.
Defeat Whispering Pandaren Spirit |q 32428/3 |goto The Jade Forest 28.80,36.00
|only if not completedq(32428)
step
talk Gentle San##64582
turnin Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.90,23.60
|tip You will only be able to accept one of the four pets. You will be able to complete daily quests to get the others.
|only if not completedq(32428)
step
|tip You can obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
confirm
|only if completedq(32428)
step
talk Flowing Pandaren Spirit##68462
accept Flowing Pandaren Spirit##32439 |goto Dread Wastes 61.20,87.60
step
talk Flowing Pandaren Spirit##68462
Challenge him to a pet battle and defeat him. |q 32439/1 |goto Dread Wastes 61.20,87.60
step
talk Flowing Pandaren Spirit##68462
turnin Flowing Pandaren Spirit##32439 |goto Dread Wastes 61.20,87.60
step
Loot the Pandaren Spirit Pet Supplies you just received |use Pandaren Spirit Pet Supplies##93147
collect 1 Pandaren Water Spirit##90173
|tip This item doesn't always drop from this quest reward. You may have to repeat this daily a few times before you get the pet.
step
learnpet Pandaren Water Spirit##868 |use Pandaren Water Spirit##90173
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Sapphire Cub",{
patch='50100',
source='Profession',
description="This guide will walk you through obtaining the Elemental pet: Sapphire Cub",
pet=846,
},[[
step
collect Sapphire Cub##82775 |or
|tip This can be crafted with Pandaria Jewelcrafting at skill 75.
|tip You obtain this jewelcrafting design from the Golden Lotus Daily Quest reward or by opening a Serpent's Heart. |only if hasprof("Pandaria Jewelcrafting",1,75)
|tip Please open your Jewelcrafting Profession Interface. |only if hasprof("Pandaria Jewelcrafting",1,75)
Click Here to Open the "Golden Lotus Dailies" Guide |confirm |loadguide "Daily Guides\\Mists of Pandaria Dailies\\The Golden Lotus Dailies" |only if hasprof("Pandaria Jewelcrafting",1,75)
|tip You can also purchase the pet from the auction house.
'|complete haspet(846) |or
step
use Sapphire Cub##82775
Learn the "Sapphire Cub" Battle Pet |learnpet Sapphire Cub##846
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Thundertail Flapper",{
patch='52000',
source='PetBattle',
description="This guide will walk you through obtaining the Elemental pet: Thundertail Flapper",
pet=1175,
},[[
step
Challenge one to a pet battle and capture it
|tip The Thundertail Flappers are around level 25 and share a spawn with Swamp Croakers..
learnpet Thundertail Flapper##1175 |goto Isle of Thunder 41.50,49.10
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Chi-ji Kite",{
patch='50300',
source='Profession',
description="This guide will walk you through obtaining the Flying pet: Chi-ji Kite",
pet=849,
},[[
step
Click here to gather and create the pet yourself |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
|tip This pet requires you to either have level 75 Pandaria Inscription, or purchase it from the Auction House.
step
label "create"
talk Nerog##46716
learn Chi-Ji Kite##127009 |goto Orgrimmar 55.10,55.90
step
map Valley of the Four Winds
path 81.40,21.50	76.40,29.20	68.20,33.30
path 70.60,41.80	65.10,60.10	57.60,65.60
path 50.80,58.60	48.00,65.90	46.90,61.30
path 42.50,58.30	33.60,62.10	28.10,72.70
path 25.70,78.40	18.50,51.00	15.40,53.90
path 12.80,44.70	14.30,41.20	14.80,35.80
path 19.60,34.40	24.00,42.20	25.00,50.20
path 30.10,55.70	 35.80,54.80	41.50,48.90
#include "follow_path_herbs"
You need about 15 Shadow-giving herbs total
collect Green Tea leaf##72234 |n
collect Silkweed##72235 |n
Mill the 15 herbs you gathered into Shadow Pigment |cast Milling##51005
collect 4 Shadow Pigment##79251
step
talk Moraka##46718
buy 1 Light Parchment##39354 |goto Orgrimmar 55.40,55.90
step
create 1 Chi-ji Kite##89368
|next "done"
step
label "buy"
talk Auctioneer Ralinza##44867
buy 4 Ink of Dreams##79254+ |goto Orgrimmar/1 53.90,73.10
Click hhere if you intend to buy the Kite instead of having it be crafted. |next "kite" |confirm
step
talk Moraka##46718 |tip She patrols up and down the ramp inside of this building.
buy Light Parchment##39354 |goto Orgrimmar/1 55.80,55.60
step
label "kite"
talk Auctioneer Drezmit##44866
buy 1 Chi-ji Kite##89368 |goto Orgrimmar 54.10,73.40
step
label "done"
learnpet Chi-ji Kite##66104 |use Chi-ji Kite##89368
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Jade Crane Chick",{
patch='50100',
source='Vendor',
description="This guide will walk you through obtaining the Flying pet: Jade Crane Chick",
pet=792,
},[[
step
You must be a Pandaren in order to obtain this pet
confirm
step
talk Varzok##63626
buy Jade Crane Chick##88148 |goto Orgrimmar 52.50,59.20
step
learnpet Jade Crane Chick##792 |use Jade Crane Chick##88148
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Yu'lon Kite",{
patch='50300',
source='Profession',
description="This guide will walk you through obtaining the Flying pet: Yu'lon Kite",
pet=850,
},[[
step
Click here to gather and create the pet yourself |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
|tip This pet requires you to either have level 75 Pandaria Inscription, or purchase it from the Auction House.
step
label "create"
talk Nerog##46716
learn Yu'lon Kite##127007 |goto Orgrimmar 55.10,55.90
step
Click here to purchase the materials. |next "AHBUY" |confirm
Click here to farm the materials yourself. |confirm
step
map Valley of the Four Winds
path 81.40,21.50	76.40,29.20	68.20,33.30
path 70.60,41.80	65.10,60.10	57.60,65.60
path 50.80,58.60	48.00,65.90	46.90,61.30
path 42.50,58.30	33.60,62.10	28.10,72.70
path 25.70,78.40	18.50,51.00	15.40,53.90
path 12.80,44.70	14.30,41.20	14.80,35.80
path 19.60,34.40	24.00,42.20	25.00,50.20
path 30.10,55.70	 35.80,54.80	41.50,48.90
#include "follow_path_herbs"
You need about 15 Shadow-giving herbs total
collect Green Tea leaf##72234 |n
collect Silkweed##72235 |n
Mill the 15 herbs you gathered into Shadow Pigment |cast Milling##51005
collect 4 Shadow Pigment##79251
step
label "AHBUY"
talk Moraka##46718
buy 1 Light Parchment##39354 |goto Orgrimmar 55.40,55.90
step
talk Auctioneer Drezmit##44866
buy 4 ink of Dreams##79254 |goto Orgrimmar/1 54.10,73.30
step
create 1 Yu'lon Kite##89367
|next "done"
step
label "buy"
talk Auctioneer Drezmit##44866
buy 1 Yu'lon Kite##89367 |goto Orgrimmar 54.10,73.40
step
label "done"
learnpet Yu'lon Kite##850 |use Yu'lon Kite##89367
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Mountain Panda",{
patch='52000',
source='Quest',
description="This guide will walk you through obtaining the Humanoid pet: Mountain Panda",
pet=1198,
},[[
step
Click here to be routed to  the _Battle Pet Questline_. |confirm
Click here if you've completed the Battle Pet Questline and want to start the _Beasts of Fable_. |confirm |next "beasts"
Click here if you've completed both the Battle Pet Questline as well as the Beasts of Fable quests. |confirm |next "reset"
|tip In order to attain this pet, you will need to completed the Battle Pet Quest line as well as the Beasts of Fable quest.
step
#include "H_Battlepet_quests"
step
label "beasts"
#include "H_Beasts_of_Fable"
step
label "reset"
#include "H_Beasts_of_Fable_D"
step
Click the Fabled Pandaren Pet Supplies. |use Fabled Pandaren Pet Supplies##94207
collect Mountain Panda##94210 |next |only if default
If you didn't get the pet, click here to go back to the start of the dailies. |confirm |next "reset"
step
learnpet Mountain Panda##1198 |use Mountain Panda##94210
step
Congratulations, you have attainted the _Mountain Panda_ pet!
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Red Panda",{
patch='52000',
source='Quest',
description="This guide will walk you through obtaining the Humanoid pet: Red Panda",
pet=1176,
},[[
step
Click here to proceed to the Battle Pet Questline. |confirm
Click here to proceed to the Fabled Beast hunt. |confirm |next "fable"
|tip In order to attain this pet, you will need to complete the Battle Pet Questline and defeating 10 Fabled beasts.
step
#include "H_Battlepet_quests"
step
label "fable"
#include "H_Beasts_of_Fable"
step
learnpet Red Panda##1176 |use Red Panda##94025
step
Congratulations, you have obtained the _Red Panda_ pet!
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Snowy Panda",{
patch='52000',
source='Quest',
description="This guide will walk you through obtaining the Humanoid pet: Snowy Panda",
pet=1197,
},[[
step
Click here to be routed to  the _Battle Pet Questline_. |confirm
Click here if you've completed the Battle Pet Questline and want to start the _Beasts of Fable_. |confirm |next "beasts"
Click here if you've completed both the Battle Pet Questline as well as the Beasts of Fable quests. |confirm |next "reset"
|tip In order to attain this pet, you will need to completed the Battle Pet Quest line as well as the Beasts of Fable quest.
step
#include "H_Battlepet_quests"
step
label "beasts"
#include "H_Beasts_of_Fable"
step
label "reset"
#include "H_Beasts_of_Fable_D"
step
Click the Fabled Pandaren Pet Supplies. |use Fabled Pandaren Pet Supplies##94207
collect Snowy Panda##94209 |next |only if default
If you didn't get the pet, click here to go back to the start of the dailies. |confirm |next "reset"
step
learnpet Snowy Panda##1197 |use Snowy Panda##94209
step
Congratulations, you have attainted the _Snowy Panda_ pet!
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Sunfur Panda",{
patch='52000',
source='Quest',
description="This guide will walk you through obtaining the Humanoid pet: Sunfur Panda",
pet=1196,
},[[
step
Click here to be routed to  the _Battle Pet Questline_. |confirm
Click here if you've completed the Battle Pet Questline and want to start the _Beasts of Fable_. |confirm |next "beasts"
Click here if you've completed both the Battle Pet Questline as well as the Beasts of Fable quests. |confirm |next "reset"
|tip In order to attain this pet, you will need to completed the Battle Pet Quest line as well as the Beasts of Fable quest.
step
#include "H_Battlepet_quests"
step
label "beasts"
#include "H_Beasts_of_Fable"
step
label "reset"
#include "H_Beasts_of_Fable_D"
step
Click the Fabled Pandaren Pet Supplies. |use Fabled Pandaren Pet Supplies##94208
collect Sunfur Panda##94208 |next |only if default
If you didn't get the pet, click here to go back to the start of the dailies. |confirm |next "reset"
step
learnpet Sunfur Panda pet##69891 |use Sunfur Panda##94208
step
Congratulations, you have attainted the _Sunfur Panda_ pet!
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Jade Owl",{
patch='50300',
source='Profession',
description="This guide will walk you through obtaining the Magic pet: Jade Owl",
pet=845,
},[[
step
Click here to gather and create the pet yourself |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
|tip This pet requires you to either have Pandaria Jewelcrafting trained, or purchase it from the Auction House.
step
label "create"
|tip You must complete Dailies for the Golden Lotus to get the recipe for this pet.
confirm
step
map Vale of Eternal Blossoms
path	54.60,23.70	52.80,23.10	47.00,18.70
path	42.60,15.00	41.80,17.80	36.90,18.00
path	35.50,21.30	35.00,28.70	35.60,34.50
path	42.20,29.10	45.40,29.60	47.90,26.50
path	50.80,31.50	53.60,28.60
Follow the path, mining any node you see.
Use your _Prospecting_ skill on any 5 ore you gather. |cast Prospecting##31252
collect 3 Wild Jade##76139
step
create 1 Jade Owl##82774
|next "done"
step
label "buy"
talk Auctioneer Drezmit##44866
buy 1 Jade Owl##82774 |goto Orgrimmar 54.10,73.40
step
label "done"
learnpet Jade Owl##845 |use Jade Owl##82774
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Mechanical Pets\\Clock'em",{
patch='51000',
source='Vendor',
description="This guide will walk you through obtaining the Mechanical pet: Clock'em",
pet=1142,
},[[
step
This pet will require you to reach Rank 4 in the Brawler's Guild
confirm
step
talk Madam Goya##62943
Bid on one of the Blood-Soaked Invitations and win in order to join the brawler's guild.
collect Blood Soaked Invitation##93194 |n
Use the _Blood-Soaked Invitation_ in your bags. |use Blood Soaked Invitation##93194
achieve 7948 |goto The Veiled Stair 63.80,75.80
step
WARNING:
There is an enrage timer on all Brawler's Guild fights. You have 2 minutes to kill the current opponent before it activates. If it does, a wall of unavoidable meteors sweeps across the arena, killing you. Remember this as you go through this guide!
confirm
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena 55.90,20.10
Tell them you're ready to fight. |goto Brawl'gar Arena 57.10,48.70 |noway |c
step
Fight 1: _Bruce_
|tip Bruce is a very easy fight, meant to get you started in the Brawler's Guild. He has 1 ability:
|tip Chomp, chomp, chomp is an ability that he uses in front of him. When he begins casting, run to the side or behind him to avoid getting hit by this attack.
|tip The best strategy for this fight is to dps him as fast as you can, making sure to avoid being directly in front of him whenever he begins to cast his ability.
Defeat Bruce in the Brawler's Guild |complete QC:GetReputation(1374).friendRep>=250
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena 55.90,20.10
Tell them you're ready to fight. |goto Brawl'gar Arena 57.10,48.70 |noway |c
step
Fight 2: _Vian the Volatile_
|tip Vian is more difficult, but still relatively easy. He has 4 abilities:
|tip Fire Line is very similar to Bruce's Chomp Chomp Chomp.
|tip Fire Orbs will bounce around the arena, doing damage to you if they touch you, and causing an enrage effect on Vian if they touch him.
|tip Lava Burst is a normal spell, you should not worry about this one.
|tip The best strategy for this fight is to stay on him while avoiding both the orbs and the Fire Line spell, interrupting them if possible.
Defeat Vian the Volatile in the Brawler's Guild |complete QC:GetReputation(1374).friendRep>=500
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena 55.90,20.10
Tell them you're ready to fight. |goto Brawl'gar Arena 57.10,48.70 |noway |c
step
Fight 3: _Goredome_
|tip Goredome is very similar to Bruce. He has 1 ability:
|tip Lumbering Charge is a relatively quick cast, but it's easily avoidable. He will lay a red circle on the ground as he begins casting it. Make sure to get out of the circle before he charges.
|tip If you are in the circle, you will instantly be killed.
Defeat Goredome in the Brawler's Guild |complete QC:GetReputation(1374).friendRep>=750
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena 55.90,20.10
Tell them you're ready to fight. |goto Brawl'gar Arena 57.10,48.70 |noway |c
step
Fight 4: _Dungeon Master Vishas_
|tip Dungeon Master Vishas is the boss of this Rank. He has 2 abilities:
|tip Naughty Secrets is a 2.50-second cast debuff that inflicts damage and increases vulnerability to future shadow damage for 1 minute. This isn't a big concern, but this spell can be interrupted.
|tip Heated Pokers is a 2.50-second cast that causes Vishas' attacks to do massive damage. This spell cannot be interrupted except using a stun. If he does cast this, make sure to run away until the buff wears off.
Defeat Dungeon Master Vishas in the Brawler's Guild |complete QC:GetReputation(1374).friendRep>=1000
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena 55.90,20.10
Tell them you're ready to fight. |goto Brawl'gar Arena 57.10,48.70 |noway |c
step
Fight 5: _Dippy_
|tip Dippy is the first fight in rank 2 and has the following abilities:
|tip Slippy is a constant debuff that causes him to fall down with every direct hit. This interrupts the current cast of Peck. This will not happen if Dippy is next to a wall.
|tip Peck is a very quick casted spell that will instantly kill you. Unless you are strictly a melee class, the best option in this fight is to kite him and kill him from range.
|tip The best strategy for this fight is to keep pressue on Dippy, and never give him a chance to cast his Peck. Any direct strike will do, so don't rely on DoTs to knock him over.
Defeat Dippy in the Brawler's Guild |complete QC:GetReputation(1374).friendRep>=1250
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena 55.90,20.10
Tell them you're ready to fight. |goto Brawl'gar Arena 57.10,48.70 |noway |c
step
Fight 6: _Kirrawk_
|tip Kirrawk is the second fight in rank 2 and has the following abilities:
|tip Lightning Bolt is his basic cast spell. It does quite a bit of damage, but isn't a primary concern.
|tip Storm Cloud is an ability that summons a cloud to inflict Nature damage when Kirrawk is attacked. Interrupt this whenever possible.
|tip Tornado is an ability that summons a twister that will toss you up somewhere in the arena, and will make a straight line towards you. The only way to avoid this is to have the tornado touch Kirrawk before it touches you.
|tip Lightning Flurry is an ability that he will only cast if you are tossed up by his Tornado. This attack does considerable damage.
|tip The best strategy for this fight is to pay attention to the tornado, and make sure it hits him instead of you. Also, pay attention to his casts and interrupt Storm Cloud any way you can.
Defeat Kirrawk in the Brawler's Guild |complete QC:GetReputation(1374).friendRep>=1500
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena 55.90,20.10
Tell them you're ready to fight. |goto Brawl'gar Arena 57.10,48.70 |noway |c
step
Fight 7: _Fran_ and _Riddoh_
|tip Fran and Riddoh is the first fight where you must kill 2 enemies:
|tip Riddoh should be your primary target and has these abilities:
|tip Throw Net is his basic ability. It is a quick cast, and immobilizes you for 5 seconds.
|tip Frenzied Riddoh is an ability that will only be used if you kill Fran first. This causes Riddoh's attacks to deal 250% damage
|tip Fran should be your secondary Target and has the following abilities:
|tip Throw Dynamite is his basic ability. He throws a stick of dynamite in the air that can be avoided.
|tip Goblin Device is an ability that summons a a ring of bombs around you. You will have to run out of the circle before they explode.
|tip The best strategy for this fight is to kill Riddoh first to prevent him from becoming frenzied, while making sure to avoid the AoE attacks that Fran throws at you.
Defeat Fran and Riddoh in the Brawler's Guild |complete QC:GetReputation(1374).friendRep>=1750
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena 55.90,20.10
Tell them you're ready to fight. |goto Brawl'gar Arena 57.10,48.70 |noway |c
step
Fight 8: _King Kulaka_
|tip King Kulaka is the boss of this Rank. He has 1 ability:
|tip Dash is an instant cast spell that increases his movement speed by 60% for 5 seconds.
|tip The best strategy for this is to dps him before he can kill you. His melee attacks hit hard, so be sure to have some potions handy and do your best to kite him if possible.
Defeat King Kulaka in the Brawler's Guild |complete QC:GetReputation(1374).friendRep>=2000
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena 55.90,20.10
Tell them you're ready to fight. |goto Brawl'gar Arena 57.10,48.70 |noway |c
step
Fight 9: _Blat_
|tip Blat is where the difficulty starts to raise a bit. He has 1 ability:
|tip Split is a 0.50 second cast spell that causes him to create a copy of himself. He will use this several times throughout the fight.
|tip The best strategy for this fight is to kite him away, and focus on the main version of him. If you can't kite, then just try and do as much dps as possible. All of the other versions have as much health as he does, so you will not be able to kill them fast enough to avoid the enrage timer.
Defeat Blat in the Brawler's Guild |complete QC:GetReputation(1374).friendRep>=2250
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena 55.90,20.10
Tell them you're ready to fight. |goto Brawl'gar Arena 57.10,48.70 |noway |c
step
Fight 10: _Sanoriak_
|tip Sanoriak is basically a more powerful version of Vian the Volatile. He has 4 abilities:
|tip Fireball and Pyroblast are both his most common moves. They do quite a bit of damage, so interrupt them every now and then if possible.
|tip Flame Buffet is a strong move that does a lot of damage and increases any fire damage taken for 15 seconds. Interrupt this as much as possible.
|tip Firewall is his most powerful move. It will not show a casting bar, but he will show the animation. This spawns a rain of fireballs down on your location. Be sure to move out of this, because it does a ton of damage.
|tip The best strategy for this fight is to keep pressure on him, avoid his AoE meteor attack, and interrupt/stun whenever possible.
Defeat Sanoriak in the Brawler's Guild |complete QC:GetReputation(1374).friendRep>=2500
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena 55.90,20.10
Tell them you're ready to fight. |goto Brawl'gar Arena 57.10,48.70 |noway |c
step
Fight 11: _Ixx_
|tip Ixx is very similar to Mogu Warriors in Pandaria. He has 1 ability:
|tip Conal Cleave is a average cast spell that shows a large cone in front of him when he begins casting. If this hits you, you will die.
|tip The best strategy for this fight is to keep pressure on him, and run through him when he begins casting his cleave.
Defeat Ixx in the Brawler's Guild |complete QC:GetReputation(1374).friendRep>=2750
step
talk Brawl'gar Arena Grunt##67267 |goto Brawl'gar Arena 55.90,20.10
Tell them you're ready to fight. |goto Brawl'gar Arena 57.10,48.70 |noway |c
step
Fight 12: _Mazhareen_
|tip Mazhareen is a pretty straightforward fight. She does not have any abiilities, but Mazhareen does more damage as she loses health.
|tip The best strategy for this fight is to DPS her down as quickly as possible, saving any cooldowns for the end of the fight.
Defeat Mazhareen in the Brawler's Guild |complete QC:GetReputation(1374).friendRep>=3000
learnpet Clock'em##1142
step
talk Paul North##68364
buy 1 Clock'em##93025 |goto Brawl'gar Arena 52.00,32.60
step
learnpet Clock'em##1142 |use Clock'em##93025
]])
