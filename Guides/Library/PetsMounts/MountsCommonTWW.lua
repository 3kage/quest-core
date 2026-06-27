-- Bundled QuestCore guide
if not QuestCore then return end

QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Coldflame Tempest",{
description="This guide will teach you how to acquire the Coldflame Tempest mount.",
mounts={463133},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","20th Anniversary Celebration","Flying","Achievement","A Cool Twenty Years","Celebration Event"},
patch='110005',
},[[
step
Join _Mount Mania_ at the 20th Anniversary Celebration Event
|tip Stay within range of the event stage.
|tip Mount up with the same mount as Mount Mania Rep Abigail Cyrildotr during the active event.
|tip The name of the mount will be floating above Abigail's head.
Match one mount during _Mount Mania_ |achieve 40976/1 |goto Tanaris/0 63.00,51.34 |or
'|complete hasmount(463133) |or
step
Join _Fashion Frenzy_ at the 20th Anniversary Celebration Event
|tip Stay within range of the circular event stage.
|tip Watch above Althaea's head for the theme of the fashion competition.
|tip Use the Visiting Warpweaver NPCs around the edge of the circular stage, or a transmogrification mount to create your outfit.
|tip Once instructed to do so, go to the small oval table and click a ribbon to gain the voting interface.
|tip Target and vote for 5 players with the transmogrifications that you like.
|tip Repeat the event 4 times, for a total of 20 votes at the Fashion Frenzy.
Cast 20 votes during _Fashion Frenzy_ |achieve 40976/2 |goto Tanaris/0 63.43,48.95 |or
'|complete hasmount(463133) |or
step
click Pet Box##455795
|tip If the Pet Box isn't at this location, you may already have a Pet Mirror in your inventory or bank.
collect Pet Mirror##224157 |goto Tanaris/0 62.02,50.11 |or
'|complete hasmount(463133) |or
step
Summon a Pet of Your Choice
use Pet Mirror##224157
|tip Use it on your pet.
|tip Explore the different celebration areas.
Use a Pet Disguiser to Look Like Your Pet and Explore the Celebration Area |achieve 40976/3 |or
'|complete hasmount(463133) |or
step
Click a Floating Celebration Balloon
|tip Ride the balloon until you get the achievement.
Ride One of the Celebration Balloons |achieve 40976/4 |goto Tanaris/0 64.16,50.18 |or
'|complete hasmount(463133) |or
step
Join _Story Time_ at the 20th Anniversary Celebration Event
|tip Stay within range of the event stage.
|tip As Lorewalker Cho tells his story, look for the extra action button to pop up to react.
|tip Repeat the event as many times as you need to have reacted 50 times.
React to Lorewalker Cho's stories |achieve 40976/5 |goto Tanaris/0 64.07,51.75 |or
'|complete hasmount(463133) |or
step
Kill a World Boss
|tip Kill Azuregos, Lord Kazzak, Lethon, Emeriss, Taerar, or Ysondre.
|tip You will need help with this.
|tip Look on your map to find these bosses.
|tip They are not in Tanaris.
Defeat at least one of the world bosses Listed Above |achieve 40976/6 |or
'|complete hasmount(463133) |or
step
Kill Doomwalker, Sha of Anger, and Archavon the Stonewatcher
|tip Find them all in Tanaris.
|tip You may need help with this.
|tip Press 'I' ind a group in the Group Finder, or join a group at the boss's locations.
Defeat all the Gatecrasher world bosses |achieve 40976/7 |or
'|complete hasmount(463133) |or
step
talk Chromie##226368
Select _"Count me in! <Queue for The Codex of Chromie.>"_ |gossip 122968 |noautogossip
Enter "The Codex of Chromie" Scenario |scenariostart The Codex of Chromie##2555 |goto Tanaris/0 62.56,50.03 |n
|tip This will queue you for the scenario and start forming a group.
|tip It may take some time, especially if you are DPS.
|tip Join the scenario and complete it.
Complete "The Codex of Chromie" Scenario |achieve 40976/8 |or
'|complete hasmount(463133) |or
step
collect Reins of the Coldflame Tempest##228760 |or
'|complete hasmount(463133) |or
step
use Reins of the Coldflame Tempest##228760
learnmount Coldflame Tempest##463133
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Crimson Shreddertank",{
description="This guide will teach you how to acquire the Crimson Shreddertank mount.",
mounts={1217235},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Achievement Mounts","Flying","Achievement","Keystone Master: Season Two"},
patch='110000',
},[[
step
Earn the "The War Within Keystone Master: Season Two" Achievement |achieve 41533 |or
|tip Attain a Mythic+ Rating of at least 2000 during The War Within Season Two.
collect the Crimson Shreddertank##235549 |or
'|complete hasmount(1217235) |or
step
use the Crimson Shreddertank##235549
learnmount Crimson Shreddertank##1217235
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Diamond Mechsuit",{
description="This guide will teach you how to acquire the Diamond Mechsuit mount.",
mounts={458335},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Achievement Mounts","Flying","Achievement","Keystone Master: Season One"},
patch='110000',
},[[
step
Earn the "The War Within Keystone Master: Season One" Achievement |achieve 20525 |n
|tip Attain a Mythic+ Rating of at least 2000 during The War Within Season One.
collect the Diamond Mechsuit##226357 |or
'|complete hasmount(458335) |or
step
use the Diamond Mechsuit##226357
learnmount Diamond Mechsuit##458335
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Enterprising Shreddertank",{
description="This guide will teach you how to acquire the Enterprising Shreddertank mount.",
mounts={1221694},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Achievement Mounts","Flying","Achievement","Keystone Legend: Season Two"},
patch='110000',
},[[
step
Earn the "The War Within Keystone Legend: Season Two" Achievement |achieve 40951 |n
|tip Attain a Mythic+ Rating of at least 3000 during The War Within Season Two.
collect the Enterprising Shreddertank##237141 |or
'|complete hasmount(1221694) |or
step
use the Enterprising Shreddertank##237141
learnmount Enterprising Shreddertank##1221694
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Ivory Goliathus",{
description="This guide will teach you how to acquire the Ivory Goliathus mount.",
mounts={452779},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Achievement Mounts"},
patch='110000',
},[[
step
achieve 40438 |n
|tip Go solo, or form a group, and complete the Achievement "Glory of the Delver".
|tip Use the "Glory of the Delver" Achievement Guide to accomplish this.
Click Here to Load the "Glory of the Delver" Achievement Guide |confirm |loadguide "Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Delves\\Glory of the Delver"
collect Ivory Goliathus##224415 |or
'|complete hasmount(452779) |or
step
use Ivory Goliathus##224415
learnmount Ivory Goliathus##452779
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Junkmaestro's Magnetomech",{
description="This guide will teach you how to acquire the Junkmaestro's Magnetomech mount.",
mounts={468068},
mounttype="Flying",
startlevel=80,
source='Achievement',
keywords={"Achievement","Flying"},
patch='110100',
},[[
step
achieve 41286 |or
|tip Use the "Glory of the Liberation of Undermine Raider" Achievement Guide to accomplish this.
Click Here to Load the "Glory of the Liberation of Undermine Raider" Achievement Guide |confirm |loadguide "Achievement Guides\\Quests\\The War Within Achievements\\Dungeons & Raids\\War Within Raids\\Glory of the Liberation of Undermine Raider"
'|complete hasmount(468068) |or
step
learnmount Junkmaestro's Magnetomech##468068
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Achievement Mounts\\Light-Forged Mechsuit",{
patch='110200',
source='Achievement',
author="QuestCore",
description="This guide will teach you how to acquire the Light-Forged Mechsuit mount.",
keywords={"Achievement","Flying"},
mounts={1243003},
mounttype="Flying",
startlevel=80,
},[[
step
achieve 42300
|tip Use the "Two Minutes to Midnight" Achievement Guide to accomplish this.
loadguide "Achievement Guides\\Feats of Strength\\Events\\Two Minutes to Midnight"
learnmount Light-Forged Mechsuit##1243003
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Shadowed Swarmite",{
description="This guide will teach you how to acquire the Shadowed Swarmite mount.",
mounts={448188},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Achievement Mounts","Flying","Achievement","Shadowed Swarmite","Glory of the Nerub-ar Raider",},
patch='110000',
},[[
step
achieve 40232 |n
|tip Use the "Glory of the Nerub-ar Raider" Achievement Guide to accomplish this.
Click Here to Load the "Glory of the Nerub-ar Raider" Achievement Guide |loadguide "Achievement Guides\\Dungeons & Raids\\TWW Raids\\Glory of the Nerub-ar Raider"
collect Reins of the Shadowed Swarmite##223269 |or
'|complete hasmount(448188) |or
step
use Reins of the Shadowed Swarmite##223269
learnmount Shadowed Swarmite##448188
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Swarmite Skyhunter",{
description="This guide will teach you how to acquire the Swarmite Skyhunter mount.",
mounts={447195},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Achievement Mounts","Flying","Achievement","Swarmite","Khaz Algar Glyph Hunter",},
patch='110000',
},[[
step
achieve 40702 |n
|tip Discover the Skyriding Glyphs in Khaz Algar.
|tip Use the "Khaz Algar Glyph Hunter" Achievement Guide to accomplish this.
Click Here to Load the "Khaz Algar Glyph Hunter" Achievement Guide |loadguide "Achievement Guides\\The War Within Achievements\\Hallowfall\\Exploration\\Khaz Algar Glyph Hunter"
collect Swarmite Skyhunter##223267 |or
'|complete hasmount(447195) |or
step
use Shadowed Swarmite##223267
learnmount Shadowed Swarmite##447195
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Archmage's Great Raven",{
patch='110105',
source='In-Game Shop',
description="This guide will teach you how to acquire the Archmage's Great Raven mount.",
keywords={"In-Game Shop","Flying"},
mounts={1226983},
mounttype="Flying",
startlevel=10,
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Once purchased or awarded, you may need to unwrap in your mount inventory.
|tip Check the Blizzard Store and purchase the Wings and Wisdom Pack to acquire this mount.
learnmount Archmage's Great Raven##1226983
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\In-Game Shop Mounts\\Astral Aurochs",{
source='In-Game Shop',
author="QuestCore",
description="This guide will teach you to acquire the Astral Aurochs mount.",
keywords={"Promotion","Flying"},
mounts={1245604},
mounttype="Flying",
startlevel=80,
},[[
step
Possible Reward for Purchasing a 12 Month Subscription in the Blizzard Online Store
|tip Once purchased and awarded, you may need to unwrap in your mount inventory.
learnmount Astral Aurochs##1245604
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Promotion Mounts\\Felborn Cormaera",{
patch='110100',
source='Promotion',
description="This guide will teach you how to acquire the Felborn Cormaera mount.",
keywords={"Promotion","Flying"},
mounts={1226851},
mounttype="Flying",
startlevel=10,
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Once purchased or awarded, you may need to unwrap in your mount inventory.
|tip Check the Blizzard Store and purchase the Emerald Inferno Pack to acquire this mount.
learnmount Felborn Cormaera##1226851
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Blizzard Store Mounts\\Gigantic Grrloc",{
description="This guide will teach you how to acquire the Gigantic Grrloc mount.",
mounts={463025},
mounttype='Ground',
startlevel=10,
keywords={"TWW","The War Within"},
patch='110002',
},[[
step
Possible Reward for Purchasing a 12 Month Subscription in the Blizzard Online Store
|tip Once purchased and awarded, you may need to unwrap in your mount inventory.
learnmount Gigantic Grrloc##463025
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Blizzard Store Mounts\\Grandiose Grrloc",{
description="This guide will teach you how to acquire the Grandiose Grrloc mount.",
mounts={1234971},
mounttype='Ground',
startlevel=10,
keywords={"TWW","The War Within"},
patch='110205',
},[[
step
Possible Reward for Purchasing a 12 Month Subscription in the Blizzard Online Store in October 2025
|tip Once purchased and awarded, you may need to unwrap in your mount inventory.
learnmount Grandiose Grrloc##1234971
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Grizzly Hills Packmaster",{
description="This guide will teach you how to acquire the Grizzly Hills Packmaster mount.",
mounts={457485},
mounttype='Ground',
startlevel=1,
keywords={"TWW","The War Within"},
patch='110020',
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Once purchased or awarded, you may need to unwrap in your mount inventory.
|tip This mount sports a Field Repair Anvil, and a transmogrifying Travel Duffel.
learnmount Grizzly Hills Packmaster##457485
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Herald of Sa'bak",{
description="This guide will teach you how to acquire the Herald of Sa'bak mount.",
mounts={1227192},
mounttype='Flying',
startlevel=10,
keywords={"TWW","The War Within"},
patch='110205',
},[[
step
Possible Reward for Purchasing a 12 Month Subscription in the Blizzard Online Store in October 2025
May Also be sold in the Blizzard Store, or available in the Trading Post
|tip Once awarded, you may need to unwrap in your mount inventory.
learnmount Herald of Sa'bak##1227192
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Lana'thel's Crimson Cascade",{
description="This guide will teach you how to acquire the Lana'thel's Crimson Cascade mount.",
mounts={1233925},
mounttype="Flying",
startlevel=10,
keywords={"In-Game Shop","Flying"},
patch='110200',
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Once purchased or awarded, you may need to unwrap in your mount inventory.
learnmount Lana'thel's Crimson Cascade##1233925
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Promotion Mounts\\Lightwing Dragonhawk",{
patch='120000',
source='Promotion',
author="QuestCore",
description="This guide will teach you how to obtain the Lightwing Dragonhawk mount.",
keywords={"Promotion","Flying"},
mounts={1234305},
mounttype="Flying",
startlevel=20,
},[[
step
Purchase the Midnight Expansion Pack from the Blizzard Store
|tip Included with Heroic and Epic Editions of the Midnight Expansion.
learnmount Lightwing Dragonhawk##1234305
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Blizzard Store Mounts\\Prophet's Great Raven",{
description="This guide will teach you how to acquire the Prophet's Great Raven mount.",
mounts={1226760},
mounttype="Flying",
startlevel=10,
keywords={"In-Game Shop","Flying"},
patch='110105',
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Once purchased or awarded, you may need to unwrap in your mount inventory.
|tip Check the Blizzard Store and purchase the Wings and Wisdom Pack to acquire this mount.
learnmount Prophet's Great Raven##1226760
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Blizzard Store Mounts\\Sha-Warped Cloud Serpent",{
description="This guide will teach you how to acquire the Sha-Warped Cloud Serpent mount.",
mounts={1216422},
mounttype="Flying",
keywords={"Flying","Promotion","Blizzard Store"},
patch='110007',
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Once purchased or awarded, you may need to unwrap in your mount inventory.
|tip Check the Blizzard Store and purchase the Sha-Infused Heroic Pack to acquire this mount.
learnmount Sha-Warped Cloud Serpent##1216422
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Blizzard Store Mounts\\Sha-Warped Riding Tiger",{
description="This guide will teach you how to acquire the Sha-Warped Riding Tiger mount.",
mounts={1216430},
mounttype="Ground",
keywords={"Ground","Promotion","Blizzard Store"},
patch='110007',
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Once purchased or awarded, you may need to unwrap in your mount inventory.
|tip Check the Blizzard Store and purchase the Sha-Infused Heroic Pack to acquire this mount.
learnmount Sha-Warped Riding Tiger##1216430
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Timbered Sky Snake",{
patch='110100',
source='In-Game Shop',
description="This guide will teach you how to acquire the Timbered Sky Snake mount.",
keywords={"In-Game Shop","Flying"},
mounts={468205},
mounttype="Flying",
startlevel=10,
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Once purchased or awarded, you may need to unwrap in your mount inventory.
|tip Check the Blizzard Store and purchase the Sha-Infused Heroic Pack to acquire this mount.
learnmount Timbered Sky Snake##1216422
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Blizzard Store Mounts\\Trader's Gilded Brutosaur",{
description="This guide will teach you how to acquire the Trader's Gilded Brutosaur mount.",
mounts={465235},
mounttype='Ground',
startlevel=1,
keywords={"TWW","The War Within"},
patch='110007',
},[[
step
May be Available for Purchase in the Blizzard Online Store
|tip Once purchased or awarded, you may need to unwrap in your mount inventory.
|tip This mount sports an Auctioneer, and a Mail Courier.
learnmount Trader's Gilded Brutosaur##465235
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Promotion Mounts\\Voidwing Dragonhawk",{
patch='120000',
source='Promotion',
author="QuestCore",
description="This guide will teach you how to obtain the Voidwing Dragonhawk mount.",
keywords={"Promotion","Flying"},
mounts={1234303},
mounttype="Flying",
startlevel=20,
},[[
step
Purchase the Midnight Expansion Pack from the Blizzard Store
|tip Included with Heroic and Epic Editions of the Midnight Expansion.
learnmount Voidwing Dragonhawk##1234303
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Achievement Mounts\\Slatestone Ramolith",{
description="This guide will teach you how to acquire the Slatestone Ramolith mount.",
mounts={449415},
mounttype='Ground',
startlevel=80,
keywords={"TWW","The War Within"},
patch='110000',
},[[
step
achieve 40307
|tip Use the Full Zone versions of the "War Within" Leveling guides to accomplish this.
loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
step
collect Reins of the Slatestone Ramolith##223572 |or
'|complete hasmount(449415) |or
step
use Reins of the Slatestone Ramolith##223572
learnmount Slatestone Ramolith##449415
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Alunira",{
description="This guide will teach you how to acquire the Alunira mount.",
mounts={447213},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Flying","Dropped","Alunira","Isle of Dorn","Elemental"},
patch='110002',
},[[
step
In the next few steps, you will be farming 2 rare spawns on the Isle of Dorn that drop the Crackling Shards you need to get the mount. The guide will take you back and forth until you have 10 Crackling Shards. This may take a while.
|tip You may also consider creating or joining a group with someone who already has the item needed to get the kill.
|tip Then you may have a chance at the mount without having to farm Crackling Shards.
|confirm
step NOT_10_YET
kill Springbubble##219262 |goto Isle of Dorn/0 58.76,60.64
collect 10 Crackling Shard##224025 |next 10_SHARDS |or
'Click here for another rare location. |confirm |next NOT_10_YET_EITHER |or
step NOT_10_YET_EITHER
kill Sandres the Relicbearer##217534 |goto Isle of Dorn/0 62.80,68.60
collect 10 Crackling Shard##224025 |next 10_SHARDS |or
'Click here for another rare location. |confirm |next NOT_10_YET |or
step 10_SHARDS
use Crackling Shard##224025+
collect Storm Vessel##224026
|tip Combine 10 Crackling Shards to create a Storm Vessel.
step
use Storm Vessel##224026
|tip Use it on Alunira to break her shield and make her vulnerable to attacks.
kill Alunira##219281 |n
collect Alunira##223270 |goto Isle of Dorn/0 23.17,58.54
step
use Alunira##223270
learnmount Alunira##447213
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Ascendant Skyrazor",{
description="This guide will teach you how to acquire the Ascendant Skyrazor mount.",
mounts={451491},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Raid","Flying","Dropped","Ascendant Skyrazor","Nerub-ar Palace","Mythic"},
patch='110002',
},[[
step
kill Queen Ansurek##219778
|tip Form a raid group and enter the "Nerub-ar Palace" Raid on Mythic difficulty.
|tip She is the last boss in the raid.
collect Reins of the Ascendant Skyrazor##223270 |goto Isle of Dorn/0 16.60,61.20 |or
'|complete hasmount(451491) |or
step
use Reins of the Ascendant Skyrazor##223270
learnmount Ascendant Skyrazor##451491
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Beledar's Spawn",{
description="This guide will teach you how to acquire the Beledar's Spawn mount.",
mounts={448941},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Dropped Mounts","Hallowfall","Flying"},
patch='110002',
},[[
step
kill Beledar's Spawn##207802
|tip It's a large, purple, elemental, rare, elite mob that can spawn in several places during a void phase.
|tip You may need help with this.
|tip Press "I" to open groupfinder, and join, or create, a group that is searching for and killing it.
collect Beledar's Spawn##223315 |goto Hallowfall/0 50.60,48.08 |or
'|complete hasmount(448941) |or
|tip Open your map and fly to the 21 spawn locations marked.
|mapmarker Hallowfall/0 25.81,57.61 |mapicon crosshair
|mapmarker Hallowfall/0 46.99,54.95 |mapicon crosshair
|mapmarker Hallowfall/0 50.55,48.50 |mapicon crosshair
|mapmarker Hallowfall/0 58.06,48.86 |mapicon crosshair
|mapmarker Hallowfall/0 56.47,68.92 |mapicon crosshair
|mapmarker Hallowfall/0 51.34,70.57 |mapicon crosshair
|mapmarker Hallowfall/0 72.78,41.52 |mapicon crosshair
|mapmarker Hallowfall/0 62.82,38.54 |mapicon crosshair
|mapmarker Hallowfall/0 54.91,36.76 |mapicon crosshair
|mapmarker Hallowfall/0 68.22,30.15 |mapicon crosshair
|mapmarker Hallowfall/0 60.48,18.61 |mapicon crosshair
|mapmarker Hallowfall/0 61.40,07.45 |mapicon crosshair
|mapmarker Hallowfall/0 54.84,36.79 |mapicon crosshair
|mapmarker Hallowfall/0 45.24,25.69 |mapicon crosshair
|mapmarker Hallowfall/0 42.59,31.26 |mapicon crosshair
|mapmarker Hallowfall/0 38.37,24.74 |mapicon crosshair
|mapmarker Hallowfall/0 32.67,39.60 |mapicon crosshair
|mapmarker Hallowfall/0 37.75,45.80 |mapicon crosshair
|mapmarker Hallowfall/0 37.27,71.82 |mapicon crosshair
|mapmarker Hallowfall/0 71.97,65.63 |mapicon crosshair
step
use Beledar's Spawn##223315
learnmount Beledar's Spawn##448941
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\The Big G",{
description="This guide will teach you how to acquire The Big G mount.",
mounts={1217760},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Liberation of Undermine","Mythic"},
patch='110100',
},[[
step
ding 80 |or
'|complete hasmount(1217760) |or
step
kill Chrome King Gallywix##231075
|tip This mount drops from Mythic difficulty only.
|tip You may have to run this raid more that once to acquire the mount item.
collect Keys to the Big G##235626 |or
'|complete hasmount(1217760) |or
step
use Keys to the Big G##235626
learnmount The Big G##1217760
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Blackwater Bonecrusher",{
description="This guide will teach you how to acquire the Blackwater Bonecrusher mount.",
mounts={466001},
mounttype="Ground",
keywords={"Drop","Ground","Undermine","Blackwater Cartel"},
patch='110100',
},[[
step
Reach {g}Honored{} Reputation with the Blackwater Cartel |complete rep("Blackwater Cartel") >= Honored |only if rep("Blackwater Cartel") < Honored |or
Reach {b}Revered{} Reputation with the Blackwater Cartel |complete rep("Blackwater Cartel") >= Revered |only if rep("Blackwater Cartel") < Revered and rep("Blackwater Cartel") > Honored |or
Reach {p}Exalted{} Reputation with the Blackwater Cartel |complete rep("Blackwater Cartel") >= Exalted |only if rep("Blackwater Cartel") < Exalted and rep("Blackwater Cartel") > Revered |or
|tip Do Blackwater Cartel quests, world quests, kill rares and rare elites to raise your reputation.
'|complete hasmount(466001) |or
step
talk Boatswain Hardee##231405
turnin Exalted with the Blackwater Cartel##85807 |n
collect Blackwater Trove##237135 |goto Undermine/0 63.43,16.73 |or
|tip The mount drops from this paragon trove.
'|complete hasmount(466001) |or
step
use Blackwater Trove##237135
collect Blackwater Bonecrusher##229937 |or
|tip You may have to loot more than one paragon trove to receive this mount.
'|complete hasmount(466001) |or
step
use Blackwater Bonecrusher##229937
learnmount Blackwater Bonecrusher##466001
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Dauntless Imperial Lynx",{
description="This guide will teach you how to acquire the Dauntless Imperial Lynx mount.",
mounts={448979},
mounttype='Ground',
startlevel=80,
keywords={"TWW","The War Within","Dropped Mounts","Hallowfall","Lynx"},
patch='110002',
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Complete this using the Khaz Algar Leveling Guides.
|loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete achieved(20118) and achieved(19560) and achieved(20598) and achieved(19559) and achieved(20597)
step
ding 80
step
label "DAUNTLESS_IMPERIAL_LYNX_RETURN"
Complete the Weekly Quests in Hallowfall
|tip The mount item is looted from _Lamplighter Supply Satchels_ and possibly from Delve chests.
|tip Use the Spreading the Light Keyflame Weekly Quests guide to acquire these satchels.
|tip You can only do this once a week.
loadguide "Daily Guides\\The War Within (70-80)\\Spreading the Light Keyflame Weekly Quests" |or
'|complete hasmount(448941) |or
step
use Lamplighter Supply Satchel##228741
collect Dauntless Imperial Lynx##223318 |goto Hallowfall/0 16.60,61.20 |or
Click Here to Return to the Beginning of the Guide |confirm |next "DAUNTLESS_IMPERIAL_LYNX_RETURN"
'|complete hasmount(448941) |or
step
use Dauntless Imperial Lynx##223318
learnmount Dauntless Imperial Lynx##448979
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Machine Defense Unit 1-11",{
description="This guide will teach you how to acquire the Machine Defense Unit 1-11 mount.",
mounts={448188},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Achievement Mounts"},
patch='110002',
},[[
step
talk Gnawbles##216164
|tip Inside the building.
accept Gearing Up for Trouble##83333 |goto The Ringing Deeps/0 43.50,35.29 |or
'|complete hasmount(448188) |or
step
Complete the Scenario
|tip Complete this using the _Awakening the Machine_ Daily Guide.
|tip You may have to complete the scenario more than once to obtain the mount.
|tip You can only complete this once per week.
Click Here to Load the "Awakening the Machine" Daily Guide |confirm |loadguide "Daily Guides\\The War Within (70-80)\\Awakening the Machine" |or
'|complete hasmount(448188) |or
step
click the Awakened Cache##464938
|tip This is the chest near Speaker Kuldas, reward for completing the scenario.
collect Machine Defense Unit 1-11##223269
step
use Machine Defense Unit 1-11##223269
learnmount Machine Defense Unit 1-11##448188
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Ol' Mole Rufus",{
description="This guide will teach you how to acquire the Ol' Mole Rufus mount.",
mounts={449258},
mounttype='Ground',
startlevel=80,
keywords={"TWW","The War Within"},
patch='110002',
},[[
step
kill Lurker of the Deeps <Displaced Sea Horror>##220285 |goto The Ringing Deeps/0 56.64,76.60 |or
|tip You may have to kill this rare elite more than once to obtain the mount item.
'|complete hasmount(449258) |or
step
collect Regurgitated Mole Reins##223501 |or
'|complete hasmount(449258) |or
step
use Regurgitated Mole Reins##223501
learnmount Ol' Mole Rufus##449258
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Personalized Goblin S.C.R.A.P.per",{
patch='110100',
source='Drop',
description="This guide will teach you how to acquire the Personalized Goblin S.C.R.A.P.per mount.",
keywords={"Drop","Ground"},
mounts={466020},
mounttype='Ground',
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)" |or
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)" |or
'|complete completedq(78232,78231) |or
'|complete hasmount(466020) |or
step
ding 80 |or
'|complete hasmount(466020) |or
step
Unlock Undermine and Complete the Campaign
|tip Use the leveling guides to unlock and complete the Undermine Campaign and Story Quests.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)" |or
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)" |or
'|complete hasmount(466020) |or
step
Reach Renown Level {o}2{} Reputation with _The Cartels of Undermine_ |complete factionrenown(2653) >= 2 |or
|tip Use the {b}Cartels of Undermine Reputation Guide{} to accomplish this.
Click Here to Load the _Cartels of Undermine Reputation Guide_ |confirm |loadguide "Reputation Guides\\The War Within Reputations\\The Cartels of Undermine" |or
'|complete hasmount(466020) |or
step
cast Shoveling Trash##465460
|tip Shovel Trash from S.C.R.A.P. heaps and and complete S.C.R.A.P. jobs.
earn 333 Empty Kaja Cola Cans##3218 |only if rep("The Cartels of Undermine") <= 13 |or
earn 1 Vintage Kaja'Cola Can##3220 |only if rep("The Cartels of Undermine") >= 14 |or
'|complete hasmount(466020) |or
step
talk Angelo Rustbin##234776
|tip Inside the building.
buy Sifted Pile of Scrap##233557 |goto Undermine/0 25.59,38.20 |or
'|complete hasmount(466020) |or
step
use Sifted Pile of Scrap##233557
|tip Right-click on the item in your bag.
collect Personalized Goblin S.C.R.A.P.per##229949 |or
|tip You may have to buy more than one of these to obtain the mount item.
'|complete hasmount(466020) |or
step
use Personalized Goblin S.C.R.A.P.per##229949
learnmount Personalized Goblin S.C.R.A.P.per##466020
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Prototype A.S.M.R.",{
mounts={1221155},
mounttype='Flying',
source='Drop',
description = "This guide will teach you how to acquire the Prototype A.S.M.R. mount.",
patch='110100',
startlevel=1,
endlevel=80,
},[[
step
Enter the _Liberation of Undermine_ Raid
|tip This mount drops off the final boss, Chrome King Galleywix, on any difficulty.
|tip Use the {o}Liberation of Undermine{} Raid Guide to accomplish this.
loadguide "Dungeon Guides\\The War Within Raids\\Liberation of Undermine"
|tip
confirm
step
kill Chrome King Gallywix##241526
collect Prototype A.S.M.R.##236960 |or
'|complete hasmount(1221155) |or
step
use Prototype A.S.M.R.##236960
learnmount Prototype A.S.M.R.##1221155
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Salvaged Goblin Gazillionaire's Flying Machine",{
description="This guide will teach you how to acquire the Salvaged Goblin Gazillionaire's Flying Machine mount.",
keywords={"Drop","Flying"},
mounts={466026},
mounttype='Flying',
patch='110100',
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete hasmount(466026) |or
step
ding 80 |or
'|complete hasmount(466020) |or
step
Unlock Undermine and Complete "Undermine Awaits" the First Chapter of the Undermine Story Campaign
|tip Use the leveling guides to unlock the S.C.R.A.P. Events.
|tip This should unlock "The Cartels of Undermine" Faction.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete rep("The Cartels of Undermine") >= 2 |or
'|complete hasmount(466026) |or
step
Complete S.C.R.A.P. Events in Undermine
|tip Active S.C.R.A.P. Events look like gold trashcans on your map.
|tip Complete the event and loot the reward chest.
|tip The mount should come from the reward chest.
collect Salvaged Goblin Gazillionaire's Flying Machine##229953 |goto Undermine/0 32.05,21.77 |or
More S.C.R.A.P Events Here:
[Undermine/0 67.45,29.34]
[Undermine/0 36.35,45.10]
[Undermine/0 50.42,63.63]
[Undermine/0 38.68,81.17]
[Undermine/0 52.48,83.38]
[Undermine/0 69.59,76.57]
'|complete hasmount(466026) |or
step
use Salvaged Goblin Gazillionaire's Flying Machine##229953
learnmount Salvaged Goblin Gazillionaire's Flying Machine##466026
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Sureki Skyrazor",{
description="This guide will teach you how to acquire the Sureki Skyrazor mount.",
mounts={451486},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Raid","Flying","Dropped","Sureki Skyrazor","Nerub-ar Palace","Mythic"},
patch='110002',
},[[
step
kill Queen Ansurek##219778
|tip Form a raid group and enter the "Nerub-ar Palace" Raid on any difficulty.
|tip She is the last boss in the raid.
|tip You may have to kill this boss more than once to obtain the mount.
collect Reins of the Sureki Skyrazor##224147 |goto Isle of Dorn/0 16.60,61.20 |or
'|complete hasmount(451486) |or
step
use Reins of the Sureki Skyrazor##224147
learnmount Sureki Skyrazor##451486
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Dropped Mounts\\Unbound Star-Eater",{
patch='110200',
source='Raid Drop',
author="QuestCore",
description="This guide will teach you how to obtain the Unbound Star-Eater mount.",
keywords={"Raid","Flying"},
mounts={1234573},
mounttype="Flying",
startlevel=80,
},[[
step
Enter the raid |goto K'aresh/0 41.92,21.53 < 20
kill Dimensius##233824
|tip Enter the Manaforge Omega raid with a raid group, and kill the last boss, Dimensius, on Mythic difficulty.
learnmount Unbound Star-Eater##1234573
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Venture Co-ordinator",{
description="This guide will teach you how to acquire Venture Co-ordinator mount.",
keywords={"Unknown","Ground"},
mounts={466022},
mounttype='Ground',
patch='110100',
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)" |or
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)" |or
'|complete completedq(78232,78231) |or
'|complete hasmount(466022) |or
step
ding 80 |or
'|complete hasmount(466022) |or
step
Complete the {b}Undermine Storyline{}
|tip Use the {w}Undermine Storyline{} Leveling Guide to accomplish this.
|tip
Click Here to Load the {o}Undermine (Full Zone){} Leveling Guide |next |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)" |or
|tip
Click Here to Load the {y}Undermine (Story Only){} Leveling Guide |next |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)" |or
'|complete hasmount(466022) |or
step
Reach {o}Exalted{} Reputation with _Venture Company_ |complete factionrenown(2653) >= Exalted |or
|tip Complete quests, world quests, and Surge Pricing Events in _Venture Company_ territory.
|tip Choose _Venture Company_ for the weekly quest from Smaks Topskimmer in The Intercontinental Hotel.
'|complete hasmount(466022) |or
step
talk Shredz the Scrapper##
turnin Exalted with Venture Co.##85810
collect Venture Co. Trove##237133 |or
|tip This can be the first exalted reward, or the Paragon Trove, from _Venture Company_.
'|complete hasmount(466022) |or
step
use Venture Co. Trove##237133
collect Venture Co-ordinator##229951 |or
'|complete hasmount(466022) |or
step
use Venture Co-ordinator##229951
learnmount Venture Co-ordinator##466022
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Violet Goblin Shredder",{
description="This guide will teach you how to acquire the Violet Goblin Shredder mount.",
keywords={"Undermine","Ground"},
mounts={466021},
mounttype='Ground',
patch='110100',
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)" |or
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)" |or
'|complete completedq(78232,78231) |or
'|complete hasmount(466021) |or
step
ding 80 |or
'|complete hasmount(466021) |or
step
Complete the {b}Undermine Storyline{}
|tip Use the {w}Undermine Storyline{} Leveling Guide to accomplish this.
|tip
Click Here to Load the {o}Undermine (Full Zone){} Leveling Guide |next |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)" |or
|tip
Click Here to Load the {y}Undermine (Story Only){} Leveling Guide |next |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)" |or
'|complete hasmount(466027) |or
step
Reach Renown Level {o}8{} Reputation with _The Cartels of Undermine_ |complete factionrenown(2653) >= 8 |or
|tip Use the {b}Cartels of Undermine Reputation Guide{} to accomplish this.
Click Here to Load the _Cartels of Undermine Reputation Guide_ |confirm |loadguide "Reputation Guides\\The War Within Reputations\\The Cartels of Undermine" |or
'|complete hasmount(466021) |or
step
Paticipate in the Surge Pricing Event in Undermine
talk Smaks Topskimmer##231409
|tip Complete as many as you can in a row, then keep going as long as you like.
collect Violet Goblin Shredder##229947 |or
|tip The mount item will appear in your bag along with the Extravagant Tip Chest.
|tip You may have to continue
'|complete hasmount(466021) |or
step
use Violet Goblin Shredder##229947
learnmount Violet Goblin Shredder##466021
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Void-Scarred Lynx",{
source='Drop',
description="This guide will teach you how to acquire the Void-Scarred Lynx mount.",
keywords={"Confiscated Cultist Bag","Ground","Incursion","Flame's Radiamce"},
mounts={1228865},
mounttype='Ground',
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)" |or
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)" |or
'|complete completedq(78232,78231) |or
'|complete hasmount(1228865) |or
step
ding 80 |or
'|complete hasmount(1228865) |or
step
Unlock the Flame's Radiance Daily Quests
talk Flame's Radiance Recruiter##242126 |goto Dornogal/0 46.00,49.60
|tip Use the {o}Flame's Radiance{} Reputation Guide to achieve this.
|tip Choose to load the Nightfall Dailes.
Click Here to Load the {o}Flame's Radiance{} Reputation Guide |confirm |loadguide "Reputation Guides\\The War Within Reputations\\Flame's Radiance"
'|complete hasmount(1228865) |or
step
collect Confiscated Cultist's Bag##239546
|tip These drop from the Radiant and Sureki Incursion dailies.
'|complete hasmount(1228865) |or
step
use Confiscated Cultist's Bag##239546
collect Shadowbound Leash##239563
'|complete hasmount(1228865) |or
step
use Shadowbound Leash##239563
learnmount Void-Scarred Lynx##1228865
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Wick",{
description="This guide will teach you how to acquire the Wick mount.",
mounts={449264},
mounttype='Ground',
keywords={"TWW","The War Within","Darkflame Cleft"},
patch='110000',
},[[
step
Enter Mythic or Mythic+ Darkflame Cleft with your group |goto The Ringing Deeps/0 55.48,21.57 < 20
kill The Darkness##210797 |or
|tip He will be the boss in the Lightless Depths of the dungeon.
|tip You may have to kill this boss more than once to receive the mount.
'|complete hasmount(449264) |or
step
Loot the boss or the Challenger's Cache
collect Wick's Lead##225548 |or
'|complete hasmount(449264) |or
step
use Wick's Lead##225548
learnmount Wick##449264
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Algarian Stormrider",{
description="This guide will teach you how to acquire the Algarian Stormrider mount.",
mounts={417888},
mounttype='Flying',
startlevel=10,
keywords={"TWW","The War Within","Promotion","Heroic Edition"},
patch='100107',
},[[
step
You Receive this Mount when you Purchase the Heroic or Epic Edition of The War Within.
|tip This may become available from the Blizzard Store or from the Trading Post some time in the future.
|tip It should be a gift at the top of your Mount Collection list interface.
|tip Just right click the gift to upwrap.
'|complete hasmount(417888) |or
|confirm |or
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Brown-Furred Spiky Bakar",{
description="This guide will teach you how to acquire the Brown-Furred Spiky Bakar mount.",
mounts={424601},
mounttype="Ground",
startlevel=10,
keywords={"Trading Post","Ground"},
patch='100200',
},[[
step
earn 325 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(424601) |or
step
Talk to the Trading Post Vendor
buy Brown-Furred Spiky Bakar##210141 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(424601) |or
step
use Brown-Furred Spiky Bakar##210141
|tip Unwrap this in your mount collection.
learnmount Brown-Furred Spiky Bakar##424601
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Micellaneous Mounts\\Coldflame Cormaera",{
patch='110100',
source='Trading Post',
description="This guide will teach you how to acquire the Coldflame Cormaera mount.",
keywords={"Trading Post","Flying"},
mounts={1226740},
mounttype="Flying",
startlevel=10,
},[[
step
earn 700 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1226740) |or
step
Talk to the Trading Post Vendor
buy Coldflame Cormaera##238941 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1226740) |or
step
use Coldflame Cormaera##238941
|tip Unwrap this in your mount collection.
learnmount Coldflame Cormaera##1226740
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Promotion Mounts\\Coral-Stalker Waveray",{
patch='110200',
source='Promotion',
author="QuestCore",
description="This guide will teach you how to acquire the Coral-Stalker Waveray mount.",
keywords={"Promotion","Flying"},
mounts={367620},
mounttype="Flying",
startlevel=70,
endlevel=80,
},[[
step
This Mount was Part of a Razer Promotion with World of Warcraft in December 2024
|tip You receieved this mount exclusively with a particular Razer keyboard or mouse purchase.
|tip This mount may be available to purchase during Timewalking from the vendor.
confirm
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Emerald Snail",{
description="This guide will teach you how to acquire the Emerald Snail mount.",
mounts={1218069},
mounttype="Ground",
startlevel=10,
keywords={"Trading Post","Ground"},
patch='110100',
},[[
step
earn 325 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1218069) |or
step
Talk to the Trading Post Vendor
buy Emerald Snail##235662 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1218069) |or
step
use Emerald Snail##235662
|tip Unwrap this in your mount collection.
learnmount Emerald Snail##1218069
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Hand of Reshkigaal",{
description="This guide will teach you how to acquire the Hand of Reshkigaal mount.",
mounts={459193},
mounttype='Ground',
startlevel=10,
keywords={"TWW","The War Within","Trading Post"},
patch='110000',
},[[
step
earn 750 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(459193) |or
step
Talk to the Trading Post Vendor
collect Hand of Reshkigaal##226506 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(459193) |or
step
use Hand of Reshkigaal##226506
|learnmount Hand of Reshkigaal##459193
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Highlands Gobbler",{
description="This guide will teach you how to acquire the Highlands Gobbler mount.",
mounts={1251680},
mounttype='Ground',
startlevel=10,
keywords={"TWW","The War Within","Trading Post"},
patch='110000',
},[[
step
earn 500 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1251680) |or
step
Talk to the Trading Post Vendor
collect Highlands Gobbler##250926 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1251680) |or
step
use Highlands Gobbler##250926
|learnmount Highlands Gobbler##1251680
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Keg Leg's Radiant Crocolisk",{
description="This guide will teach you how to acquire the Keg Leg's Radiant Crocolisk mount.",
mounts={457654},
mounttype='Ground',
startlevel=10,
keywords={"TWW","The War Within","Trading Post"},
patch='110002',
},[[
step
earn 600 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(457654) |or
step
collect Keg Leg's Radiant Crocolisk##226041 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(457654) |or
step
use Keg Leg's Radiant Crocolisk##226041
learnmount Keg Leg's Radiant Crocolisk##457654
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Dropped Mounts\\Love Witch's Sweeper",{
patch='110070',
source='Dropped',
author="QuestCore",
description="This guide will teach you how to obtain the Love Witch's Sweeper mount.",
keywords={"Dropped","Flying"},
mounts={472479},
mounttype="Flying",
startlevel=20,
},[[
step
kill Apothecary Hummel##36296
|tip This mount was added to the event, Love is in the Air, in 2026.
|tip During the {b}Love is in the Air{} event, queue for the event holiday dungeon.
|tip The mount item drops in the {p}Heart-Shaped Box{} you can loot after killing the apothecaries in the event dungeon in Shadowfang Keep.
|tip This mount is only available during the event, but may become obtainable by other means in the future.
|tip You may have to run this event dungeon more than once to receive the mount drop.
collect Heart-Shaped Box##54537 |or
'|complete hasmount(472479) |or
step
use Heart-Shaped Box##54537
collect Love Witch's Sweeper##232926 |or
'|complete hasmount(472479) |or
step
use Love Witch's Sweeper##232926
learnmount Love Witch's Sweeper##472479
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Molten Cormaera",{
patch='110100',
source='Trading Post',
description="This guide will teach you how to acquire the Molten Cormaera mount.",
keywords={"Trading Post","Flying"},
mounts={1226855},
mounttype="Flying",
startlevel=10,
},[[
step
Fill up the Travel Points bar in your Adventure Guide (June 2025)
|tip Press SHIFT+J to open the Adventure Guide.
|tip Choose and complete activities listed to earn 1000 Travel Points to fill the bar.
|tip Pay attention to the dates that the items on the lists are available.
|tip You should receive the mount as a wrapped gift in your mount list.
collect Molten Cormaera##238967 |or
'|complete hasmount(1226855) |or
step
use Molten Cormaera##238967
learnmount Molten Cormaera##1226855
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Pearlescent Butterfly",{
description="This guide will teach you how to acquire the Pearlescent Butterfly mount.",
mounts={1217994},
mounttype='Flying',
startlevel=10,
keywords={"TWW","The War Within","Trading Post"},
patch='110100',
},[[
step
earn 700 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1217994) |or
step
collect Pearlescent Butterfly##235650 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1217994) |or
step
use Pearlescent Butterfly##235650
learnmount Pearlescent Butterfly##1217994
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Prized Turkey",{
description="This guide will teach you how to acquire the Prized Turkey mount.",
mounts={1251690},
mounttype='Flying',
startlevel=10,
keywords={"TWW","The War Within","Trading Post"},
patch='110100',
},[[
step
Fill up the Travel Points bar in your Adventure Guide (November 2025)
|tip Press SHIFT+J to open the Adventure Guide.
|tip Choose and complete activities listed to earn 1000 Travel Points to fill the bar.
|tip You should receive the mount as a wrapped gift in your mount list.
learnmount Prized Turkey##1251690
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Plunderlord's Golden Crocolisk",{
description="This guide will teach you how to acquire the Plunderlord's Golden Crocolisk mount.",
mounts={457650},
mounttype='Ground',
startlevel=10,
keywords={"TWW","The War Within","Trading Post"},
patch='110002',
},[[
step
earn 600 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(457650) |or
step
collect Plunderlord's Golden Crocolisk##226040 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(457650) |or
step
use Plunderlord's Golden Crocolisk##226040
learnmount Plunderlord's Golden Crocolisk##457650
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Ruby Butterfly",{
description="This guide will teach you how to acquire the Ruby Butterfly mount.",
mounts={1218012},
mounttype='Flying',
startlevel=10,
keywords={"TWW","The War Within","Trading Post"},
patch='110100',
},[[
step
earn 700 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1218012) |or
step
Talk to the Trading Post Vendor
collect Ruby Butterfly##235657 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1218012) |or
step
use Ruby Butterfly##235657
learnmount Ruby Butterfly##1218012
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Aquatic Mounts\\Trading Post Mounts\\Savage Crimson Battle Turtle",{
patch='110205',
source='Trading Post',
author="QuestCore",
description="This guide will teach you how to acquire the Savage Crimson Battle Turtle.",
keywords={"Trading Post","Aquatic"},
mounts={1266248},
mounttype="Aquatic",
startlevel=80,
},[[
step
This mount is available from the January 2026 Trading Post
|confirm
'|complete hasmount(1266248)
step
earn 500 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1266248) |or
step
Talk to the Trading Post Vendor
collect Savage Crimson Battle Turtle##260409 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1266248) |or
step
use Savage Crimson Battle Turtle##260409
|tip This may automatically be in your mount inventory upon purchase.
learnmount Savage Crimson Battle Turtle##1266248
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Savage Ebony Battle Turtle",{
description="The cannons are powered by an unquenchable rage to seek out enemies and bring them to justice. Nothing can outrun a cannon.",
mounts={453255},
mounttype='Ground',
startlevel=10,
keywords={"TWW","The War Within","Promotion","Steelseries"},
patch='100207',
},[[
step
This mount is tied to a Steelseries Promotion (unknown if it's obtainable through other sources). |confirm |next
'|complete hasmount(453255) |or
step
collect Savage Ebony Battle Turtle##224574 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(453255) |or
step
use Savage Ebony Battle Turtle##224574
learnmount Savage Ebony Battle Turtle##453255
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Spotted Black Riding Goat",{
patch='110100',
source='Trading Post',
description="This guide will teach you how to acquire the Spotted Black Riding Goat mount.",
keywords={"Trading Post","Ground"},
mounts={1219705},
mounttype="Ground",
startlevel=10,
},[[
step
earn 325 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1219705) |or
step
Talk to the Trading Post Vendor
buy Spotted Black Riding Goat##236415 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1219705) |or
step
use Spotted Black Riding Goat##236415
|tip Unwrap this in your mount collection.
learnmount Spotted Black Riding Goat##1219705
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Dropped Mounts\\Spring Butterfly",{
patch='120000',
source='Dropped',
author="QuestCore",
description="This guide will teach you how to acquire the Spring Butterfly mount.",
keywords={"Dropped","Flying"},
mounts={1218013},
mounttype="Flying",
startlevel=80,
},[[
step
kill Apothecary Hummel##36296
|tip This mount drops in the {p}Heart-Shaped Box{} you loot after killing the apothecaries in the event dungeon in Shadowfang Keep.
|tip During the {b}Love is in the Air{} event, queue for the event holiday dungeon.
|tip It is only available during the event, but may become obtainable by other means in the future.
|tip You may have to run this event dungeon more than once to receive the mount drop.
collect Heart-Shaped Box##54537 |or
'|complete hasmount(1218013) |or
step
use Heart-Shaped Box##54537
collect Spring Butterfly##235658 |or
'|complete hasmount(1218013) |or
step
use Spring Butterfly##235658
learnmount Spring Butterfly##1218013
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Spring Harvesthog",{
source='Trading Post',
description="This guide will teach you how to obtain the Spring Harvesthog mount.",
mounts={1226511},
mounttype='Ground',
startlevel=10,
keywords={"Trading Post","Ground"},
patch='110105',
},[[
step
earn 550 Trader's Tender##2032 |or
|tip You receive these from the Trading Post Tour quest, opening the chest each month, and from Adventure Guide activities.
'|complete hasmount(1226511) |or
step
Talk to the Trading Post Vendor
buy Spring Harvesthog##238897 |or
|tip Purchase this from the Trading Post in your capital city.
'|complete hasmount(1226511) |or
step
use Spring Harvesthog##238897
|tip Unwrap this in your mount collection.
learnmount Spring Harvesthog##1226511
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Thrayir, Eyes of the Siren",{
description="In a fit of rage and despair, Thrayir conjured a storm that would ravage the land and annihilate Cyrce's enemies. After nearly ten thousand years, the seafury tempest continues to roil as an echo of his power.",
mounts={471562},
mounttype='Flying',
startlevel=10,
keywords={"TWW","The War Within","Puzzle","Thrayir","Siren Isle"},
patch='110007',
},[[
step
ding 80 |or
'|complete hasmount(471562) |or
step
Complete the quest chain that unlocks Siren Isle
|tip Use the Siren Isle Leveling Guide to achieve this.
Click Here to Load The War Within Full Zones (Story + Side Quests) Siren Isle Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Siren Isle" |only if not completedq(86156) |or
'|complete hasmount(471562) or completedq(86156) |or
step
Complete the Elite World Quest on Siren Isle
|tip This is either Serpent's Wrath, Tides of Greed, or Legacy of the Vrykul.
|tip Kill mobs and event bosses, quests, and daily quests around Siren Isle.
'|complete hasmount(471562) or completedq(84850) or completedq(84851) or completedq(84852)
step
talk Suzie Boltwrench##227815
Select _"I'll defend the camp during the storm."_ |gossip 123657
Enter the Seafury Tempest phase on Siren Isle |complete hasbuff(458069) |goto Siren Isle/0 69.08,49.26 |or
'|complete hasmount(471562) |or
step
Enter the Seafury Tempest phase on Siren Isle |only if not hasbuff(458069)
Kill enemies around these areas
|tip Just about any mob on Siren Isle may drop fragments of this runekey.
|tip Check Group Finder for Torrential Fragment farm groups.
collect 7 Torrential Fragment##234328 |or
'|complete hasmount(471562) or itemcount(232572) >= 1 |or
You can find fast-spawning mobs around here [Siren Isle/0 42.00,25.64]
step
use the Torrential Fragment##234328+
|tip Right click these in your bag.
collect Torrential Runekey##232572 |or
'|complete hasmount(471562) |or
step
Enter the Seafury Tempest phase on Siren Isle |only if not hasbuff(458069)
kill Zek'ul the Shipbreaker##231357
|tip This is a giant flying squid rare elite.
|tip You may need help with this.
|tip You can also use fishing around this area to obtain the Cyclonic Runekey.
collect Cyclonic Runekey##232569 |goto Siren Isle/0 32.94,73.81 |or
'|complete hasmount(471562) |or
You can fish from these spots safely:
[Siren Isle/0 28.37,74.25]
[Siren Isle/0 32.40,83.68]
[Siren Isle/0 39.19,76.10]
[Siren Isle/0 34.06,87.01]
step
Enter the Seafury Tempest phase on Siren Isle |only if not hasbuff(458069)
Click Runed Storm Caches on Land
Click Seafarer's Caches in the Water
|tip These look like treasure chests you can find all over Siren Isle.
|tip Complete the quest, Uncovered Mysteries, to unlock Runed Storm Caches.
|tip Complete the quest, Dipping a Toe, to unlock Seafarer's Caches.
|tip Runed Storm Caches are hidden, but a wind will direct you to find one.
collect 5 Thunderous Fragment##232605 |goto Siren Isle/0 70.50,34.01 |or
'|complete hasmount(471562) |or
You can find more Runed Storm Caches around:
[Siren Isle/0 70.33,33.80]
[Siren Isle/0 69.56,66.80]
[Siren Isle/0 67.89,62.00]
[Siren Isle/0 67.20,78.50]
[Siren Isle/0 67.20,78.30]
step
use the Thunderous Fragment##232605+
|tip Right click these in your bag.
collect Thunderous Runekey##232573 |or
'|complete hasmount(471562) |or
step
Enter the Seafury Tempest phase on Siren Isle |only if not hasbuff(458069)
Click the Dirt Pile
|tip It is next to the house, where the ghost is digging in the ground.
collect Turbulent Fragment##234327 |complete itemcount(234327) == 1 |or
'|complete hasmount(471562) |or
step
Enter the Seafury Tempest phase on Siren Isle |only if not hasbuff(458069)
Enter the cave |goto Siren Isle/0 67.22,78.74
Click the Runic Fragment
|tip It is on the ground in front of the ghost cowering inside the small cave.
collect Turbulent Fragment##234327 |complete itemcount(234327) == 2 |or
'|complete hasmount(471562) |or
step
Enter the Seafury Tempest phase on Siren Isle |only if not hasbuff(458069)
Enter the cave |goto Siren Isle/0 50.67,41.58
Click the Runic Fragment
|tip It is in the outstretched palm of the kneeling ghost.
collect Turbulent Fragment##234327 |complete itemcount(234327) == 3 |or
'|complete hasmount(471562) |or
step
use the Turbulent Fragment##234327+
|tip Right click these in your bag.
collect Turbulent Runekey##232570 |or
'|complete hasmount(471562) |or
step
Enter the Seafury Tempest phase on Siren Isle |only if not hasbuff(458069)
Enter the cave |goto Siren Isle/0 45.27,21.77 < 10 |walk
Click the Singing Tablet |goto Siren Isle/0 50.42,15.14
Select _"<Place your hand in the divot around the crystal.>"_ |gossip 125531
Enter the Forgotten Vault |goto The Forgotten Vault/0 60.61,15.00 < 10 |c |notravel |or
'|complete hasmount(471562) or itemcount(232571) >= 1 |or
step
Enter the Seafury Tempest phase on Siren Isle |only if not hasbuff(458069)
kill Ksvir the Forgotten##231368
|tip In the southern-most chamber, inside the Forgotten Vault.
|tip You may have to kill him more than once to acquire the runekey.
collect the Whirling Runekey##232571 The Forgotten Vault/0 37.91,76.66 |or
'|complete hasmount(471562) |or
step
Enter the Seafury Tempest phase on Siren Isle |only if not hasbuff(458069)
Unlock the 5 Runestones around Thrayir in Any Order
talk Thrayir##233582
accept Thrayir, Eyes of the Siren##85811
step
talk Thrayir##233582
turnin Thrayir, Eyes of the Siren##85811
step
use Thrayir Eyes of the Siren##232639
|tip This is an item in your bag.
learnmount Thrayir, Eyes of the Siren##471562
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Voidfire Deathcycle",{
description="This guide will teach you how to acquire the Voidfire Deathcycle mount.",
mounts={428068},
mounttype='Ground',
startlevel=80,
keywords={"TWW","horrific","vision"},
patch='110200',
},[[
step
Unlock Horrific Visions in Dornogal |complete completedq(87328)
|tip Use a horrific vision guide to unlock the vision portal.
|tip Each week, the vision alternates between Orgrimmar and Stormwind.
|tip You can unlock visions in either version with any number of masks up or none.
|tip The rest of the guide requires 1 mask minimum to see special enemies or collect items.
|tip You must first find the deathcycle in the Stormwind vision to be able to collect the remaining items.
|tip You can do this in two weeks, doing week one when Stormwind is active and week two when Orgrimmar is active.
|tip You will tag the deathcycle in the vision first, then buy items from the AH/vendors, then farm the Stormwind vision and finally the Orgrimmar vision.
|tip You can skip ahead to purchase vendor items first (step 6), but you must do ALL of the Stormwind vision content prior to the Orgrimmar vision content.
|loadguide "Events Guides\\The War Within (70-80)\\Revisited Horrific Vision of Stormwind"
|loadguide "Events Guides\\The War Within (70-80)\\Revisited Horrific Vision of Orgrimmar"
step
click Portal to Horrific Visions##238254
Select _"(Scenario) Send me to the Horrific Vision of Stormwind."_ |gossip 132128
Enter the Horrific Vision |scenariostart Vision of Stormwind##2950 |goto Dornogal/0 34.67,68.33 |q 90129 |future
|tip Accept the queue that pops up.
|tip Faceless Mask of the Long Night can be unlocked by completing all vision objectives in a single run. |only if not completedq(86155)
|tip Faceless Mask of the Daredevil can be unlocked by clearing Valley of Honor in Orgrimmar with 1+ masks active. |only if not completedq(86152)
|tip Faceless Mask of the Pained can be unlocked by clearing Old Town in Stormwind with 1+ masks active. |only if not completedq(86154)
|tip Faceless Mask of the Burned Bridge can be unlocked by clearing Valley of Wisdom in Orgrimmar with 1+ masks active. |only if not completedq(86151)
|tip Faceless Mask of Dark Imagination can be unlocked by clearing Mage Quarter in Stormwind with 1+ masks active. |only if not completedq(86153)
|tip Faceless Mask of Vengeance can be unlocked by looting it from Vengeful Voidspeakers between Old Town and the Trade District in Stormwind. |only if not completedq(88903)
|tip Faceless Mask of the Nemesis can be unlocked by collecting a Nemesis Shard in Orgrimmar and Stormwind. |only if not completedq(88652)
|tip Faceless Mask of Multitudes can be unlocked by defeating every mob in a vision with 1+ masks active. |only if not completedq(86801)
step
Activate a Mask |complete hasbuff("spell:313471") or completedq(90129) |goto Vision of Stormwind/0 53.28,51.18
|tip You must activate at least one mask prior to starting the run to see the Voidfire Deathcycle.
|tip Everything in this guide inside visions requires at least one mask to collect.
step
talk Image of Wrathion##155604
Select _"I am ready to enter the vision."_ |gossip 125259
Speak with the Image of Wrathion |scenariogoal 1/44998 |goto Vision of Stormwind/0 53.28,51.18 |q 90129 |future
step
kill Voidfire Deathcycle##242602
|tip You must have at least one mask active to see it.
|tip It will appear when you approach the area.
clicknpc Voidfire Deathcycle Frame##242639
Select _"<Tag the bike frame so that it will be extracted with you!>"_ |gossip 133246
Tag the Voidfire Deathcycle |complete completedq(90129) |goto Vision of Stormwind/0 61.97,30.44
step
collect Irresistible Red Button##221945 |q 90132 |future
|tip This item is bind on pickup.
|tip You will need to be an Engineer and craft it yourself or acquire it through the Work Order system.
|tip You can purchase the 10x Pile of Rusted Scrap from various Engineering suppliers across Khaz Algar.
step
collect Convincingly Realistic Jumper Cables##221955 |q 90135 |future
|tip Craft it with Khaz Algar Engineering or purchase it from the auction house.
|tip This must be maximum quality.
step
collect Recalibrated Safety Switch##221925 |q 90132 |future
|tip Craft it with Khaz Algar Engineering or purchase it from the auction house.
|tip This must be maximum quality.
step
collect 3 Whimsical Wiring##221858 |q 90132 |future
|tip Craft it with Khaz Algar Engineering or purchase it from the auction house.
|tip This must be maximum quality.
step
collect 12 Entropy Enhancer##221870 |q 90130 |future
|tip Craft it with Khaz Algar Engineering or purchase it from the auction house.
|tip This must be maximum quality.
|tip You will use half of these the first week and half of them the second week.
|tip Don't sell these after purchase.
step
collect Storm-Touched Weapon Wrap##219903 |q 90132 |future
|tip Craft it with Khaz Algar Leatherworking or purchase it from the auction house.
|tip This must be maximum quality.
step
collect Refulgent Crystal##219955 |q 90135 |future
|tip Disenchant items with Khaz Algar Enchanting or purchase it from the auction house.
|tip This must be maximum quality.
step
collect 5 Weavercloth Spellthread##222890 |q 90131 |future
|tip Craft them with Khaz Algar Tailoring or purchase them from the auction house.
|tip This must be maximum quality.
step
talk Zidormi##163463
Select _"Can you show me what the Vale was like before the Black Empire assault?"_ |gossip 51473
Travel to the Old Version of the Vale |complete QC.InPhase("OldVale") or completedq(90523) |goto Vale of Eternal Blossoms New/0 80.97,29.48
|only if completedq(58506)
step
talk Big Keech##61650
|tip He walks around this area.
buy 4 Goblin-Machined Piston##44501 |goto Vale of Eternal Blossoms/0 71.07,43.05 |q 90523 |future
|tip They cost 1,000 gold each.
buy Elementium-Plated Exhaust Pipe##44500 |goto Vale of Eternal Blossoms/0 71.07,43.05 |q 90523 |future
|tip It costs 1,500 gold.
stickystart "Collect_Twisted_Skull-Scythe_Handlebars"
stickystart "Collect_Depleted_Void_Crystal"
stickystart "Collect_Voidflame-Resistant_Hide"
stickystart "Collect_Tentacle_Spokes"
step
click Unclaimed Auction House Crate##529673
|tip Inside the auction house in the Trade District of the Stormwind Vision.
|tip You must have at least 1 mask active to see it. |notinsticky
collect Magic-Lined Manifold##240191 |goto Vision of Stormwind/0 61.57,72.76 |q 90523 |future
step
label "Collect_Twisted_Skull-Scythe_Handlebars"
collect Twisted Skull-Scythe Handlebars##240183 |q 90132 |future
|tip Loot it from Valeera's end chest after completing Old Town in the Stormwind Vision.
|tip Kill Overlord Mathias Shaw to spawn the chest at the end of the run. |notinsticky
|tip You must have at least 1 mask active to see it. |notinsticky
step
label "Collect_Depleted_Void_Crystal"
collect Depleted Void Crystal##240186 |q 90135 |future
|tip Loot it from Umbric's end chest after completing the Mage Quarter in the Stormwind Vision.
|tip Kill Magister Umbric to spawn the chest at the end of the run. |notinsticky
|tip You must have at least 1 mask active to see it. |notinsticky
step
label "Collect_Voidflame-Resistant_Hide"
collect Voidflame-Resistant Hide##240178 |q 90130 |future |or
|tip Loot it from Kelsey's end chest after completing the Dwarven District in the Stormwind Vision.
|tip Kill Therum Deepforge to spawn the chest at the end of the run. |notinsticky
|tip You must have at least 1 mask active to see these. |notinsticky
'|collect Voidflame Wheel##240179 |or
step
label "Collect_Tentacle_Spokes"
collect Tentacle Spokes##240193 |q 90130 |future |or
|tip Loot it from Wyrmbane's end chest after completing the Trade District in the Stormwind Vision.
|tip Rescue the captives to spawn the chest at the end of the run. |notinsticky
|tip You must have at least 1 mask active to see these. |notinsticky
'|collect Voidflame Wheel##240179 |or
step
use the Voidflame-Resistant Hide##240178
collect Voidflame Wheel##240179 |q 90130 |future
step
use the Depleted Void Crystal##240186
collect Pulsing Void Crystal##240185 |q 90135 |future
step
use the Magic-Lined Manifold##240191
collect Deathcycle Exhaust System##240190 |q 90523 |future
step
use the Twisted Skull-Scythe Handlebars##240183
collect Skull-Scythe Handlebars##240182 |q 90132 |future
step
talk Voidfire Deathcycle Frame##242545
Select _"<Look at the tag on the exhaust.>"_ |gossip 133181
Select _"<Install the new exhaust.>"_ |gossip 133187
Install the Exhaust |complete completedq(90523) |goto Dornogal/0 33.63,67.91
step
talk Voidfire Deathcycle Frame##242545
Select _"<Look at the tag on the handlebars.>"_ |gossip 133180
Select _"<Install the new handlebars.>"_ |gossip 133186
Install the Handlebars |complete completedq(90132) |goto Dornogal/0 33.63,67.91
step
talk Voidfire Deathcycle Frame##242545
Select _"<Look at the tag on the battery housing.>"_ |gossip 133179
Select _"<Install the new charged battery.>"_ |gossip 133185
Install the Battery |complete completedq(90135) |goto Dornogal/0 33.63,67.91
step
click Portal to Horrific Visions##238254
Select _"(Scenario) Send me to the Horrific Vision of Orgrimmar."_ |gossip 132129
Enter the Horrific Vision |scenariostart Vision of Orgrimmar##2951 |goto Dornogal/0 34.67,68.33 |q 90133 |future
|tip Accept the queue that pops up.
|tip Faceless Mask of the Long Night can be unlocked by completing all vision objectives in a single run. |only if not completedq(86155)
|tip Faceless Mask of the Daredevil can be unlocked by clearing Valley of Honor in Orgrimmar with 1+ masks active. |only if not completedq(86152)
|tip Faceless Mask of the Pained can be unlocked by clearing Old Town in Stormwind with 1+ masks active. |only if not completedq(86154)
|tip Faceless Mask of the Burned Bridge can be unlocked by clearing Valley of Wisdom in Orgrimmar with 1+ masks active. |only if not completedq(86151)
|tip Faceless Mask of Dark Imagination can be unlocked by clearing Mage Quarter in Stormwind with 1+ masks active. |only if not completedq(86153)
|tip Faceless Mask of Vengeance can be unlocked by looting it from near the Vengeful Voidspeakers between Old Town and the Trade District in Stormwind. |only if not completedq(88903)
|tip Faceless Mask of the Nemesis can be unlocked by collecting a Nemesis Shard in Orgrimmar and Stormwind. |only if not completedq(88652)
|tip Faceless Mask of Multitudes can be unlocked by defeating every mob in a vision with 1+ masks active. |only if not completedq(86801)
step
Activate a Mask |complete hasbuff("spell:313471") or completedq(90133) |goto Vision of Stormwind/0 53.28,51.18
|tip You must activate at least one mask prior to starting the run to collect items.
step
talk Image of Wrathion##155604
Select _"I am ready to enter the vision."_ |gossip 125259
Speak with the Image of Wrathion |scenariogoal 1/103871 |goto Vision of Orgrimmar/0 51.99,83.58 |q 90133 |future
stickystart "Collect_Void-Scarred_Boarhide"
stickystart "Collect_Voidflame-Resistant_Hide_2"
stickystart "Collect_Tentacle_Spokes_2"
step
collect Void-Forged Engine Block##240189 |goto Vision of Orgrimmar/0 56.92,56.82 |q 90133 |future
|tip Inside Nog's Machine Shop in The Drag of the Orgrimmar Vision.
|tip You must have at least 1 mask active to see this.
step
label "Collect_Void-Scarred_Boarhide"
collect Void-Scarred Boarhide##240180 |q 90131 |future
|tip Loot this from Rexxar's end chest of the Orgrimmar Vision.
|tip Kill Rexxar to spawn the chest at the end of the run. |notinsticky
|tip You must have at least 1 mask active to see this. |notinsticky
step
label "Collect_Voidflame-Resistant_Hide_2"
collect Voidflame-Resistant Hide##240178 |q 90130 |future
|tip Loot it from Zekhan's end chest after completing the Valley of Spirits in the Orgrimmar Vision.
|tip Kill the Oblivion Elemental to spawn the chest at the end of the run. |notinsticky
|tip You must have at least 1 mask active to see these. |notinsticky
step
label "Collect_Tentacle_Spokes_2"
collect Tentacle Spokes##240193 |q 90130 |future
|tip Loot it from Garona's end chest after completing The Drag in the Orgrimmar Vision.
|tip Kill Inquisitor Gnshal to spawn the chest at the end of the run. |notinsticky
|tip You must have at least 1 mask active to see these. |notinsticky
step
use the Void-Scarred Boarhide##240180
collect Boarhide Deathcycle Seat##240181 |q 90131 |future
step
use the Void-Forged Engine Block##240189
collect Void-Forged Inline Four Engine##240188 |q 90133 |future
step
use the Voidflame-Resistant Hide##240178
collect 2 Voidflame Wheel##240179 |q 90130 |future
step
talk Voidfire Deathcycle Frame##242545
Select _"<Look at the tag on the seat.>"_ |gossip 133178
Select _"<Install the new seat.>"_ |gossip 133184
Install the Seat |complete completedq(90131) |goto Dornogal/0 33.63,67.91
step
talk Voidfire Deathcycle Frame##242545
Select _"<Look at the tag on the engine.>"_ |gossip 133174
Select _"<Install the new engine.>"_ |gossip 133176
Install the Engine |complete completedq(90133) |goto Dornogal/0 33.63,67.91
step
talk Voidfire Deathcycle Frame##242545
Select _"<Look at the tag on the wheel spokes.>"_ |gossip 133177
Select _"<Install the new wheels.>"_ |gossip 133183
Install the Wheels |complete completedq(90130) |goto Dornogal/0 33.63,67.91
step
talk Voidfire Deathcycle Frame##242545
Select _"<Press the irresistible red button and see if it will start.>"_ |gossip 133182
Learn the Voidfire Deathcycle Mount |learnmount Voidfire Deathcycle##428068
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Micellaneous Mounts\\Void-Scarred Pack Mother",{
patch='110100',
source='Vision of Orgrimmar',
description="This guide will teach you how to acquire the Void-Scarred Pack Mother mount.",
keywords={"Drop","Ground"},
mounts={1218306},
mounttype="Ground",
startlevel=10,
},[[
step
Complete Revisited Horrific Vision of Orgrimmar
|tip Kill all bosses in the Horrific Vision Scenario to receive Faceless Masks.
|tip Equip any mask before entereing the Vision of Orgrimmar.
|tip You must be wearing a mask to have access to items required to obtain the mount.
|tip Use the Revisited Horrific Visons Event Guides to achieve this.
Click Here to Load the Revisited Horrific Visions of Orgrimmar |confirm |loadguide "Events Guides\\The War Within (70-80)\\Revisited Horrific Vision of Orgrimmar"
|tip
Click Here to Load the Revisited Horrific Visions of Stormwind |confirm |loadguide "Events Guides\\The War Within (70-80)\\Revisited Horrific Vision of Stormwind"
'|complete hasmount(1218306) |or
'|complete inscenario() |or
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Crowd Pummeler 2-30",{
description="This guide will teach you how to acquire the Crowd Pummeler 2-30 mount.",
mounts={448186},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Engineering","Khaz Algar","Flying"},
patch='110002',
},[[
step
collect Crowd Pummeler 2-30##221967 |or
|tip This can be crafted with {y}Khaz Algar Engineering{} at skill 101, or purchased at the auction house.
|tip This schematic can be discovered while using {b}Comprehensibly Organized Ideas{}. |only hasprof("Khaz Algar Engineering",1,175)
|tip The components purchased from {y}Paxton Bombshell{} at Opportunity Point in The Ringing Deeps.
'|complete hasmount(448186) |or
step
use Crowd Pummeler 2-30##221967
learnmount Crowd Pummeler 2-30##448186
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Kah, Legend of the Deep",{
description="This guide will teach you how to acquire the Kah, Legend of the Deep  mount.",
mounts={448850},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Fishing","Khaz Algar","Flying"},
patch='100207',
},[[
step
Reach level 150 Khaz Algar Fishing |complete hasprof("Khaz Algar Fishing",150,300) |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
step
label "RETURN_TO_START"
talk Captain Oathmyt##226846 |only if questactive(82778,83529,83530,83531,83532)
accept Hallowfall Fishing Derby##82778 |goto Hallowfall/0 44.20,61.60 |only if questactive(82778) |or
accept Hallowfall Fishing Derby##83529 |goto Hallowfall/0 44.20,61.60 |only if questactive(83529) |or
accept Hallowfall Fishing Derby##83530 |goto Hallowfall/0 44.20,61.60 |only if questactive(83530) |or
accept Hallowfall Fishing Derby##83531 |goto Hallowfall/0 44.20,61.60 |only if questactive(83531) |or
accept Hallowfall Fishing Derby##83532 |goto Hallowfall/0 44.20,61.60 |only if questactive(83532) |or
|tip This is a weekly quest that is only available on Saturdays.
|tip You will receive a buff called "Derby Dasher". |only if questactive(82778,83529,83530,83531,83532)
|tip You will only get achievement credit for catching the required trophy fish with this buff. |only if questactive(82778,83529,83530,83531,83532)
|tip You have a chance to catch more than one kind of trophy fish required for the achievement from each cast. |only if questactive(82778,83529,83530,83531,83532)
|tip Keep in mind: buffs are important to catching some fish, but overbuffing can keep you from fishing some simpler fish. |only if questactive(82778,83529,83530,83531,83532)
'|complete for i=1,16 do if not achieved(40539,i) then return end end return true |next "WE_STILL_FISHIN" |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
step
label "WE_FISHIN"
Click the Trophy Fish You Wish to Catch |only if haveq(82778,83529,83530,83531,83532)
This week's fish are: |only if haveq(82778,83529,83530,83531,83532)
Nibbling Minnow |confirm |next "NIBBLING_MINNOW" |only if (hasbuff(456024) and (not haveq(82778,83529,83530,83531,83532)) or haveq(82778)) |or
Arathor Hammerfish |confirm |next "ARATHOR_HAMMERFISH" |only if (hasbuff(456024) and (not haveq(82778,83529,83530,83531,83532)) or haveq(82778)) |or
Queen's Lurefish |confirm |next "QUEENS_LUREFISH" |only if (hasbuff(456024) and (not haveq(82778,83529,83530,83531,83532)) or haveq(82778)) |or
Bismuth Bitterling |confirm |next "BISMUTH_BITTERLING" |only if (hasbuff(456024) and (not haveq(82778,83529,83530,83531,83532)) or haveq(83529)) |or
Whispering Stargazer |confirm |next "WHISPERING_STARGAZER" |only if (hasbuff(456024) and (not haveq(82778,83529,83530,83531,83532)) or haveq(83529)) |or
Regal Dottyback |confirm |next "REGAL_DOTTYBACK" |only if (hasbuff(456024) and (not haveq(82778,83529,83530,83531,83532)) or haveq(83529)) |or
Bloody Perch |confirm |next "BLOODY_PERCH" |only if (hasbuff(456024) and (not haveq(82778,83529,83530,83531,83532)) or haveq(83530)) |or
Roaring Anglerseeker |confirm |next "ROARING_ANGLERSEEKER" |only if (hasbuff(456024) and (not haveq(82778,83529,83530,83531,83532))or haveq(83530)) |or
Spiked Sea Raven |confirm |next "SPIKED_SEA_RAVEN" |only if (hasbuff(456024) and (not haveq(82778,83529,83530,83531,83532)) or haveq(83530)) |or
Dilly Dally Dace |confirm |next "DILLY_DALLY_DACE" |only if (hasbuff(456024) and (not haveq(82778,83529,83530,83531,83532)) or haveq(83531)) |or
Dornish Pike |confirm |next "DORNISH_PIKE" |only if (hasbuff(456024) and (not haveq(82778,83529,83530,83531,83532)) or haveq(83531)) |or
Kaheti Slum Shark |confirm |next "KAHETI_SLUM_SHARK" |only if (hasbuff(456024) and (not haveq(82778,83529,83530,83531,83532)) or haveq(83531)) |or
Crystalline Sturgeon |confirm |next "CRYSTALLINE_STURGEON" |only if (hasbuff(456024) and (not haveq(82778,83529,83530,83531,83532)) or haveq(83532)) |or
Specular Rainbowfish |confirm |next "SPECULAR_RAINBOWFISH" |only if (hasbuff(456024) and (not haveq(82778,83529,83530,83531,83532)) or haveq(83532))
Sanguine Dogfish |confirm |next "SANGUINE_DOGFISH" |only if (hasbuff(456024) and (not haveq(82778,83529,83530,83531,83532)) or haveq(83532)) |or
'|complete achieved(40539,4) and achieved(40539,11) and achieved(40539,17) and achieved(40539,3) and achieved(40539,5) and achieved(40539,12) and achieved(40539,1) and achieved(40539,10) and achieved(40539,16) and achieved(40539,20) and achieved(40539,9) and achieved(40539,15) and achieved(40539,2) and achieved(40539,7) and achieved(40539,14) |next "WE_STILL_FISHIN"
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
step
label "WE_STILL_FISHIN"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
Click the Trophy Fish You Wish to Catch
|tip These fish are not included in the fishing derby, but are required for the achievement and mount.
|tip You still need the {b}Derby Dasher{} buff when catching these fish.
Pale Huskfish |confirm |next "PALE_HUSKFISH" |only if not achieved(40539,13)
Awoken Coelacanth |confirm |next "AWOKEN_COELACANTH" |only if not achieved(40539,19)
Goldengill Trout |confirm |next "GOLDENGILL_TROUT" |only if not achieved(40539,6)
Quiet River Bass |confirm |next "QUIET_RIVER_BASS" |only if not achieved(40539,8)
Cursed Ghoulfish |confirm |next "CURSED_GHOULFISH" |only if not achieved(40539,18)
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_FISHIN"
step
label "NIBBLING_MINNOW"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Nibbling Minnow##220138 |q 82778/1 |goto Isle of Dorn/0 46.41,56.14 |or
|tip You do not need a fishing buff to catch this fish.
|tip Fish in pools, or in open water, along the coast or waterways of any Khaz Algar zone.
|only if haveq(82778)
|next "HALLOWFALL_DERBY_TURN_IN" |only if readyq(82778) |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_FISHIN"
step
label "ARATHOR_HAMMERFISH"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Arathor Hammerfish##220145 |q 82778/2 |goto Hallowfall/0 38.90,56.19 |or
|tip Use an Arathor Hammerfall Lure bait to increase your chances of catching this fish.
|tip Fish in Blood in the Water pools or in open water in Hallowfall.
|only if haveq(82778)
|next "HALLOWFALL_DERBY_TURN_IN" |only if readyq(82778) |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_FISHIN"
step
label "QUEENS_LUREFISH"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Queen's Lurefish##220151 |q 82778/3 |goto Azj-Kahet/0 60.79,23.78 |or
|tip Throw a Regal Dottyback and/or a Royal Chum, in a Royal Ripple pool bait to increase your chances of catching this fish.
|tip Fish in Royal Ripple pools you find around the Azj-Kahet waterways.
|only if haveq(82778)
|next "HALLOWFALL_DERBY_TURN_IN" |only if readyq(82778) |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_FISHIN"
step
label "BISMUTH_BITTERLING"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Bismuth Bitterling##220137 |q 83529/1 |goto Isle of Dorn/0 46.50,56.78 |or
|tip You do not need a fishing buff to catch this fish.
|tip Fish in pools, or in open water, along the coast or waterways of any Khaz Algar zone.
|next "HALLOWFALL_DERBY_TURN_IN" |only if readyq(83529) |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_FISHIN"
step
label "WHISPERING_STARGAZER"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Whispering Stargazer##220139 |q 83529/2 |goto Isle of Dorn/0 46.41,56.14 |or
|tip You do not need a fishing buff to catch this fish.
|tip Fish in pools, or in open water, along the coast or waterways of any Khaz Algar zone.
|next "HALLOWFALL_DERBY_TURN_IN" |only if readyq(83529) |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_FISHIN"
step
label "REGAL_DOTTYBACK"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Regal Dottyback##220146 |q 83529/3 |goto Azj-Kahet/0 62.71,22.71 |or
|tip Throw a Royal Chum bait or a Regal Dottyback in a Royal Ripple pool bait to increase your chances of catching this fish.
|tip Fish in Royal Ripple pools in Hallowfall and Azj-Kahet coasts and waterways.
|next "HALLOWFALL_DERBY_TURN_IN" |only if readyq(83529) |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_FISHIN"
step
label "BLOODY_PERCH"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Bloody Perch##220135 |q 83530/1 |goto Isle of Dorn/0 46.50,56.81 |or
|tip Use an Arathor Hammerfall Lure bait to increase your chances of catching this fish.
|tip Fish in Blood in the Water pools or in open water in any Khaz Algar zone.
|next "HALLOWFALL_DERBY_TURN_IN" |only if readyq(83530) |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_FISHIN"
step
label "ROARING_ANGLERSEEKER"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Roaring Anglerseeker##220144 |q 83530/2 |goto The Ringing Deeps/0 54.50,50.31 |or
|tip Use an Roaring Anglerseeker Lure bait to increase your chances of catching this fish.
|tip Fish in Anglerseeker Torrent pools in the Ringing Deeps and Hallowfall, but also in any Khaz Algar zone.
|next "HALLOWFALL_DERBY_TURN_IN" |only if readyq(83530) |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_FISHIN"
step
label "SPIKED_SEA_RAVEN"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Spiked Sea Raven##220150 |q 83530/3 |goto Isle of Dorn/0 46.41,56.14 |or
|tip You do not need a fishing buff to catch this fish.
|tip Fish in pools, or in open water, along the coast or waterways of any Khaz Algar zone.
|next "HALLOWFALL_DERBY_TURN_IN" |only if readyq(83530) |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_FISHIN"
step
label "DILLY_DALLY_DACE"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Dilly Dally Dace##220134 |q 83531/1 |goto Hallowfall/0 44.90,16.19 |or
|tip You do not need a fishing buff to catch this fish.
|tip Fish in Festering Rotpools, or other types of pools, or in open water in Hallowfall, Isle of Dorn, and Azj-Kahet.
|next "HALLOWFALL_DERBY_TURN_IN" |only if readyq(83531) |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_FISHIN"
step
label "DORNISH_PIKE"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Dornish Pike##220143 |q 83531/2  |goto Isle of Dorn/0 46.41,56.14 |or
|tip Use Dornish Pike Lure bait to increase your chances of catching this fish.
|tip Fish in Calm Surfacing Ripple pools, or in open water in Hallowfall, Asj-Kahet, or Isle of Dorn.
|next "HALLOWFALL_DERBY_TURN_IN" |only if readyq(83531) |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_FISHIN"
step
label "KAHETI_SLUM_SHARK"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Kaheti Slum Shark##220147 |q 83531/3 |goto Hallowfall/0 44.90,16.19 |or
|tip You do not need a fishing buff to catch this fish.
|tip Fish in Swarm of Slum Sharks pools, or in open water in Hallowfall, and in Blood in the Water pools in Azj-Kahet.
|next "HALLOWFALL_DERBY_TURN_IN" |only if readyq(83531) |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_FISHIN"
step
label "CRYSTALLINE_STURGEON"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Crystalline Sturgeon##220136 |q 83532/1 |goto Isle of Dorn/0 46.41,56.14 |or
|tip You do not need a fishing buff to catch this fish.
|tip Fish in Glimmerpools along the coast and in waterways of any Khaz Algar zone.
|next "HALLOWFALL_DERBY_TURN_IN" |only if readyq(83532) |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_FISHIN"
step
label "SPECULAR_RAINBOWFISH"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Specular Rainbowfish##220141 |q 83532/2 |goto Isle of Dorn/0 46.41,56.14 |or
|tip Use a Specular Rainbowfish Lure to increase your chances of catching this fish.
|tip Fish in Festering Rotpools, or other types of pools, or in open water in Hallowfall, and Azj-Kahet.
|next "HALLOWFALL_DERBY_TURN_IN" |only if readyq(83532) |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_FISHIN"
step
label "SANGUINE_DOGFISH"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Sanguine Dogfish##220149 |q 83532/3 |goto Hallowfall/0 44.90,16.19 |or
|tip Throw a few Bloody Perch into the water to gain the buff to increase your chances of catching this fish.
|tip Fish in Blood in the Water pools, other types of pools, or in open water in Hallowfall.
|next "HALLOWFALL_DERBY_TURN_IN" |only if readyq(83532) |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_FISHIN"
step
label "PALE_HUSKFISH"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Pale Huskfish##220148 |goto Isle of Dorn/0 76.11,56.94 |or
|tip You do not need a fishing buff to catch this fish.
|tip Fish in Infused Ichor Spills, Festering Rotpools, and other types of pools, or in open water in Isle of Dorn, Azj-Kahet, and Hallowfall.
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_STILL_FISHIN"
step
label "AWOKEN_COELACANTH"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Awoken Coelacanth##220153 |goto Nerub'ar/0 67.37,23.58 |or
|tip Throw a Whispering Stargazer, a Bismuth Bitterling, a Crystalline Sturgeon, Cursed Ghoulfish, Nibbling Minnow, and/or a Goldengill Trout, into the water to increase your chances of catching this fish.
|tip You can also use an Algari Weaverline to buff your fishing skill.
|tip Fish in pools or open water pretty much anywhere in Azj-Kahet, but try this spot inside the cave, but outside the Tak-Rethan Delve first.
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_STILL_FISHIN"
step
label "GOLDENGILL_TROUT"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Goldengill Trout##222533 |goto Isle of Dorn/0 46.41,56.14 |or
|tip Throw a Whispering Stargazer, a Bismuth Bitterling, a Crystalline Sturgeon, Cursed Ghoulfish, Nibbling Minnow, and/or a Goldengill Trout, into the water to increase your chances of catching this fish.
|tip Fish in Glimmerpools on the Isle of Dorn, Hallowfall, and Azj-Kahet.
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_STILL_FISHIN"
step
label "QUIET_RIVER_BASS"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Quiet River Bass##220142 |goto Isle of Dorn/0 46.41,56.14 |or
|tip Use Quiet River Bass bait and throw a few buff fish to help you catch this fish.
|tip Buff up and fish from River Bass pools or Calm Surface Ripple pools to catch this fish.
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_STILL_FISHIN"
step
label "CURSED_GHOULFISH"
Gain the {b}Derby Dasher{} buff |only if not hasbuff(456024)
collect Cursed Ghoulfish##220152 |goto Hallowfall/0 44.90,16.19 |or
|tip Use a buff food for fishing skill and a Perception buff to help you catch this fish.
|tip Fish these from Blood in the Water pools, Festering Rotpools, or Infused Ichor Spill pools anywhere in Khaz Algar.
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "WE_STILL_FISHIN"
step
label "HALLOWFALL_DERBY_TURN_IN"
talk Captain Oathmyt##226846
turnin Hallowfall Fishing Derby##82778 |only if readyq(82778) or completedq(82778) |or
turnin Hallowfall Fishing Derby##83529 |only if readyq(83529) or completedq(83529) |or
turnin Hallowfall Fishing Derby##83530 |only if readyq(83530) or completedq(83530) |or
turnin Hallowfall Fishing Derby##83531 |only if readyq(83531) or completedq(83531) |or
turnin Hallowfall Fishing Derby##83532 |only if readyq(83532) or completedq(83532) |or
'|complete achieved(40539,4) and achieved(40539,11) and achieved(40539,17) and achieved(40539,3) and achieved(40539,5) and achieved(40539,12) and achieved(40539,1) and achieved(40539,10) and achieved(40539,16) and achieved(40539,20) and achieved(40539,9) and achieved(40539,15) and achieved(40539,2) and achieved(40539,7) and achieved(40539,14) |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
|next "LIST_OF_NEEDED_FISH"
step
label "LIST_OF_NEEDED_FISH"
Click a Fish You Wish to Catch
Nibbling Minnow |confirm |next "NIBBLING_MINNOW" |only if not achieved(40539,4) |or
Arathor Hammerfish |confirm |next "ARATHOR_HAMMERFISH" |only if not achieved(40539,11) |or
Queen's Lurefish |confirm |next "QUEENS_LUREFISH" |only if not achieved(40539,17)
Bismuth Bitterling |confirm |next "BISMUTH_BITTERLING" |only if not achieved(40539,3) |or
Whispering Stargazer |confirm |next "WHISPERING_STARGAZER" |only if not achieved(40539,5) |or
Regal Dottyback |confirm |next "REGAL_DOTTYBACK" |only if not achieved(40539,12) |or
Bloody Perch |confirm |next "BLOODY_PERCH" |only if not achieved(40539,1) |or
Roaring Anglerseeker |confirm |next "ROARING_ANGLERSEEKER" |only if not achieved(40539,10) |or
Spiked Sea Raven |confirm |next "SPIKED_SEA_RAVEN" |only if not achieved(40539,16) |or
Dilly Dally Dace |confirm |next "DILLY_DALLY_DACE" |only if not achieved(40539,20) |or
Dornish Pike |confirm |next "DORNISH_PIKE" |only if not achieved(40539,9) |or
Kaheti Slum Shark |confirm |next "KAHETI_SLUM_SHARK" |only if not achieved(40539,15) |or
Crystalline Sturgeon |confirm |next "CRYSTALLINE_STURGEON" |only if not achieved(40539,2) |or
Specular Rainbowfish |confirm |next "SPECULAR_RAINBOWFISH" |only if not achieved(40539,7) |or
Sanguine Dogfish |confirm |next "SANGUINE_DOGFISH" |only if not achieved(40539,14) |or
Pale Huskfish |confirm |next "PALE_HUSKFISH" |only if not achieved(40539,13) |or
Awoken Coelacanth |confirm |next "AWOKEN_COELACANTH" |only if not achieved(40539,19) |or
Goldengill Trout |confirm |next "GOLDENGILL_TROUT" |only if not achieved(40539,6) |or
Quiet River Bass |confirm |next "QUIET_RIVER_BASS" |only if not achieved(40539,8) |or
Cursed Ghoulfish |confirm |next "CURSED_GHOULFISH" |only if not achieved(40539,18) |or
Click Here to Return to the Start |confirm |next "RETURN_TO_START"
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
step
collect Kah Legend of the Deep##223286 |or
'|complete hasmount(448850) |next "END_OF_KAH_GUIDE" |or
step
label "END_OF_KAH_GUIDE"
use Kah Legend of the Deep##223286
learnmount Kah, Legend of the Deep##448850
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\PVP Mounts\\Forged Gladiator's Fel Bat",{
description="This guide will teach you how to acquire the Forged Gladiator's Fel Bat mount.",
mounts={449466},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","PVP","Achievement"},
patch='110002',
},[[
step
achieve 40393 |n
|tip Win 50 Games as a Gladiator in The War Within Season One in 3v3.
collect Forged Gladiator's Fel Bat##223586 |or
'|complete hasmount(449466) |or
step
use Forged Gladiator's Fel Bat##223270
learnmount Forged Gladiator's Fel Bat##449466
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\PVP Mounts\\Hooktalon",{
description="This guide will teach you how to acquire the Hooktalon mount.",
mounts={471696},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","PVP","Plunderstorm"},
patch='110007',
},[[
step
Press "I" and Queue for _Plunderstorm_ on the Player vs. Player Tab of the Group Finder
|tip You can go solo, or group with friends!
|tip The currency is called Plunder, and can be picked up off the ground, looted after killing enemy mobs and players, from opening chests, completing quests, and winning matches.
|tip You don't lose Plunder if you die.
|tip There is no renown to push.
earn 5000 Plunder##3139
step
Press "I", then Select _Plunderstorm_, then Click the Link for the _Plunderstore_ from the Player vs. Player Tab
|tip Click the "Mounts" tab, and select the Hooktalon mount.
buy Hooktalon##233241 |n
learnmount Hooktalon##471696
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\PVP Mounts\\Plunderlord's Midnight Crocolisk",{
description="This guide will teach you how to acquire the Plunderlord's Midnight Crocolisk mount.",
mounts={457656},
mounttype='Ground',
startlevel=80,
keywords={"TWW","The War Within","PVP","Plunderstorm"},
patch='110000',
},[[
step
Press "I" and Queue for _Plunderstorm_ on the Player vs. Player Tab of the Group Finder
|tip You can go solo, or group with friends!
|tip The currency is called Plunder, and can be picked up off the ground, looted after killing enemy mobs and players, from opening chests, completing quests, and winning matches.
|tip You don't lose Plunder if you die.
|tip There is no renown to push.
earn 5000 Plunder##3139
step
Press "I", then Select _Plunderstorm_, then Click the Link for the _Plunderstore_ from the Player vs. Player Tab
|tip Click the "Mounts" tab, and select the Plunderlord's Midnight Crocolisk mount.
buy Plunderlord's Midnight Crocolisk##226042 |n
learnmount Plunderlord's Midnight Crocolisk##457656
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\PVP Mounts\\Polly Roger",{
description="This guide will teach you how to acquire the Polly Roger mount.",
mounts={437162},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","PVP","Plunderstorm"},
patch='110007',
},[[
step
Press "I" and Queue for _Plunderstorm_ on the Player vs. Player Tab of the Group Finder
|tip You can go solo, or group with friends!
|tip The currency is called Plunder, and can be picked up off the ground, looted after killing enemy mobs and players, from opening chests, completing quests, and winning matches.
|tip You don't lose Plunder if you die.
|tip There is no renown to push.
earn 5000 Plunder##3139
step
Press "I", then Select _Plunderstorm_, then Click the Link for the _Plunderstore_ from the Player vs. Player Tab
|tip Click the "Mounts" tab, and select the Polly Roger mount.
buy Polly Roger##233240 |n
learnmount Polly Roger##437162
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\PVP Mounts\\Royal Seafeather",{
description="This guide will teach you how to acquire the Royal Seafeather mount.",
mounts={254812},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","PVP","Plunderstorm"},
patch='080001',
},[[
step
Press "I" and Queue for _Plunderstorm_ on the Player vs. Player Tab of the Group Finder
|tip You can go solo, or group with friends!
|tip The currency is called Plunder, and can be picked up off the ground, looted after killing enemy mobs and players, from opening chests, completing quests, and winning matches.
|tip You don't lose Plunder if you die.
|tip There is no renown to push.
earn 5000 Plunder##3139
step
Press "I", then Select _Plunderstorm_, then Click the Link for the _Plunderstore_ from the Player vs. Player Tab
|tip Click the "Mounts" tab, and select the Royal Seafeather mount.
buy Royal Seafeather##233242 |n
learnmount Royal Seafeather##254812
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Underwater Mounts\\PVP Mounts\\Silver Tidestallion",{
description="This guide will teach you how to acquire the Silver Tidestallion mount.",
mounts={300154},
mounttype='Underwater',
startlevel=80,
keywords={"TWW","The War Within","PVP","Plunderstorm"},
patch='080200',
},[[
step
Press "I" and Queue for _Plunderstorm_ on the Player vs. Player Tab of the Group Finder
|tip You can go solo, or group with friends!
|tip The currency is called Plunder, and can be picked up off the ground, looted after killing enemy mobs and players, from opening chests, completing quests, and winning matches.
|tip You don't lose Plunder if you die.
|tip There is no renown to push.
earn 1500 Plunder##3139
step
Press "I", then Select _Plunderstorm_, then Click the Link for the _Plunderstore_ from the Player vs. Player Tab
|tip Click the "Mounts" tab, and select the Silver Tidestallion mount.
buy Silver Tidestallion##233243 |n
learnmount Silver Tidestallion##300154
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Quest Mounts\\Curious Slateback",{
patch='110200',
source='Unknown',
author="QuestCore",
description="This guide will teach you how to acquire the Curious Slateback mount.",
keywords={"Unknown","Ground"},
mounts={1233561},
mounttype="Ground",
startlevel=80,
},[[
step
Complete the Quest {p}Ecological Succession{}
|tip You can use the {p}Ecological Succession{} Leveling Guide to accomplish this.
Click Here to Load the {p}Ecological Succession{} Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Ecological Succession"
collect Wriggling Pinnacle Cache##245611 |or
'|complete hasmount(1233561) |or
step
use Wriggling Pinnacle Cache##245611
|tip You may have to complete this weekly quest more than once to obtain the mount.
collect Curious Slateback##242734 |or
'|complete hasmount(1233561) |or
step
use Curious Slateback##242734
learnmount Curious Slateback##1233561
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Quest Mounts\\Darkfuse Spy-Eye",{
description = "This guide will teach you how to acquire the Darkfuse Spy-Eye mount.",
mounts={466027},
mounttype='Flying',
source='Drop',
patch='110100',
},[[
step
Complete the {b}Khaz Algar Loremaster{} achievement and {b}The War Within Story Campaign{}
|tip This achievement is account-wide once a character on your account gets it.
|tip Use the {o}Khaz Algar Leveling Guides{} to accomplish this.
Click Here to Load the {y}Story Only{} Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)" |or
|tip
Click Here to Load the {y}Full Zone (Story + Side Quests){} Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)" |or
'|complete completedq(78232,78231) |or
'|complete hasmount(466027) |or
step
ding 80 |or
'|complete hasmount(466027) |or
step
Complete the {b}Lingering Shadows Campaign{}
|tip Use the {o}Lingering Shadows Campaign{} Leveling Guide to accomplish this.
Click Here to Load the {y}Lingering Shadows Campaign{} Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Lingering Shadows" |or
'|complete hasmount(466027) |or
step
Complete the {b}Undermine Storyline{}
|tip Use the {w}Undermine Storyline{} Leveling Guide to accomplish this.
|tip
Click Here to Load the {o}Undermine (Full Zone){} Leveling Guide |next |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)" |or
|tip
Click Here to Load the {y}Undermine (Story Only){} Leveling Guide |next |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)" |or
'|complete hasmount(466027) |or
step
Reach Renown Rank 6 with {w}The Cartels of Undermine{} |complete factionrenown(2653) >= 6 |or
'|complete hasmount(466027) |or
step
Reach Renown Rank {w}Friendly{} with {w}Darkfuse Solutions{} |complete factionrenown(2669) >= Friendly |or
|tip Kill bosses in the {w}Liberation of Undermine{} raid.
'|complete hasmount(466027) |or
step
Enter the Hatch |goto Undermine/0 29.74,41.10 < 10 |walk
talk Sitch Lowdown##231396
|tip Inside the underground bunker in Hovel Hill.
buy Canister of Darkfuse Solution##229823 |goto Undermine/0 30.75,38.93 |or
|tip This costs 100 Resonance Crystals.
'|complete hasmount(466027) |or
step
Insert the {b}Canister of Darkfuse Solution{} Into the Pylon |goto Undermine/0 40.60,91.80
|tip This will summon the {p}Darkfuse Precipitant{}.
|tip It is an elemental rare elite.
|tip You may need help with this.
kill Darkfuse Precipitant##231310 |goto Undermine/0 41.40,92.02
collect Darkfuse Spy-Eye##229955 |or
|tip It may take more than one kill to obtain the mount.
|tip This is an account-wide, weekly completion quest.
'|complete hasmount(466027) |or
step
use Darkfuse Spy-Eye##229955
learnmount Darkfuse Spy-Eye##466027
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Quest Mounts\\Delver's Dirigible",{
description="This guide will teach you how to acquire the Delver's Dirigible mount.",
mounts={446052},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Dirigible","Flying"},
patch='110000',
},[[
step
Complete the Khaz Algar Loremaster achievement quests and The War Within Story Campaign
|tip Use the Khaz Algar Leveling Guides to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)" |or
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)" |or
'|complete completedq(78232,78231) |or
'|complete hasmount(446052) |or
step
ding 80 |or
'|complete hasmount(446052) |or
step
talk Brann Bronzebeard##206017
accept Ship it!##81510 |goto Dornogal/0 47.60,44.40 |or
'|complete hasmount(446052) |or
step
Watch the dialogue
talk Brann Bronzebeard##206017
turnin Ship it!##81510 |goto Dornogal/0 47.60,44.40 |n
collect Delver's Dirigible##219391 |or
'|complete hasmount(446052) |or
step
use Delver's Dirigible##219391
learnmount Delver's Dirigible##446052
step
Click Here to Load the Delver's Dirigible Customization Options Guide |confirm |next "Pets & Mounts Guides\\Mounts\\Flying Mounts\\Quest Mounts\\Delver's Dirigible Customization Options"
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Quest Mounts\\Delver's Dirigible Customization Options",{
description="This guide will help you find the Customization Schematics for the Delver's Dirigible.",
mounts={446052},
mounttype='Flying',
startlevel=80,
keywords={"TWW","Customization","Dirigible","Flying in Style"},
patch='110000',
},[[
step
ding 80 |or
'|complete hasmount(446052) |or
step
Complete Weekly Delve Quests and Participate in Delve Events
|tip Complete weekly or daily delve quests, and delve world quests, to progress your Delver's Journey.
|tip Run the highest level delves available.
|tip Turn in delve quest items that you loot.
|tip Keep track of your Delver's Journey progress by viewing the Delver's Journal on the counter near Brann Bronzebeard in Dornogal.
|confirm
step
talk Reno Jackson##226250
|tip He is leaning against the large ale barrel.
|tip This customization option costs 1300 Resonance Crystals.
buy Delver's Dirigible Schematic: Empennage##224771 |goto Dornogal/0 47.62,45.14 |or
'|complete completedq(82181) |or
step
use Delver's Dirigible Schematic: Empennage##224771
Learn the Empennage Customization for the Delver's Dirigible
'|complete completedq(82181)
step
talk Reno Jackson##226250
|tip He is leaning against the large ale barrel.
|tip This customization option costs 1300 Resonance Crystals.
buy Delver's Dirigible Schematic: Exhaust##224982 |goto Dornogal/0 47.62,45.14 |or
'|complete completedq(82179) |or
step
use Delver's Dirigible Schematic: Exhaust##224982
Learn the Exhaust Customization for the Delver's Dirigible
'|complete completedq(82179)
step
talk Reno Jackson##226250
|tip He is leaning against the large ale barrel.
|tip This customization option costs 2600 Resonance Crystals.
buy Delver's Dirigible Schematic: Front-Mounted Lantern##224980 |goto Dornogal/0 47.62,45.14 |or
'|complete completedq(82170) |or
step
use Delver's Dirigible Schematic: Front-Mounted Lantern##224980
Learn the Front-Mounted Lantern Customization for the Delver's Dirigible
'|complete completedq(82170)
step
talk Reno Jackson##226250
|tip He is leaning against the large ale barrel.
|tipThis customization option costs 2600 Resonance Crystals.
buy Delver's Dirigible Schematic: Lantern Wing##224960 |goto Dornogal/0 47.62,45.14 |or
'|complete completedq(82176) |or
step
use Delver's Dirigible Schematic: Lantern Wing##224960
Learn the Lantern Wing Customization for the Delver's Dirigible
'|complete completedq(82176)
step
talk Reno Jackson##226250
|tip He is leaning against the large ale barrel.
|tip This customization option costs 2600 Resonance Crystals.
buy Delver's Dirigible Schematic: Front-Mounted Propeller##224770 |goto Dornogal/0 47.62,45.14 |or
'|complete completedq(82167) |or
step
use Delver's Dirigible Schematic: Front-Mounted Propeller##224770
Learn the Front-Mounted Propeller Customization for the Delver's Dirigible
'|complete completedq(82167)
step
talk Reno Jackson##226250
|tip He is leaning against the large ale barrel.
|tip This customization option costs 3250 Resonance Crystals.
buy Delver's Dirigible Schematic: Rotor Blades##224769 |goto Dornogal/0 47.62,45.14 |or
'|complete completedq(82183) |or
step
use Delver's Dirigible Schematic: Rotor Blades##224769
Learn the Rotor Blades Customization for the Delver's Dirigible
'|complete completedq(82183)
step
talk Reno Jackson##226250
|tip He is leaning against the large ale barrel.
|tip This customization option costs 3250 Resonance Crystals.
buy Delver's Dirigible Schematic: Zeppelin##224979 |goto Dornogal/0 47.62,45.14 |or
'|complete completedq(82185) |or
step
use Delver's Dirigible Schematic: Zeppelin##224979
Learn the Zeppelin Customization for the Delver's Dirigible
'|complete completedq(82185)
step
talk Reno Jackson##226250
|tip He is leaning against the large ale barrel.
|tip This customization option costs 3250 Resonance Crystals.
buy Delver's Dirigible Schematic: Brown Paint##224981 |goto Dornogal/0 47.62,45.14 |or
'|complete completedq(82187) |or
step
use Delver's Dirigible Schematic: Brown Paint##224981
Learn the Brown Paint Customization for the Delver's Dirigible
'|complete completedq(82187)
step
talk Sir Finley Mrrgglton##208070
|tip He's a murloc standing on a large barrel.
|tip This customization option costs 2000 Undercoin.
buy Delver's Dirigible Schematic: Spoiler##235687 |goto Dornogal/0 47.45,43.58 |or
'|complete completedq(82180) |or
step
use Delver's Dirigible Schematic: Spoiler##235687
Learn the Spoiler Customization for the Delver's Dirigible
'|complete completedq(82180)
step
talk Sir Finley Mrrgglton##208070
|tip He's a murloc standing on a large barrel.
|tip This customization option costs 3000 Undercoin.
buy Delver's Dirigible Schematic: White Paint##235686 |goto Dornogal/0 47.45,43.58 |or
'|complete completedq(82190) |or
step
use Delver's Dirigible Schematic: White Paint##235686
Learn the White Paint Customization for the Delver's Dirigible
'|complete completedq(82190)
step
talk Sir Finley Mrrgglton##208070
|tip He's a murloc standing on a large barrel.
|tip This customization option costs 3000 Undercoin.
buy Delver's Dirigible Schematic: White Paint##235686 |goto Dornogal/0 47.45,43.58 |or
'|complete completedq(82190) |or
step
use Delver's Dirigible Schematic: White Paint##235686
Learn the White Paint Customization for the Delver's Dirigible
'|complete completedq(82190)
step
Reach Renown Rank 8 with {p}Flame's Radiance{} |complete factionrenown(2688) >= 8
|tip Use the {p}Flame's Radiance{} Reputation Guide to achieve this.
loadguide "Reputation Guides\\The War Within Reputations\\Flame's Radiance"
step
earn 3250 Resonance Crystals##2815
step
talk Lars Bronsmaelt##240852
buy Delver's Dirigible Schematic: Pale Paint##238837
step
earn 2600 Resonance Crystals##2815
step
talk Lars Bronsmaelt##240852
buy Delver's Dirigible Schematic: Arathi Decal##238839
step
use Delver's Dirigible Schematic: Pale Paint##238837
use Delver's Dirigible Schematic: Arathi Decal##238839
|confirm |next
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Quest Mounts\\Delver's Gob-Trotter",{
description="This guide will teach you how to acquire the Delver's Gob-Trotter mount.",
mounts={466133},
mounttype='Flying',
startlevel=80,
keywords={"TWW","The War Within","Dirigible","Flying"},
patch='110000',
},[[
step
ding 80 |or
'|complete hasmount(466133) |or
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)" |or
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)" |or
'|complete completedq(78232,78231) |or
'|complete hasmount(466133) |or
step
talk Brann Bronzebeard##206017
accept Seasonal Refresher##85242 |goto Dornogal/0 47.61,44.39 |or
'|complete hasmount(466133) |or
step
clicknpc Delver's Guide##227675 |q 85242/1 |goto Dornogal/0 47.51,44.59 |or
'|complete hasmount(466133) |or
step
Complete 1 Delve
|confirm |next |or
'|complete hasmount(466133) |or
step
talk Reno Jackson##226250
|tip He is leaning against the large ale barrel.
buy Delver's Cosmetic Surprise Bag##233281 |q 85242/2 |goto Dornogal/0 47.62,45.14 |or
'|complete hasmount(466133) |or
step
talk Sir Finley Mrrgglton##208070
|tip He's a murloc standing on a large barrel.
buy Delver's Starter Kit##233276 |q 85242/3 |goto Dornogal/0 47.45,43.58 |or
'|complete hasmount(466133) |or
step
talk Brann Bronzebeard##206017
turnin Seasonal Refresher##85242 |goto Dornogal/0 47.61,44.39 |or
'|complete hasmount(466133) |or
step
talk Brann Bronzebeard##206017
accept I Want My Hat Back##85243 |goto Dornogal/0 47.61,44.39 |or
'|complete hasmount(466133) |or
step
talk Brann Bronzebeard##206017
|tip Listen to Brann's story of how he lost his treasures and his hat.
Brann's Story Experienced |q 85243/1 |goto Dornogal/0 47.61,44.39 |or
'|complete hasmount(466133) |or
step
talk Brann Bronzebeard##206017
turnin I Want My Hat Back##85243 |n
collect Delver's Gob-Trotter##229974 |or
'|complete hasmount(466133) |or
step
use Delver's Gob-Trotter##229974
learnmount Delver's Gob-Trotter##466133
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Quest Mounts\\K'arroc Swiftwing",{
patch='110205',
source='Unknown',
author="QuestCore",
description="This guide will teach you how to acquire the K'arroc Swiftwing mount.",
keywords={"Unknown","Flying"},
mounts={1233516},
mounttype="Flying",
startlevel=10,
},[[
step
Begin the {b}Visions of a Shadowed Sun{} Quest Chain
|tip Use the {b}Visions of a Shadowed Sun{} Leveling Guide to accomplish this.
|tip You get the mount when turning in the quest, {p}Off to Tazavesh, Again{} to Ve'nari in Dornogal.
Click Here to Load the {b}Visions of a Shadowed Sun{} Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Visions of a Shadowed Sun"
'|complete hasmount(1233516) |or
'|complete completedq(85213) |or
step
talk Ve'nari##232124
turnin Off to Tazavesh, Again##85213 |goto Tazavesh/0 60.53,92.78 |n
collect K'arroc Swiftwing##242715 |or
'|complete hasmount(1233516) |or
step
use K'arroc Swiftwing##242715
learnmount K'arroc Swiftwing##1233516
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Quest Mounts\\Royal Voidwing",{
patch='110200',
source='Quest',
author="QuestCore",
description="This guide will teach you how to acquire the Royal Voidwing mount.",
keywords={"Quest","Flying"},
mounts={1242272},
mounttype="Flying",
startlevel=80,
},[[
step
kill Dimensius
|tip Kill the last boss in the Manaforge Omega raid on Heroic difficulty.
collect Mark of the Twilight Oath##246446 |or
|tip This is an item you loot from Dimensius.
'|complete hasmount(1242272) |or
step
Click the Aceept Quest Box:
|tip If there is no Accept Quest Box, right click the item in your bag.
accept A Twilight Oath's End##91413 |or
'|complete hasmount(1242272) |or
step
talk Venari##231820
turnin A Twilight Oath's End##91413 |goto K'aresh/0 75.80,34.20 |n
collect Reins of the Royal Voidwing##246445 |or
'|complete hasmount(1242272) |or
step
use Reins of the Royal Voidwing##246445
learnmount Royal Voidwing##1242272
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Quest Mounts\\Siesbarg",{
description="This guide will teach you how to acquire the Siesbarg mount.",
mounts={451489},
mounttype='Undead',
startlevel=78,
keywords={"TWW","The War Within","Quest Mount","Tka'ktath","Azj-Kahet"},
patch='110002',
},[[
step
Reach Level 78 |ding 78 |or
'|complete hasmount(451489) |or
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)" |or
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)" |or
'|complete completedq(78232,78231) |or
'|complete hasmount(451489) |or
step
kill Tka'ktath##216046
|tip You may need help with this.
|tip Watch for the zone message "The shadow of a hungering beast moves over the city" that indicates the creature has spawned.
collect Vial of Tka'ktath's Blood##225952 |n
|tip You have one chance per day to get the quest item drop.
accept The Beginning of Something Beautiful##83627 |goto Azj-Kahet/0 63.22,66.42 |or
'|complete hasmount(451489) |or
step
talk Shalba <Alchemy Trainer>##218171
|tip Inside the building.
turnin The Beginning of Something Beautiful##83627 |goto City of Threads/0 45.42,13.55 |or
accept Those Are Chitin Words##83719 |goto City of Threads/0 45.42,13.55
'|complete hasmount(451489) |or
step
label "RETURN_TO_NERUBIAN_CHITIN_FARM_CHOICES"
_Choose What to Do Next_
|tip Click the area where you would like to farm Nerubian Chitin.
|tip
Click Here to go to Ara Kara Dungeon |confirm |next "FARM_NERUBIAN_BLOOD_ARAKARA_DUNGEON"
|tip You can queue for the dungeon or enter with a group.
_Or_
Click Here to go to Isle of Dorn |confirm |next "FARM_NERUBIAN_BLOOD_ISLE_OF_DORN"
|tip Lower level, quickly re-spawning mobs, but a lower drop rate.
_Or_
Click Here to go to Azj-Kahet Areas |confirm |next "FARM_NERUBIAN_BLOOD_AZJ-KAHET"
|tip Higher level mobs, possibly higher drop rate.
collect 500 Nerubian Blood##226136 |q 83721/1 |or
'|complete hasmount(451489) |or
step
label "FARM_NERUBIAN_CHITIN_ARAKARA_DUNGEON"
Press _I_ and queue for Ara Kara Dungeon or enter the dungeon with your group
|tip The entrance is on the ground.
|tip Complete at any difficulty.
|tip Recommend killing through the second boss and reset.
|tip
Click Here to Return to Farming Choices |confirm |next "RETURN_TO_NERUBIAN_CHITIN_FARM_CHOICES"
collect 1500 Nerubian Chitin## |goto Nerub'ar/0 52.15,45.89 |q 83719/1 |or
'|complete hasmount(451489) |or
step
label "FARM_NERUBIAN_CHITIN_ISLE_OF_DORN"
Kill Nerubian enemies around this area
|tip Kill above ground and inside the cave.
|tip Watch out for elite mobs.
|tip
Click Here to Return to Farming Choices |confirm |next "RETURN_TO_NERUBIAN_CHITIN_FARM_CHOICES"
collect 1500 Nerubian Chitin## |goto Isle of Dorn/0 76.22,36.74 |q 83719/1 |or
You can find more in this cave [Isle of Dorn/0 75.14,38.60]
'|complete hasmount(451489) |or
step
label "FARM_NERUBIAN_CHITIN_AZJ-KAHET"
Kill Nerubian enemies around this area
|tip
Click Here to Return to Farming Choices |confirm |next "RETURN_TO_NERUBIAN_CHITIN_FARM_CHOICES"
collect 1500 Nerubian Chitin## |goto Azj-Kahet/0 61.53,27.26 |q 83719/1 |or
'|complete hasmount(451489) |or
step
talk Shalba <Alchemy Trainer>##218171
|tip Inside the building.
turnin Those Are Chitin Words##83719 |goto City of Threads/0 45.42,13.55
accept Venom? More Like Get 'Em##83720 |goto City of Threads/0 45.42,13.55 |or
'|complete hasmount(451489) |or
step
label "RETURN_TO_NERUBIAN_VENOM_FARM_CHOICES"
_Choose What to Do Next_
Click Here to go to Isle of Dorn |confirm |next "FARM_NERUBIAN_VENOM_ISLE_OF_DORN"
|tip Lower level, quickly re-spawning mobs.
_Or_
Click Here to go to Azj-Kahet Areas |confirm |next "FARM_NERUBIAN_VENOM_AZJ-KAHET"
|tip Higher level mobs, possibly higher drop rate.
collect 1000 Nerubian Venom##226135 |q 83720/1 |or
'|complete hasmount(451489) |or
step
label "FARM_NERUBIAN_VENOM_ARAKARA_DUNGEON"
Press _I_ and queue for Ara Kara Dungeon or enter the dungeon with your group
|tip The entrance is on the ground.
|tip Complete at any difficulty.
|tip Recommend killing through the second boss and reset.
|tip
Click Here to Return to Farming Choices |confirm |next "RETURN_TO_NERUBIAN_VENOM_FARM_CHOICES"
collect 1000 Nerubian Venom##226135 |goto Nerub'ar/0 52.15,45.89 |q 83720/1 |or
'|complete hasmount(451489) |or
step
label "FARM_NERUBIAN_VENOM_ISLE_OF_DORN"
Kill Nerubian enemies around this area
|tip Kill above ground and inside the cave.
|tip Watch out for elite mobs.
|tip
Click Here to Return to Farming Choices |confirm |next "RETURN_TO_NERUBIAN_VENOM_FARM_CHOICES"
collect 1000 Nerubian Venom##226135 |goto Isle of Dorn/0 76.22,36.74 |q 83720/1 |or
You can find more in this cave [Isle of Dorn/0 75.14,38.60]
'|complete hasmount(451489) |or
step
label "FARM_NERUBIAN_VENOM_AZJ-KAHET"
Kill Nerubian enemies around this area
|tip
Click Here to Return to Farming Choices |confirm |next "RETURN_TO_NERUBIAN_VENOM_FARM_CHOICES"
collect 1000 Nerubian Venom##226135 |goto Azj-Kahet/0 61.53,27.26 |q 83720/1 |or
Find more Nerubian mobs around these areas:
Rak'Ahat Nerubians [Azj-Kahet/0 73.52,49.57]
Noth Venomsprayers [Azj-Kahet/0 72.31,59.10]
Kaheti Nerubians [Azj-Kahet/0 31.09,42.28]
'|complete hasmount(451489) |or
step
talk Shalba <Alchemy Trainer>##218171
|tip Inside the building.
turnin Venom? More Like Get 'Em##83720 |goto City of Threads/0 45.42,13.55
accept A Small Ocean's Worth of Blood##83721 |goto City of Threads/0 45.42,13.55 |or
'|complete hasmount(451489) |or
step
label "RETURN_TO_NERUBIAN_BLOOD_FARM_CHOICES"
_Choose What to Do Next_
|tip Click the area where you would like to farm Nerubian Blood.
|tip
Click Here to Farm Ara Kara Dungeon |confirm |next "FARM_NERUBIAN_BLOOD_ARAKARA_DUNGEON"
|tip You can queue for the dungeon or enter with a group.
_Or_
Click Here to Farm the Isle of Dorn |confirm |next "FARM_NERUBIAN_BLOOD_ISLE_OF_DORN"
|tip Lower level, quickly re-spawning mobs, but a lower drop rate.
_Or_
Click Here to Farm Azj-Kahet |confirm |next "FARM_NERUBIAN_BLOOD_AZJ-KAHET"
|tip Higher level mobs, possibly higher drop rate.
collect 500 Nerubian Blood##226136 |q 83721/1 |or
'|complete hasmount(451489) |or
step
label "FARM_NERUBIAN_BLOOD_ARAKARA_DUNGEON"
Press _I_ and queue for Ara Kara Dungeon or enter the dungeon with your group
|tip The entrance is on the ground.
|tip Complete at any difficulty.
|tip Recommend killing through the second boss and resetting if possible.
|tip
Click Here to Return to Farming Choices |confirm |next "RETURN_TO_NERUBIAN_BLOOD_FARM_CHOICES"
collect 500 Nerubian Blood##226136 |goto Nerub'ar/0 52.15,45.89 |q 83721/1 |or
'|complete hasmount(451489) |or
step
label "FARM_NERUBIAN_BLOOD_ISLE_OF_DORN"
Kill Nerubian enemies around this area
|tip Kill above ground and inside the cave.
|tip Watch out for elite mobs.
|tip
Click Here to Return to Farming Choices |confirm |next "RETURN_TO_NERUBIAN_BLOOD_FARM_CHOICES"
collect 500 Nerubian Blood##226136 |goto Isle of Dorn/0 76.22,36.74 |q 83721/1 |or
You can find more in this cave [Isle of Dorn/0 75.14,38.60]
'|complete hasmount(451489) |or
step
label "FARM_NERUBIAN_BLOOD_AZJ-KAHET"
Kill Nerubian enemies around this area
|tip
Click Here to Return to Farming Choices |confirm |next "RETURN_TO_NERUBIAN_BLOOD_FARM_CHOICES"
collect 500 Nerubian Blood##226136 |goto Azj-Kahet/0 61.53,27.26 |q 83721/1 |or
Find more Nerubian mobs around these areas:
Rak'Ahat Nerubians [Azj-Kahet/0 73.52,49.57]
Leechwing Swarmites [Azj-Kahet/0 65.00,31.40]
Noth Venomsprayers [Azj-Kahet/0 72.31,59.10]
Kaheti Nerubians [Azj-Kahet/0 31.09,42.28]
'|complete hasmount(451489) |or
step
talk Shalba <Alchemy Trainer>##218171
|tip Inside the building.
turnin A Small Ocean's Worth of Blood##83721 |goto City of Threads/0 45.42,13.55
step
accept Consolation Flies##83722 |goto City of Threads/0 45.42,13.55
|tip Follow Shalba to obtain your mount.
turnin Consolation Flies##83722 |goto City of Threads/0 44.22,13.62 |or
'|complete hasmount(451489) |or
step
collect Siesbarg##224150 |goto City of Threads/0 44.22,13.62 |or
'|complete hasmount(451489) |or
step
use Siesbarg##224150
learnmount Siesbarg##451489
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Quest Mounts\\Stonevault Mechsuit",{
description="This guide will teach you how to acquire the Stonevault Mechsuit mount.",
mounts={442358},
mounttype='Flying',
startlevel=72,
keywords={"TWW","The War Within","Dungeon","Stonevault","Flying"},
patch='110002',
},[[
step
kill High Speaker Eirich##219440
|tip This is the last boss in The Stonevault dungeon on Mythic difficulty.
|tip The quest item only drops on any Mythic difficulty.
|tip You may have to run this instance more than once to acquire the quest item drop.
collect Malfunctioning Mechsuit##226683 |or
'|complete hasmount(442358) |or
step
use Malfunctioning Mechsuit##226683
accept A Mech in Need##84020 |or
|tip The quest is account-wide.
'|complete hasmount(442358) |or
step
talk Speaker Jurlax##213875
turnin A Mech in Need##84020 |goto The Ringing Deeps/0 42.78,32.41
accept Machine Without Cogs##84021 |goto The Ringing Deeps/0 42.78,32.41
accept Orienting Ourselves##84023 |goto The Ringing Deeps/0 42.78,32.41
accept Clutching Control##84024 |goto The Ringing Deeps/0 42.78,32.41 |or
|tip These quests are account-wide.
'|complete hasmount(442358) |or
step
kill Speaker Dorita##213216
|tip Check this boss's loot table to see if the trinket will drop for your class.
|tip Press "I" and queue for The Stonevault, or join a group and enter on any difficulty.
|tip This is the second boss in The Stonevault dungeon.
|tip The quest item trinket drops on any difficulty.
|tip You may have to run this instance more than once to acquire the trinket.
collect Overclocked Gear-a-Rang Launcher##219301 |or
'|complete hasmount(442358) |or
step
kill Goldie Baronbottom##218523
|tip Check this boss's loot table to see if the trinket will drop for your class.
|tip Press "I" and queue for Cinderbrew Meadery, or join a group and enter on any difficulty.
|tip This is one of four bosses in Cinderbrew Meadery dungeon.
|tip The quest item trinket drops on any difficulty.
|tip You may have to run this instance more than once to acquire the trinket.
collect Synergistic Brewterializer##219299 |or
'|complete hasmount(442358) |or
step
kill The Candle King##222096
|tip Check this boss's loot table to see if the trinket will drop for your class.
|tip Press "I" and queue for Darkflame Cleft, or join a group and enter on any difficulty.
|tip This is one of the bosses in Darkflame Cleft dungeon.
|tip The quest item trinket drops on any difficulty.
|tip You may have to run this instance more than once to acquire the trinket.
collect Burin of the Candle King##219306 |or
'|complete hasmount(442358) |or
step
talk Speaker Jurlax##213875
turnin Machine Without Cogs##84021 |goto The Ringing Deeps/0 42.78,32.41
turnin Orienting Ourselves##84023 |goto The Ringing Deeps/0 42.78,32.41
turnin Clutching Control##84024 |goto The Ringing Deeps/0 42.78,32.41
accept Repurposed, Restored##84025 |goto The Ringing Deeps/0 42.78,32.41 |or
'|complete hasmount(442358) |or
step
talk Speaker Jurlax##213875
turnin Repurposed, Restored##84025 |goto The Ringing Deeps/0 42.78,32.41 |n
collect Stonevault Mechsuit##221765 |or
'|complete hasmount(442358) |or
step
use Stonevault Mechsuit##221765
learnmount Stonevault Mechsuit##442358
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Aquamarine Swarmite",{
description="This guide will teach you how to acquire the Aquamarine Swarmite mount.",
mounts={447185},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Flying",},
patch='110002',
},[[
step
ding 80 |or
'|complete hasmount(447185) |or
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)" |or
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)" |or
'|complete completedq(78232,78231) |or
'|complete hasmount(447185) |or
step
Reach Renown Rank 22 with The Severed Threads in Azj-Kahet |complete factionrenown(2600) >= 23 |or
|tip Use "The Severed Threads" Reputation guide to achieve this.
Click Here to Load "The Severed Threads" Reputation Guide |confirm |loadguide "Reputation Guides\\The War Within Reputations\\The Severed Threads" |or
'|complete hasmount(447185) |or
step
earn 3940 Kej##3056 |or
|tip Loot these off mobs you kill, treasures you loot, and quests and world quests you complete, in Azj-Kahet.
'|complete hasmount(447185) |or
step
talk Lady Vinazian <Severed Threads Quartermaster>##223750
buy Aquamarine Swarmite##223264 |goto Azj-Kahet/0 55.33,41.23 |or
'|complete hasmount(447185) |or
step
use Aquamarine Swarmite##223264
learnmount Aquamarine Swarmite##447185
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Bilgewater Bombardier",{
description="This guide will teach you how to acquire the Bilgewater Bombardier mount.",
source='Reputation',
keywords={"Bilgewater Cartel","Flying"},
mounts={466024},
mounttype='Flying',
startlevel=70,
patch='110100',
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)" |or
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)" |or
'|complete completedq(78232,78231) |or
'|complete hasmount(466024) |or
step
ding 80 |or
'|complete hasmount(466024) |or
step
Reach {g}Honored{} Reputation with the Bilgewater Cartel |complete rep("Bilgewater Cartel") >= Honored |or
|tip Do Bilgewater Cartel quests, world quests, kill rares and rare elites to raise your reputation.
'|complete hasmount(466024) |or
step
talk Rocco Razzboom##231406
accept Honored with the Bilgewater Cartel##88870 |only if questactive(88870) |or
accept Revered with the Bilgewater Cartel##88871 |only if questactive(88871) |or
accept Exalted with the Bilgewater Cartel##88872 |only if questactive(88872) |or
accept Exalted with the Bilgewater Cartel (Paragon) |only if questactive(85806) |or
'|complete hasmount(466024) |or
step
talk Rocco Razzboom##231406
turnin Honored with the Bilgewater Cartel##88870 |only if readyq(88870) or questactive(88870) |or
turnin Revered with the Bilgewater Cartel##88871 |only if readyq(88871) or questactive(88871) |or
turnin Exalted with the Bilgewater Cartel##88872 |only if readyq(88872) or questactive(88872) |or
turnin Exalted with the Bilgewater Cartel (Paragon) |only if readyq(85806) or questactive(85806) |or
'|complete hasmount(466024) |or
step
collect Bilgewater's Trove##234745 |only if readyq(88870) or questactive(88870) |or
collect Bilgewater's Trove##235258 |only if readyq(88871) or questactive(88871) |or
collect Bilgewater's Trove##235259 |only if readyq(88872) or questactive(88872) |or
collect Bilgewater's Trove##237132 |only if readyq(85806) or questactive(85806) |or
'|complete hasmount(466024) |or
step
use Bilgewater's Trove##234745 |only if itemcount(234745) == 1 |or
use Bilgewater's Trove##235258 |only if itemcount(235258) == 1 |or
use Bilgewater's Trove##235259 |only if itemcount(235259) == 1 |or
use Bilgewater's Trove##237132 |only if itemcount(237132) == 1 |or
collect Bilgewater Bombardier##229957 |or
'|complete hasmount(466024) |or
step
use Bilgewater Bombardier##229957
learnmount Bilgewater Bombardier##466024
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Blackwater Shredder Deluxe Mk 2",{
description="This guide will teach you how to acquire the Blackwater Shredder Deluxe Mk 2 mount.",
source='Reputation Vendor',
keywords={"Reputation","Ground","Undermine","Blackwater Cartel"},
mounts={466019},
mounttype="Ground",
patch='110100',
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete hasmount(466019) |or
step
ding 80 |or
'|complete hasmount(466019) |or
step
Reach {o}Exalted{} Reputation with the Blackwater Cartel |complete rep("Blackwater Cartel") >= Exalted |or
|tip Do Blackwater Cartel quests, world quests, kill rares and rare elites to raise your reputation.
'|complete hasmount(466019) |or
step
earn 8125 Resonance Crystal##2815 |or
|tip Earn these from killing elites and rares; completing world quests and quests; and looting crates, caches, lockboxes, and troves.
'|complete hasmount(466019) |or
step
talk Boatswain Hardee##231405
buy Blackwater Shredder Deluxe Mk 2##229948 |goto Undermine/0 63.43,16.73 |or
'|complete hasmount(466019) |or
step
use Blackwater Shredder Deluxe Mk 2##229948
learnmount Blackwater Bonecrusher##466019
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Blue Barry",{
description="This guide will teach you how to acquire the Blue Barry mount.",
source='Reputation',
keywords={"Reputation","Ground","TWW","The War Within","K'aresh","Trust"},
mounts={1233559},
mounttype="Ground",
patch='110200',
},[[
step
Reach Renown Level 9 with The K'aresh Trust |complete factionrenown(2658) >= 9
|tip Complete world quests and the full zone guide for K'aresh.
|tip Complete the weekly Ecological Succession quest and the weekly Warrant quest in Tazavesh.
|loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\K'aresh (Full Zone)"
|loadguide "Daily Guides\\The War Within (70-80)\\Ecological Succession Weeklies"
step
talk Ba'eth##238016
accept Stealing What is Ours##90663 |goto Tazavesh/0 57.61,58.12
step
talk Xy'dax##243291
Select _"Please return the items."_ |gossip 133578
Speak to Xy'dax |q 90663/1 |goto Tazavesh/0 46.89,36.79
step
kill Xy'guts##243301 |q 90663/2 |goto Tazavesh/0 46.89,36.79
step
click Shadowtrade Imports+
collect 10 Missing Imports##242535 |q 90663/3 |goto Tazavesh/0 46.97,35.90
step
clicknpc Blue Barry##243715
Pack up Blue Barry and leave |q 90663/4 |goto Tazavesh/0 46.46,35.91
step
talk Ba'eth##238016
turnin Stealing What is Ours##90663 |goto Tazavesh/0 57.60,58.10
step
Wait for the Next Quest to Become Available |complete not completedq(90725) or completedq(90729)
step
talk Ba'eth##238016
accept Win-Win Situation##90729 |goto Tazavesh/0 57.60,58.11
step
talk Zo'Fyne##235643
Select _"Ba'eth personally guarantees these items."_ |gossip 133620
Sell the Shadowtrade Overstock |q 90729/1 |goto Tazavesh/0 51.98,52.33 |count 1 hidden
step
talk Ba'kajanai##243743
Select _"If the price was any lower, I'd be paying you to take it!"_ |gossip 133595
Sell the Shadowtrade Overstock |q 90729/1 |goto Tazavesh/0 45.60,37.89 |count 2 hidden
step
talk Collector Galzi##243764
Select _"Don't tell anyone, but these are illegal Xy imports."_ |gossip 133734
Sell the Shadowtrade Overstock |q 90729/1 |goto Tazavesh/0 42.89,40.09 |count 3 hidden
step
talk Ba'kerei##236265
buy Box of Cookies##242708 |goto Tazavesh/0 43.26,36.95 |q 90729
buy Ba'key's Special Cookie##242667 |goto Tazavesh/0 43.26,36.95 |q 90729
step
talk Ba'key##243752
Select _"I bought a cookie. It was most delicious."_ |gossip 133608
Sell the Shadowtrade Overstock |q 90729/1 |goto Tazavesh/0 42.76,36.88 |count 4 hidden
step
talk Xy'Sous##243793
Select _"One box of cookies for you."_ |gossip 133619
Sell the Shadowtrade Overstock |q 90729/1 |goto Tazavesh/0 50.91,43.87 |count 5 hidden
step
talk Xy'low##243747
Select _"These were made by elves in a secret underground workshop!"_ |gossip 133597
Sell the Shadowtrade Overstock |q 90729/1 |goto Tazavesh/0 53.79,41.40 |count 6 hidden
step
talk Ba'eth##238016
turnin Win-Win Situation##90729 |goto Tazavesh/0 57.60,58.11
step
Wait for the Next Quest to Become Available |complete not completedq(90725) or completedq(90747)
step
talk Xy'dax##243291
accept The Wrong Bluecephalus##90747 |goto Tazavesh/0 46.88,36.78
step
talk Ba'eth##238016
Select _"What happened to that blue slateback?"_ |gossip 133681
Speak with Ba'eth |q 90747/1 |goto Tazavesh/0 57.60,58.12
step
talk Chef Xy'Zin##243926
Select _"Did Ba'eth give you a Blue Slateback?"_ |gossip 133682
Select _"What about your daughter's birthday?"_ |gossip 133683
Speak with Xy'Zin |q 90747/2 |goto Tazavesh/0 48.31,41.46
step
talk Chef Xy'Zin##243926
turnin The Wrong Bluecephalus##90747 |goto Tazavesh/0 48.31,41.46
accept Meat my Business##90773 |goto Tazavesh/0 48.31,41.46
stickystart "Collect_Siltwing_Tails"
stickystart "Collect_Dustback_Flanks"
step
click Swoopwing Eggs+
|tip They look like large white eggs on the ground all over the area.
collect 5 Swoopwing Eggs##242797 |q 90773/3 |goto K'aresh/0 55.78,60.41
You can find more around:
[K'aresh/0 51.31,60.35]
[K'aresh/0 51.31,58.76]
step
label "Collect_Siltwing_Tails"
kill Siltwing Hunter##230906+
collect 5 Siltwing Tail##242796 |q 90773/2 |goto K'aresh/0 53.40,59.09
step
label "Collect_Dustback_Flanks"
kill Dustback Burrower##230293+
collect 12 Dustback Flank##242794 |q 90773/1 |goto K'aresh/0 53.40,59.09
step
talk Chef Xy'Zin##243926
turnin Meat my Business##90773 |goto Tazavesh/0 48.31,41.46
step
Wait for the Next Quest to Become Available |complete not completedq(90725) or completedq(90770)
step
talk Griftah##243915
accept The Grift##90770 |goto Tazavesh/0 48.72,41.45
step
click Phase Conduit
Enter Untethered Space |q 90770/1 |goto Tazavesh/0 46.79,56.87
stickystart "Collect_Mismatched_Shoes_of_Balance"
stickystart "Collect_Backfire_Wish_Bracelet"
step
click Prosperity Pebble+
|tip They look like small light-colored piles of sand on the ground around this area.
|tip They appear on your minimap as yellow dots.
|tip You should be able to find at least half of them in Tazavesh.
|tip You must be in Untethered Space to see these.
collect 10 Prosperity Pebble##243049 |q 90770/2 |goto Tazavesh/0 47.10,51.49
You can find more around [K'aresh/0 52.59,64.08]
step
label "Collect_Mismatched_Shoes_of_Balance"
kill Shadowed Fateshaper##242517+
|tip Tazavesh has the highest concentration in a small area.
|tip You must be in Untethered Space to see them. |notinsticky
collect Mismatched Shoes of Balance##243055 |q 90770/5 |goto Tazavesh/0 42.39,29.83
You can find more around [K'aresh/0 52.59,64.08]
step
label "Collect_Backfire_Wish_Bracelet"
kill Shadowed Fateshaper##242517+
|tip Tazavesh has the highest concentration in a small area.
|tip You must be in Untethered Space to see them. |notinsticky
collect 3 Backfire Wish Bracelet##243050 |q 90770/3 |goto Tazavesh/0 42.39,29.83
You can find more around [K'aresh/0 52.59,64.08]
stickystart "Collect_Coin_of_Endless_Debt"
step
kill Unraveled Energy Broker##243044+
|tip You must be in Untethered Space to see them. |notinsticky
collect Expired Luck Potion##243053 |q 90770/4 |goto K'aresh/0 77.03,48.84
|tip The drop chance for this is fairly low and will likely require clearing both locations at least once.
You can find more around:
[K'aresh/0 66.78,49.80]
step
label "Collect_Coin_of_Endless_Debt"
kill Untethered Rampager##242525
|tip You must be in Untethered Space to see them. |notinsticky
collect Coin of Endless Debt##243054 |q 90770/6 |goto K'aresh/0 76.86,48.52
You can find more around:
[K'aresh/0 51.10,62.41]
[K'aresh/0 53.26,56.07]
[K'aresh/0 57.87,57.77]
[K'aresh/0 66.78,49.80]
step
talk Griftah##243915
turnin The Grift##90770 |goto Tazavesh/0 48.72,41.45
step
talk Griftah##243915
accept A Blue for You##90769 |goto Tazavesh/0 48.72,41.45
step
talk Griftah##243915
turnin A Blue for You##90769 |goto Tazavesh/0 48.72,41.45
step
use Blue Barry##242733
learnmount Blue Barry##1233559
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Bronze Goblin Waveshredder",{
patch='110100',
source='Reputation',
description="This guide will teach you how to acquire the Bronze Goblin Waveshredder mount.",
keywords={"Reputation","Flying","Undermine","Darkfuse Solutions"},
mounts={473188},
mounttype="Flying",
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete hasmount(473188) |or
step
ding 80 |or
'|complete hasmount(473188) |or
step
Unlock Undermine and Complete the Campaign
|tip Use the leveling guides to unlock and complete the Undermine Campaign and Story Quests.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete hasmount(473188) |or
step
click Overly-Sealed Letter##509486
|tip It is on the counter inside the building on the 1st floor.
accept Diversified Investments##86961 |goto Undermine/0 43.35,51.68 |or
'|complete hasmount(473188) |or
step
Enter the Hatch |goto Undermine/0 29.74,41.10 < 10 |walk
talk Sitch Lowdown##231396
|tip Inside the underground bunker in Hovel Hill.
|tip Choose any dialogue options and agree to the deal to complete the quest.
turnin Diversified Investments##86961 |goto Undermine/0 30.75,38.93 |or
'|complete hasmount(473188) |or
step
label "FARM_MARKET_RESEARCH"
earn 8400 Market Research##3226 |or
|tip Turning these in should get you to Exalted Reputation.
|tip This may take some time.
|tip Loot Trash Piles, Big Trash Dumpsters (at renown 13), and treasure chests, kill rares, complete world quests, and complete the Scrap Event to loot the Uncovered Strongbox.
'|complete hasmount(473188) |or
step
Enter the Hatch |goto Undermine/0 29.74,41.10 < 10 |walk
talk Sitch Lowdown##231396
|tip Inside the underground bunker in Hovel Hill.
|tip Turn in the Market Research.
Reach Renown Rank {o}Exalted{} with Darkfuse Solutions Faction |complete factionrenown(2669) >= Exalted |or
'|complete hasmount(473188) |or
step
talk Sitch Lowdown##231396
|tip Inside the underground bunker in Hovel Hill.
turnin Exalted with Darkfuse Solutions##85808 |n
collect Darkfuse Trove##232465 |goto Undermine/0 30.75,38.93 |or
'|complete hasmount(473188) |or
step
use Darkfuse Trove##232465
collect Bronze Goblin Waveshredder##233064 |or
Didn't get the Mount Yet?
Click Here to Farm More Market Research |confirm |next "FARM_MARKET_RESEARCH" |or
'|complete hasmount(473188) |or
step
use Bronze Goblin Waveshredder##233064
learnmount Bronze Goblin Waveshredder##473188
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Crimson Armored Growler",{
patch='110100',
source='Reputation',
description="This guide will teach you how to acquire the Crimson Armored Growler mount.",
keywords={"Reputation","Ground"},
mounts={465999},
mounttype="Ground",
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete hasmount(465999) |or
step
ding 80 |or
'|complete hasmount(465999) |or
step
Unlock Undermine and Complete the Campaign
|tip Use the leveling guides to unlock and complete the Undermine Campaign and Story Quests.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete hasmount(473188) |or
step
Reach {p}Exalted{} Reputation with the Bilgewater Cartel |complete rep("Bilgewater Cartel") >= Exalted |or
|tip Do Bilgewater Cartel quests and world quests, kill rares and rare elites to raise your reputation.
'|complete hasmount(465999) |or
step
earn 8125 Resonance Crystal##2815 |or
|tip Earn these by questing, looting treasures, killing rares, elites, and regular mobbs.
'|complete hasmount(465999) |or
step
talk Rocco Razzboom##231406
|tip Inside the building.
buy Crimson Armored Growler##229935 |or
'|complete hasmount(465999) |or
step
use Crimson Armored Growler##229935
learnmount Crimson Armored Growler##465999
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Crimson Mudnose",{
description="This guide will teach you how to acquire the Crimson Mudnose mount.",
mounts={449269},
mounttype='Ground',
startlevel=70,
keywords={"TWW","The War Within","Ground","Ringing Deeps"},
patch='110002',
},[[
step
Reach Renown Rank 19 with The Assembly of the Deeps |complete factionrenown(2594) >= 19 |or
'|complete hasmount(449269) |or
step
earn 8125 Resonance Crystals##2815 |or
|tip Loot these off rare mobs you kill, and treasure boxes you loot, in The Ringing Deeps. |or
'|complete hasmount(449269) |or
step
talk Waxmonger Squick##221390
buy Crimson Mudnose##223505 |goto The Ringing Deeps/0 43.14,32.93
'|complete hasmount(449269) |or
step
use Crimson Mudnose##223505
learnmount Crimson Mudnose##449269
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Cyan Glowmite",{
description="This guide will teach you how to acquire the Cyan Glowmite mount.",
mounts={447176},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Flying","Ringing Deeps"},
patch='110002',
},[[
step
Reach Renown Rank 23 with The Assembly of the Deeps |complete factionrenown(2594) >= 23 |or
'|complete hasmount(449269) |or
step
earn 11375 Resonance Crystals##2815
|tip Loot these off rare mobs you kill, and treasure boxes you loot, in The Ringing Deeps. |or
'|complete hasmount(447176) |or
step
talk Waxmonger Squick <Quartermaster>##221390
buy Cyan Glowmite##222989 |goto The Ringing Deeps/0 43.14,32.93 |or
'|complete hasmount(447176) |or
step
use Cyan Glowmite##222989
learnmount Cyan Glowmite##447176
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Darkfuse Chompactor",{
description="This guide will teach you how to acquire the Darkfuse Chompactor mount.",
source='Vendor',
keywords={"Reputation","Ground","TWW","The War Within","Undermine","Liberation of Undermine"},
mounts={466000},
mounttype="Ground",
patch='110100',
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete hasmount(466000) |or
step
ding 80 |or
'|complete hasmount(466000) |or
step
Unlock Undermine and Complete the Campaign
|tip Use the leveling guides to unlock and complete the Undermine Campaign and Story Quests.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete hasmount(466000) |or
step
Press _I_ and Queue for the Liberation of Undermine Raid
|tip Killing raid bosses will earn you reputation with the Gallagio Loyalty Rewards Club faction.
Reach Renown Rank 17 with the Gallagio Loyalty Rewards Club |complete factionrenown(2600) >= 17 |or
'|complete hasmount(466000) |or
step
talk Ando the Gat##235621
|tip Upstairs, just inside the raid instance.
buy Darkfuse Chompactor##229924 |or
|tip Currently costs 500 gold.
|tip The cost is subject to change.
'|complete hasmount(466000) |or
step
use Darkfuse Chompactor##229924
learnmount Darkfuse Chompactor##466000
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Darkfuse Demolisher",{
patch='110100',
source='Vendor',
description="This guide will teach you how to acquire the Darkfuse Demolisher mount.",
keywords={"Darkfuse Cartel","Ground","Undermine"},
mounts={466018},
mounttype="Ground",
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete hasmount(466018) |or
step
ding 80 |or
'|complete hasmount(466018) |or
step
Unlock Undermine and Complete the Campaign
|tip Use the leveling guides to unlock and complete the Undermine Campaign and Story Quests.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete hasmount(466018) |or
step
click Overly-Sealed Letter##509486
|tip It is on the counter inside the building on the 1st floor.
accept Diversified Investments##86961 |goto Undermine/0 43.35,51.68 |or
'|complete hasmount(466018) |or
step
Enter the Hatch |goto Undermine/0 29.74,41.10 < 10 |walk
talk Sitch Lowdown##231396
|tip Inside the underground sewer in Hovel Hill.
|tip Choose any dialogue options and agree to the deal to complete the quest.
turnin Diversified Investments##86961 |goto Undermine/0 30.75,38.93 |or
'|complete hasmount(466018) |or
step
Reach Renown Rank {p}Revered{} with Darkfuse Solutions |complete factionrenown(2669) >= Revered |or
|tip Complete quests and world quests for Darkfuse Solutions.
|tip Also, purchase and use Box of Darkfuse Miscellany from Sitch Lowdown, for 100 Market Research.
'|complete hasmount(448939) |or
step
earn 11375 Resonance Crystal##2815 |or
|tip Obtain these from killing mobs, quest turn ins, and looting treasures.
'|complete hasmount(466018) |or
step
Enter the Hatch |goto Undermine/0 29.74,41.10 < 10 |walk
talk Sitch Lowdown##231396
|tip Inside the underground sewer in Hovel Hill.
buy Darkfuse Demolisher##229950 |or
'|complete hasmount(466018) |or
step
use Darkfuse Demolisher##229950
learnmount Darkfuse Demolisher##466018
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Ferocious Jawcrawler",{
description="This guide will teach you how to acquire the Ferocious Jawcrawler mount.",
mounts={447957},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Flying"},
patch='110002',
},[[
step
Reach Renown Rank 22 with The Severed Threads |complete factionrenown(2600) >= 22 |or
'|complete hasmount(447957) |or
step
earn 2815 Kej##3056 |or
|tip Loot these off mobs you kill, treasures you loot, and quests you complete, in Azj-Kahet.
'|complete hasmount(447957) |or
step
talk Lady Vinazian <Severed Threads Quartermaster>##223750
buy Ferocious Jawcrawler##223274 |goto Azj-Kahet/0 55.33,41.23 |or
'|complete hasmount(447957) |or
step
use Ferocious Jawcrawler##223274
learnmount Ferocious Jawcrawler##447957
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Flarendo the Furious",{
patch='110100',
source='Vendor',
description="This guide will teach you how to acquire the Flarendo the Furious mount.",
keywords={"Liberation of Undermine","Ground"},
mounts={466011},
mounttype="Ground",
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete hasmount(466011) |or
step
ding 80 |or
'|complete hasmount(466011) |or
step
Unlock Undermine and Complete the Campaign
|tip Use the leveling guides to unlock and complete the Undermine Campaign and Story Quests.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete hasmount(466011) |or
step
Press _I_ and Queue for the Liberation of Undermine Raid
|tip Killing raid bosses will earn you reputation with the Gallagio Loyalty Rewards Club faction.
Reach Renown Rank 20 with the Gallagio Loyalty Rewards Club |complete factionrenown(2600) >= 20 |or
'|complete hasmount(466011) |or
step
talk Ando the Gat##235621
|tip Upstairs, just inside the raid instance.
buy Flarendo the Furious##229940 |or
|tip Currently costs 777 gold.
|tip The cost is subject to change.
'|complete hasmount(466011) |or
step
use Flarendo the Furious##229940
learnmount Flarendo the Furious##466011
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Heritage Undercrawler",{
description="This guide will teach you how to acquire the Heritage Undercrawler mount.",
mounts={448685},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Flying",},
patch='110002',
},[[
step
Reach {b}Conspirator{} Reputation Rank with {p}The Weaver{} |complete rep("The Weaver") >= 17500 |or
|tip Achieve this reputation rank by completing world quests and activities in Azj-Kahet while aligned with The Vizier.
|tip Choose The Weaver for your weekly pact in Azj-Kahet.
'|complete hasmount(448685) |or
step
earn 2020 Kej##3056 |or
|tip Loot these off mobs you kill, treasures you loot, and quests you complete, in Azj-Kahet.
'|complete hasmount(448685) |or
step
talk Yamas the Provider <Pact Dealer & Information>##228184
buy Heritage Undercrawler##223278 |goto Azj-Kahet/0 55.37,41.49 |or
'|complete hasmount(448685) |or
step
use Heritage Undercrawler##223278
learnmount Heritage Undercrawler##448685
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Reputation Mounts\\Mean Green Flying Machine",{
description="This guide will teach you how to acquire the Mean Green Flying Machine mount.",
source='Vendor',
keywords={"Vendor","Flying"},
mounts={466028},
mounttype="Flying",
patch='110100',
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete hasmount(466011) |or
step
ding 80 |or
'|complete hasmount(466011) |or
step
Unlock Undermine and Complete the Campaign
|tip Use the leveling guides to unlock and complete the Undermine Campaign and Story Quests.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete hasmount(466011) |or
step
Reach Renown Rank {o}Exalted{} with Steamwheedle Cartel Faction in Undermine |complete factionrenown(2677) >= Exalted |or
|tip Choose Steamwheedle Cartel for the faction to grind rep at the Intercontinental Hotel.
|tip Complete quests, world quests, kill rares and elites, and loot treasures, in Steamwheedle Cartel territory.
'|complete hasmount(466011) |or
step
earn 11375 Resonance Crystals##2815 |or
|tip Obtain these from killing mobs, quest turn ins, and looting treasures.
'|complete hasmount(466011) |or
step
talk Lab Assistant Laszly##231408
|tip Inside the building.
buy Mean Green Flying Machine##229956
'|complete hasmount(466011) |or
step
use Mean Green Flying Machine##229956
learnmount Mean Green Flying Machine##466011
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Reputation Mounts\\Ochre Delivery Rocket",{
description="This guide will teach you how to acquire the Ochre Delivery Rocket mount.",
source='Vendor',
keywords={"Vendor","Flying"},
mounts={466013},
mounttype="Flying",
patch='110100',
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete hasmount(466013) |or
step
ding 80 |or
'|complete hasmount(466013) |or
step
Unlock Undermine and Complete the Campaign
|tip Use the leveling guides to unlock and complete the Undermine Campaign and Story Quests.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete hasmount(466013) |or
step
Reach Renown Rank {o}Exalted{} with the _Venture Company_ Faction in Undermine |complete factionrenown(2677) >= Exalted |or
|tip Choose the Venture Company for the weekly contract signature at the Intercontinental Hotel.
|tip Complete quests, world quests, kill rares and elites, and loot treasures, in Venture Company territory.
'|complete hasmount(466013) |or
step
earn 11375 Resonance Crystals##2815 |or
|tip Obtain these from killing mobs, quest turn ins, and looting treasures.
'|complete hasmount(466013) |or
step
talk Shredz the Scrapper##231407
|tip Inside the building.
buy Ochre Delivery Rocket##229946 |goto Undermine/0 53.31,72.71 |or
'|complete hasmount(466013) |or
step
use Ochre Delivery Rocket##229946
learnmount Ochre Delivery Rocket##466013
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Radiant Imperial Lynx",{
patch='110100',
source='Vendor',
description="This guide will teach you how to acquire the Radiant Imperial Lynx mount.",
keywords={"Vendor","Ground"},
mounts={1226421},
mounttype="Ground",
startlevel=10,
},[[
step
Reach Renown Rank 9 with the Flame's Radiance |complete factionrenown(2688) >= 9 |or
|tip Achieve this with the {r}Flame's Radiance Reputation Guide{}.
Click Here to Load the {r}Flame's Radiance Reputation Guide{} |confirm |loadguide "Reputation Guides\\The War Within Reputations\\Flame's Radiance"
'|complete hasmount(1226421) |or
step
earn 8125 Resonance Crystals##2815 |or
|tip Obtain these from killing mobs, quest turn-ins, and looting treasures.
'|complete hasmount(1226421) |or
step
talk Lars Bronsmaelt##240852
buy Radiant Imperial Lynx##238829 |goto Hallowfall/0 28.28,56.18 |or
'|complete hasmount(1226421) |or
step
use Radiant Imperial Lynx##238829
learnmount Radiant Imperial Lynx##1226421
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Royal Court Undercrawler",{
description="This guide will teach you how to acquire the Royal Court Undercrawler mount.",
mounts={463393},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Flying",},
patch='110002',
},[[
step
Reach Conspirator Reputation Rank with the Weaver |complete rep("The Weaver") >= 17500 |or
|tip Achieve this reputation rank by completing world quests and activities in Azj-Kahet while aligned with The Vizier.
|tip Choose The Weaver for your weekly pact in Azj-Kahet.
'|complete hasmount(463393) |or
step
earn 2020 Kej##3056 |or
|tip Loot these off mobs you kill, treasures you loot, and quests you complete, in Azj-Kahet.
'|complete hasmount(463393) |or
step
talk Yamas the Provider##223750
buy Royal Court Undercrawler##223279 |goto Azj-Kahet/0 55.37,41.49 |or
'|complete hasmount(463393) |or
step
use Royal Court Undercrawler##223279
learnmount Royal Court Undercrawler##463393
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Shackled Shadow",{
description="This guide will teach you how to acquire the Shackled Shadow mount.",
mounts={448939},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within"},
patch='110002',
},[[
step
Reach Renown Rank 23 with the Hallowfall Arathi |complete factionrenown(2570) >= 23 |or
'|complete hasmount(448939) |or
step
earn 11375 Resonance Crystal##2815 |or
|tip Obtain these from killing mobs, quest turn-ins, and looting treasures.
'|complete hasmount(448939) |or
step
talk Auralia Steelstrike##213145
|tip Inside the building.
buy Shackled Shadow##223314 |goto Hallowfall/0 41.27,53.05 |or
'|complete hasmount(448939) |or
step
use Shackled Shadow##223314
learnmount Shackled Shadow##448939
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Shale Ramolith",{
description="This guide will teach you how to acquire the Shale Ramolith mount.",
mounts={449418},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within"},
patch='110002',
},[[
step
Reach Renown Rank 18 with The Council of Dornogal |complete factionrenown(2590) >= 18 |or
'|complete hasmount(449418) |or
step
earn 8125 Resonance Crystals##2815 |or
|tip Loot these off mobs you kill and treasures you loot.
'|complete hasmount(449418) |or
step
talk Auditor Balwurz##223728
|tip Upstairs inside the building.
buy Shale Ramolith##223571 |goto Dornogal/0 39.10,24.17 |or
'|complete hasmount(449418) |or
step
use Shale Ramolith##223571
learnmount Shale Ramolith##449418
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Smoldering Cinderbee",{
description="This guide will teach you how to acquire the Smoldering Cinderbee mount.",
mounts={447057},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within"},
patch='110002',
},[[
step
Reach Renown Rank 18 with The Council of Dornogal |complete factionrenown(2590) >= 18 |or
'|complete hasmount(447057) |or
step
earn 8125 Resonance Crystals##2815 |or
|tip Loot these off mobs you kill and treasures you loot.
'|complete hasmount(447057) |or
step
talk Auditor Balwurz##223728
|tip Upstairs inside the building.
buy Smoldering Cinderbee##221753 |goto Dornogal/0 39.10,24.17 |or
'|complete hasmount(447057) |or
step
use Smoldering Cinderbee##221753
learnmount Smoldering Cinderbee##447057
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Soaring Meaderbee",{
description="This guide will teach you how to acquire the Soaring Meaderbee mount.",
mounts={447151},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within"},
patch='110002',
},[[
step
kill Tempest Wolf##222797, Rustcloud Runt##222796
|tip Kill wolf enemies along the
|tip Nearby bees and slimes also drop Sizzling Cinderpollen.
|tip Tempest Wolves, and many of the bees, are elite mobs.
|tip You can also press I and check the Group Finder for custom farming groups that may make collecting easier.
map Isle of Dorn/0
path follow smart; loop on; ants curved; dist 30
path	73.30,34.31	74.08,33.28	73.94,34.65	74.65,35.36	75.25,35.60
path	75.89,34.27	77.35,35.21	78.23,35.57	79.17,35.84	78.64,36.19
collect 900 Sizzling Cinderpollen##225557 |or
'|complete hasmount(447151) |or
step
talk Cendvin##226205
|tip Under the canopy.
buy Reins of the Soaring Meaderbee##223153 goto Isle of Dorn/0 74.33,45.31 |or
'|complete hasmount(447151) |or
step
use Reins of the Soaring Meaderbee##223153
learnmount Soaring Meaderbee##447151
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Reputation Mounts\\Steamwheedle Supplier",{
patch='110100',
source='Unknown',
description="This guide will teach you how to acquire the Steamwheedle Supplier mount.",
keywords={"Unknown","Flying"},
mounts={466014},
mounttype="Flying",
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete hasmount(466012) |or
step
ding 80 |or
'|complete hasmount(466012) |or
step
Unlock Undermine and Complete the Campaign
|tip Use the leveling guides to unlock and complete the Undermine Campaign and Story Quests.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete hasmount(466012) |or
step
Reach Renown Rank {o}Exalted{} with Steamwheedle Cartel Faction in Undermine |complete factionrenown(2677) >= Exalted |n
|tip Choose Steamwheedle Cartel for the faction to grind rep at the Intercontinental Hotel.
|tip Complete quests, world quests, kill rares and elites, and loot treasures, in Steamwheedle Cartel territory.
step
talk Lab Assistant Laszly##231408
|tip Inside the building.
turnin Exalted with the Steamwheedle Cartel##85809 |goto Undermine/0 27.21,72.40 |only if haveq(85809) |or
turnin Exalted with the Steamwheedle Cartel##88875 |goto Undermine/0 27.21,72.40 |only if haveq(88875) |or
'|complete hasmount(466011) |or
step
collect Steamwheedle Trove##235263 |or
collect Steamwheedle Trove##237134 |or
|tip This is a reward for becoming exalted, or is the paragon chest.
step
use Steamwheedle Trove##235263 |or
use Steamwheedle Trove##237134 |or
collect Steamwheedle Supplier##229943
|tip You may have to obtain more than one paragon chest to get the mount.
|tip This means reach Exalted again through questing and faction rep grinding.
'|complete hasmount(466011) |or
step
use Steamwheedle Supplier##229943
learnmount Steamwheedle Supplier##466014
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Thunderdrum Misfire",{
patch='110100',
source='Vendor',
description="This guide will teach you how to acquire the Thunderdrum Misfire mount.",
keywords={"Liberation of Undermine","Red Rocket"},
mounts={466012},
mounttype="Flying",
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete hasmount(466012) |or
step
ding 80 |or
'|complete hasmount(466012) |or
step
Unlock Undermine and Complete the Campaign
|tip Use the leveling guides to unlock and complete the Undermine Campaign and Story Quests.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete hasmount(466012) |or
step
Press _I_ and Queue for the Liberation of Undermine Raid
|tip Killing raid bosses will earn you reputation with the Gallagio Loyalty Rewards Club faction.
Reach Renown Rank 20 with the Gallagio Loyalty Rewards Club |complete factionrenown(2600) >= 20 |or
'|complete hasmount(466012) |or
step
talk Ando the Gat##235621
|tip Upstairs, just inside the raid instance.
buy Thunderdrum Misfire##229945 |or
|tip Currently costs 777 gold.
|tip The cost is subject to change.
'|complete hasmount(466012) |or
step
use Thunderdrum Misfire##229945
learnmount Thunderdrum Misfire##466012
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\The Topskimmer Special",{
patch='110100',
source='Vendor',
description="This guide will teach you how to acquire The Topskimmer Special mount.",
keywords={"Vendor","Flying"},
mounts={466016},
mounttype="Flying",
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete hasmount(466016) |or
step
ding 80 |or
'|complete hasmount(466016) |or
step
Unlock Undermine and Complete the Campaign
|tip Use the leveling guides to unlock and complete the Undermine Campaign and Story Quests.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete hasmount(466016) |or
step
Reach Renown Rank 19 with the Cartels of Undermine |complete factionrenown(2600) >= 19 |or
'|complete hasmount(466016) |or
step
earn 11375 Resonance Crystal##2815 |or
|tip These drop from killing rares, completing quests and world quests, looting treasures, and completing Flying races.
'|complete hasmount(466016) |or
step
talk Smaks Topskimmer##231409
|tip Inside the building.
buy The Topskimmer Special##229944 |goto Undermine/0 43.86,50.82 |or
'|complete hasmount(466016) |or
step
use The Topskimmer Special##229944
learnmount The Topskimmer Special##466016
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Vermillion Imperial Lynx",{
description="This guide will teach you how to acquire the Vermillion Imperial Lynx mount.",
mounts={448978},
mounttype='Ground',
startlevel=70,
keywords={"TWW","The War Within"},
patch='110002',
},[[
step
Reach Renown Rank 21 with the Hallowfall Arathi |complete factionrenown(2570) >= 21 |or
'|complete hasmount(448978) |or
step
earn 8125 Resonance Crystals##2815 |or
|tip Loot these off mobs you kill in Hallowfall.
'|complete hasmount(448978) |or
step
talk Auralia Steelstrike##213145
|tip Inside the building.
buy Vermillion Imperial Lynx##223317 |goto Hallowfall/0 41.27,53.05 |or
'|complete hasmount(448978) |or
step
use Vermillion Imperial Lynx##223317
learnmount Vermillion Imperial Lynx##448978
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Violet Armored Growler",{
description="This guide will teach you how to acquire the Violet Armored Growler mount.",
mounts={466002},
mounttype='Ground',
startlevel=70,
keywords={"TWW","The War Within","Undermine"},
patch='110100',
},[[
step
Reach Renown Rank 15 with The Cartels of Undermine |complete factionrenown(2653) >= 15 |or
'|complete hasmount(466002) |or
step
earn 8125 Resonance Crystals##2815 |or
|tip You earn these by completing quests, killing rares, and opening caches in Khaz Algar.
'|complete hasmount(466002) |or
step
talk Smaks Topskimmer##231409
buy Violet Armored Growler##229936 |goto Undermine/0 43.60,50.80 |or
'|complete hasmount(466002) |or
step
use Violet Armored Growler##229936
learnmount Violet Armored Growler##466002
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Widow's Undercrawler",{
description="This guide will teach you how to acquire the Widow's Undercrawler mount.",
mounts={463358},
mounttype='Flying',
startlevel=70,
keywords={"TWW","The War Within","Flying",},
patch='110002',
},[[
step
Reach {b}Conspirator{} Reputation Rank with {w}The Weaver{} |complete rep("The Weaver") >= 17500 |or
|tip Achieve this reputation rank by completing world quests and activities in Azj-Kahet while aligned with The Vizier.
|tip Choose The Weaver for your weekly pact in Azj-Kahet.
'|complete hasmount(463358) |or
step
earn 2020 Kej##3056 |or
|tip Loot these off mobs you kill, treasures you loot, and quests you complete, in Azj-Kahet.
'|complete hasmount(463358) |or
step
talk Yamas the Provider <Pact Dealer & Information>##228184
buy Widow's Undercrawler##223276 |goto Azj-Kahet/0 55.37,41.49 |or
'|complete hasmount(463358) |or
step
use Widow's Undercrawler##223276
learnmount Widow's Undercrawler##463358
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Amani Hunting Bear",{
description="This guide will teach you how to acquire the Amani Hunting Bear mount.",
mounts={452645},
mounttype='Ground',
startlevel=10,
keywords={"TWW","The War Within","Timewalking"},
patch='110050',
},[[
step
earn 5000 Timewarped Badges##1166 |or
|tip Earn these in any Timewalking Dungeons, Timewalking quests, missions, or caches.
|tip You can transfer Timewarped Badges from other characters by opening the Character Info interface (press C), click the Currency tab, click Timewarped Badges in the list, click the Transfer button, then choose which characters to tranfer from and the amount to transfer.
'|complete hasmount(452645) |or
step
talk Cupri##98685
|tip He is only available during the {b}Burning Crusade{} {o}Outland Timewalking Event{}
buy Reins of the Amani Hunting Bear##224399 |goto Shattrath City/0 54.65,39.45 |or
'|complete hasmount(452645) |or
step
use Reins of the Amani Hunting Bear##224399
learnmount Amani Hunting Bear##452645
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Asset Advocator",{
description="This guide will teach you how to acquire the Asset Advocator mount.",
source='Vendor',
keywords={"TWW","The War Within","Undermine","Venture Company"},
mounts={466023},
mounttype='Ground',
patch='110100',
},[[
step
Complete _Chapter 2: Undermine Awaits_ of the Undermine Storyline |complete completedq(83176) |or
|tip Complete using the _Undermine: Story Only_ Leveling Guide.
Click Here to Load the _Undermine: Story Only_ Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)" |or
'|complete hasmount(466023) |or
step
collect 25 Miscellaneous Mechanica##234741 |or
|tip Get these from killing rares, looting chests after completing dungeons and raids, and looting overflowing dumpsters.
'|complete hasmount(466023) |or
step
talk Skedgit Cinderbangs##228286
|tip
buy Asset Advocator##229952 |or
'|complete hasmount(466023) |or
step
use Asset Advocator##229952
learnmount Asset Advocator##466023
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Vendor Mounts\\Chrono Corsair",{
patch='110107',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the Chrono Corsair mount.",
keywords={"Vendor","Flying"},
mounts={1226144},
mounttype="Flying",
startlevel=10,
},[[
step
earn 5000 Timewarped Badges##1166 |or
|tip Earn these from completing Timewalking Dungeons, and Timewalking event quests.
'|complete hasmount(1226144) |or
step
talk Collector Ta'steld##252687
|tip He is only available during the Shadowlands Timewalking Event.
buy Chrono Corsair##238739 |goto Oribos/0 56.35,64.09 |or
'|complete hasmount(1226144) |or
step
use Chrono Corsair##238739
learnmount Chrono Corsair##1226144
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Corruption of the Aspects",{
description="This guide will teach you how to acquire the Corruption of the Aspects mount.",
source='Vendor',
mounts={1218316},
mounttype="Flying",
startlevel=10,
keywords={"Horrific Visions","Flying"},
patch='110105',
},[[
step
Complete Revisited Horrific Visions
|tip The scenario location of the Horrific Visions of N'Zoth alternates between Stormwind and Orgrimmar.
|tip Use the Revisited Horrific Visons Event Guides to achieve this.
Click Here to Load the Revisited Horrific Visions of Orgrimmar |confirm |loadguide "Events Guides\\The War Within (70-80)\\Revisited Horrific Vision of Orgrimmar" |or
|tip
Click Here to Load the Revisited Horrific Visions of Stormwind |confirm |loadguide "Events Guides\\The War Within (70-80)\\Revisited Horrific Vision of Stormwind" |or
'|complete hasmount(1218316) |or
step
earn 40000 Displaced Corrupted Mementos##3149 |or
|tip These drop in the reward chests after completing Horrific Visions of N'Zoth.
'|complete hasmount(1218316) |or
step
talk Torie##238138
Select _"Yes, I would like to see what you have available."_ |gossip 133016
buy Corruption of the Aspects##235711 |goto Dornogal/0 34.35,68.32 |or
'|complete hasmount(1218316) |or
step
use Corruption of the Aspects##235711
learnmount Corruption of the Aspects##1218316
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Vendor Mounts\\Crimson Lupine",{
patch='110207',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the Crimson Lupine mount.",
keywords={"Vendor","Flying"},
mounts={1263387},
mounttype="Flying",
startlevel=10,
},[[
step
earn 5000 Timewarped Badges##1166 |or
|tip Earn these from completing Timewalking Dungeons, and Timewalking event quests.
'|complete hasmount(1263387) |or
step
talk Collector Ta'steld##252687
|tip He is only available during the Shadowlands Timewalking Event.
buy Crimson Lupine##258515 |goto Oribos/0 56.35,64.09 |or
'|complete hasmount(1263387) |or
step
use Crimson Lupine##258515
learnmount Crimson Lupine##1263387
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Innovation Investigator",{
description="This guide will teach you how to acquire the Innovation Investigator mount.",
source='Vendor',
keywords={"Vendor","Flying"},
mounts={466017},
mounttype="Flying",
patch='110100',
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete hasmount(466017) |or
step
ding 80 |or
'|complete hasmount(466017) |or
step
Unlock Undermine and Complete the Campaign
|tip Use the leveling guides to unlock and complete the Undermine Campaign and Story Quests.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete hasmount(466017) |or
step
collect 25 Miscellaneous Mechanica##234741 |or
|tip Get these from killing rares, looting chests after completing dungeons and raids, and looting overflowing dumpsters.
'|complete hasmount(466017) |or
step
talk Skedgit Cinderbangs##228286
|tip Inside the building.
buy Innovation Investigator##229941 |or
|tip You may also buy this mount at the auction house.
'|complete hasmount(466017) |or
step
use Innovation Investigator##229941
learnmount Innovation Investigator##466017
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Vendor Mounts\\Lavender K'arroc",{
description="This guide will teach you how to acquire the Lavender K'arroc mount.",
mounts={1233518},
mounttype='Ground',
startlevel=80,
keywords={"Vendor","Ground"},
patch='110200',
},[[
step
earn 10 Untethered Coin##3303 |goto K'aresh/0 50.36,36.31 |or
|tip Complete the weekly quest "More Than Just a Phase" to earn this currency.
|tip Click the quest on your map to load the QuestCore guide.
'|complete hasmount(1233518) |or
step
talk Shad'anis##241624
|tip Up the ramp.
buy Lavender K'arroc##242717 |goto K'aresh/0 50.36,36.31 |or
'|complete hasmount(1233518) |or
step
use Lavender K'arroc##242717
learnmount Lavender K'arroc##1233518
'|complete hasmount(1233518) |or
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Margin Manipulator",{
description="This guide will teach you how to acquire the Margin Manipulator mount.",
source='Vendor',
keywords={"Vendor","Flying"},
mounts={466025},
mounttype="Flying",
patch='110100',
},[[
step
Complete The War Within Campaign in Khaz Algar
|tip Use the Khaz Algar Leveling Guide to accomplish this.
Click Here to Load the Story Only Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Intro & Isle of Dorn (Story Only)"
|tip
Click Here to Load the Full Zone (Story + Side Quests) Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Intro & Isle of Dorn (Full Zone)"
'|complete completedq(78232,78231) |or
'|complete hasmount(466025) |or
step
ding 80 |or
'|complete hasmount(466025) |or
step
Unlock Undermine and Complete the Campaign
|tip Use the leveling guides to unlock and complete the Undermine Campaign and Story Quests.
Click Here to Load the "Undermine (Story Only)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\Undermine (Story Only)"
|tip
Click Here to Load the "Undermine: (Full Zone)" Leveling Guide |confirm |loadguide "Leveling Guides\\The War Within (70-80)\\Full Zones (Story + Side Quests)\\Undermine (Full Zone)"
'|complete achieved(40900) |or
'|complete hasmount(466025) |or
step
collect 25 Miscellaneous Mechanica##234741 |or
|tip Get these from killing rares, looting chests after completing dungeons and raids, and looting overflowing dumpsters.
'|complete hasmount(466025) |or
step
talk Skedgit Cinderbangs##228286
|tip Inside the building.
buy Margin Manipulator##229954 |or
|tip You may also buy this mount at the auction house.
'|complete hasmount(466025) |or
step
use Margin Manipulator##229954
learnmount Margin Manipulator##466025
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Vendor Mounts\\Retrained Skyrazor",{
patch='110200',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the Retrained Skyrazor mount.",
keywords={"Vendor","Flying"},
mounts={451487},
mounttype="Flying",
},[[
step
earn 100 Twilight Blade Insignia##3319 |or
|tip Earn these by completing world quests and killing rares during the Midnight Twilight Ascension Pre-Patch Event.
'|complete hasmount(451487) |or
step
talk Materialist Ophinell##249196
buy Retrained Skyrazor##224148 |goto Twilight Highlands/0 49.75,81.31 |or
'|complete hasmount(451487) |or
step
use Retrained Skyrazor##224148
learnmount Retrained Skyrazor##451487
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Vendor Mounts\\Sandy Shalewing",{
patch='110007',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the Sandy Shalewing mount.",
keywords={"Vendor","Flying"},
mounts={408654},
mounttype="Flying",
startlevel=10,
},[[
step
earn 5000 Timewarped Badges##1166 |or
|tip Earn these from completing Timewalking Dungeons, and Timewalking event quests.
'|complete hasmount(408654) |or
step
talk Collector Ta'steld##252687
|tip He is only available during the Shadowlands Timewalking Event.
buy Sandy Shalewing##205208 |goto Oribos/0 56.35,64.09 |or
'|complete hasmount(408654) |or
step
use Sandy Shalewing##205208
learnmount Sandy Shalewing##408654
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Ground Mounts\\Vendor Mounts\\Snowpaw Glimmerfur Prowler",{
patch='110207',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the Snowpaw Glimmerfur Prowler mount.",
keywords={"Vendor","Ground"},
mounts={1264988},
mounttype="Ground",
startlevel=10,
},[[
step
earn 5000 Timewarped Badges##1166 |or
|tip Earn these from completing Timewalking Dungeons, and Timewalking event quests.
'|complete hasmount(1264988) |or
step
talk Collector Ta'steld##252687
|tip He is only available during the Shadowlands Timewalking Event.
buy Snowpaw Glimmerfur Prowler##259463 |goto Oribos/0 56.35,64.09 |or
'|complete hasmount(1264988) |or
step
use Snowpaw Glimmerfur Prowler##259463
learnmount Snowpaw Glimmerfur Prowler##1264988
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Soweezi's Vintage Waveshredder",{
description="This guide will teach you how to acquire the Soweezi's Vintage Waveshreddermount.",
mounts={473137},
mounttype='Flying',
startlevel=70,
keywords={"TWW","Siren Isle","Soweezi"},
patch='110007',
},[[
step
collect 10000 Flame-Blessed Iron##3090 |or
|tip Find this currency in treasure chests, crates, satchels, caches, and bags, from killing mobs and rares, and turning in quests and daily quests in Siren Isle.
'|complete hasmount(473137) |or
step
talk Soweezi##234390
Select _"What have you got for sale?"_ |gossip 131202
buy Soweezi's Vintage Waveshredder##233058 |goto Siren Isle/0 69.96,48.46
'|complete hasmount(473137) |or
step
use Soweezi's Vintage Waveshredder##233058
learnmount Soweezi's Vintage Waveshredder##473137
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Thundering Ruby Cloud Serpent",{
description="This guide will teach you how to acquire the Thundering Ruby Cloud Serpent mount.",
mounts={448978},
mounttype='Flying',
startlevel=70,
keywords={"MOP Remix","Mists of Pandaria Remix"},
patch='100207',
},[[
step
This Mount, Associated Currency, and Vendor may only be Available during The MOP Remix Event
Click Here to Continue |confirm |next
step
earn 38500 Bronze##2778
|tip You earn these by completing quests, killing rares, and opening caches in MOP Remix.
|tip You must be on an MOP Remix created character to earn the Bronze currency and purchase this mount.
step
talk Hemet Nesingwary XVII <Beastmaster>##219032
buy Reins of the Thundering Ruby Cloud Serpent##224374 |goto The Jade Forest/0 42.60,27.00
step
use Reins of the Thundering Ruby Cloud Serpent##224374
learnmount Thundering Ruby Cloud Serpent##132036
]])
QuestCore:RegisterGuide("Pets & Mounts\\Mounts\\Flying Mounts\\Vendor Mounts\\Timely Buzzbee",{
patch='110007',
source='Vendor',
author="QuestCore",
description="This guide will teach you how to acquire the Timely Buzzbee mount.",
keywords={"Vendor","Flying"},
mounts={471538},
mounttype="Flying",
startlevel=10,
},[[
step
earn 5000 Timewarped Badges##1166 |or
|tip Earn these from completing Timewalking Dungeons, and Timewalking event quests.
'|complete hasmount(471538) |or
step
talk Collector Ta'steld##252687
|tip He is only available during the Shadowlands Timewalking Event.
buy Timely Buzzbee##232624 |goto Oribos/0 56.35,64.09 |or
'|complete hasmount(471538) |or
step
use Timely Buzzbee##232624
learnmount Timely Buzzbee##471538
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Wicked Swarmer",{
patch='110100',
source='Vendor',
description="This guide will teach you how to acquire the Wicked Swarmer mount.",
keywords={"Horrific Visions","Flying"},
mounts={316340},
mounttype="Flying",
startlevel=10,
},[[
step
Complete Revisited Horrific Visions
|tip The scenario location of the Horrific Visions of N'Zoth alternates between Stormwind and Orgrimmar.
|tip Use the Revisited Horrific Visons Event Guides to achieve this.
Click Here to Load the Revisited Horrific Visions of Orgrimmar |confirm |loadguide "Events Guides\\The War Within (70-80)\\Revisited Horrific Vision of Orgrimmar" |or
|tip
Click Here to Load the Revisited Horrific Visions of Stormwind |confirm |loadguide "Events Guides\\The War Within (70-80)\\Revisited Horrific Vision of Stormwind" |or
'|complete hasmount(316340) |or
step
earn 20000 Displaced Corrupted Mementos##3149 |or
|tip These drop in the reward chests after completing Horrific Visions of N'Zoth.
'|complete hasmount(316340) |or
step
talk Torie##238138
Select _"Yes, I would like to see what you have available."_ |gossip 133016
buy Wicked Swarmer##174770 |goto Dornogal/0 34.35,68.32 |or
'|complete hasmount(316340) |or
step
use Wicked Swarmer##174770
learnmount Wicked Swarmer##316340
]])
