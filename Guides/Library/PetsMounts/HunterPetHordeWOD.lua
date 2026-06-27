-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Greater Clefthooves\\Blue Greater Clefthoof",{
description="This guide will walk you through obtaining a Blue Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={54440},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Young Icehoof around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Young Icehoof_. |cast Tame Beast##1515 |goto Frostfire Ridge 54.60,19.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Greater Clefthooves\\Brown Greater Clefthoof",{
description="This guide will walk you through obtaining a Brown Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={54592},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Witherhide Mother around the area.
|tip They are level 15-40, depending on your level.
Use your Tame Beast ability on _Witherhide Mother_. |cast Tame Beast##1515 |goto Gorgrond 53.80,73.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Greater Clefthooves\\Grey Greater Clefthoof",{
description="This guide will walk you through obtaining a Grey Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52374},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Gentle Clefthoof around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Gentle Clefthoof_. |cast Tame Beast##1515 |goto Frostfire Ridge 51.80,74.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Greater Clefthooves\\Red Greater Clefthoof",{
description="This guide will walk you through obtaining a Red Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={54593},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Tamed Clefthoof around the area.
|tip They are level 15-40, depending on your level.
Use your Tame Beast ability on _Tamed Clefthoof_. |cast Tame Beast##1515 |goto Gorgrond 83.00,69.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Greater Clefthooves\\White Greater Clefthoof",{
description="This guide will walk you through obtaining a White Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52374},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Wooly Clefthoof around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Wooly Clefthoof_. |cast Tame Beast##1515 |goto Frostfire Ridge 25.20,44.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Saddled Greater Clefthooves\\Brown Saddled Greater Clefthoof",{
description="This guide will walk you through obtaining a Saddled Brown Saddled Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53310},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Iron Horde Battlebeast around the area.
|tip They are level 15-40, depending on your level.
|tip Lieutenant O'rok dismounts and attacks when you tame. There's also a chance he'll jump back on again.
Use your Tame Beast ability on _Iron Horde Battlebeast_. |cast Tame Beast##1515 |goto Gorgrond 40.60,40.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Saddled Greater Clefthooves\\Grey Saddled Greater Clefthoof",{
description="This guide will walk you through obtaining a Saddled Grey Saddled Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53309},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Hunting Mount around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Hunting Mount_. |cast Tame Beast##1515 |goto Frostfire Ridge 59.20,28.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Saddled Greater Clefthooves\\Red Saddled Greater Clefthoof",{
description="This guide will walk you through obtaining a Saddled Red Saddled Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53309},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Grom'kar Warbeast around the area.
|tip It is level 20-40, depending on your level.
Use your Tame Beast ability on _Grom'kar Warbeast_. |cast Tame Beast##1515 |goto Talador 67.80,6.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Saddled Greater Clefthooves\\White Saddled Greater Clefthoof",{
description="This guide will walk you through obtaining a Saddled White Saddled Greater Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53309},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Broken Clefthoof around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Broken Clefthoof_. |cast Tame Beast##1515 |goto Frostfire Ridge 39.20,52.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Brown and Fawn Clefthoof",{
description="This guide will walk you through obtaining a Brown and Fawn Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19581},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Aged Clefthoof around the area.
|tip They are level 35-40, depending on your level.
Use your Tame Beast ability on _Aged Clefthoof_. |cast Tame Beast##1515 |goto Nagrand D 30.60,63.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Brown Clefthoof",{
description="This guide will walk you through obtaining a Brown Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19583},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Clefthoof Bull around the area.
|tip They are level 35-40, depending on your level.
Use your Tame Beast ability on _Clefthoof Bull_. |cast Tame Beast##1515 |goto Nagrand D 51.80,30.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Dark Brown Clefthoof",{
description="This guide will walk you through obtaining a Dark Brown Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19584},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Clefthoof Calf around the area.
|tip They are level 35-40, depending on your level.
Use your Tame Beast ability on _Clefthoof Calf_. |cast Tame Beast##1515 |goto Nagrand D 43.80,63.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Grey Clefthoof",{
description="This guide will walk you through obtaining a Grey Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={37744},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Decrepit Clefthoof around the area.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Decrepit Clefthoof_. |cast Tame Beast##1515 |goto Terokkar Forest 48.00,77.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Red Clefthoof",{
description="This guide will walk you through obtaining a Red Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19797},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Brokentoe around the area.
|tip It is level 35-40, depending on your level.
|tip Brokentoe is the first combatant in the Ring of Blood event.
Use your Tame Beast ability on _Brokentoe_. |cast Tame Beast##1515 |goto Nagrand D 43.60,20.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Clefthooves\\Red-Brown Clefthoof",{
description="This guide will walk you through obtaining a Red-Brown Clefthoof pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={37745},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Banthar around the area.
|tip It is level 35-40, depending on your level.
Banthar also patrols through the locations below:
[36.00,59.80]
[39.60,60.40]
[42.00,63.00]
[46.80,68.20]
Use your Tame Beast ability on _Banthar_. |cast Tame Beast##1515 |goto Nagrand D 31.60,62.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Rylaks\\Armored Rylaks\\Red Armored Rylak",{
description="This guide will walk you through obtaining a Red Armored Rylak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={56062},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Tura'aka around the area.
|tip It is level 35-40, depending on your level.
Use your Tame Beast ability on _Tura'aka_. |cast Tame Beast##1515 |goto Nagrand D 65.00,39.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Rylaks\\Black Rylak",{
description="This guide will walk you through obtaining a Black Rylak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61213},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Darkwing Adolescent around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Darkwing Adolescent_. |cast Tame Beast##1515 |goto Shadowmoon Valley 60.00,84.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Rylaks\\Green Rylak",{
description="This guide will walk you through obtaining a Green Rylak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58290},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Roardan the Sky Terror around the area.
|tip It is level 15-40, depending on your level.
Use your Tame Beast ability on _Roardan the Sky Terror_. |cast Tame Beast##1515 |goto Gorgrond 50.40,68.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Rylaks\\Pale Rylak",{
description="This guide will walk you through obtaining a Pale Rylak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55603},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Glacial Icemaw around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Glacial Icemaw_. |cast Tame Beast##1515 |goto Frostfire Ridge 46.40,57.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Rylaks\\Red Rylak",{
description="This guide will walk you through obtaining a Red Rylak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={54957},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Flamewing Skytalon around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Flamewing Skytalon_. |cast Tame Beast##1515 |goto Frostfire Ridge 71.40,29.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Rylaks\\Silver Rylak",{
description="This guide will walk you through obtaining a Silver Rylak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={60896},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Amaukwa around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Amaukwa_. |cast Tame Beast##1515 |goto Shadowmoon Valley 37.20,36.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Rylaks\\Yellow Rylak",{
description="This guide will walk you through obtaining a Yellow Rylak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53862},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Gorge Rylak around the area.
|tip They are level 15-40, depending on your level.
Use your Tame Beast ability on _Gorge Rylak_. |cast Tame Beast##1515 |goto Gorgrond 44.60,53.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Spirit Wolves\\Shadowy Purple Spirit Wolf",{
description="This guide will walk you through obtaining a Shadowy Purple Spirit Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55831},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Taming Gara is an involved line that takes you across all of Draenor.
|tip Basic Requirements: Level 30 (level 35 is recommended, Horde and Alliance friendly.
confirm
step
talk Bron Skyhorn##79407 |goto Frostwall/0 45.80,50.90
Fly to _Socrethar's, Shadowmoon Valley_. |goto Shadowmoon Valley D/0 43.90,77.50<20
talk Gara##85645 |goto Shadowmoon Valley D/0 45.10,65.90
Click _Lean down and scratch the wolf behind its ears_.
confirm
step
kill Mother Om'ra##75071 |goto Shadowmoon Valley D/0 43.94,57.65
collect Shadowberry##119449
confirm
step
talk Gara##85645 |goto Shadowmoon Valley D/0 45.10,65.90
Click _Show Gara the Shadowberries_.
confirm
step
Now you must _create a Spirit Effigy_ by collecting the required components.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
Hearth to your Garrison |use Garrison Hearthstone##110560 |goto Frostwall/0 42.40,54.40<20
talk Bron Skyhorn##79407 |goto Frostwall/0 45.80,50.90
Fly to _Breaker's Crown, Gorgrond_. |goto Gorgrond/0 45.90,55.00<20
confirm
step
Now you must _collect a Crude Effigy_ as part of the required components.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
kill Drywind Bonepicker##81207+ |goto Gorgrond/0 43.50,52.60
collect Crude Effigy##119451
confirm
step
talk Grinslicer##81055 |goto Gorgrond 46.00,69.20
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
Fly to _Retribution Point, Talador_. |goto Talador/0 42.20,76.80<20
confirm
step
Now you must _collect a Wooden Bowl_ as part of the required components.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
kill Gorebound Legionnaire##79127+ |goto Talador/0 37.10,78.80
collect Wooden Bowl##119456
confirm
step
talk Beldos##81068 |goto Talador/0 42.10,76.80
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
Fly to _Talon Watch, Spires of Arak_. |goto Spires of Arak/0 62.00,42.50<20
confirm
step
Now you must _collect an Elder Incense_ as part of the required components.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
kill Sethekk Prophet##80638+ |goto Spires of Arak/0 68.10,42.80
collect Elder Incense##119455
confirm
step
talk Skytalon Karaz##84504 |goto Spires of Arak/0 61.90,42.60
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
Fly to _The Ring of Trials, Nagrand_. |goto Nagrand D/0 79.70,49.80<20
confirm
step
Now you must _collect a Small Fruit_ as part of the required components.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
kill Warsong Marauder##79708+ |goto Nagrand D/0 71.50,35.70
collect Small Fruit##119454
confirm
step
Be sure _not to vendor or delete any items gathered_ until Gara has been tamed!
talk Biggy Warprofits##83924 |goto Nagrand D/0 79.80,49.70
Fly to _Bloodmaul Slag Mines, Frostfire Ridge_. |goto Frostfire Ridge/0 51.50,21.50<20
confirm
step
Now you must _collect a Torn Cloth_ as part of the required components.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
kill Necrophyte##73320+ |goto Frostfire Ridge/0 27.80,9.10
collect Torn Cloth##119452
confirm
step
Now you must _collect an Ancient Bone_ as part of the required components.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
kill 1 Thunderlord Giantslayer##78812 |goto Frostfire Ridge/6 46.10,64.80
collect Ancient Bone##119453
confirm
step
Now you must _combine the ingredients_ to make your Spirty Effigy.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
Hearth to your Garrison |use Garrison Hearthstone##110560 |goto Frostwall/0 42.40,54.40<20
use Crude Effigy##119451
collect Spirit Effigy##120120
confirm
step
Now you must _head back to Gara_ and look for a disturbed grave.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
talk Bron Skyhorn##79407 |goto Frostwall/0 45.80,50.90
Fly to _Socrethar's, Shadowmoon Valley_. |goto Shadowmoon Valley D/0 43.90,77.50<20
confirm
step
use Spirit Effigy##120120 |goto Shadowmoon Valley D/0 45.10,66.10
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
_Watch_ the dialogue.
confirm
step
talk Azara Goldenwing##81285 |goto Shadowmoon Valley D/0 43.90,77.50
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
Fly to _Akeeta's Hovel, Shadowmoon Valley_. |goto Spires of Arak/0 65.70,17.50<20
confirm
step
Now you must _collect a Void Lantern_ as part of the required components.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
kill Shadowmoon Voidtwister##85073+ |goto Spires of Arak/0 71.80,29.70
collect Void Lantern##119450
confirm
step
talk Duskclaw##88584 |goto Spires of Arak/0 65.70,17.50
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
Fly to _Socrethar's, Shadowmoon Valley_. |goto Shadowmoon Valley D/0 43.90,77.50<20
confirm
step
use Void Lantern##119450
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
|tip The buff lasts for one hour, and should be plenty of time.
click Shadowmoon Voidblade##238854 |goto Shadowmoon Valley D/0 60.20,38.60
confirm
step
_Continue killing_ Elder Void Lords and Elder Voidcallers until you see _Xan, the Lord of Glass_.
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
kill Elder Void Lord##88712+, .kill Elder Voidcaller##88711+
kill Xan##88713 |goto Shadowmoon Valley D/0 59.00,38.60
confirm
step
Once Xan is defeated _Gara will become neutral and is now tameable_!
|tip Be sure not to vendor or delete any items gathered until Gara has been tamed!
|tip Gara will not attack during the taming, and can be earned again if you accidentally abandon him.
Use your Tame Beast ability on _Gara_. |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Jormungars\\Red Jormungar",{
description="This guide will walk you through obtaining a Red Jormungar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={64751},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Kill Ogre enemies around this area
|tip Kill ogres around the Gorian Proving Grounds until you receive a warning to return to your Garison.
collect Ogre Cage Key##120180 |goto Nagrand D/0 58.92,16.18
step
Search for a _Larva Pit Fodder_
|tip They are level 35-40, depending on your level.
Use your _Tame Beast_ ability on a _Larva Pit Fodder_ |cast Tame Beast##1515 |goto Nagrand D/0 59.80,16.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Red and Purple Crested Basilisk",{
description="This guide will walk you through obtaining a Red and Purple Crested Basilisk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={45473},
},[[
step
Search for a _Sandhide Watcher_
|tip They are level 30-40, depending on your level.
Use your _Tame Beast_ ability on a _Sandhide Watcher_ |cast Tame Beast##1515 |goto Spires of Arak/0 60.80,88.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Boars\\Greater Boars\\Black Greater Boar",{
description="This guide will walk you through obtaining a Black Greater Boar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52652},
},[[
step
Search for Bladespire Goresnout around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Bladespire Goresnout_. |cast Tame Beast##1515 |goto Frostfire Ridge 26.20,36.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Boars\\Greater Boars\\Brown Greater Boar",{
description="This guide will walk you through obtaining a Brown Greater Boar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={56210},
},[[
step
Search for Young Rocktusk around the area.
|tip They are level 15-40, depending on your level.
Use your Tame Beast ability on _Young Rocktusk_. |cast Tame Beast##1515 |goto Gorgrond 45.00,38.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Boars\\Greater Boars\\Fel Green Greater Boar",{
description="This guide will walk you through obtaining a Fel Green Great Boar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={64854},
},[[
step
Search for _Diresnout Felboar_
|tip They are level 40.
Use your _Tame Beast_ ability on a _Diresnout Felboar_ |cast Tame Beast##1515 |goto Tanaan Jungle/0 45.60,60.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Boars\\Greater Boars\\Grey-Brown Greater Boar",{
description="This guide will walk you through obtaining a Grey-Brown Greater Boar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52738},
},[[
step
Search for Razorback Sow around the area.
|tip They are level 30-40, depending on your level.
Use your Tame Beast ability on _Razorback Sow_. |cast Tame Beast##1515 |goto Spires of Arak 48.20,59.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Boars\\Greater Boars\\Red Greater Boar",{
description="This guide will walk you through obtaining a Red Greater Boar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={64725},
},[[
step
Search for _Hulking Diretusk_
|tip They are level 40.
|tip There are other boars in the area with the same look.
Use your _Tame Beast_ ability on a _Hulking Diretusk_ |cast Tame Beast##1515 |goto Tanaan Jungle/0 63.80,41.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Boars\\Greater Boars\\Silver Greater Boar",{
description="This guide will walk you through obtaining a Silver Greater Boar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52706},
},[[
step
Search for Shardtusk Boar around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Shardtusk Boar_. |cast Tame Beast##1515 |goto Frostfire Ridge 60.60,25.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Boars\\Greater Boars\\White Greater Boar",{
description="This guide will walk you through obtaining a White Greater Boar pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52698},
},[[
step
Search for Trained Coldsnout around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Trained Coldsnout_. |cast Tame Beast##1515 |goto Frostfire Ridge 39.80,31.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\Black and Red Grand Tiger",{
description="This guide will walk you through obtaining a Black & Red Grand Tiger pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59724},
},[[
step
Search for Elder Ridge Prowler around the area.
|tip They are level 20-40, depending on your level.
Use your Tame Beast ability on _Elder Ridge Prowler_. |cast Tame Beast##1515 |goto Talador 56.20,49.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\White and Red Grand Tiger",{
description="This guide will walk you through obtaining a Grey & Red Grand Tiger pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59721},
},[[
step
Search for Young Ridge Prowler around the area.
|tip They are level 20-40, depending on your level.
Use your Tame Beast ability on _Young Ridge Prowler_. |cast Tame Beast##1515 |goto Talador 61.00,56.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Hydras\\Azeroth Hydras\\Black Azeroth Hydra",{
description="This guide will walk you through obtaining a Black Azeroth Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={2423},
},[[
step
Use your Tame Beast ability on _Strashaz Hydra_. |cast Tame Beast##1515 |goto Dustwallow Marsh 72.80,18.40
|tip Search for Strashaz Hydra around the area.
|tip It is level 15-30, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Hydras\\Azeroth Hydras\\Blue Azeroth Hydra",{
description="This guide will walk you through obtaining a Blue Azeroth Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={10898},
},[[
step
Use your Tame Beast ability on _Mystlash Hydra_. |cast Tame Beast##1515 |goto Ashenvale 7.20,32.60
|tip They are level 7-30, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Hydras\\Azeroth Hydras\\Ghost Azeroth Hydra",{
description="This guide will walk you through obtaining a Ghost Azeroth Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={25864},
},[[
step
Spawned during the quest _A Cleansing Song_ by using the _Chime of Cleansing_.
confirm
step
Use your Tame Beast ability on _Spirit of Atha_. |cast Tame Beast##1515 |goto Sholazar Basin 39.20,41.00
|tip They are level 20-30, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Hydras\\Azeroth Hydras\\Green Azeroth Hydra",{
description="This guide will walk you through obtaining a Green Azeroth Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={15288},
},[[
step
Use your Tame Beast ability on _Lost Offspring of Gahz'ranka_. |cast Tame Beast##1515 |goto Zul'Gurub 51.40,48.60
|tip They are level 32-35, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Hydras\\Azeroth Hydras\\Grey Azeroth Hydra",{
description="This guide will walk you through obtaining a Grey Azeroth Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={2837},
},[[
step
Use your Tame Beast ability on _Bittertide Hydra_. |cast Tame Beast##1515 |goto Sholazar Basin 42.00,41.40
|tip They are level 20-30, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Hydras\\Azeroth Hydras\\Purple Azeroth Hydra",{
description="This guide will walk you through obtaining a Purple Azeroth Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1397},
},[[
step
Use your Tame Beast ability on _Gesharahan_. |cast Tame Beast##1515 |goto Northern Barrens 40.00,74.60
|tip It is level 5-30, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Hydras\\Azeroth Hydras\\Red Azeroth Hydra",{
description="This guide will walk you through obtaining a Red Azeroth Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1092},
},[[
step
Use your Tame Beast ability on _Trigore the Lasher_. |cast Tame Beast##1515 |goto Wailing Caverns 61.60,39.60
|tip It is level 10-30, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Hydras\\Azeroth Hydras\\White Azeroth Hydra",{
description="This guide will walk you through obtaining a White Azeroth Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={6737},
},[[
step
Use your Tame Beast ability on _Thessala Hydra_. |cast Tame Beast##1515 |goto Maraudon 29.60,48.80
|tip It is level 10-30, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Hydras\\Outland Hydras\\Blue Outland Hydra",{
description="This guide will walk you through obtaining a Blue Outland Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={18314},
},[[
step
Use your Tame Beast ability on _Mire Hydra_. |cast Tame Beast##1515 |goto Zangarmarsh 75.60,62.60
|tip They are level 10-30, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Hydras\\Outland Hydras\\Green Outland Hydra",{
description="This guide will walk you through obtaining a Green Outland Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={17528},
},[[
step
Use your Tame Beast ability on _Ghaz'an_. |cast Tame Beast##1515 |goto The Underbog 78.60,28.80
|tip Search for Ghaz'an around the area.
|tip It is level 10-30, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Hydras\\Outland Hydras\\Grey Outland Hydra",{
description="This guide will walk you through obtaining a Grey Outland Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={17653},
},[[
step
Use your Tame Beast ability on _Mragesh_. |cast Tame Beast##1515 |goto Zangarmarsh 42.20,41.60
|tip It is level 10-30, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Hydras\\Outland Hydras\\Orange Outland Hydra",{
description="This guide will walk you through obtaining an Orange Outland Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19678},
},[[
step
Use your Tame Beast ability on _Parched Hydra_. |cast Tame Beast##1515 |goto Zangarmarsh 81.00,40.40
|tip They are level 10-30, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Hydras\\Outland Hydras\\Purple Outland Hydra",{
description="This guide will walk you through obtaining a Purple Outland Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19776},
},[[
step
Use your Tame Beast ability on _Markaru_. |cast Tame Beast##1515 |goto Netherstorm 44.60,28.60
|tip They are level 25-30, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Hydras\\Thunder Hydras\\Blue Thunder Hydra",{
description="This guide will walk you through obtaining a Blue Thunder Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55413},
},[[
step
Use your Tame Beast ability on _Sulfurscale Hydra_. |cast Tame Beast##1515 |goto Gorgrond 62.80,35.40
|tip They are level 15-40, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Hydras\\Thunder Hydras\\Green Thunder Hydra",{
description="This guide will walk you through obtaining a Green Thunder Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55461},
},[[
step
Use your Tame Beast ability on _Varashian Vilefang_. |cast Tame Beast##1515 |goto Spires of Arak 33.60,45.80
|tip They are level 30-40, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Hydras\\Thunder Hydras\\Purple Thunder Hydra",{
description="This guide will walk you through obtaining a Purple Thunder Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={57041},
},[[
step
Use your Tame Beast ability on _Echidnian Hydra_. |cast Tame Beast##1515 |goto Shadowmoon Valley 43.00,47.80
|tip They are level 10-40, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Hydras\\Thunder Hydras\\Red Thunder Hydra",{
description="This guide will walk you through obtaining a Red Thunder Hydra pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55763},
},[[
step
Use your Tame Beast ability on _Gennadian_. |cast Tame Beast##1515 |goto Talador 67.40,80.60
|tip It is level 20-40, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Hydras\\Chimaeron",{
description="This guide will walk you through obtaining a Chimaeron pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={33308},
},[[
step
Kill _Magmaw_ and _Omnotron Defense System_ to unlock the next area with _Chimaeron_.
Head _down the elevator_ and _take a left_. That's where _Chimaeron_ is located.
|tip It is level 32-35, depending on your level.
_Dismiss your current pet_ and _DPS him down to 20% health_, but be very careful not to kill him outright with your buffed damage.
Use your Tame Beast ability on _Chimaeron_ once he _enrages at 20% health_. |cast Tame Beast##1515 |goto Blackwing Descent 24.50,70.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Raptors\\Greater Raptors\\Blue Greater Raptor",{
description="This guide will walk you through obtaining a Blue Greater Raptor pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={60172},
},[[
step
Search for Riplash around the area.
|tip It is level 15-40, depending on your level.
Use your Tame Beast ability on _Riplash_. |cast Tame Beast##1515 |goto Gorgrond 50.60,37.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Raptors\\Greater Raptors\\Dark Green Greater Raptor",{
description="This guide will walk you through obtaining a Dark Green Greater Raptor pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59540},
},[[
step
Search for Jungle Wastetalon around the area.
|tip They are level 15-40, depending on your level.
|tip The Jungle Wastetalon will have a dark green or green skin.
Use your Tame Beast ability on _Jungle Wastetalon_. |cast Tame Beast##1515 |goto Gorgrond 49.00,77.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Raptors\\Greater Raptors\\Green Greater Raptor",{
description="This guide will walk you through obtaining a Green Greater Raptor pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61299},
},[[
step
Search for Jungle Wastetalon around the area.
|tip They are level 15-40, depending on your level.
|tip The Jungle Wastetalon will have a dark green or green skin.
Use your Tame Beast ability on _Jungle Wastetalon_. |cast Tame Beast##1515 |goto Gorgrond 49.00,77.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Raptors\\Greater Raptors\\Red Greater Raptor",{
description="This guide will walk you through obtaining a Red Greater Raptor pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61300},
},[[
step
Search for Gorgrond Wastetalon around the area.
|tip They are level 15-40, depending on your level.
|tip The Gorgrond Wastetalon will have a red or yellow skin.
Use your Tame Beast ability on _Gorgrond Wastetalon_. |cast Tame Beast##1515 |goto Gorgrond 38.00,80.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Raptors\\Greater Raptors\\Yellow Greater Raptor",{
description="This guide will walk you through obtaining a Yellow Greater Raptor pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59579},
},[[
step
Search for Gorgrond Wastetalon around the area.
|tip They are level 15-40, depending on your level.
|tip The Gorgrond Wastetalon will have a red or yellow skin.
Use your Tame Beast ability on _Gorgrond Wastetalon_. |cast Tame Beast##1515 |goto Gorgrond 38.00,80.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Ravagers\\Winged Ravagers\\Black Winged Ravager",{
description="This guide will walk you through obtaining a Black Winged Ravager pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55972},
},[[
step
Search for Shadeback Ravager around the area.
|tip They are level 30-40, depending on your level.
Use your Tame Beast ability on _Shadeback Ravager_. |cast Tame Beast##1515 |goto Spires of Arak 48.40,42.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Ravagers\\Winged Ravagers\\Blue Winged Ravager",{
description="This guide will walk you through obtaining a Blue Winged Ravager pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={57771},
},[[
step
Search for Hive Queen Skrikka around the area.
|tip She is level 15-40, depending on your level.
Use your Tame Beast ability on _Hive Queen Skrikka_. |cast Tame Beast##1515 |goto Gorgrond 52.20,70.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Ravagers\\Winged Ravagers\\Buff Winged Ravager",{
description="This guide will walk you through obtaining a Buff Winged Ravager pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55977},
},[[
step
Search for Bonespike Ravager around the area.
|tip They are level 30-40, depending on your level.
Use your Tame Beast ability on _Bonespike Ravager_. |cast Tame Beast##1515 |goto Spires of Arak 43.20,48.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Ravagers\\Winged Ravagers\\Green Winged Ravager",{
description="This guide will walk you through obtaining a Green Winged Ravager pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55975},
},[[
step
Search for Verdant Ravager around the area.
|tip They are level 15-40, depending on your level.
Use your Tame Beast ability on _Verdant Ravager_. |cast Tame Beast##1515 |goto Gorgrond 49.80,75.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Ravagers\\Winged Ravagers\\Icy Blue Winged Ravager",{
description="This guide will walk you through obtaining an Icy Blue Winged Ravager pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61121},
},[[
step
Search for Icespine Stinger around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Icespine Stinger_. |cast Tame Beast##1515 |goto Frostfire Ridge 54.80,69.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Ravagers\\Winged Ravagers\\Red Winged Ravager",{
description="This guide will walk you through obtaining a Red Winged Ravager pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55979},
},[[
step
Search for Desert Wastetalon around the area.
|tip They are level 15-40, depending on your level.
|tip The Desert Wastetalon will have a red or yellow skin.
Use your Tame Beast ability on _Desert Wastetalon_. |cast Tame Beast##1515 |goto Gorgrond 45.60,52.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Ravagers\\Winged Ravagers\\Yellow Winged Ravager",{
description="This guide will walk you through obtaining a Yellow Winged Ravager pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={57410},
},[[
step
Search for Desert Wastetalon around the area.
|tip They are level 15-40, depending on your level.
|tip The Desert Wastetalon will have a red or yellow skin.
Use your Tame Beast ability on _Desert Wastetalon_. |cast Tame Beast##1515 |goto Gorgrond 45.60,52.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Riverbeasts\\Blue Riverbeast",{
description="This guide will walk you through obtaining a Blue Riverbeast pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={57324},
},[[
step
Use your Tame Beast ability on _Twilight Riverbeast_. |cast Tame Beast##1515 |goto Shadowmoon Valley 52.00,59.20
|tip They are level 10-40, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Riverbeasts\\Dark Brown Riverbeast",{
description="This guide will walk you through obtaining a Dark Brown Riverbeast pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53729},
},[[
step
Use your Tame Beast ability on _Riverwallow Calfling_. |cast Tame Beast##1515 |goto Talador 57.60,74.80
|tip They are level 20-40, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Riverbeasts\\Green Riverbeast",{
description="This guide will walk you through obtaining a Green Riverbeast pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52415},
},[[
step
Use your Tame Beast ability on _Wetland Riverbeast_. |cast Tame Beast##1515 |goto Nagrand D 37.20,47.80
|tip They are level 35-40, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Riverbeasts\\Pale Riverbeast",{
description="This guide will walk you through obtaining a Pale Riverbeast pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52413},
},[[
step
Use your Tame Beast ability on _Riverwallower_. |cast Tame Beast##1515 |goto Talador 58.80,76.20
|tip They are level 20-40, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Riverbeasts\\Red-Brown Riverbeast",{
description="This guide will walk you through obtaining a Red-Brown Riverbeast pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59205},
},[[
step
Search for Lazymaw Riverbeast around the area.
|tip They are level 15-40, depending on your level.
Use your Tame Beast ability on _Lazymaw Riverbeast_. |cast Tame Beast##1515 |goto Gorgrond 59.20,54.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Gazelles\\Black Gazelle",{
description="This guide will walk you through obtaining a Black Gazelle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1547},
},[[
step
Search for Rikkilea Strider around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on _Rikkilea Strider_. |cast Tame Beast##1515 |goto Dread Wastes 34.60,20.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Gazelles\\Diseased Gazelle",{
description="This guide will walk you through obtaining a Diseased Gazelle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={14951},
},[[
step
Search for Felrot Courser around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on _Felrot Courser_. |cast Tame Beast##1515 |goto Felwood 44.40,33.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Gazelles\\Striped Tan Gazelle",{
description="This guide will walk you through obtaining a Striped Tan Gazelle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1547},
},[[
step
Search for Longstrider Gazelle around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on _Longstrider Gazelle_. |cast Tame Beast##1515 |goto Uldum 58.20,55.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Gazelles\\Tan and Black Gazelle",{
description="This guide will walk you through obtaining a Tan and Black Gazelle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1547},
},[[
step
Search for Fairlands Gazelle around the area.
|tip They are level 30-35, depending on your level.
You can find Fairlands Gazelle at the locations below:
[24.80,52.80]
[22.60,45.60]
[34.60,48.20]
Use your Tame Beast ability on _Fairlands Gazelle_. |cast Tame Beast##1515 |goto Vale of Eternal Blossoms 29.00,58.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Greater Stags\\Patterned Dark Brown Greater Stag",{
description="This guide will walk you through obtaining a Patterned Dark Brown Greater Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={45746},
},[[
step
Search for Silverhorn Yearling around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on _Silverhorn Yearling_. |cast Tame Beast##1515 |goto The Jade Forest 41.80,63.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Greater Stags\\Patterned Green-Brown Greater Stag",{
description="This guide will walk you through obtaining a Patterned Green-Brown Greater Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={45209},
},[[
step
Search for Painted Stag around the area.
|tip They are level 25-35, depending on your level.
Use your Tame Beast ability on _Painted Stag_. |cast Tame Beast##1515 |goto Townlong Steppes 37.80,55.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Greater Stags\\Patterned Grey Greater Stag",{
description="This guide will walk you through obtaining a Patterned Grey Greater Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46052},
},[[
step
Search for Ancient Stag around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on _Ancient Stag_. |cast Tame Beast##1515 |goto Dread Wastes 65.00,22.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Greater Stags\\Patterned Orange Greater Stag",{
description="This guide will walk you through obtaining a Patterned Orange Greater Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={45749},
},[[
step
Search for Silverhorn Calf around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on _Silverhorn Calf_. |cast Tame Beast##1515 |goto The Jade Forest 40.40,64.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Greater Stags\\Patterned White Greater Stag",{
description="This guide will walk you through obtaining a Patterned White Greater Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46052},
},[[
step
Search for Shrine Elk around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on _Shrine Elk_. |cast Tame Beast##1515 |goto The Jade Forest 53.00,39.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Greater Talbuks\\Black Greater Talbuk",{
description="This guide will walk you through obtaining a Black Greater Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53741},
},[[
step
Search for Silverpelt Charger around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Silverpelt Charger_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 40.00,35.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Greater Talbuks\\Purple Greater Talbuk",{
description="This guide will walk you through obtaining a Purple Greater Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53764},
},[[
step
Search for Pearlfur Grazer around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Pearlfur Grazer_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 31.00,17.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Greater Talbuks\\Red Greater Talbuk",{
description="This guide will walk you through obtaining a Red Greater Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58048},
},[[
step
map Nagrand D
path follow loose;loop on;ants straight
path	43.00,57.00	48.00,49.80	62.80,38.60
path	79.60,35.40	82.40,42.20	73.80,57.60
path	65.20,58.60	57.00,71.20	44.80,69.60
|tip They are level 35-40, depending on your level.
|tip The Breezestrider Colt will have a red, silver, or tan coat.
Use your Tame Beast ability on _Breezestrider Colt_. |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Greater Talbuks\\Silver Greater Talbuk",{
description="This guide will walk you through obtaining a Silver Greater Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53741},
},[[
step
map Nagrand D
path follow loose;loop on;ants straight
path	43.00,57.00	48.00,49.80	62.80,38.60
path	79.60,35.40	82.40,42.20	73.80,57.60
path	65.20,58.60	57.00,71.20	44.80,69.60
|tip They are level 35-40, depending on your level.
|tip The Breezestrider Colt will have a red, silver, or tan coat.
Use your Tame Beast ability on _Breezestrider Colt_. |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Greater Talbuks\\Tan Greater Talbuk",{
description="This guide will walk you through obtaining a Tan Greater Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53612},
},[[
step
map Nagrand D
path follow loose;loop on;ants straight
path	43.00,57.00	48.00,49.80	62.80,38.60
path	79.60,35.40	82.40,42.20	73.80,57.60
path	65.20,58.60	57.00,71.20	44.80,69.60
|tip They are level 35-40, depending on your level.
|tip The Breezestrider Colt will have a red, silver, or tan coat.
Use your Tame Beast ability on _Breezestrider Colt_. |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Old World Stags\\Black Old World Stag",{
description="This guide will walk you through obtaining a Black Old World Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1991},
},[[
step
Search for Blighted Elk around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on _Blighted Elk_. |cast Tame Beast##1515 |goto Dragonblight 28.00,49.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Old World Stags\\Brown Old World Stag",{
description="This guide will walk you through obtaining a Brown Old World Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={1917},
},[[
step
Search for Tallhorn Stag around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on _Tallhorn Stag_. |cast Tame Beast##1515 |goto Grizzly Hills 23.40,56.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Old World Stags\\Silver Old World Stag",{
description="This guide will walk you through obtaining a Silver Old World Stag pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={16872},
},[[
step
Search for Snowfall Elk around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on _Snowfall Elk_. |cast Tame Beast##1515 |goto Dragonblight 40.40,47.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Talbuks\\Black Talbuk",{
description="This guide will walk you through obtaining a Black Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19779},
},[[
step
Search for Talbuk Sire around the area.
|tip They are level 25-30, depending on your level.
Use your Tame Beast ability on _Talbuk Sire_. |cast Tame Beast##1515 |goto Netherstorm 40.60,39.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Talbuks\\Brown Talbuk",{
description="This guide will walk you through obtaining a Brown Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19220},
},[[
step
Search for Talbuk Thorngrazer around the area.
|tip They are level 35-40, depending on your level.
Use your Tame Beast ability on _Talbuk Thorngrazer_. |cast Tame Beast##1515 |goto Nagrand D 51.00,46.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Talbuks\\Indigo Talbuk",{
description="This guide will walk you through obtaining an Indigo Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19223},
},[[
step
map Nagrand
path follow strict;loop on;ants straight
path	24.20,43.20	26.40,39.20	29.20,34.40
path	28.00,41.20	26.60,49.60	26.00,53.80
path	24.40,48.80
|tip Search for Bach'lor around the area.
|tip It is level 35-40, depending on your level.
Use your Tame Beast ability on Bach'lor |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Talbuks\\Lavender Talbuk",{
description="This guide will walk you through obtaining a Lavender Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={19219},
},[[
step
Search for Talbuk Stag around the area,
|tip They are level 35-40, depending on your level.
Use your Tame Beast ability on _Talbuk Stag_. |cast Tame Beast##1515 |goto Nagrand D 62.20,44.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Talbuks\\White Talbuk",{
description="This guide will walk you through obtaining a White Talbuk pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={37779},
},[[
step
map Netherstorm
path follow strict;loop on;ants straight
path	38.60,37.80	44.00,30.60	47.00,25.20
path	47.20,30.80	46.00,39.80	41.20,38.80
Search for Talbuk Doe around the area.
Use your Tame Beast ability on _Talbuk Doe_. |cast Tame Beast##1515
|tip They are level 25-30, depending on your level.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Stags\\Reindeer",{
description="This guide will walk you through obtaining a Reindeer pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={15903},
},[[
step
Search for Marsh Caribou around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on _Marsh Caribou_. |cast Tame Beast##1515 |goto Borean Tundra 79.00,36.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Warp Stalkers\\Black Warp Stalker",{
description="This guide will walk you through obtaining a Black Warp Stalker pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61138},
},[[
step
Search for a _Shaded Plainstalker_
|tip They are level 10-40, depending on your level.
Use your _Tame Beast_ ability on a _Shaded Plainstalker_ |cast Tame Beast##1515 |goto Shadowmoon Valley D/0 15.00,53.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Wolves\\Iron Horde Wolves\\Iron Horde Wolf",{
description="This guide will walk you through obtaining an Iron Horde Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61531},
},[[
step
clicknpc Strongpoint##92996
|tip You will need to defend the flag for this enemy to spawn.
Search for an _Iron Warwolf_
|tip They are level 40.
Use your _Tame Beast_ ability on an _Iron Warwolf_ |cast Tame Beast##1515 |goto Tanaan Jungle/0 12.62,56.92
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Wolves\\Maned Wolves\\Black Maned Wolf",{
description="This guide will walk you through obtaining a Black Maned Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52602},
},[[
step
Search for Shadowmoon Stalker the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Shadowmoon Stalker_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 41.00,29.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Wolves\\Maned Wolves\\Brown Armored Maned Wolf",{
description="This guide will walk you through obtaining a Brown Armored Maned Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={54130},
},[[
step
Search for a _Savage Warwolf_
|tip They are level 35-40, depending on your level.
Use your _Tame Beast_ ability on a _Savage Warwolf_ |cast Tame Beast##1515 |goto Nagrand D/0 66.60,63.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Wolves\\Maned Wolves\\Brown Maned Wolf",{
description="This guide will walk you through obtaining a Brown Maned Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={56900},
},[[
step
Search for Nagrand Prowler the area.
|tip They are level 35-40, depending on your level.
Use your Tame Beast ability on _Nagrand Prowler_. |cast Tame Beast##1515 |goto Nagrand D 71.80,40.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Wolves\\Maned Wolves\\Fel Green Maned Wolf",{
description="This guide will walk you through obtaining a Fel Green Maned Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61982},
},[[
step
kill Fel Rangari Anaara##93229
|tip She will be sitting on a mushroom.
collect Vial of Fel Cleansing##124506 |goto Tanaan Jungle/0 54.04,93.00
step
Enter the cave |goto Tanaan Jungle/0 29.04,71.19 < 20
Follow the path |goto Tanaan Jungle/0 28.93,72.84 < 15
Follow the path down |goto Tanaan Jungle/0 28.07,74.14 < 15
Search for a _Felbound Wolf_
|tip They are level 40.
Use the Vial of Fel Cleansing on the Felbound Wolf |use Vial of Fel Cleansing##124506
|tip You will need to do this before attempting to taming the creature!
Use your _Tame Beast_ ability on a _Felbound Wolf_ |cast Tame Beast##1515 |goto Tanaan Jungle/0 27.22,74.93
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Wolves\\Maned Wolves\\Grey Maned Wolf",{
description="This guide will walk you through obtaining a Grey Maned Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52601},
},[[
step
Search for Gloomshade Howler the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Gloomshade Howler_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 39.80,25.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Wolves\\Maned Wolves\\Silver Maned Wolf",{
description="This guide will walk you through obtaining a Silver Maned Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53317},
},[[
step
Search for Frost Wolf Alpha the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Frost Wolf Alpha_. |cast Tame Beast##1515 |goto Frostfire Ridge 55.60,64.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Wolves\\Saddled Maned Wolves\\Saddled Brown Maned Wolf",{
description="This guide will walk you through obtaining a Saddled Brown Maned Wolf pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={56174},
},[[
step
Search for Riding Wolf the area.
|tip They are level 35-40, depending on your level.
Use your Tame Beast ability on _Riding Wolf_. |cast Tame Beast##1515 |goto Nagrand D 42.00,73.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Bats\\Greater Bats\\Grey-Brown Greater Bat",{
description="This guide will walk you through obtaining a Grey-Brown Greater Bat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52732},
},[[
step
Search for Icecave Bat around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Icecave Bat_. |cast Tame Beast##1515 |goto Frostfire Ridge 41.60,68.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Bats\\Greater Bats\\Red-Black Greater Bat",{
description="This guide will walk you through obtaining a Red-Black Greater Bat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={55376},
},[[
step
Search for Echo Hunter around the area.
|tip They are level 30-40, depending on your level.
Use your Tame Beast ability on _Echo Hunter_. |cast Tame Beast##1515 |goto Spires of Arak 49.60,38.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Bats\\Greater Bats\\Tan-Brown Greater Bat",{
description="This guide will walk you through obtaining a Tan-Brown Greater Bat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={57297},
},[[
step
Search for a _Direwing Predator_
|tip They are level 40.
|tip They are flying around the area.
Use your _Tame Beast_ ability on a _Direwing Predator_ |cast Tame Beast##1515 |goto Tanaan Jungle/0 43.00,69.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Bats\\Greater Bats\\White Greater Bat",{
description="This guide will walk you through obtaining a White Greater Bat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={52595},
},[[
step
Search for Rakkiri around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Rakkiri_. |cast Tame Beast##1515 |goto Frostfire Ridge 72.80,70.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Birds of Prey\\Axebeaks\\Black Axebeak",{
description="This guide will walk you through obtaining a Black Axebeak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58824},
},[[
step
Search for Putrid Axebeak around the area.
|tip They are level 30-40, depending on your level.
Use your Tame Beast ability on _Putrid Axebeak_. |cast Tame Beast##1515 |goto Spires of Arak 54.80,40.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Birds of Prey\\Axebeaks\\Blue Axebeak",{
description="This guide will walk you through obtaining a Blue Axebeak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58825},
},[[
step
Search for Jungle Axebeak around the area.
|tip They are level 15-40, depending on your level.
|tip The Jungle Axebeak will be feathered in blue, red, or green.
Use your Tame Beast ability on _Jungle Axebeak_. |cast Tame Beast##1515 |goto Gorgrond 52.20,75.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Birds of Prey\\Axebeaks\\Green Axebeak",{
description="This guide will walk you through obtaining a Green Axebeak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58823},
},[[
step
Search for Jungle Axebeak around the area.
|tip They are level 15-40, depending on your level.
|tip The Jungle Axebeak will be feathered in blue, red, or green.
Use your Tame Beast ability on _Jungle Axebeak_. |cast Tame Beast##1515 |goto Gorgrond 52.20,75.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Birds of Prey\\Axebeaks\\Red Axebeak",{
description="This guide will walk you through obtaining a Red Axebeak pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59101},
},[[
step
Search for Jungle Axebeak around the area.
|tip They are level 15-40, depending on your level.
|tip The Jungle Axebeak will be feathered in blue, red, or green.
Use your Tame Beast ability on _Jungle Axebeak_. |cast Tame Beast##1515 |goto Gorgrond 52.20,75.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Birds of Prey\\Draenor Kaliri\\Black Draenor Kaliri",{
description="This guide will walk you through obtaining a Black Draenor Kaliri pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58828},
},[[
step
Search for Ebonwing Kaliri around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Ebonwing Kaliri_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 40.20,61.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Birds of Prey\\Draenor Kaliri\\Brown Draenor Kaliri",{
description="This guide will walk you through obtaining a Brown Draenor Kaliri pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58832},
},[[
step
Search for Seacliff Kaliri around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Seacliff Kaliri_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 36.40,71.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Birds of Prey\\Draenor Kaliri\\Red Draenor Kaliri",{
description="This guide will walk you through obtaining a Red Draenor Kaliri pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58829},
},[[
step
Search for Darkbeak Kaliri around the area.
|tip They are level 30-40, depending on your level.
Use your Tame Beast ability on _Darkbeak Kaliri_. |cast Tame Beast##1515 |goto Spires of Arak 60.40,69.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Carrion Birds\\Teroclaws\\Blue-Black Teroclaw",{
description="This guide will walk you through obtaining a Blue-Black Teroclaw pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58718},
},[[
step
Search for Kil'uun around the area.
|tip It is level 20-40, depending on your level.
Use your Tame Beast ability on _Kil'uun_. |cast Tame Beast##1515 |goto Talador 69.60,26.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Carrion Birds\\Teroclaws\\Red-Brown Teroclaw",{
description="This guide will walk you through obtaining a Red-Brown Teroclaw pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58175},
},[[
step
Search for Teroclaw around the area.
|tip It is level 20-40, depending on your level.
Use your Tame Beast ability on _Teroclaw_. |cast Tame Beast##1515 |goto Talador 54.20,56.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Carrion Birds\\Teroclaws\\Yellow-Brown Teroclaw",{
description="This guide will walk you through obtaining a Yellow-Brown Teroclaw pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58713},
},[[
step
Search for Teroclaw Hen-Mother around the area.
|tip It is level 20-40, depending on your level.
Use your Tame Beast ability on _Teroclaw Hen-Mother_. |cast Tame Beast##1515 |goto Talador 39.80,76.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Carrion Birds\\Teroclaws\\Young Red Teroclaw",{
description="This guide will walk you through obtaining a Young Red Teroclaw pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58719},
},[[
step
Search for Hen Chick around the area.
|tip It is level 20-40, depending on your level.
Use your Tame Beast ability on _Hen Chick_. |cast Tame Beast##1515 |goto Talador 76.60,50.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Moths\\Cyan-Blue and White Moth",{
description="This guide will walk you through obtaining a Cyan-Blue and White Moth pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59895},
},[[
step
Search for Agitated Duskwing around the area.
|tip They are level 20-40, depending on your level.
Use your Tame Beast ability on _Agitated Duskwing_. |cast Tame Beast##1515 |goto Talador 68.20,52.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Moths\\Indigo and White Moth",{
description="This guide will walk you through obtaining an Indigo and White Moth pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59888},
},[[
step
Search for Frenzied Manafeeder around the area.
|tip They are level 20-40, depending on your level.
Use your Tame Beast ability on _Frenzied Manafeeder_. |cast Tame Beast##1515 |goto Talador 50.60,54.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Moths\\Pink Moth",{
description="This guide will walk you through obtaining a Pink Moth pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59894},
},[[
step
Search for Fluttering Teromoth around the area.
|tip They are level 20-40, depending on your level.
Fluttering Teromoth can also be found at the locations below:
[65.00,13.40]
[76.60,52.80]
[54.60,86.80]
Use your Tame Beast ability on _Fluttering Teromoth_. |cast Tame Beast##1515 |goto Talador 65.20,22.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Moths\\Red and White Moth",{
description="This guide will walk you through obtaining a Red and White Moth pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59748},
},[[
step
Search for Protective Shimmerwing Moth around the area
|tip They are level 20-40, depending on your level.
Use your Tame Beast ability on _Protective Shimmerwing Moth_. |cast Tame Beast##1515 |goto Talador 33.20,63.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Moths\\White and Cyan Moth",{
description="This guide will walk you through obtaining a White and Cyan Moth pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={61635},
},[[
step
Search for Tainted Lightwing around the area
|tip They are level 10-40, depending on your level.
|tip Void aura will be lost upon taming.
Use your Tame Beast ability on _Tainted Lightwing_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 51.20,21.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Sporebats\\Greater Sporebats\\Blue Greater Sporebat",{
description="This guide will walk you through obtaining a Blue Greater Sporebat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={51579},
},[[
step
Search for Moonglow Sporebat around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Moonglow Sporebat_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 54.40,21.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Sporebats\\Greater Sporebats\\Grey Greater Sporebat",{
description="This guide will walk you through obtaining a Grey Greater Sporebat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={53360},
},[[
step
Search for Zangarra Sporebat around the area.
|tip They are level 20-40, depending on your level.
Use your Tame Beast ability on _Zangarra Sporebat_. |cast Tame Beast##1515 |goto Talador 81.60,29.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Sporebats\\Greater Sporebats\\Purple Greater Sporebat",{
description="This guide will walk you through obtaining a Purple Greater Sporebat pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={51584},
},[[
step
Search for Vile Sporebat around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Vile Sporebat_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 22.60,19.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Wasps\\Dire Wasps\\Blue Dire Wasp",{
description="This guide will walk you through obtaining a Blue Dire Wasp pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={56042},
},[[
step
Search for Weald Stinger around the area.
|tip They are level 15-40, depending on your level.
Use your Tame Beast ability on _Weald Stinger_. |cast Tame Beast##1515 |goto Gorgrond 62.20,53.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Wasps\\Dire Wasps\\Buff Dire Wasp",{
description="This guide will walk you through obtaining a Buff Dire Wasp pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58540},
},[[
step
Search for Stingtail Drone around the area.
|tip They are level 30-40, depending on your level.
Use your Tame Beast ability on _Stingtail Drone_. |cast Tame Beast##1515 |goto Spires of Arak 59.00,45.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Wasps\\Dire Wasps\\Dark Green Dire Wasp",{
description="This guide will walk you through obtaining a Dark Green Dire Wasp pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={57709},
},[[
step
Search for Electrified Stingtail around the area.
|tip They are level 30-40, depending on your level.
Use your Tame Beast ability on _Electrified Stingtail_. |cast Tame Beast##1515 |goto Spires of Arak 56.00,40.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Wasps\\Dire Wasps\\Green Dire Wasp",{
description="This guide will walk you through obtaining a Green Dire Wasp pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={56044},
},[[
step
Search for Scavenger Wasp around the area.
|tip They are level 15-40, depending on your level.
Use your Tame Beast ability on _Scavenger Wasp_. |cast Tame Beast##1515 |goto Gorgrond 50.80,79.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Wasps\\Dire Wasps\\Red Dire Wasp",{
description="This guide will walk you through obtaining a Red Dire Wasp pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={56522},
},[[
step
Search for Crimsonwing Wasp around the area.
|tip They are level 30-40, depending on your level.
Use your Tame Beast ability on _Crimsonwing Wasp_. |cast Tame Beast##1515 |goto Spires of Arak 60.60,81.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Wasps\\Dire Wasps\\Yellow Dire Wasp",{
description="This guide will walk you through obtaining a Yellow Dire Wasp pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={57884},
},[[
step
Search for Heartsting Pollinator around the area.
|tip They are level 15-40, depending on your level.
Use your Tame Beast ability on _Heartsting Pollinator_. |cast Tame Beast##1515 |goto Gorgrond 58.60,68.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Wasps\\Fireflies\\Aqua Firefly",{
description="This guide will walk you through obtaining an Aqua Firefly pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59741},
},[[
step
Search for Swamplighter Workeraround the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Swamplighter Worker_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 52.00,58.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Wasps\\Fireflies\\Blue Firefly",{
description="This guide will walk you through obtaining a Blue Firefly pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59732},
},[[
step
Search for Swamplighter Drone the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Swamplighter Worker_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 52.00,58.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Wasps\\Fireflies\\Magenta Firefly",{
description="This guide will walk you through obtaining a Magenta Firefly pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59742},
},[[
step
Search for Frenzied Swamplighter the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Frenzied Swamplighter_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 44.00,50.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Wasps\\Fireflies\\Orange Firefly",{
description="This guide will walk you through obtaining an Orange Firefly pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={59740},
},[[
step
Search for Swamplighter Queen the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on _Swamplighter Queen_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 51.60,54.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Blue-Tinged Dark Red Spiked Crab",{
description="This guide will walk you through obtaining a Blue-Tinged Dark Red Spiked Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={32640},
},[[
step
Search for a _Fathomless Mauler_
|tip They are level 40.
Use your _Tame Beast_ ability on a _Fathomless Mauler_ |cast Tame Beast##1515 |goto Tanaan Jungle/0 49.94,91.84
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Blue-Marked Deep Red Spiked Crab",{
description="This guide will walk you through obtaining a Blue-Marked Deep Red Spiked Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={51146},
},[[
step
Search for Monstrous Spineclaw around the area.
|tip They are level 30-35, depending on your level.
Monstrous Spineclaw also spawns at the locations below:
[22.00,47.00]
[21.80,65.00]
[26.00,73.40]
[39.00,85.20]
[67.80,77.00]
[70.80,64.20]
Use your Tame Beast ability on a _Monstrous Spineclaw_. |cast Tame Beast##1515 |goto Timeless Isle 23.00,32.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Greenish-Blue Spiked Crab",{
description="This guide will walk you through obtaining a Greenish-Blue Spiked Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={50962},
},[[
step
Search for Ancient Spineclaw around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on an _Ancient Spineclaw_. |cast Tame Beast##1515 |goto Timeless Isle 23.40,28.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Crabs\\Silver Crab",{
description="This guide will walk you through obtaining a Silver Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={58317},
},[[
step
Search for Moonshell Crawler around the area.
|tip They are level 10-40, depending on your level.
Use your Tame Beast ability on a _Moonshell Crawler_. |cast Tame Beast##1515 |goto Shadowmoon Valley D 31.00,10.80
]])
