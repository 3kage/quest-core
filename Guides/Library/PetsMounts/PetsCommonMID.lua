-- Bundled QuestCore guide
if not QuestCore then return end

QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Beast Pets\\Vendor Pets\\Cappy",{
patch='120500',
source='Achievemnent',
author="QuestCore",
description="This guide will teach you how to acquire the Cappy battle pet.",
keywords={"Achievemnent","Beast","Vendor"},
pet=5039,
startlevel=90,
},[[
step
achieve 62518
|tip Click the appropriate Void Assault guide below to achieve this.
loadguide "Events Guides\\Midnight (80-90)\\Eversong Woods Void Assaults"
loadguide "Events Guides\\Midnight (80-90)\\Zul'Aman Void Assaults"
collect Cappy##270989 |or
'|complete haspet(5039) |or
step
use Cappy##270989
learnpet Cappy##5039
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Beast Pets\\Ritual Site Pets\\Chubs",{
patch='120500',
source='Ritual Site',
author="QuestCore",
description="This guide will teach you how to acquire the Chubs battle pet.",
keywords={"Ritual Site","Beast"},
pet=5019,
startlevel=90,
},[[
step
collect 1 Practically Pork##242639
-OR-
collect 1 Sin'dorei Swarmer##238365
|tip {w}Practically Pork{} is a crafting reagent that can be fished, looted, or skinned from beasts.
|tip {w}Sin'dorei Swarmer{} can be fished from almost any body of fishable water.
|tip You can also purchase either of these in the auction house.
|tip You only need 1 of these to collect Chubs.
|tip Protip: Bring 5 more of either of these reagents to also earn the {p}Witherbark Warbear Mother{} mount. |only if not hasmount(1261362)
confirm
step
click Curious Obelisk##260104 |goto Zul Aman M/0 29.58,77.94
|tip Queue at difficulty {b}Tier 2{} or higher.
|tip You can queue solo, or with a party of up to 5.
Enter {y}Ritual Site{}: {w}Broken Throne{} |complete zone("Broken Throne") |goto Broken Throne/0 62.32,58.93 |or
'|complete haspet(5019) |or
step
clicknpc Lost Bear Cub##263355
|tip Go halfway up the double wide staircase, 3rd staircase to the right from the entrance.
|tip Jump down from the left side of that staircase to the raised bed with 2 trees.
|tip Lost Bear Cub is stealthed behind the taller tree, next to the staircase.
collect Chubs##269836 |or
'|complete haspet(5019) |or
step
use Chubs##269836
learnpet Chubs##5019
step
loadguide "Pets & Mounts\\Mounts\\Ground Mounts\\Dropped Mounts\\Witherbark Warbear Mother"
|only if not hasmount(1261362)
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Beast Pets\\Drop Pets\\Curious Lynx Kitten",{
patch='120500',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Curious Lynx Kitten battle pet.",
keywords={"Drop","Beast"},
pet=5040,
startlevel=90,
},[[
step
Complete Eversong Woods Void Assaults
|tip This pet drops from the {b}Wriggling Field Pouch{} that can be awarded in place of the regular {b}Field Pouch{} at the end of a void assault.
|tip This can also drop in the {p}Field Pouch{} from the Void Incursion outside Silvermoon City.
|tip Use the Eversong Woods Void Assaults Event guides to accomplish this.
|tip {y}You can also purchase this battle pet from the auction house.{}
loadguide "Events Guides\\Midnight (80-90)\\Eversong Woods Void Assaults"
collect Wriggling Field Pouch##270932 |or
'|complete haspet(5040) |or
step
use Wriggling Field Pouch##270932
collect Curious Lynx Kitten##270990 |or
'|complete haspet(5040) |or
step
use Curious Lynx Kitten##270990
learnpet Curious Lynx Kitten##5040
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Beast Pets\\Achievement Pets\\Do, Child of Filo",{
patch='110207',
source='Achievement',
author="QuestCore",
description="This guide will teach you how to acquire the Do, Child of Filo battle pet.",
keywords={"Achievement","Beast"},
pet=4910,
startlevel=90,
},[[
step
Collect all the Pets
|tip Use the Midnight Safari Achievement Guide to accomplish this.
loadguide "Achievement Guides\\Pet Battles\\Collect\\Midnight Safari"
achieve 61091
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Beast Pets\\Gortham",{
patch='120000',
source='Achievement',
author="QuestCore",
description="This guide will teach you how to acquire the Gortham battle pet.",
keywords={"Achievement","Beast"},
pet=4967,
startlevel=90,
},[[
step
ding 90 |or
'|complete haspet(4967) |or
step
Enter the {g}Nexus-Point Xenas{} dungeon on Normal difficulty or higher |goto Voidstorm/0 64.92,61.78
|tip Five players are required.
|tip Players must be level 90 to earn this pet.
confirm
step
One Player Stand on each of the 5 Corespark Conduits
|tip These are along the sides of the corridor to Kasreth.
|tip Players will take damage.
|tip Watch for the message: "A strange device unlodges from the center pipe!"
|tip Go and click the orb when it appears in the corridor.
clicknpc Gortham##254398
collect Gortham##262774
step
use Gortham##262774
learnpet Gortham##4951
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Beast Pets\\Drop Pets\\Wriggling Capybara",{
patch='120500',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Wriggling Capybara battle pet.",
keywords={"Drop","Beast"},
pet=5038,
startlevel=90,
},[[
step
Complete Zul'Aman Void Assaults
|tip This pet drops from the {b}Wriggling Field Pouch{} that can drop in place of the regular {b}Field Pouch{}.
|tip Use the Zul'Aman Void Assaults Event guides to accomplish this.
|tip {y}You can also purchase this battle pet from the auction house.{}
loadguide "Events Guides\\Midnight (80-90)\\Zul'Aman Void Assaults"
collect Wriggling Field Pouch##270932 |or
'|complete haspet(5038) |or
step
use Wriggling Field Pouch##270932
collect Wriggling Capybara##270988 |or
'|complete haspet(5038) |or
step
use Wriggling Capybara##270988
learnpet Wriggling Capybara##5038
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Dragonkin Pets\\Dragonhawk Munchkin",{
patch='120000',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the Dragonhawk Munchkin battle pet.",
keywords={"Zone","Flying"},
pet=4928,
startlevel=1,
},[[
step
earn 2500 Voidlight Marl##3316 |or
|tip You get this currency by killing rare enemies, opening treasures and caches, completing quests, world quests, delves, dungeons, and prey hunts, in Zul'Aman.
'|complete haspet(4928) |or
step
talk Caeris Fairdawn##240838
Select _"I want to browse your goods."_ |gossip 138627
buy Dragonhawk Munchkin##259224 |goto Eversong Woods M/0 43.46,47.42 |or
'|complete haspet(4928) |or
step
use Dragonhawk Munchkin##259224
learnpet Dragonhawk Munchkin##4928
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Dragonkin Pets\\Ritual Site Pets\\Rescued Dragonhawk Chick",{
patch='120500',
author="QuestCore",
description="This guide will teach you how to acquire the Rescued Dragonhawk Chick battle pet.",
keywords={"Vendor","Dragonkin"},
pet=5036,
startlevel=90,
},[[
step
Reach Ritual Sites Rank 6 |complete factionrenown(2792) >= 6 |or
|tip Use the appropriate Void Strikes Event Guide to achieve this.
loadguide "Events Guides\\Midnight (80-90)\\Eversong Woods Void Assaults" |only if areapoi(2395,8758)
loadguide "Events Guides\\Midnight (80-90)\\Zul'Aman Void Assaults" |only if areapoi(2437,8757)
'|complete haspet(5036) |or
step
earn 1800 Voidlight Marl##3316 |or
|tip You get this currency from completing Ritual Sites, Void Strike Events, world quests, alt leveling, and treasures throughout.
'|complete haspet(5036) |or
step
talk Sergeant Vornin##255503
Select _"Do you have any mounts or pets available now?"_ |gossip 138966
buy Void-Touched Dragonhawk Egg##270330 |goto Silvermoon City M/0 48.68,50.37 |or
'|complete haspet(5036) |or
step
use Void-Touched Dragonhawk Egg##270330
learnpet Rescued Dragonhawk Chick##5036
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Flying Pets\\Dropped Pets\\Void-Scarred Eaglet",{
patch='120500',
source='Dropped',
author="QuestCore",
description="This guide will help you acquire the Void-Scarred Eaglet battle pet.",
keywords={"Ritual","Flying","Broken","Throne"},
pet=5017,
startlevel=90,
},[[
step
click Curious Obelisk##260104 |goto Zul Aman M/0 29.58,77.94
|tip Queue at difficulty {b}Tier 2{} or higher.
|tip You can queue solo, or with a party of up to 5.
Enter the {y}Ritual Site{}: {w}Broken Throne{} |complete zone("Broken Throne") |goto Broken Throne/0 62.32,58.93 |or
'|complete haspet(5017) |or
step
loadguide "Pets & Mounts\\Mounts\\Flying Mounts\\Dropped Mounts\\Void-Corrupted Hex Eagle"
|tip You need this mount in order to trigger the means to acquire the pet.
|tip This mount is acquired within the same Ritual Site instance as the pet.
learnmount Void-Corrupted Hex Eagle##1286606 |or
'|complete haspet(5017) |or
'|only if not hasmount(1286606)
step
cast Void-Corrupted Hex Eagle##1286606
|tip Once at this location, mount up on your Void-Corrupted Hex Eagle.
|tip You can't see the tornado unless you are mounted.
While mounted, walk into the Small Tornado |goto Broken Throne/0 49.45,77.84 < 7 |c |or
|tip Inside the Ritual Site: Broken Throne.
|tip This is on the top level of the wall, at the corner.
'|complete haspet(5017) |or
step
Fly to the Top of the Tower
click Void-Tainted Nest##649412
collect Void-Scarred Eaglet##269829 |goto Broken Throne/0 45.80,64.82 |or
'|complete haspet(5017) |or
step
use Void-Scarred Eaglet##269829
learnpet Void-Scarred Eaglet##5017
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Magic Pets\\Vendor Pets\\Lil' Preyseeker",{
patch='110200',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the Lil' Preyseeker battle pet.",
keywords={"Vendor","Magic","Battle","Pet"},
pet=4930,
startlevel=80,
},[[
step
Reach Preyseeker's Journey Rank 9 |complete factionrenown(2764) >= 9 |or
|tip Use the Prey: Season 1 Leveling Guide to achieve this.
loadguide "Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Prey: Season 1"
'|complete haspet(4930) |or
step
earn 1200 Remnant of Anguish##3392 |or
|tip You get this currency from completing the weekly quest, A Nightmarish Task, triggering Prey traps instead of disarming, ambushes, and completing hunts.
'|complete haspet(4930) |or
step
Enter the building |goto Silvermoon City M/0 55.06,63.57 < 10 |walk
talk Construct V'anore##252956
|tip Up the ramp, inside the building.
buy Lil' Preyseeker##259991 |goto Silvermoon City M/0 55.69,65.71 |or
'|complete haspet(4930) |or
step
use Lil' Preyseeker##259991
learnpet Lil' Preyseeker##4930
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Magic Pets\\Vendor Pets\\Void-Infused Mindbreaker Fry",{
source='Vendor',
author="QuestCore",
description="This guide will help you to acquire the Void-Infused Mindbreaker Fry battle pet.",
keywords={"Vendor","Magic"},
pet=5037,
startlevel=83,
},[[
step
Reach Ritual Sites Rank 6 |complete factionrenown(2792) >= 6 |or
|tip Use the appropriate Void Strikes Event Guide to achieve this.
loadguide "Events Guides\\Midnight (80-90)\\Eversong Woods Void Assaults" |only if areapoi(2395,8758)
loadguide "Events Guides\\Midnight (80-90)\\Zul'Aman Void Assaults" |only if areapoi(2437,8757)
'|complete haspet(5037) |or
step
earn 1800 Voidlight Marl##3316 |or
|tip You get this currency from completing Ritual Sites, Void Strike Events, world quests, alt leveling, and treasures throughout.
'|complete haspet(5037) |or
step
talk Sergeant Vornin##255503
Select _"Do you have any mounts or pets available now?"_ |gossip 138966
buy Void-Infused Mindbreaker Fry##270331 |goto Silvermoon City M/0 48.68,50.37 |or
'|complete haspet(5037) |or
step
use Void-Infused Mindbreaker Fry##270331
learnpet Void-Infused Mindbreaker Fry##5037
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Akil Fledgling",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Akil Fledgling companion pet.",
keywords={"Zone","Flying"},
pet=4874,
startlevel=1,
},[[
step
clicknpc Akil Fledgling##249812
collect Akil Fledgling##250135 |goto Zul Aman M/0 56.34,70.68
Also found at:
[Zul'aman M/0 39.32,56.71]
[Zul Aman M/0 55.60,74.00]
[Zul Aman M/0 52.95,80.76]
[Zul Aman M/0 49.60,81.63]
[Zul Aman M/0 47.59,87.20]
step
use Akil Fledgling##250135
learnpet Akil Fledgling##4874
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Amber Treeflitter",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Amber Treeflitter companion pet.",
keywords={"Zone","Critter"},
pet=3277,
startlevel=1,
},[[
step
clicknpc Amber Treeflitter##241500
collect Amber Treeflitter##193068 |goto Eversong Woods M/0 40.78,38.61
Can also be found at:
[Eversong Woods M/0 42.80,38.60]
[Eversong Woods M/0 50.01,59.58]
step
use Amber Treeflitter##193068
learnpet Amber Treeflitter##3277
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Quest Pets\\Assistant Botanist Leafy",{
patch='120000',
source='Quest',
author="QuestCore",
description="This guide will teach you how to acquire the Assistant Botanist Leafy companion pet.",
keywords={"Quest","Elemental"},
pet=4947,
startlevel=1,
},[[
step
Complete the quest, {y}Re-Hydra-ted{}
|tip This pet is a reward from this optional Harandar Storyline quest.
|tip Use the {b}Harandar Full Zones (Story + Side Quests){} Leveling guide to acquire this peaceful pet.
loadguide "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Harandar (Full Zone)"
collect Assistant Botanist Leafy##260705 |or
'|complete haspet(4947) |or
step
use Assistant Botanist Leafy##260705
learnpet Assistant Botanist Leafy##4947
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Azure Sporebat",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Azure Sporebat companion pet.",
keywords={"Zone","Flying"},
pet=4882,
startlevel=1,
},[[
step
clicknpc Azure Sporebat##249822
collect Azure Sporebat##250142 |goto Harandar/0 57.22,51.08 |or
'|complete haspet(4882) |or
Also found at:
[Harandar/0 53.42,67.08]
[Harandar/0 64.79,57.01]
[Harandar/0 64.04,45.83]
[Harandar/0 69.62,31.58]
[Harandar/0 70.02,63.95]
step
use Azure Sporebat##250142
learnpet Azure Sporebat##4882
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Blistercreepling",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Blistercreepling companion pet.",
keywords={"Zone","Beast"},
pet=4879,
startlevel=1,
},[[
step
clicknpc Blistercreepling##249819
collect Blistercreepling##250148 |goto Voidstorm/0 24.81,50.01
Also found at:
[Voidstorm/0 31.08,44.01]
[Voidstorm/0 51.03,85.94]
[Voidstorm/0 45.98,88.62]
[Voidstorm/0 40.62,86.80]
[Voidstorm/0 37.99,80.94]
step
use Blistercreepling##250148
learnpet Blistercreepling##4879
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Profession Pets\\Bubbly Snapling",{
patch='120000',
source='Profession',
author="QuestCore",
description="This guide will teach you how to acquire the Bubbly Snapling companion pet.",
keywords={"Profession","Fishing"},
pet=4951,
startlevel=80,
},[[
step
cast Fishing##1239033
|tip Fish in Midnight area bodies of water until the Patient Treasure chest or a Grand Line Treasure chest appears.
click Patient Treasure##540505
click Grand Line Treasure##617089
|tip These treasures appear beside you after a successful fishing cast.
|tip The pet item has a chance to drop in one of these chests.
collect Bubbly Snapling##260942
step
use Bubbly Snapling##260942
learnpet Bubbly Snapling##4951
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Treasure Pets\\Dali",{
patch='120000',
source='Treasure',
author="QuestCore",
description="This guide will teach you how to acquire the Dali companion pet.",
keywords={"Aquatic","Treasure","Eversong"},
pet=4974,
startlevel=1,
},[[
step
click Burbling Paint Pot##555351
|tip On the ground, next to the painting.
collect Burbling Blob of Paint##246314 |goto Eversong Woods M/0 48.74,75.44 |or
'|complete haspet(4974) |or
step
use Burbling Blob of Paint##246314
|tip Use it while standing in water.
learnpet Dali##4974
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Devouring Runt",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Devouring Runt companion pet.",
keywords={"Zone","Beast"},
pet=4790,
startlevel=1,
},[[
step
clicknpc Devouring Runt##240014
collect Devouring Runt##238793 |goto Voidstorm/0 50.80,64.63
Also found at:
[Voidstorm/0 61.54,64.26]
[Voidstorm/0 58.81,66.95]
[Voidstorm/0 57.22,71.06]
[Voidstorm/0 50.99,77.38]
[Voidstorm/0 32.97,66.07]
step
use Devouring Runt##238793
learnpet Devouring Runt##4790
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Dragonhawk Mosswing",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Dragonhawk Mosswing companion pet.",
keywords={"Zone","Flying"},
pet=4883,
startlevel=1,
},[[
step
clicknpc Dragonhawk Mosswing##249824
collect Dragonhawk Mosswing##250143 |goto Zul Aman M/0 48.59,23.71
You can also find one at:
[Zul Aman M/0 50.46,24.71]
[Zul Aman M/0 46.98,75.91]
[Zul Aman M/0 52.92,80.64]
step
use Dragonhawk Mosswing##250143
learnpet Dragonhawk Mosswing##4883
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Ebon Snapling",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Ebon Snapling companion pet.",
keywords={"Zone","Beast"},
pet=4878,
startlevel=1,
},[[
step
clicknpc Ebon Snapling##249818
collect Ebon Snapling##250139 |goto Zul Aman M/0 41.33,48.35
Also found at:
[Zul Aman M/0 55.78,85.61]
[Zul Aman M/0 42.08,59.51]
[Zul Aman M/0 74.58,69.01]
[Atal Aman M/1 55.82,84.74]
[Atal Aman M/1 75.15,68.83]
step
use Ebon Snapling##250139
learnpet Ebon Snapling##4878
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Emberwing Hatchling",{
patch='120000',
source='Quest',
author="QuestCore",
description="This guide will teach you how to acquire the Emberwing Hatchling companion pet.",
keywords={"Quest","Flying"},
pet=4977,
startlevel=80,
},[[
step
Complete the quest {b}A Quiet Farewell{} in Zu'Aman
|tip This peaceful pet is a reward from the quest.
|tip Use the Midnight (Full Zone + Side Quests) Leveling Guide to achieve this.
loadguide "Midnight (80-90)\\Full Zones (Story + Side Quests)\\Zul'Aman (Full Zone)"
collect the Emberwing Hatchling##264654
step
use Emberwing Hatchling##264654
learnpet Emberwing Hatchling##4977
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Emerald Hatchling",{
patch='120000',
source='Quest',
author="QuestCore",
description="This guide will teach you how to acquire the Emerald Hatchling companion pet.",
keywords={"Quest","Flying"},
pet=4909,
startlevel=90,
},[[
step
Complete _The Battle of the Bridge_ Midnight quest scenario
|tip This pet, and associated mount, both drop upon completion of this quest.
|tip It is a main storyline quest you are offered upon reaching level 90.
|tip You can use {b}The War of Light and Shadow Campaign{} Leveling Guide to complete this.
loadguide "Leveling Guides\\Midnight (80-90)\\The War of Light and Shadow Campaign"
collect Emerald Hatchling##258122 |or
'|complete haspet(4909) |or
step
use Emerald Hatchling##258122
learnpet Emerald Hatchling##4909
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Quest Pets\\Fidoficus",{
patch='120000',
source='Quest',
author="QuestCore",
description="This guide will teach you how to acquire the Fidoficus companion pet.",
keywords={"Quest","Beast"},
pet=4950,
startlevel=90,
},[[
step
talk Ravenia##246727
accept Harvest of Darkness##91363 |goto Voidstorm/0 52.06,67.43
stickystart "COLLECT_6_GLARING_GLOWCAP"
step
Kill enemies around here
collect 10 Void-Infused Morsel##246372 |q 91363/1 |goto Voidstorm/0 54.09,71.04
step
label "COLLECT_6_GLARING_GLOWCAP"
click Radiant Glowcap##556121
|tip These are tall plants growing around here.
collect 6 Glaring Glowcap##246661 |q 91363/2 |goto Voidstorm/0 54.09,71.04
step
talk Ravenia##246727
turnin Harvest of Darkness##91363 |goto Voidstorm/0 52.06,67.43
accept Belly of the Beast##91380 |goto Voidstorm/0 52.06,67.43
step
click Uncooked Void Meat##556497
|tip On the table.
Uncooked Void Meat added to cookpot |q 91380/1 |goto Voidstorm/0 51.21,67.67
step
click Unprepared Glowcaps##556499
|tip On the table.
Unprepared Glowcaps added to cookpot |q 91380/2 |goto Voidstorm/0 51.15,67.75
step
talk Fidoficus##246791
Select _"<Feed the delicious snack to Fidoficus.>"_ |gossip 134827
Snack fed to Fidoficus |q 91380/3 |goto Voidstorm/0 51.17,67.70
step
Stand in the circle and click the button that appears
Dominance exercised over prey |q 91380/4 |goto Voidstorm/0 51.67,68.94
step
Stand in the circle and click the button that appears
Dominance exercised over elves |q 91380/5 |goto Voidstorm/0 52.43,69.45
step
Stand in the circle and click the button that appears
Dominance exercised over bones |q 91380/6 |goto Voidstorm/0 53.47,70.44
step
talk Ravenia##246727
turnin Belly of the Beast##91380 |goto Voidstorm/0 52.06,67.43
accept Mighty and Superior##91382 |goto Voidstorm/0 52.06,67.43
step
Enter the cave |goto Voidstorm/0 48.02,75.64 < 7 |walk
|tip Inside the cave.
|tip Fidoficus will not fight.
Watch Fidoficus slay Den-Gorger Zitoc |q 91382/1 |goto Voidstorm/0 48.04,75.39
step
kill Den-Gorger Zitoc##247559
Den-Gorger Zitoc slain |q 91382/2 |goto Voidstorm/0 47.94,74.93
step
click Ravenia##246727
|tip Pick whichever dialogue option you like.
Select _"He was an avatar of terror and destruction."_ |gossip 134863
Conquest shared with Ravenia |q 91382/3 |goto Voidstorm/0 52.06,67.43
turnin Mighty and Superior##91382 |goto Voidstorm/0 52.06,67.43 |n
collect Fidoficus##260922 |or
'|complete haspet(4950) |or
step
use Fidoficus##260922
learnpet Fidoficus##4950
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Vendor Pets\\Flicker",{
patch='120000',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the Flicker companion pet.",
keywords={"Vendor","Beast"},
pet=4982,
startlevel=1,
},[[
step
earn 200 Brimming Arcana##3379 |or
|tip Obtain these by completing quests, killing mobs, and opening treasures in Eversong Woods.
'|complete haspet(4982) |or
step
talk Apprentice Diell##242723
buy Flicker##264909 |goto Eversong Woods M/0 43.52,47.52 |or
'|complete haspet(4982) |or
step
use Flicker##264909
learnpet Flicker##4982
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Gloom Toad",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Gloom Toad companion pet.",
keywords={"Zone","Aquatic"},
pet=4885,
startlevel=1,
},[[
step
clicknpc Gloom Toad##249826
collect Gloom Toad##250146 |goto Zul Aman M/0 28.94,41.64
Also found at:
[Zul Aman M/0 48.90,65.05]
[Zul Aman M/0 30.58,45.01]
[Zul Aman M/0 37.58,64.61]
[Zul Aman M/0 42.02,62.62]
[Zul Aman M/0 45.21,73.03]
[Zul Aman M/0 34.62,83.04]
step
use Gloom Toad##250146
learnpet Gloom Toad##4885
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Delve Pets\\Hexed Bunny",{
patch='120000',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Hexed Bunny companion pet.",
keywords={"Drop","Beast"},
pet=4959,
startlevel=1,
},[[
step
Run Delves and Open the End of Run Chests
|tip The pet item can drop in the chests.
collect Hexed Bunny##262395
step
use Hexed Bunny##262395
learnpet Hexed Bunny##4959
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Quest Pets\\Hawkstrider Hatchling",{
patch='120000',
source='Quest',
author="QuestCore",
description="This guide will teach you how to acquire the Hawkstrider Hatchling companion pet.",
keywords={"Quest","Critter"},
pet=4816,
startlevel=1,
},[[
step
talk Vaelith Sunplume##241553
accept One Adventurous Hatchling##89383 |goto Eversong Woods M/0 56.84,35.56
accept A Roost-ed Development##89386 |goto Eversong Woods M/0 56.84,35.56
accept A Hungry Flock##89384 |goto Eversong Woods M/0 56.84,35.56
step
click Lost Hawkstrider Fledgling##243837
|tip On the crescent platform, on a table next to a cupcake.
Hawkstrider Fledgling sent back |q 89383/1 |goto Eversong Woods M/0 53.66,35.23
stickystart "COLLECT_6_JUICY_FROG_LEGS"
step
click Golden Sunleaf##547829
|tip They are plants growing around the lake.
collect 6 Golden Sunleaf##245531 |q 89386/1 |goto Eversong Woods M/0 53.30,35.91
step
label "COLLECT_6_JUICY_FROG_LEGS"
kill Gloombelly Toad##264270
|tip They are both in and out of the lake here.
collect 6 Juicy Frog Leg##244214 |q 89384/1 |goto Eversong Woods M/0 53.30,35.91
step
talk Vaelith Sunplume##241553
turnin One Adventurous Hatchling##89383 |goto Eversong Woods M/0 56.84,35.56
turnin A Roost-ed Development##89386 |goto Eversong Woods M/0 56.84,35.56
turnin A Hungry Flock##89384 |goto Eversong Woods M/0 56.84,35.56
accept First Step Into Parenthood##89385 |goto Eversong Woods M/0 56.84,35.56
step
talk Vaelith Sunplume##241553
turnin First Step Into Parenthood##89385 |goto Eversong Woods M/0 56.84,35.56 |n
collect Hawkstrider Egg##262510 |goto Eversong Woods M/0 56.84,35.56 |or
'|complete haspet(4816) |or
step
Wait 24 hours for the Hawkstrider Egg to hatch
collect Hawkstrider Hatchling##244339 |or
'|complete haspet(4816) |or
step
use Hawkstrider Hatchling##244339
learnpet Hawkstrider Hatchling##4816
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Vendor Pets\\Kreepah'zoyd",{
patch='120000',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the Kreepah'zoyd companion pet.",
keywords={"Vendor","Beast"},
pet=4955,
startlevel=1,
},[[
step
earn 10000 Undercoin##2803
|tip Earn these inside weekly delve troves, caches, and reward chests.
|tip These can also be pickpocketed, looted from profession tasks like skinning or fishing, and just looting npcs.
step
talk Naleidea Rivergleam##242398
|tip Inside the building.
buy Kreepah'zoyd##262393 |goto Silvermoon City M/0 52.76,77.90
step
use Kreepah'zoyd##262393
learnpet Kreepah'zoyd##4955
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Quest Pets\\Linda the Lucky",{
patch='120000',
source='Quest',
author="QuestCore",
description="This guide will teach you how to acquire the Linda the Lucky companion pet.",
keywords={"Quest","Aquatic"},
pet=4946,
startlevel=1,
},[[
step
Complete the Quest
|tip This pet is a reward from the quest, {b}O.K. Bloomer{} in Harandar.
|tip Use the Harandar Full Zone Leveling guide to accomplish this.
loadguide "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Harandar (Full Zone)"
collect Linda the Lucky##260585
step
use Linda the Lucky##260585
|tip In your bags.
learnpet Linda the Lucky##4946
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Delve Pets\\Lost Star",{
patch='120000',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Lost Star companion pet.",
keywords={"Drop","Magic"},
pet=4957,
startlevel=1,
},[[
step
Run Delves and Open the End of Run Chests
|tip The pet item can drop in the chests.
collect Lost Star##256282
step
use Lost Star##256282
learnpet Lost Star##4957
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Vendor Pets\\Naloki",{
patch='120000',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the Naloki companion pet.",
keywords={"Vendor","Critter"},
pet=4888,
startlevel=1,
},[[
step
Reach Renown {y}Rank 12{} with {p}Amani Tribe{} |complete factionrenown(2696) >= 12 |or
|tip Use the {b}Amani Tribe{} Reputation Guide to achieve this.
loadguide "Reputation Guides\\The War Within Reputations\\Amani Tribe"
'|complete haspet(4816) |or
step
earn 2500 Voidlight Marl##3316 |or
|tip You get this currency by killing rare enemies, opening treasures and caches, completing quests, world quests, delves, dungeons, and prey hunts, in Zul'Aman.
'|complete haspet(4888) |or
step
talk Magovu##240279
|tip Inside the building.
buy Naloki##250863 |goto Zul Aman M/0 45.95,65.92 |or
'|complete haspet(4888) |or
step
use Naloki##25086
learnpet Naloki##4888
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Mud Potadpole",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Mud Potadpole companion pet.",
keywords={"Zone","Aquatic"},
pet=4876,
startlevel=1,
},[[
step
click Mud Potadpole##249816
|tip This is a rare spawn.
|tip Try early in the morning.
map Harandar/0
path follow smart; loop on; ants curved; dist 30
path	71.31,31.98	69.77,32.19	69.37,29.48	69.71,32.46
collect Mud Potadpole##250137
step
use Mud Potadpole##250137
learnpet Mud Potadpole##4876
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Nether Familiar",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Nether Familiar companion pet.",
keywords={"Zone","Magic"},
pet=4889,
startlevel=1,
},[[
step
clicknpc Nether Familiar##250571
collect Nether Familiar##251002 |goto Isle of Quel Danas M/0 42.10,32.96
You can also find one in the following locations:
[Isle of Quel Danas M/0 35.60,38.60]
[Isle of Quel Danas M/0 52.26,31.91]
[Isle of Quel Danas M/0 49.86,28.62]
[Isle of Quel Danas M/0 43.04,22.19]
[Isle of Quel Danas M/0 44.27,13.20]
[Isle of Quel Danas M/0 35.08,15.23]
[Isle of Quel Danas M/0 28.60,33.55]
step
use Nether Familiar##251002
learnpet Nether Familiar##4889
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Treasure Pets\\Nether Siphoner",{
patch='120000',
source='Treasure',
author="QuestCore",
description="This guide Will teach you how to acquire the Nether Siphoner companion pet.",
keywords={"Treasure","Beast"},
pet=4881,
startlevel=1,
},[[
step
click Quivering Egg##613368
|tip Underneath the ribcage.
collect Nether Siphoner##266076 |goto Voidstorm/0 31.51,44.50
step
use Nether Siphoner##266076
learnpet Nether Siphoner##4881
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Delve Pets\\Nibblesworth",{
patch='120000',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Nibblesworth companion pet.",
keywords={"Drop","Beast"},
pet=4961,
startlevel=1,
},[[
step
Run Delves and Open the End of Run Chests
|tip The pet item can drop in the chests.
collect Nibblesworth##262392
step
use Nibblesworth##262392
learnpet Nibblesworth##4961
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Achievement Pets\\Niblet",{
patch='120000',
source='Achievement',
author="QuestCore",
description="This guide will teach you how to acquire the Niblet companion pet.",
keywords={"Achievement","Critter"},
pet=4803,
startlevel=90,
},[[
step
achieve 61567/1
|tip Complete this dungeon on Heroic difficulty.
step
achieve 61567/2
|tip Complete this dungeon on Heroic difficulty.
step
achieve 61567/3
|tip Complete this dungeon on Heroic difficulty.
step
achieve 61567/4
|tip Complete this dungeon on Heroic difficulty.
step
achieve 61567/5
|tip Complete this dungeon on Heroic difficulty.
step
achieve 61567/6
|tip Complete this dungeon on Heroic difficulty.
step
achieve 61567/7
|tip Complete this dungeon on Heroic difficulty.
step
achieve 61567/8
|tip Complete this dungeon on Heroic difficulty.
step
achieve 61567
collect Niblet##240840 |or
'|complete haspet(4803) |or
step
use Niblet##240840
learnpet Niblet##4803
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Delve Pets\\Ominous Domanus",{
patch='120000',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Ominous Domanus companion pet.",
keywords={"Drop","Elemental"},
pet=4958,
startlevel=1,
},[[
step
Open Nullaeus Cache after Completing the Torment's Rise Delve
|tip The pet item can drop in this chest.
collect Ominous Dominus##262391
step
use Ominous Dominus##262391
learnpet Ominous Dominus##4958
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Pangolil",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Pangolil companion pet.",
keywords={"Zone","Beast"},
pet=4884,
startlevel=1,
},[[
step
clicknpc Pangolil##249825
|tip Check on the bridge to the very end then up to the shrine itself.
|tip Follow the path.
|tip Try early in the morning.
map Zul Aman M/0
path follow smart; loop on; ants curved; dist 30
path	38.77,54.71	49.35,54.66	49.35,54.21	38.78,54.15
collect Pangolil##250145 |or
'|complete haspet(4884) |or
step
use Pangolil##250145
learnpet Pangolil##4884
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Treasure Pets\\Percival",{
patch='120000',
source='Treasure',
author="QuestCore",
description="This guide will teach you how to acquire the Percival companion pet.",
keywords={"Treasure","Aquatic"},
pet=4927,
startlevel=1,
},[[
step
click Kemet's Simmering Cauldron##573307
|tip On a small island in the river.
collect Percival##258903 |goto Harandar/0 55.63,39.42
step
use Percival##258903
learnpet Percival##4927
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Riftblade Familiar",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Riftblade Familiar companion pet.",
keywords={"Zone","Magic"},
pet=4892,
startlevel=90,
},[[
step
clicknpc Riftblade Familiar##250680
|tip Only in this valley.
collect Riftblade Familiar##251005 |goto Voidstorm/0 60.14,72.68
Also found at:
[Voidstorm/0 60.36,72.68]
[Voidstorm/0 62.43,73.62]
[Voidstorm/0 64.01,73.77]
[Voidstorm/0 64.79 74.22]
step
use Riftblade Familiar##251005
learnpet Riftblade Familiar##4892
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Rootling Nester",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Rootling Nester companion pet.",
keywords={"Zone","Beast"},
pet=4875,
startlevel=1,
},[[
step
clicknpc Rootling Nester##249820
collect Rootling Nester##250136 |goto Harandar/0 46.18,49.84
Also found at:
[Harandar/0 52.93,80.23]
[Harandar/0 53.03,75.33]
[Harandar/0 66.56,37.42]
[Harandar/0 68.39,42.03]
[Harandar/0 54.22,43.78]
step
use Rootling Nester##250136
learnpet Rootling Nester##4875
]])
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Treasure Pets\\Scruffbeak",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Scruffbeak companion pet.",
keywords={"Zone","Critter"},
pet=4906,
startlevel=1,
},[[
step
click Abandoned Nest##539053
|tip Up in the trunk of the tree.
collect Weathered Eagle Egg##255008 |goto Zul Aman M/0 42.64,52.44
step
Wait 3 days
|tip This will automatically hatch into the pet item.
learnpet Scruffbeak##4906
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Silkcrawler",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Silkcrawler companion pet.",
keywords={"Zone","Critter"},
pet=4886,
startlevel=1,
},[[
step
clicknpc Silkcrawler##249827
collect Silkcrawler##250147 |goto Harandar/0 45.61,26.04 |or
'|complete haspet(4886) |or
Also found at:
[Harandar/0 36.57,26.62]
[Harandar/0 39.31,33.58]
[Harandar/0 45.57,26.24]
[Harandar/0 50.54,26.68]
[Harandar/0 61.83,27.02]
[Harandar/0 71.58,55.20]
step
use Silkcrawler##250147
learnpet Silkcrawler##4886
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Silvermoon Broom",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Silvermoon Broom companion pet.",
keywords={"Zone","Magic"},
pet=4912,
startlevel=10,
},[[
step
clicknpc Silvermoon Broom##254885
|tip It spawns and sweeps around this building.
|tip Try early in the morning.
map Silvermoon City M/0
path follow smart; loop on; ants curved; dist 30
path	30.98,75.33	32.44,75.41	32.30,78.49	32.18,80.61	30.64,81.81
path	28.63,80.89	27.89,78.35	28.32,75.73
collect Silvermoon Broom##258660
step
use Silvermoon Broom##258660
learnpet Silvermoon Broom##4912
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Achievement Pets\\Sootpaw",{
patch='120100',
source='Achievement',
author="QuestCore",
description="This guide will teach you how to obtain the Sootpaw companion pet.",
keywords={"Achievement","Beast"},
pet=5012,
startlevel=80,
},[[
step
This companion pet is a reward for completing "Treasures of Eversong Woods" Achievement.
|tip Use the "Treasures of Eversong Woods" Achievement guide to accomplish this.
loadguide "Achievement Guides\\Exploration\\Midnight\\Treasures of Eversong Woods"
collect Sootpaw##269028
step
use Sootpaw##269028
learnpet Sootpaw##5012
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Delve Pets\\Sporbie",{
patch='120000',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Sporbie companion pet.",
keywords={"Drop","Flying"},
pet=4953,
startlevel=1,
},[[
step
Run Bountiful Delves and Open the End of Run Chests
|tip The pet item can drop in the {b}Bountiful Heavy Trunk{}.
collect Sporbie##262390
step
use Sporbie##262390
learnpet Sporbie##4953
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Delve Pets\\Spormilian",{
patch='120000',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Spormilian companion pet.",
keywords={"Drop","Elemental"},
pet=4956,
startlevel=1,
},[[
step
Open Treasure Chests after Completing Delves
|tip The pet item can drop in these chests.
collect Spormilian##262342
step
use Spormilian##262342
learnpet Spormilian##4956
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Striped Snakebiter",{
patch='100000',
source='Zone',
author="QuestCore",
description="This guide will teach you to acquire the Striped Snakebiter companion pet.",
keywords={"Zone","Beast"},
pet=3364,
startlevel=80,
},[[
step
click Striped Snakebiter##192368
collect Striped Snakebiter##251004 |goto Zul Aman M/0 51.71,67.28 |or
'|complete haspet(3364) |or
Can also be found at:
[Zul Aman M/0 46.41,57.58]
[Zul Aman M/0 51.81,59.00]
[Zul Aman M/0 38.80,47.38]
[Zul Aman M/0 42.22,63.18]
step
use Striped Snakebiter##251004
learnpet Striped Snakebiter##3364
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Treasure Pets\\Sunwing Hatchling",{
patch='120000',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Sunwing Hatchling companion pet.",
keywords={"Treasure","Dragonkin"},
pet=5003,
startlevel=1,
},[[
step
talk Farstrider Aerieminder##258550
|tip On a high platform.
buy 5 Tasty Meat##265674 |goto Silvermoon City M/0 24.83,69.42
step
Click the Tasty Meat Plate |goto Silvermoon City M/0 24.12,69.43
|tip On the same high platform.
|tip Place the meat on the plate in front of the Mischievous Chick.
click Rookery Cache Key##263870
|tip It appears next to the plate.
collect Rookery Cache Key##263870 |goto Silvermoon City M/0 24.16,69.40
step
click Rookery Cache##617881
|tip On the same high platform.
collect Sunwing Hatchling##267838 |goto Silvermoon City M/0 24.34,69.28
step
use Sunwing Hatchling##267838
learnpet Sunwing Hatchling##5003
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Swamp Biter",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Swamp Biter companion pet.",
keywords={"Zone","Beast"},
pet=4880,
startlevel=1,
},[[
step
clicknpc Swamp Biter##249820
collect Swamp Biter##250140 |goto Zul Aman M/0 46.39,55.24
Can also be found at:
[Zul Aman M/0 59.73,10.40]
[Zul Aman M/0 44.66,40.52]
[Zul Aman M/0 47.52,50.51]
[Zul Aman M/0 44.56,53.15]
[Zul Aman M/0 47.58,81.16]
step
use Swamp Biter##250140
learnpet Swamp Biter##4880
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Delve Pets\\Treja'saka",{
patch='120000',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Treja'saka companion pet.",
keywords={"Drop","Beast"},
pet=4960,
startlevel=1,
},[[
step
Run Delves and Open the End of Run Chests
|tip The pet item can drop in the chests.
collect Treja'saka##262343
step
use Treja'saka##262343
learnpet Treja'saka##4960
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Vibrant Manaling",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Vibrant Manaling companion pet.",
keywords={"Zone","Magic"},
pet=4890,
startlevel=1,
},[[
step
clicknpc Vibrant Manaling##250572
collect Vibrant Manaling##251001 |goto Eversong Woods M/0 46.02,36.29
You can also find one at the following coordinates:
[Eversong Woods M/0 53.82,55.22]
[Eversong Woods M/0 40.43,36.67]
[Eversong Woods M/0 49.25,37.52]
[Eversong Woods M/0 60.25,37.55]
[Eversong Woods M/0 57.14,44.67]
[Eversong Woods M/0 50.81,47.70]
step
use Vibrant Manaling##251001
learnpet Vibrant Manaling##4890
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Violet Chick",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Violet Chick companion pet.",
keywords={"Zone","Critter"},
pet=4877,
startlevel=1,
},[[
step
clicknpc Violet Chick##249817
collect Violet Chick##250138 |goto Eversong Woods M/0 50.80,73.22
Also found at:
[Eversong Woods M/0 44.19,63.59]
[Eversong Woods M/0 45.19,71.61]
[Eversong Woods M/0 55.89,68.47]
[Eversong Woods M/0 37.84,57.72]
[Eversong Woods M/0 55.45,73.30]
step
use Violet Chick##250138
learnpet Violet Chick##4877
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Voidcrawler",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Voidcrawler companion pet.",
keywords={"Zone","Magic"},
pet=4795,
startlevel=90,
},[[
step
clicknpc Voidcrawler##241439
collect Voidcrawler##239101 |goto Voidstorm/0 39.76,83.69
Also found at:
[Voidstorm/0 47.60,63.54]
[Voidstorm/0 30.51,66.47]
[Voidstorm/0 28.20,53.00]
[Voidstorm/0 48.00,59.96]
[Voidstorm/0 62.62,78.51]
step
use Voidcrawler##239101
learnpet Voidcrawler##4795
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Vendor Pets\\Voldy",{
patch='120000',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the Voldy companion pet.",
keywords={"Vendor","Elemental","Peaceful","Prey"},
pet=4976,
startlevel=80,
},[[
step
earn 800 Remnant of Anguish##3392 |goto Silvermoon City M/0 56.72,65.45 |or
|tip Obtain these from Prey activities, triggering traps at the Prey world quest, hunts, and ambushes.
|tip Use the {y}Prey: Season 1{} guide to unlock this activity.
loadguide "Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Prey: Season 1"
'|complete haspet(4976) |or
step
Enter the building |goto Silvermoon City M/0 55.06,63.57 < 10 |walk
talk Construct V'anore##252956
|tip Up the ramp, inside the building.
buy Voldy##264434 |goto Silvermoon City M/0 55.69,65.71 |or
'|complete haspet(4976) |or
step
use Voldy##264434
learnpet Voldy##4976
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Aquatic Pets\\Zone Pets\\Waddles",{
patch='100207',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Waddles companion pet.",
keywords={"Zone","Aquatic"},
pet=4497,
startlevel=80,
},[[
step
clicknpc Waddles##222077
map Harandar/0
path follow smart; loop on; ants curved; dist 30
path	60.62,21.39	60.67,20.80	60.48,20.35	60.54,19.93	60.40,19.47
path	60.52,19.24	60.96,19.50	61.24,19.31	61.31,19.04	61.47,17.71
path	61.21,19.21	60.98,19.41	60.55,19.17	60.37,19.44	60.52,19.89
path	60.47,20.43	60.63,20.85	60.57,21.40
collect Waddles##221495
step
use Waddles##221495
learnpet Waddles##4497
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Treasure Pets\\Willie",{
patch='120000',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Willie companion pet.",
keywords={"Drop","Beast"},
pet=4972,
startlevel=86,
},[[
step
Enter the cave |goto Voidstorm/0 38.00,68.70
|tip Go left after entering the cave.
click Half-Digested Viscera##613317
|tip This looks like a chunk of meat and bones on the floor of the cave.
collect Willie##264303 |goto Voidstorm/0 37.71,69.77
step
use Willie##264303
learnpet Willie##4972
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Zone Pets\\Wrathful Wyrm",{
patch='120000',
source='Zone',
author="QuestCore",
description="This guide will teach you how to acquire the Wrathful Wyrm companion pet.",
keywords={"Zone","Magic"},
pet=4891,
startlevel=1,
},[[
step
clicknpc Wrathful Wyrm##250573
|tip Follow the path.
map Isle of Quel Danas M/0
path follow smart; loop on; ants curved; dist 30
path	41.26,33.33	41.42,32.53	47.74,24.35	47.55,24.25	41.24,32.28
path	40.98,33.34
collect Wrathful Wyrm##251003
step
use Wrathful Wyrm##251003
learnpet Wrathful Wyrm##4891
]])
QuestCore:RegisterGuide("Pets & Mounts\\Peaceful Pets\\Delve Pets\\Ziorg'pharon",{
patch='120000',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Ziorg'pharon companion pet.",
keywords={"Drop","Elemental"},
pet=4954,
startlevel=1,
},[[
step
Open Treasure Chests after Completing Delves
|tip The pet item can drop in these chests.
collect Ziorg'pharon##262394
step
use Ziorg'pharon##262394
learnpet Ziorg'pharon##4954
]])
