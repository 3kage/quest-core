-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Devilsaurs\\Greater Devilsaurs\\Blue Greater Devilsaur",{
description="This guide will walk you through obtaining a Blue Greater Devilsaur pet.",
model={47811},
condition_suggested=function() return level>=35 and level<=40 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Use your Tame Beast ability on a _Young Primal Devilsaur_. |cast Tame Beast##1515 |goto Isle of Giants 71.00,55.20
|tip They are level 35.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Devilsaurs\\Greater Devilsaurs\\Black Greater Devilsaur",{
description="This guide will walk you through obtaining a Black Greater Devilsaur pet.",
model={47573},
condition_suggested=function() return level>=35 and level<=40 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Use your Tame Beast ability on a _Young Primal Devilsaur_. |cast Tame Beast##1515 |goto Isle of Giants 73.20,68.00
|tip They are level 35.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Devilsaurs\\Greater Devilsaurs\\Bronze Greater Devilsaur",{
description="This guide will walk you through obtaining a Bronze Greater Devilsaur pet.",
model={47577},
condition_suggested=function() return level>=35 and level<=40 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Use your Tame Beast ability on a _Young Primal Devilsaur_. |cast Tame Beast##1515 |goto Isle of Giants 24.10,58.90
|tip They are level 35.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Devilsaurs\\Greater Devilsaurs\\Green Greater Devilsaur",{
description="This guide will walk you through obtaining a Green Greater Devilsaur pet.",
model={47574},
condition_suggested=function() return level>=35 and level<=40 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Use your Tame Beast ability on a _Young Primal Devilsaur_. |cast Tame Beast##1515 |goto Isle of Giants 32.90,58.60
|tip They are level 35.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Devilsaurs\\Greater Devilsaurs\\Light Brown Greater Devilsaur",{
description="This guide will walk you through obtaining a Light Brown Greater Devilsaur pet.",
model={47355},
condition_suggested=function() return level>=32 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Use your Tame Beast ability on _Kroshik_. |cast Tame Beast##1515 |goto Isle of Thunder/0 51.00,74.50
|tip It is level 32-35, depending on your level.
|tip This NPC goes through 4 life phases over several days, so you will need to come back another time if he is not in his adult phase.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Quilen\\Armored Stone Quilens\\Blue Armored Stone Quilen",{
description="This guide will walk you through obtaining a Blue Armored Stone Quilen pet.",
model={45427},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
In order to tame this pet, you must be _at least_ level 30.
|tip The new Pandaria rare spawns require that you locate their tracks in a certain zone.
|tip Follow the path and look for the said tracks in order to tame the pet.
Reach level 30 |ding 30
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
map Vale of Eternal Blossoms
path follow loose;loop off;ants straight
path 78.60,25.00	77.60,25.80	75.00,24.80
path 72.20,23.60	70.60,21.40	69.80,24.60
path 68.20,28.60	68.00,30.20	65.60,34.20
path 67.00,38.00	67.00,40.20	65.60,42.80
path 64.80,47.20	65.80,50.00	68.00,53.80
path 66.20,56.40	65.50,58.00	62.40,61.60
path 57.80,60.80	55.20,60.60	52.60,59.80
path 50.60,59.20	51.80,53.60	52.20,49.40
path 53.40,46.80	51.60,44.40	49.60,38.00
path 50.00,31.60	47.00,31.20	45.40,33.40
path 42.40,31.20	39.20,28.20	37.80,20.20
path 35.60,33.00	34.40,27.00	35.80,23.60
path 32.80,24.80	30.40,27.80	29.00,37.00
path 28.60,39.20	27.80,45.60	30.80,49.60
path 33.80,51.80	32.40,53.20	30.80,58.00
path 30.20,59.20	27.60,58.00	21.60,55.40
path 20.20,53.00	18.40,52.40	13.80,53.40
path 14.40,48.80	15.20,39.80	14.80,38.40
path 11.60,37.00	13.60,30.20	14.40,27.60
Follow the provided path, searching for _Dusty Tracks_.
Once you find the Dusty Tracks, you will want to search for more, following the tracks the way they are facing.
A new dusty track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Portent_. |cast Flare##1543
Use your Tame Beast ability on _Portent_. |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Quilen\\Armored Stone Quilens\\Green Armored Stone Quilen",{
description="This guide will walk you through obtaining a Green Armored Stone Quilen pet.",
model={45427},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
In order to tame this pet, you must be _at least_ level 30.
|tip The new Pandaria rare spawns require that you locate their tracks in a certain zone.
|tip Follow the path and look for the said tracks in order to tame the pet.
Reach level 30 |ding 30
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
map Vale of Eternal Blossoms
path follow loose;loop off;ants straight
path 78.60,25.00	77.60,25.80	75.00,24.80
path 72.20,23.60	70.60,21.40	69.80,24.60
path 68.20,28.60	68.00,30.20	65.60,34.20
path 67.00,38.00	67.00,40.20	65.60,42.80
path 64.80,47.20	65.80,50.00	68.00,53.80
path 66.20,56.40	65.50,58.00	62.40,61.60
path 57.80,60.80	55.20,60.60	52.60,59.80
path 50.60,59.20	51.80,53.60	52.20,49.40
path 53.40,46.80	51.60,44.40	49.60,38.00
path 50.00,31.60	47.00,31.20	45.40,33.40
path 42.40,31.20	39.20,28.20	37.80,20.20
path 35.60,33.00	34.40,27.00	35.80,23.60
path 32.80,24.80	30.40,27.80	29.00,37.00
path 28.60,39.20	27.80,45.60	30.80,49.60
path 33.80,51.80	32.40,53.20	30.80,58.00
path 30.20,59.20	27.60,58.00	21.60,55.40
path 20.20,53.00	18.40,52.40	13.80,53.40
path 14.40,48.80	15.20,39.80	14.80,38.40
path 11.60,37.00	13.60,30.20	14.40,27.60
Follow the provided path, searching for _Dusty Tracks_.
Once you find the Dusty Tracks, you will want to search for more, following the tracks the way they are facing.
A new dusty track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Portent_. |cast Flare##1543
Use your Tame Beast ability on _Portent_. |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Quilen\\Armored Stone Quilens\\Purple Armored Stone Quilen",{
description="This guide will walk you through obtaining a Purple Armored Stone Quilen pet.",
model={45427},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
In order to tame this pet, you must be _at least_ level 30.
|tip The new Pandaria rare spawns require that you locate their tracks in a certain zone.
|tip Follow the path and look for the said tracks in order to tame the pet.
Reach level 30 |ding 30
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
map Vale of Eternal Blossoms
path follow loose;loop off;ants straight
path 78.60,25.00	77.60,25.80	75.00,24.80
path 72.20,23.60	70.60,21.40	69.80,24.60
path 68.20,28.60	68.00,30.20	65.60,34.20
path 67.00,38.00	67.00,40.20	65.60,42.80
path 64.80,47.20	65.80,50.00	68.00,53.80
path 66.20,56.40	65.50,58.00	62.40,61.60
path 57.80,60.80	55.20,60.60	52.60,59.80
path 50.60,59.20	51.80,53.60	52.20,49.40
path 53.40,46.80	51.60,44.40	49.60,38.00
path 50.00,31.60	47.00,31.20	45.40,33.40
path 42.40,31.20	39.20,28.20	37.80,20.20
path 35.60,33.00	34.40,27.00	35.80,23.60
path 32.80,24.80	30.40,27.80	29.00,37.00
path 28.60,39.20	27.80,45.60	30.80,49.60
path 33.80,51.80	32.40,53.20	30.80,58.00
path 30.20,59.20	27.60,58.00	21.60,55.40
path 20.20,53.00	18.40,52.40	13.80,53.40
path 14.40,48.80	15.20,39.80	14.80,38.40
path 11.60,37.00	13.60,30.20	14.40,27.60
Follow the provided path, searching for _Dusty Tracks_.
Once you find the Dusty Tracks, you will want to search for more, following the tracks the way they are facing.
A new dusty track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Portent_. |cast Flare##1543
Use your Tame Beast ability on _Portent_. |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Quilen\\Armored Stone Quilens\\Red Armored Stone Quilen",{
description="This guide will walk you through obtaining a Red Armored Stone Quilen pet.",
model={45427},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
In order to tame this pet, you must be _at least_ level 30.
|tip The new Pandaria rare spawns require that you locate their tracks in a certain zone.
|tip Follow the path and look for the said tracks in order to tame the pet.
Reach level 30 |ding 30
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
map Vale of Eternal Blossoms
path follow loose;loop off;ants straight
path 78.60,25.00	77.60,25.80	75.00,24.80
path 72.20,23.60	70.60,21.40	69.80,24.60
path 68.20,28.60	68.00,30.20	65.60,34.20
path 67.00,38.00	67.00,40.20	65.60,42.80
path 64.80,47.20	65.80,50.00	68.00,53.80
path 66.20,56.40	65.50,58.00	62.40,61.60
path 57.80,60.80	55.20,60.60	52.60,59.80
path 50.60,59.20	51.80,53.60	52.20,49.40
path 53.40,46.80	51.60,44.40	49.60,38.00
path 50.00,31.60	47.00,31.20	45.40,33.40
path 42.40,31.20	39.20,28.20	37.80,20.20
path 35.60,33.00	34.40,27.00	35.80,23.60
path 32.80,24.80	30.40,27.80	29.00,37.00
path 28.60,39.20	27.80,45.60	30.80,49.60
path 33.80,51.80	32.40,53.20	30.80,58.00
path 30.20,59.20	27.60,58.00	21.60,55.40
path 20.20,53.00	18.40,52.40	13.80,53.40
path 14.40,48.80	15.20,39.80	14.80,38.40
path 11.60,37.00	13.60,30.20	14.40,27.60
Follow the provided path, searching for _Dusty Tracks_.
Once you find the Dusty Tracks, you will want to search for more, following the tracks the way they are facing.
A new dusty track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Portent_. |cast Flare##1543
Use your Tame Beast ability on _Portent_. |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Quilen\\Stone Quilen\\Blue Stone Quilen",{
description="This guide will walk you through obtaining a Blue Stone Quilen pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46049},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Press _I_ to open the Group Finder tool
|tip Queue for the "Crypt of Forgotten Kings" scenario.
Enter the _Crypt of Forgotten Kings_ scenario |scenariostart
|next "Scenario_Start"
|only if level <= 30
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk
talk Lorewalker Fu##78709
Select _"Tell me of the Crypt of Forgotten Kings."_
Enter the _Crypt of Forgotten Kings_ scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
|next "Scenario_Start"
|only if level >= 31
step
label "Scenario_Start"
Go down the stairs |goto Crypt of Forgotten Kings/1 64.05,24.21 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.05,31.81 < 15 |walk
Follow the path |goto Crypt of Forgotten Kings/1 57.19,39.00 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 50.68,39.05 < 10 |walk
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
kill Jin Ironfist##61814
|tip He will randomly jump to players in your group.
Slay Jin Ironfist |scenariogoal Jin Ironfist slain##1/19223 |goto Crypt of Forgotten Kings/1 43.83,39.91
step
Follow the path |goto Crypt of Forgotten Kings/1 46.43,51.84 < 15 |walk
Go down the stairs |goto Crypt of Forgotten Kings/1 46.51,59.19 < 15 |walk
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
kill Spawn of Hate##61709 |goto Crypt of Forgotten Kings/1 46.90,58.30
|tip Fight here until the Pool of Life is cleansed.
Cleanse the Pool of Life |scenariogoal Pool of Life Cleansed##2/20882 |goto Crypt of Forgotten Kings/1 46.51,59.19
step
Go up the stairs |goto Crypt of Forgotten Kings/1 46.57,52.12 < 15 |walk
Follow the path |goto Crypt of Forgotten Kings/1 50.65,39.02 < 15 |walk
Follow the path |goto Crypt of Forgotten Kings/1 57.50,39.07 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.12,49.00 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.09,78.49 < 15 |walk
Follow the path |goto Crypt of Forgotten Kings/1 58.56,80.00 < 7 |walk
Go down the stairs |goto Crypt of Forgotten Kings/1 58.68,89.12 < 7 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.22,84.51 < 20 |walk
Kill enemies along the way
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
Search for a Quilen Watcher
|tip They are level 30-35, depending on your level.
Use your _Tame Beast_ ability on a _Quilen Watcher_ |cast Tame Beast##1515 |goto Crypt of Forgotten Kings/1 64.23,80.67
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Quilen\\Stone Quilen\\Purple Stone Quilen",{
description="This guide will walk you through obtaining a Purple Stone Quilen pet.",
model={45432},
condition_suggested=function() return level>=20 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for _Terracota Defenders_ around the area.
|tip They are level 20-35, depending on your level.
Use your Tame Beast ability on a _Terracota Defender_. |cast Tame Beast##1515 |goto Kun-Lai Summit 61.00,73.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Quilen\\Stone Quilen\\Stone Quilen",{
description="This guide will walk you through obtaining a Stone Quilen pet.",
model={40217},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for _Sleeping Guardians_ around the area.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on a _Sleeping Guardian_. |cast Tame Beast##1515 |goto Krasarang Wilds 52.00,32.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Quilen\\Brown Quilen",{
description="This guide will walk you through obtaining a Brown Quilen pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46047},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for a Bronze Quilen
|tip They are level 25-35, depending on your level.
Use your _Tame Beast_ ability on a _Bronze Quilen_ |cast Tame Beast##1515 |goto Townlong Steppes/0 34.43,23.18
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Quilen\\Gray Quilen",{
description="This guide will walk you through obtaining a Gray Quilen pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={40607},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Enter Mogu'shan Palace |goto Mogu'shan Vaults/1 00.00,00.00 |c
step
Go down the steps and there will be a large group of Stone Quilen
Search for a Stone Quilen
|tip They are level 25-35, depending on your level.
Use your _Tame Beast_ ability on a _Stone Quilen_ |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Quilen\\Red Quilen",{
description="This guide will walk you through obtaining a Red Quilen pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={44513},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for a Terracotta Guardian
|tip They are level 20-35, depending on your level.
|tip You will need to move close to them to aggro.
Use your _Tame Beast_ ability on a _Terracotta Guardian_ |cast Tame Beast##1515 |goto Kun-Lai Summit/0 59.60,75.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Quilen\\White Quilen",{
description="This guide will walk you through obtaining a White Quilen pet.",
model={40155},
condition_suggested=function() return level>=20 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for _Yachi_ around the area.
|tip It is level 20-35, depending on your level.
Use your Tame Beast ability on _Yachi_. |cast Tame Beast##1515 |goto Kun-Lai Summit 43.60,51.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Spirit Porcupines\\Ghostly Blue Spirit Porcupine",{
description="This guide will walk you through obtaining a Ghostly Blue Spirit Porcupine pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={47776},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Gumi
|tip It is level 20-35, depending on your level.
|tip You will need to attack Gumi until its health is down to 30% before attempting to tame.
|tip Interrupt Spirit Heal when it casts it.
Use your _Tame Beast_ ability on _Gumi_ |cast Tame Beast##1515 |goto Kun-Lai Summit/0 54.60,57.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Spirit Porcupines\\Ghostly Green Spirit Porcupine",{
description="This guide will walk you through obtaining a Ghostly Green Spirit Porcupine pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={47777},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Hutia
|tip It is level 10-35, depending on your level.
|tip You will need to attack Hutia until its health is down to 30% before attempting to tame.
|tip Interrupt Spirit Heal when it casts it.
Use your _Tame Beast_ ability on _Hutia_ |cast Tame Beast##1515 |goto The Jade Forest/0 48.20,27.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Spirit Beasts\\Spirit Porcupines\\Ghostly Red Spirit Porcupine",{
description="This guide will walk you through obtaining a Ghostly Red Spirit Porcupine pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={47778},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
map Valley of the Four Winds/0
path loop off
path	60.80,76.60	55.60,76.80	49.20,77.60
path	42.20,77.80
Search for Degu
|tip It is level 15-35, depending on your level.
|tip You will need to attack Degu until its health is down to 30% before attempting to tame.
|tip Interrupt Spirit Heal when it casts it.
Use your _Tame Beast_ ability on _Degu_ |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Fen Striders\\Black Fen Strider",{
description="This guide will walk you through obtaining a Black Fen Strider pet.",
model={18194},
condition_suggested=function() return level>=27 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for _Coilfang Striders_ around the area.
|tip They are level 27-30, depending on your level.
Use your Tame Beast ability on a _Coilfang Strider_. |cast Tame Beast##1515 |goto Serpentshrine Cavern 70.60,56.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Fen Striders\\Blue Fen Strider",{
description="This guide will walk you through obtaining a Blue Fen Strider pet.",
model={17781},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for _Fen Striders_ around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Fen Strider_. |cast Tame Beast##1515 |goto Zangarmarsh 63.40,53.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Fen Striders\\Green Fen Strider",{
description="This guide will walk you through obtaining a Green Fen Strider pet.",
model={18615},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for _Marsh Walkers_ around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Marsh Walker_. |cast Tame Beast##1515 |goto Zangarmarsh 28.00,29.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Fen Striders\\White Fen Strider",{
description="This guide will walk you through obtaining a White Fen Strider pet.",
model={20917},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
In order to tame this pet, you must be _at least_ level 30.
|tip The new Pandaria rare spawns require that you locate their tracks in a certain zone.
|tip Follow the path and look for the said tracks in order to tame the pet.
Reach level 30 |ding 30
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
map Dread Wastes
path follow loose;loop off;ants straight
path 65.40,41.20	64.20,16.60	49.80,22.40
path 32.60,23.40	30.20,52.00	44.20,53.60
path 51.80,67.60	59.50,68.80
Follow the provided path, searching for _Flooded Tracks_.
A new flooded track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Glimmer_. |cast Flare##1543
Use your Tame Beast ability on _Hexapos_. |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Plated Water Striders\\Blue Plated Water Strider",{
description="This guide will walk you through obtaining a Blue Plated Water Strider pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={42270},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for a Lake Strider
|tip They are level 30-35, depending on your level.
Use your _Tame Beast_ ability on a _Lake Strider_ |cast Tame Beast##1515 |goto Dread Wastes/0 65.80,57.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Plated Water Striders\\Green Plated Water Strider",{
description="This guide will walk you through obtaining a Green Plated Water Strider pet.",
model={40001},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for _Jungle Skitterers_ around the area.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on a _Jungle Skitterer_. |cast Tame Beast##1515 |goto Krasarang Wilds 62.00,23.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Plated Water Striders\\Orange Plated Water Strider",{
description="This guide will walk you through obtaining an Orange Plated Water Strider pet.",
model={42243},
condition_suggested=function() return level>=20 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for _Lightfooted Snapclaws_ around the area.
|tip They are level 20-35, depending on your level.
Use your Tame Beast ability on a _Lightfooted Snapclaw_. |cast Tame Beast##1515 |goto Kun-Lai Summit 59.00,26.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Plated Water Striders\\Red Plated Water Strider",{
description="This guide will walk you through obtaining a Red Plated Water Strider pet.",
model={42271},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
In order to tame this pet, you must be _at least_ level 10.
|tip The new Pandaria rare spawns require that you locate their tracks in a certain zone.
|tip Follow the path and look for the said tracks in order to tame the pet.
Reach level 10 |ding 10
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
map The Jade Forest
path follow loose;loop off;ants straight
path 40.00,66.60	46.40,72.20	52.80,69.20
path 50.60,55.20	51.40,53.80	52.60,52.00
path 54.20,48.80	54.40,42.60	57.20,41.60
Follow the provided path, searching for _Flooded Tracks_.
Once you find the Flooded Tracks, you will want to search for more, going the opposite direction that the track is facing.
A new worn track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Glimmer_. |cast Flare##1543
Use your Tame Beast ability on _Glimmer_. |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Plated Water Striders\\Yellow Plated Water Strider",{
description="This guide will walk you through obtaining a Yellow Plated Water Strider pet.",
model={42272},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for _Vale Striders_ around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Vale Strider_. |cast Tame Beast##1515 |goto Vale of Eternal Blossoms 22.60,19.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Blue-Black Water Strider",{
description="This guide will walk you through obtaining a Blue-Black Water Strider pet.",
model={40000},
condition_suggested=function() return level>=10 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for _Stream Striders_ around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on a _Stream Strider_. |cast Tame Beast##1515 |goto The Jade Forest 33.00,46.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Blue-Green Water Strider",{
description="This guide will walk you through obtaining a Blue-Green Water Strider pet.",
model={40001},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for _Fallstriders_ around the area.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on a _Fallstrider_. |cast Tame Beast##1515 |goto Krasarang Wilds 35.20,36.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Dark Yellow Water Strider",{
description="This guide will walk you through obtaining a Dark Yellow Water Strider pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={40002},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for a Summit Strider
|tip They are level 20-35, depending on your level.
Use your _Tame Beast_ ability on a _Summit Strider_ |cast Tame Beast##1515 |goto Kun-Lai Summit/0 73.20,49.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Light Yellow Water Strider",{
description="This guide will walk you through obtaining a Light Yellow Water Strider pet.",
model={39999},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for _River Striders_ around the area.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on a _River Strider_. |cast Tame Beast##1515 |goto Valley of the Four Winds 81.80,38.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Silkworms\\Blue Silkworm",{
description="This guide will walk you through obtaining a Blue Silkworm pet.",
model={43324},
condition_suggested=function() return level>=10 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for _Mottled Caterpillars_ around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on a _Mottled Caterpillar_. |cast Tame Beast##1515 |goto The Jade Forest 50.80,71.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Silkworms\\Green Silkworm",{
description="This guide will walk you through obtaining a Green Silkworm pet.",
model={45081},
condition_suggested=function() return level>=10 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for _Bookworms_ around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on a _Bookworms_. |cast Tame Beast##1515 |goto The Jade Forest 56.80,60.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Silkworms\\Purple Silkworm (Rare Spawn)",{
description="This guide will walk you through obtaining a Purple Silkworm pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={46461},
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for Heavily-Chewed Silkweeds around the area
|tip You will need to follow them in order to find Bombyx
Search for _Bombyx_
|tip It is level 15-35, depending on your level.
Check the following areas where it is commonly seen:
Area 1 |goto Krasarang Wilds/0 31,43
Area 2 |goto Krasarang Wilds/0 31,42
Area 3 |goto Krasarang Wilds/0 32,48
Use your _Tame Beast_ ability on _Bombyx_ |cast Tame Beast##1515 |goto Krasarang Wilds/0 31.44,46.12
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Silkworms\\Red Silkworm",{
description="This guide will walk you through obtaining a Red Silkworm pet.",
model={40520},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for _Mutated Silkworms_ around the area.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on a _Mutated Silkworms_. |cast Tame Beast##1515 |goto Valley of the Four Winds 66.00,56.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Silkworms\\Yellow Silkworm",{
description="This guide will walk you through obtaining a Yellow Silkworm pet.",
model={40225},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Switch to the Beast Mastery specialization |complete BeastMastery
|tip You can only tame this pet as a Beast Mastery Hunter.
step
Search for _Hungry Silkworms_ around the area.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on a _Hungry Silkworms_. |cast Tame Beast##1515 |goto Valley of the Four Winds 66.00,56.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Black and Blue Crested Basilisk",{
description="This guide will walk you through obtaining a Black and Blue Crested Basilisk pet.",
model={46055},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Ironeye the Invincible around the area.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Ironeye the Invincible_. |cast Tame Beast##1515 |goto Thousand Needles 61.20,67.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Black and Jade Crested Basilisk",{
description="This guide will walk you through obtaining a Black and Jade Crested Basilisk pet.",
model={45950},
condition_suggested=function() return level>=5 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for Greystone Basilisks around the area.
|tip They are level 5-30, depending on your level.
Use your Tame Beast ability on a _Greystone Basilisk_. |cast Tame Beast##1515 |goto Azshara 24.60,68.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Black and Orange Crested Basilisk",{
description="This guide will walk you through obtaining a Black and Orange Crested Basilisk pet.",
model={46058},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Chomper_ around the area.
|tip It is level 10-30, depending on your level.
Use your Tame Beast ability on _Chomper_. |cast Tame Beast##1515 |goto Gnomeregan 76.60,65.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Black and Purple Crested Basilisk",{
description="This guide will walk you through obtaining a Black and Purple Crested Basilisk pet.",
model={45445},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Hissperak_ around the area.
|tip It is level 10-30, depending on your level.
Use your Tame Beast ability on _Hissperak_. |cast Tame Beast##1515 |goto Desolace 43.60,61.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Blue Crested Basilisk",{
description="This guide will walk you through obtaining a Blue Crested Basilisk pet.",
model={8797},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Cold Eye Basilisks_ around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Cold Eye Basilisk_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn 44.60,10.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Blue and Jade Crested Basilisk",{
description="This guide will walk you through obtaining a Blue and Jade Crested Basilisk pet.",
model={45446},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Ironjaw Basilisks_ around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Ironjaw Basilisk_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn 67.20,24.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Blue and Orange Crested Basilisk",{
description="This guide will walk you through obtaining a Blue and Orange Crested Basilisk pet.",
model={45947},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Ironjaw Behemoths_ around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Ironjaw Behemoth_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn 66.20,26.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Blue and Purple Crested Basilisk",{
description="This guide will walk you through obtaining a Blue and Purple Crested Basilisk pet.",
model={45945},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Scale Belly_ around the area.
|tip It is level 10-30, depending on your level.
Use your Tame Beast ability on _Scale Belly_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn 67.60,25.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Burgandy and Blue Crested Basilisk",{
description="This guide will walk you through obtaining a Burgandy and Blue Crested Basilisk pet.",
model={7345},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Sul'lithuz Sandcrawlers_ around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Sul'lithuz Sandcrawler_. |cast Tame Beast##1515 |goto Zul'Farrak 64.60,26.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Burgandy and Orange Crested Basilisk",{
description="This guide will walk you through obtaining a Burgandy and Orange Crested Basilisk pet.",
model={44843},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Amberscale Basilisks_ around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Amberscale Basilisk_. |cast Tame Beast##1515 |goto Dread Wastes 65.20,43.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Burgandy and Purple Crested Basilisk",{
description="This guide will walk you through obtaining a Burgandy and Purple Crested Basilisk pet.",
model={46053},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Deatheye_ around the area.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Deatheye_. |cast Tame Beast##1515 |goto Blasted Lands 53.60,27.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Green and Blue Crested Basilisk",{
description="This guide will walk you through obtaining a Green and Blue Crested Basilisk pet.",
model={45449},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Thrashtail Basilisks_ around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Thrashtail Basilisk_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn 60.60,30.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Green and Jade Crested Basilisk",{
description="This guide will walk you through obtaining a Green and Jade Crested Basilisk pet.",
model={4486},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Jadespine Basilisks_ around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Jadespine Basilisk_. |cast Tame Beast##1515 |goto Uldaman 44.80,54.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Green and Orange Crested Basilisk",{
description="This guide will walk you through obtaining a Green and Orange Crested Basilisk pet.",
model={45450},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Stone Maw Basilisks_ around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Stone Maw Basilisk_. |cast Tame Beast##1515 |goto Northern Stranglethorn 42.60,16.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Green and Purple Crested Basilisk",{
description="This guide will walk you through obtaining a Green and Purple Crested Basilisk pet.",
model={45451},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Lurking Basilisks_ around the area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Lurking Basilisk_. |cast Tame Beast##1515 |goto Zul'Drak 44.80,62.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Orange-Purple and Blue Crested Basilisk",{
description="This guide will walk you through obtaining an Orange-Purple and Blue Crested Basilisk pet.",
model={1075},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Sul'lithuz Broodlings_ around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Sul'lithuz Broodling_. |cast Tame Beast##1515 |goto Zul'Farrak 64.60,26.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Orange-Purple and Jade Crested Basilisk",{
description="This guide will walk you through obtaining an Orange-Purple and Jade Crested Basilisk pet.",
model={46056},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Crystal Spine Basilisks_ around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Crystal Spine Basilisk_. |cast Tame Beast##1515 |goto Northern Stranglethorn 63.00,24.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Orange-Purple and Orange Crested Basilisk",{
description="This guide will walk you through obtaining an Orange-Purple and Orange Crested Basilisk pet.",
model={45462},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Ambereye Reavers_ around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Ambereye Reaver_. |cast Tame Beast##1515 |goto Maraudon 34.60,62.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Orange-Purple and Purple Crested Basilisk",{
description="This guide will walk you through obtaining an Orange-Purple and Purple Crested Basilisk pet.",
model={45505},
condition_suggested=function() return level>=25 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Veiled Basilisks_ around the area.
|tip They are level 25-35, depending on your level.
Use your Tame Beast ability on a _Veiled Basilisk_. |cast Tame Beast##1515 |goto Townlong Steppes 34.60,64.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Purple and Blue Crested Basilisk",{
description="This guide will walk you through obtaining a Purple and Blue Crested Basilisk pet.",
model={45464},
condition_suggested=function() return level>=25 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
map Townlong Steppes
path follow loose;loop off;ants straight
path 56.40,45.80	57.50,48.50	59.60,52.20
path 60.20,54.70	63.30,55.00	64.20,55.80
path 64.50,58.80	65.20,61.10	66.00,64.10
path 65.70,68.30	63.80,65.90	62.50,66.10
path 61.90,67.70	62.60,71.40	63.80,75.00
path 62.30,76.20	60.60,77.10	59.70,79.40
path 58.10,82.50	55.60,81.30	57.20,78.50
path 57.10,76.90	55.30,73.80	53.70,72.30
path 51.80,72.40	50.70,75.60	49.80,77.20
path 49.40,79.80	51.50,84.00	50.90,86.50
path 49.80,88.90	48.50,90.00	46.70,89.20
path 46.00,88.40	44.50,87.80	43.20,88.80
path 41.80,86.60	40.10,86.50	40.60,85.00
Follow the provided path, searching for _Worn Tracks_.
Once you find the Worn Tracks, you will want to search for more, going the opposite direction that the track is facing.
A new worn track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Glimmer_. |cast Flare##1543
Use your Tame Beast ability on _Rockhide the Immovable_. |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Red and Blue Crested Basilisk",{
description="This guide will walk you through obtaining a Red and Blue Crested Basilisk pet.",
model={2743},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Redstone Basilisks_ around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Veiled Basilisk_. |cast Tame Beast##1515 |goto Blasted Lands 53.00,28.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Red and Orange Crested Basilisk",{
description="This guide will walk you through obtaining a Red and Orange Crested Basilisk pet.",
model={46059},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Ambereye Basilisks_ around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Ambereye Basilisk_. |cast Tame Beast##1515 |goto Maraudon 35.20,63.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\White and Blue Crested Basilisk",{
description="This guide will walk you through obtaining a White and Blue Crested Basilisk pet.",
model={31939},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Glasshide Gazers_ around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Glasshide Gazer_. |cast Tame Beast##1515 |goto Tanaris 55.20,55.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\White and Jade Crested Basilisk",{
description="This guide will walk you through obtaining a White and Jade Crested Basilisk pet.",
model={45474},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Jadecrest Basilisks_ around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Jadecrest Basilisk_. |cast Tame Beast##1515 |goto Deepholm 56.60,85.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\White and Orange Crested Basilisk",{
description="This guide will walk you through obtaining a White and Orange Crested Basilisk pet.",
model={45455},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Gorgonite_ around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on _Gorgonite_. |cast Tame Beast##1515 |goto Deepholm 48.60,25.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\White and Purple Crested Basilisk",{
description="This guide will walk you through obtaining a White and Purple Crested Basilisk pet.",
model={45456},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Crystal Gorged Basilisks_ around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Crystal Gorged Basilisk_. |cast Tame Beast##1515 |goto Deepholm 70.60,31.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Yellow and Blue Crested Basilisk",{
description="This guide will walk you through obtaining a Yellow and Blue Crested Basilisk pet.",
model={7345},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Glasshide Basilisks_ around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Glasshide Basilisk_. |cast Tame Beast##1515 |goto Tanaris 49.00,32.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Yellow and Jade Crested Basilisk",{
description="This guide will walk you through obtaining a Yellow and Jade Crested Basilisk pet.",
model={45475},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Gritjaw Basilisks_ around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Gritjaw Basilisk_. |cast Tame Beast##1515 |goto Desolace 67.20,23.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Yellow and Orange Crested Basilisk",{
description="This guide will walk you through obtaining a Yellow and Orange Crested Basilisk pet.",
model={45458},
condition_suggested=function() return level>=10 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Stoneskin Basilisks_ around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on a _Stoneskin Basilisk_. |cast Tame Beast##1515 |goto The Jade Forest 61.80,76.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Yellow and Purple Crested Basilisk",{
description="This guide will walk you through obtaining a Yellow and Purple Crested Basilisk pet.",
model={45946},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Hellgazer_ around the area.
|tip It is level 15-30, depending on your level.
Use your Tame Beast ability on _Hellgazer_. |cast Tame Beast##1515 |goto Tanaris 40.80,41.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Three-Eyed Basilisks\\Green Three-Eyed Basilisk",{
description="This guide will walk you through obtaining a Green Three-Eyed Basilisk pet.",
model={16876},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Dampscale Basilisks_ around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Dampscale Basilisk_. |cast Tame Beast##1515 |goto Terokkar Forest 38.60,12.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Three-Eyed Basilisks\\Purple Three-Eyed Basilisk",{
description="This guide will walk you through obtaining a Purple Three-Eyed Basilisk pet.",
model={16878},
condition_suggested=function() return level>=15 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Ironspine Petrifiers_ around the area.
|tip They are level 15-30, depending on your level.
Use your Tame Beast ability on a _Ironspine Petrifier_. |cast Tame Beast##1515 |goto Terokkar Forest 46.20,35.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Three-Eyed Basilisks\\Red Three-Eyed Basilisk",{
description="This guide will walk you through obtaining a Red Three-Eyed Basilisk pet.",
model={16877},
condition_suggested=function() return level>=20 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Scalded Basilisks_ around the area.
|tip They are level 20-30, depending on your level.
Use your Tame Beast ability on a _Scalded Basilisk_. |cast Tame Beast##1515 |goto Blade's Edge Mountains 72.20,23.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Basilisks\\Three-Eyed Basilisks\\Yellow Three-Eyed Basilisk",{
description="This guide will walk you through obtaining a Yellow Three-Eyed Basilisk pet.",
model={16879},
condition_suggested=function() return level>=10 and level<=30 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Marshrock Threshalisks_ around the area.
|tip They are level 10-30, depending on your level.
Use your Tame Beast ability on a _Marshrock Threshalisk_. |cast Tame Beast##1515 |goto Zangarmarsh 83.60,28.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Cats\\Grand Lion\\Grand Lion (Rare Spawn)",{
description="This guide will walk you through obtaining a Grand Lion pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={37352},
},[[
step
Search for Sambas around the area.
|tip It is level 30-35, depending on your level.
You can also find Sambas at the spots below:
[49.60,23.00]
[45.80,29.40]
[42.60,38.60]
[38.20,53.20]
Use your Tame Beast ability on _Sambas_. |cast Tame Beast##1515 |goto Twilight Highlands,68.80,25.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\Black Grand Tiger",{
description="This guide will walk you through obtaining a Black Grand Tiger pet.",
model={40718},
condition_suggested=function() return level>=10 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Wild Stalkers_ around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on a _Wild Stalker_. |cast Tame Beast##1515 |goto The Jade Forest 63.00,76.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\Black-Nosed Orange Grand Tiger",{
description="This guide will walk you through obtaining a Black-Nosed Orange Grand Tiger pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={45023},
},[[
step
Search for _Zouchin Tiger_
|tip They are level 20-35, depending on your level.
Use your _Tame Beast_ ability on a _Zouchin Tiger_ |cast Tame Beast##1515 |goto Kun-Lai Summit/0 66.00,25.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\Brown Grand Tiger",{
description="This guide will walk you through obtaining a Brown Grand Tiger pet.",
model={40358},
condition_suggested=function() return level>=10 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Wary Forest Prowlers_ around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on a _Wary Forest Prowler_. |cast Tame Beast##1515 |goto The Jade Forest 31.60,10.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\Grey Grand Tiger",{
description="This guide will walk you through obtaining a Grey Grand Tiger pet.",
model={41445},
condition_suggested=function() return level>=20 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Summit Prowlers_ around the area.
|tip They are level 20-35, depending on your level.
Use your Tame Beast ability on a _Summit Prowler_. |cast Tame Beast##1515 |goto Kun-Lai Summit 64.20,63.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\Orange-Striped Green Grand Tiger",{
description="This guide will walk you through obtaining an Orange-Striped Green Grand Tiger pet.",
model={44662},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Gorge Stalkers_ around the area.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on a _Gorge Stalker_. |cast Tame Beast##1515 |goto Valley of the Four Winds 13.60,71.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\Pink-Nosed Orange Grand Tiger",{
description="This guide will walk you through obtaining a Pink-Nosed Orange Grand Tiger pet.",
model={39579},
condition_suggested=function() return level>=10 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Waxwood Hunters_ around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on a _Waxwood Hunter_. |cast Tame Beast##1515 |goto The Jade Forest 34.80,22.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\Red Grand Tiger",{
description="This guide will walk you through obtaining a Red Grand Tiger pet.",
model={40848},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Krasari Huntress_ around the area.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on a _Krasari Huntress_. |cast Tame Beast##1515 |goto Krasarang Wilds 65.00,29.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\White Grand Tiger",{
description="This guide will walk you through obtaining a White Grand Tiger pet.",
model={44486},
condition_suggested=function() return level>=10 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
map The Jade Forest
path follow loose;loop off;ants straight
path 37.80,64.20	36.80,59.80	35.60,57.00
path 37.00,54.60	37.60,51.80	37.70,47.80
path 38.00,42.00	40.60,40.80	42.60,36.80
path 44.60,39.00	46.80,38.20	47.20,29.40
path 49.60,30.20	53.00,31.20	55.00,34.60
path 54.40,37.60	56.20,38.20	57.40,37.40
path 56.20,32.60	54.80,28.20	53.20,24.00
Follow the provided path, searching for _Bloody Tracks_.
Once you find the Bloody Tracks, you will want to search for more, going the opposite direction that the track is facing.
A new bloody track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Savage_. |cast Flare##1543
Use your Tame Beast ability on _Savage_. |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Cats\\Mystic Cats\\Jade Mystic Cat",{
description="This guide will walk you through obtaining a Jade Mystic Cat pet.",
model={39179},
condition_suggested=function() return level>=10 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Jade Guardians_ around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on a _Jade Guardian_. |cast Tame Beast##1515 |goto The Jade Forest 39.40,43.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Cranes\\Black Crane",{
description="This guide will walk you through obtaining a Black Crane pet.",
model={40347},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Great Cranes_ around the area.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on a _Great Crane_. |cast Tame Beast##1515 |goto Krasarang Wilds 64.60,47.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Cranes\\Blue Crane",{
description="This guide will walk you through obtaining a Blue Crane pet.",
model={39726},
condition_suggested=function() return level>=10 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Lotus Cranes_ around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on a _Lotus Crane_. |cast Tame Beast##1515 |goto The Jade Forest 57.60,70.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Cranes\\Brown Crane",{
description="This guide will walk you through obtaining a Brown Crane pet.",
model={39727},
condition_suggested=function() return level>=10 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Sunrise Cranes_ around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on a _Sunrise Crane_. |cast Tame Beast##1515 |goto The Jade Forest 46.00,37.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Cranes\\Green Crane",{
description="This guide will walk you through obtaining a Green Crane pet.",
model={39728},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Carp Hunters_ around the area.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on a _Carp Hunter_. |cast Tame Beast##1515 |goto Krasarang Wilds 65.60,29.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Cranes\\Pink Crane",{
description="This guide will walk you through obtaining a Pink Crane pet.",
model={39729},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
label "start"
With the addition of Warlords of Draenor the _Rare Patrannache no longer has any special abilities that differ from a basic Pink Crane_
It is _much faster to tame_ a Brilliant Windfeather on Timeless Isle that _shares the same appearance and abilities_
In case this changes again in the future _please choose which spot_ you would rather hunt this pet
_Click here_ to farm the Elite Patrannache |confirm |next
_Click here_ to tame the Elite Brilliant Windfeather on Timeless Isle |confirm |next "isle"
step
The new Pandaria rare spawns require that you _locate their tracks_ in an certain zone
_Follow the path_ and look for the _Barely Visible Tracks_
map Valley of the Four Winds
path follow smart;loop off;ants straight
path	80.80,48.90	79.70,46.40	77.90,47.50
path	73.90,59.00	68.10,53.50	69.10,48.10
path	66.40,45.60	66.50,42.30	64.70,39.40
path	61.10,41.90	59.00,39.20	57.60,33.30
path	56.40,30.20	55.40,33.20	51.60,34.50
path	52.30,40.30	50.10,45.60	49.30,50.80
path	51.00,55.30	52.40,57.00	54.60,54.50
path	57.90,57.60	59.00,53.30	62.30,52.60
path	66.10,55.50	66.50,59.20	62.10,65.20
path	58.40,67.70	57.10,75.90	49.40,75.70
path	38.80,77.00	31.00,79.80	26.40,81.90
path	24.40,77.20	22.90,69.30	21.80,68.50
path	16.70,70.60	15.40,68.30	19.80,60.50
path	22.00,57.40	20.20,51.20	22.10,39.40
path	24.00,39.40	26.20,42.30	24.20,44.80
path	26.80,48.50	25.10,52.60	28.40,55.70
path	33.10,64.60	34.90,59.20	37.90,61.70
path	39.10,56.30	41.80,57.60	45.20,55.10
Once you find the Barely Visible Tracks you will want to _search for more and follow_ the way they are facing
A new barely visible track will appear about every 10 seconds
|tip Follow them until they stop appearing
_Use_ Flare and search for Patrannache |cast Flare##1543
_Use_ your Tame Beast ability on Patrannache |cast Tame Beast##1515
confirm |next "start"
step
label "isle"
_Search for_ Brilliant Windfeather around the area
|tip They are level 15-35, depending on your level.
_Use_ your Tame Beast ability on Brilliant Windfeather |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Cranes\\White Crane",{
description="This guide will walk you through obtaining a White Crane pet.",
model={39553},
condition_suggested=function() return level>=10 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Ink-Tipped Cranes_ around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on an _Ink-Tipped Crane_. |cast Tame Beast##1515 |goto The Jade Forest 56.00,47.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Direhorns\\Blue Direhorn",{
description="This guide will walk you through obtaining a Blue Direhorn pet.",
model={46565},
condition_suggested=function() return level>=35 and level<=40 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
In order to tame this pet, you will first have to acquire the _Ancient Tome of Dinomancy_. Direhorns _do not_ require you to be specialized in _Beast Mastery_.
confirm
step
kill Zandalari Dinomancer##69925+
collect 1 Ancient Tome of Dinomancy##94232 |goto Isle of Giants 69.50,71.80
Use the _Ancient Tome of Dinomancy_ to learn how to tame Direhorns |learn Ancient Zandalari Knowledge##138430
step
Use your Tame Beast ability on a _Primal Direhorn Hatchling_. |cast Tame Beast##1515 |goto Isle of Giants 48.70,72.50
|tip They are level 35.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Direhorns\\Brown Direhorn",{
description="This guide will walk you through obtaining a Brown Direhorn pet.",
model={47236},
condition_suggested=function() return level>=35 and level<=40 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
In order to tame this pet, you will first have to acquire the _Ancient Tome of Dinomancy_. Direhorns _do not_ require you to be specialized in _Beast Mastery_.
confirm
step
kill Zandalari Dinomancer##69925+
collect 1 Ancient Tome of Dinomancy##94232 |goto Isle of Giants 69.50,71.80
Use the _Ancient Tome of Dinomancy_ to learn how to tame Direhorns |learn Ancient Zandalari Knowledge##138430
step
Use your Tame Beast ability on a _Primal Direhorn Hatchling_. |cast Tame Beast##1515 |goto Isle of Giants 48.70,72.50
|tip They are level 35.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Direhorns\\Green Direhorn",{
description="This guide will walk you through obtaining a Green Direhorn pet.",
model={47233},
condition_suggested=function() return level>=35 and level<=40 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
In order to tame this pet, you will first have to acquire the _Ancient Tome of Dinomancy_. Direhorns _do not_ require you to be specialized in _Beast Mastery_.
confirm
step
kill Zandalari Dinomancer##69925+
collect 1 Ancient Tome of Dinomancy##94232 |goto Isle of Giants 69.50,71.80
Use the _Ancient Tome of Dinomancy_ to learn how to tame Direhorns |learn Ancient Zandalari Knowledge##138430
step
Use your Tame Beast ability on a _Primal Direhorn Hatchling_. |cast Tame Beast##1515 |goto Isle of Giants 48.70,72.50
|tip They are level 35.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Direhorns\\Pale Direhorn",{
description="This guide will walk you through obtaining a Pale Direhorn pet.",
model={47235},
condition_suggested=function() return level>=35 and level<=40 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
In order to tame this pet, you will first have to acquire the _Ancient Tome of Dinomancy_. Direhorns _do not_ require you to be specialized in _Beast Mastery_.
confirm
step
kill Zandalari Dinomancer##69925+
collect 1 Ancient Tome of Dinomancy##94232 |goto Isle of Giants 69.50,71.80
Use the _Ancient Tome of Dinomancy_ to learn how to tame Direhorns |learn Ancient Zandalari Knowledge##138430
step
Use your Tame Beast ability on a _Primal Direhorn Hatchling_. |cast Tame Beast##1515 |goto Isle of Giants 48.70,72.50
|tip They are level 35.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Direhorns\\Red Direhorn",{
description="This guide will walk you through obtaining a Red Direhorn pet.",
model={47234},
condition_suggested=function() return level>=35 and level<=40 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
In order to tame this pet, you will first have to acquire the _Ancient Tome of Dinomancy_. Direhorns _do not_ require you to be specialized in _Beast Mastery_.
confirm
step
kill Zandalari Dinomancer##69925+
collect 1 Ancient Tome of Dinomancy##94232 |goto Isle of Giants 69.50,71.80
Use the _Ancient Tome of Dinomancy_ to learn how to tame Direhorns |learn Ancient Zandalari Knowledge##138430
step
Use your Tame Beast ability on a _Primal Direhorn Hatchling_. |cast Tame Beast##1515 |goto Isle of Giants 65.00,61.20
|tip They are level 35.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Goats\\Black Goat",{
description="This guide will walk you through obtaining a Black Goat pet.",
model={41073},
condition_suggested=function() return level>=20 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Battle Goats_ around the area.
|tip They are level 20-35, depending on your level.
Use your Tame Beast ability on a _Battle Goat_. |cast Tame Beast##1515 |goto Kun-Lai Summit 51.40,66.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Goats\\Black Spotted Goat",{
description="This guide will walk you through obtaining a Black Spotted Goat pet.",
model={45149},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Black Bengal Goats_ around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Black Bengal Goat_. |cast Tame Beast##1515 |goto Vale of Eternal Blossoms 58.00,58.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Goats\\Brown Goat",{
description="This guide will walk you through obtaining a Brown Goat pet.",
model={40020},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Wild Staghorns_ around the area.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on a _Wild Staghorn_. |cast Tame Beast##1515 |goto Valley of the Four Winds 27.80,55.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Goats\\Brown Spotted Goat",{
description="This guide will walk you through obtaining a Brown Spotted Goat pet.",
model={45138},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Stout Staghorns_ around the area.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on a _Stout Staghorn_. |cast Tame Beast##1515 |goto Valley of the Four Winds 28.00,36.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Goats\\Grey Goat",{
description="This guide will walk you through obtaining a Grey Goat pet.",
model={40022},
condition_suggested=function() return level>=20 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
map Kun-Lai Summit
path follow loose;loop off;ants straight
path 35.20,53.80	35.40,51.60	37.20,50.00
path 39.40,51.60	39.80,47.80	41.00,45.70
path 42.60,45.20	44.80,45.20	45.80,46.40
path 46.80,48.40	45.20,47.60	42.80,49.40
path 42.40,51.20	43.60,52.00	43.40,52.40
path 50.60,53.20	51.40,55.80	53.40,55.20
path 53.80,58.20	50.80,59.00	51.60,60.20
Follow the provided path, searching for _Heavy Tracks_.
Once you find the Heavy Tracks, you will want to search for more, going the opposite direction that the track is facing.
A new heavy track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Stompy_. |cast Flare##1543
Use your Tame Beast ability on _Stompy_. |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Goats\\White Goat",{
description="This guide will walk you through obtaining a White Goat pet.",
model={40024},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Wild Mountain Goats_ around the area.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on a _Wild Mountain Goat_. |cast Tame Beast##1515 |goto The Veiled Stair 56.60,62.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Porcupines\\Blue Porcupine",{
description="This guide will walk you through obtaining a Blue Porcupine pet.",
model={41003},
condition_suggested=function() return level>=20 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
map Kun-Lai Summit
path follow loose;loop off;ants straight
path	75.40,71.20	75.00,68.00	74.50,68.00
path	72.80,71.20	71.60,72.80	67.80,75.80
path	67.00,76.00	66.20,77.60	57.20,86.80
path	49.40,85.20	45.20,81.60	45.00,78.00
path	59.40,62.80	60.80,62.20	62.80,63.80
path	67.80,62.40	69.20,59.60	70.60,59.60
path	73.80,55.60
Follow the provided path, searching for _Puzzling Tracks_.
Once you find the Puzzling Tracks, you will want to search for more, going the opposite direction that the track is facing.
A new puzzling track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Stompy_. |cast Flare##1543
Use your Tame Beast ability on _Bristlespine_. |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Porcupines\\Brown Porcupine",{
description="This guide will walk you through obtaining a Brown Porcupine pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={43647},
},[[
step
Search for a _Lowland Porcupine_
|tip They are level 20-35, depending on your level.
Use your _Tame Beast_ ability on a _Lowland Porcupine_ |cast Tame Beast##1515 |goto Kun-Lai Summit/0 66.20,22.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Porcupines\\Gray Porcupine",{
description="This guide will walk you through obtaining a Gray Porcupine pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={41003},
},[[
step
Search for a _Smoky Porcupine_
|tip They are level 10-35, depending on your level.
|tip They are all around the area.
Use your _Tame Beast_ ability on a _Smoky Porcupine_ |cast Tame Beast##1515 |goto The Jade Forest/0 47.00,37.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Porcupines\\Red Porcupine",{
description="This guide will walk you through obtaining a Red Porcupine pet.",
model={44620},
condition_suggested=function() return level>=20 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Razorquill Porcupines_ around the area.
|tip They are level 20-35, depending on your level.
Use your Tame Beast ability on a _Razorquill Porcupine_. |cast Tame Beast##1515 |goto Kun-Lai Summit 61.20,83.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Porcupines\\White Porcupine",{
description="This guide will walk you through obtaining a White Porcupine pet.",
model={43647},
condition_suggested=function() return level>=20 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Lowland Porcupines_ around the area.
|tip They are level 20-35, depending on your level.
Use your Tame Beast ability on a _Lowland Porcupine_. |cast Tame Beast##1515 |goto Kun-Lai Summit 65.80,26.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Porcupines\\Yellow Porcupine",{
description="This guide will walk you through obtaining a Yellow Porcupine pet.",
model={45410},
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Docile Porcupines_ around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Docile Porcupine_. |cast Tame Beast##1515 |goto Vale of Eternal Blossoms 47.00,55.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Raptors\\Saddled Raptors\\Orange Saddled Raptor",{
description="This guide will walk you through obtaining an Orange Saddled Raptor pet.",
model={14342},
condition_suggested=function() return level>=20 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Gurubashi Riding Raptors_ around the area.
|tip They are level 20-35, depending on your level.
Use your Tame Beast ability on a _Gurubashi Riding Raptor_. |cast Tame Beast##1515 |goto Kun-Lai Summit 77.00,12.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Raptors\\Armored Raptors\\Orange Armored Raptor",{
description="This guide will walk you through obtaining an Orange Armored Raptor pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={14342},
},[[
step
Search for a _Gurubashi Riding Raptor_
|tip Kill the Amani Outrider before attempting to tame the raptor.
|tip They are level 20-35, depending on your level.
Use your _Tame Beast_ ability on a _Gurubashi Riding Raptor_ |cast Tame Beast##1515 |goto Kun-Lai Summit/0 75.00,12.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Raptors\\Armored Raptors\\Red Armored Raptor",{
description="This guide will walk you through obtaining a Red Armored Raptor pet.",
model={14341},
condition_suggested=function() return level>=20 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Gurubashi Raptors_ around the area.
|tip They are level 20-35, depending on your level.
Use your Tame Beast ability on a _Gurubashi Raptor_. |cast Tame Beast##1515 |goto Kun-Lai Summit 65.00,31.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Scorpids\\Crystal Scorpions\\Amber Crystal Scorpion",{
description="This guide will walk you through obtaining an Amber Crystal Scorpion pet.",
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={43351},
},[[
step
Search for _Kor'thik Scorpids_ around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on a _Kor'thik Scorpid_. |cast Tame Beast##1515 |goto Dread Wastes 46.60,14.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Scorpids\\Rugged Scorpions\\Black Rugged Scorpion",{
description="This guide will walk you through obtaining a Black Rugged Scorpion pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={44568},
},[[
step
Search for an _Amber-Fed Hatchling_
|tip They are level 30-35, depending on your level.
Use your _Tame Beast_ ability on an _Amber-Fed Hatchling_ |cast Tame Beast##1515 |goto Dread Wastes/0 24.60,76.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Scorpids\\Rugged Scorpions\\Red Rugged Scorpion",{
description="This guide will walk you through obtaining a Red Rugged Scorpion pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={43935},
},[[
step
Search for a _Horrorscale Scorpid_
|tip They are level 30-35, depending on your level.
Use your _Tame Beast_ ability on a _Horrorscale Scorpid_ |cast Tame Beast##1515 |goto Dread Wastes/0 59.80,50.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Wolves\\Saber Worgs\\Ghostly White Saber Worg",{
description="This guide will walk you through obtaining a Ghostly White Saber Worg pet.",
condition_suggested=function() return level>=20 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={41238},
},[[
step
Search for _Spirit Worgs_ around the area.
|tip They are level 20-35, depending on your level.
Use your Tame Beast ability on a _Spirit Worg_. |cast Tame Beast##1515 |goto Kun-Lai Summit 48.80,76.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Ground Pets\\Wolves\\Saber Worgs\\Stormy Dark Grey Saber Worg",{
description="This guide will walk you through obtaining a Stormy Dark Grey Saber Worg pet.",
condition_suggested=function() return level>=30 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={44452},
},[[
step
Search for _Thundermaw_ around the area.
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on _Thundermaw_. |cast Tame Beast##1515 |goto Vale of Eternal Blossoms 29.40,67.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Birds of Prey\\Parrots\\Brown Parrot",{
description="This guide will walk you through obtaining a Brown Parrot pet.",
model={45321},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Dusky Lory_ around the area.
|tip It is level 15-35, depending on your level.
Use your Tame Beast ability on a _Dusky Lory_. |cast Tame Beast##1515 |goto Krasarang Wilds 48.20,66.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Birds of Prey\\Raven",{
description="This guide will walk you through obtaining a Raven pet.",
model={44480},
condition_suggested=function() return level>=20 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Upland Ravens_ around the area.
|tip They are level 20-35, depending on your level.
Use your Tame Beast ability on an _Upland Raven_. |cast Tame Beast##1515 |goto Kun-Lai Summit 54.40,46.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Moths\\Blue-Magenta and Yellow Moth",{
description="This guide will walk you through obtaining a Blue-Magenta and Yellow Moth pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={44605},
},[[
step
Search for a _Fluttering Swallowtail_
|tip They are level 15-35, depending on your level.
Use your _Tame Beast_ ability on a _Fluttering Swallowtail_ |cast Tame Beast##1515 |goto Krasarang Wilds/0 23.80,40.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Moths\\Green and Yellow Moth",{
description="This guide will walk you through obtaining a Green and Yellow Moth pet.",
model={44605},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Fluttering Swallowtails_ around the area.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on a _Fluttering Swallowtails_. |cast Tame Beast##1515 |goto Krasarang Wilds 36.20,33.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Flying Pets\\Wasps\\Boss Wasps\\Purple Boss Wasp",{
description="This guide will walk you through obtaining a Purple Boss Wasp pet.",
model={37906},
condition_suggested=function() return level>=32 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for the _Florawing Hive Queen_ around the area.
|tip They are level 32-35, depending on your level.
Use your Tame Beast ability on _Florawing Hive Queen_. |cast Tame Beast##1515 |goto Zul'Gurub 33.20,37.80
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Blue-Marked Blue Spiked Crab",{
description="This guide will walk you through obtaining a Blue-Marked Blue Spiked Crab pet.",
model={45062},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Snapclaw_ around the area.
|tip It is level 15-35, depending on your level.
Use your Tame Beast ability on _Snapclaw_. |cast Tame Beast##1515 |goto Krasarang Wilds 73.60,38.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Blue-Marked Dark Blue Spiked Crab",{
description="This guide will walk you through obtaining a Blue-Marked Dark Blue Spiked Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={32640},
},[[
step
You will need to unlock the Isle of Thunder in order to attain this pet
Click here to load the "Sunreaver Onslaught Dailies" guide |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\Sunreaver Onslaught Dailies"
Unlock the Isle of Thunder |complete completedq(32680)
step
Search for a _Luminescent Crawler_
|tip They are level 32-35, depending on your level.
Use your _Tame Beast_ ability on a _Luminescent Crawler_ |cast Tame Beast##1515 |goto Isle of Thunder/0 38.60,83.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Blue-Marked Deep Red Spiked Crab",{
description="This guide will walk you through obtaining a Red-Blue Deep Sea Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={51146},
},[[
step
Search for Monstrous Spineclaw around the area
|tip They are level 30-35, depending on your level.
Monstrous Spineclaw also spawns at the locations below:
[22.00,47.00]
[21.80,65.00]
[26.00,73.40]
[39.00,85.20]
[67.80,77.00]
[70.80,64.20]
Use your Tame Beast ability on _Monstrous Spineclaw_. |cast Tame Beast##1515 |goto Timeless Isle 23.00,32.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Blue-Marked Orange Spiked Crab",{
description="This guide will walk you through obtaining a Blue-Marked Orange Spiked Crab pet.",
model={42974},
condition_suggested=function() return level>=20 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Spineclaw Scuttlers_ around the area.
|tip They are level 20-35, depending on your level.
Use your Tame Beast ability on a _Spineclaw Scuttler_. |cast Tame Beast##1515 |goto Kun-Lai Summit 56.40,21.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Blue-Marked Red Spiked Crab",{
description="This guide will walk you through obtaining a Blue-Marked Red Spiked Crab pet.",
model={45058},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Elder Viseclaws_ around the area.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on an _Elder Viseclaw_. |cast Tame Beast##1515 |goto Krasarang Wilds 57.00,47.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Greenish-Blue Spiked Crab",{
description="This guide will walk you through obtaining a Greenish-Blue Deep Sea Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={50962},
},[[
step
Search for an Ancient Spineclaw around the area
|tip They are level 30-35, depending on your level.
Use your Tame Beast ability on an _Ancient Spineclaw_ |cast Tame Beast##1515 |goto Timeless Isle 23.40,28.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Metallic Blue Spiked Crab",{
description="This guide will walk you through obtaining a Metallic Blue Spiked Crab pet.",
model={45167},
condition_suggested=function() return level>=20 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _King Spineclaw_ around the area.
|tip They are level 20-35, depending on your level.
Use your Tame Beast ability on _King Spineclaw_. |cast Tame Beast##1515 |goto Kun-Lai Summit 55.20,21.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Purple-Marked Dark Purple Spiked Crab",{
description="This guide will walk you through obtaining a Purple-Marked Dark Purple Spiked Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={32640},
},[[
step
You will need to unlock the Isle of Thunder in order to attain this pet
Click here to load the "Sunreaver Onslaught Dailies" guide |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\Sunreaver Onslaught Dailies"
Unlock the Isle of Thunder |complete completedq(32680)
step
Search for a _Luminescent Crawler_
|tip They are level 32-35, depending on your level.
Use your _Tame Beast_ ability on a _Luminescent Crawler_ |cast Tame Beast##1515 |goto Isle of Thunder/0 38.60,83.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Purple-Marked Green Spiked Crab",{
description="This guide will walk you through obtaining a Purple-Marked Green Spiked Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={45047},
},[[
step
Search for a _Mosstide Crab_
|tip They are level 10-35, depending on your level.
|tip Swim to the bottom of to water to find these.
Use your _Tame Beast_ ability on a _Mosstide Crab_ |cast Tame Beast##1515 |goto The Jade Forest/0 40.22,1.78
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Purple-Marked Orange Spiked Crab",{
description="This guide will walk you through obtaining a Purple-Marked Orange Spiked Crab pet.",
model={46050},
condition_suggested=function() return level>=10 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Amberglass Crabs_ around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on an _Amberglass Crab_. |cast Tame Beast##1515 |goto The Jade Forest 59.60,80.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Purple-Marked Red Spiked Crab",{
description="This guide will walk you through obtaining a Purple-Marked Red Spiked Crab pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={36282},
},[[
step
Search for a _Viseclaw Fry_
|tip They are level 15-35, depending on your level.
|tip They are accompanied by Viseclaw Scuttlers.
Use your _Tame Beast_ ability on a _Viseclaw Fry_ |cast Tame Beast##1515 |goto Krasarang Wilds/0 63.20,38.62
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Turtles\\Dragon Turtles\\Black Dragon Turtle",{
description="This guide will walk you through obtaining a Black Dragon Turtle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={43911},
},[[
step
Search for a _Brineshell Snapper_
|tip They are level 30-35, depending on your level.
Use your _Tame Beast_ ability on a _Brineshell Snapper_ |cast Tame Beast##1515 |goto Dread Wastes/0 39.00,61.60
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Turtles\\Dragon Turtles\\Blue Dragon Turtle",{
description="This guide will walk you through obtaining a Blue Dragon Turtle pet.",
model={47800},
condition_suggested=function() return level>=32 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Slateshell Wanderers_ around the area.
|tip They are level 32-35, depending on your level.
Use your Tame Beast ability on a _Slateshell Wanderer_. |cast Tame Beast##1515 |goto Isle of Thunder 54.20,57.10
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Turtles\\Dragon Turtles\\Blue Glowing Dragon Turtle",{
description="This guide will walk you through obtaining a Blue Glowing Dragon Turtle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={47800},
},[[
step
You will need to unlock the Isle of Thunder in order to attain this pet
Click here to load the "Sunreaver Onslaught Dailies" guide |confirm |next "Daily Guides\\Mists of Pandaria Dailies\\Sunreaver Onslaught Dailies"
Unlock the Isle of Thunder |complete completedq(32680)
step
Search for a _Slateshell Wanderer_
|tip They are level 32-35, depending on your level.
Use your _Tame Beast_ ability on a _Slateshell Wanderer_ |cast Tame Beast##1515 |goto Isle of Thunder/0 53.60,53.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Turtles\\Dragon Turtles\\Brown Dragon Turtle",{
description="This guide will walk you through obtaining a Brown Dragon Turtle pet.",
model={44778},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Seadragons_ around the area.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on a _Seadragon_. |cast Tame Beast##1515 |goto Krasarang Wilds 72.60,32.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Turtles\\Dragon Turtles\\Camo Dragon Turtle",{
description="This guide will walk you through obtaining a Camo Dragon Turtle pet.",
model={42233},
condition_suggested=function() return level>=10 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Pearly Tortoises_ around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on a _Pearly Tortoise_. |cast Tame Beast##1515 |goto The Jade Forest 59.80,81.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Turtles\\Dragon Turtles\\Gold Dragon Turtle",{
description="This guide will walk you through obtaining a Gold Dragon Turtle pet.",
model={42658},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Wyrmhorn Turtles_ around the area.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on a _Wyrmhorn Turtle_. |cast Tame Beast##1515 |goto Valley of the Four Winds 67.80,31.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Turtles\\Dragon Turtles\\Green Dragon Turtle",{
description="This guide will walk you through obtaining a Green Dragon Turtle pet.",
model={42234},
condition_suggested=function() return level>=10 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Jade Snapping Turtles_ around the area.
|tip They are level 10-35, depending on your level.
Use your Tame Beast ability on a _Jade Snapping Turtle_. |cast Tame Beast##1515 |goto The Jade Forest 33.20,10.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Turtles\\Dragon Turtles\\Red Dragon Turtle",{
description="This guide will walk you through obtaining a Red Dragon Turtle pet.",
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
model={43411},
},[[
step
Search for a _Chillwater Turtle_
|tip They are level 30-35, depending on your level.
Use your _Tame Beast_ ability on a _Chillwater Turtle_ |cast Tame Beast##1515 |goto Dread Wastes/0 60.20,50.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Turtles\\Spiked Dragon Turtles\\Black Spiked Dragon Turtle",{
description="This guide will walk you through obtaining a Black Spiked Dragon Turtle pet.",
model={45487},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
map Krasarang Wilds
path follow loose;loop off;ants straight
path 70.00,42.20	68.20,42.40	65.60,41.80
path 64.20,43.60	63.80,42.40	64.20,39.40
path 61.40,39.20	60.00,40.80	59.60,44.20
path 60.00,46.60	59.20,49.00	59.00,49.80
path 57.00,48.20	56.80,44.00	55.20,43.20
path 52.20,45.60	53.80,49.20	53.60,51.80
path 52.60,54.20	50.00,54.00	48.00,53.40
path 47.20,58.00	46.40,61.60	46.20,64.00
path 48.60,66.80	50.60,70.00	49.40,71.20
path 39.80,74.00	38.80,72.00	39.20,69.20
path 35.80,61.00	33.80,60.00	31.40,60.80
path 26.60,57.20	25.80,59.80	23.80,61.60
path 19.80,53.00	16.20,56.60	16.00,53.00
path 8.60,40.80
Follow the provided path, searching for _Muddy Tracks_.
Once you find the Muddy Tracks, you will want to search for more, going the opposite direction that the track is facing.
A new muddy track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Bloodtooth_. |cast Flare##1543
Use your Tame Beast ability on _Bloodtooth_. |cast Tame Beast##1515
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Turtles\\Spiked Dragon Turtles\\Blue Spiked Dragon Turtle",{
description="This guide will walk you through obtaining a Blue Spiked Dragon Turtle pet.",
model={47804},
condition_suggested=function() return level>=32 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Slateshell Ancients_ around the area.
|tip They are level 32-35, depending on your level.
Use your Tame Beast ability on a _Slateshell Ancient_. |cast Tame Beast##1515 |goto Isle of Thunder 54.20,57.10
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Turtles\\Spiked Dragon Turtles\\Brown Spiked Dragon Turtle",{
description="This guide will walk you through obtaining a Brown Spiked Dragon Turtle pet.",
model={46045},
condition_suggested=function() return level>=20 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Elder Shoreshell Snappers_ around the area.
|tip They are level 20-35, depending on your level.
Use your Tame Beast ability on a _Elder Shoreshell Snapper_. |cast Tame Beast##1515 |goto Kun-Lai Summit 75.10,33.50
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Turtles\\Spiked Dragon Turtles\\Gold Spiked Dragon Turtle",{
description="This guide will walk you through obtaining a Gold Spiked Dragon Turtle pet.",
model={44784},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Elder Seadragons_ around the area.
|tip They are level 15-35, depending on your level.
Use your Tame Beast ability on an _Elder Seadragon_. |cast Tame Beast##1515 |goto Krasarang Wilds 71.60,33.00
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Hunter Pets\\Water Pets\\Turtles\\Spiked Dragon Turtles\\Green Spiked Dragon Turtle",{
description="This guide will walk you through obtaining a Green Spiked Dragon Turtle pet.",
model={46046},
condition_suggested=function() return level>=15 and level<=35 end,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a hunter to tame pets.",
},[[
step
Search for _Krosh_ around the area.
|tip It is level 15-35, depending on your level.
Use your Tame Beast ability on _Krosh_. |cast Tame Beast##1515 |goto Valley of the Four Winds 65.20,26.00
]])
