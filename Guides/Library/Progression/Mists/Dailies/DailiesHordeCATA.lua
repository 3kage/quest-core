-- QuestCore bundled guide (mists)
if not QuestCore then return end
if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Dailies Guides\\Cataclysm\\Twilight Highlands\\Twilight Highlands Dailies",{
expansion="mists",
cataready=true,
description="This guide will help you complete the Twilight Highlands daily quests.",
startlevel=84,
},[[
step
Complete the "Twilight Highlands (84-85)" Leveling Guide |complete completedq(27788)
|tip Complete the guide to unlock Dragonmaw Clan daily quests.
|loadguide "Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)"
step
label "Begin_Daily_Quests"
talk Harkkan##46318
accept Total War##28872 |goto Twilight Highlands/0 55.14,43.56
accept Hook 'em High##28874 |goto Twilight Highlands/0 55.10,43.60
step
talk Griff##46319
accept Another Maw to Feed##28873 |goto Twilight Highlands/0 53.84,43.26
step
talk Grot Deathblow##49387
accept Bring Down the High Shaman##28875 |goto Twilight Highlands/0 53.87,42.07
|tip This is a 2 person group quest.
step
talk Malkar##50622
accept Crushing the Wildhammer##28871 |goto Twilight Highlands/0 53.96,41.90
stickystart "Smash_Wildhammer_Kegs"
stickystart "Collect_Wildhammer_Food_Stores"
stickystart "Kill_Thundermar_Gryphon_Riders"
stickystart "Collect_Wildhammer_Insignias"
step
kill High Shaman MacKilligan##46885 |q 28875/1 |goto Twilight Highlands/0 45.95,33.17
|tip He runs into town to this spot.
|tip He is elite and the quest is a group quest, so you may need help killing him.
|only if haveq(28875) or completedq(28875)
step
label "Smash_Wildhammer_Kegs"
click Thundermar Ale Keg##206195+
|tip They look like wooden barrels on the ground around this area.
|tip They will explode when you smash them and damage nearby enemies.
Smash #10# Wildhammer Kegs |q 28872/1 |goto Twilight Highlands/0 49.00,37.28
You can find more around [46.22,37.37] |notinsticky
|only if haveq(28872) or completedq(28872)
step
label "Collect_Wildhammer_Food_Stores"
click Wildhammer Food Store##206290+
|tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
collect 10 Wildhammer Food Stores##62324 |q 28873/1 |goto Twilight Highlands/0 49.00,37.28
You can find more around [46.22,37.37] |notinsticky
|only if haveq(28873) or completedq(28873)
step
label "Kill_Thundermar_Gryphon_Riders"
'|click Thundermar War Gryphon##47186
use Barbed Fleshhook##62775
|tip Use it on Thundermar War Gryphons.
|tip They look like big white birds that fly in the air around this area.
kill 4 Thundermar Gryphon Rider##46321 |q 28874/1 |goto Twilight Highlands/0 51.51,38.97
|only if haveq(28874) or completedq(28874)
step
label "Collect_Wildhammer_Insignias"
kill Wildhammer Warbrand##46320+
collect 8 Wildhammer Insignia##62325 |q 28871/1 |goto Twilight Highlands/0 50.85,38.05
|only if haveq(28871) or completedq(28871)
step
talk Harkkan##46318
turnin Total War##28872 |goto Twilight Highlands/0 55.14,43.56 |only if haveq(28872) or completedq(28872)
turnin Hook 'em High##28874 |goto Twilight Highlands/0 55.14,43.56 |only if haveq(28874) or completedq(28874)
|only if haveq(28872,28874) or completedq(28872,28874)
step
talk Griff##46319
turnin Another Maw to Feed##28873 |goto Twilight Highlands/0 53.84,43.26
|only if haveq(28873) or completedq(28873)
step
talk Grot Deathblow##49387
turnin Bring Down the High Shaman##28875 |goto Twilight Highlands/0 53.87,42.07
|only if haveq(28875) or completedq(28875)
step
talk Malkar##50622
turnin Crushing the Wildhammer##28871 |goto Twilight Highlands/0 53.96,41.90
|only if haveq(28871) or completedq(28871)
step
You have completed the Uldum dailies available today
|tip This guide will reset when daily quests reset.
'|complete not completedq(28872,28874,28873,28875,28871) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Dailies Guides\\Classic\\Cooking\\Orgrimmar Cooking Dailies",{
expansion="mists",
cataready=true,
description="This guide will walk you through completing the Orgrimmar Cooking daily quest to earn Epicurean's Awards.",
startlevel=10,
},[[
step
label "Begin_Daily_Quests"
talk Marogg##42506
|autoacceptany 26227,26226,26235,26220,26234,26233
Accept the Daily Quest |complete haveq(26227,26226,26235,26220,26234,26233) or completedq(26227,26226,26235,26220,26234,26233) |goto Orgrimmar/1 56.53,62.48
|tip You can only complete one Cooking daily quest per day from one city, not one from each city.
step
Kill enemies around this area
collect 6 Swine Belly##57758 |q 26220/1 |goto Durotar/0 48.71,16.00
|only if haveq(26220) or completedq(26220)
step
click Prickly Pear Fruit##203969
|tip They look like smaller cactus plants with red round fruit on top of them.
|tip They are usually found next to walls all around Orgrimmar.
collect 8 Prickly Pear Fruit##57766 |q 26227/1 |goto Orgrimmar/1 52.77,61.97
You can find more around:
[60.18,61.38]
[59.22,54.39]
[55.75,52.16]
[52.46,49.28]
[46.25,53.43]
[42.84,47.90]
[41.03,59.75]
|only if haveq(26227) or completedq(26227)
step
clicknpc Muddy Crawfish##42548+
|tip They look like tiny lobsters in the water around this area.
collect 10 Muddy Crawfish##57765 |q 26226/1 |goto Orgrimmar/1 65.26,43.47
|only if haveq(26226) or completedq(26226)
step
kill Orgrimmar Thief##42594+
|tip They are stealthed near wooden crates.
|tip They are all around Orgrimmar, so you can walk around and find them everywhere.
|tip They won't be next to every pile of crates, so you'll need to search for them.
collect 3 Horde Infantry Rations##57879 |q 26235/1 |goto Orgrimmar/1 65.77,39.62
|only if haveq(26235) or completedq(26235)
step
click Barrels of Kezan Rice##9664+
|tip They look like light brown wooden barrels around this area.
collect 6 Barrel of Kezan Rice##57878 |q 26234/1 |goto Orgrimmar/1 35.11,69.70
|only if haveq(26234) or completedq(26234)
step
click Barrels of Darkspear Rice##6037+
|tip They looks like dark brown wooden barrels around this area.
collect 6 Barrel of Darkspear Rice##57877 |q 26233/1 |goto Orgrimmar/1 35.11,69.70
|only if haveq(26233) or completedq(26233)
step
talk Marogg##42506
turnin Careful, This Fruit Bites Back##26227 |goto Orgrimmar/1 56.53,62.48 |only if haveq(26227) or completedq(26227)
turnin Crawfish Creole##26226 |goto Orgrimmar/1 56.53,62.48 |only if haveq(26226) or completedq(26226)
turnin Even Thieves Get Hungry##26235 |goto Orgrimmar/1 56.53,62.48 |only if haveq(26235) or completedq(26235)
turnin Everything Is Better with Bacon##26220 |goto Orgrimmar/1 56.53,62.48 |only if haveq(26220) or completedq(26220)
turnin Stealing From Our Own##26234 |goto Orgrimmar/1 56.53,62.48 |only if haveq(26234) or completedq(26234)
turnin Stealing From Our Own##26233 |goto Orgrimmar/1 56.53,62.48 |only if haveq(26233) or completedq(26233)
|only if haveq(26227,26226,26235,26220,26234,26233) or completedq(26227,26226,26235,26220,26234,26233)
step
You have completed the Orgrimmar Cooking daily
|tip This guide will reset when daily quests reset.
'|complete not completedq(26227,26226,26235,26220,26234,26233) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Dailies Guides\\Classic\\Cooking\\Thunder Bluff Cooking Dailies",{
expansion="mists",
cataready=true,
description="This guide will walk you through completing the Thunder Bluff Cooking daily quest to earn Epicurean's Awards.",
startlevel=10,
},[[
step
label "Begin_Daily_Quests"
talk Aska Mistrunner##3026
|autoacceptany 29358,29362,29363,29364,29365
Accept the Daily Quest |complete haveq(29358,29362,29363,29364,29365) or completedq(29358,29362,29363,29364,29365) |goto Thunder Bluff/0 50.71,53.11
|tip You can only complete one Cooking daily quest per day from one city, not one from each city.
step
click Mulgore Pine Cone##208875
|tip They look like sparkling pine cones on the ground next to the base of moss trees in Thunder Bluff.
_<Create a Cooking Fire>_
use the Mulgore Pine Cones##69990
collect 30 Pine Nut##69988 |q 29358/1 |goto Thunder Bluff/0 48.52,62.16
|only if haveq(29358) or completedq(29358)
step
Enter the cave |goto Thunder Bluff/0 29.49,29.82 < 5
click "Magic" Mushroom##208878
|tip They look like pale grey mushrooms grouped in fours all around the cave.
collect 6 "Magic" Mushroom##69994 |q 29362/1 |goto Thunder Bluff/0 26.16,22.18
|only if haveq(29362) or completedq(29362)
step
talk Naal Mistrunner##3027
buy 5 Simple Flour##30817 |q 29363 |goto Thunder Bluff/0 50.99,52.47
buy 5 Mild Spices##2678 |q 29363 |goto Thunder Bluff/0 50.99,52.47
|only if haveq(29363) or completedq(29363)
step
cast Cooking Fire##818
create 5 Spice Bread##30816,Cooking,5 total |q 29363
|only if haveq(29363) or completedq(29363)
step
use the Mulgore Spices##69997
collect 5 Fresh Mulgore Spice Bread##69996 |q 29363/1
|only if haveq(29363) or completedq(29363)
step
click Bowl of Corn Kernel+
|tip They look like little bowls of yellow corn in almost all the tents in Thunder Bluff.
Grind #6# Bowls of Corn Kernels |q 29364/1 |goto Thunder Bluff/0 52.00,45.53
|only if haveq(29364) or completedq(29364)
step
click Mulgore Sweet Potatoes
collect Succulent Sweet Potatoes##70000 |q 29365/1 |goto Thunder Bluff/0 47.87,42.73
|tip They look like baskets inside the tent.
|only if haveq(29365) or completedq(29365)
step
click Savory Spice Herbs
|tip It looks like a bag with weeds in it inside the tent.
collect Savory Spices##70001 |q 29365/2 |goto Thunder Bluff/0 49.70,41.98
|only if haveq(29365) or completedq(29365)
step
click Fresh-Caught Fish
|tip It looks like a rope hanging down with a bunch of fish on it inside of the tent.
collect Fresh-Caught Fish##70002 |q 29365/3 |goto Thunder Bluff/0 56.01,44.49
|only if haveq(29365) or completedq(29365)
step
click Fresh-Hunted Fowl
|tip It looks like a bird hanging upside down at the side of the tent.
collect Fresh-Hunted Fowl##70003 |q 29365/4 |goto Thunder Bluff/0 51.07,46.95
|only if haveq(29365) or completedq(29365)
step
talk Aska Mistrunner##3026
turnin Pining for Nuts##29358 |goto Thunder Bluff/0 50.71,53.11 |only if haveq(29358) or completedq(29358)
turnin "Magic" Mushrooms##29362 |goto Thunder Bluff/0 50.71,53.11 |only if haveq(29362) or completedq(29362)
turnin Mulgore Spice Bread##29363 |goto Thunder Bluff/0 50.71,53.11 |only if haveq(29363) or completedq(29363)
turnin Corn Mash##29364 |goto Thunder Bluff/0 50.71,53.11 |only if haveq(29364) or completedq(29364)
turnin Perfectly Pickled Portions##29365 |goto Thunder Bluff/0 50.71,53.11 |only if haveq(29365) or completedq(29365)
|only if haveq(29358,29362,29363,29364,29365) or completedq(29358,29362,29363,29364,29365)
step
You have completed the Thunder Bluff Cooking daily
|tip This guide will reset when daily quests reset.
'|complete not completedq(29358,29362,29363,29364,29365) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Dailies Guides\\Classic\\Cooking\\Undercity Cooking Dailies",{
expansion="mists",
cataready=true,
description="This guide will walk you through completing the Undercity Cooking daily quest to earn Epicurean's Awards.",
startlevel=10,
},[[
step
label "Begin_Daily_Quests"
talk Eunice Burch##4552
|autoacceptany 29334,29333,29360,29332,29315
Accept the Daily Quest |complete haveq(29334,29333,29360,29332,29315) or completedq(29334,29333,29360,29332,29315) |goto Undercity/0 62.15,44.89
|tip You can only complete one Cooking daily quest per day from one city, not one from each city.
step
clicknpc Brightwater Snail##53526+
|tip They are underneath the water around the area.
collect 8 Brightwater Snail##69918 |q 29333/1 |goto Tirisfal Glades/0 70.72,39.55
|only if haveq(29333) or completedq(29333)
step
click Stillwater Lily##208833
|tip They are floating along the edge of the lake around this area.
collect 10 Stillwater Lily##69917 |q 29332/1 |goto Tirisfal Glades/0 50.86,55.57
|only if haveq(29332) or completedq(29332)
step
click Sewer Cap##208816
|tip They spawn near walls around this area.
collect 12 Sewer Cap##208816 |q 29315/1 |goto Undercity/0 36.24,30.34
|only if haveq(29315) or completedq(29315)
step
click Cockrach Cabin##336+
|tip Look in corners and behind crates.
|tip They are hidden all around Undercity.
collect 20 Plump Cockroach##69919 |q 29334/1 |goto Undercity/0 61.28,34.06
|only if haveq(29334) or completedq(29334)
step
click Fly Covered "Meat"##208876
|tip You will find the fly meat around the wagons in this area.
collect 25 Bloated Fly##69989 |q 29360/1 |goto Undercity/0 69.26,52.38
You can find more around [57.08,17.01]
|only if haveq(29360) or completedq(29360)
step
talk Chef Audrey##53528
turnin Roach Coach##29334 |goto Undercity/0 62.68,35.51
|only if haveq(29334) or completedq(29334)
step
talk Eunice Burch##4552
turnin Escargot A Go-Go##29333 |goto Undercity/0 62.15,44.89 |only if haveq(29333) or completedq(29333)
turnin Would You Like Some Flies With That?##29360 |goto Undercity/0 62.15,44.89 |only if haveq(29360) or completedq(29360)
turnin Fungus Among Us##29315 |goto Undercity/0 62.15,44.89 |only if haveq(29315) or completedq(29315)
turnin Lily, Oh Lily##29332 |goto Undercity/0 62.15,44.89 |only if haveq(29332) or completedq(29332)
|only if haveq(29334,29333,29360,29332,29315) or completedq(29334,29333,29360,29332,29315)
step
You have completed the Undercity Cooking daily
|tip This guide will reset when daily quests reset.
'|complete not completedq(29334,29333,29360,29332,29315) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Dailies Guides\\Fishing\\Orgrimmar Fishing Dailies",{
expansion="mists",
cataready=true,
description="Complete one of the following fishing daily quests each day in Orgrimmar:\n\nClammy Hands\n"..
"A Furious Catch\nA Golden Opportunity\nA Staggering Effort\nNo Dumping Allowed",
condition_end=function() return completedq(26588,26572,26557,26543,26556) end,
startlevel=10,
},[[
step
label "Begin_Daily_Quests"
talk Razgar##43239
|autoacceptany 26588,26572,26557,26543,26556
Accept the Daily Quest |complete haveq(26588,26572,26557,26543,26556) or completedq(26588,26572,26557,26543,26556) |goto Orgrimmar/1 65.69,41.08
|tip You will only be able to accept one quest from Orgrimmar, Thunder Bluff, or Undercity each day.
step
label "Collect_Stag_Eye"
kill Weakened Mosshoof Stag##35096+
collect 1 Stag Eye##58949 |goto Azshara/0 27.85,73.96 |q 26557
|only if haveq(26557) or completedq(26557)
step
use the Stag Eye##58949
Apply the Stag Eye Bait |havebuff Stag Eye Bait##80868 |goto Orgrimmar/1 47.55,47.04 |q 26557
|only if haveq(26557) or completedq(26557)
step
cast Fishing##7620
collect 1 Sandy Carp##58946 |q 26557/1 |goto Orgrimmar/1 47.55,47.04 |or
'|complete not hasbuff(80868) and not readyq(26557) |next "Collect_Stag_Eye" |or
|only if haveq(26557) or completedq(26557)
step
cast Fishing##7620
collect 6 Toxic Puddlefish##58945 |q 26556/1 |goto Orgrimmar/1 32.36,70.40
|only if haveq(26556) or completedq(26556)
step
cast Fishing##7620
collect Giant Furious Pike##58951 |q 26588/1 |goto Durotar/0 37.40,16.80
|only if haveq(26588) or completedq(26588)
step
use Razgar's Fillet Knife##58955
|tip Use it on a Drowned Thunder Lizard.
|tip They look like dead thunder lizards underwater around this area.
collect Drowned Thunder Lizard Tail##58958 |goto Durotar/0 39.27,24.86 |q 26572
|only if haveq(26572) or completedq(26572)
step
use the Drowned Thunder Lizard Tail##58958
|tip Use it next to Golden Stonefish.
|tip They look like brown and yellow fish swimming underwater around this area.
collect 3 Golden Stonefish##58960 |q 26572/1 |goto Durotar/0 39.27,24.86
|only if haveq(26572) or completedq(26572)
step
click Monstrous Clam##204360
|tip They look like giant clams underwater around this area.
collect 10 Monstrous Clam Meat##58934 |q 26543/1 |goto Durotar/0 58.11,10.11
|only if haveq(26543) or completedq(26543)
step
talk Razgar##43239
turnin A Furious Catch##26588 |goto Orgrimmar/1 65.69,41.08 |only if haveq(26588) or completedq(26588)
turnin A Golden Opportunity##26572 |goto Orgrimmar/1 65.69,41.08 |only if haveq(26572) or completedq(26572)
turnin A Staggering Effort##26557 |goto Orgrimmar/1 65.69,41.08 |only if haveq(26557) or completedq(26557)
turnin Clammy Hands##26543 |goto Orgrimmar/1 65.69,41.08 |only if haveq(26543) or completedq(26543)
turnin No Dumping Allowed##26556 |goto Orgrimmar/1 65.69,41.08 |only if haveq(26556) or completedq(26556)
|only if haveq(26588,26572,26557,26543,26556) or completedq(26588,26572,26557,26543,26556)
step
use the Bag of Shiny Things##67414
Claim your Treasures |complete itemcount(67414) == 0
step
You have completed the Orgrimmar Fishing daily
|tip This guide will reset when daily quests reset.
'|complete not completedq(26588,26572,26557,26543,26556) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Dailies Guides\\Fishing\\Thunder Bluff Fishing Dailies",{
expansion="mists",
cataready=true,
description="Complete one of the following fishing daily quests each day in Thunder Bluff:\n\nShiny Baubles\n"..
"Craving Crayfish\nPond Predators\nThe Race to Restock\nThe Ring's the Thing",
condition_end=function() return completedq(29349,29345,29348,29354,29346) end,
startlevel=10,
},[[
step
label "Begin_Daily_Quests"
talk Kah Mistrunner##3028
|autoacceptany 29349,29345,29348,29354,29346
Accept the Daily Quest |complete haveq(29349,29345,29348,29354,29346) or completedq(29349,29345,29348,29354,29346) |goto Thunder Bluff/0 56.13,46.42
|tip You will only be able to accept one quest from Orgrimmar, Thunder Bluff, or Undercity each day.
stickystart "Collect_Amorous_Mud_Snapper"
step
cast Fishing##7620
collect 2 Randy Smallfish##69964 |q 29348/1 |goto Mulgore/0 49.59,49.50
|only if haveq(29348) or completedq(29348)
step
label "Collect_Amorous_Mud_Snapper"
cast Fishing##7620
collect 2 Amorous Mud Snapper##69967 |q 29348/2 |goto Mulgore/0 49.59,49.50
|only if haveq(29348) or completedq(29348)
step
Collect the Restocking Materials |complete readyq(29348) or completedq(29348)
|only if haveq(29348) or completedq(29348)
step
clicknpc Stonebull Crayfish##53561+
|tip They look like small blue crayfish underwater around this area.
collect 10 Stonebull Crayfish##69977 |q 29349/1 |goto Mulgore/0 44.90,55.46
|only if haveq(29349) or completedq(29349)
step
cast Fishing##7620
collect 8 Azshara Snakehead##69934 |q 29345/1 |goto Thunder Bluff/0 41.40,57.17
|only if haveq(29345) or completedq(29345)
step
click Shiny Stones##208867+
|tip They look like small purple stones on the ground around Thunder Bluff.
collect 20 Shiny Stone##69983 |q 29354/1 |goto Thunder Bluff/0 34.69,40.02
|only if haveq(29354) or completedq(29354)
step
Enter the cave |goto Thunder Bluff/0 29.78,29.78 < 10 |walk
cast Fishing##7620
|tip Inside the cave.
collect 1 Poshken's Ring##69935 |q 29346/1 |goto Thunder Bluff/0 26.19,18.38
|only if haveq(29346) or completedq(29346)
step
talk Kah Mistrunner##3028
turnin Craving Crayfish##29349 |goto Thunder Bluff/0 56.13,46.42 |only if haveq(29349) or completedq(29349)
turnin Pond Predators##29345 |goto Thunder Bluff/0 56.13,46.42 |only if haveq(29345) or completedq(29345)
turnin The Race to Restock##29348 |goto Thunder Bluff/0 56.13,46.42 |only if haveq(29348) or completedq(29348)
|only if haveq(29349,29345,29348) or completedq(29349,29345,29348)
step
talk Nahari Cloudchaser##52657
turnin Shiny Baubles##29354 |goto Thunder Bluff/0 34.81,54.01
|only if haveq(29354) or completedq(29354)
step
talk Poshken Hardbinder##30709
|tip Inside the cave.
turnin The Ring's the Thing##29346 |goto Thunder Bluff/0 28.71,20.87
|only if haveq(29346) or completedq(29346)
step
use the Bag of Shiny Things##67414
Claim your Treasures |complete itemcount(67414) == 0
step
You have completed the Thunder Bluff Fishing daily
|tip This guide will reset when daily quests reset.
'|complete not completedq(29349,29345,29348,29354,29346) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Dailies Guides\\Fishing\\Undercity Fishing Dailies",{
expansion="mists",
cataready=true,
description="Complete one of the following fishing daily quests each day in Undercity:\n\nFish Head\n"..
"Like Pike?\nMoat Monster!\nTadpole Terror\nTime for Slime",
condition_end=function() return completedq(29320,29361,29319,29322,29317) end,
startlevel=10,
},[[
step
label "Begin_Daily_Quests"
talk Armand Cromwell##4573
|autoacceptany 29320,29361,29319,29322,29317
Accept the Daily Quest |complete haveq(29320,29361,29319,29322,29317) or completedq(29320,29361,29319,29322,29317) |goto Undercity/0 80.72,31.25
|tip You will only be able to accept one quest from Orgrimmar, Thunder Bluff, or Undercity each day.
step
cast Fishing##7620
collect 1 Severed Abomination Head##69901 |q 29317/1 |goto Undercity/0 81.03,31.91
|only if haveq(29317) or completedq(29317)
step
use the Moat Monster Feeding Kit##69999
collect 1 Alliance Decoy Kit##69998 |q 29361
|only if haveq(29361) or completedq(29361)
step
use the Alliance Decoy Kit##69998
Lure the Moat Monster |complete itemcount(69998) == 0 |goto Undercity/0 66.18,17.49 |q 29361
|only if haveq(29361) or completedq(29361)
step
use the Bloated Frog##69995
Feed #10# Bloated Frogs to the Moat Monster |q 29361/1 |goto Undercity/0 66.18,17.49
|only if haveq(29361) or completedq(29361)
step
clicknpc Squirming Slime Mold##53517
collect 10 Squirming Slime Mold##69911 |q 29322/1 |goto Undercity/0 81.03,31.91
|only if haveq(29322) or completedq(29322)
step
label "Collect_Corpse_Worm"
click Corpse Worm Mound##208828
|tip Outside Undercity near the entrance bridge.
collect 1 Corpse Worm##69907 |goto Undercity/0 62.05,68.22 |q 29320
|only if haveq(29320) or completedq(29320)
step
use the Corpse Worm##69907
Apply the Corpse Worm Bait |havebuff Corpse Worm Bait##99315 |goto Tirisfal Glades/0 67.12,50.79 |q 29320
|only if haveq(29320) or completedq(29320)
step
cast Fishing##7620
collect 1 Corpse-Fed Pike##69909 |q 29320/1 |goto Tirisfal Glades/0 67.12,50.79 |or
'|complete not hasbuff(99315) and not readyq(29320) |next "Collect_Corpse_Worm" |or
|only if haveq(29320) or completedq(29320)
step
cast Fishing##7620
collect 8 Giant Flesh-Eating Tadpole##69905 |q 29319/1 |goto Tirisfal Glades/0 50.58,56.51
|only if haveq(29319) or completedq(29319)
step
talk Armand Cromwell##4573
turnin Like Pike?##29320 |goto Undercity/0 80.72,31.25 |only if haveq(29320) or completedq(29320)
turnin Moat Monster!##29361 |goto Undercity/0 80.72,31.25 |only if haveq(29361) or completedq(29361)
turnin Tadpole Terror##29319 |goto Undercity/0 80.72,31.25 |only if haveq(29319) or completedq(29319)
turnin Time for Slime##29322 |goto Undercity/0 80.72,31.25 |only if haveq(29322) or completedq(29322)
|only if haveq(29320,29361,29319,29322) or completedq(29320,29361,29319,29322)
step
Follow the path |goto Undercity/0 46.03,58.02 < 15 |walk
talk Master Apothecary Faranell##2055
turnin Fish Head##29317 |goto Undercity/0 49.11,69.72
|only if haveq(29317) or completedq(29317)
step
use the Bag of Shiny Things##67414
Claim your Treasures |complete itemcount(67414) == 0
step
You have completed the Undercity Fishing daily
|tip This guide will reset when daily quests reset.
'|complete not completedq(29320,29361,29319,29322,29317) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Dailies Guides\\Jewelcrafting\\Orgimmar Jewelcrafting Dailies",{
expansion="mists",
cataready=true,
description="This guide will walk you through completing the Jewelcrafting daily quest in Orgrimmar.",
condition_valid=function() return skill("Jewelcrafting") >= 425 end,
condition_valid_msg="You can complete one quest per day, and 3 out of 5 quests require 425 Jewelcrafting skill.",
},[[
step
label "Begin_Daily_Quests"
talk Marith Lazuria##50482
|autoacceptany 25160,25162,25158,25161,25159
Accept the Daily Quest |complete haveq(25160,25162,25158,25161,25159) or completedq(25160,25162,25158,25161,25159) |goto Orgrimmar/1 72.59,34.44
step
collect 3 Nightstone##52180 |q 25160
|tip Prospect these with Jewelcrafting or purchase them from the auction house.
|tip You can prospect them from Obsidum Ore (best), Elementium Ore, or Pyrite Ore.
|tip You can also mine them from Obsidium, Elementium, or Pyrite deposits in Cataclysm zones.
|only if haveq(25160) or completedq(25160)
step
talk Lugrah##46675
learn Timeless Nightstone##73243 |goto Orgrimmar/1 72.49,34.34
|only if haveq(25160) or completedq(25160)
step
create 3 Timeless Nightstone##73243,Jewelcrafting,3 total |q 25160/1
|only if haveq(25160) or completedq(25160)
step
collect 3 Timeless Nightstone##52098 |q 25160/2
|only if haveq(25160) or completedq(25160)
step
collect 3 Zephyrite##52178 |q 25158
|tip Prospect these with Jewelcrafting or purchase them from the auction house.
|tip You can prospect them from Obsidum Ore (best), Elementium Ore, or Pyrite Ore.
|tip You can also mine them from Obsidium, Elementium, or Pyrite deposits in Cataclysm zones.
|only if haveq(25158) or completedq(25158)
step
talk Lugrah##46675
learn Solid Zephyrite##73227 |goto Orgrimmar/1 72.49,34.34
|only if haveq(25158) or completedq(25158)
step
create 3 Solid Zephyrite##73227,Jewelcrafting,3 total |q 25158/1
|only if haveq(25158) or completedq(25158)
step
collect 3 Solid Zephyrite##52086 |q 25158/2
|only if haveq(25158) or completedq(25158)
step
collect 3 Jasper##52182 |q 25161
|tip Prospect these with Jewelcrafting or purchase them from the auction house.
|tip You can prospect them from Obsidum Ore (best), Elementium Ore, or Pyrite Ore.
|tip You can also mine them from Obsidium, Elementium, or Pyrite deposits in Cataclysm zones.
|only if haveq(25161) or completedq(25161)
step
talk Lugrah##46675
learn Jagged Jasper##73274 |goto Orgrimmar/1 72.49,34.34
|only if haveq(25161) or completedq(25161)
step
create 3 Jagged Jasper##73274,Jewelcrafting,3 total |q 25161/1
|only if haveq(25161) or completedq(25161)
step
collect 3 Jagged Jasper##52121 |q 25161/2
|only if haveq(25161) or completedq(25161)
step
use the Stardust No. 2##52507
|tip Use it on Humanoid creatures all over Orgrimmar.
|tip NPCs and players both count.
Perform #10# Tests of Stardust No. 2 |q 25159/1
|only if haveq(25159) or completedq(25159)
step
kill Scalding Rock Elemental##40229+
collect 10 Elemental Goo##52506 |q 25162/1 |goto Mount Hyjal/0 65.71,23.07
|only if haveq(25162) or completedq(25162)
step
talk Marith Lazuria##50482
turnin A Present for Lila##25160 |goto Orgrimmar/1 72.59,34.44 |only if haveq(25160) or completedq(25160)
turnin Elemental Goo##25162 |goto Orgrimmar/1 72.59,34.44 |only if haveq(25162) or completedq(25162)
turnin Nibbler! No!##25158 |goto Orgrimmar/1 72.59,34.44 |only if haveq(25158) or completedq(25158)
turnin Ogrezonians in the Mood##25161 |goto Orgrimmar/1 72.59,34.44 |only if haveq(25161) or completedq(25161)
turnin The Latest Fashion!##25159 |goto Orgrimmar/1 72.59,34.44 |only if haveq(25159) or completedq(25159)
|only if haveq(25160,25162,25158,25161,25159) or completedq(25160,25162,25158,25161,25159)
step
You have completed the Orgrimmar Jewelcrafting daily
|tip This guide will reset when daily quests reset.
'|complete not completedq(25160,25162,25158,25161,25159) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Deepholm Dailies with Pre-Quests",{
expansion="mists",
description="Contains the pre-quests to unlock the daily quests in Deepholm. You must be at least level 30 to complete this guide section.",
},[[
step
label "hub"
Proceeding to proper section |next |only if default
Proceeding to proper section |next "dailies" |only if completedq(26709)
step
#include "H_Therazane_PreQuest"
step
label "dailies"
#include "Therazane_Dailies"
step
You have reached the end of these dailies. Click here to return to the beginning of the guide. |confirm
|next "hub"
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Uldum Dailies with Pre-Quests",{
expansion="mists",
description="Contains the pre-quests to unlock the daily quests in Uldum. You must be at least level 30 to complete this guide section.",
},[[
step
The pre-quests for these dailies are in Uldum. You can quest through the guide, or use our Leveling Guide for help. |only if not QC.guidesets['LevelingHCATA']
Click here to go to the leveling section to work on this rep |confirm |next "Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)" |only if QC.guidesets['LevelingHCATA']
|only if not completedq(28633)
step
label "hub"
talk Nomarch Teneth##46603
accept Thieving Little Pluckers##28250 |goto Uldum 60.30,38.30
step
Use your Tahret Dynasty Mallet next to stacks of Pygmies |use Tahret Dynasty Mallet##63351
|tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
Smash 30 Thieving Pluckers |q 28250/1 |goto Uldum 59.10,38.40
step
talk Nomarch Teneth##46603
turnin Thieving Little Pluckers##28250 |goto Uldum 60.30,38.30
step
talk Weathered Nomad##49523
accept Fire From the Sky##28736 |goto Uldum 41.40,5.50
step
Click the Confiscated Artillery
|tip It looks like a war catapult car machine.
Use the Designate Target ability on your hotbar on the Infantrymen
Slay 100 Infantrymen |q 28736/1 |goto Uldum 41.40,5.50
step
talk Weathered Nomad##49523
turnin Fire From the Sky##28736 |goto Uldum 41.40,5.50
step
You have reached the end of these dailies. Click here to return to the beginning of the guide. |confirm
|next "hub"
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Twighlight Highlands Dailies with Pre-Quests",{
expansion="mists",
description="Walks you through completing the daily quests in the Bloodgulch region of Twilight Highlands. You must be at least level 30 to complete this guide section.",
},[[
step
Complete the "Twilight Highlands" Leveling Guide |q 27787 |future |only if Alliance
Complete the "Twilight Highlands" Leveling Guide |q 27788 |future |only if Horde
|tip Refer to the leveling guide to accomplish this.
Click Here to Load the Leveling Guide |confirm |next "Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)"
step
label "Reset"
talk Harkkan##46318
accept Total War##28872 |goto Twilight Highlands/0 55.10,43.60
accept Hook 'em High##28874 |goto Twilight Highlands/0 55.10,43.60
step
talk Griff##46319
accept Another Maw to Feed##28873 |goto Twilight Highlands/0 53.80,43.30
step
talk Grot Deathblow##49387
accept Bring Down the High Shaman##28875 |goto Twilight Highlands/0 53.90,42.10
step
talk Malkar##50622
accept Crushing the Wildhammer##28871 |goto Twilight Highlands/0 54.00,41.90
stickystart "wildhammerfood"
stickystart "wildhammerinsig"
step
kill High Shaman MacKilligan##46885 |q 28875/1 |goto Twilight Highlands/0 46.00,33.00
|tip He runs into town to this spot. He is elite and the quest is a group quest, so you may need help killing him.
step
label "wildhammerfood"
Click Thundermar Ale Kegs
|tip They look like wooden barrels on the ground around this area.
Smash 10 Wildhammer Kegs |q 28872/1 |goto Twilight Highlands/0 49.10,37.30
Click Wildhammer Food Stores
|tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
collect 10 Wildhammer Food Stores##62324 |q 28873/1 |goto Twilight Highlands/0 49.10,37.30
You can find more around [Twilight Highlands/0 46.20,37.40]
step
label "wildhammerinsig"
Use your Barbed Fleshhook on Thundermar War Gryphons |use Barbed Fleshhook##62775
|tip They are big white birds that fly in the air around this area.
kill 4 Thundermar Gryphon Rider |q 28874/1 |goto Twilight Highlands/0 51.20,40.40
kill Wildhammer Warbrand##46320+
collect 8 Wildhammer Insignia##62325 |q 28871/1 |goto Twilight Highlands/0 51.20,40.40
step
talk Harkkan##46318
turnin Total War##28872 |goto Twilight Highlands/0 55.10,43.60
turnin Hook 'em High##28874 |goto Twilight Highlands/0 55.10,43.60
step
talk Griff##46319
turnin Another Maw to Feed##28873 |goto Twilight Highlands/0 53.80,43.30
step
talk Grot Deathblow##49387
turnin Bring Down the High Shaman##28875 |goto Twilight Highlands/0 53.90,42.10
step
talk Malkar##50622
turnin Crushing the Wildhammer##28871 |goto Twilight Highlands/0 54.00,41.90
step
Wait for the Daily Quests to Reset
'|complete not completedq(28872,28874,28873,28875,28871) |next "Reset"
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Tol Barad Dailies",{
expansion="mists",
achieveid={4874},
patch='40003',
description="Walks you through completing the daily quests in Tol Barad.",
},[[
step
label "begin"
You will only be able to accept a total of 6 quests in the following guide steps.
confirm
step
talk 3rd Officer Kronkar##48360
accept A Sticky Task##28684 |goto Tol Barad Peninsula 55.20,81.30
accept Boosting Morale##28680 |goto Tol Barad Peninsula 55.20,81.30
accept Captain P. Harris##28678 |goto Tol Barad Peninsula 55.20,81.30
accept Rattling Their Cages##28679 |goto Tol Barad Peninsula 55.20,81.30
accept Shark Tank##28681 |goto Tol Barad Peninsula 55.20,81.30
accept Thinning the Brood##28683 |goto Tol Barad Peninsula 55.20,81.30
noquest
step
talk Commander Larmash##48358
accept Claiming The Keep##28682 |goto Tol Barad Peninsula 53.50,80.60
accept Leave No Weapon Behind##28685 |goto Tol Barad Peninsula 53.50,80.60
accept Not The Friendliest Town##28686 |goto Tol Barad Peninsula 53.50,80.60
accept Teach A Man To Fish.... Or Steal##28687 |goto Tol Barad Peninsula 53.50,80.60
accept Walk A Mile In Their Shoes##28721 |goto Tol Barad Peninsula 53.50,80.60
noquest
step
talk Captain Prug##48363
accept Finish The Job##28693 |goto Tol Barad Peninsula 54.90,79.30
accept First Lieutenant Connor##28691 |goto Tol Barad Peninsula 54.90,79.30
accept Magnets, How Do They Work?##28692 |goto Tol Barad Peninsula 54.90,79.30
accept Salvaging the Remains##28690 |goto Tol Barad Peninsula 54.90,79.30
accept The Forgotten##28689 |goto Tol Barad Peninsula 54.90,79.30
noquest
step
talk Private Sarlosk##48361
accept Bomb's Away!##28696 |goto Tol Barad Peninsula 55.80,78.50
accept Cannonball!##28698 |goto Tol Barad Peninsula 55.80,78.50
accept Ghostbuster##28697 |goto Tol Barad Peninsula 55.80,78.50
accept Taking the Overlook Back##28700 |goto Tol Barad Peninsula 55.80,78.50
accept WANTED: Foreman Wellson##28695 |goto Tol Barad Peninsula 55.80,78.50
accept Watch Out For Splinters!##28694 |goto Tol Barad Peninsula 55.80,78.50
noquest
step
Follow the path up |goto Tol Barad Peninsula 74.30,42.80 < 10
|only if haveq(28700) or haveq(28697) or haveq(28698)
stickystart "cannonstack"
step
kill Commander Largo##47304 |q 28700/1 |goto Tol Barad Peninsula 78.60,42.00 |tip He's at the top of the tower.
|only if haveq(28700)
step
label "cannonstack"
kill Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+ |only if haveq(28697)
Slay #14# Largo's Overlook Ghosts |q 28697/1 |goto Tol Barad Peninsula 78.20,49.00 |only if haveq(28697)
Click Stacks of Cannonballs  |only if haveq(28698)
|tip They look like piles of cannonballs shaped like pyramids on the ground around this area. |only if haveq(28698)
collect 4 Stack of Cannonballs##62818 |q 28698/1 |goto Tol Barad Peninsula 78.20,49.00 |only if haveq(28698)
|only if haveq(28697) or haveq(28698)
step
Click Strings of Fish
|tip They look like small fish hanging from simple wooden structures on the docks around this area.
collect 22 Rustberg Seabass##63047 |q 28687/1 |goto Tol Barad Peninsula 69.30,23.10
|only if haveq(28687)
step
kill Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
kill 14 Rustberg Village Residents |q 28686/1 |goto Tol Barad Peninsula 67.60,37.10
|only if haveq(28686)
step
kill 12 Darkwood Lurker##46508 |q 28683/1 |goto Tol Barad Peninsula 54.20,47.00 |only if haveq(28683)
kill Darkwood Broodmother##46507+ |only if haveq(28684)
collect 4 Sticky Silk Gland##62803 |q 28684/1 |goto Tol Barad Peninsula 54.20,47.00 |only if haveq(28684)
|only if haveq(28683) or haveq(28684)
step
kill Captain P. Harris##47287 |q 28678/1 |goto Tol Barad Peninsula 47.90,8.10
|tip He's walking around on this broken boat.
|only if haveq(28678)
step
kill Tank##46608 |q 28681/1 |goto Tol Barad Peninsula 49.40,19.80 |only if haveq(28681)
|tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help. |only if haveq(28681)
Click Barrels of Southsea Rum |only if haveq(28680)
|tip They look like barrels underwater around this area. |only if haveq(28680)
collect 6 Barrel of Southsea Rum##62810 |q 28680/1 |goto Tol Barad Peninsula 49.40,19.80 |only if haveq(28680)
|only if haveq(28681) or haveq(28680)
step
kill 8 Shipwrecked Sailor##46605 |q 28679/1 |goto Tol Barad Peninsula 49.00,29.40
|only if haveq(28679)
step
kill Keep Lord Farson##47447 |q 28682/1 |goto Tol Barad Peninsula 36.10,27.30
|tip He's upstairs in the fort.
|only if haveq(28682)
step
talk Farson Hold Prisoner##48308
Tell you're here to help him escape
Escort the Farson Prisoner |q 28721/1 |goto Tol Barad Peninsula 37.80,29.10
|tip Follow the Farson Hold Prisoner and protect him.
|only if haveq(28721)
step
Click Racks of Rifles
|tip They look like wooden stands with guns on them around this area.
collect 12 Rusty Rifle##62921 |q 28685/1 |goto Tol Barad Peninsula 41.20,35.80
|only if haveq(28685)
step
kill Foreman Wellson##46648 |q 28695/1 |goto Tol Barad Peninsula 27.20,47.70
|only if haveq(28695)
step
Click a Cannon
|tip They look like black cannons on this small dock.
Shoot the boats
Destroy #10# Wellson Supply Boats |q 28696/1 |goto Tol Barad Peninsula 22.20,36.30
|only if haveq(28696)
step
kill Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
collect 15 Shipyard Lumber##62811 |q 28694/1 |goto Tol Barad Peninsula 30.10,43.90
|only if haveq(28694)
step
kill 5 Restless Soldier##46825 |q 28693/1 |goto Tol Barad Peninsula 40.20,57.90 |only if haveq(28693)
Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829 |only if haveq(28692)
Click Siege Scraps |only if haveq(28692)
|tip They look like metal objects on the ground that appear after your use your Magnatized Scrap Collector. |only if haveq(28692)
collect 7 Siege Engine Scrap##52285 |q 28692/1 |goto Tol Barad Peninsula 40.20,57.90 |only if haveq(28692)
|only if haveq(28693) or haveq(28692)
stickystart "torturedsouls"
step
kill First Lieutenant Connor##46571 |q 28691/1 |goto Tol Barad Peninsula 38.40,77.60
|tip He's a big skeleton that walks around this area, so you may need to search for him.
|only if haveq(28691)
step
label "torturedsouls"
kill Wandering Soul##46586+, Forgotten Ghoul##46569+ |only if haveq(28690)
collect 9 Cursed Femur##62808 |q 28690/1 |goto Tol Barad Peninsula 38.10,71.50 |only if haveq(28690)
Click Forgotten Soldier's Tombstones |only if haveq(28689)
|tip They look like taller and slimmer gravestones around this area. |only if haveq(28689)
Release #6# Tortured Souls |q 28689/1 |goto Tol Barad Peninsula 38.10,71.50 |only if haveq(28689)
|only if haveq(28690) or haveq(28689)
step
talk 3rd Officer Kronkar##48360
turnin A Sticky Task##28684 |goto Tol Barad Peninsula 55.20,81.30 |only if haveq(28684)
turnin Boosting Morale##28680 |goto Tol Barad Peninsula 55.20,81.30 |only if haveq(28680)
turnin Captain P. Harris##28678 |goto Tol Barad Peninsula 55.20,81.30 |only if haveq(28678)
turnin Rattling Their Cages##28679 |goto Tol Barad Peninsula 55.20,81.30 |only if haveq(28679)
turnin Shark Tank##28681 |goto Tol Barad Peninsula 55.20,81.30 |only if haveq(28681)
turnin Thinning the Brood##28683 |goto Tol Barad Peninsula 55.20,81.30 |only if haveq(28683)
step
talk Commander Larmash##48358
turnin Claiming The Keep##28682 |goto Tol Barad Peninsula 53.50,80.60 |only if haveq(28682)
turnin Leave No Weapon Behind##28685 |goto Tol Barad Peninsula 53.50,80.60 |only if haveq(28685)
turnin Not The Friendliest Town##28686 |goto Tol Barad Peninsula 53.50,80.60 |only if haveq(28686)
turnin Teach A Man To Fish.... Or Steal##28687 |goto Tol Barad Peninsula 53.50,80.60 |only if haveq(28687)
turnin Walk A Mile In Their Shoes##28721 |goto Tol Barad Peninsula 53.50,80.60 |only if haveq(28721)
step
talk Captain Prug##48363
turnin Finish The Job##28693 |goto Tol Barad Peninsula 54.90,79.30 |only if haveq(28693)
turnin First Lieutenant Connor##28691 |goto Tol Barad Peninsula 54.90,79.30 |only if haveq(28691)
turnin Magnets, How Do They Work?##28692 |goto Tol Barad Peninsula 54.90,79.30 |only if haveq(28692)
turnin Salvaging the Remains##28690 |goto Tol Barad Peninsula 54.90,79.30 |only if haveq(28690)
turnin The Forgotten##28689 |goto Tol Barad Peninsula 54.90,79.30 |only if haveq(28689)
step
talk Private Sarlosk##48361
turnin Bomb's Away!##28696 |goto Tol Barad Peninsula 55.80,78.50 |only if haveq(28696)
turnin Cannonball!##28698 |goto Tol Barad Peninsula 55.80,78.50 |only if haveq(28698)
turnin Ghostbuster##28697 |goto Tol Barad Peninsula 55.80,78.50 |only if haveq(28697)
turnin Taking the Overlook Back##28700 |goto Tol Barad Peninsula 55.80,78.50 |only if haveq(28700)
turnin WANTED: Foreman Wellson##28695 |goto Tol Barad Peninsula 55.80,78.50 |only if haveq(28695)
turnin Watch Out For Splinters!##28694 |goto Tol Barad Peninsula 55.80,78.50 |only if haveq(28694)
step
The following daily quests will only be available if the Horde faction currently controls Tol Barad.
Click here to continue |confirm
Click here if your faction does not control Tol Barad |confirm |next "end"
step
talk Commander Zanoth##48069
accept A Huge Problem##28657 |goto Tol Barad 50.90,49.70
accept Swamp Bait##28658 |goto Tol Barad 50.90,49.70
accept The Leftovers##28659 |goto Tol Barad 50.90,49.70
noquest
step
Click here if Staff Sergeant Lazgar is present |goto Tol Barad 51.40,49.60 |confirm |next "lazgar_is_here"
Click here if Drillmaster Razgoth is present |goto Tol Barad 51.40,49.60 |confirm |next "razgoth_is_here"
Click here if Private Garnoth is present |goto Tol Barad 51.40,49.60 |confirm |next "garnoth_is_here"
|only one of these NPCs will be available
step
label "razgoth_is_here"
talk Drillmaster Razgoth##48070
accept D-Block##28663 |goto Tol Barad 51.50,49.70
accept Svarnos##28664 |goto Tol Barad 51.50,49.70
accept Cursed Shackles##28665 |goto Tol Barad 51.50,49.70
|next "exit"
step
label "garnoth_is_here"
talk Private Garnoth##48071
accept Clearing the Depths##28660 |goto Tol Barad 51.50,49.70
accept Learning From The Past##28662 |goto Tol Barad 51.50,49.70
accept The Imprisoned Archmage##28661 |goto Tol Barad 51.50,49.70
|next "exit"
step
label "lazgar_is_here"
talk Staff Sergeant Lazgar##48062
accept Food From Below##28670 |goto Tol Barad 51.50,49.70
accept Prison Revolt##28668 |goto Tol Barad 51.50,49.70
accept The Warden##28669 |goto Tol Barad 51.50,49.70
|next "exit"
step
label "exit"
Continuing...
step
Enter the underground jail |goto Tol Barad 42.70,39.10 < 10
|only if haveq(28664) or haveq(28663) or haveq(28665)
stickystart "cursedshackles"
step
kill Svarnos##47544+
collect Svarnos' Cursed Collar##63143 |q 28664/1 |goto Tol Barad 48.30,30.70
|only if haveq(28664)
step
label "cursedshackles"
kill Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+ |only if haveq(28663)
Slay #10# Demons |q 28663/1 |goto Tol Barad 44.40,30.50 |only if haveq(28663)
Click Cursed Shackles |only if haveq(28665)
|tip They look like gray metal ball and chains laying on the ground all around this area. |only if haveq(28665)
collect 8 Cursed Shackles##63149 |q 28665/1 |goto Tol Barad 44.40,30.50 |only if haveq(28665)
|only if haveq(28663) or haveq(28665)
step
kill Baradin Crocolisk##47591+
collect 8 Crocolisk Hide##63103 |q 28658/1 |goto Tol Barad 42.10,41.80
|only if haveq(28658)
step
Enter the underground jail |goto Tol Barad 44.00,69.20 < 10
|only if haveq(28669) or haveq(28668) or haveq(28670)
step
kill Warden Silva##48036
collect Warden's Keys##63309 |q 28669/1 |goto Tol Barad 37.50,71.70
|only if haveq(28669)
step
kill Imprisoned Worker##47550+, Exiled Mage##47552+ |only if haveq(28668)
Slay #10# Prisoners |q 28668/1 |goto Tol Barad 40.90,78.20 |only if haveq(28668)
Click Crates of Cellblock Rations |only if haveq(28670)
|tip They look like slim square wooden boxes on the ground around this area. |only if haveq(28670)
collect 12 Cellblock Ration##63315 |q 28670/1 |goto Tol Barad 40.90,78.20 |only if haveq(28670)
|only if haveq(28668) or haveq(28670)
step
Enter the underground jail |goto Tol Barad 60.80,50.10 < 10
|only if haveq(28661)
step
kill Archmage Galus##47537
collect Archmage Galus' Staff##63033 |q 28661/1 |goto Tol Barad 56.80,54.80
|only if haveq(28661)
step
kill Captive Spirit##47531+, Ghastly Convict##47590+ |only if haveq(28660)
Slay #9# Ghosts |q 28660/1 |goto Tol Barad 51.40,49.50 |only if haveq(28660)
Click Dusty Prison Journals |only if haveq(28662)
|tip They are books laying on the ground around this area. |only if haveq(28662)
collect 4 Dusty Prison Journal##63034 |q 28662/1 |goto Tol Barad 51.40,49.50 |only if haveq(28662)
|only if haveq(28660) or haveq(28662)
step
kill Alliance Mage Infantry##47598+, Alliance Hunter Infantry##47595+, Alliance Paladin Infantry##47600+, Alliance Warrior Infantry##47599+
kill 12 Alliance Infantry |q 28659/1 |goto Tol Barad 35.80,67.80
|only if haveq(28659)
step
kill Problim##47593 |q 28657/1 |goto Tol Barad 52.80,36.70
|tip He's a tall ogre that walks along the road that surrounds Baradin Hold, so you may need to search for him.  He's elite, and the quest is a group quest, so you may need help killing him.
|only if haveq(28657)
step
talk Commander Zanoth##48069
turnin A Huge Problem##28657 |goto Tol Barad 50.90,49.70
turnin Swamp Bait##28658 |goto Tol Barad 50.90,49.70
turnin The Leftovers##28659 |goto Tol Barad 50.90,49.70
step
talk Drillmaster Razgoth##48070
turnin D-Block##28663 |goto Tol Barad 51.50,49.70
turnin Svarnos##28664 |goto Tol Barad 51.50,49.70
turnin Cursed Shackles##28665 |goto Tol Barad 51.50,49.70
|only if haveq(28663) or haveq(28664) or haveq(28665)
step
talk Private Garnoth##48071
turnin Clearing the Depths##28660 |goto Tol Barad 51.50,49.70
turnin Learning From The Past##28662 |goto Tol Barad 51.50,49.70
turnin The Imprisoned Archmage##28661 |goto Tol Barad 51.50,49.70
|only if haveq(28660) or haveq(28662) or haveq(28661)
step
talk Staff Sergeant Lazgar##48062
turnin Food From Below##28670 |goto Tol Barad 51.50,49.70
turnin Prison Revolt##28668 |goto Tol Barad 51.50,49.70
turnin The Warden##28669 |goto Tol Barad 51.50,49.70
|only if haveq(28670) or haveq(28668) or haveq(28669)
step
label "end"
You have reached the end of the dailies for today
Click here to return to the beginning of the guide |confirm |next "begin"
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Reputation\\Guardians of Hyjal",{
expansion="mists",
description="Walks you through the process of obtaining Exalted reputation with the Guardians of Hyjal faction.",
},[[
step
map Mount Hyjal
To gain reputation with the Guardians of Hyjal faction:
Complete all quests in the Mount Hyjal zone
Once you earn Friendly reputation with the Guardians of Hyjal faction, you can buy the Tabard of the Guardians of Hyjal.
|tip Wear the Tabard of the Guardians of Hyjal and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Guardians of Hyjal faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of the Guardians of Hyjal by talking to Provisioner Whitecloud at [Mount Hyjal 62.80,23.90]
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Reputation\\The Earthen Ring",{
expansion="mists",
description="Walks you through the process of obtaining Exalted reputation with The Earthen Ring faction.",
},[[
step
map Shimmering Expanse
To gain reputation with The Earthen Ring faction:
Complete all quests in the Vashj'ir zone
Complete the Deepholm Pre-Quests guide in the Deepholm section.
Complete the Twilight Highlands Pre-Quests guide in the Twilight Highlands section.
Once you earn Friendly reputation with The Earthen Ring faction, you can buy the Tabard of the Earthen Ring.
|tip Wear the Tabard of the Earthen Ring and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with The Earthen Ring faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of the Earthen Ring by talking to Provisioner Arok at [Shimmering Expanse 49.10,42.20]
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Reputation\\Therazane",{
expansion="mists",
cataready=true,
description="Walks you through the process of obtaining Exalted reputation with the Therazane faction.",
},[[
step
map Deepholm
To gain reputation with the Therazane faction:
Complete the Deepholm Pre-Quests guide in the Deepholm section.
Complete the Therazane's Throne Dailies guide section in the Deepholm section.
|tip Do this daily, if you'd like.
Once you earn Friendly reputation with the Therazane faction, you can buy the Tabard of Therazane.
|tip Wear the Tabard of Therazane and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Therazane faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of Therazane by talking to D'lom the Collector at [Deepholm 56.95,13.08]
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Reputation\\Ramkahen",{
expansion="mists",
description="Walks you through the process of obtaining Exalted reputation with the Ramkahen faction.",
},[[
step
There Are Only 2 Daily Quests For this Faction
|tip You'll need to quest through the Uldum guide to unlock them.
|confirm |next "dailies"
step
label "Reset"
Wait for Dailies to Reset
|tip There are only two daily quests to complete for this faction.
'|complete not completedq(28250,28736)
step
label "dailies"
talk Nomarch Teneth##46603
accept Thieving Little Pluckers##28250 |goto Uldum/0 60.30,38.30
step
use the Tahret Dynasty Mallet##63351
|tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
Smash #30# Thieving Pluckers |q 28250/1 |goto Uldum/0 59.10,38.40
step
talk Nomarch Teneth##46603
turnin Thieving Little Pluckers##28250 |goto Uldum/0 60.30,38.30
step
talk Weathered Nomad##49523
accept Fire From the Sky##28736 |goto Uldum/0 41.40,5.50
step
clicknpc Confiscated Artillery##48644
|tip It looks like a war catapult car machine.
|tip Use the Designate Target ability on your hotbar on the Infantrymen.
Slay #100# Infantrymen |q 28736/1 |goto Uldum/0 41.40,5.50
step
talk Weathered Nomad##49523
turnin Fire From the Sky##28736 |goto Uldum/0 41.40,5.50 |next "Reset"
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Reputation\\Dragonmaw Clan",{
expansion="mists",
description="Walks you through the process of obtaining Exalted reputation with the Dragonmaw Clan faction.",
},[[
step
map Twilight Highlands
To gain reputation with the Dragonmaw Clan faction:
Complete the Twilight Highlands Pre-Quests guide in the Twilight Highlands section.
Complete the Bloodgulch Dailies guide in the Twilight Highlands section.
|tip Do this daily, if you'd like.
Once you earn Friendly reputation with the Dragonmaw Clan faction, you can buy the Tabard of the Dragonmaw Clan.
|tip Wear the Tabard of the Dragonmaw Clan and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Dragonmaw Clan faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of the Dragonmaw Clan by talking to Grot Deathblow at [Twilight Highlands 53.90,42.10]
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Reputation\\Hellscream's Reach",{
expansion="mists",
description="Walks you through the process of obtaining Exalted reputation with the Hellscream's Reach faction.",
},[[
step
map Tol Barad Peninsula
To gain reputation with the Hellscream's Reach faction:
Complete the Hellscream's Grasp Dailies guide in the Tol Barad Peninsula section.
|tip Do this daily, if you'd like.
Complete the Baradin Hold Dailies guide in the Tol Barad section.
|tip Do this daily, if you'd like.  The daily quests in this section will only be available if the Horde faction currently controls Tol Barad.
Once you earn Friendly reputation with the Hellscream's Reach faction, you can buy Hellscream's Reach Commendations from Pogg at [54.50,81.30]
|tip They cost 10 Tol Barad Commendations each and you can use the Hellscream's Reach Commendations to increase your Hellscream's Reach reputation by 250.
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Zandalari Menace Quest Line",{
expansion="mists",
startlevel=1,
description="Walks you through completing the Zandalari Menace quest line in Stranglethorn Vale. You must be level 35 to be able to use this guide.",
},[[
step
talk Bwemba##53081
accept Bwemba's Spirit##29219 |goto Orgrimmar 32.60,68.10
accept To Bambala##29220 |goto Orgrimmar 32.60,68.10
step
talk Kil'karil##52980
turnin To Bambala##29220 |goto Northern Stranglethorn 64.60,40.00
accept Serpents and Poison##29221 |goto Northern Stranglethorn 64.60,40.00
step
kill 10 Jungle Serpent##52224 |q 29221/1 |goto Northern Stranglethorn 61.20,39.80
Click Injured Bambala Headhunters
|tip They look like green bodies laying on the ground around this area.
Heal 10 Headhunters |q 29221/2 |goto Northern Stranglethorn 61.20,39.80
step
talk Kil'karil##52980
turnin Serpents and Poison##29221 |goto Northern Stranglethorn 64.60,40.00
step
Next to you:
talk Bwemba##52234
accept Spirits Are With Us##29222
step
Click the Bonfire
|tip It looks like a big pile of burning sticks.
Watch the dialogue
Use the Bonfire near Bambala |q 29222/1 |goto Northern Stranglethorn 65.10,39.90
step
Next to you:
talk Bwemba##52234
turnin Spirits Are With Us##29222
step
talk Kil'karil##52980
accept Nesingwary Will Know##29223 |goto Northern Stranglethorn 64.60,40.00
step
talk Hemet Nesingwary Jr.##52294
turnin Nesingwary Will Know##29223 |goto Northern Stranglethorn 44.10,22.90
accept Track the Tracker##29226 |goto Northern Stranglethorn 44.10,22.90
step
talk Grent Direhammer##52346
turnin Track the Tracker##29226 |goto Northern Stranglethorn 50.40,21.70
accept The Hunter's Revenge##29227 |goto Northern Stranglethorn 50.40,21.70
step
kill Mauti##52372
Bring Grent Direhammer to the body of Mauti |q 29227/1 |goto Northern Stranglethorn 64.00,19.60
step
Click the Complete Quest box that appears under you minimap
turnin The Hunter's Revenge##29227
You will automatically accept a new quest:
accept Follow That Cat##29228
step
Go to this spot
Find Mauti's Lair |q 29228/1 |goto Northern Stranglethorn 77.70,68.40
step
Next to you:
talk Bwemba##52234
turnin Follow That Cat##29228
accept Mauti##29230
step
kill Mauti##52372
Let Bwemba Inspect the Cat |q 29230/1 |goto Northern Stranglethorn 77.20,69.00
step
Next to you:
talk Bwemba##52234
turnin Mauti##29230
accept How's the Hunter Holding Up?##29231
step
Enter the cave |goto Northern Stranglethorn 76.50,67.50 < 10
step
talk Grent Direhammer##52371
turnin How's the Hunter Holding Up?##29231 |goto Northern Stranglethorn 76.10,66.70
accept Bury Me With Me Boots...##29232 |goto Northern Stranglethorn 76.10,66.70
step
Click Direhammer's Boots
|tip They look like a small pair of brown boots sitting on the ground inside this cave.
collect Direhammer's Boots##68937 |q 29232/1 |goto Northern Stranglethorn 76.00,66.50
step
talk Grent Direhammer##52371
turnin Bury Me With Me Boots...##29232 |goto Northern Stranglethorn 76.10,66.70
step
talk Panther Cub##52374
accept Some Good Will Come##29268 |goto Northern Stranglethorn 76.10,66.70
step
Next to you:
talk Bwemba##52234
accept Warn Grom'gol##29233
step
Leave the cave |goto Northern Stranglethorn 76.50,67.50 < 10
step
talk Commander Aggro'gosh##52996
turnin Warn Grom'gol##29233 |goto Northern Stranglethorn 38.40,50.20
accept Defend Grom'gol##29235 |goto Northern Stranglethorn 38.40,50.20
step
kill Gurubashi War-Seeker##53165+, Gurubashi Bloodfury##52406+, Gurubashi Soul-Seeker##53166+
|tip Once the bar fills up at the bottom of your screen, you will complete the quest.
Help Defend Grom'gol Base Camp |q 29235/1 |goto Northern Stranglethorn 37.50,50.00
step
talk Commander Aggro'gosh##52996
turnin Warn Grom'gol##29233 |goto Northern Stranglethorn 38.40,50.20
accept Defend Grom'gol##29235 |goto Northern Stranglethorn 38.40,50.20
step
talk Thysta##53008
accept To Hardwrench Hideaway##29236 |goto Northern Stranglethorn 39.00,51.20
step
talk Thysta##53008
Tell her you need use of a wyvern to fly you to where the Darkspear emissary went
You will fly to Hardwrench Hideaway
Arrive at Hardwrench Hideaway |q 29236/1 |goto Northern Stranglethorn 39.00,51.20
step
Next to you:
talk Bwemba##52234
turnin To Hardwrench Hideaway##29236
accept Voodoo Zombies##29237
step
kill Hideaway Zombie##53011+
Rescue 10 Hideaway Survivors |q 29237/1 |goto The Cape of Stranglethorn 36.30,31.80
|tip You may not rescue every zombie you kill.
step
Next to you:
talk Bwemba##52234
turnin Voodoo Zombies##29237
accept Bad Supplies##29238
step
Click the Sack of Spices
|tip It looks like a yellow grain bag sitting on the floor next to the wall inside this building.
Watch the dialogue
Search the Supplies |q 29238/1 |goto The Cape of Stranglethorn 33.60,30.20
step
Next to you:
talk Bwemba##52234
turnin Bad Supplies##29238
step
talk Zombie Survivor##53078
accept Making Contact##29250 |goto The Cape of Stranglethorn 33.50,30.40
step
Enter the tunnel |goto The Cape of Stranglethorn 44.90,65.90 < 10
step
talk Vol'jin##52767
turnin Making Contact##29250 |goto The Cape of Stranglethorn 41.00,73.10
step
Go to this spot
Watch the dialogue
Help Bwemba Find the Darkspear Emissary |q 29219/1 |goto The Cape of Stranglethorn 41.20,73.00
step
Next to you:
talk Bwemba##52234
turnin Bwemba's Spirit##29219
step
To continue with the Zul'Gurub dungeon quest line:
talk Baron Revilgaz##2496
accept Booty Bay's Interests##29251 |goto The Cape of Stranglethorn 41.20,73.10
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Mount Hyjal\\The Call of the World-Shaman Quest Line",{
expansion="mists",
description="Walks you through completing the Call of the World-Shaman quest line.",
},[[
step
talk Farseer Krogar##45244
accept The Call of the World-Shaman##29440 |goto Orgrimmar,50.50,38.40
step
talk Thrall##54313
turnin The Call of the World-Shaman##29440 |goto Mount Hyjal,60.60,31.50
accept The Nordrassil Summit##29326 |goto Mount Hyjal,60.60,31.50
step
talk Thrall##54313
Tell him you are ready
Watch the cutscene
Witness the Ceremony |q 29326/1 |goto Mount Hyjal 60.60,31.50
step
talk Aggra##54312
turnin The Nordrassil Summit##29326 |goto Mount Hyjal 60.20,30.10
accept Into Slashing Winds##29335 |goto Mount Hyjal 60.20,30.10
step
talk Aggra##54312 |goto Mount Hyjal 60.20,30.10
Tell her you are ready to travel to Uldum
You will teleport to Uldum |goto Uldum,47.80,88.00,0.50 |noway |c
step
talk Cyclonas##53524
turnin Into Slashing Winds##29335 |goto Uldum,47.60,88.90
accept Elemental Bonds: Doubt##29327 |goto Uldum,47.60,88.90
step
talk Cyclonas##53524 |goto Uldum 47.60,88.90
Tell him to take you to Thrall
You will fly up to the top of a tower |goto Uldum 34.30,77.50,0.50 |noway |c
step
kill Essence of Doubt##53516+, Shadow of Doubt##53530+
You will need to fill up the Protecting Thrall bar at the bottom of your screen
Protect Thrall from the Elements |q 29327/1 |goto Uldum 34.40,78.10
step
talk Aggra##53519
turnin Elemental Bonds: Doubt##29327 |goto Uldum 34.30,77.50
accept Into Coaxing Tides##29336 |goto Uldum 34.30,77.50
step
talk Aggra##53519 |goto Uldum 34.30,77.50
Tell her you are ready to travel to the Abyssal Maw
You will teleport to the Abyssal Depths |goto Abyssal Depths,69.70,34.80,0.50 |noway |c
step
talk Hydrius##53677
turnin Into Coaxing Tides##29336 |goto Abyssal Depths,69.50,34.30
step
talk Aggra##53652
accept Elemental Bonds: Desire##29328 |goto Abyssal Depths 69.80,34.20
step
kill Vortex of Longing##53647+, Tides of Longing##53646+
You will need to fill up the Protecting Thrall bar at the bottom of your screen
Protect Thrall from the Elements |q 29327/1 |goto Abyssal Depths 67.90,27.20
Click Aggra |tip She is floating in a circle inside of a bubble near the bottom of the huge whirlpool.
Protect Aggra from the Elements |q 29328/2 |goto Abyssal Depths 67.90,27.20
step
talk Aggra##53652
turnin Elemental Bonds: Desire##29328 |goto Abyssal Depths 69.80,34.20
accept Into Constant Earth##29337 |goto Abyssal Depths 69.80,34.20
step
talk Aggra##53652 |goto Abyssal Depths 69.80,34.20
Tell her you are ready to travel to Deepholm
You will teleport to Deepholm |goto Deepholm,56.30,13.00,0.50 |noway |c
step
talk Therazane##42465
turnin Into Constant Earth##29337 |goto Deepholm,56.30,12.20
step
talk Aggra##53738
accept Elemental Bonds: Patience##29329 |goto Deepholm 56.50,12.50
step
talk Aggra##53738 |goto Deepholm 56.50,12.50
Tell her you are ready
You will be taken to the Staidridge |goto Deepholm 64.20,46.00,0.50 |noway |c
step
kill Element of Patience##53739+, Corestone of Patience##53894+
You will need to fill up the Protecting Thrall bar at the bottom of your screen
Help Thrall Break Out of His Stone Prison |q 29329/1 |goto Deepholm 64.20,46.00
step
talk Aggra##53738
turnin Elemental Bonds: Patience##29329 |goto Deepholm 64.00,46.10
accept Into Unrelenting Flame##29338 |goto Deepholm 64.00,46.10
step
talk Aggra##53738
Tell her let us go to the Firelands and finish this
Teleport into the Firelands |q 29338/1 |goto Deepholm 64.00,46.10
step
talk Aggra##54014
turnin Into Unrelenting Flame##29338 |goto Molten Front,49.60,31.70
step
talk Aggra##53925
accept Elemental Bonds: Fury##29330 |goto Molten Front 51.50,25.80
step
kill Flames of Fury##53929+, Seed of Fury##53928+
You will need to fill up the Freeing Thrall bar at the bottom of your screen
|tip You will get onscreen instructions on where to kill the mobs.  You have to kill then next to certain Totems at certain times.
Activate Aggra's Totems to Save Thrall |q 29330/1 |goto Molten Front 52.90,24.60
step
Click the Complete Quest box that appears under your minimap
turnin Elemental Bonds: Fury##29330
accept Elemental Bonds: The Vow##29331
step
talk Thrall##54168
turnin Elemental Bonds: The Vow##29331 |goto Mount Hyjal,60.20,29.80
step
Congratulations, you saved Thrall!
]])
