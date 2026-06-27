-- QuestCore bundled guide (mists)
if not QuestCore then return end
QuestCore:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Air",{
expansion="mists",
description="Primal Air can be gathered from Shadowmoon Valley.",
mopready=true,
meta={goldtype="route",levelreq=67},
items={{22572},{22451}},
maps={"Shadowmoon Valley"},
},[[
step
label "Start"
map Shadowmoon Valley/0
path follow smart; loop off; ants curved; dist 30
path	55.53,72.49	59.06,69.81	61.40,66.56	62.46,62.66	61.26,59.46
path	57.67,56.49	59.53,53.73	63.10,55.41	65.02,57.56	65.87,62.28
path	63.43,60.68
kill Enraged Air Spirit##21060+
|tip Follow the path, killing any that you see.
collect Mote of Air##22572 |n
|tip Combine 10 Motes of Air into 1 Primal Air.
'|goto Shadowmoon Valley/0 63.43,60.68 < 30 |c |noway
step
map Shadowmoon Valley/0
path follow smart; loop off; ants curved; dist 30
path	62.59,62.13	61.28,67.03	59.70,69.75	55.35,71.72
kill Enraged Air Spirit##21060+
|tip Follow the path, killing any that you see.
collect Mote of Air##22572 |n
|tip Combine 10 Motes of Air into 1 Primal Air.
'|goto Shadowmoon Valley/0 55.35,71.72 < 30 |c |noway |next "Start"
]])
QuestCore:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Earth",{
expansion="mists",
description="Primal Earth can be gathered from Nagrand.",
mopready=true,
meta={goldtype="route",levelreq=64},
items={{22573},{22452}},
maps={"Nagrand"},
},[[
step
label "Start"
map Nagrand/0
path follow smart; loop off; ants curved; dist 30
path	46.19,77.20	41.98,78.72	40.31,82.83	32.13,80.25	29.34,79.24
path	28.40,73.85	28.94,66.76	28.17,63.58
kill Shattered Rumbler##17157+
|tip Follow the path, killing any that you see.
collect Mote of Earth##22573 |n
|tip Combine 10 Motes of Earth into 1 Primal Earth.
'|goto Nagrand/0 28.17,63.58 < 30 |c |noway
step
map Nagrand/0
path follow smart; loop off; ants curved; dist 30
path	28.17,63.58	28.94,66.76	28.40,73.85	29.34,79.24	32.13,80.25
path	40.31,82.83	41.98,78.72	46.19,77.20
kill Shattered Rumbler##17157+
|tip Follow the path, killing any that you see.
collect Mote of Earth##22573 |n
|tip Combine 10 Motes of Earth into 1 Primal Earth.
'|goto Nagrand/0 46.19,77.20 < 30 |c |noway |next "Start"
]])
QuestCore:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Fire",{
expansion="mists",
description="Primal Fire can be gathered from Hellfire Peninsula.",
mopready=true,
meta={goldtype="route",levelreq=67},
items={{22574},{21884}},
maps={"Shadowmoon Valley"},
},[[
step
label "Start"
map Shadowmoon Valley/0
path	loop off; ants curved; dist 25
path	44.47,46.46	46.81,48.88	48.83,51.69	51.70,52.00
kill Enraged Fire Spirit##21061+
collect Mote of Fire##22574 |n
|tip Combine 10 Motes of Fire into 1 Primal Fire.
'|goto Shadowmoon Valley/0 51.70,52.00 |noway |c
step
kill Enraged Fire Spirit##21061
map Shadowmoon Valley/0
path	loop off; ants curved; dist 25
path	48.34,46.75	47.93,42.37	49.03,37.97	51.34,36.12	49.04,34.47
kill Enraged Fire Spirit##21061+
collect Mote of Fire##22574 |n
|tip Combine 10 Motes of Fire into 1 Primal Fire.
'|goto Shadowmoon Valley/0 49.04,34.47 |noway |c |next "Start"
]])
QuestCore:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Life",{
expansion="mists",
description="Primal Life can be gathered from Zangarmarsh in Outland.",
mopready=true,
meta={goldtype="route",levelreq=60},
items={{22575},{21886}},
maps={"Zangarmarsh"},
},[[
step
map Zangarmarsh/0
path	follow smart; ants curved; dist 20
path	82.27,44.23	79.64,39.75	79.46,36.87	81.08,33.72	83.18,34.79
path	84.92,37.43	85.23,40.76
Kill Withered enemies around this area
|tip Use Herbalism on their corpses.
|tip You can also farm these inside The Underbog dungeon.
collect Mote of Life##22575 |n
|tip Combine 10 Motes of Life into one Primal Life.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Mana",{
expansion="mists",
description="Primal Mana can be gathered from the Netherstorm in Outland.",
mopready=true,
meta={goldtype="route",levelreq=67},
items={{22576},{22457}},
maps={"Netherstorm"},
},[[
step
Kill enemies around this area
map Netherstorm/0
path follow smart; loop on; ants curved
path	55.84,86.20	55.35,87.01	54.65,87.87	54.99,88.71	54.71,89.47
path	55.95,89.43	57.09,87.92	57.19,86.41
collect Mote of Mana##22576 |n
|tip Combine 10 Motes of Mana into one Primal Mana.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Shadow",{
expansion="mists",
description="Primal Shadow can be gathered from Hellfire Peninsula.",
mopready=true,
meta={goldtype="route",levelreq=58},
items={{22577},{22456}},
maps={"Hellfire Peninsula"},
},[[
step
label "Start"
map Hellfire Peninsula/0
path follow smart; loop off; ants curved; dist 30
path	76.12,63.56	77.61,68.71	79.80,79.02
Kill enemies around this area
|tip Follow the path, killing any Collapsing Voidwalkers and Vacillating Voidcallers that you see.
collect Mote of Shadow##22577 |n
|tip Combine 10 Motes of Shadow into 1 Primal Shadow.
'|goto Hellfire Peninsula/0 79.80,79.02 < 30 |c |noway
step
map Hellfire Peninsula/0
path follow smart; loop off; ants curved; dist 30
path	79.80,79.02	77.61,68.71	76.12,63.56
Kill enemies around this area
|tip Follow the path, killing any Collapsing Voidwalkers and Vacillating Voidcallers that you see.
collect Mote of Shadow##22577 |n
|tip Combine 10 Motes of Shadow into 1 Primal Shadow.
'|goto Hellfire Peninsula/0 76.12,63.56 < 30 |c |noway |next "Start"
]])
QuestCore:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Water",{
expansion="mists",
description="Primal Water can be gathered from Nagrand.",
mopready=true,
meta={goldtype="route",levelreq=64},
items={{99999999999},{21885}},
maps={"Nagrand"},
},[[
step
map Nagrand/0
path	loop on; dist 25
path	64.09,18.97	62.65,16.17	60.84,15.07	59.37,14.55
kill Crashing Wave-Spirit##22309+
collect Mote of Water##22578 |n
|tip Combine 10 Motes of Water into 1 Primal Water.
|tip If you have fishing, you can also gather them from the "Pure Water" pools that spawn around here.
'|confirm
]])
QuestCore:RegisterGuide("Professions Guides\\General Farming Guides\\Volatile Life",{
expansion="mists",
description="Volatile Life can be gathered from Herbs.",
mopready=true,
meta={goldtype="route",levelreq=80},
items={99999999999},
maps={"Mount Hyjal"},
},[[
step
label "Volatile_Life_Main_Menu"
Volatile Life is gathered from Cataclysm Herbs. Every farm route is nearly as good as the others, pick whichever you could use the herbs from.
|tip If you don't have a preference, the best location is from Whiptail in Uldum, however it is often contested.
Click Here To Farm Stormvine and Cinderbloom in Hyjal |confirm |or |next "Volatile_Life_Cinderbloom"
Click Here To Farm Heartblossom in Deepholm |confirm |or |next "Volatile_Life_Heartblossom"
Click Here to Farm Azshara's Veil and Stormvine in Vashj'ir |confirm |or |next "Volatile_Life_Azshara"
Click Here to Farm Whiptail in Uldum |confirm |or |next "Volatile_Life_Whiptail"
step
label "Volatile_Life_Cinderbloom"
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	63.52,31.55	59.57,32.88	56.84,34.54	54.71,29.36	53.13,31.28
path	48.07,30.68	45.74,27.86	36.60,22.67	35.18,25.84	33.14,25.57
path	33.77,34.17	33.99,37.06	27.61,39.43	25.94,37.24	24.30,33.51
path	23.48,36.14	21.88,38.77	15.82,40.94	13.52,40.33	14.38,45.61
path	17.12,53.39	19.25,57.53	23.37,59.85	24.79,61.79	27.32,59.90
path	28.50,54.44	31.11,52.22	34.43,54.53	35.78,57.57	36.87,62.02
path	38.97,61.57	40.29,59.61	41.57,56.62	49.01,57.60	51.13,57.93
path	51.16,53.77	51.72,51.91	54.23,53.26	55.58,57.23	57.62,54.09
path	61.08,59.46	61.30,60.55	65.74,54.83	69.41,55.41	72.97,59.21
path	74.00,61.72	77.50,59.62	79.41,55.08	81.41,51.90
|tip Gather Cinderbloom and other herbs along the path.
click Cinderbloom##202747+
click Stormvine##52984+
collect Volatile Life##52329 |n
Click Here To Change Your Herb Route |confirm |next "Volatile_Life_Main_Menu"
'|confirm
step
label "Volatile_Life_Azshara"
map Shimmering Expanse/0
path follow smart; loop on; ants curved; dist 30
path	45.91,34.21	43.95,33.49	41.30,31.07	40.21,32.17	40.61,35.96
path	40.30,38.87	41.93,41.20	42.26,45.80	41.98,48.84	40.92,52.87
path	39.62,55.16	37.95,54.41	36.97,51.91	34.98,52.01	32.16,57.49
path	32.70,61.61	34.43,63.81	36.99,64.58	38.31,66.22	39.15,69.03
path	38.40,71.26	37.71,73.01	39.53,74.19	41.36,73.99	42.27,77.19
path	43.58,79.20	45.81,81.32	47.25,81.72	49.00,84.03	50.84,86.57
path	52.58,86.63	53.66,87.98	55.68,91.22	58.94,91.52	61.16,91.30
path	61.63,86.87	61.51,82.72	60.87,80.82	58.85,80.73	56.84,81.41
path	54.23,80.47	53.36,77.18	53.44,72.83	53.89,68.75	55.82,68.27
path	58.12,69.08	60.73,69.14	62.65,67.74	65.67,63.95	67.54,59.94
path	68.04,56.94	67.89,52.39	66.76,47.91	65.42,44.80	63.75,44.08
|tip Gather Azshara's Veil and Stormvine along the path.
click Azshara's Veil##202749+
click Stormvine##52984+
collect Volatile Life##52329 |n
Click Here To Change Your Herb Route |confirm |next "Volatile_Life_Main_Menu"
'|confirm
step
label "Volatile_Life_Heartblossom"
map Deepholm/0
path follow smart; loop on; ants curved; dist 60
path	69.45,56.02	74.70,61.14	75.81,67.59	70.52,61.93	71.11,70.62
path	66.03,68.53	58.01,73.22	47.40,67.35	37.03,53.36	37.63,44.71
path	26.81,41.51	23.12,35.31	28.92,35.62	27.84,27.02	31.22,32.00
path	36.63,28.95	33.00,19.13	47.81,12.91	45.91,21.10	43.61,25.12
path	44.52,28.62	49.12,33.66	56.73,38.30	73.80,32.71	75.20,41.93
path	69.61,46.45
click Heartblossom##202750+
|tip Gather Heartblossom along the path.
collect Volatile Life##52329 |n
Click Here To Change Your Herb Route |confirm |next "Volatile_Life_Main_Menu"
'|confirm
step
label "Volatile_Life_Whiptail"
map Uldum/0
path follow smart; loop on; ants straight; dist 30
path	52.04,34.76	49.71,31.20	46.66,28.99	48.65,32.36	49.82,35.80
path	50.63,41.83	51.55,44.75	54.26,46.47	55.55,46.73	56.26,49.75
path	57.24,52.88	58.12,55.65	58.98,59.77	59.28,63.35	59.14,69.50
path	59.27,74.41	59.77,79.51	60.03,82.60	61.43,80.76	62.87,78.55
path	65.43,77.43	67.74,76.82	69.59,76.35	68.06,73.08	66.74,71.67
path	60.14,56.99	59.42,53.64	57.64,47.89	56.97,45.77	58.53,30.28
path	57.61,27.73	56.82,23.62	56.97,19.77	58.45,15.72	60.98,13.91
|tip Gather Whiptail along the path.
click Whiptail##202752+
collect Volatile Life##52329 |n
Click Here To Change Your Herb Route |confirm |next "Volatile_Life_Main_Menu"
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\General Farming Guides\\Volatile Fire",{
expansion="mists",
description="Volatile Fire can be gathered from Twilight Highlands in the Eastern Kingdoms.",
mopready=true,
meta={goldtype="route",levelreq=84},
items={99999999999},
maps={"Twilight Highlands"},
},[[
step
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect Volatile Fire##52325 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\General Farming Guides\\Volatile Earth",{
expansion="mists",
description="Volatile Earth can be gathered from Mount Hyjal in Kalimdor.",
mopready=true,
meta={goldtype="route",levelreq=80},
items={99999999999},
maps={"Mount Hyjal"},
},[[
step
map Mount Hyjal/0
path follow smart; loop on; ants curved
path	68.29,25.32	67.93,22.53	66.51,20.84	64.49,19.55	62.87,19.94
path	63.88,22.98	65.24,22.46	65.70,27.28	66.63,28.76
kill Scalding Rock Elemental##40229+
collect Volatile Earth##52327 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\General Farming Guides\\Volatile Water",{
expansion="mists",
description="Volatile Water can be gathered from Twilight Highlands in the Eastern Kingdoms.",
mopready=true,
meta={goldtype="route",levelreq=84},
items={99999999999},
maps={"Twilight Highlands"},
},[[
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	29.60,66.46	28.77,62.37	31.51,59.47	33.77,56.98	35.75,60.13
path	34.61,63.05
kill Enslaved Waterspout##46329+
|tip You can also fish in any schools of fish for Volatile Water as well. |only if skill("Fishing") >= 450
collect Volatile Water##52326 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\General Farming Guides\\Volatile Air",{
expansion="mists",
description="Volatile Air can be gathered from Twilight Highlands in the Eastern Kingdoms.",
mopready=true,
meta={goldtype="route",levelreq=84},
items={99999999999},
maps={"Twilight Highlands"},
},[[
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	39.56,47.29	41.39,48.90	41.53,46.16	39.76,44.61
kill Storm Vortex##47728+
collect Volatile Air##52328 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\General Farming Guides\\Eternal Air",{
expansion="mists",
description="Eternal Air can be gathered from Borean Tundra in Northrend.",
mopready=true,
meta={goldtype="route",levelreq=68},
items={{35623},{37700}},
maps={"Borean Tundra"},
},[[
step
kill Enraged Tempest##25415+
collect Eternal Air##35623 |n |goto Borean Tundra/0 45.24,10.09
|tip Combine 10 Crystallized Air into one Eternal Air.
You can find more around here [42.81,8.19]
You can find more around here [42.86,10.29]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\General Farming Guides\\Eternal Earth",{
expansion="mists",
description="Eternal Earth can be gathered from Howling Fjord in Northrend.",
mopready=true,
meta={goldtype="route",levelreq=68},
items={{35624},{37701}},
maps={"Howling Fjord"},
},[[
step
Kill enemies around this area
|tip Check all around the area, including the caves above.
collect Eternal Earth##35624 |n |goto Howling Fjord/0 73.29,73.38
|tip Combine 10 Crystallized Earth into one Eternal Earth.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\General Farming Guides\\Eternal Fire",{
expansion="mists",
description="Eternal Fire can be gathered from The Storm Peaks in Northrend.",
mopready=true,
meta={goldtype="route",levelreq=77},
items={{36860},{37702}},
maps={"The Storm Peaks"},
},[[
step
Enter the cave |goto The Storm Peaks/0 62.45,41.33
kill Wailing Winds##30450 +
collect Eternal Fire##36860 |goto The Storm Peaks/0 61.34,39.39 |n
|tip Combine 10 Crystallized Fire into one Eternal Fire.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\General Farming Guides\\Eternal Life",{
expansion="mists",
description="Eternal Life can be gathered from the Howling Fjord in Northrend.",
mopready=true,
meta={goldtype="route",levelreq=68},
items={{35625},{37704}},
maps={"Howling Fjord"},
},[[
step
kill Thornvine Creeper##23874+
collect Eternal Life##35625 |n |goto Howling Fjord/0 53.40,16.60
|tip Combine 10 Crystallized Life into one Eternal Life.
You can find more around here [52.52,18.73]
You can find more around here [54.66,19.78]
You can find more around here [55.22,16.30]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\General Farming Guides\\Eternal Shadow",{
expansion="mists",
description="Eternal shadow can be gathered from Dragonblight in Northrend.",
mopready=true,
meta={goldtype="route",levelreq=71},
items={{35627},{37703}},
maps={"Dragonblight"},
},[[
step
Enter the cave |goto Dragonblight/0 74.61,23.24 < 10
kill Deathbringer Revenant##27382+
collect Eternal Shadow##35627 |n |goto Dragonblight/0 75.06,20.80
|tip Combine 10 Crystallized Shadow into one Eternal Shadow.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\General Farming Guides\\Eternal Water",{
expansion="mists",
description="Eternal Water can be gathered from Dragonblight in Northrend.",
mopready=true,
meta={goldtype="route",levelreq=71},
items={{35622},{37705}},
maps={"Dragonblight"},
},[[
step
kill Ice Revenant##26283+
collect Eternal Water##35622 |n |goto Dragonblight/0 67.43,52.76
|tip Combine 10 Crystallized Water into one Eternal Water.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Knothide Leather",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=67},
items={21887},
maps={"Netherstorm"},
},[[
step
map Netherstorm/0
path follow smart; loop on; ants curved; dist 30
path	43.61,57.06	45.22,57.65	47.41,56.58	48.25,54.31	48.18,51.86
path	46.52,51.17	45.58,49.75	43.63,50.57	43.29,52.27	43.66,54.99
path	44.85,56.21
Kill enemies around this area
|tip Only Beast enemies will be skinnable.
|tip Skin their corpses.
collect Knothide Leather##21887 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Thick Clefthoof Leather",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=64},
items={25708},
maps={"Nagrand"},
},[[
step
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	44.28,26.55	43.25,29.59	45.88,33.29	47.54,38.47	50.14,51.61
path	52.51,54.52	54.09,50.75	54.25,48.06	55.98,45.01	51.01,39.01
path	50.63,31.76	46.12,27.60
Kill Clefthoof enemies around this area
|tip Skin their corpses.
collect Thick Clefthoof Leather##25708 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Fel Hide",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=67},
items={25707},
maps={"Netherstorm"},
},[[
step
map Netherstorm/0
path follow smart; loop on; ants curved; dist 30
path	55.33,60.50	58.09,60.46	58.98,58.47	61.66,59.15	63.22,59.54
path	65.48,61.63	66.93,63.05	63.63,64.45	61.98,62.72
kill Warp Chaser##18884+
|tip Skin their corpses.
collect Fel Hide##25707 |n
|tip They have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Fel Scales",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=58},
items={25700},
maps={"Hellfire Peninsula"},
},[[
step
label "Begin_Farming_Fel_Scales"
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	11.99,54.70	11.02,54.63	10.11,53.01	9.12,51.76	7.40,49.89
path	7.82,49.71	8.95,49.91	9.61,49.40	11.37,48.08	12.38,47.51
path	11.70,51.10	12.48,51.64	12.89,53.00
Kill Razorfang, Thornfang, and Quillfang enemies along the path
|tip Skin their corpses.
collect Fel Scales##25700 |n
|tip They have a low drop rate.
'|goto Hellfire Peninsula/0 12.89,53.00 < 25 |c |noway
step
map Hellfire Peninsula/0
path follow smart; loop off; ants curved; dist 30
path	22.12,60.36	22.60,61.73	22.21,63.14	21.82,64.65	22.25,66.44
path	22.56,67.91	22.79,69.19	24.04,69.01
Kill Razorfang, Thornfang, and Quillfang enemies along the path
|tip Skin their corpses.
collect Fel Scales##25700 |n
|tip They have a low drop rate.
'|goto Hellfire Peninsula/0 24.04,69.01 < 25 |c |noway
step
map Hellfire Peninsula/0
path follow smart; loop off; ants curved; dist 30
path	32.45,91.83	33.79,91.14	34.99,90.66	36.06,90.40	37.14,89.48
path	38.07,88.64	39.28,87.54	40.25,85.99	41.32,84.26	42.22,83.00
Kill Razorfang, Thornfang, and Quillfang enemies along the path
|tip Skin their corpses.
collect Fel Scales##25700 |n
|tip They have a low drop rate.
'|goto Hellfire Peninsula/0 42.22,83.00 < 25 |c |noway |next "Begin_Farming_Fel_Scales"
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Nether Dragonscale",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=65},
items={29548},
maps={"Blade's Edge Mountains"},
},[[
step
map Blade's Edge Mountains/0
path follow smart; loop on; ants curved; dist 30
path	60.26,73.31	60.57,74.53	61.37,75.60	62.11,76.26	62.42,76.84
path	62.96,76.79	63.12,76.30	63.59,76.03	64.01,76.05	64.34,75.75
path	64.86,75.75	65.24,75.75	65.91,75.52	66.63,75.09	67.21,74.57
path	68.26,75.98	67.85,76.60	67.08,76.99	66.34,77.52	65.61,77.93
path	64.80,77.96	64.18,77.82	63.42,78.28	62.54,78.67	61.76,78.97
path	60.85,79.22	60.31,79.29	59.99,78.45	59.61,77.13	59.15,76.20
path	58.91,75.00	58.97,71.42
Kill Nether enemies around this area
|tip Skin their corpses.
collect Nether Dragonscale##29548 |n
|tip They have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Wind Scales",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=67},
items={29547},
maps={"Shadowmoon Valley"},
},[[
step
map Shadowmoon Valley/0
path follow smart; loop on; ants curved; dist 30
path	51.41,60.67	50.94,61.54	50.01,62.38	49.05,64.07	48.50,65.32
path	48.15,66.69	47.98,68.01	47.43,68.53	46.59,69.02	46.56,70.31
path	45.98,71.11	45.27,70.66	44.57,70.08	44.10,69.14	44.12,67.74
path	44.36,66.30	44.94,64.50	45.93,64.34	46.68,63.83	47.50,63.16
path	48.16,62.04	48.59,61.00	50.07,59.97
kill Eclipsion Dragonhawk##20502+
|tip Skin their corpses.
collect Wind Scales##29547 |n
|tip They have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Cobra Scales",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=64},
items={29539},
maps={"Nagrand"},
},[[
step
label "Start_Farming_Cobra_Scales"
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	18.01,38.64	19.04,37.86	19.06,36.64	19.25,35.69	20.02,35.31
path	19.99,34.69	19.56,33.70	18.80,33.09	17.97,33.44	17.51,34.01
path	15.63,34.46	14.73,34.52	14.03,35.10	13.33,35.70	12.49,36.56
path	12.49,37.51	11.91,39.12	11.00,40.08	10.15,40.92	9.39,41.92
path	8.71,42.91
kill Twilight Serpent##23026+
|tip Skin their corpses.
|tip Avoid elite enemies along the path.
collect Cobra Scales##29539 |n
|tip They have a low drop rate.
'|goto Nagrand/0 8.71,42.91 < 30 |c |noway
step
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	8.71,42.91	9.39,41.92	10.15,40.92	11.00,40.08	11.91,39.12
path	12.49,37.51	12.49,36.56	13.33,35.70	14.03,35.10	14.73,34.52
path	15.63,34.46	17.51,34.01	17.97,33.44	18.80,33.09	19.56,33.70
path	19.99,34.69	20.02,35.31	19.25,35.69	19.06,36.64	19.04,37.86
path	18.01,38.64
kill Twilight Serpent##23026+
|tip Skin their corpses.
|tip Avoid elite enemies along the path.
collect Cobra Scales##29539 |n
|tip They have a low drop rate.
'|goto Nagrand/0 18.01,38.64 < 30 |c |noway |next "Start_Farming_Cobra_Scales"
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Blackened Dragonscale",{
expansion="mists",
description="Blackened Dragonscale can be gathered from Twilight Highlands in Eastern Kingdoms.",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=84},
items={52979},
maps={"Twilight Highlands"},
},[[
step
Kill enemies around this area.
|tip Be sure to target the enemies flying above as well.
|tip Skin their corpses.
collect Blackened Dragonscale##52979 |n |goto Twilight Highlands/0 65.48,74.22
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Borean Leather",{
expansion="mists",
description="Borean Leather can be gathered from Sholazar Basin.",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=76},
items={33568},
maps={"Sholazar Basin"},
},[[
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 60
path	28.81,55.95	29.72,51.64	31.13,46.44	 32.23,40.46	28.63,42.95
path	25.60,47.92	23.52,52.32	22.61,58.71	22.62,65.30	22.31,70.23
path	26.42,72.73	28.91,69.11	29.60,64.41
Kill enemies around this area
collect Borean Leather##33568 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Nerubian Chitin",{
expansion="mists",
description="Shal'dorei Silk can be gathered from Icecrown.",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=77},
items={38558},
maps={"Icecrown"},
},[[
step
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	84.27,78.64	83.61,75.99	83.34,73.19	84.06,72.29	85.45,74.02
path	85.00,75.97	84.91,77.25	85.14,78.85
Kill enemies around this area
collect Nerubian Chitin##38558 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Savage Leather",{
expansion="mists",
description="Savage Leather can be gathered from Twilight Highlands.",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=84},
items={52976},
maps={"Twilight Highlands"},
},[[
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
Kill enemies around this area.
|tip Skin their corpses.
collect Savage Leather##52976 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Deepsea Scale",{
expansion="mists",
description="Deepsea Scale can be gathered from King Crawlers in Feralas.",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=35},
items={52982},
maps={"Feralas"},
},[[
step
kill King Crawler##51714+
|tip Skin their corpses.
collect Deepsea Scale##52982 |n |goto Feralas/0 68.99,75.51
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Felweed",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=300},levelreq=62},
items={22785},
maps={"Terokkar Forest"},
},[[
step
map Terokkar Forest/0
path follow smart; loop on; ants curved
path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
path	35.72,43.53	33.66,44.98
click Felweed##181270+
|tip Gather Felweed along the path.
collect Felweed##22785 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Ancient Lichen",{
expansion="mists",
description="Ancient Lichen can be gathered from mobs in Zangarmarsh or from various dungeons.",
mopready=true,
meta={goldtype="route",skillreq={herbalism=300},levelreq=60},
items={22790},
maps={"Zangarmarsh"},
},[[
step
map Zangarmarsh/0
path	follow smart; ants curved; dist 20
path	82.27,44.23	79.64,39.75	79.46,36.87	81.08,33.72	83.18,34.79
path	84.92,37.43	85.23,40.76
Kill Withered enemies around this area
|tip Gather their corpses with Herbalism.
|tip These can also be farmed from Slave Pens, Underbog and Steamvaults with stealth or a group.
collect Ancient Lichen##22790 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Dreaming Glory",{
expansion="mists",
description="Dreaming Glory can be gathered from Terokkar Forest.",
mopready=true,
meta={goldtype="route",skillreq={herbalism=300},levelreq=62},
items={22786},
maps={"Terokkar Forest"},
},[[
step
map Terokkar Forest/0
path follow smart; loop on; ants curved
path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
path	35.72,43.53	33.66,44.98
click Dreaming Glory##181271+
|tip Gather Dreaming Glory along the path.
collect Dreaming Glory##22786 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Fel Lotus",{
expansion="mists",
description="Fel Lotus can be gathered from Nightmare Vine in Shadowmoon Valley or any other Outland herb.",
mopready=true,
meta={goldtype="route",skillreq={herbalism=300},levelreq=67},
items={22794},
maps={"Shadowmoon Valley"},
},[[
step
map Shadowmoon Valley/0
path	follow smart; loop on; ants curved; dist 20
path	42.51,59.05	43.42,65.13	43.35,72.41	47.71,69.62	47.32,51.73
path	51.52,59.03	51.41,66.46	56.94,73.92	61.24,68.15	57.83,57.26
path	62.03,56.22	65.24,61.52	70.61,60.71	68.51,58.02	67.94,47.22
path	72.11,47.51	71.52,40.81	66.32,39.32	58.53,45.31	49.95,33.91
path	53.12,33.55	59.63,37.35	67.13,28.91	66.02,21.82	58.01,23.62
path	55.63,16.84	52.52,15.62	52.51,21.61	45.53,15.13	42.32,38.24
path	38.31,32.18	31.21,34.61	24.92,29.64	22.04,34.71	22.04,40.81
path	29.72,47.82	27.23,52.63	31.63,53.82
click Nightmare Vine##181280+
|tip Gather Nightmare Vine along the path.
|tip Fel Lotus is gathered from any herb farmed in the Outland.
collect Fel Lotus##22794 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Mana Thistle",{
expansion="mists",
description="Mana Thistle can be gathered from Terokkar Forest and Shadowmoon Valley.",
mopready=true,
meta={goldtype="route",skillreq={herbalism=300},levelreq=62},
items={22793},
maps={"Terokkar Forest"},
},[[
step
label "Start_Path"
map Terokkar Forest/0
path	follow smart; loop on; ants curved; dist 20
path	27.11,10.51	22.10,6.50	20.21,14.21	23.90,10.50
click Mana Thistle##181281+
|tip Gather Mana Thistle along the path.
|tip Mana Thistle is a rare herb, so pick nearby herbs to make it possibly spawn.
collect Mana Thistle##22793 |n
Farm Along the Path |goto Terokkar Forest/0 23.90,10.50 < 30 |noway |c
step
map Terokkar Forest/0
path	follow smart; loop on; ants curved; dist 20
path	62.42,73.60	65.70,79.21	68.72,85.72	72.21,88.52	74.91,87.50
path	72.31,82.01	69.31,74.60	62.41,73.60
click Mana Thistle##181281+
|tip Gather Mana Thistle along the path.
|tip Mana Thistle is a rare herb, so pick nearby herbs to make it possibly spawn.
collect Mana Thistle##22793 |n
Farm Along the Path |goto Terokkar Forest/0 62.41,73.60 < 30 |noway |c
step
map Shadowmoon Valley/0
path	follow smart; loop on; ants curved; dist 20
path	65.81,80.63	70.21,79.12	74.31,80.80	79.20,87.53	77.51,88.40
path	74.32,88.92	71.12,88.31	68.33,87.51	70.21,83.92	72.02,85.91
path	74.60,86.41
click Mana Thistle##181281+
|tip Gather Mana Thistle along the path.
|tip Mana Thistle is a rare herb, so pick nearby herbs to make it possibly spawn.
collect Mana Thistle##22793 |n
Farm Along the Path |goto Shadowmoon Valley/0 74.60,86.41 < 30 |noway |c |next "Start_Path"
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Netherbloom",{
expansion="mists",
description="Netherbloom can be gathered from Netherstorm.",
mopready=true,
meta={goldtype="route",skillreq={herbalism=300},levelreq=67},
items={22791},
maps={"Netherstorm"},
},[[
step
map Netherstorm/0
path follow smart; loop on; ants curved
path	40.24,77.20	35.96,77.64	33.57,77.45	32.69,76.46	29.37,79.43
path	26.96,78.02	25.18,76.67	22.65,76.95	21.15,76.56	20.31,74.78
path	19.80,71.91	19.08,69.17	20.47,66.62	22.14,66.23	24.65,65.10
path	27.12,60.26	25.78,57.60	24.23,55.80	25.51,54.63	28.56,54.51
path	31.15,52.38	29.62,43.63	27.59,44.60	25.41,44.20	22.98,42.42
path	23.01,39.51	24.33,37.29	25.59,34.57	28.07,36.77	29.58,40.32
path	31.85,40.98	36.24,37.50	34.06,33.89	33.35,29.83	33.90,25.46
path	35.11,23.24	35.65,19.13	37.78,16.74	39.58,16.09	42.42,14.81
path	44.23,11.72	45.11,9.32	45.88,7.67	46.97,9.19	48.22,13.84
path	50.05,15.38	50.32,17.83	53.22,17.87	55.50,17.51	55.81,20.17
path	56.92,23.83	54.87,25.87	52.51,26.14	50.65,26.43	48.19,27.46
path	47.13,31.47	47.76,34.54	49.01,37.61	54.64,32.59	56.67,31.80
path	58.36,31.54	60.65,30.28	62.49,30.31	65.43,30.84	67.85,32.79
path	68.63,35.87	70.41,36.32	72.66,35.05	73.97,35.64	73.61,37.25
path	73.81,39.22	73.42,40.88	72.18,43.37	70.07,44.56	68.89,46.88
path	66.51,48.70	64.20,50.40	61.71,50.31	59.22,50.15	57.37,48.48
path	56.39,46.25	54.77,43.82	53.12,41.66	49.55,46.57	49.57,50.00
path	50.42,52.90	51.84,54.87	53.70,56.61	56.10,56.66	57.95,57.14
path	59.94,58.21	62.03,58.25	64.36,58.34	66.65,58.84	67.89,61.91
path	66.70,65.88	64.15,67.93	62.18,68.23	61.37,64.52	60.24,63.12
path	57.94,63.05	57.36,65.05	56.29,67.80	52.89,68.59	51.27,70.71
path	51.54,75.15	54.25,76.46	57.15,77.98	59.64,78.82	62.25,79.25
path	60.11,81.86	60.14,84.60	59.80,87.70	58.69,89.60	56.55,89.08
path	54.83,88.42	52.69,86.63	50.15,86.35	48.74,85.68	46.78,84.05
path	45.54,79.03	43.73,76.27
click Netherbloom##181279+
|tip Gather Netherbloom along the path.
collect Netherbloom##22791 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Nightmare Vine",{
expansion="mists",
description="Nightmare Vine can be gathered from Shadowmoon Valley.",
mopready=true,
meta={goldtype="route",skillreq={herbalism=300},levelreq=67},
items={22792},
maps={"Shadowmoon Valley"},
},[[
step
map Shadowmoon Valley/0
path	follow smart; loop on; ants curved; dist 20
path	42.51,59.05	43.42,65.13	43.35,72.41	47.71,69.62	47.32,51.73
path	51.52,59.03	51.41,66.46	56.94,73.92	61.24,68.15	57.83,57.26
path	62.03,56.22	65.24,61.52	70.61,60.71	68.51,58.02	67.94,47.22
path	72.11,47.51	71.52,40.81	66.32,39.32	58.53,45.31	49.95,33.91
path	53.12,33.55	59.63,37.35	67.13,28.91	66.02,21.82	58.01,23.62
path	55.63,16.84	52.52,15.62	52.51,21.61	45.53,15.13	42.32,38.24
path	38.31,32.18	31.21,34.61	24.92,29.64	22.04,34.71	22.04,40.81
path	29.72,47.82	27.23,52.63	31.63,53.82
click Nightmare Vine##181280+
|tip Gather Nightmare Vine along the path.
collect Nightmare Vine##22792 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Ragveil",{
expansion="mists",
description="Ragveil can be gathered from Zangarmarsh.",
mopready=true,
meta={goldtype="route",skillreq={herbalism=300},levelreq=60},
items={22787},
maps={"Zangarmarsh"},
},[[
step
map Zangarmarsh/0
path follow smart; loop on; ants curved
path	83.47,41.87	84.20,37.59	81.81,33.16	77.86,33.21	75.68,34.01
path	73.86,38.51	70.74,40.47	68.52,41.50	65.65,39.18	62.93,38.46
path	60.95,37.98	58.10,35.36	55.37,35.42	53.23,34.98	50.96,33.65
path	48.21,33.08	44.78,31.79	42.54,31.68	40.63,33.89	38.56,33.56
path	36.66,32.68	34.77,29.60	33.26,26.30	29.50,24.65	26.55,23.37
path	24.63,23.97	21.65,27.24	18.44,29.85	17.29,33.67	17.04,36.75
path	14.23,41.57	16.46,46.13	17.31,50.06	16.84,53.47	17.92,56.63
path	15.63,58.80	12.99,59.63	13.11,63.17	16.33,63.54	19.08,61.78
path	22.78,58.64	25.41,57.72	27.03,57.93	28.53,61.81	30.87,61.91
path	33.55,65.37	35.31,64.62	38.20,64.75	41.54,64.06	42.44,62.80
path	45.31,63.25	47.33,62.29	49.64,63.31	52.00,66.07	53.50,67.63
path	55.24,67.25	57.43,68.85	59.99,68.42	62.10,69.89	64.46,71.61
path	66.43,73.47	66.45,77.16	67.51,80.44	68.34,84.46	71.72,85.54
path	73.36,85.21	76.07,84.45	78.24,85.58	80.78,86.39	82.03,87.58
path	85.17,86.99	86.08,83.78	84.64,81.04	82.88,78.84	82.18,76.32
path	82.33,72.85	80.95,70.67	78.39,67.26	77.98,62.18	78.15,60.45
path	78.17,59.21	78.92,56.99	81.39,54.58	82.91,52.12	82.36,49.38
path	82.90,46.26
click Ragveil##181275+
|tip Gather Ragveil along the path.
collect Ragveil##22787 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Terocone",{
expansion="mists",
description="Terocone can be gathered from Terokkar Forest.",
mopready=true,
meta={goldtype="route",skillreq={herbalism=300},levelreq=62},
items={22789},
maps={"Terokkar Forest"},
},[[
step
map Terokkar Forest/0
path follow smart; loop on; ants curved
path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
path	35.72,43.53	33.66,44.98
click Terocone##181277+
|tip Gather Terocone along the path.
collect Terocone##22789 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Frost Lotus",{
expansion="mists",
description="Frost Lotus can be gathered from The Storm Peaks.",
mopready=true,
meta={goldtype="route",skillreq={herbalism=375},levelreq=77},
items={36906},
maps={"The Storm Peaks"},
},[[
step
map The Storm Peaks/0
path follow smart; loop on; ants curved
path	37.15,73.48	36.64,69.08	35.71,66.70	34.66,66.00	32.61,65.99
path	30.68,65.55	29.40,64.39	27.59,62.07	27.17,58.74	27.25,55.75
path	28.00,53.06	29.13,51.13	30.43,49.94	31.67,49.82	33.43,48.30
path	34.75,47.33	35.75,47.03	37.32,44.70	38.75,44.47	39.82,45.94
path	40.47,49.03	40.51,51.65	39.42,53.12	38.10,55.73	37.80,58.48
path	37.56,60.85	38.41,61.95	40.16,61.92	41.77,61.51	43.31,61.24
path	44.75,62.62	46.34,64.01	47.55,62.01	47.31,59.92	46.44,57.03
path	47.70,54.96	48.89,52.58	50.64,51.44	53.36,51.71	55.89,51.38
path	57.69,49.55	59.86,48.08	59.83,45.73	60.91,44.99	61.97,43.24
path	64.35,41.34	65.39,42.29	65.97,44.84	65.74,47.70	64.38,50.55
path	65.86,53.74	67.53,54.41	68.97,52.49	69.70,50.76	70.53,48.41
path	71.78,46.96	73.21,47.74	73.12,49.55	72.20,51.60	72.16,53.26
path	72.06,56.04	72.16,58.67	72.48,61.05	72.77,62.94	71.84,63.68
path	70.31,62.84	69.06,63.15	67.02,64.46	65.18,64.96	64.02,64.42
path	62.95,61.56	61.02,61.59	59.18,62.98	57.57,64.39	56.14,65.63
path	54.35,65.89	53.71,67.13	51.82,69.48	50.54,72.92	49.60,75.80
path	48.14,77.49	47.14,80.25	45.96,80.80	44.27,79.33	42.57,83.95
path	41.57,86.50	39.53,87.77	37.54,88.34	36.04,85.90	34.83,85.56
path	33.61,86.71	32.33,86.46	31.89,84.38	32.52,82.63	34.74,81.92
path	36.12,80.41	36.82,76.83
click Icethorn##190172+
|tip Gather Icethorn along the path.
|tip Frost Lotus comes from harvesting Icethorn.
collect Frost Lotus##36906 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Goldclover",{
expansion="mists",
description="Goldclover can be gathered from Borean Tundra.",
meta={goldtype="route",skillreq={herbalism=375},levelreq=68},
items={36901},
maps={"Borean Tundra"},
mopready=true,
},[[
step
map Borean Tundra/0
path follow smart; loop on; ants curved; dist 60
path	51.92,47.73	53.71,43.42	53.20,38.81	54.83,29.93	51.32,20.81
path	49.41,26.22	42.92,41.31	36.51,54.92	44.12,64.22	52.21,60.72
path	57.73,52.11
click Goldclover##189973+
|tip Gather Goldclover along the path.
collect Goldclover##36901 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Icethorn",{
expansion="mists",
description="Icethorn can be gathered from The Storm Peaks.",
meta={goldtype="route",skillreq={herbalism=375},levelreq=77},
items={36906},
maps={"The Storm Peaks"},
mopready=true,
},[[
step
map The Storm Peaks/0
path follow smart; loop on; ants curved
path	37.15,73.48	36.64,69.08	35.71,66.70	34.66,66.00	32.61,65.99
path	30.68,65.55	29.40,64.39	27.59,62.07	27.17,58.74	27.25,55.75
path	28.00,53.06	29.13,51.13	30.43,49.94	31.67,49.82	33.43,48.30
path	34.75,47.33	35.75,47.03	37.32,44.70	38.75,44.47	39.82,45.94
path	40.47,49.03	40.51,51.65	39.42,53.12	38.10,55.73	37.80,58.48
path	37.56,60.85	38.41,61.95	40.16,61.92	41.77,61.51	43.31,61.24
path	44.75,62.62	46.34,64.01	47.55,62.01	47.31,59.92	46.44,57.03
path	47.70,54.96	48.89,52.58	50.64,51.44	53.36,51.71	55.89,51.38
path	57.69,49.55	59.86,48.08	59.83,45.73	60.91,44.99	61.97,43.24
path	64.35,41.34	65.39,42.29	65.97,44.84	65.74,47.70	64.38,50.55
path	65.86,53.74	67.53,54.41	68.97,52.49	69.70,50.76	70.53,48.41
path	71.78,46.96	73.21,47.74	73.12,49.55	72.20,51.60	72.16,53.26
path	72.06,56.04	72.16,58.67	72.48,61.05	72.77,62.94	71.84,63.68
path	70.31,62.84	69.06,63.15	67.02,64.46	65.18,64.96	64.02,64.42
path	62.95,61.56	61.02,61.59	59.18,62.98	57.57,64.39	56.14,65.63
path	54.35,65.89	53.71,67.13	51.82,69.48	50.54,72.92	49.60,75.80
path	48.14,77.49	47.14,80.25	45.96,80.80	44.27,79.33	42.57,83.95
path	41.57,86.50	39.53,87.77	37.54,88.34	36.04,85.90	34.83,85.56
path	33.61,86.71	32.33,86.46	31.89,84.38	32.52,82.63	34.74,81.92
path	36.12,80.41	36.82,76.83
click Icethorn##190172+
|tip Gather Icethorn along the path.
collect Icethorn##36906 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Lichbloom",{
expansion="mists",
description="Lichbloom can be gathered from The Storm Peaks.",
meta={goldtype="route",skillreq={herbalism=375},levelreq=77},
items={36905},
maps={"The Storm Peaks"},
mopready=true,
},[[
step
map The Storm Peaks/0
path follow smart; loop on; ants curved
path	37.15,73.48	36.64,69.08	35.71,66.70	34.66,66.00	32.61,65.99
path	30.68,65.55	29.40,64.39	27.59,62.07	27.17,58.74	27.25,55.75
path	28.00,53.06	29.13,51.13	30.43,49.94	31.67,49.82	33.43,48.30
path	34.75,47.33	35.75,47.03	37.32,44.70	38.75,44.47	39.82,45.94
path	40.47,49.03	40.51,51.65	39.42,53.12	38.10,55.73	37.80,58.48
path	37.56,60.85	38.41,61.95	40.16,61.92	41.77,61.51	43.31,61.24
path	44.75,62.62	46.34,64.01	47.55,62.01	47.31,59.92	46.44,57.03
path	47.70,54.96	48.89,52.58	50.64,51.44	53.36,51.71	55.89,51.38
path	57.69,49.55	59.86,48.08	59.83,45.73	60.91,44.99	61.97,43.24
path	64.35,41.34	65.39,42.29	65.97,44.84	65.74,47.70	64.38,50.55
path	65.86,53.74	67.53,54.41	68.97,52.49	69.70,50.76	70.53,48.41
path	71.78,46.96	73.21,47.74	73.12,49.55	72.20,51.60	72.16,53.26
path	72.06,56.04	72.16,58.67	72.48,61.05	72.77,62.94	71.84,63.68
path	70.31,62.84	69.06,63.15	67.02,64.46	65.18,64.96	64.02,64.42
path	62.95,61.56	61.02,61.59	59.18,62.98	57.57,64.39	56.14,65.63
path	54.35,65.89	53.71,67.13	51.82,69.48	50.54,72.92	49.60,75.80
path	48.14,77.49	47.14,80.25	45.96,80.80	44.27,79.33	42.57,83.95
path	41.57,86.50	39.53,87.77	37.54,88.34	36.04,85.90	34.83,85.56
path	33.61,86.71	32.33,86.46	31.89,84.38	32.52,82.63	34.74,81.92
path	36.12,80.41	36.82,76.83
click Lichbloom##190171+
|tip Gather Lichbloom along the path.
collect Lichbloom##36905 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Talandra's Rose",{
expansion="mists",
description="Talandra's Rose can be gathered from Zul'Drak.",
meta={goldtype="route",skillreq={herbalism=375},levelreq=74},
items={36907},
maps={"Zul'Drak"},
mopready=true,
},[[
step
map Zul'Drak/0
path follow smart; loop on; ants curved
path	22.09,78.77	25.02,75.77	26.61,74.51	27.79,77.38	28.26,80.67
path	29.88,81.46	31.91,85.69	34.60,88.01	38.40,88.00	38.95,82.55
path	38.13,79.03	38.15,76.23	38.09,73.57	35.66,69.02	33.88,66.82
path	31.76,70.48	28.09,68.80	28.03,65.24	30.72,63.31	34.31,62.03
path	36.26,61.30	36.97,62.37	38.83,67.08	42.03,71.78	44.95,74.61
path	44.69,79.35	45.41,82.25	48.61,83.52	51.56,82.99	55.04,82.64
path	58.46,82.66	61.07,81.96	63.59,79.19	63.39,77.17	62.44,75.36
path	59.55,75.13	57.56,74.73	56.89,71.40	55.05,70.00	53.84,67.77
path	52.92,64.89	50.79,63.03	47.76,63.47	45.58,64.45	42.97,63.91
path	43.01,59.38	42.24,54.24	44.08,51.31	45.66,48.62	44.92,44.91
path	43.78,42.08	40.83,42.28	37.99,41.92	34.94,40.78	32.39,40.02
path	31.90,42.24	29.93,44.12	29.26,48.15	30.03,50.98	30.93,52.78
path	31.89,54.80	31.46,56.62	29.51,57.49	27.52,55.35	25.94,52.49
path	24.49,50.44	22.87,49.41	21.62,51.38	21.86,54.89	21.82,56.76
path	20.73,57.98	21.38,60.17	20.63,62.78	20.22,65.31	21.22,69.61
path	22.01,73.54
click Talandra's Rose##190170+
|tip Gather Talandra's Rose along the path.
collect Talandra's Rose##36907 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Adder's Tongue",{
expansion="mists",
description="Adder's Tongue can be gathered from Sholazar Basin.",
meta={goldtype="route",skillreq={herbalism=375},levelreq=76},
items={36903},
maps={"Sholazar Basin"},
mopready=true,
},[[
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	24.23,56.13	27.03,55.88	28.77,58.22	30.23,54.96	29.81,49.57
path	30.16,47.28	33.16,47.05	35.35,48.39	37.38,50.81	38.86,53.62
path	40.12,57.19	38.28,58.88	35.54,59.62	33.29,60.96	33.97,63.13
path	36.14,64.74	38.39,66.80	40.60,66.19	41.59,67.02	42.33,70.20
path	43.23,74.84	43.38,79.66	43.24,82.82	40.64,84.76	37.93,83.94
path	36.78,82.55	35.42,82.23	33.77,83.66	32.50,84.16	30.86,84.19
path	28.98,83.64	28.84,80.96	29.94,78.24	29.66,74.84	30.05,71.44
path	29.72,69.53	28.01,66.13	26.96,64.47	25.20,65.29	22.71,63.99
path	21.97,60.65	22.37,57.35
click Adder's Tongue##191019+
|tip Gather Adder's Tongue and other herbs along the path.
|tip Gather Talandra's Rose along the path.
collect Adder's Tongue##36903 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Tiger Lily",{
expansion="mists",
description="Tiger Lily can be gathered from Sholazar Basin.",
meta={goldtype="route",skillreq={herbalism=375},levelreq=76},
items={36904},
maps={"Sholazar Basin"},
mopready=true,
},[[
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 60
path	32.00,58.20	36.10,65.30	43.90,57.70	44.50,63.90	39.50,66.30
path	40.40,71.70	32.80,82.30	36.10,84.40	42.60,76.00	46.80,62.50
path	51.00,62.00	60.00,73.90	55.70,85.90	66.40,82.30	69.30,65.80
path	55.20,57.10	48.90,55.00	55.40,48.10	58.10,38.30	34.80,31.40
path	30.10,43.40	32.10,48.50	26.60,55.40	23.70,60.30
click Tiger Lily##190169+
|tip Gather Tiger Lily along the path.
collect Tiger Lily##36904 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Azshara's Veil",{
expansion="mists",
description="Azshara's Veil can be gathered from the Shimmering Expanse.",
meta={goldtype="route",skillreq={herbalism=425},levelreq=80},
items={52985},
maps={"Shimmering Expanse"},
mopready=true,
},[[
step
map Shimmering Expanse/0
path follow smart; loop on; ants curved
path	45.91,34.21	43.95,33.49	41.30,31.07	40.21,32.17	40.61,35.96
path	40.30,38.87	41.93,41.20	42.26,45.80	41.98,48.84	40.92,52.87
path	39.62,55.16	37.95,54.41	36.97,51.91	34.98,52.01	32.16,57.49
path	32.70,61.61	34.43,63.81	36.99,64.58	38.31,66.22	39.15,69.03
path	38.40,71.26	37.71,73.01	39.53,74.19	41.36,73.99	42.27,77.19
path	43.58,79.20	45.81,81.32	47.25,81.72	49.00,84.03	50.84,86.57
path	52.58,86.63	53.66,87.98	55.68,91.22	58.94,91.52	61.16,91.30
path	61.63,86.87	61.51,82.72	60.87,80.82	58.85,80.73	56.84,81.41
path	54.23,80.47	53.36,77.18	53.44,72.83	53.89,68.75	55.82,68.27
path	58.12,69.08	60.73,69.14	62.65,67.74	65.67,63.95	67.54,59.94
path	68.04,56.94	67.89,52.39	66.76,47.91	65.42,44.80	63.75,44.08
click Azshara's Veil##202749+
|tip Gather Azshara's Veil along the path.
|tip They share a spawn with Stormvine.
collect Azshara's Veil##52985 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Azshara's Veil",{
expansion="mists",
description="Azshara's Veil can be gathered from the Shimmering Expanse.",
meta={goldtype="route",skillreq={herbalism=425},levelreq=80},
items={52985},
maps={"Shimmering Expanse"},
mopready=true,
},[[
step
map Shimmering Expanse/0
path follow smart; loop on; ants curved
path	45.91,34.21	43.95,33.49	41.30,31.07	40.21,32.17	40.61,35.96
path	40.30,38.87	41.93,41.20	42.26,45.80	41.98,48.84	40.92,52.87
path	39.62,55.16	37.95,54.41	36.97,51.91	34.98,52.01	32.16,57.49
path	32.70,61.61	34.43,63.81	36.99,64.58	38.31,66.22	39.15,69.03
path	38.40,71.26	37.71,73.01	39.53,74.19	41.36,73.99	42.27,77.19
path	43.58,79.20	45.81,81.32	47.25,81.72	49.00,84.03	50.84,86.57
path	52.58,86.63	53.66,87.98	55.68,91.22	58.94,91.52	61.16,91.30
path	61.63,86.87	61.51,82.72	60.87,80.82	58.85,80.73	56.84,81.41
path	54.23,80.47	53.36,77.18	53.44,72.83	53.89,68.75	55.82,68.27
path	58.12,69.08	60.73,69.14	62.65,67.74	65.67,63.95	67.54,59.94
path	68.04,56.94	67.89,52.39	66.76,47.91	65.42,44.80	63.75,44.08
click Azshara's Veil##202749+
|tip Gather Azshara's Veil along the path.
|tip They share a spawn with Stormvine.
collect Azshara's Veil##52985 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Cinderbloom",{
expansion="mists",
description="Cinderbloom can be gathered from Mount Hyjal.",
meta={goldtype="route",skillreq={herbalism=425},levelreq=80},
items={52983},
maps={"Mount Hyjal"},
mopready=true,
},[[
step
map Mount Hyjal/0
path follow smart; loop on; ants curved; dist 60
path	68.20,23.92	59.25,31.60	57.03,38.93	57.93,17.52	51.53,16.95
path	52.61,35.53	48.74,36.52	44.01,24.52	39.84,32.50	36.52,21.76
path	32.30,25.22	34.61,36.91	43.52,42.66	36.23,44.93	25.35,37.83
path	24.12,31.91	11.83,31.63	14.34,47.02	19.04,58.51	25.64,62.01
path	31.91,46.75	33.12,65.25	36.93,53.51	42.31,55.93	33.81,65.02
path	31.33,76.52	33.81,98.22	57.12,80.90	59.23,84.55	59.83,77.83
path	55.82,74.71	59.83,71.61	49.11,51.61	61.92,60.54	67.12,53.50
path	74.31,58.84	71.92,68.52	77.30,63.22	83.01,64.22	89.91,49.82
path	80.90,51.82	77.51,59.51
click Cinderbloom##202747+
|tip Gather Cinderbloom along the path.
collect Cinderbloom##52983 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Heartblossom",{
expansion="mists",
description="Heartblossom can be gathered from Deepholm.",
meta={goldtype="route",skillreq={herbalism=425},levelreq=82},
items={52986},
maps={"Deepholm"},
mopready=true,
},[[
step
map Deepholm/0
path follow smart; loop on; ants curved; dist 60
path	69.45,56.02	74.70,61.14	75.81,67.59	70.52,61.93	71.11,70.62
path	66.03,68.53	58.01,73.22	47.40,67.35	37.03,53.36	37.63,44.71
path	26.81,41.51	23.12,35.31	28.92,35.62	27.84,27.02	31.22,32.00
path	36.63,28.95	33.00,19.13	47.81,12.91	45.91,21.10	43.61,25.12
path	44.52,28.62	49.12,33.66	56.73,38.30	73.80,32.71	75.20,41.93
path	69.61,46.45
click Heartblossom##202750+
|tip Gather Heartblossom along the path.
collect Heartblossom##52986 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Stormvine",{
expansion="mists",
description="Stormvine can be gathered from the Shimmering Expanse.",
meta={goldtype="route",skillreq={herbalism=425},levelreq=80},
items={52984},
maps={"Shimmering Expanse"},
mopready=true,
},[[
step
map Shimmering Expanse/0
path follow smart; loop on; ants curved
path	45.91,34.21	43.95,33.49	41.30,31.07	40.21,32.17	40.61,35.96
path	40.30,38.87	41.93,41.20	42.26,45.80	41.98,48.84	40.92,52.87
path	39.62,55.16	37.95,54.41	36.97,51.91	34.98,52.01	32.16,57.49
path	32.70,61.61	34.43,63.81	36.99,64.58	38.31,66.22	39.15,69.03
path	38.40,71.26	37.71,73.01	39.53,74.19	41.36,73.99	42.27,77.19
path	43.58,79.20	45.81,81.32	47.25,81.72	49.00,84.03	50.84,86.57
path	52.58,86.63	53.66,87.98	55.68,91.22	58.94,91.52	61.16,91.30
path	61.63,86.87	61.51,82.72	60.87,80.82	58.85,80.73	56.84,81.41
path	54.23,80.47	53.36,77.18	53.44,72.83	53.89,68.75	55.82,68.27
path	58.12,69.08	60.73,69.14	62.65,67.74	65.67,63.95	67.54,59.94
path	68.04,56.94	67.89,52.39	66.76,47.91	65.42,44.80	63.75,44.08
click Stormvine##202748+
|tip Gather Stormvine along the path.
|tip They share a spawn with Azshara's Veil.
collect Stormvine##52984 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Twilight Jasmine",{
expansion="mists",
description="Twilight Jasmine can be gathered from Twilight Highlands.",
meta={goldtype="route",skillreq={herbalism=425},levelreq=84},
items={52987},
maps={"Twilight Highlands"},
mopready=true,
},[[
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	70.79,46.66	69.08,42.90	68.12,37.36	67.99,34.25	67.92,32.12
path	67.98,28.52	69.01,26.70	70.14,26.05	69.62,23.03	68.44,21.98
path	66.26,24.24	65.60,26.84	64.83,30.58	62.91,32.57	63.75,36.84
path	62.36,43.90	63.47,46.58	64.18,50.11	63.88,52.38	63.33,55.10
path	62.69,56.32	61.44,58.61	60.10,60.07	58.70,60.30	56.14,58.93
path	54.70,57.04	54.76,53.59	54.07,51.31	53.21,47.50	51.29,44.32
path	51.47,40.36	52.21,36.53	53.48,33.11	54.42,29.98	55.19,27.59
path	55.40,24.05	56.41,21.03	57.11,18.00	57.43,15.53	58.22,11.89
path	57.02,9.89	54.09,12.97	52.71,17.04	52.38,19.85	51.17,21.97
path	51.54,24.86	50.50,26.23	50.53,29.60	50.07,31.64	48.89,32.38
path	46.86,30.23	45.54,29.06	44.74,31.54	44.95,35.06	44.63,37.16
path	43.74,39.31	43.55,42.11	42.73,43.29	41.06,44.76	39.97,45.87
path	39.00,47.54	37.48,49.88	34.58,48.91	32.66,49.23	31.62,48.98
path	31.19,46.65	30.79,42.28	30.76,39.79	29.82,39.80	27.86,37.98
path	26.51,39.06	27.74,40.33	29.17,44.01	29.32,47.45	29.13,49.65
path	28.34,51.37	26.75,52.65	24.65,53.95	22.32,55.39	20.68,56.92
path	21.03,58.92	23.25,58.85	25.48,57.20	27.80,56.29	30.13,53.99
path	31.60,52.58	33.57,51.83	34.78,52.09	36.74,53.31	39.49,55.28
path	41.57,57.93	42.19,59.81	43.60,62.38	45.70,65.74	48.13,67.86
path	50.42,70.52	52.63,73.92	54.83,76.33	56.65,77.04	58.28,76.00
path	59.09,72.74	59.99,70.03	60.77,66.67	61.81,64.63	63.20,61.86
path	65.59,59.13	67.64,56.58
click Twilight Jasmine##202751+
|tip Gather Twilight Jasmine along the path.
collect Twilight Jasmine##52987 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Whiptail",{
expansion="mists",
description="Whiptail can be gathered from Uldum.",
meta={goldtype="route",skillreq={herbalism=425},levelreq=83},
items={52988},
maps={"Uldum"},
mopready=true,
},[[
step
map Uldum/0
path follow smart; loop on; ants curved; dist 60
path	58.42,31.33	56.23,22.66	57.81,14.55	61.51,14.04	57.13,44.73
path	60.51,58.32	69.82,76.52	65.93,75.92	60.02,83.22	59.00,58.82
path	55.30,45.81	52.01,45.61	50.80,42.51	50.80,36.01
click Whiptail##202752+
|tip Gather Whiptail along the path.
collect Whiptail##52988 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Arcane Dust",{
expansion="mists",
description="Disenchant items to gather Enchanting materials.",
meta={goldtype="route",skillreq={enchanting=1},levelreq=1},
items={22445},
mopready=true,
},[[
step
Disenchant item level 60 or higher green armor and weapons
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may sometimes get Greater or Lesser Planar Essence instead of Arcane Dust.
collect Arcane Dust##22445 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Lesser Planar Essence",{
expansion="mists",
description="Disenchant items to gather Enchanting materials.",
meta={goldtype="route",skillreq={enchanting=1},levelreq=1},
items={22447},
mopready=true,
},[[
step
Disenchant item level 60 or higher green armor and weapons
|tip You can disenchant old gear or buy some off the Auction House.
|tip These specifically come from The Burning Crusade greens.
|tip This means that greens from Classic will not drop them when disenchanted.
|tip You may sometimes get Greater or Lesser Planar Essence instead of Arcane Dust.
collect Lesser Planar Essence##22447 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Greater Planar Essence",{
expansion="mists",
description="Disenchant items to gather Enchanting materials.",
meta={goldtype="route",skillreq={enchanting=1},levelreq=1},
items={22446},
mopready=true,
},[[
step
Disenchant item level 60 or higher green armor and weapons
|tip You can disenchant old gear or buy some off the Auction House.
|tip These specifically come from The Burning Crusade greens.
|tip This means that greens from Classic will not drop them when disenchanted.
|tip You may sometimes get Greater or Lesser Planar Essence instead of Arcane Dust.
collect Greater Planar Essence##22446 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Large Prismatic Shard",{
expansion="mists",
description="Disenchant items to gather Enchanting materials.",
meta={goldtype="route",skillreq={enchanting=1},levelreq=1},
items={22449},
mopready=true,
},[[
step
Disenchant item level 67 or higher blue armor and weapons
|tip You can disenchant old gear or buy some off the Auction House.
collect Large Prismatic Shard##22449 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Small Prismatic Shard",{
expansion="mists",
description="Disenchant items to gather Enchanting materials.",
meta={goldtype="route",skillreq={enchanting=1},levelreq=1},
items={22448},
mopready=true,
},[[
step
Disenchant item level 58 or higher blue armor and weapons
|tip You can disenchant old gear or buy some off the Auction House.
|tip These specifically come from The Burning Crusade blues.
|tip This means that blues from Classic will not drop them when disenchanted.
collect Small Prismatic Shard##22448 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Hypnotic Dust",{
expansion="mists",
description="Hypnotic Dust can be gathered from Uncommon item level 272 to 333 items.",
meta={goldtype="route",skillreq={enchanting=1},levelreq=1},
items={52555},
mopready=true,
},[[
step
You can disenchant item level 272-333 Uncommon Items to gain Hypnotic Dust.
|tip These items are typically around equip level 77 to 85
collect Hypnotic Dust##52555 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Lesser Celestial Essence",{
expansion="mists",
description="Lesser Celestial Essence can be gathered from Uncommon item level 272 to 333 items.",
meta={goldtype="route",skillreq={enchanting=1},levelreq=1},
items={52718},
mopready=true,
},[[
step
You can disenchant item level 272-333 Uncommon Items to gain Lesser Celestial Essence.
|tip You get more Essence from armor, but it can be obtained from weapons as well.
collect Lesser Celestial Essence##52718 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Greater Celestial Essence",{
expansion="mists",
description="Greater Celestial Essence can be gathered from Uncommon item level 300 to 333 items.",
meta={goldtype="route",skillreq={enchanting=1},levelreq=1},
items={52719},
mopready=true,
},[[
step
You can disenchant item level 300-333 Uncommon Items to gain Greater Celestial Essence.
|tip You get more Essence from armor, but it can be obtained from weapons as well.
collect Greater Celestial Essence##52719 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Maelstrom Crystal",{
expansion="mists",
description="Maelstrom Crystal can be gathered from Epic item level 318 to 333 items.",
meta={goldtype="route",skillreq={enchanting=1},levelreq=1},
items={52722},
mopready=true,
},[[
step
You can disenchant item level 318-333 Epic Items to gain Maelstrom Crystal.
collect Maelstrom Crystal##52722 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Heavenly Shard",{
expansion="mists",
description="Heavenly Shard can be gathered from Rare item level 318 to 333 items.",
meta={goldtype="route",skillreq={enchanting=1},levelreq=1},
items={52722},
mopready=true,
},[[
step
You can disenchant item level 318-333 Rare Items to gain Heavenly Shard.
collect Heavenly Shard##52722 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Inscription\\Farming Guides\\Ashen Pigment",{
expansion="mists",
description="Whiptail can be gathered from Uldum.",
meta={goldtype="route",skillreq={inscription=1},levelreq=1},
items={61979},
mopready=true,
},[[
step
Mill 5 Azshara's Veil, 5 Cinderbloom, 5 Heartblossom, 5 Stormvine, 5 Twilight Jasmine, or 5 Whiptail for Pigments.
|tip Twilight Jasmine and Whiptail give the most Pigments, but are often more expensive.
cast Milling##51005
collect Ashen Pigment##61979 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Inscription\\Farming Guides\\Burning Embers",{
expansion="mists",
description="Whiptail can be gathered from Uldum.",
meta={goldtype="route",skillreq={inscription=1},levelreq=1},
items={61980},
mopready=true,
},[[
step
Mill 5 Azshara's Veil, 5 Cinderbloom, 5 Heartblossom, 5 Stormvine, 5 Twilight Jasmine, or 5 Whiptail for Burning Embers.
|tip Twilight Jasmine and Whiptail give the most Burning Embers, but are often more expensive.
cast Milling##51005
collect Burning Embers##61980 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Adamantite Ore",{
expansion="mists",
description="Adamantite Ore can be gathered in Nagrand.",
meta={goldtype="route",skillreq={mining=1},levelreq=64},
items={23425},
maps={"Nagrand"},
mopready=true,
},[[
step
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	49.90,71.01	48.62,71.28	48.51,75.60	46.76,77.91	42.77,74.39
path	42.08,76.76	41.94,80.24	41.11,84.55	38.45,83.23	36.21,82.30
path	33.57,82.12	31.13,80.54	28.19,78.49	27.67,72.30	28.58,69.31
path	28.20,63.62	27.06,62.92	26.75,57.07	23.44,56.18	20.07,55.07
path	19.35,47.46	20.31,41.40	21.27,38.46	23.05,33.49	26.76,32.99
path	31.77,28.76	31.71,24.26	30.40,20.66	35.78,15.50	36.87,18.62
path	39.06,20.24	41.69,21.71	42.81,19.43	50.53,20.11	54.00,21.00
path	56.63,24.36	60.66,33.11	64.21,35.14	66.06,36.31	66.14,32.27
path	67.70,35.36	70.24,37.57	74.08,37.81	72.33,43.08	73.43,46.30
path	73.01,50.47	72.77,56.93	74.94,58.55	71.99,61.95	72.67,64.73
path	72.21,67.00	71.71,71.30	72.96,76.49	70.91,75.13	68.49,75.92
path	66.66,79.00	63.17,76.97	61.93,79.13	58.74,80.27	56.19,79.78
path	54.59,81.99	51.75,79.79	49.42,82.67	47.62,81.24	48.39,79.11
click Adamantite Deposit##181556+
|tip They look like light blue mineral clusters around this path.
click Rich Adamantite Deposit##181569+
|tip They look like dark blue mineral clusters around this path.
|tip Enter caves along the path.
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
collect Adamantite Ore##23425 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Fel Iron Ore",{
expansion="mists",
description="Fel Iron Ore can be gathered in Hellfire Penninsula.",
meta={goldtype="route",skillreq={mining=1},levelreq=58},
items={23424},
maps={"Hellfire Peninsula"},
mopready=true,
},[[
step
map Hellfire Peninsula/0
path	65.97,48.02	69.02,46.87	70.80,50.94	70.25,54.41	70.27,59.32
path	72.23,60.13	74.08,63.37	76.97,62.92	78.97,66.32	78.85,70.21
path	79.70,74.48	80.75,77.99	77.91,75.80	77.13,73.33	76.82,69.54
path	75.53,67.17	71.66,67.33	69.41,67.29	68.38,60.74	65.36,60.83
path	65.69,64.45	63.25,69.06	62.72,72.99	62.49,79.96	58.89,76.64
path	57.05,73.97	57.06,81.30	56.40,82.14	55.54,83.79	52.24,83.83
path	49.82,83.52	46.85,84.82	42.98,79.36	42.26,76.62	44.54,73.42
path	47.44,71.34	50.85,69.85	47.41,66.63	44.75,68.48	45.62,61.55
path	47.89,59.49	49.89,56.45	49.95,61.42	51.38,61.68	52.93,58.38
path	55.41,56.25	56.22,53.50	58.62,52.98	62.69,50.44
click Fel Iron Deposit##181555+
|tip They look like green mineral clusters around this path.
|tip Enter caves along the path.
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
collect Fel Iron Ore##23424 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Khorium Ore",{
expansion="mists",
description="Khorium Ore can be gathered in Nagrand.",
meta={goldtype="route",skillreq={mining=1},levelreq=64},
items={23426},
maps={"Nagrand"},
mopready=true,
},[[
step
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	49.90,71.01	48.62,71.28	48.51,75.60	46.76,77.91	42.77,74.39
path	42.08,76.76	41.94,80.24	41.11,84.55	38.45,83.23	36.21,82.30
path	33.57,82.12	31.13,80.54	28.19,78.49	27.67,72.30	28.58,69.31
path	28.20,63.62	27.06,62.92	26.75,57.07	23.44,56.18	20.07,55.07
path	19.35,47.46	20.31,41.40	21.27,38.46	23.05,33.49	26.76,32.99
path	31.77,28.76	31.71,24.26	30.40,20.66	35.78,15.50	36.87,18.62
path	39.06,20.24	41.69,21.71	42.81,19.43	50.53,20.11	54.00,21.00
path	56.63,24.36	60.66,33.11	64.21,35.14	66.06,36.31	66.14,32.27
path	67.70,35.36	70.24,37.57	74.08,37.81	72.33,43.08	73.43,46.30
path	73.01,50.47	72.77,56.93	74.94,58.55	71.99,61.95	72.67,64.73
path	72.21,67.00	71.71,71.30	72.96,76.49	70.91,75.13	68.49,75.92
path	66.66,79.00	63.17,76.97	61.93,79.13	58.74,80.27	56.19,79.78
path	54.59,81.99	51.75,79.79	49.42,82.67	47.62,81.24	48.39,79.11
click Khorium Vein##181557+
|tip They look like dark purple mineral clusters around this path.
|tip Mine all veins you encounter so they might respawn as Korium Veins.
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
collect Khorium Ore##23426 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Cobalt Ore",{
expansion="mists",
description="Cobalt can be gathered from Howling Fjord.",
meta={goldtype="route",skillreq={mining=1},levelreq=68},
items={36909},
maps={"Howling Fjord"},
mopready=true,
},[[
step
map Howling Fjord/0
path follow smart; loop on; ants curved
path	62.24,38.40	63.07,41.42	63.77,44.33	65.07,46.85	65.95,49.99
path	65.47,51.84	66.77,53.34	66.99,56.22	68.17,56.81	68.22,58.55
path	67.42,61.43	66.93,62.92	65.20,65.61	64.49,67.54	64.27,69.82
path	64.00,71.83	65.17,72.57	66.65,74.03	67.17,75.22	67.85,75.50
path	68.69,76.65	69.47,75.47	70.01,73.15	70.12,70.66	70.93,69.55
path	72.23,67.74	73.93,67.56	76.01,67.84	77.18,66.44	77.17,63.42
path	76.71,61.35	75.63,59.18	74.86,56.68	75.11,53.88	75.75,52.62
path	76.15,50.91	77.59,50.42	79.22,49.34	80.40,47.64	80.44,45.88
path	78.79,44.50	77.53,42.78	76.17,40.85	74.06,39.02	72.84,38.87
path	71.02,37.09	70.56,34.57	70.76,32.23	71.99,29.32	73.29,27.03
path	74.48,25.10	75.12,22.81	74.22,21.32	73.50,20.11	73.65,18.35
path	73.46,16.35	72.60,15.11	70.32,12.12	68.85,10.78	67.15,10.13
path	65.65,9.71	64.56,12.64	64.09,14.33	64.19,16.42	63.22,19.28
path	61.95,20.11	60.43,20.26	58.19,21.42	57.37,20.43	58.06,15.77
path	58.35,12.87	57.89,11.23	56.19,10.49	53.95,9.67	53.32,7.34
path	50.44,7.72	49.96,9.54	48.06,11.09	47.61,14.35	46.34,16.30
path	45.11,16.76	42.86,15.76	41.25,15.66	39.95,18.02	39.01,18.97
path	37.72,19.53	36.15,18.54	35.25,16.71	34.42,14.04	32.74,12.27
path	31.94,13.09	30.73,12.46	29.39,11.21	27.26,11.67	25.33,12.39
path	23.77,13.71	24.66,16.85	25.79,20.30	26.12,22.28	26.20,26.21
path	26.42,29.01	27.57,31.54	28.62,33.43	29.43,34.27	30.74,36.27
path	32.54,37.36	34.28,36.57	38.77,35.98	42.03,37.88	44.65,40.18
path	48.10,40.27	52.12,40.35	53.86,39.72	56.24,37.91	58.51,36.22
path	60.26,36.57
click Cobalt Deposit##189978+
click Rich Cobalt Deposit##189979+
|tip Gather Cobalt along the path.
collect Cobalt Ore##36909 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Saronite Ore",{
expansion="mists",
description="Saronite can be gathered from Sholazar Basin.",
meta={goldtype="route",skillreq={mining=1},levelreq=76},
items={36912},
maps={"Sholazar Basin"},
mopready=true,
},[[
step
map Sholazar Basin/0
path follow smart; loop on; ants curved
path	47.55,60.54	45.98,63.10	47.07,66.19	48.50,67.57	48.06,72.89
path	50.18,79.08	51.11,83.87	50.24,87.27	47.95,87.13	45.88,86.92
path	43.83,87.15	40.80,87.29	38.41,86.20	37.55,82.52	39.01,79.09
path	39.97,76.03	39.89,72.63	38.87,69.59	37.13,68.11	34.77,68.38
path	34.09,71.52	32.47,76.06	30.69,80.02	27.90,83.52	24.95,83.83
path	22.95,82.59	21.27,78.60	20.64,74.21	20.80,69.62	20.99,66.37
path	21.63,60.90	21.93,56.40	23.34,52.96	26.15,53.68	29.38,55.20
path	32.17,55.87	35.01,55.74	37.57,52.39	36.47,49.33	34.26,47.11
path	31.92,44.99	29.37,43.15	30.16,39.22	32.21,35.48	34.85,33.69
path	37.60,32.87	39.99,32.13	41.50,33.05	43.22,37.70	45.00,41.85
path	47.30,42.65	50.33,42.48	52.24,41.57	53.34,38.94	53.09,35.64
path	51.58,32.70	49.27,30.10	47.00,28.68	45.35,26.84	43.66,24.20
path	43.30,21.65	45.46,21.34	48.34,21.59	51.18,22.09	55.10,24.48
path	58.23,26.57	61.53,30.34	63.92,33.33	66.01,36.41	66.75,39.64
path	64.98,42.63	63.15,45.78	60.70,48.14	58.67,48.97	57.04,50.77
path	56.86,53.99	58.78,55.73	61.38,56.54	64.12,55.19	67.02,54.31
path	69.67,56.56	71.72,60.58	75.27,61.51	74.93,65.10	73.11,68.76
path	71.40,71.86	68.77,76.48	66.01,80.90	63.54,80.54	60.96,79.85
path	58.85,81.83	56.78,85.19	55.87,83.09	56.40,78.00	56.32,71.21
path	54.35,65.42	51.00,63.86
click Saronite Deposit##189980+
click Rich Saronite Deposit##189981+
|tip Gather Saronite along the path.
collect Saronite Ore##36912 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Titanium Ore",{
expansion="mists",
description="Titanium can be gathered from Icecrown.",
meta={goldtype="route",skillreq={mining=1},levelreq=77},
items={36910},
maps={"Icecrown"},
mopready=true,
},[[
step
map Icecrown/0
path follow smart; loop on; ants curved
path	40.72,32.54	38.91,34.46	38.45,36.85	38.74,38.93	37.95,40.58
path	37.69,42.84	40.48,43.82	42.31,43.02	43.39,45.10	44.32,47.62
path	45.99,48.67	48.72,49.59	48.51,52.39	48.39,55.80	48.85,59.06
path	50.06,62.42	52.11,64.82	53.99,66.79	54.57,69.47	56.77,69.50
path	58.75,67.57	60.62,66.55	61.93,66.66	64.12,69.23	65.52,71.03
path	66.93,72.46	68.28,72.63	70.19,70.88	73.14,69.30	75.35,69.39
path	76.47,68.99	78.24,68.07	79.93,68.59	81.11,66.87	81.37,64.15
path	80.64,60.48	79.47,59.12	78.26,57.98	78.38,55.31	78.03,53.01
path	76.83,51.18	75.49,49.44	75.46,47.21	75.39,44.66	74.42,41.83
path	72.87,40.61	70.72,40.89	68.48,40.75	67.50,39.53	66.18,36.82
path	64.76,35.59	62.87,34.59	61.85,32.55	60.74,30.60	58.80,29.01
path	57.00,28.65	55.14,29.01	54.26,30.31	53.42,32.58	52.40,33.45
path	50.35,32.75	48.59,31.00	46.99,32.89	44.70,34.15	42.85,33.26
click Titanium Vein##191133+
|tip Gather Titanium along the path.
|tip These are a rare spawn, so mine other nodes as you see them to get them to spawn.
collect Titanium Ore##36910 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Elementium (Twilight Highlands)",{
expansion="mists",
description="Elementium can be gathered from Twilight Highlands. This route is less effecient than Uldum but often has less competition.",
meta={goldtype="route",skillreq={mining=1},levelreq=84},
items={52185},
maps={"Twilight Highlands"},
mopready=true,
},[[
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	67.12,53.71	66.14,50.02	65.32,47.07	63.19,43.30	61.37,40.30
path	57.72,38.31	54.89,37.76	52.17,40.03	50.30,42.97	45.84,49.71
path	43.99,52.61	42.07,54.66	39.00,59.98	38.30,62.37	38.09,66.30
path	38.80,69.49	40.30,74.96	42.18,76.70	44.22,77.22	45.48,79.26
path	46.79,81.59	49.33,82.52	51.97,81.92	54.74,81.61	57.05,79.84
path	59.27,77.24	59.82,73.45	60.56,71.34	62.55,68.61	65.27,68.74
path	66.76,71.13	68.14,74.02	67.67,77.62	65.97,80.72	63.98,83.07
path	61.10,85.08	58.48,86.62	55.40,86.44	52.38,87.05	49.45,86.26
path	46.20,85.56	43.32,86.32	40.64,87.78	37.90,88.35	36.61,86.84
path	36.05,84.16	34.20,82.17	32.33,79.21	30.43,73.67	29.60,69.58
path	31.49,67.23	34.04,65.18	35.81,62.68	37.65,59.14	38.56,55.60
path	38.27,49.23	37.53,43.75	37.42,39.31	39.60,35.31	41.42,31.65
path	41.88,28.18	40.70,25.49	39.36,22.58	40.81,20.45	43.38,20.38
path	47.97,20.48	51.88,22.44	55.55,24.46	58.41,26.99	61.48,30.78
path	64.76,34.88	67.50,38.35	68.75,42.37	69.74,47.06	71.15,50.40
click Elementium Vein##202738+
click Rich Elementium Vein##202741+
|tip Gather Elementium along the path.
collect Elementium Ore##52185 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Elementium (Uldum)",{
expansion="mists",
description="Elementium can be gathered from Uldum. This has the most potential Elementium per hour but is often more contested.",
meta={goldtype="route",skillreq={mining=1},levelreq=83},
items={52185},
maps={"Uldum"},
mopready=true,
},[[
step
map Uldum/0
path follow smart; loop on; ants curved
path	56.86,12.78	54.97,12.91	53.07,12.92	50.43,12.68	49.30,12.15
path	47.71,10.28	46.16,8.31	44.09,7.57	41.61,7.76	39.70,9.33
path	39.95,10.62	41.79,13.78	40.84,15.40	39.40,16.86	38.27,18.67
path	35.87,17.32	33.40,14.72	32.03,13.94	30.76,15.21	30.34,17.27
path	31.13,20.39	31.91,23.31	31.65,26.44	30.89,28.73	29.45,32.01
path	28.80,34.40	28.52,36.72	28.04,39.92	27.38,43.54	26.56,46.54
path	25.41,49.01	23.28,51.15	20.81,53.14	18.60,55.58	17.41,57.24
path	16.15,58.95	15.84,61.02	17.62,62.94	20.17,64.10	22.49,64.26
path	24.03,63.86	26.77,61.47	28.59,59.39	30.98,56.52	33.93,53.95
path	37.25,51.16	39.09,50.02	40.56,50.79	39.41,53.93	38.94,56.75
path	38.52,59.24	38.50,62.47	39.31,64.69	41.01,65.50	43.18,66.16
path	45.86,66.26	48.99,65.26	51.88,62.72	53.94,60.09	56.31,57.10
path	57.53,59.17	57.99,62.49	60.00,62.92	62.73,62.72	65.45,60.59
path	67.20,60.76	69.19,62.16	70.45,64.64	71.28,67.82	72.01,70.64
path	72.95,72.90	74.33,72.01	76.72,68.83	78.55,67.13	80.15,65.55
path	81.75,63.19	81.58,60.80	80.98,59.23	81.29,55.02	81.97,51.35
path	81.36,48.60	80.24,46.39	78.92,45.21	77.26,43.91	75.86,42.46
path	74.21,41.32	72.17,39.38	70.90,37.35	69.60,35.47	69.19,33.01
path	69.21,29.97	69.24,26.94	69.11,23.70	68.85,20.69	68.10,18.82
path	67.38,16.97	66.29,15.85	64.63,15.09	62.95,14.12	61.62,14.89
path	60.14,13.67
click Elementium Vein##202738+
click Rich Elementium Vein##202741+
|tip Gather Elementium along the path.
collect Elementium Ore##52185 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Obsidium",{
expansion="mists",
description="Obsidium can be gathered from Mount Hyjal.",
meta={goldtype="route",skillreq={mining=1},levelreq=80},
items={53038},
maps={"Mount Hyjal"},
mopready=true,
},[[
step
map Mount Hyjal/0
path follow smart; loop on; ants curved; dist 60
path	68.25,23.92	59.27,31.64	57.02,38.93	57.92,17.54	51.54,16.91
path	52.67,35.51	48.76,36.55	44.01,24.52	39.85,32.52	36.53,21.72
path	32.31,25.26	34.68,36.93	43.54,42.61	36.21,44.91	25.30,37.84
path	24.13,31.91	11.87,31.61	14.33,47.06	19.03,58.53	25.60,62.06
path	31.94,46.76	33.14,65.28	36.97,53.51	42.35,55.91	33.84,65.04
path	31.36,76.55	33.81,98.24	57.12,80.93	59.24,84.55	59.82,77.85
path	55.88,74.71	59.83,71.63	49.11,51.62	61.91,60.51	67.11,53.52
path	74.39,58.83	71.96,68.51	77.33,63.21	83.03,64.23	89.92,49.81
path	80.94,51.84	77.55,59.55
click Obsidium Deposit##202736+
click Rich Obsidium Deposit##202739+
|tip Gather Obsidium along the path.
collect Obsidium Ore##53038 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Pyrite",{
expansion="mists",
description="Pyrite can be gathered from Uldum.",
meta={goldtype="route",skillreq={mining=1},levelreq=83},
items={52183},
maps={"Uldum"},
mopready=true,
},[[
step
map Uldum/0
path follow smart; loop on; ants curved
path	56.86,12.78	54.97,12.91	53.07,12.92	50.43,12.68	49.30,12.15
path	47.71,10.28	46.16,8.31	44.09,7.57	41.61,7.76	39.70,9.33
path	39.95,10.62	41.79,13.78	40.84,15.40	39.40,16.86	38.27,18.67
path	35.87,17.32	33.40,14.72	32.03,13.94	30.76,15.21	30.34,17.27
path	31.13,20.39	31.91,23.31	31.65,26.44	30.89,28.73	29.45,32.01
path	28.80,34.40	28.52,36.72	28.04,39.92	27.38,43.54	26.56,46.54
path	25.41,49.01	23.28,51.15	20.81,53.14	18.60,55.58	17.41,57.24
path	16.15,58.95	15.84,61.02	17.62,62.94	20.17,64.10	22.49,64.26
path	24.03,63.86	26.77,61.47	28.59,59.39	30.98,56.52	33.93,53.95
path	37.25,51.16	39.09,50.02	40.56,50.79	39.41,53.93	38.94,56.75
path	38.52,59.24	38.50,62.47	39.31,64.69	41.01,65.50	43.18,66.16
path	45.86,66.26	48.99,65.26	51.88,62.72	53.94,60.09	56.31,57.10
path	57.53,59.17	57.99,62.49	60.00,62.92	62.73,62.72	65.45,60.59
path	67.20,60.76	69.19,62.16	70.45,64.64	71.28,67.82	72.01,70.64
path	72.95,72.90	74.33,72.01	76.72,68.83	78.55,67.13	80.15,65.55
path	81.75,63.19	81.58,60.80	80.98,59.23	81.29,55.02	81.97,51.35
path	81.36,48.60	80.24,46.39	78.92,45.21	77.26,43.91	75.86,42.46
path	74.21,41.32	72.17,39.38	70.90,37.35	69.60,35.47	69.19,33.01
path	69.21,29.97	69.24,26.94	69.11,23.70	68.85,20.69	68.10,18.82
path	67.38,16.97	66.29,15.85	64.63,15.09	62.95,14.12	61.62,14.89
path	60.14,13.67
click Pyrite Deposit##202737+
click Rich Pyrite Deposit##202740+
|tip Gather Pyrite along the path.
|tip Pyrite Deposits are rare and you may need to mine from other nodes to get it to spawn.
collect Pyrite Ore##52183 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Shadow Pearl",{
expansion="mists",
description="Shadow Pearls can be gathered in Zangarmarsh.",
meta={goldtype="route",levelreq=60},
items={24479},
maps={"Zangarmarsh"},
mopready=true,
},[[
step
Kill Bloodscale enemies around this area
use the Jaggal Clam##24476+
collect Shadow Pearl##24479 |n |goto Zangarmarsh/0 27.67,41.93
|tip These have a very low drop rate.
You can find more around: |notinsticky
[26.26,46.37]
[25.96,42.41]
[25.01,38.06]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Carnelian",{
expansion="mists",
description="Carnelian can be prospected from ore.",
meta={goldtype="route",skillreq={jewelcrafting=425},levelreq=1},
items={61980},
mopready=true,
},[[
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for a chance at Carnelian.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
|tip You need 425 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
cast Prospecting##31252
collect Carnelian##61980 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Nightstone",{
expansion="mists",
description="Nightstone can be prospected from ore.",
meta={goldtype="route",skillreq={jewelcrafting=425},levelreq=1},
items={52180},
mopready=true,
},[[
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for a chance at Nightstone.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
|tip You need 425 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
cast Prospecting##31252
collect Nightstone##52180 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Hessonite",{
expansion="mists",
description="Hessonite can be prospected from ore.",
meta={goldtype="route",skillreq={jewelcrafting=425},levelreq=1},
items={52181},
mopready=true,
},[[
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for a chance at Hessonite.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
|tip You need 425 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
cast Prospecting##31252
collect Hessonite##52181 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Zephyrite",{
expansion="mists",
description="Zephyrite can be prospected from ore.",
meta={goldtype="route",skillreq={jewelcrafting=425},levelreq=1},
items={52178},
mopready=true,
},[[
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for Zephyrite.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
|tip You need 425 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
cast Prospecting##31252
collect Zephyrite##52178 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Alicite",{
expansion="mists",
description="Zephyrite can be prospected from ore.",
meta={goldtype="route",skillreq={jewelcrafting=425},levelreq=1},
items={52179},
mopready=true,
},[[
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for Alicite.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
|tip You need 425 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
cast Prospecting##31252
collect Alicite##52179 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Jasper",{
expansion="mists",
description="Jasper can be prospected from ore.",
meta={goldtype="route",skillreq={jewelcrafting=425},levelreq=1},
items={52182},
mopready=true,
},[[
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for Jasper.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
|tip You need 425 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
cast Prospecting##31252
collect Jasper##52182 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Inferno Ruby",{
expansion="mists",
description="Inferno Ruby can be prospected from ore.",
meta={goldtype="route",skillreq={jewelcrafting=425},levelreq=1},
items={52190},
mopready=true,
},[[
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for Inferno Ruby.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
|tip You need 425 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
cast Prospecting##31252
collect Inferno Ruby##52190 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Dream Emerald",{
expansion="mists",
description="Dream Emerald can be prospected from ore.",
meta={goldtype="route",skillreq={jewelcrafting=425},levelreq=1},
items={52192},
mopready=true,
},[[
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for Dream Emerald.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
|tip You need 425 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
cast Prospecting##31252
collect Dream Emerald##52192 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Demonseye",{
expansion="mists",
description="Demonseye can be prospected from ore.",
meta={goldtype="route",skillreq={jewelcrafting=425},levelreq=1},
items={52194},
mopready=true,
},[[
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for Demonseye.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
|tip You need 425 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
cast Prospecting##31252
collect Demonseye##52194 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Amberjewel",{
expansion="mists",
description="Amberjewel can be prospected from ore.",
meta={goldtype="route",skillreq={jewelcrafting=425},levelreq=1},
items={52195},
mopready=true,
},[[
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for Amberjewel.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
|tip You need 425 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
cast Prospecting##31252
collect Amberjewel##52195 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Ocean Sapphire",{
expansion="mists",
description="Ocean Sapphire can be prospected from ore.",
meta={goldtype="route",skillreq={jewelcrafting=425},levelreq=1},
items={52191},
mopready=true,
},[[
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for Ocean Sapphire.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
|tip You need 425 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
cast Prospecting##31252
collect Ocean Sapphire##52191 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Ember Topaz",{
expansion="mists",
description="Ember Topaz can be prospected from ore.",
meta={goldtype="route",skillreq={jewelcrafting=425},levelreq=1},
items={52191},
mopready=true,
},[[
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for Ember Topaz.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
|tip You need 425 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
cast Prospecting##31252
collect Ember Topaz##52191 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Jaggal Pearl",{
expansion="mists",
description="Jaggal Pearls can be farmed in Zangarmarsh.",
meta={goldtype="route",levelreq=60},
items={24478},
maps={"Zangarmarsh"},
mopready=true,
},[[
step
Kill Bloodscale enemies around this area
collect Jaggal Clam##24476 |n
|tip The best place for these is farming The Slave Pens dungeon.
use Jaggal Clam##24476
collect Jaggal Pearl##24478 |goto Zangarmarsh/0 26.92,39.35 |n
|tip They have a chance to drop from each clam.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Barbed Gill Trout",{
expansion="mists",
description="Barbed Gill Trout can be fished in Zangarmarsh.",
meta={goldtype="route",skillreq={fishing=300},levelreq=60},
items={27422},
maps={"Zangarmarsh"},
mopready=true,
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
collect Barbed Gill Trout##27422 |goto Zangarmarsh/0 78.95,71.48 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Spotted Feltail",{
expansion="mists",
description="Spotted Feltail can be fished in Zangarmarsh.",
meta={goldtype="route",skillreq={fishing=300},levelreq=60},
items={27425},
maps={"Zangarmarsh"},
mopready=true,
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
collect Spotted Feltail##27425 |goto Zangarmarsh/0 78.95,71.48 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Zangarian Sporefish",{
expansion="mists",
description="Zangarian Sporefish can be fished in Zangarmarsh.",
meta={goldtype="route",skillreq={fishing=300},levelreq=60},
items={27429},
maps={"Zangarmarsh"},
mopready=true,
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
collect Zangarian Sporefish##27429 |goto Zangarmarsh/0 78.95,71.48 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Furious Crawdad",{
expansion="mists",
description="Furious Crawdad can be fished in Terokkar Forest from Highland Mixed Schools.",
meta={goldtype="route",skillreq={fishing=300},levelreq=62},
items={27439},
maps={"Terokkar Forest"},
mopready=true,
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
label "Start_Farming_Furious_Crawdad"
map Terokkar Forest/0
path follow smart; loop off; ants curved; dist 30
path	45.14,40.51	47.04,40.58	48.00,40.31	49.49,38.17	53.27,41.35
path	55.55,45.31	58.31,48.49	60.07,49.77	61.32,54.09	60.24,58.34
path	59.59,60.78	59.18,63.24	60.50,68.35	61.30,71.46	62.40,71.65
path	63.49,73.35	63.38,75.85	63.64,78.75	64.59,82.30	66.72,83.02
path	68.04,82.73	68.64,80.39	68.11,77.15	66.71,74.38
cast Fishing##33095
|tip Fish in Highland Mixed Schools.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
|tip When flying near Stonebreaker Hold, don't get too close or you will be shot down. |only if Alliance
|tip When flying near Allerian Stronghold, don't get too close or you will be shot down. |only if Horde
collect Furious Crawdad##27439 |n
'|goto Terokkar Forest/0 66.71,74.38 < 30 |c |noway
step
map Terokkar Forest/0
path follow smart; loop off; ants curved; dist 30
path	66.71,74.38	68.11,77.15	68.64,80.39	68.04,82.73	66.72,83.02
path	64.59,82.30	63.64,78.75	63.38,75.85	63.49,73.35	62.40,71.65
path	61.30,71.46	60.50,68.35	59.18,63.24	59.59,60.78	60.24,58.34
path	61.32,54.09	60.07,49.77	58.31,48.49	55.55,45.31	53.27,41.35
path	49.49,38.17	48.00,40.31	47.04,40.58	45.14,40.51
cast Fishing##33095
|tip Fish in Highland Mixed Schools.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
|tip When flying near Stonebreaker Hold, don't get too close or you will be shot down. |only if Alliance
|tip When flying near Allerian Stronghold, don't get too close or you will be shot down. |only if Horde
collect Furious Crawdad##27439 |n
'|goto Terokkar Forest/0 45.14,40.51 < 30 |c |noway |next "Start_Farming_Furious_Crawdad"
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Bloodfin Catfish",{
expansion="mists",
description="Bloodfin Catfish can be fished in Deadwind Pass.",
meta={goldtype="route",skillreq={fishing=1},levelreq=55},
items={33823},
maps={"Deadwind Pass"},
mopready=true,
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
collect Bloodfin Catfish##33823 |goto Deadwind Pass/0 52.79,73.82 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Crescent-Tail Skullfish",{
expansion="mists",
description="Crescent-Tail Skullfish can be fished in Deadwind Pass.",
meta={goldtype="route",skillreq={fishing=1},levelreq=55},
items={33824},
maps={"Deadwind Pass"},
mopready=true,
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
collect Crescent-Tail Skullfish##33824 |goto Deadwind Pass/0 52.79,73.82 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Albino Cavefish",{
expansion="mists",
description="Albino Cavefish can be fished from Deepholm.",
meta={goldtype="route",skillreq={fishing=400},levelreq=82},
items={53065},
maps={"Deepholm"},
mopready=true,
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
label "albino_route_1"
Fish in any Albino Cavefish Schools you find |cast Fishing##131474
Follow the path, fishing at each pool |goto Deepholm/0 73.80,32.10 < 20 |noway |c |or |next "albino_route_2"
map Deepholm
path follow smart; loop off; ants curved; dist 20
path	69.90,41.90	70.50,45.60	71.10,48.80
path	73.90,50.90	76.50,52.70	77.50,49.10
path	77.40,44.00	74.20,42.50	76.00,39.70
path	75.70,35.80	73.80,32.10
collect Albino Cavefish##53065 |n
'|confirm
step
label "albino_route_2"
Fish in any Albino Cavefish Schools you find |cast Fishing##131474
Follow the path, fishing at each pool |goto Deepholm/0 69.90,41.90 < 20 |noway |c |or |next "albino_route_1"
map Deepholm
path follow smart; loop off; ants curved; dist 20
path	73.80,32.10	75.70,35.80	76.00,39.70
path	74.20,42.50	77.40,44.00	77.50,49.10
path	76.50,52.70	73.90,50.90	71.10,48.80
path	70.50,45.60	69.90,41.90
collect Albino Cavefish##53065 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Algaefin Rockfish",{
expansion="mists",
description="Algaefin Rockfish can be fished from open coastal water.",
meta={goldtype="route",skillreq={fishing=400},levelreq=84},
items={53071},
maps={"Twilight Highlands"},
mopready=true,
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
Fish in open coastal water in any Cataclysm Zone |cast Fishing##131474
collect Algaefin Rockfish##53071 |n |goto Twilight Highlands/0 73.80,43.90
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Striped Lurker",{
expansion="mists",
description="Striped Lurker can be fished from open water.",
meta={goldtype="route",skillreq={fishing=400},levelreq=84},
items={53067},
maps={"Twilight Highlands"},
mopready=true,
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
Fish in open water in any Cataclysm Zone |cast Fishing##131474
collect Striped Lurker##53067 |n |goto Twilight Highlands/0 65.80,43.30
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Blackbelly Mudfish",{
expansion="mists",
description="Blackbelly Mudfish can be fished from schools in Uldum.",
meta={goldtype="route",skillreq={fishing=400},levelreq=83},
items={53065},
maps={"Uldum"},
mopready=true,
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
Fish in any Blackbelly Mudfish Schools you find |cast Fishing##131474
map Uldum/0
path follow smart; loop on; ants curved; dist 60
path	58.42,31.33	56.23,22.66	57.81,14.55	61.51,14.04	57.13,44.73
path	60.51,58.32	69.82,76.52	65.93,75.92	60.02,83.22	59.00,58.82
path	55.30,45.81	52.01,45.61	50.80,42.51	50.80,36.01
collect Blackbelly Mudfish##53065 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Sharptooth",{
expansion="mists",
description="Sharptooth can be fished from open water.",
meta={goldtype="route",skillreq={fishing=400},levelreq=84},
items={53062},
maps={"Twilight Highlands"},
mopready=true,
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
Fish in open water in any Cataclysm Zone |cast Fishing##131474
collect Sharptooth##53062 |n |goto Twilight Highlands/0 65.80,43.30
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Mountain Trout",{
expansion="mists",
description="Mountain Trout can be fished from Hyjal.",
meta={goldtype="route",skillreq={fishing=400},levelreq=80},
items={53063},
maps={"Mount Hyjal"},
mopready=true,
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
label "mountain_route_1"
Fish in any Mountain Trout Schools you find |cast Fishing##131474
Follow the path, fishing at each pool |goto Mount Hyjal/0 61.12,24.00 < 20 |noway |c |or |next "mountain_route_2"
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	62.62,26.69	61.67,26.75	60.12,28.16	59.51,24.86	61.12,24.00
collect Mountain Trout##53063 |n
'|confirm
step
label "mountain_route_2"
Fish in any Mountain Trout Schools you find |cast Fishing##131474
Follow the path, fishing at each pool |goto Mount Hyjal/0 52.33,27.50 < 20 |noway |c |or |next "mountain_route_1"
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	51.57,23.02	49.23,23.17	49.00,24.93	45.85,23.60	42.05,24.89
path	39.64,27.28	40.26,31.18	43.42,30.73	47.24,32.58	50.29,30.17
path	52.33,27.50
collect Mountain Trout##53063 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Lavascale Catfish",{
expansion="mists",
description="Lavascale Catfish can be fished from open water in Uldum or Deepholm.",
meta={goldtype="route",skillreq={fishing=400},levelreq=83},
items={53068},
maps={"Uldum"},
mopready=true,
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
Fish in open water in Uldum or Deepholm |cast Fishing##131474
collect Lavascale Catfish##53068 |n |goto Uldum/0 54.36,37.70
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Fathom Eel",{
expansion="mists",
description="Fathom Eel can be fished from Uldum.",
meta={goldtype="route",skillreq={fishing=400},levelreq=83},
items={53070},
maps={"Uldum"},
mopready=true,
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
Fish in any Fathom Eel Swarms you find |cast Fishing##131474
map Uldum/0
path follow smart; loop on; ants straight; dist 30
path	14.98,62.69	16.65,65.04	18.70,65.74	21.72,65.75	23.79,67.55
path	26.37,68.29	28.52,67.39	30.77,69.84	34.05,70.91	36.86,72.71
path	40.14,73.90	42.28,77.19	46.05,88.59	48.67,89.92	53.31,88.13
path	58.79,86.34	61.35,84.35	63.22,81.71	65.67,79.90	68.06,78.96
path	71.42,78.84	74.49,76.23	81.13,67.65	85.27,61.05	85.55,56.82
path	86.37,50.47	83.43,55.21
collect Fathom Eel##53070 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Deepsea Sagefish",{
expansion="mists",
description="Deepsea Sagefish can be fished from schools in Twilight Highlands",
meta={goldtype="route",skillreq={fishing=400},levelreq=84},
items={53070},
maps={"Twilight Highlands"},
mopready=true,
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
Fish in any Deepsea Sagefish Schools you find |cast Fishing##131474
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	59.05,90.46	62.07,90.67	65.57,88.09	67.66,85.17	71.69,81.21
path	72.85,75.18	   78.19,79.14	82.00,82.42	83.09,77.03	82.21,72.22
path	78.58,70.89	78.88,64.97	76.53,60.42	73.84,61.94	70.49,60.67
path	68.73,58.31	70.99,55.56	72.58,57.34	76.62,57.12	78.70,49.06
path	75.92,47.25	72.91,41.72	72.02,35.75
collect Deepsea Sagefish##53070 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Highland Guppy",{
expansion="mists",
description="Highland Guppy can be fished from schools in Twilight Highlands",
meta={goldtype="route",skillreq={fishing=400},levelreq=84},
items={53064},
maps={"Twilight Highlands"},
mopready=true,
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
Fish in any Highland Guppy Schools you find |cast Fishing##131474
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	59.05,90.46	62.07,90.67	65.57,88.09	67.66,85.17	71.69,81.21
path	72.85,75.18	   78.19,79.14	82.00,82.42	83.09,77.03	82.21,72.22
path	78.58,70.89	78.88,64.97	76.53,60.42	73.84,61.94	70.49,60.67
path	68.73,58.31	70.99,55.56	72.58,57.34	76.62,57.12	78.70,49.06
path	75.92,47.25	72.91,41.72	72.02,35.75
collect Highland Guppy##53064 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Pygmy Suckerfish",{
expansion="mists",
description="Pygmy Suckerfish can be fished from schools in Crystalsong Forest",
meta={goldtype="route",skillreq={fishing=400},levelreq=77},
items={40199},
maps={"Crystalsong Forest"},
mopready=true,
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
label "route_1"
cast Fishing##131474
Follow the path, fishing at each pool
map Crystalsong Forest/0
path follow smart; loop off; ants curved; dist 20
path	17.70,21.30	21.40,30.50	24.60,42.10
path	33.00,45.50	35.60,49.40	40.20,54.90
path	49.40,56.60
collect Pygmy Suckerfish##40199 |n
'|goto Crystalsong Forest/0 49.40,56.60 < 20 |noway |c |or |next "route_2"
step
label "route_2"
cast Fishing##131474
Follow the path, fishing at each pool
map Crystalsong Forest/0
path follow smart; loop off; ants curved; dist 20
path	49.40,56.60	40.20,54.90	35.60,49.40
path	33.00,45.50	24.60,42.10	21.40,30.50
path	17.70,21.30
collect Pygmy Suckerfish##40199 |n
'|goto Crystalsong Forest/0 17.70,21.30 < 20 |noway |c |or |next "route_1"
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Bat Flesh",{
expansion="mists",
description="Bat Flesh can be farmed in Ghostlands.",
meta={goldtype="route",levelreq=10},
items={27669},
maps={"Ghostlands"},
mopready=true,
},[[
step
map Ghostlands/0
path follow smart; loop on; ants curved; dist 30
path	40.53,66.35	40.83,70.18	40.57,72.68	38.84,72.10	37.18,69.79
path	34.71,68.90	33.08,66.46	32.19,64.27	34.19,62.61	33.92,58.51
path	31.76,53.44	29.94,52.32	29.11,52.58	28.13,52.99	26.72,52.73
path	25.32,51.78	24.85,49.40	25.12,46.91	24.62,44.93	24.38,43.25
path	24.48,41.68	24.29,39.91	25.65,39.62	27.34,38.74	27.99,39.65
path	28.81,41.11	29.73,39.07	30.40,36.94	31.25,36.31	32.28,38.14
path	33.83,38.87	35.33,40.52	37.74,41.01	40.04,41.51	41.88,41.97
path	43.87,43.04	45.57,44.20	45.96,45.70	45.18,47.38	44.27,50.14
path	44.68,51.59	43.91,55.55	43.46,58.84	43.22,62.21	42.62,65.23
Kill Bat enemies along the path
collect Bat Flesh##27669 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Bear Flank",{
expansion="mists",
description="Bear Flank can be farmed in Western Plaguelands.",
meta={goldtype="route",levelreq=35},
items={35562},
maps={"Western Plaguelands"},
mopready=true,
},[[
step
map Western Plaguelands/0
path follow smart; loop on; ants curved; dist 30
path	36.80,66.75	35.58,66.64	34.26,65.87	33.43,64.40	32.63,62.94
path	31.98,62.09	30.91,61.07	30.26,59.86	30.13,58.83	30.62,57.41
path	31.20,56.87	32.04,57.09	32.93,57.52	33.71,58.12	34.33,59.41
path	34.32,60.78	34.13,61.80	34.90,62.71	35.63,63.27	36.53,64.01
path	37.07,64.94	37.16,66.00	36.78,67.39	36.27,67.25	35.42,66.33
Kill Black Bear enemies around this area
collect Bear Flank##35562 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Buzzard Meat",{
expansion="mists",
description="Buzzard Meat can be farmed in Hellfire Peninsula.",
meta={goldtype="route",levelreq=58},
items={27671},
maps={"Hellfire Peninsula"},
mopready=true,
},[[
step
Kill Bonestripper enemies around this area
collect Buzzard Meat##27671 |goto Hellfire Peninsula/0 61.91,67.95 |n
You can find more around:
[29.16,54.47]
[20.70,52.31]
[24.86,45.43]
[31.72,35.43]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Chunk o' Basilisk",{
expansion="mists",
description="Chunk o' Basilisk can be farmed in Zangarmarsh.",
meta={goldtype="route",levelreq=60},
items={27677},
maps={"Zangarmarsh"},
mopready=true,
},[[
step
label "Start_Farming_Chunk_o_Basilisk"
map Zangarmarsh/0
path follow smart; loop on; ants curved; dist 30
path	74.34,28.90	76.41,29.92	78.43,29.84	80.62,29.39	82.47,28.94
path	84.11,28.57	85.76,28.36	87.19,27.88	87.92,29.78	87.92,33.15
path	88.03,36.74
Kill Marshrock enemies around this area
collect Chunk o' Basilisk##27677 |n
'|goto Zangarmarsh/0 88.03,36.74 < 30 |c |noway
step
map Zangarmarsh/0
path follow smart; loop on; ants curved; dist 30
path	88.03,36.74	87.92,33.15	87.92,29.78	87.19,27.88	85.76,28.36
path	84.11,28.57	82.47,28.94	80.62,29.39	78.43,29.84	76.41,29.92
path	74.34,28.90
Kill Marshrock enemies around this area
collect Chunk o' Basilisk##27677 |n
'|goto Zangarmarsh/0 74.34,28.90 < 30 |c |noway |next "Start_Farming_Chunk_o_Basilisk"
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Clefthoof Meat",{
expansion="mists",
description="Clefthoof Meat can be farmed in Nagrand.",
meta={goldtype="route",levelreq=64},
items={27678},
maps={"Nagrand"},
mopready=true,
},[[
step
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	58.45,67.47	59.46,65.82	59.28,64.08	58.44,62.74	58.67,61.45
path	59.38,59.90	60.48,59.79	62.75,57.86	61.61,56.14	61.66,52.97
path	60.11,50.39	60.05,49.15	60.95,47.36	62.22,43.24	62.00,41.81
path	61.69,39.46	64.80,41.04	66.76,40.95	68.57,40.24	70.65,40.99
path	71.34,41.19	72.39,41.99	72.38,43.99	71.76,44.60	71.09,45.01
path	70.33,46.05	70.04,47.30	69.80,48.58	69.83,49.92	69.28,51.30
path	69.39,53.83	69.19,55.50	69.64,57.19	70.39,58.90	70.22,61.14
path	69.42,62.04	68.09,61.87	66.96,62.66	66.80,63.77	67.01,64.56
path	67.27,67.06	67.34,69.40	67.04,70.88	66.79,72.54	66.80,73.78
path	66.50,75.31	65.60,75.46	64.52,75.39	63.35,74.82	62.19,74.59
path	61.40,74.21	60.51,72.36	59.17,71.67	58.46,69.38
Kill Clefthoof enemies around this area
collect Clefthoof Meat##27678 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Jaggal Clam Meat",{
expansion="mists",
description="Jaggal Clam Meat can be farmed in Zangarmarsh.",
meta={goldtype="route",levelreq=60},
items={24477},
maps={"Zangarmarsh"},
mopready=true,
},[[
step
Kill Bloodscale enemies around this area
collect Jaggal Clam##24476 |n
|tip The best place for these is farming The Slave Pens dungeon.
use Jaggal Clam##24476
collect Jaggal Clam Meat##24477 |goto Zangarmarsh/0 26.92,39.35 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Raptor Ribs",{
expansion="mists",
description="Raptor Ribs can be farmed in Blade's Edge Mountains.",
meta={goldtype="route",levelreq=65},
items={31670},
maps={"Blade's Edge Mountains"},
mopready=true,
},[[
step
label "Start_Farming_Raptor_Ribs"
map Blade's Edge Mountains/0
path follow smart; loop off; ants curved; dist 30
path	75.24,23.15	73.88,24.99	73.46,26.32	72.65,27.28	71.85,29.01
path	71.31,31.09	71.04,33.60	71.15,35.63	71.35,37.49	71.18,40.71
path	70.78,43.76	69.47,45.25	68.05,47.25	67.84,47.58	66.49,49.20
path	64.96,50.60	63.68,51.31	63.78,52.45	64.64,54.36	65.43,55.15
path	66.46,56.39	67.08,57.74	67.78,59.22	68.25,61.91	68.35,63.37
path	68.81,64.87	68.53,65.95	68.51,69.49
Kill Daggermaw and Lashtail enemies around this area
collect Raptor Ribs##31670 |n
'|goto Blade's Edge Mountains/0 68.51,69.49 < 30 |c |noway
step
map Blade's Edge Mountains/0
path follow smart; loop off; ants curved; dist 30
path	68.51,69.49	68.53,65.95	68.81,64.87	68.35,63.37	68.25,61.91
path	67.78,59.22	67.08,57.74	66.46,56.39	65.43,55.15	64.64,54.36
path	63.78,52.45	63.68,51.31	64.96,50.60	66.49,49.20	67.84,47.58
path	68.05,47.25	69.47,45.25	70.78,43.76	71.18,40.71	71.35,37.49
path	71.15,35.63	71.04,33.60	71.31,31.09	71.85,29.01	72.65,27.28
path	73.46,26.32	73.88,24.99	75.24,23.15
Kill Daggermaw and Lashtail enemies around this area
collect Raptor Ribs##31670 |n
'|goto Blade's Edge Mountains/0 75.24,23.15 < 30 |c |noway |next "Start_Farming_Raptor_Ribs"
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Serpent Flesh",{
expansion="mists",
description="Serpent Flesh can be farmed in Blade's Edge Mountains.",
meta={goldtype="route",levelreq=65},
items={31671},
maps={"Blade's Edge Mountains"},
mopready=true,
},[[
step
label "Start_Farming_Serpent_Flesh"
map Blade's Edge Mountains/0
path follow smart; loop off; ants curved; dist 30
path	75.24,23.15	73.88,24.99	73.46,26.32	72.65,27.28	71.85,29.01
path	71.31,31.09	71.04,33.60	71.15,35.63	71.35,37.49	71.18,40.71
path	70.78,43.76	69.47,45.25	68.05,47.25	67.84,47.58	66.49,49.20
path	64.96,50.60	63.68,51.31	63.78,52.45	64.64,54.36	65.43,55.15
path	66.46,56.39	67.08,57.74	67.78,59.22	68.25,61.91	68.35,63.37
path	68.81,64.87	68.53,65.95	68.51,69.49
Kill Scalewing enemies around this area
collect Serpent Flesh##31671 |n
'|goto Blade's Edge Mountains/0 68.51,69.49 < 30 |c |noway
step
map Blade's Edge Mountains/0
path follow smart; loop off; ants curved; dist 30
path	68.51,69.49	68.53,65.95	68.81,64.87	68.35,63.37	68.25,61.91
path	67.78,59.22	67.08,57.74	66.46,56.39	65.43,55.15	64.64,54.36
path	63.78,52.45	63.68,51.31	64.96,50.60	66.49,49.20	67.84,47.58
path	68.05,47.25	69.47,45.25	70.78,43.76	71.18,40.71	71.35,37.49
path	71.15,35.63	71.04,33.60	71.31,31.09	71.85,29.01	72.65,27.28
path	73.46,26.32	73.88,24.99	75.24,23.15
Kill Scalewing enemies around this area
collect Serpent Flesh##31671 |n
'|goto Blade's Edge Mountains/0 75.24,23.15 < 30 |c |noway |next "Start_Farming_Serpent_Flesh"
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Strange Spores",{
expansion="mists",
description="Strange Spores can be farmed in Zangarmarsh.",
meta={goldtype="route",levelreq=60},
items={27676},
maps={"Zangarmarsh"},
mopready=true,
},[[
step
map Zangarmarsh/0
path follow smart; loop on; ants curved; dist 30
path	24.68,19.60	24.27,21.11	24.58,22.87	23.82,24.56	23.41,25.90
path	22.15,26.32	21.60,27.69	21.15,29.84	20.42,31.99	19.76,33.52
path	19.05,35.92	17.80,37.43	17.03,38.40	16.25,39.71	15.61,41.17
path	15.83,43.73	16.50,45.80	17.54,47.38	17.92,48.48	19.37,50.63
path	20.86,52.30	21.67,53.32	22.26,54.62	21.88,56.22	20.80,57.68
path	19.55,58.15	18.02,57.33	17.39,57.71	16.31,57.45	14.44,57.45
path	12.19,57.04	11.76,56.66	10.82,54.91	9.79,52.11	10.09,48.34
path	11.30,44.83	13.25,42.72	13.96,39.92	15.16,38.32	16.23,35.68
path	16.43,33.10	16.46,30.82	16.45,29.63	17.28,28.04	17.15,26.34
path	15.87,26.15	15.41,24.00	15.80,21.84	16.06,19.31	16.88,17.10
path	18.57,17.31
kill Greater Sporebat##18129+
kill Marsh Walker##18135+
collect Strange Spores##27676 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Talbuk Venison",{
expansion="mists",
description="Talbuk Venison can be farmed in Nagrand.",
meta={goldtype="route",levelreq=64},
items={27682},
maps={"Nagrand"},
mopready=true,
},[[
step
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	58.45,67.47	59.46,65.82	59.28,64.08	58.44,62.74	58.67,61.45
path	59.38,59.90	60.48,59.79	62.75,57.86	61.61,56.14	61.66,52.97
path	60.11,50.39	60.05,49.15	60.95,47.36	62.22,43.24	62.00,41.81
path	61.69,39.46	64.80,41.04	66.76,40.95	68.57,40.24	70.65,40.99
path	71.34,41.19	72.39,41.99	72.38,43.99	71.76,44.60	71.09,45.01
path	70.33,46.05	70.04,47.30	69.80,48.58	69.83,49.92	69.28,51.30
path	69.39,53.83	69.19,55.50	69.64,57.19	70.39,58.90	70.22,61.14
path	69.42,62.04	68.09,61.87	66.96,62.66	66.80,63.77	67.01,64.56
path	67.27,67.06	67.34,69.40	67.04,70.88	66.79,72.54	66.80,73.78
path	66.50,75.31	65.60,75.46	64.52,75.39	63.35,74.82	62.19,74.59
path	61.40,74.21	60.51,72.36	59.17,71.67	58.46,69.38
Kill Talbuk enemies around this area
collect Talbuk Venison##27682 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Warped Flesh",{
expansion="mists",
description="Warped Flesh can be farmed in Terokkar Forest.",
meta={goldtype="route",levelreq=62},
items={27681},
maps={"Terokkar Forest"},
mopready=true,
},[[
step
map Terokkar Forest/0
path follow smart; loop on; ants curved; dist 30
path	59.59,49.54	59.65,48.37	59.41,47.25	58.99,46.28	58.50,45.39
path	57.90,44.76	57.18,43.95	56.84,43.13	56.14,42.55	55.56,41.51
path	55.48,40.53	55.57,39.33	55.32,38.38	55.25,37.11	55.19,35.86
path	55.41,34.98	55.94,34.37	56.30,33.13	57.61,32.39	58.54,31.61
path	59.68,31.15	60.97,30.39	62.24,30.51	63.31,31.03	64.49,31.48
path	65.61,32.16	66.88,32.68	68.19,33.22	68.50,34.23	68.02,35.84
path	66.65,35.82	65.98,36.47	64.64,35.75	62.90,35.26	62.08,35.51
path	61.30,36.73	60.98,38.58	60.84,40.23	61.19,41.87	61.17,43.04
path	60.95,45.16	60.68,46.73	59.72,48.94
kill Warp Stalker##18464+
collect Warped Flesh##27681 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Crunchy Spider Leg",{
expansion="mists",
description="Crunchy Spider Legs can be farmed in Ghostlands.",
meta={goldtype="route",levelreq=10},
items={22644},
maps={"Ghostlands"},
mopready=true,
},[[
step
map Ghostlands/0
path follow smart; loop on; ants curved; dist 30
path	40.53,66.35	40.83,70.18	40.57,72.68	38.84,72.10	37.18,69.79
path	34.71,68.90	33.08,66.46	32.19,64.27	34.19,62.61	33.92,58.51
path	31.76,53.44	29.94,52.32	29.11,52.58	28.13,52.99	26.72,52.73
path	25.32,51.78	24.85,49.40	25.12,46.91	24.62,44.93	24.38,43.25
path	24.48,41.68	24.29,39.91	25.65,39.62	27.34,38.74	27.99,39.65
path	28.81,41.11	29.73,39.07	30.40,36.94	31.25,36.31	32.28,38.14
path	33.83,38.87	35.33,40.52	37.74,41.01	40.04,41.51	41.88,41.97
path	43.87,43.04	45.57,44.20	45.96,45.70	45.18,47.38	44.27,50.14
path	44.68,51.59	43.91,55.55	43.46,58.84	43.22,62.21	42.62,65.23
Kill Spindleweb enemies along the path
collect Crunchy Spider Leg##22644 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Lynx Meat",{
expansion="mists",
description="Lynx Meat can be farmed in Eversong Woods.",
meta={goldtype="route",levelreq=1},
items={27668},
maps={"Eversong Woods"},
mopready=true,
},[[
step
map Eversong Woods/0
path follow smart; loop on; ants curved; dist 30
path	42.67,69.53	41.06,70.55	39.80,71.87	39.25,73.69	38.26,74.58
path	37.21,73.96	36.11,73.59	34.88,74.11	33.88,74.18	32.70,72.35
path	31.06,72.01	28.80,70.59	27.27,67.95	26.86,63.75	27.18,59.79
path	28.22,57.16	29.35,55.95	30.26,54.48	31.44,53.09	32.81,54.10
path	34.06,55.12	35.19,55.45	36.83,56.78	37.47,58.98	36.31,61.65
path	37.08,63.47	38.40,63.76	39.78,63.68	41.04,62.25	42.82,61.82
path	44.44,62.83	45.33,62.77	45.90,62.43	46.67,63.06	46.37,64.50
path	46.20,66.14	46.46,67.55	45.63,68.10	44.47,67.36	43.92,69.23
kill Springpaw Stalker##15651+
collect Lynx Meat##27668 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Moongraze Stag Tenderloin",{
expansion="mists",
description="Moongraze Stag Tenderloins can be farmed on Azuremyst Isle.",
meta={goldtype="route",levelreq=1},
items={23676},
maps={"Azuremyst Isle"},
mopready=true,
},[[
step
map Azuremyst Isle/0
path follow smart; loop on; ants curved; dist 30
path	55.31,50.08	55.15,51.44	56.78,55.40	57.55,57.15	57.91,59.56
path	56.39,61.11	54.11,62.47	52.98,63.99	52.13,62.82	51.40,61.14
path	50.34,59.58	48.99,59.01	47.55,57.68	46.61,56.91	45.43,56.92
path	45.54,58.37	45.73,60.95	45.82,62.01	45.59,63.99	45.22,65.99
path	44.26,66.95	42.74,67.69	41.90,69.19	40.50,70.23	40.38,67.23
path	40.28,63.98	40.34,60.36	40.63,58.14	39.31,56.95	37.83,56.34
path	36.83,56.83	35.68,58.36	34.57,58.61	34.40,59.69	32.85,60.18
path	31.55,60.50	28.63,59.88	28.19,56.95	29.24,54.16	29.98,52.40
path	31.14,50.56	32.71,50.63	33.49,53.02	34.03,55.80	34.94,56.58
path	36.39,55.04	37.08,54.22	38.74,53.14	38.95,52.25	39.83,50.04
path	41.10,48.48	42.19,46.43	43.86,44.15	44.39,41.75	45.66,39.56
path	47.40,38.46	49.32,35.97	50.40,35.47	53.31,36.27	55.86,38.52
path	57.82,39.79	58.17,42.94	56.97,45.43	56.65,48.29
Kill Moongraze enemies along the path
collect Moongraze Stag Tenderloin##23676 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Jaggal Clam Meat",{
expansion="mists",
description="Jaggal Clam Meat can be farmed in Zangarmarsh.",
meta={goldtype="route",levelreq=60},
items={24477},
maps={"Zangarmarsh"},
mopready=true,
},[[
step
Kill Bloodscale enemies around this area
collect Jaggal Clam##24476 |n
|tip The best place for these is farming The Slave Pens dungeon.
use Jaggal Clam##24476
collect Jaggal Clam Meat##24477 |goto Zangarmarsh/0 26.92,39.35 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Ravager Flesh",{
expansion="mists",
description="Ravager Flesh can be gathered from the western Hellfire Peninsula.",
meta={goldtype="route",levelreq=58},
items={27674},
maps={"Hellfire Peninsula"},
mopready=true,
},[[
step
Kill Thornfang enemies around this area
|tip They spawn on both sides of the road.
collect Ravager Flesh##27674 |n |goto Hellfire Peninsula/0 10.26,51.72
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Talbuk Venison",{
expansion="mists",
description="Talbuk Venison can be gathered from central Nagrand.",
meta={goldtype="route",levelreq=64},
items={27682},
maps={"Nagrand"},
mopready=true,
},[[
step
map Nagrand/0
path loop on; follow strict; dist 40
path	53.83,31.31	52.92,29.15	51.38,26.84	48.38,27.04	47.30,30.27
path	48.26,33.27	49.13,37.97	50.13,39.28	51.37,38.48	50.58,36.74
path	52.29,33.21
kill Talbuk Thorngrazer##17131+
collect Talbuk Venison##27682 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Raptor Ribs",{
expansion="mists",
description="Raptor Ribs can be gathered from the eastern Blade's Edge Mountains.",
meta={goldtype="route",levelreq=65},
items={31670},
maps={"Blade's Edge Mountains"},
mopready=true,
},[[
step
map Blade's Edge Mountains/0
path loop on; follow strict; dist 40
path	62.00,55.54	65.96,57.01	66.51,59.83	66.37,63.86	67.39,66.46
path	67.69,71.59	69.27,71.36	68.95,65.95	68.53,63.09	68.54,60.21
path	68.26,57.12	67.14,53.92	68.20,49.52
kill Daggermaw Lashtail##20751+
collect Raptor Ribs##31670 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Giant Turtle Tongue",{
expansion="mists",
description="Giant Turtle Tongue can be farmed in Kelp'thar Forest",
meta={goldtype="route",levelreq=80},
items={62781},
maps={"Kelp'thar Forest"},
mopready=true,
},[[
step
kill Speckled Sea Turtle##40223+
collect Giant Turtle Tongue##62781 |n |goto Kelp'thar Forest/0 50.94,41.57
You can find more here:
[54.47,50.52]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Snake Eye",{
expansion="mists",
description="Snake Eye can be farmed in Kelp'thar Forest",
meta={goldtype="route",levelreq=80},
items={62780},
maps={"Kelp'thar Forest"},
mopready=true,
},[[
step
kill Brinescale Serpent##39948+
collect Snake Eye##62780 |n |goto Kelp'thar Forest/0 56.28,37.89
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Crocolisk Tail",{
expansion="mists",
description="Crocolisk Tail can be farmed in Uldum",
meta={goldtype="route",levelreq=83},
items={62784},
maps={"Uldum"},
mopready=true,
},[[
step
map Uldum/0
path follow smart; loop on; ants straight; dist 30
path    54.61,46.14    56.17,50.11    57.47,51.67    57.87,54.07    58.63,56.98
path    59.04,60.18    60.49,60.70    60.27,57.55    59.86,55.26    59.19,52.69
path    58.55,51.06    57.82,50.05    57.67,47.17    57.21,45.34    55.83,44.88
Kill Crocolisk along the path
collect Crocolisk Tail##62784 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Dragon Flank",{
expansion="mists",
description="Dragon Flank can be farmed in Twilight Highlands",
meta={goldtype="route",levelreq=84},
items={62782},
maps={"Twilight Highlands"},
mopready=true,
},[[
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	69.97,74.75	68.58,72.58	65.91,71.20	63.42,71.61	61.66,74.66
path	61.10,78.40	61.52,81.41	63.15,81.55	65.03,80.87	67.27,77.49
Kill Dragonkin enemies along the path
collect Dragon Flank##62782 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Basilisk Liver",{
expansion="mists",
description="Basilisk Liver can be farmed in Deepholm",
meta={goldtype="route",levelreq=82},
items={62783},
maps={"Deepholm"},
mopready=true,
},[[
step
map Deepholm/0
path follow smart; loop on; ants straight; dist 30
path	43.47,28.20	45.05,25.12	46.45,21.89	41.34,13.37	38.12,14.37
path	35.97,21.65	36.52,24.39	37.38,27.47	37.61,31.33	41.17,29.98
Kill Basilisk enemies along the path
collect Basilisk Liver##62783 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Shoveltusk Flank",{
expansion="mists",
description="Shoveltusk Flanks can be gathered from Howling Fjord.",
meta={goldtype="route",levelreq=68},
items={43009},
maps={"Howling Fjord"},
mopready=true,
},[[
step
map Howling Fjord/0
path loop on; follow strict; dist 40
path	76.46,63.42	75.33,60.39	74.58,56.11	74.85,52.58	75.59,50.19
path	75.46,46.56	74.30,44.99	73.01,47.07	73.61,48.52	72.89,52.59
path	72.70,56.77	73.53,58.71	73.21,60.59	72.12,63.28
Kill Shoveltusk enemies around this area
collect Shoveltusk Flank##43009 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Netherweave Cloth",{
expansion="mists",
description="Gather Netherweave Cloth in Shadowmoon Valley.",
meta={goldtype="route",levelreq=67},
items={21877},
maps={"Shadowmoon Valley"},
mopready=true,
},[[
step
label "Legion_Hold"
map Shadowmoon Valley/0
path follow smart; loop on; ants curved; dist 20
path	51.10,58.80	53.00,59.30	53.20,60.50	52.80,63.20	52.80,65.40
path	52.90,69.00	52.50,71.80	47.30,71.10	45.80,71.30	45.20,69.20
path	45.60,66.10	48.00,67.20
Kill enemies around this area
collect Netherweave Cloth##21877 |n
Click Here to Continue |confirm
step
map Shadowmoon Valley/0
path follow smart; loop on; ants curved; dist 20
path	23.90,41.30	22.60,40.10	22.30,38.40	22.10,37.10	20.70,38.00
path	20.80,36.20	21.80,34.20	22.70,31.20	23.70,31.10	24.90,32.30
path	26.00,33.30	25.10,34.60	26.20,36.10	25.10,38.10	24.90,39.80
Kill enemies around this area
collect Netherweave Cloth##21877 |n
Click Here to Continue |confirm |next "Legion_Hold"
]])
QuestCore:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Netherweb Spider Silk",{
expansion="mists",
description="Gather Netherweave Cloth in Terokkar Forest.",
meta={goldtype="route",levelreq=62},
items={21881},
maps={"Terokkar Forest"},
mopready=true,
},[[
step
Kill Dreadfang enemies around this area
collect Netherweb Spider Silk##21881 |n |goto Terokkar Forest/0 53.64,57.86
You can find more around here [52.22,78.65]
]])
QuestCore:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Embersilk Cloth",{
expansion="mists",
description="Embersilk Cloth can be gathered from humanoids in Deepholm.",
meta={goldtype="route",levelreq=82},
items={53010},
maps={"Deepholm"},
mopready=true,
},[[
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.20,25.60	67.20,32.00	68.60,35.80	69.00,42.60	73.00,45.00
path	77.20,42.80	76.80,35.60	74.60,32.80	74.80,28.40	72.20,26.60
Kill humanoid enemies around this area
collect Embersilk Cloth##53010 |n
'|confirm
]])
