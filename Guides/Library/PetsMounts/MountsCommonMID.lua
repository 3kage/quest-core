-- Bundled QuestCore guide
if not QuestCore then return end

QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Trading Post Mounts\\Arboreal Pseudoshell",{
patch='120000',
source='Trading Post',
author="QuestCore",
description="This guide will help you acquire the Arboreal Pseudoshell mount.",
keywords={"Trading Post","Ground"},
mounts={1266993},
mounttype="Ground",
startlevel=10,
},[[
step
earn 450 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1266993) |or
step
Talk to the Trading Post Vendor
buy Arboreal Pseudoshell##260893 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1266993) |or
step
use Arboreal Pseudoshell##260893
|tip Unwrap this in your mount collection.
learnmount Arboreal Pseudoshell##1266993
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Vendor Mounts\\Amani Blessed Bear",{
patch='120000',
source='Vendor',
author="QuestCore",
description="This guide will help you acquire the Amani Blessed Bear mount.",
keywords={"Vendor","Ground"},
mounts={1261357},
mounttype="Ground",
startlevel=10,
},[[
step
Reach Renown {p}Rank 17{} with {y}Amani Tribe{} |complete factionrenown(2696) >= 17 |or
|tip Use the {b}Amani Tribe{} Reputation Guide to achieve this.
loadguide "Reputation Guides\\The War Within Reputations\\Amani Tribe"
'|complete hasmount(1261357) |or
step
earn 6000 Voidlight Marl##3316 |or
|tip You get this currency by killing rare enemies, opening treasures and caches, completing quests, world quests, delves, dungeons, and prey hunts, in Zul'Aman.
'|complete hasmount(1261357) |or
step
talk Magovu##240279
|tip Inside the building.
buy Amani Blessed Bear##257219 |goto Zul Aman M/0 45.95,65.92 |or
'|complete hasmount(1261357) |or
step
use Amani Blessed Bear##257219
learnmount Amani Blessed Bear##1261357
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Dropped Mounts\\Ancestral War Bear",{
patch='120000',
source='Dropped',
author="QuestCore",
description="This guide will help you acquire the Ancestral War Bear mount.",
keywords={"Dropped","Ground"},
mounts={1261360},
mounttype="Ground",
startlevel=10,
},[[
step
click Honored Warrior's Urn##613701
|tip You will be attacked.
kill Nalorakk's Chosen##255171 |n
collect Bear Tooth##259219 |goto Zul Aman M/0 32.70,83.49 |or
'|complete hasmount(1261360) |or
step
click Honored Warrior's Urn##613760
|tip You will be attacked.
kill Halazzi's Chosen##255232 |n
collect Lynx Claw##259223 |goto Zul Aman M/0 34.54,33.46 |or
'|complete hasmount(1261360) |or
step
click Honored Warrior's Urn##613757
|tip You will be attacked.
kill Jan'alai's Chosen##255233 |n
collect Dragonhawk Feather##259220 |goto Zul Aman M/0 54.78,22.39 |or
'|complete hasmount(1261360) |or
step
click Honored Warrior's Urn##613701
|tip You will be attacked.
kill Akil'zon's Chosen##255231 |n
collect Eagle Talon##259221 |goto Zul Aman M/0 51.58,84.92 |or
'|complete hasmount(1261360) |or
step
Enter the cave |goto Zul Aman M/0 46.95,82.29 < 10 |walk
|tip Under the giant broken tree.
click Honored Warrior's Cache##613727
|tip Inside the cave.
collect Ancestral War Bear##257223 |goto Zul Aman M/0 46.83,81.87 |or
'|complete hasmount(1261360) |or
step
use Ancestral War Bear##257223
learnmount Ancestral War Bear##1261360
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Vendor Mounts\\Blessed Amani Burrower",{
patch='120000',
source='Vendor',
author="QuestCore",
description="This guide will help you acquire the Blessed Amani Burrower mount.",
keywords={"Vendor","Ground"},
mounts={1261348},
mounttype="Ground",
startlevel=10,
},[[
step
earn 1600 Unalloyed Abundance##3377 |or
|tip Earn this currency from Abundance Events.
|tip Use the Abundance Leveling guide to unlock this.
loadguide "Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Abundance"
'|complete hasmount(1261348) |or
step
Talk to Chel the Chip
|tip This is the Abundance Vendor who can be found in all the Midnight zones.
Eversong Woods [Eversong Woods M/0 56.82,65.82]
Zul'Aman North [Zul Aman M/0 32.04,26.11]
Harandar [Harandar/0 66.00,61.58]
Voidstorm [Voidstorm/0 38.78,53.20]
buy Blessed Amani Burrower##257197
learnmount Blessed Amani Burrower##1261348
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Dropped Mounts\\Cerulean Hawkstrider",{
patch='120000',
source='Dropped',
author="QuestCore",
description="This guide will help you acquire the Cerulean Hawkstrider mount.",
keywords={"Dropped","Ground"},
mounts={1261323},
mounttype="Ground",
startlevel=80,
},[[
step
Kill rare enemies in Eversong Woods
|tip The mount drop is available on the first kill of every daily reset.
Click Here to Kill {b}Harried Hawkstrider{} (Runs around a circular path.) |goto Eversong Woods M/0 44.95,78.38
Click Here to Kill {b}Bloated Snapdragon{} |goto Eversong Woods M/0 36.48,63.83
Click Here to Kill {b}Dame Bloodshed{} |goto Eversong Woods M/0 45.62,38.78
Click Here to Kill {b}Malfunctioning Construct{} |goto Eversong Woods M/0 51.73,45.70
Click Here to Kill {b}Duskburn{} (Patrols.) |goto Eversong Woods M/0 42.31,68.69
Click Here to Kill {b}Banuran{} (Spawns on the island.) |goto Eversong Woods M/0 56.44,77.62
Click Here to Kill {b}Terrinor{} (It's a large bat flying above.) |goto Eversong Woods M/0 40.33,85.28
Click Here to Kill {b}Lady Liminus{} |goto Eversong Woods M/0 36.62,77.32
Click Here to Kill {b}Warden of Weeds{} (Patrols a circular path around the landscaped sun.) |goto Eversong Woods M/0 51.50,74.36
Click Here to Kill {b}Coralfang{} |goto Eversong Woods M/0 36.55,36.24
Click Here to Kill {b}Lost Guardian{} |goto Eversong Woods M/0 59.12,79.24
Click Here to Kill {b}Bad Zed{} (Inside the building.) |goto Eversong Woods M/0 48.93,87.81
Click Here to Kill {b}Waverly{} (Click the Lovely Sunflower) |goto Eversong Woods M/0 34.85,20.91
Click Here to Kill {b}Cre'van{} |goto Eversong Woods M/0 63.05,49.85
Click Here to Kill {b}Overfester Hydra{} |goto Eversong Woods M/0 54.72,60.19
collect Cerulean Hawkstrider##257156 |or
'|complete hasmount(1261323) |or
step
use Cerulean Hawkstrider##257156
learnmount Cerulean Hawkstrider##1261323
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Vendor Mounts\\Crimson Silvermoon Hawkstrider",{
patch='120000',
source='Vendor',
author="QuestCore",
description="This guide will help you acquire the Crimson Silvermoon Hawkstrider mount.",
keywords={"Vendor","Ground"},
mounts={1261322},
mounttype="Ground",
startlevel=10,
},[[
step
Reach Renown {p}Rank 17{} with {y}Silvermoon Court{} |complete factionrenown(2710) >= 17 |or
|tip Use the {b}Silvermoon Court{} Reputation Guide to achieve this.
loadguide "Reputation Guides\\The War Within Reputations\\Silvermoon Court"
'|complete hasmount(1261322) |or
step
earn 6000 Voidlight Marl##3316 |or
|tip You get this currency by killing rare enemies, opening treasures and caches, completing quests, world quests, delves, dungeons, and prey hunts, in Zul'Aman.
'|complete hasmount(1261322) |or
step
talk Caeris Fairdawn##240838
Select _"I want to browse your goods."_ |gossip 138627
buy Crimson Silvermoon Hawkstrider##257154 |goto Eversong Woods M/0 43.46,47.42 |or
'|complete hasmount(1261322) |or
step
use Crimson Silvermoon Hawkstrider##257154
learnmount Crimson Silvermoon Hawkstrider##1261322
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Quest Mounts\\Emerald Hawkstrider",{
patch='120000',
source='Quest',
author="QuestCore",
description="This guide will help you acquire the Emerald Hawkstrider mount.",
keywords={"Quest","Ground"},
mounts={1265785},
mounttype="Ground",
startlevel=90,
},[[
step
Complete _The Battle of the Bridge_ Midnight quest scenario
|tip This mount, and associated pet, both drop upon completion of this quest.
|tip It is a main storyline quest you are offered upon reaching level 90.
|tip You can use {b}The War of Light and Shadow Campaign{} Leveling Guide to complete this.
loadguide "Leveling Guides\\Midnight (80-90)\\The War of Light and Shadow Campaign"
collect Emerald Hawkstrider##260233 |or
'|complete hasmount(1265785) |or
step
use Emerald Hawkstrider##260233
learnmount Emerald Hawkstrider##1265785
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Vendor Mounts\\Fierce Grimlynx",{
patch='120000',
source='Vendor',
author="QuestCore",
description="This guide will help you acquire the Fierce Grimlynx mount.",
keywords={"Vendor","Ground"},
mounts={1243593},
mounttype="Ground",
startlevel=10,
},[[
step
Reach Renown {y}Rank 16{} with the {b}Hara'ti{} |complete factionrenown(2704) >= 16 |or
|tip Use the {b}Hara'ti{} Reputation Guide to achieve this.
loadguide "Reputation Guides\\The War Within Reputations\\Hara'ti"
'|complete hasmount(1243593) |or
step
earn 6000 Voidlight Marl##3316 |or
|tip You get this currency by killing rare enemies, opening treasures and caches, completing quests, world quests, delves, dungeons, and other events, in Harandar.
'|complete hasmount(1243593) |or
step
talk Naynar##240407
|tip Outside the tent.
buy Fierce Grimlynx##246734 |goto Harandar/0 50.95,50.73 |or
'|complete hasmount(1243593) |or
step
use Fierce Grimlynx##246734
learnmount Fierce Grimlynx##1243593
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Vendor Mounts\\Frenzied Shredclaw",{
patch='120000',
source='Vendor',
author="QuestCore",
description="This guide will help you acquire the Frenzied Shredclaw mount.",
keywords={"Vendor","Ground"},
mounts={1261585},
mounttype="Ground",
startlevel=90,
},[[
step
ding 90
step
use Personal Key to the Arcantina##253629
Reach {p}Exalted{} with {b}Slayer's Duellum{} |complete factionrenown(2770) == Exalted |goto Slayers Rise/0 39.34,80.95 |or
|tip Complete daily and weekly {r}PVP{} quests at {o}The Master's Perch{} in {o}Voidstorm{} for reputation.
|tip The repeatable quest there, {b}Collecting Remains{} from {p}Deminos Darktrance{}, is debatably the best way to quickly boost your reputation.
|tip Use {p}Inky Black Potion{} to clearly see the {w}Void-Tainted Remains{} for easy gathering of these rep items.
|tip These little black potions are avalable at {p}Darkmoon Faire{} from vendor, {g}Rona Greenteeth{} (see coordinates below if DMF is active), and also inside {p}The Arcantina{} on top of tables, boxes, countertops, and even on the floor.
|tip Reach {p}The Arcantina{} using your personal key (toy), or via the portal inside the Wayfarer's Rest in Silvermoon City (click coordinates below), both unlocked by completing {y}Arator's Journey{} Leveling questline.
'|complete hasmount(1261585) |or
{g}Rona Greenteeth{} at {p}Darkmoon Faire{} 36.60,57.60
Arcantina Portal [Silvermoon City M/0 56.42,70.80]
step
earn 6000 Voidlight Marl##3316 |or
|tip You get this currency by killing rare enemies, opening treasures and caches, completing quests, world quests, delve quests, dungeon quests, and prey hunts, in any Midnight area, including quests, daily quests, and weekly quests in your neighborhood.
'|complete hasmount(1261585) |or
step
talk Thraxadar##258328
buy Frenzied Shredclaw##257448 |goto Slayers Rise/0 39.17,89.02 |or
'|complete hasmount(1261585) |or
step
use Frenzied Shredclaw##257448
learnmount Frenzied Shredclaw##1261585
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Trading Post Mounts\\Gilneas Loyalist's Rouncey",{
patch='120000',
source='Trading Post',
author="QuestCore",
description="This guide will teach you how to acquire the Gilneas Loyalist's Rouncey ground mount.",
keywords={"Trading Post","Ground"},
mounts={1282276},
mounttype="Ground",
startlevel=10,
},[[
step
earn 500 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1282276) |or
step
Talk to the Trading Post Vendor
buy Gilneas Loyalist's Rouncey##268364 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1282276) |or
step
use Gilneas Loyalist's Rouncey##268364
|tip Unwrap this in your mount collection.
learnmount Gilneas Loyalist's Rouncey##1282276
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Dropped Mounts\\Lucent Hawkstrider",{
patch='120000',
source='Drop',
author="QuestCore",
description="This guide will help you acquire the Lucent Hawkstrider mount.",
keywords={"Drop","Ground"},
mounts={1265784},
mounttype="Ground",
startlevel=10,
},[[
step
Enter {b}Magister's Terrace{} on {p}Mythic{} difficulty
kill Degentrius##231865
|tip It may take more than one run to obtain the mount.
collect Lucent Hawkstrider##260231 |or
'|complete hasmount(1265784) |or
step
use Lucent Hawkstrider##260231
learnmount Lucent Hawkstrider##1265784
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Vendor Mounts\\Prowling Shredclaw",{
patch='120000',
source='Vendor',
author="QuestCore",
description="This guide will help you acquire the Prowling Shredclaw mount.",
keywords={"Vendor","Ground"},
mounts={1261584},
mounttype="Ground",
startlevel=90,
},[[
step
ding 90
step
Complete "Arator's Journey" questline
|tip Use the {y}Arator's Journey{} Leveling guide to help you complete this.
loadguide
step
use Personal Key to the Arcantina##253629
Reach {p}Exalted{} with {b}Slayer's Duellum{} |complete factionrenown(2770) == Exalted |goto Slayers Rise/0 39.34,80.95 |or
|tip Complete daily and weekly {r}PVP{} quests at {o}The Master's Perch{} in {o}Voidstorm{} for reputation.
|tip The repeatable quest there, {b}Collecting Remains{} from {p}Deminos Darktrance{}, is debatably the best way to quickly boost your reputation.
|tip Use {p}Inky Black Potion{} to clearly see the {w}Void-Tainted Remains{} for easy gathering of these rep items.
|tip These little black potions are avalable at {p}Darkmoon Faire{} from vendor, {g}Rona Greenteeth{} (see coordinates below if DMF is active), and also inside {p}The Arcantina{} on top of tables, boxes, countertops, and even on the floor.
|tip Reach {p}The Arcantina{} using your personal key (toy), or via the portal in Wayfarer's Rest in Silvermoon City (click coordinates below), both unlocked by completing {y}Arator's Journey{} Leveling questline.
'|complete hasmount(1261584) |or
{g}Rona Greenteeth{} {p}Darkmoon Faire{} at 36.60,57.60
Arcantina Portal [Silvermoon City M/0 56.42,70.80]
step
earn 6000 Voidlight Marl##3316 |or
|tip You get this currency by killing rare enemies, opening treasures and caches, completing quests, world quests, delve quests, dungeon quests, and prey hunts, in any Midnight area, including quests, daily quests, and weekly quests in your neighborhood.
'|complete hasmount(1261584) |or
step
talk Thraxadar##258328
buy Prowling Shredclaw##257447 |goto Slayers Rise/0 39.17,89.02 |or
'|complete hasmount(1261584) |or
step
use Prowling Shredclaw##257447
learnmount Prowling Shredclaw##1261584
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Trading Post Mounts\\Pyrewood Rebel's Rouncey",{
patch='120000',
source='Trading Post',
author="QuestCore",
description="This guide will teach you how to acquire the Pyrewood Rebel's Rouncey ground mount.",
keywords={"Trading Post","Ground"},
mounts={1282275},
mounttype="Ground",
startlevel=10,
},[[
step
earn 500 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1282275) |or
step
Talk to the Trading Post Vendor
buy Pyrewood Rebel's Rouncey##268363 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1282275) |or
step
use Pyrewood Rebel's Rouncey##268363
|tip Unwrap this in your mount collection.
learnmount Pyrewood Rebel's Rouncey##1282275
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Dropped Mounts\\Rootstalker Grimlynx",{
patch='120000',
source='Dropped',
author="QuestCore",
description="This guide will help you acquire the Rootstalker Grimlynx mount.",
keywords={"Dropped","Ground"},
mounts={1243597},
mounttype="Ground",
startlevel=10,
},[[
step
Defeat Rares in Harandar
|tip The mount item has a chance to drop from any rare in Harandar.
|tip Click the rare you wish to kill.
kill Rhazul##248741 |goto Harandar/0 51.15,45.33
kill Ha'kalawe##249849 |goto Harandar/0 70.17,60.87
kill Queen Lashtongue##249962 |goto Harandar/0 60.16,47.11
kill Stumpy##250086 |goto Harandar/0 65.34,32.95
kill Mindrot##250226 |goto Harandar/0 46.11,32.17
kill Treetop##250246 |goto Harandar/0 36.34,75.35
kill Pterrock##250321 |goto Harandar/0 27.39,71.39
|tip Inside the cave
kill Annulus the Worldshaker##250358 |goto Harandar/0 43.76,16.78
|tip This rare patrols around here.
kill Chironex##249844 |goto Harandar/0 68.70,40.61
kill Tallcap the Truthspreader##249902 |goto Harandar/0 72.62,69.35
kill Chlorokyll##249997 |goto Harandar/0 64.47,47.68
kill Serrasa##250180 |goto Harandar/0 55.94,31.63
kill Dracaena##250231 |goto Harandar/0 40.53,43.27
kill Oro'ohna##250317 |goto Harandar/0 28.19,81.81
kill Ahl'ua'huhi##250347 |goto Harandar/0 39.75,60.21
collect Rootstalker Grimlynx##246735
step
use Rootstalker Grimlynx##246735
learnmount Rootstalker Grimlynx##1243597
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Dropped Mounts\\Untainted Grove Crawler",{
patch='120000',
source='Dropped',
author="QuestCore",
description="This guide will help you acquire the Untainted Grove Crawler mount.",
keywords={"Dropped","Ground"},
mounts={1260354},
mounttype="Ground",
startlevel=10,
},[[
step
click Fungal Mallet##615908
|tip Inside the cave, leaning up against the yellow window.
|tip This buff only lasts for 5 minutes.
|tip Fungal Mallet buff is retrievable.
Gain the Fungal Mallet buff |complete hasbuff(1266347) |goto Harandar/0 41.31,68.00 |or
'|complete hasmount(1260354) |or
step
click Mycelium Gong##615907 |goto Harandar/0 46.63,67.84
|tip Under the little mushroom pavillion.
|tip Must have the Fungal Mallet buff.
click Sporespawned Cache##615963 |n
|tip Spawns nearby.
collect Untainted Grove Crawler##256423 |goto Harandar/0 46.67,67.80 |or
'|complete hasmount(1260354) |or
step
use Untainted Grove Crawler##256423
|tip In your bags.
learnmount Untainted Grove Crawler##1260354
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Achievement Mounts\\Vivacious Chloroceros",{
patch='120000',
source='Achievement',
author="QuestCore",
description="This guide will help you acquire the Vivacious Chloroceros mount.",
keywords={"Achievement","Ground"},
mounts={1270673},
mounttype="Ground",
startlevel=83,
},[[
step
Complete the {p}Treasures of Harandar{} Achievement
|tip Use the {p}Treasures of Harandar{} Achievement guide to accomplish this.
loadguide "Achievement Guides\\Exploration\\Midnight\\Treasures of Harandar"
learnmount Vivacious Chloroceros##1270673
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Vendor Mounts\\Void-Touched Hawkstrider",{
patch='120000',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the Void-Touched Hawkstrider mount.",
keywords={"Vendor","Ground"},
mounts={1282936},
mounttype="Ground",
startlevel=90,
},[[
step
Reach Ritual Sites Rank 8 |complete factionrenown(2792) >= 8 |or
|tip Use the Void Strikes Event Guide to achieve this.
loadguide "Events Guides\\Midnight (80-90)\\Eversong Woods Void Assaults" |only if areapoi(2395,8758)
loadguide "Events Guides\\Midnight (80-90)\\Zul'Aman Void Assaults" |only if areapoi(2437,8757)
'|complete hasmount(1282936) |or
step
earn 50 Field Accolade##3405 |or
|tip You get this currency from completing Ritual Sites and Void Strike Events.
'|complete hasmount(1282936) |or
step
talk Sergeant Vornin##255503
Select _"Do you have any mounts or pets available now?"_ |gossip 138966
buy Void-Touched Hawkstrider##268578 |goto Silvermoon City M/0 48.68,50.37 |or
'|complete hasmount(1282936) |or
step
use Void-Touched Hawkstrider##268578
learnmount Void-Touched Hawkstrider##1282936
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Dropped Mounts\\Witherbark Pango",{
patch='120000',
source='Dropped',
author="QuestCore",
description="This guide will help you acquire the Witherbark Pango mount.",
keywords={"Dropped","Ground"},
mounts={1261351},
mounttype="Ground",
startlevel=10,
},[[
step
Defeat Rares in Zul'Aman
|tip The mount item has a chance to drop from any rare in Zul'Aman.
|tip Click the rare you wish to kill.
kill The Snapping Scourge##242024 |goto Zul Aman M/0 51.81,18.65
kill Depthborn Eelamental##242027 |goto Zul Aman M/0 47.69,20.51
kill The Devouring Invader##242035 |goto Zul Aman M/0 39.59,20.97
kill Lightwood Borer##242028 |goto Zul Aman M/0 28.88,24.46
kill Necrohexxer Raz'ka##242023 |goto Zul Aman M/0 34.39,33.04
kill Spinefrill##242031 |goto Zul Aman M/0 30.47,44.56
|tip Don't drown.
kill Voidtouched Crustacean##242034 |goto Zul Aman M/0 21.60,70.27
kill Elder Oaktalon##242026 |goto Zul Aman M/0 33.68,88.97
|tip Below, in front of the altar.
kill Skullcrusher Harak##242025 |goto Zul Aman M/0 51.84,72.92
kill Mrrlokk##245975 |goto Zul Aman M/0 50.86,65.17
kill Oophaga##242032 |goto Zul Aman M/0 46.37,51.16
Enter the cave Here for Oophaga |goto Zul Aman M/0 46.45,51.78 < 10 |walk
kill Poacher Rav'ik##247976 |goto Zul Aman M/0 39.00,50.01
kill Ash'an the Empowered##245692 |goto Zul Aman M/0 45.28,41.71
|tip Below, in the pit.
kill The Decaying Diamondback##245691 |goto Zul Aman M/0 46.47,43.55
|tip Below, in the pit.
kill Tiny Vermin##242033 |goto Zul Aman M/0 47.81,34.44
'|complete hasmount(1261351)
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Dropped Mounts\\Witherbark Warbear Mother",{
patch='110207',
source='Dropped',
author="QuestCore",
description="This guide will help you acquire the Witherbark Warbear Mother mount.",
keywords={"Dropped","Ground"},
mounts={1261362},
mounttype="Ground",
startlevel=90,
},[[
step
collect 6 Practically Pork##242639 |only if not haspet(5019)
collect 5 Practically Pork##242639 |only if haspet(5019)
-OR-
collect 6 Sin'dorei Swarmer##238365 |only if not haspet(5019)
collect 5 Sin'dorei Swarmer##238365 |only if haspet(5019)
|tip {w}Practically Pork{} is a crafting reagent that can be fished, looted, or skinned from beasts.
|tip {w}Sin'dorei Swarmer{} can be fished from almost any body of fishable water.
|tip You can also purchase either of these reagents in the auction house.
|tip You need 1 of either of these to get the {b}Chubs{} battle pet that will allow you to spawn the NPC that drops the mount. |only if not haspet(5019)
confirm
step
click Curious Obelisk##260104 |goto Zul Aman M/0 29.58,77.94
|tip Queue at difficulty {b}Tier 2{} or higher.
|tip You can queue solo, or with a party of up to 5.
Enter {y}Ritual Site{}: {w}Broken Throne{} |complete zone("Broken Throne") |goto Broken Throne/0 62.32,58.93 |or
'|complete hasmount(1261362) |or
step
Acquire the {b}Chubs{} battle pet
|tip Inside this instance.
|tip Use the Chubs battle Pet guide to accomplish this.
loadguide "Pets & Mounts\\Battle Pets\\Beast Pets\\Ritual Site Pets\\Chubs"
learnpet Chubs##5019 |or
'|complete hasmount(1261362) |or
|only if not haspet(5019)
step
cast Chubs##1286634
|tip Walk up to the piles of {w}Chewed Meat{} with Chubs and the Angry Amani Warbear will spawn.
kill Angry Amani Warbear##263381 |goto Broken Throne/0 55.84,38.39
|tip He will turn friendly at 1% health.
'|complete incombat |or
'|complete hasmount(1261362) or itemcount(257225) == 1 |or
step
talk Angry Amani Warbear##263381
|tip He looks hungry.
Select _"Choose Feed the bear some Practically Pork <Cost 5 Practically Pork>"_ |gossip 139454
collect Witherbark Warbear Harness##257225 |or
'|complete hasmount(1261362) |or
step
use Witherbark Warbear Harness##257225
learnmount Witherbark Warbear Mother##1261362
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Vendor Mounts\\Amani Sunfeather",{
patch='120000',
source='Vendor',
author="QuestCore",
description="This guide will help you acquire the Amani Sunfeather mount.",
keywords={"Vendor","Flying"},
mounts={1251433},
mounttype="Flying",
startlevel=10,
},[[
step
earn 1600 Unalloyed Abundance##3377 |or
|tip Earn this currency from Abundance Events.
|tip Use the Abundance Leveling guide to unlock this.
loadguide "Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Abundance"
'|complete hasmount(1251433) |or
step
Talk to Chel the Chip
|tip This is the Abundance Vendor who can be found in all the Midnight zones.
Eversong Woods [Eversong Woods M/0 56.82,65.82]
Zul'Aman [Zul Aman M/0 32.04,26.11]
Harandar [Harandar/0 66.00,61.58]
Voidstorm [Voidstorm/0 38.78,53.20]
buy Amani Sunfeather##250782
learnmount Amani Sunfeather##1251433
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Vendor Mounts\\Amani Windcaller",{
patch='120000',
source='Vendor',
author="QuestCore",
description="This guide will help you acquire the Amani Windcaller mount.",
keywords={"Vendor","Flying"},
mounts={1251630},
mounttype="Flying",
startlevel=10,
},[[
step
Reach Renown {p}Rank 19{} with {y}Amani Tribe{} |complete factionrenown(2696) >= 19 |or
|tip Use the {b}Amani Tribe{} Reputation Guide to achieve this.
loadguide "Reputation Guides\\The War Within Reputations\\Amani Tribe"
'|complete hasmount(1251630) |or
step
earn 8000 Voidlight Marl##3316 |or
|tip You get this currency by killing rare enemies, opening treasures and caches, completing quests, world quests, delves, dungeons, and prey hunts, in Zul'Aman.
'|complete hasmount(1251630) |or
step
talk Magovu##240279
|tip Inside the building.
buy Amani Windcaller##250889 |goto Zul Aman M/0 45.95,65.92 |or
'|complete hasmount(1251630) |or
step
use Amani Windcaller##250889
learnmount Amani Windcaller##1251630
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\In-Game Shop Mounts\\Amberback Arboon",{
patch='120000',
source='In-Game Shop',
author="QuestCore",
description="This guide will help you acquire the Amberback Arboon mount.",
keywords={"In-Game Shop","Flying"},
mounts={1282453},
mounttype="Flying",
startlevel=10,
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Once purchased, unwrap in your mount inventory.
|tip This mount may be available in the Trading Post, or for 6- or 12-month sub reward.
learnmount Amberback Arboon##1282453
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Trading Post Mounts\\Blackwater X-TREME Firework Rocket",{
patch='120700',
source='Trading Post',
author="QuestCore",
description="This guide will help you acquire the Blackwater X-TREME Firework Rocket mount.",
keywords={"Trading","Post","Flying"},
mounts={1292102},
mounttype="Flying",
startlevel=10,
},[[
step
earn 700 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1292102) |or
step
Talk to the Trading Post Vendor
buy Blackwater X-TREME Firework Rocket##273317 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1292102) |or
step
use Blackwater X-TREME Firework Rocket##273317
|tip Unwrap this in your mount collection.
learnmount Blackwater X-TREME Firework Rocket##1292102
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\In-Game Shop Mounts\\Blossomback Arboon",{
patch='120000',
source='In-Game Shop',
author="QuestCore",
description="This guide will help you acquire the Blossomback Arboon mount.",
keywords={"In-Game Shop","Flying"},
mounts={1282450},
mounttype="Flying",
startlevel=10,
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Once purchased, unwrap in your mount inventory.
|tip This mount may be available in the Trading Post, or for 6- or 12-month sub reward.
learnmount Blossomback Arboon##1282450
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Achievement Mounts\\Calamitous Carrion",{
patch='120000',
source='Achievement',
author="QuestCore",
description="This guide will teach you how to acquire the Calamitous Carrion mount.",
keywords={"Achievement","Flying"},
mounts={1257058},
mounttype="Flying",
startlevel=20,
},[[
step
achieve 61256
|tip Attain a Mythic+ Rating of at least {w}2000{} during Midnight Season One.
|tip You may get a Mythic+ keystone when running a dungeon on {p}Mythic{} difficulty.
|tip Complete Mythic+ dungeons using a keystone.
|tip Ratings are determined by {y}Key Level{} and {b}Speed{}.
|tip Ratings for each dungeon are accumulated across two weekly affixes, {o}Fortified{} and {r}Tyrannical{}.
|tip To efficiently increase your rating, run every dungeon in the current season pool on both affixes, and focus on upgrading your lowest-scored dungeons first.
|tip Timed M+6s and M+7s should give you this rating.
collect Calamitous Carrion##262620
step
use Calamitous Carrion##262620
learnmount Calamitous Carrion##1257058
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Vendor Mounts\\Cerulean Sporeglider",{
patch='120000',
source='Vendor',
author="QuestCore",
description="This guide will help you to acquire the Cerulean Sporeglider mount.",
keywords={"Vendor","Flying"},
mounts={1253929},
mounttype="Flying",
startlevel=20,
},[[
step
Reach Renown {y}Rank 19{} with the {b}Hara'ti{} |complete factionrenown(2704) >= 19 |or
|tip Use the {b}Hara'ti{} Reputation Guide to achieve this.
loadguide "Reputation Guides\\The War Within Reputations\\Hara'ti"
'|complete hasmount(1253929) |or
step
earn 8000 Voidlight Marl##3316 |or
|tip You get this currency by killing rare enemies, opening treasures and caches, completing quests, world quests, delves, dungeons, and other events, in Harandar.
'|complete hasmount(1253929) |or
step
talk Naynar##240407
|tip Outside the tent.
buy Cerulean Sporeglider##252014 |goto Harandar/0 50.95,50.73 |or
'|complete hasmount(1253929) |or
step
use Cerulean Sporeglider##252014
learnmount Cerulean Sporeglider##1253929
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Trading Post Mounts\\Comfy Bel'ameth Flying Quilt",{
patch='120000',
source='Trading Post',
author="QuestCore",
description="This guide will teach you how to acquire the Comfy Bel'ameth Flying Quilt mount.",
keywords={"Trading Post","Flying"},
mounts={1270522},
mounttype="Flying",
startlevel=20,
},[[
step
earn 550 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1270522) |or
step
Talk to the Trading Post Vendor
buy Comfy Bel'ameth Flying Quilt##263451 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1270522) |or
step
use Comfy Bel'ameth Flying Quilt##263451
|tip Unwrap this in your mount collection.
learnmount Comfy Bel'ameth Flying Quilt##1270522
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Trading Post Mounts\\Comfy Silvermoon Flying Quilt",{
patch='120000',
source='Trading Post',
author="QuestCore",
description="This guide will teach you how to acquire the Comfy Silvermoon Flying Quilt mount.",
keywords={"Trading Post","Flying"},
mounts={1270523},
mounttype="Flying",
startlevel=20,
},[[
step
earn 550 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1270523) |or
step
Talk to the Trading Post Vendor
buy Comfy Silvermoon Flying Quilt##263452 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1270523) |or
step
use Comfy Silvermoon Flying Quilt##263452
|tip Unwrap this in your mount collection.
learnmount Comfy Silvermoon Flying Quilt##1270523
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Achievement Mounts\\Convalescent Carrion",{
patch='120000',
source='Achievement',
author="QuestCore",
description="This guide will teach you how to acquire the Convalescent Carrion mount.",
keywords={"Achievement","Flying"},
mounts={1257081},
mounttype="Flying",
startlevel=20,
},[[
step
achieve 61258
|tip Attain a Mythic+ Rating of at least {w}3000{} during {w}Midnight Season One{}.
|tip You may get a Mythic+ keystone when running a dungeon on {p}Mythic{} difficulty.
|tip Complete Mythic+ dungeons using a keystone.
|tip Ratings are determined by {y}Key Level{} and {b}Speed{}.
|tip Ratings for each dungeon are accumulated across two weekly affixes, {o}Fortified{} and {r}Tyrannical{}.
|tip To efficiently increase your rating, run every dungeon in the current season pool on both affixes, and focus on upgrading your lowest-scored dungeons first.
|tip Timed M+13s across all dungeons in the pool should give you this rating.
collect Convalescent Carrion##262621
step
use Convalescent Carrion##262621
learnmount Convalescent Carrion##1257081
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Vendor Mounts\\Elven Arcane Guardian",{
patch='120000',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the Elven Arcane Guardian mount.",
keywords={"Vendor","Flying"},
mounts={1268926},
mounttype="Flying",
startlevel=20,
},[[
step
earn 10000 Undercoin##2803 |or
|tip Earn these inside weekly delve troves, caches, and reward chests.
|tip These can also be pickpocketed, looted from profession tasks like skinning or fishing, and just looting npcs.
'|complete hasmount(1268926) |or
step
talk Naleidea Rivergleam##242398
|tip Inside the building.
buy Elven Arcane Guardian##262502 |goto Silvermoon City M/0 52.76,77.90 |or
'|complete hasmount(1268926) |or
step
use Elven Arcane Guardian##262502
learnmount Elven Arcane Guardian##1268926
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Vendor Mounts\\Fiery Dragonhawk",{
patch='120000',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the Fiery Dragonhawk mount.",
keywords={"Vendor","Flying"},
mounts={1261291},
mounttype="Flying",
startlevel=20,
},[[
step
Reach Renown {p}Rank 19{} with {y}Silvermoon Court{} |complete factionrenown(2710) >= 19 |or
|tip Use the {b}Silvermoon Court{} Reputation Guide to achieve this.
loadguide "Reputation Guides\\The War Within Reputations\\Silvermoon Court"
'|complete hasmount(1261291) |or
step
earn 8000 Voidlight Marl##3316 |or
|tip You get this currency by killing rare enemies, opening treasures and caches, completing quests, world quests, delves, dungeons, and prey hunts, in Zul'Aman.
'|complete hasmount(1261291) |or
step
talk Caeris Fairdawn##240838
Select _"I want to browse your goods."_ |gossip 138627
buy Fiery Dragonhawk##257142 |goto Eversong Woods M/0 43.46,47.42 |or
'|complete hasmount(1261291) |or
step
use Fiery Dragonhawk##257142
learnmount Fiery Dragonhawk##1261291
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Dropped Mounts\\Insatiable Shredclaw",{
patch='120000',
source='Dropped',
author="QuestCore",
description="This guide will help you acquire the Insatiable Shredclaw mount.",
keywords={"Dropped","Ground"},
mounts={1261583},
mounttype="Ground",
startlevel=10,
},[[
step
Enter the caves |goto Voidstorm/0 48.94,78.36 < 20 |walk
|tip Walk past the white circles without touching them, as they despawn.
click the Final Clutch of Predaxis##605169
collect the Reins of the Insatiable Shredclaw##257446 |goto Voidstorm/0 49.94,79.38 |or
|tip Stand in a circle to teleport back to the entrance.
'|complete hasmount(1261583) |or
step
use the Reins of the Insatiable Shredclaw##257446
learnmount Insatiable Shredclaw##1261583
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Profession Mounts\\Peridot Dragonhawk",{
patch='120000',
source='World Quest',
author="QuestCore",
description="This guide will teach you how to acquire the Peridot Dragonhawk mount.",
keywords={"Quest","Flying"},
mounts={1261293},
mounttype="Flying",
startlevel=20,
},[[
step
Complete the {p}War of Light and Shadow{} Campaign
|tip Use the {b}War of Light and Shadow Campaign{} Leveling Guide to achieve this.
loadguide "Leveling Guides\\Midnight (80-90)\\The War of Light and Shadow Campaign"
collect Peridot Dragonhawk##257143 |or
'|complete hasmount(1261293) |or
step
use Peridot Dragonhawk##257143
|tip This will be an item in your bags.
learnmount Peridot Dragonhawk##1261293
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Dropped Mounts\\Ruddy Sporeglider",{
patch='120000',
source='Dropped',
author="QuestCore",
description="This guide will teach you how to acquire the Ruddy Sporeglider mount.",
keywords={"Dropped","Flying"},
mounts={1253938},
mounttype="Flying",
startlevel=20,
},[[
step
click Flame-Hardened Sap of Teldrassil##616052
|tip These can be found in the river that runs from The Den to Har'mara to the northwest.
|tip They look like little yellow or orange bubbles in the water, and can have a faint purple outline.
|tip They are found only in the water, generally spawning near rocks, roots, islands, lillypads, and at the tops and bottoms of waterfalls.
|tip If you have difficulty spotting these, try adjusting your graphics settings: Options>System>Graphics.
|tip Set {y}Liquid Detail{} to Low, and {y}Outline Mode{} to High.
|tip It also helps to fly low along the water, or use a water-walking mount buff.
map Harandar/0
path follow smart; loop on; ants curved; dist 30
path	39.69,20.44	41.68,30.50	42.09,33.16	41.73,36.89	41.92,37.66
path	42.66,40.31	46.41,48.13	48.06,50.68	48.63,50.62	48.38,50.52
path	47.92,50.39	46.42,48.07	42.64,40.12	41.93,37.62	41.77,36.82
path	42.25,34.97	43.01,34.45	43.01,33.22	42.29,32.61	41.64,30.36
path	40.49,26.05	40.82,24.61	39.97,22.32	40.22,21.29	40.25,19.85
collect 150 Crystalized Resin Fragment##260531 |or
'|complete hasmount(1253938) |or
step
click Peculiar Cauldron##614483
collect Ruddy Sporeglider##252017 |or
'|complete hasmount(1253938) |or
step
use Ruddy Sporeglider##252017
|tip In your bags.
learnmount Ruddy Sporeglider##1253938
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Promotion Mounts\\Scorching Valor",{
patch='120000',
source='In-Game Shop',
author="QuestCore",
description="This guide will teach you how to acquire the Scorching Valor mount.",
keywords={"In-Game Shop","Flying"},
mounts={1247422},
mounttype="Flying",
startlevel=10,
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Once purchased or awarded, you may need to unwrap in your mount inventory.
|tip Check the Blizzard Store and purchase a 6 month subscription to acquire this mount.
learnmount Scorching Valor##1247422
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Achievement Mounts\\Tenebrous Harrower",{
patch='120000',
source='Achievement',
author="QuestCore",
description="This guide will teach you how to acquire the Tenebrous Harrower mount.",
keywords={"Achievement","Flying","Glory","Midnight","Raider"},
mounts={1266980},
mounttype="Flying",
startlevel=20,
},[[
step
achieve 61380
learnmount Tenebrous Harrower##1266980
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Vendor Mounts\\Unbound Manawyrm",{
patch='120000',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the Unbound Manawyrm mount.",
keywords={"Vendor","Flying","Eversong","Assault"},
mounts={1271698},
mounttype="Flying",
startlevel=90,
},[[
step
label "NEED_EVERSONG_ERADICATOR"
Complete a Void Strike or Incursion in Eversong Woods
|tip Use the {b}Eversong Woods Void Assaults{} Events Guide to achieve this.
loadguide "Events Guides\\Midnight (80-90)\\Eversong Woods Void Assaults"
achieve 62498 |or
'|complete hasmount(1271698) |or
|only if areapoi(2395,8758)
step
Complete #25# Void Strikes or Incursions in Eversong Woods |achieve 62508 |or
|tip Use the {b}Eversong Woods Void Assaults{} Events Guide to achieve this.
loadguide "Events Guides\\Midnight (80-90)\\Eversong Woods Void Assaults"
'|complete hasmount(1271698) |or
|only if areapoi(2395,8758)
step
label "NEED_ZUL'AMAN_ERADICATOR"
Complete a Void Strike or Incursion in Zul'Aman
|tip Use the {b}Zul'Aman Void Assaults{} Events Guide to achieve this.
loadguide "Events Guides\\Midnight (80-90)\\Zul'Aman Void Assaults"
achieve 62499 |or
'|complete hasmount(1271698) |or
|only if areapoi(2437,8757)
step
Complete #25# Void Strikes or Incursions in Zul'Aman |achieve 62511 |or
|tip Use the {b}Zul'Aman Void Assaults{} Events Guide to achieve this.
loadguide "Events Guides\\Midnight (80-90)\\Zul'Aman Void Assaults"
'|complete hasmount(1271698) |or
|only if areapoi(2437,8757)
step
Earn #100# Field Accolades## from completing Ritual Site events |achieve 62513 |or
|tip Accolade rewards are based on calculated "Final Spoils" (base loot + challenge bonuses (affixes) - death penalties).
'|complete hasmount(1271698) |or
step
Defeat #100# corrupted creatures at the Void Strike events below |achieve 62518 |or
|tip Travel to the Void Strike locations and kill as many Void Corrupted creatures or beasts as you can.
|tip At this time, Bitterbark is the only location in Zul'Aman with Void Corrupted beasts that count towards the achievement. |only if areapoi(2437,8757)
Kill corrupted creatures at the {b}Void Rift: Sunstrider Isle{} |only if areapoi(2395,8734) |goto Eversong Woods M/0 40.27,16.71
Kill corrupted creatures at the {b}Void Rift: Tranquil Repose{} |only if areapoi(2395,8727) |goto Eversong Woods M/0 50.97,50.47
Kill corrupted creatures at the {b}Void Rift: South Eversong Woods{} |only if areapoi(2395,8721) |goto Eversong Woods M/0 52.05,81.07
Kill corrupted beasts at {b}Void Rift: Bitterbark{} |only if areapoi(2437,8757) |goto Zul Aman M/0 30.46,42.98
'|complete hasmount(1271698) |or
step
Earn the Void Response Team Achievement
You still need to:
Click to complete Void Assault: Eversong Woods |only if not achieved(62563,3) and areapoi(2395,8758) |next "NEED_EVERSONG_ERADICATOR"
Click to complete Void Assault: Zul'Aman |only if not achieved(62563,4) and areapoi(2437,8757) |next "NEED_ZUL'AMAN_ERADICATOR"
{b}Wait for Weekly Reset{} |only if not achieved(62563,3) or not achieved(62563,4)
The Eversong Woods Void Assault must be Active to Complete your Achievement |only if not achieved(62563,3) and achieved(62563,4) and areapoi(2437,8757)
The Zul'Aman Void Assault must be Active to Complete your Achievement |only if not achieved(62563,4) and achieved(62563,3) and areapoi(2395,8758)
|tip Weekly reset is Tuesday at 10:00 AM CST for North American, Oceanic, and Latin American servers.
|tip Weekly reset is Wednesday at 5:00 AM CET for European servers.
|tip Weekly reset is Thursday at 7:00 AM local time for Korean, Taiwanese, and Chinese servers.
achieve 62563 |or
'|complete hasmount(1271698) |or
step
earn 6000 Voidlight Marl##3316 |or
|tip You earn this currency most efficiently by spamming {g}Random Nightmare Hunts{}, completing {p}Ritual Sites{} and {b}Void Strikes{}, killing rare enemies, opening treasures and caches, completing quests, world quests, weekly quests, bountiful delves, and prey hunts in Midnight areas.
|tip If you have completed the campaign, alt leveling will reward Voidlight Marl in place of reputation.
'|complete hasmount(1271698) |or
step
talk Sergeant Vornin##255503
Select _"Do you have any mounts or pets available now?"_ |gossip 138966
buy Unbound Manawyrm##264348 |goto Silvermoon City M/0 48.69,50.37 |or
'|complete hasmount(1271698) |or
step
use Unbound Manawyrm##264348
learnmount Unbound Manawyrm##1271698
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Dropped Mounts\\Vibrant Petalwing",{
patch='120000',
source='Dropped',
author="QuestCore",
description="This guide will teach you how to acquire the Vibrant Petalwing mount.",
keywords={"Dropped","Flying"},
mounts={1253927},
mounttype="Flying",
startlevel=20,
},[[
step
Defeat Rares in Harandar
|tip The mount item has a chance to drop from any rare in Harandar.
|tip Click the rare you wish to kill.
kill Rhazul##248741 |goto Harandar/0 51.15,45.33
kill Ha'kalawe##249849 |goto Harandar/0 70.17,60.87
kill Queen Lashtongue##249962 |goto Harandar/0 60.16,47.11
kill Stumpy##250086 |goto Harandar/0 65.34,32.95
kill Mindrot##250226 |goto Harandar/0 46.11,32.17
kill Treetop##250246 |goto Harandar/0 36.34,75.35
kill Pterrock##250321 |goto Harandar/0 27.39,71.39
|tip Inside the cave
kill Annulus the Worldshaker##250358 |goto Harandar/0 43.76,16.78
|tip This rare patrols around here.
kill Chironex##249844 |goto Harandar/0 68.70,40.61
kill Tallcap the Truthspreader##249902 |goto Harandar/0 72.62,69.35
kill Chlorokyll##249997 |goto Harandar/0 64.47,47.68
kill Serrasa##250180 |goto Harandar/0 55.94,31.63
kill Dracaena##250231 |goto Harandar/0 40.53,43.27
kill Oro'ohna##250317 |goto Harandar/0 28.19,81.81
kill Ahl'ua'huhi##250347 |goto Harandar/0 39.75,60.21
collect Vibrant Petalwing##252012
step
use Vibrant Petalwing##252012
learnmount Vibrant Petalwing##1253927
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Trading Post Mounts\\Vicious Snapvine",{
patch='120000',
source='Trading Post',
author="QuestCore",
description="This guide will help you acquire the Vicious Snapvine mount.",
keywords={"Trading Post","Flying"},
mounts={1269273},
mounttype="Flying",
startlevel=10,
},[[
step
earn 600 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1269273) |or
step
Talk to the Trading Post Vendor
buy Vicious Snapvine##262705 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1269273) |or
step
use Vicious Snapvine##262705
|tip Unwrap this in your mount collection.
learnmount Vicious Snapvine##1269273
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Dropped Mounts\\Void-Corrupted Hex Eagle",{
patch='120100',
source='Dropped',
author="QuestCore",
description="This guide will help you acquire the Void-Corrupted Hex Eagle mount.",
keywords={"Dropped","Flying"},
mounts={1286606},
mounttype="Flying",
startlevel=90,
},[[
step
click Curious Obelisk##260104 |goto Zul Aman M/0 29.58,77.94
|tip Queue at difficulty {b}Tier 2{} or higher.
|tip You can queue solo, or with a party of up to 5.
Enter {y}Ritual Site{}: {w}Broken Throne{} |complete zone("Broken Throne") |goto Broken Throne/0 62.32,58.93 |or
'|complete hasmount(1286606) |or
step
click Misplaced Ritual Candle##649209
|tip This is a tiny, pink candle burning on the wall, under a tree.
collect Misplaced Ritual Candle##271999 |goto Broken Throne/0 51.44,47.83 |or
'|complete hasmount(1286606) |or
step
clicknpc Ritual Item##263500
|tip The item is an interactive skull on the outside of the nearby ritual circle.
|tip It looks like a skull.
|tip Place the candle on the skull.
Replace the Ritual Candle |goto Broken Throne/0 50.75,47.13 |complete itemcount(271999) < 1 |or
'|complete hasmount(1286606) |or
step
Click the ritual candle in the center of the ritual circle |goto Broken Throne/0 50.65,47.30
|tip A Void-Corrupted Hex Eagle elite mob will spawn nearby.
kill Void-Corrupted Hex Eagle##263527
collect Void-Corrupted Eagle Talon##269828 |goto Broken Throne/0 51.10,47.34 |or
'|complete hasmount(1286606) |or
step
use Void-Corrupted Eagle Talon##269828
learnmount Void-Corrupted Hex Eagle##1286606
step
loadguide "Pets & Mounts\\Battle Pets\\Flying Pets\\Dropped Pets\\Void-Scarred Eaglet"
|tip You have unlocked the means to get this battle pet.
|only if not haspet(5017)
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Aquatic Mounts\\Trading Post Mounts\\Savage Crimson Battle Turtle",{
patch='120000',
source='Trading Post',
author="QuestCore",
description="This guide will teach you how to acquire the Savage Crimson Battle Turtle mount.",
keywords={"Trading Post","Aquatic"},
mounts={1266248},
mounttype="Aquatic",
startlevel=20,
},[[
step
earn 500 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1266248) |or
step
Talk to the Trading Post Vendor
buy Savage Crimson Battle Turtle##260409 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1266248) |or
step
use Savage Crimson Battle Turtle##260409
|tip Unwrap this in your mount collection.
learnmount Savage Crimson Battle Turtle##1266248
]])
