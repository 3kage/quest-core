-- QuestCore bundled guide (mists)
if not QuestCore then return end
if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Alchemy (1-600)",{
expansion="mists",
mopready=true,
author="QuestCore",
condition_suggested=function() return skill('Alchemy') > 0 end,
description="This guide will walk you through leveling your Alchemy skill from 1-600.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/1 56.48,35.25 < 7 |walk
talk Yelmak##3347
|tip Inside the building.
Train Apprentice Alchemy |skillmax Alchemy,75 |goto Orgrimmar/1 55.68,45.76
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Classic-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Alchemy |confirm |next "Begin_Profession_Leveling_Classic" |or
'|complete skill("Alchemy") >= 300 |or |next "Begin_Profession_Leveling_Classic"
stickystart "Collect_Silverleaf_Total"
stickystart "Collect_Briarthorn_Total"
stickystart "Collect_Mageroyal_Total"
stickystart "Collect_Stranglekelp_Total"
stickystart "Collect_Liferoot_Total"
stickystart "Collect_Kingsblood_Total"
stickystart "Collect_Goldthorn_Total"
stickystart "Collect_Wild_Steelbloom_Total"
stickystart "Collect_Sungrass_Total"
stickystart "Collect_Khadgar's_Whisker_Total"
stickystart "Collect_Blindweed_Total"
stickystart "Collect_Golden_Sansam_Total"
stickystart "Collect_Mountain_Silversage_Total"
step
map Tirisfal Glades
path follow smart; loop on; ants curved; dist 20
path	51.54,54.24	50.24,56.05	47.60,53.12	45.65,51.89	46.96,47.83
path	44.74,46.19	42.79,42.59	41.45,40.79	39.11,40.30	38.92,43.20
path	38.50,46.14	36.48,47.41	34.54,48.14	32.02,48.17	31.72,50.34
path	33.92,51.19	37.36,51.84	38.60,52.08	39.77,54.03	40.68,58.21
path	40.92,60.80	41.92,63.49	44.02,65.29	46.57,66.37	49.11,67.48
path	50.44,66.83	51.57,64.64	54.10,62.49	56.28,59.15	56.53,55.12
path	53.81,53.15	52.04,54.99
click Peacebloom##1618+
|tip They look like small white flowers on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 65 Peacebloom##2447 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 60 |or
step
label "Collect_Silverleaf_Total"
map Tirisfal Glades
path follow smart; loop on; ants curved; dist 20
path	51.54,54.24	50.24,56.05	47.60,53.12	45.65,51.89	46.96,47.83
path	44.74,46.19	42.79,42.59	41.45,40.79	39.11,40.30	38.92,43.20
path	38.50,46.14	36.48,47.41	34.54,48.14	32.02,48.17	31.72,50.34
path	33.92,51.19	37.36,51.84	38.60,52.08	39.77,54.03	40.68,58.21
path	40.92,60.80	41.92,63.49	44.02,65.29	46.57,66.37	49.11,67.48
path	50.44,66.83	51.57,64.64	54.10,62.49	56.28,59.15	56.53,55.12
path	53.81,53.15	52.04,54.99
click Silverleaf##1617+ |notinsticky
|tip They look like bushy blue and green plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 65 Silverleaf##765 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 60 |or
step
label "Collect_Briarthorn_Total"
map Silverpine Forest
path follow smart; loop off; dist 20
path	49.04,32.38	49.42,35.61	49.42,37.96	49.76,40.18	50.52,43.34
path	52.66,43.16	54.51,44.07	52.79,45.65	51.98,49.91	52.04,52.85
path	51.86,56.81	52.43,59.23	51.75,62.42	54.26,63.98	55.27,61.88
path	56.68,60.37	58.05,62.07	56.16,64.50	54.77,66.89	54.34,71.81
path	54.65,74.35	56.82,76.43	59.65,77.20	61.93,77.46	64.26,78.75
path	66.96,79.79
click Briarthorn##1621+ |notinsticky
|tip They look like brown thorns growing out of the ground along the path. |notinsticky
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 100 Briarthorn##2450 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 70 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 140 |or
'|goto Silverpine Forest 66.96,79.79 < 20 |noway |c |or
step
map Silverpine Forest
path follow smart; loop off; dist 20
path	66.96,79.79	64.26,78.75	61.93,77.46	59.65,77.20	56.82,76.43
path	54.65,74.35	54.34,71.81	54.77,66.89	56.16,64.50	58.05,62.07
path	56.68,60.37	55.27,61.88	54.26,63.98	51.75,62.42	52.43,59.23
path	51.86,56.81	52.04,52.85	51.98,49.91	52.79,45.65	54.51,44.07
path	52.66,43.16	50.52,43.34	49.76,40.18	49.42,37.96	49.42,35.61
path	49.04,32.38
click Briarthorn##1621+ |notinsticky
|tip They look like brown thorns growing out of the ground along the path. |notinsticky
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 100 Briarthorn##2450 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 70 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 140 |or
'|goto Silverpine Forest 49.04,32.38 < 20 |noway |c |next "Collect_Briarthorn_Total" |or
step
map Stonetalon Mountains/0
path follow smart; loop on; ants straight; dist 30
path	73.00,59.72	66.74,54.82	63.25,56.60	53.01,45.12	52.19,43.22
path	52.78,40.43	49.32,35.40	48.73,32.68	45.84,25.38	41.49,18.24
path	39.73,43.04	37.25,49.59	36.30,51.80	37.78,56.59	58.09,73.47
path	61.22,84.07	63.82,85.60	71.85,83.84	73.87,86.83	74.93,88.92
path	78.14,78.96
click Bruiseweed##1622+ |notinsticky
|tip They look like tall green and purple flowers on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 35 Bruiseweed##2453 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 100 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 140 |or
step
label "Collect_Mageroyal_Total"
map The Barrens/0
path follow smart; loop on; ants straight; dist 30
path	39.36,57.49	34.89,52.89	33.36,50.00	30.07,47.72	29.91,44.17
path	33.29,42.12	35.45,40.82	36.33,37.91	36.65,35.15	35.37,32.30
path	48.42,29.59	50.71,27.22	53.27,25.57	55.42,23.27	55.79,19.31
path	58.97,17.65	66.68,12.45	64.37,22.75	62.88,34.68	59.08,35.10
path	56.55,32.56	53.15,34.00	48.57,41.78	46.26,46.30	53.57,56.68
path	55.00,54.38	55.22,48.55	59.06,47.80	61.38,49.96	64.29,54.33
path	64.83,59.12	65.14,62.68	63.50,66.84	63.61,77.85	60.59,76.48
path	53.29,73.51	51.63,71.03	43.14,70.39
click Mageroyal##1620+ |notinsticky
|tip They look like bushy pink flowers on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 20 Mageroyal##785 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 50 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 155 |or
step
label "Collect_Stranglekelp_Total"
map Wetlands/0
path follow smart; loop on; ants straight; dist 30
path	7.71,72.28	8.64,69.34	10.22,66.09	13.44,62.57	17.65,59.72
path	19.38,57.25	16.89,53.45	5.99,53.34	3.69,53.64	4.32,49.07
path	7.46,44.87	10.27,40.32	11.35,33.11	12.45,27.89	13.62,23.90
path	16.90,21.24	20.12,19.01
click Stranglekelp##2045+ |notinsticky
|tip They look like green vines underwater along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
|tip They are underwater along the path. |notinsticky
|tip Bring Water Walking Potions. |notinsticky
collect 50 Stranglekelp##3820 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 85 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 210 |or
step
label "Collect_Liferoot_Total"
map Wetlands
path follow smart; loop off; dist 20
path	39.88,29.56	42.39,32.16	44.42,36.02	50.85,37.60	53.92,41.52
path	55.96,45.32	59.97,50.83	61.97,56.83	64.42,68.06	63.29,74.88
click Liferoot##2041+ |notinsticky
|tip They look like green roots on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 35 Liferoot##3357 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 150 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 185 |or
'|goto Wetlands 63.29,74.88 < 20 |noway |c |or
step
map Wetlands
path follow smart; loop off; dist 20
path	63.29,74.88	64.42,68.06	61.97,56.83	59.97,50.83	55.96,45.32
path	53.92,41.52	50.85,37.60	44.42,36.02	42.39,32.16	39.88,29.56
click Liferoot##2041+ |notinsticky
|tip They look like green roots on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 35 Liferoot##3357 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 150 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 185 |or
'|goto Wetlands 39.88,29.56 < 20 |noway |c |next "Collect_Liferoot_Total" |or
step
label "Collect_Kingsblood_Total"
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	46.75,25.55	51.58,29.02	56.21,30.36	59.67,33.23	62.46,34.02
path	61.92,38.94	58.55,43.68	56.51,48.27	44.88,34.82	41.25,33.98
path	35.44,31.57	31.52,36.24	26.99,34.94	18.37,36.35	13.78,37.41
path	14.84,33.80	18.22,32.79	19.10,26.35	21.55,27.19	24.28,28.73
path	27.93,30.36	32.61,27.99	35.45,24.60	38.43,23.41	40.84,24.23
click Kingsblood##1624+ |notinsticky
|tip They look like bushy purple, pink, and green plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 35 Kingsblood##3356 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 125 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 185 |or
step
label "Collect_Goldthorn_Total"
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	63.96,65.99	63.05,62.20	64.55,58.27	64.12,55.92	63.70,52.51
path	62.57,49.88	60.62,47.74	61.76,38.56	62.39,32.52	61.21,28.17
path	58.78,27.10	55.91,28.12	53.10,25.81	42.45,23.59	39.65,21.95
path	37.94,21.19	36.23,21.95	33.54,25.55	30.98,30.62	35.70,35.18
path	35.17,41.49	37.05,44.46	40.60,46.24	48.49,45.42	51.70,48.76
path	54.08,48.34	54.17,57.96	55.21,62.17	57.42,61.55	59.86,63.63
path	63.26,66.36	61.63,61.17	59.25,58.85	59.51,51.62
click Goldthorn##2046+ |notinsticky
|tip They look like thorny brown and green plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 35 Goldthorn##3821 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 170 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 265 |or
step
label "Collect_Wild_Steelbloom_Total"
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	41.90,20.67	37.44,18.90	34.85,19.46	32.34,24.69	30.05,30.56
path	31.98,34.72	35.10,35.48	36.39,37.67	36.22,43.48	39.56,45.08
path	41.94,46.79	43.43,52.34	46.37,51.56	48.08,49.67	48.49,45.14
path	48.80,39.39	47.67,35.55	47.51,32.62	54.93,29.17	59.73,28.40
path	63.25,29.41	63.03,23.00	59.49,21.11	57.08,20.01	54.52,20.03
path	52.60,22.27	51.52,24.23	41.44,25.58
click Wild Steelbloom##1623+ |notinsticky
|tip They look like leafy white and green flowers on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 5 Wild Steelbloom##3355 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 115 Herbalism skill to gather these. |notinsticky
'|complete skill("Alchemy") >= 215 |or
step
label "Collect_Sungrass_Total"
map Searing Gorge/0
path follow smart; loop on; ants curved
path	66.96,42.21	64.77,45.07	62.15,45.87	60.53,49.35	59.31,53.04
path	56.48,61.80	55.17,68.25	49.61,67.64	44.84,70.37	40.79,73.38
path	36.75,73.46	31.44,67.49	31.13,59.44	28.96,55.58	27.38,50.10
path	29.56,44.58	31.72,41.24	35.79,45.59	38.99,42.72	43.55,41.63
path	46.74,42.22	51.97,39.92	57.25,36.61	60.63,34.56	64.32,33.64
path	68.22,35.32
click Sungrass##142142+ |notinsticky
|tip They look like clumps of green and yellow grass on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 65 Sungrass##8838 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 230 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 285 |or
step
label "Collect_Khadgar's_Whisker_Total"
map Western Plaguelands/0
path follow smart; loop on; ants curved; dist 60
path	31.87,59.33	36.90,57.16	43.53,53.27	45.91,44.70	45.21,35.23
path	49.51,35.12	51.02,47.42	55.22,51.34	61.82,52.02	67.25,44.52
path	63.60,56.06	56.61,60.11	52.61,67.55	46.40,59.23	37.91,62.21
path	33.73,62.71
click Khadgar's Whisker##2043+ |notinsticky
|tip They look like clusters of green grass on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 15 Khadgar's Whisker##3358 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 185 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 230 |or
step
label "Collect_Blindweed_Total"
map Feralas/0
path follow smart; loop on; ants straight; dist 30
path	53.38,7.89	51.46,6.46	49.81,5.77	49.72,7.88	49.28,11.08
path	47.71,12.05	47.87,14.71	49.76,14.27	51.85,14.75	53.36,11.89
click Blindweed##142143+ |notinsticky
|tip They look like multi-colored flowers on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 50 Blindweed##8839 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 235 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 285 |or
step
label "Collect_Golden_Sansam_Total"
map Swamp of Sorrows/0
path follow smart; loop on; ants curved; dist 60
path	17.62,52.92	21.60,54.68	30.93,60.71	39.41,56.93	51.73,59.62
path	64.51,67.32	73.31,81.92	82.02,76.03	85.30,62.66	87.62,39.95
path	84.93,31.21	80.12,20.61	66.51,22.72	56.81,31.92	47.01,36.01
path	36.11,39.86	26.93,42.92
click Golden Sansam##176583+ |notinsticky
|tip They look like yellow roots with bushy green tops on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 69 Golden Sansam##13464 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 260 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 330 |or
step
label "Collect_Mountain_Silversage_Total"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	69.50,80.51	66.73,78.96	62.06,80.45	60.17,83.38	57.90,84.92
path	56.43,85.63	52.59,86.79	50.45,85.64	47.59,86.84	44.06,85.48
path	40.43,83.69	37.58,82.20	36.74,80.02	34.35,78.80	30.60,79.47
path	29.81,78.29	29.45,73.80	29.51,71.95	30.47,70.66	30.12,68.78
path	26.87,68.47	26.22,63.87	24.35,55.86	24.60,51.19	24.66,49.08
path	24.29,47.04	24.87,40.95	26.12,37.25	26.47,32.27	28.16,29.95
path	29.28,30.78	30.53,29.41	29.59,24.96	30.56,20.83	33.11,20.72
path	34.48,21.20	36.41,20.34	38.57,16.60	42.23,16.10	44.74,14.15
path	48.26,13.20	49.78,17.80	51.76,16.54	52.14,13.12	54.40,13.42
path	56.79,14.48	59.79,16.53	62.08,16.53	63.95,19.36	65.85,21.43
path	66.83,23.10	67.79,22.98	68.24,20.16	70.91,20.97	71.45,25.67
path	71.86,28.59	74.60,32.13	74.81,36.14	76.10,40.85	76.77,46.27
path	76.23,50.57	76.85,54.91	75.63,60.70	74.66,64.47	74.30,69.24
path	71.82,70.72	70.92,71.71	71.15,74.12	70.59,75.37	70.92,79.06
click Mountain Silversage##176586+ |notinsticky
|tip They look like frosted green and white plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 42 Mountain Silversage##13465 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 280 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 315 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 187 Crystal Vial##3371 |goto Orgrimmar/1 55.24,45.90 |or
'|complete skill("Alchemy") >= 350 |or
step
label "Begin_Profession_Leveling_Classic"
map Tirisfal Glades
path follow smart; loop on; ants curved; dist 20
path	51.54,54.24	50.24,56.05	47.60,53.12	45.65,51.89	46.96,47.83
path	44.74,46.19	42.79,42.59	41.45,40.79	39.11,40.30	38.92,43.20
path	38.50,46.14	36.48,47.41	34.54,48.14	32.02,48.17	31.72,50.34
path	33.92,51.19	37.36,51.84	38.60,52.08	39.77,54.03	40.68,58.21
path	40.92,60.80	41.92,63.49	44.02,65.29	46.57,66.37	49.11,67.48
path	50.44,66.83	51.57,64.64	54.10,62.49	56.28,59.15	56.53,55.12
path	53.81,53.15	52.04,54.99
click Peacebloom##1618+
|tip They look like small white flowers on the ground along the path.
collect 65 Peacebloom##2447 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 60 |or
step
label "Collect_Silverleaf_60"
map Tirisfal Glades
path follow smart; loop on; ants curved; dist 20
path	51.54,54.24	50.24,56.05	47.60,53.12	45.65,51.89	46.96,47.83
path	44.74,46.19	42.79,42.59	41.45,40.79	39.11,40.30	38.92,43.20
path	38.50,46.14	36.48,47.41	34.54,48.14	32.02,48.17	31.72,50.34
path	33.92,51.19	37.36,51.84	38.60,52.08	39.77,54.03	40.68,58.21
path	40.92,60.80	41.92,63.49	44.02,65.29	46.57,66.37	49.11,67.48
path	50.44,66.83	51.57,64.64	54.10,62.49	56.28,59.15	56.53,55.12
path	53.81,53.15	52.04,54.99
click Silverleaf##1617+ |notinsticky
|tip They look like bushy blue and green plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 65 Silverleaf##765 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 60 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 65 Crystal Vial##3371 |goto Orgrimmar/1 55.24,45.90 |or
'|complete skill("Alchemy") >= 60 |or
step
create 65 Minor Healing Potion##2330,Alchemy,65 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Alchemy") >= 60 |or
step
create 1 Minor Healing Potion##2330,Alchemy,60
|tip You may need to create more of these.
|tip Save at least 65 of these; you will need them for future steps.
|tip Each additional potion requires 1 Peacebloom, 1 Silverleaf, and 1 Crystal Vial.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Yelmak##3347
|tip Inside the building.
Train Journeyman Alchemy |skillmax Alchemy,150 |goto Orgrimmar/1 55.68,45.76
step
talk Yelmak##3347
|tip Inside the building.
Train Lesser Healing Potion |learn Lesser Healing Potion##2337 |goto Orgrimmar/1 55.68,45.76
step
label "Collect_Briarthorn_110"
map Silverpine Forest
path follow smart; loop off; dist 20
path	49.04,32.38	49.42,35.61	49.42,37.96	49.76,40.18	50.52,43.34
path	52.66,43.16	54.51,44.07	52.79,45.65	51.98,49.91	52.04,52.85
path	51.86,56.81	52.43,59.23	51.75,62.42	54.26,63.98	55.27,61.88
path	56.68,60.37	58.05,62.07	56.16,64.50	54.77,66.89	54.34,71.81
path	54.65,74.35	56.82,76.43	59.65,77.20	61.93,77.46	64.26,78.75
path	66.96,79.79
click Briarthorn##1621+
|tip They look like brown thorns growing out of the ground along the path.
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Track them on your minimap with "Find Herbs".
collect 100 Briarthorn##2450 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 70 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 35 of these; you will need them for future steps.
'|complete skill("Alchemy") >= 110 |or
'|goto Silverpine Forest 66.96,79.79 < 20 |noway |c |or
step
map Silverpine Forest
path follow smart; loop off; dist 20
path	66.96,79.79	64.26,78.75	61.93,77.46	59.65,77.20	56.82,76.43
path	54.65,74.35	54.34,71.81	54.77,66.89	56.16,64.50	58.05,62.07
path	56.68,60.37	55.27,61.88	54.26,63.98	51.75,62.42	52.43,59.23
path	51.86,56.81	52.04,52.85	51.98,49.91	52.79,45.65	54.51,44.07
path	52.66,43.16	50.52,43.34	49.76,40.18	49.42,37.96	49.42,35.61
path	49.04,32.38
click Briarthorn##1621+
|tip They look like brown thorns growing out of the ground along the path.
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Track them on your minimap with "Find Herbs".
collect 100 Briarthorn##2450 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 70 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 35 of these; you will need them for future steps.
'|complete skill("Alchemy") >= 110 |or
'|goto Silverpine Forest 49.04,32.38 < 20 |noway |c |next "Collect_Briarthorn_110" |or
step
create 65 Lesser Healing Potion##2337,Alchemy,110
|tip You may need to create more or less of these.
|tip Each additional Lesser Healing Potion requires 1 Minor Healing Potion and 1 Briarthorn.
|tip Each additional Minor Healing Potion requires 1 Peacebloom, 1 Silverleaf, and 1 Crystal Vial.
stickystart "Collect_Briarthorn_140"
step
label "Collect_Bruiseweed_140"
map Stonetalon Mountains/0
path follow smart; loop on; ants straight; dist 30
path	73.00,59.72	66.74,54.82	63.25,56.60	53.01,45.12	52.19,43.22
path	52.78,40.43	49.32,35.40	48.73,32.68	45.84,25.38	41.49,18.24
path	39.73,43.04	37.25,49.59	36.30,51.80	37.78,56.59	58.09,73.47
path	61.22,84.07	63.82,85.60	71.85,83.84	73.87,86.83	74.93,88.92
path	78.14,78.96
click Bruiseweed##1622+
|tip They look like tall green and purple flowers on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 35 Bruiseweed##2453 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 100 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 140 |or
step
label "Collect_Briarthorn_140"
collect 35 Briarthorn##2450 |or
|tip You collected these in a previous step.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 140 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 35 Crystal Vial##3371 |goto Orgrimmar/1 55.24,45.90 |or
'|complete skill("Alchemy") >= 140 |or
step
talk Yelmak##3347
|tip Inside the building.
Train Healing Potion |learn Healing Potion##3447 |goto Orgrimmar/1 55.68,45.76
step
create 35 Healing Potion##3447,Alchemy,140
|tip You may need to create more or less of these.
|tip Each additional potion requires 1 Bruiseweed, 1 Briarthorn, and 1 Crystal Vial.
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Yelmak##3347
|tip Inside the building.
Train Expert Alchemy |skillmax Alchemy,225 |goto Orgrimmar/1 55.68,45.76
step
talk Yelmak##3347
|tip Inside the building.
Train Lesser Mana Potion |learn Lesser Mana Potion##3173 |goto Orgrimmar/1 55.68,45.76
stickystart "Collect_Stranglekelp_155"
step
map The Barrens/0
path follow smart; loop on; ants straight; dist 30
path	39.36,57.49	34.89,52.89	33.36,50.00	30.07,47.72	29.91,44.17
path	33.29,42.12	35.45,40.82	36.33,37.91	36.65,35.15	35.37,32.30
path	48.42,29.59	50.71,27.22	53.27,25.57	55.42,23.27	55.79,19.31
path	58.97,17.65	66.68,12.45	64.37,22.75	62.88,34.68	59.08,35.10
path	56.55,32.56	53.15,34.00	48.57,41.78	46.26,46.30	53.57,56.68
path	55.00,54.38	55.22,48.55	59.06,47.80	61.38,49.96	64.29,54.33
path	64.83,59.12	65.14,62.68	63.50,66.84	63.61,77.85	60.59,76.48
path	53.29,73.51	51.63,71.03	43.14,70.39
click Mageroyal##1620+
|tip They look like bushy pink flowers on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 20 Mageroyal##785 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 50 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 155 |or
step
label "Collect_Stranglekelp_155"
map Wetlands/0
path follow smart; loop on; ants straight; dist 30
path	7.71,72.28	8.64,69.34	10.22,66.09	13.44,62.57	17.65,59.72
path	19.38,57.25	16.89,53.45	5.99,53.34	3.69,53.64	4.32,49.07
path	7.46,44.87	10.27,40.32	11.35,33.11	12.45,27.89	13.62,23.90
path	16.90,21.24	20.12,19.01
click Stranglekelp##2045+ |notinsticky
|tip They look like green vines underwater along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
|tip They are underwater along the path. |notinsticky
|tip Bring Water Walking Potions. |notinsticky
collect 50 Stranglekelp##3820 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 85 Herbalism skill to gather these.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save at least 30 of these; you will need them for future steps. |notinsticky
'|complete skill("Alchemy") >= 155 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 20 Crystal Vial##3371 |goto Orgrimmar/1 55.24,45.90 |or
'|complete skill("Alchemy") >= 155 |or
step
create 20 Lesser Mana Potion##3173,Alchemy,155
|tip You may need to create more or less of these.
|tip Each additional potion requires 1 Mageroyal, 1 Stranglekelp, and 1 Crystal Vial.
stickystart "Collect_Kingsblood_185"
step
label "Collect_Liferoot_185"
map Wetlands
path follow smart; loop off; dist 20
path	39.88,29.56	42.39,32.16	44.42,36.02	50.85,37.60	53.92,41.52
path	55.96,45.32	59.97,50.83	61.97,56.83	64.42,68.06	63.29,74.88
click Liferoot##2041+
|tip They look like green roots on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 35 Liferoot##3357 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 150 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 185 |or
'|goto Wetlands 63.29,74.88 < 20 |noway |c |or
step
map Wetlands
path follow smart; loop off; dist 20
path	63.29,74.88	64.42,68.06	61.97,56.83	59.97,50.83	55.96,45.32
path	53.92,41.52	50.85,37.60	44.42,36.02	42.39,32.16	39.88,29.56
click Liferoot##2041+
|tip They look like green roots on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 35 Liferoot##3357 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 150 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 185 |or
'|goto Wetlands 39.88,29.56 < 20 |noway |c |next "Collect_Liferoot_185" |or
step
label "Collect_Kingsblood_185"
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	46.75,25.55	51.58,29.02	56.21,30.36	59.67,33.23	62.46,34.02
path	61.92,38.94	58.55,43.68	56.51,48.27	44.88,34.82	41.25,33.98
path	35.44,31.57	31.52,36.24	26.99,34.94	18.37,36.35	13.78,37.41
path	14.84,33.80	18.22,32.79	19.10,26.35	21.55,27.19	24.28,28.73
path	27.93,30.36	32.61,27.99	35.45,24.60	38.43,23.41	40.84,24.23
click Kingsblood##1624+ |notinsticky
|tip They look like bushy purple, pink, and green plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 35 Kingsblood##3356 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 125 Herbalism skill to gather these.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 185 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 35 Crystal Vial##3371 |goto Orgrimmar/1 55.24,45.90 |or
'|complete skill("Alchemy") >= 185 |or
step
talk Yelmak##3347
|tip Inside the building.
Train Greater Healing Potion |learn Greater Healing Potion##7181 |goto Orgrimmar/1 55.68,45.76
step
create 35 Greater Healing Potion##7181,Alchemy,185
|tip You may need to create more or less of these.
|tip Each additional potion requires 1 Liferoot, 1 Kingsblood, and 1 Crystal Vial.
stickystart "Collect_Stranglekelp_210"
step
label "Collect_Goldthorn_210"
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	63.96,65.99	63.05,62.20	64.55,58.27	64.12,55.92	63.70,52.51
path	62.57,49.88	60.62,47.74	61.76,38.56	62.39,32.52	61.21,28.17
path	58.78,27.10	55.91,28.12	53.10,25.81	42.45,23.59	39.65,21.95
path	37.94,21.19	36.23,21.95	33.54,25.55	30.98,30.62	35.70,35.18
path	35.17,41.49	37.05,44.46	40.60,46.24	48.49,45.42	51.70,48.76
path	54.08,48.34	54.17,57.96	55.21,62.17	57.42,61.55	59.86,63.63
path	63.26,66.36	61.63,61.17	59.25,58.85	59.51,51.62
click Goldthorn##2046+
|tip They look like thorny brown and green plants on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 35 Goldthorn##3821 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 170 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 5 of these; you will need them for future steps.
'|complete skill("Alchemy") >= 210 |or
step
label "Collect_Stranglekelp_210"
collect 30 Stranglekelp##3820 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 210 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 30 Crystal Vial##3371 |goto Orgrimmar/1 55.24,45.90 |or
'|complete skill("Alchemy") >= 210 |or
step
talk Yelmak##3347
|tip Inside the building.
Train Elixir of Agility |learn Elixir of Agility##11449 |goto Orgrimmar/1 55.68,45.76
step
create 30 Elixir of Agility##11449,skill Alchemy,210
|tip You may need to create more or less of these.
|tip Each additional elixir requires 1 Stranglekelp, 1 Goldthorn, and 1 Crystal Vial.
stickystart "Collect_Goldthorn_215"
step
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	41.90,20.67	37.44,18.90	34.85,19.46	32.34,24.69	30.05,30.56
path	31.98,34.72	35.10,35.48	36.39,37.67	36.22,43.48	39.56,45.08
path	41.94,46.79	43.43,52.34	46.37,51.56	48.08,49.67	48.49,45.14
path	48.80,39.39	47.67,35.55	47.51,32.62	54.93,29.17	59.73,28.40
path	63.25,29.41	63.03,23.00	59.49,21.11	57.08,20.01	54.52,20.03
path	52.60,22.27	51.52,24.23	41.44,25.58
click Wild Steelbloom##1623+
|tip They look like leafy white and green flowers on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 5 Wild Steelbloom##3355 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 115 Herbalism skill to gather these.
'|complete skill("Alchemy") >= 215 |or
step
label "Collect_Goldthorn_215"
collect 5 Goldthorn##3821 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 215 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 5 Crystal Vial##3371 |goto Orgrimmar/1 55.24,45.90 |or
'|complete skill("Alchemy") >= 215 |or
step
talk Yelmak##3347
|tip Inside the building.
Train Elixir of Greater Defense |learn Elixir of Greater Defense##11450 |goto Orgrimmar/1 55.68,45.76
step
create 5 Elixir of Greater Defense##11450,Alchemy,215
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Yelmak##3347
|tip Inside the building.
Train Artisan Alchemy |skillmax Alchemy,300 |goto Orgrimmar/1 55.68,45.76
step
talk Yelmak##3347
|tip Inside the building.
Train Superior Healing Potion |learn Superior Healing Potion##11457 |goto Orgrimmar/1 55.68,45.76
stickystart "Collect_Khadgar's_Whisker_230"
step
map Searing Gorge/0
path follow smart; loop on; ants curved
path	66.96,42.21	64.77,45.07	62.15,45.87	60.53,49.35	59.31,53.04
path	56.48,61.80	55.17,68.25	49.61,67.64	44.84,70.37	40.79,73.38
path	36.75,73.46	31.44,67.49	31.13,59.44	28.96,55.58	27.38,50.10
path	29.56,44.58	31.72,41.24	35.79,45.59	38.99,42.72	43.55,41.63
path	46.74,42.22	51.97,39.92	57.25,36.61	60.63,34.56	64.32,33.64
path	68.22,35.32
click Sungrass##142142+
|tip They look like clumps of green and yellow grass on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 65 Sungrass##8838 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 230 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 50 of these; you will need them for future steps.
'|complete skill("Alchemy") >= 230 |or
step
label "Collect_Khadgar's_Whisker_230"
map Western Plaguelands/0
path follow smart; loop on; ants curved; dist 60
path	31.87,59.33	36.90,57.16	43.53,53.27	45.91,44.70	45.21,35.23
path	49.51,35.12	51.02,47.42	55.22,51.34	61.82,52.02	67.25,44.52
path	63.60,56.06	56.61,60.11	52.61,67.55	46.40,59.23	37.91,62.21
path	33.73,62.71
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 185 Herbalism skill to gather these.
collect 15 Khadgar's Whisker##3358 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 230 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 15 Crystal Vial##3371 |goto Orgrimmar/1 55.24,45.90 |or
'|complete skill("Alchemy") >= 230 |or
step
create 15 Superior Healing Potion##11457,Alchemy,230
step
talk Yelmak##3347
|tip Inside the building.
Train Philosopher's Stone |learn Philosopher's Stone##11459 |goto Orgrimmar/1 55.68,45.76
step
talk Yelmak##3347
|tip Inside the building.
Train Elixir of Detect Undead |learn Elixir of Detect Undead##11460 |goto Orgrimmar/1 55.68,45.76
step
talk Kor'geld##3348
|tip Inside the building.
buy 45 Crystal Vial##3371 |goto Orgrimmar/1 55.24,45.90 |or
'|complete skill("Alchemy") >= 265 |or
stickystart "Philosopher_Iron"
stickystart "Philosopher_Firebloom"
stickystart "Philosopher_Purple_Lotus"
step
collect 1 Black Vitriol##9262
|tip This can be gathered from mining Mithril or higher ore, but is also purchasable for cheap on the Auction House.
'|complete skill("Alchemy") >= 231 |or
step
label "Philosopher_Iron"
collect 4 Iron Bar##3575
|tip This can be gathered with Mining or purchased from the Auction House.
'|complete skill("Alchemy") >= 231 |or
step
label "Philosopher_Firebloom"
map Searing Gorge/0
path follow smart; loop on; ants straight; dist 30
path	37.00,41.10	30.85,44.01	29.87,50.40	31.28,58.18	31.09,64.17
path	31.15,68.86	34.68,68.60	39.43,73.19	45.08,66.57	47.38,61.80
path	52.13,67.88	56.85,61.86	58.61,56.17	63.23,64.32	64.76,55.47
path	65.92,46.59	67.62,37.32	59.23,35.66	48.34,38.83
|tip Gather Firebloom along this path.
click Firebloom##4625+
collect 4 Firebloom##4625
'|complete skill("Alchemy") >= 231 |or
step
label "Philosopher_Purple_Lotus"
collect 4 Purple Lotus##8831
Search the area |goto Felwood/0 57.68,85.44
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
'|complete skill("Alchemy") >= 231 |or
step
create 1 Philosopher's Stone##9149
'|complete skill("Alchemy") >= 231
step
label "Start_Path"
Search the area |goto Felwood/0 57.68,85.44 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect 45 Purple Lotus##8831 |or
'|complete skill("Alchemy") >= 265 |or
step
Search the area |goto Felwood/0 56.28,84.52 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect 45 Purple Lotus##8831 |or
'|complete skill("Alchemy") >= 265 |or
step
Search the area |goto Felwood/0 39.19,69.90 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect 45 Purple Lotus##8831 |or
'|complete skill("Alchemy") >= 265 |or
step
Search the area |goto Felwood/0 37.46,68.04 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect 45 Purple Lotus##8831 |n
step
Search the area |goto Felwood/0 37.51,65.66 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect 45 Purple Lotus##8831 |or
'|complete skill("Alchemy") >= 265 |or
step
Search the area |goto Felwood/0 39.7,45.1 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect 45 Purple Lotus##8831 |or
'|complete skill("Alchemy") >= 265 |or
step
Search the area |goto Felwood/0 42.6,36.2 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect 45 Purple Lotus##8831 |or
'|complete skill("Alchemy") >= 265 |or
step
Search the area |goto Felwood/0 49.60,31.52 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect 45 Purple Lotus##8831 |or
step
Search the area |goto Felwood/0 49.08,30.02 < 20 |c |next "Start_Path"
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect 45 Purple Lotus##8831 |or
step
create 45 Elixir of Detect Undead##11460,Alchemy,265
|tip You may need to create more or less of these.
|tip Each additional elixir requires 1 Purple Lotus and 1 Crystal Vial.
stickystart "Collect_Sungrass_285"
step
map Feralas/0
path follow smart; loop on; ants straight; dist 30
path	53.38,7.89	51.46,6.46	49.81,5.77	49.72,7.88	49.28,11.08
path	47.71,12.05	47.87,14.71	49.76,14.27	51.85,14.75	53.36,11.89
click Blindweed##142143+
|tip They look like multi-colored flowers on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 50 Blindweed##8839 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 235 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 285 |or
step
label "Collect_Sungrass_285"
collect 50 Sungrass##8838 |or
|tip You collected these in a previous step.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 285 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 25 Crystal Vial##3371 |goto Orgrimmar/1 55.24,45.90 |or
'|complete skill("Alchemy") >= 285 |or
step
talk Yelmak##3347
|tip Inside the building.
Train Superior Mana Potion |learn Superior Mana Potion##17553 |goto Orgrimmar/1 55.68,45.76
step
create 25 Superior Mana Potion##17553,Alchemy,285
|tip You may need to create more or less of these.
|tip Each additional potion requires 2 Sungrass, 2 Blindweed, and 1 Crystal Vial.
stickystart "Collect_Mountain_Silversage_300"
step
map Swamp of Sorrows/0
path follow smart; loop on; ants curved; dist 60
path	17.62,52.92	21.60,54.68	30.93,60.71	39.41,56.93	51.73,59.62
path	64.51,67.32	73.31,81.92	82.02,76.03	85.30,62.66	87.62,39.95
path	84.93,31.21	80.12,20.61	66.51,22.72	56.81,31.92	47.01,36.01
path	36.11,39.86	26.93,42.92
click Golden Sansam##176583+
|tip They look like yellow roots with bushy green tops on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 69 Golden Sansam##13464 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 260 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 25 of these, you will need them in Outland.
'|complete skill("Alchemy") >= 300 |or
step
label "Collect_Mountain_Silversage_300"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	69.50,80.51	66.73,78.96	62.06,80.45	60.17,83.38	57.90,84.92
path	56.43,85.63	52.59,86.79	50.45,85.64	47.59,86.84	44.06,85.48
path	40.43,83.69	37.58,82.20	36.74,80.02	34.35,78.80	30.60,79.47
path	29.81,78.29	29.45,73.80	29.51,71.95	30.47,70.66	30.12,68.78
path	26.87,68.47	26.22,63.87	24.35,55.86	24.60,51.19	24.66,49.08
path	24.29,47.04	24.87,40.95	26.12,37.25	26.47,32.27	28.16,29.95
path	29.28,30.78	30.53,29.41	29.59,24.96	30.56,20.83	33.11,20.72
path	34.48,21.20	36.41,20.34	38.57,16.60	42.23,16.10	44.74,14.15
path	48.26,13.20	49.78,17.80	51.76,16.54	52.14,13.12	54.40,13.42
path	56.79,14.48	59.79,16.53	62.08,16.53	63.95,19.36	65.85,21.43
path	66.83,23.10	67.79,22.98	68.24,20.16	70.91,20.97	71.45,25.67
path	71.86,28.59	74.60,32.13	74.81,36.14	76.10,40.85	76.77,46.27
path	76.23,50.57	76.85,54.91	75.63,60.70	74.66,64.47	74.30,69.24
path	71.82,70.72	70.92,71.71	71.15,74.12	70.59,75.37	70.92,79.06
click Mountain Silversage##176586+ |notinsticky
|tip They look like frosted green and white plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 37 Mountain Silversage##13465 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 280 Herbalism skill to gather these.
|tip Save at least 15 of these, you will need them in Outland.
'|complete skill("Alchemy") >= 300 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 22 Crystal Vial##3371 |goto Orgrimmar/1 55.24,45.90 |or
'|complete skill("Alchemy") >= 300 |or
step
talk Yelmak##3347
|tip Inside the building.
Train Major Healing Potion |learn Major Healing Potion##17556 |goto Orgrimmar/1 55.68,45.76
step
create 22 Major Healing Potion##17556,Alchemy,300
|tip You may need to create more or less of these.
|tip Each additional potion requires 2 Golden Sansam, 1 Mountain Silversage, and 1 Crystal Vial.
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to train Master professions in Outland.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Burning Crusade-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Alchemy |confirm |next "Begin_Profession_Leveling_Outland" |or
'|complete skill("Alchemy") >= 350 |or |next "Begin_Profession_Leveling_Outland"
stickystart "Collect_Dreaming_Glory_Total"
stickystart "Collect_Terocone_Total"
stickystart "Collect_Netherbloom_Total"
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
|tip They look like bushy green and blue plants on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 35 Felweed##22785 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 300 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 350 |or
step
label "Collect_Dreaming_Glory_Total"
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
click Dreaming Glory##181271+ |notinsticky
|tip They look like glowing white flowers on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 45 Dreaming Glory##22786 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 315 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 350 |or
step
label "Collect_Terocone_Total"
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
click Terocone##181277+ |notinsticky
|tip They look like white and blue crystal-like cones on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 5 Terocone##22789 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 325 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 335 |or
step
label "Collect_Netherbloom_Total"
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
click Netherbloom##181279+ |notinsticky
|tip They look like three-leafed brown and purple stems on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 10 Netherbloom##22791 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 350 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 340 |or
step
talk Apothecary Antonivich##16588
|tip Inside the building.
buy 115 Crystal Vial##3371 |goto Hellfire Peninsula/0 52.28,36.46 |or
'|complete skill("Alchemy") >= 350 |or
step
label "Begin_Profession_Leveling_Outland"
talk Apothecary Antonivich##16588
|tip Inside the building.
Train Master Alchemy |skillmax Alchemy,375 |goto Hellfire Peninsula/0 52.28,36.46
step
talk Apothecary Antonivich##16588
|tip Inside the building.
Train Onslaught Elixir |learn Onslaught Elixir##33738 |goto Hellfire Peninsula/0 52.28,36.46
|tip Alternatively, you can make Adept's Elixirs for 1 Dreamfoil and 1 Felweed each.
|tip You can also make Volatile Healing Potions for 1 Golden Sansam and 1 Felweed each.
step
talk Apothecary Antonivich##16588
|tip Inside the building.
buy 15 Crystal Vial##3371 |goto Hellfire Peninsula/0 52.28,36.46 |or
'|complete skill("Alchemy") >= 315 |or
stickystart "Collect_Felweed_315"
step
collect 15 Mountain Silversage##13465 |or
|tip You collected these in a previous step.
|tip Alternatively, you can make Adept's Elixirs for 1 Dreamfoil and 1 Felweed each.
|tip You can also make Volatile Healing Potions for 1 Golden Sansam and 1 Felweed each.
'|complete skill("Alchemy") >= 315 |or
step
label "Collect_Felweed_315"
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
click Felweed##181270+ |notinsticky
|tip They look like bushy green and blue plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 15 Felweed##22785 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 300 Herbalism skill to gather these.
|tip Alternatively, you can make Adept's Elixirs for 1 Dreamfoil and 1 Felweed each. |notinsticky
|tip You can also make Volatile Healing Potions for 1 Golden Sansam and 1 Felweed each. |notinsticky
'|complete skill("Alchemy") >= 315 |or
step
create 15 Onslaught Elixir##33738,Alchemy,315
|tip Alternatively, you can make Adept's Elixirs for 1 Dreamfoil and 1 Felweed each.
|tip You can also make Volatile Healing Potions for 1 Golden Sansam and 1 Felweed each.
stickystart "Collect_Dreaming_Glory_330"
step
collect 25 Golden Sansam##13464 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 330 |or
step
label "Collect_Dreaming_Glory_330"
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
click Dreaming Glory##181271+ |notinsticky
|tip They look like glowing white flowers on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 25 Dreaming Glory##22786 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 315 Herbalism skill to gather these.
'|complete skill("Alchemy") >= 330 |or
step
talk Apothecary Antonivich##16588
|tip Inside the building.
Train Elixir of Healing Power |learn Elixir of Healing Power##28545 |goto Hellfire Peninsula/0 52.28,36.46
step
talk Apothecary Antonivich##16588
|tip Inside the building.
buy 25 Crystal Vial##3371 |goto Hellfire Peninsula/0 52.28,36.46 |or
'|complete skill("Alchemy") >= 330 |or
step
create 25 Elixir of Healing Power##28545,Alchemy,330
|tip You may need to create more or less of these.
|tip Each additional elixir requires 1 Golden Sansam, 1 Dreaming Glory, and 1 Crystal Vial.
stickystart "Collect_Felweed_335"
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
|tip They look like white and blue crystal-like cones on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 5 Terocone##22789 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 325 Herbalism skill to gather these.
'|complete skill("Alchemy") >= 335 |or
step
label "Collect_Felweed_335"
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
click Felweed##181270+ |notinsticky
|tip They look like bushy green and blue plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 5 Felweed##22785 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 300 Herbalism skill to gather these.
'|complete skill("Alchemy") >= 335 |or
step
talk Apothecary Antonivich##16588
|tip Inside the building.
Train Elixir of Draenic Wisdom |learn Elixir of Draenic Wisdom##39638 |goto Hellfire Peninsula/0 52.28,36.46
step
talk Apothecary Antonivich##16588
|tip Inside the building.
buy 5 Crystal Vial##3371 |goto Hellfire Peninsula/0 52.28,36.46 |or
'|complete skill("Alchemy") >= 335 |or
step
create 5 Elixir of Draenic Wisdom##39638,Alchemy,335
|tip You can make Mad Alchemist's Potions for 2 Ragveil and 1 Crystal Vial each as well.
stickystart "Collect_Felweed_340"
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
|tip They look like three-leafed brown and purple stems on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 10 Netherbloom##22791 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 350 Herbalism skill to gather these.
|tip You can also continue making Elxirs of Draenic Wisdom for 1 Terocone and 1 Felweed each.
'|complete skill("Alchemy") >= 340 |or
step
label "Collect_Felweed_340"
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
click Felweed##181270+ |notinsticky
|tip They look like bushy green and blue plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 5 Felweed##22785 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 300 Herbalism skill to gather these.
|tip You can also continue making Elxirs of Draenic Wisdom for 1 Terocone and 1 Felweed each. |notinsticky
'|complete skill("Alchemy") >= 340 |or
step
talk Apothecary Antonivich##16588
|tip Inside the building.
Train Super Healing Potion |learn Super Healing Potion##28551 |goto Hellfire Peninsula/0 52.28,36.46
|tip You can also continue making Elxirs of Draenic Wisdom for 1 Terocone and 1 Felweed each.
step
talk Apothecary Antonivich##16588
|tip Inside the building.
buy 70 Crystal Vial##3371 |goto Hellfire Peninsula/0 52.28,36.46 |or
|tip Save these, you will need them for future steps.
'|complete skill("Alchemy") >= 375 |or
step
create 5 Super Healing Potion##28551,Alchemy,340
|tip You can also continue making Elxirs of Draenic Wisdom for 1 Terocone and 1 Felweed each.
stickystart "Collect_Felweed_355"
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
|tip They look like glowing white flowers on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 20 Dreaming Glory##22786 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 315 Herbalism skill to gather these.
'|complete skill("Alchemy") >= 350 |or
step
label "Collect_Felweed_355"
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
click Felweed##181270+ |notinsticky
|tip They look like bushy green and blue plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 10 Felweed##22785 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 300 Herbalism skill to gather these.
'|complete skill("Alchemy") >= 350 |or
step
talk Daga Ramba##19837
|tip Inside the building.
buy Recipe: Super Mana Potion##22907 |goto Blade's Edge Mountains/0 51.0,57.8 |or
'|complete skill("Alchemy") >= 350 |or
step
use the Recipe: Super Mana Potion##22907
Learn Super Mana Potion |learn Super Mana Potion##28555
step
create 10 Super Mana Potion##28555,Alchemy,350
step
Reach Level 65 |ding 65
|tip You must be at least level 65 to train Grand Master professions in Northrend.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Lich King-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Alchemy |confirm |next "Begin_Profession_Leveling_Northrend" |or
'|complete skill("Alchemy") >= 450 |or |next "Begin_Profession_Leveling_Northrend"
stickystart "Collect_Tiger_Lily_Total"
stickystart "Collect_Talandra's_Rose_Total"
stickystart "Collect_Adder's_Tongue_Total"
stickystart "Collect_Icethorn_Total"
stickystart "Collect_Lichbloom_Total"
stickystart "Collect_Frost_Lotus_Total"
step
map Grizzly Hills/0
path follow smart; loop on; ants curved; dist 30
path	33.60,58.17	36.73,58.03	40.04,57.32	44.72,56.61	47.84,54.58
path	49.81,54.05	54.38,54.30	58.84,55.09	61.72,55.01	64.82,54.36
path	67.56,53.51	69.48,52.86	71.51,50.73	73.75,50.67	76.35,51.72
path	78.33,53.39	79.69,55.25	80.88,53.66	80.34,49.90	80.03,45.95
path	79.35,43.82	77.25,42.64	76.79,41.22	76.18,40.15	75.90,38.34
path	74.65,37.57	72.81,36.20	72.32,33.61	72.24,30.71	73.13,27.76
path	73.37,24.33	72.23,22.72	70.75,22.30	69.43,22.95	68.63,25.69
path	66.08,27.92	63.75,26.91	62.03,28.43	60.18,30.64	58.52,32.86
path	56.99,34.12	56.16,34.41	54.76,32.26	52.78,28.95	51.02,27.53
path	48.13,28.53	46.37,29.45	44.18,30.41	41.83,30.63	37.72,31.11
path	35.93,31.48	33.88,34.64	32.49,36.10	30.70,37.06	28.89,38.03
path	26.96,37.87	25.61,36.39	24.73,34.12	23.73,31.33	23.47,28.76
path	22.53,26.99	19.82,27.91	17.62,29.55	14.61,30.69	12.77,33.55
path	12.00,36.91	12.50,40.99	12.99,43.47	14.55,45.14	16.66,47.58
path	15.92,50.34	15.24,53.54	15.01,59.35	14.77,62.65	13.32,65.87
path	12.65,72.26	13.95,73.25	16.82,72.05	18.71,68.56	18.80,64.10
path	20.52,60.79	25.85,54.57	29.85,56.37	32.97,57.20
click Goldclover##189973+
|tip They look like patches of bright yellow clovers along the path.
|tip Track them on your minimap with "Find Herbs".
collect 134 Goldclover##36901 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 350 Herbalism skill to gather these.
'|complete skill("Alchemy") >= 450 |or
step
label "Collect_Tiger_Lily_Total"
map Grizzly Hills/0
path follow smart; loop on; ants curved; dist 30
path	27.83,63.12	28.20,60.55	30.23,56.16	29.74,52.24	30.47,48.98
path	31.42,44.66	33.84,43.45	35.65,41.84	37.60,40.16	38.51,37.53
path	38.74,36.28	41.48,35.95	41.77,33.64	39.88,32.55	38.27,32.31
path	35.71,33.31	33.82,36.90	32.03,39.41	30.47,41.22	27.87,41.31
path	25.61,40.68	23.99,41.60	22.09,41.60	19.52,40.88	17.64,40.59
path	14.02,40.64	8.38,37.90	8.27,40.87	8.80,41.42	11.29,42.78
path	13.83,45.75	16.93,49.10	16.20,51.25	14.61,53.39	13.18,59.23
path	13.33,62.34	15.63,63.79	17.95,66.09	21.27,67.48	23.13,68.61
path	24.89,68.85	26.26,70.55	27.32,68.67	27.81,65.33
click Tiger Lily##190169+ |notinsticky
|tip They look like red and orange flowers along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 34 Tiger Lily##36904 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 375 Herbalism skill to gather these. |notinsticky
'|complete skill("Alchemy") >= 395 |or
step
label "Collect_Talandra's_Rose_Total"
map Zul'Drak/0
path follow smart; loop on; ants curved; dist 30
path	30.73,71.40	25.40,79.65	25.69,82.59	28.19,83.79	30.34,84.28
path	33.89,87.85	37.49,87.33	39.15,86.41	38.96,80.98	37.83,76.32
path	36.21,70.92	34.35,67.41	34.28,65.19	35.61,62.86	37.93,60.71
path	38.86,59.78	39.78,61.44	41.55,62.24	43.04,61.33	43.35,55.94
path	43.58,51.98	43.97,46.40	44.49,43.06	44.04,41.71	42.45,42.35
path	40.87,42.51	39.72,43.88	37.35,43.41	36.27,41.67	34.89,42.02
path	33.40,45.88	33.03,48.26	31.58,44.80	30.13,42.80	28.47,42.98
path	25.80,47.81	23.38,49.56	24.60,51.79	27.64,55.17	30.12,56.24
path	30.81,63.95
click Talandra's Rose##190170+ |notinsticky
|tip They look like purple and pink flowers along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 24 Talandra's Rose##36907 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 385 Herbalism skill to gather these. |notinsticky
'|complete skill("Alchemy") >= 401 |or
step
label "Collect_Adder's_Tongue_Total"
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
click Adder's Tongue##191019+ |notinsticky
|tip They look like piles of green moss along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 34 Adder's Tongue##36903 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 400 Herbalism skill to gather these. |notinsticky
'|complete skill("Alchemy") >= 405 |or
step
label "Collect_Icethorn_Total"
map The Storm Peaks/0
path follow smart; loop on; ants curved; dist 30
path	40.48,84.72	38.66,87.17	37.60,88.31	36.46,88.65	35.02,88.40
path	33.04,87.96	32.36,87.32	31.15,86.01	31.26,83.85	32.88,82.55
path	34.41,82.23	37.43,81.32	38.61,80.09	38.42,77.89	38.35,76.11
path	38.74,73.99	37.68,73.22	36.73,71.76	36.68,69.14	36.32,67.06
path	34.88,65.94	30.85,65.94	29.52,67.06	29.48,69.42	29.23,70.90
path	27.57,72.50	26.02,72.85	25.60,71.51	26.75,67.96	27.06,65.35
path	26.93,62.88	26.18,62.34	24.08,61.56	23.06,60.72	21.86,57.73
path	22.87,55.34	24.36,56.14	27.01,56.95	27.90,55.75	28.61,53.06
path	29.83,51.20	31.85,50.00	32.80,49.22	33.11,48.06	33.67,45.40
path	34.61,43.60	35.58,42.52	36.26,43.24	37.45,45.62	39.00,47.32
path	39.40,48.12	39.25,49.56	38.64,51.52	37.74,54.90	37.82,57.96
path	37.92,61.22	37.98,63.22	38.43,63.67	39.29,63.34	41.71,62.19
path	43.54,59.60	43.96,56.47	43.76,55.08	45.37,54.72	46.71,56.45
path	48.25,58.99	48.84,60.33	48.86,63.66	49.78,64.45	51.20,64.42
path	52.87,65.09	54.07,66.91	54.51,68.66	52.51,70.07	50.76,72.23
path	49.99,73.68	49.17,77.80	46.82,77.95	44.64,78.02	41.03,78.62
path	41.08,81.81
click Icethorn##190172+ |notinsticky
|tip They look like blue and white thorns growing out of the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 20 Icethorn##36906 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 435 Herbalism skill to gather these. |notinsticky
'|complete skill("Alchemy") >= 415 |or
step
label "Collect_Lichbloom_Total"
map The Storm Peaks/0
path follow smart; loop on; ants curved; dist 30
path	40.48,84.72	38.66,87.17	37.60,88.31	36.46,88.65	35.02,88.40
path	33.04,87.96	32.36,87.32	31.15,86.01	31.26,83.85	32.88,82.55
path	34.41,82.23	37.43,81.32	38.61,80.09	38.42,77.89	38.35,76.11
path	38.74,73.99	37.68,73.22	36.73,71.76	36.68,69.14	36.32,67.06
path	34.88,65.94	30.85,65.94	29.52,67.06	29.48,69.42	29.23,70.90
path	27.57,72.50	26.02,72.85	25.60,71.51	26.75,67.96	27.06,65.35
path	26.93,62.88	26.18,62.34	24.08,61.56	23.06,60.72	21.86,57.73
path	22.87,55.34	24.36,56.14	27.01,56.95	27.90,55.75	28.61,53.06
path	29.83,51.20	31.85,50.00	32.80,49.22	33.11,48.06	33.67,45.40
path	34.61,43.60	35.58,42.52	36.26,43.24	37.45,45.62	39.00,47.32
path	39.40,48.12	39.25,49.56	38.64,51.52	37.74,54.90	37.82,57.96
path	37.92,61.22	37.98,63.22	38.43,63.67	39.29,63.34	41.71,62.19
path	43.54,59.60	43.96,56.47	43.76,55.08	45.37,54.72	46.71,56.45
path	48.25,58.99	48.84,60.33	48.86,63.66	49.78,64.45	51.20,64.42
path	52.87,65.09	54.07,66.91	54.51,68.66	52.51,70.07	50.76,72.23
path	49.99,73.68	49.17,77.80	46.82,77.95	44.64,78.02	41.03,78.62
path	41.08,81.81
click Lichbloom##190171+ |notinsticky
|tip They look like tangled blue plants along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 125 Lichbloom##36905 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 425 Herbalism skill to gather these. |notinsticky
'|complete skill("Alchemy") >= 450 |or
step
label "Collect_Frost_Lotus_Total"
click Frost Lotus##190176+ |notinsticky
|tip They look like pink, white, and blue flowers along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
|tip Frost Lotus is a rare herb and will take longer to find. |notinsticky
collect 15 Frost Lotus##36908 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
'|complete skill("Alchemy") >= 450 |or
stickystart "Collect_Huge_Citrine_Total"
stickystart "Collect_Eternal_Fire_Total"
stickystart "Collect_Saronite_Bar_Total"
stickystart "Collect_Pygmy_Suckerfish_Total"
step
collect 5 Dark Jade##36932 |or
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
|tip You can also Transmute: Skyflare Diamond for points.
|tip Each Skyflare Diamond costs 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to transmute.
'|complete skill("Alchemy") >= 435 |or
step
label "Collect_Huge_Citrine_Total"
collect 5 Huge Citrine##36929 |or
|tip Prospect them with Jewelcrafting or purchase them from the auction house. |notinsticky
|tip You can also Transmute: Skyflare Diamond for points. |notinsticky
|tip Each Skyflare Diamond costs 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to transmute. |notinsticky
'|complete skill("Alchemy") >= 435 |or
step
label "Collect_Eternal_Fire_Total"
Enter the cave |goto The Storm Peaks/0 62.48,41.49 < 20 |walk |notinsticky
kill Wailing Winds##30450+ |notinsticky
|tip Inside the cave. |notinsticky
use the Crystallized Fire##37702 |notinsticky
|tip Combine 10 Crystallized Fire into 1 Eternal Fire. |notinsticky
collect 5 Eternal Fire##36860 |goto The Storm Peaks/0 61.43,39.48 |or
|tip Farm them from fire elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Titanium Veins with the Northrend Mining guide. |notinsticky
|tip You can also Transmute: Skyflare Diamond for points. |notinsticky
|tip Each Skyflare Diamond costs 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to transmute. |notinsticky
'|complete skill("Alchemy") >= 435 |or
step
label "Collect_Saronite_Bar_Total"
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	79.27,65.32	80.51,63.45	80.55,60.91	80.11,58.43	79.71,55.90
path	78.57,54.98	76.16,53.63	74.31,53.72	72.37,52.46	70.19,51.19
path	68.54,50.18	68.10,49.16	68.42,47.09	71.54,42.33	71.77,41.02
path	70.80,39.72	69.17,39.54	66.84,39.75	65.22,39.43	63.46,37.28
path	62.15,34.64	60.96,31.35	58.97,32.07	56.70,33.49	55.46,34.36
path	53.15,36.55	51.51,36.91	49.18,36.87	46.07,35.95	44.29,39.29
path	40.80,40.94	40.12,42.66	39.54,44.03	38.93,44.94	38.07,48.02
path	38.18,49.57	37.68,51.43	36.63,51.07	35.74,50.18	34.32,48.74
path	32.65,48.37	32.04,50.86	32.76,53.74	31.75,57.06	31.27,59.57
path	30.57,62.54	31.30,66.34	32.34,69.72	34.25,69.54	36.01,70.86
path	37.83,69.46	38.62,68.21	40.71,66.06	42.62,65.37	47.84,65.25
path	49.03,63.72	49.25,62.37	47.89,57.80	48.08,53.78	48.13,50.05
path	48.61,47.04	51.44,45.25	55.15,43.88	57.87,43.96	59.59,46.21
path	61.20,47.93	62.33,50.75	62.58,54.26	64.21,56.39	65.31,59.10
path	66.48,61.81	66.37,64.78	67.17,70.17	67.87,70.86	69.35,69.71
path	72.29,67.71	72.82,64.27	73.82,61.06	76.10,61.31	77.53,63.76
click Saronite Deposit##189980+ |notinsticky
click Rich Saronite Deposit##189981+ |notinsticky
|tip They look like large green clusters of rock and crystals. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect Saronite Ore##36912 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 56 Saronite Bar##36913 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 400 Mining skill to gather these. |notinsticky
'|complete skill("Alchemy") >= 430 |or
step
label "Collect_Pygmy_Suckerfish_Total"
collect 20 Pygmy Suckerfish##40199 |or
|tip Farm them with Fishing or purchase them from the auction house. |notinsticky
'|complete skill("Alchemy") >= 380 |or
step
talk Patricia Egan##28725
buy 100 Crystal Vial##3371 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 450 |or
step
label "Begin_Profession_Leveling_Northrend"
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Grand Master Alchemy |skillmax Alchemy,450 |goto Dalaran/1 42.64,32.06
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Resurgent Healing Potion |learn Resurgent Healing Potion##53838 |goto Dalaran/1 42.64,32.06
step
map Grizzly Hills/0
path follow smart; loop on; ants curved; dist 30
path	33.60,58.17	36.73,58.03	40.04,57.32	44.72,56.61	47.84,54.58
path	49.81,54.05	54.38,54.30	58.84,55.09	61.72,55.01	64.82,54.36
path	67.56,53.51	69.48,52.86	71.51,50.73	73.75,50.67	76.35,51.72
path	78.33,53.39	79.69,55.25	80.88,53.66	80.34,49.90	80.03,45.95
path	79.35,43.82	77.25,42.64	76.79,41.22	76.18,40.15	75.90,38.34
path	74.65,37.57	72.81,36.20	72.32,33.61	72.24,30.71	73.13,27.76
path	73.37,24.33	72.23,22.72	70.75,22.30	69.43,22.95	68.63,25.69
path	66.08,27.92	63.75,26.91	62.03,28.43	60.18,30.64	58.52,32.86
path	56.99,34.12	56.16,34.41	54.76,32.26	52.78,28.95	51.02,27.53
path	48.13,28.53	46.37,29.45	44.18,30.41	41.83,30.63	37.72,31.11
path	35.93,31.48	33.88,34.64	32.49,36.10	30.70,37.06	28.89,38.03
path	26.96,37.87	25.61,36.39	24.73,34.12	23.73,31.33	23.47,28.76
path	22.53,26.99	19.82,27.91	17.62,29.55	14.61,30.69	12.77,33.55
path	12.00,36.91	12.50,40.99	12.99,43.47	14.55,45.14	16.66,47.58
path	15.92,50.34	15.24,53.54	15.01,59.35	14.77,62.65	13.32,65.87
path	12.65,72.26	13.95,73.25	16.82,72.05	18.71,68.56	18.80,64.10
path	20.52,60.79	25.85,54.57	29.85,56.37	32.97,57.20
click Goldclover##189973+
|tip They look like patches of bright yellow clovers along the path.
|tip Track them on your minimap with "Find Herbs".
collect 134 Goldclover##36901 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 350 Herbalism skill to gather these.
|tip Save at least 114 of these, you will need them in future steps.
'|complete skill("Alchemy") >= 360 |or
step
talk Patricia Egan##28725
|tip Inside the building.
buy 10 Crystal Vial##3371 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 360 |or
step
create 10 Resurgent Healing Potion##53838,Alchemy,360
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Icy Mana Potion |learn Icy Mana Potion##53839 |goto Dalaran/1 42.64,32.06
step
map Zul'Drak/0
path follow smart; loop on; ants curved; dist 30
path	30.73,71.40	25.40,79.65	25.69,82.59	28.19,83.79	30.34,84.28
path	33.89,87.85	37.49,87.33	39.15,86.41	38.96,80.98	37.83,76.32
path	36.21,70.92	34.35,67.41	34.28,65.19	35.61,62.86	37.93,60.71
path	38.86,59.78	39.78,61.44	41.55,62.24	43.04,61.33	43.35,55.94
path	43.58,51.98	43.97,46.40	44.49,43.06	44.04,41.71	42.45,42.35
path	40.87,42.51	39.72,43.88	37.35,43.41	36.27,41.67	34.89,42.02
path	33.40,45.88	33.03,48.26	31.58,44.80	30.13,42.80	28.47,42.98
path	25.80,47.81	23.38,49.56	24.60,51.79	27.64,55.17	30.12,56.24
path	30.81,63.95
click Talandra's Rose##190170+
|tip They look like purple and pink flowers along the path.
|tip Track them on your minimap with "Find Herbs".
collect 24 Talandra's Rose##36907 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 385 Herbalism skill to gather these.
|tip Save at least 14 of these, you will need them in future steps.
'|complete skill("Alchemy") >= 365 |or
step
create 5 Icy Mana Potion##53839,Alchemy,365
step
talk Patricia Egan##28725
|tip Inside the building.
buy 5 Crystal Vial##3371 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 365 |or
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Spellpower Elixir |learn Spellpower Elixir##53842 |goto Dalaran/1 42.64,32.06
stickystart "Collect_10_Goldclover_375"
map Grizzly Hills/0
path follow smart; loop on; ants curved; dist 30
path	27.83,63.12	28.20,60.55	30.23,56.16	29.74,52.24	30.47,48.98
path	31.42,44.66	33.84,43.45	35.65,41.84	37.60,40.16	38.51,37.53
path	38.74,36.28	41.48,35.95	41.77,33.64	39.88,32.55	38.27,32.31
path	35.71,33.31	33.82,36.90	32.03,39.41	30.47,41.22	27.87,41.31
path	25.61,40.68	23.99,41.60	22.09,41.60	19.52,40.88	17.64,40.59
path	14.02,40.64	8.38,37.90	8.27,40.87	8.80,41.42	11.29,42.78
path	13.83,45.75	16.93,49.10	16.20,51.25	14.61,53.39	13.18,59.23
path	13.33,62.34	15.63,63.79	17.95,66.09	21.27,67.48	23.13,68.61
path	24.89,68.85	26.26,70.55	27.32,68.67	27.81,65.33
click Tiger Lily##190169+
|tip They look like red and orange flowers along the path.
|tip Track them on your minimap with "Find Herbs".
collect 34 Tiger Lily##36904 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 375 Herbalism skill to gather these.
|tip Save at least 24 of these; you will need them for future steps.
'|complete skill("Alchemy") >= 375 |or
step
label "Collect_10_Goldclover_375"
step
collect 10 Goldclover##36901 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 375 |or
step
create 10 Spellpower Elixir##53842,Alchemy,375
step
talk Patricia Egan##28725
|tip Inside the building.
buy 10 Crystal Vial##3371 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 375 |or
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Pygmy Oil |learn Pygmy Oil##53812 |goto Dalaran/1 42.64,32.06
step
collect 20 Pygmy Suckerfish##40199 |or
|tip Farm them with Fishing or purchase them from the auction house.
'|complete skill("Alchemy") >= 380 |or
step
create 5 Pygmy Oil##53812,Alchemy,380
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Potion of Nightmares |learn Potion of Nightmares##53900 |goto Dalaran/1 42.64,32.06
stickystart "Collect_10_Talandra's_Rose_385"
step
collect 5 Goldclover##36901 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 385 |or
step
label "Collect_10_Talandra's_Rose_385"
collect 10 Talandra's Rose##36907 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 385 |or
step
talk Patricia Egan##28725
|tip Inside the building.
buy 5 Crystal Vial##3371 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 385 |or
step
create 5 Potion of Nightmares##53900,Alchemy,385
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Elixir of Mighty Strength |learn Elixir of Mighty Strength##54218 |goto Dalaran/1 42.64,32.06
step
collect 24 Tiger Lily##36904 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 395 |or
step
talk Patricia Egan##28725
|tip Inside the building.
buy 12 Crystal Vial##3371 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 395 |or
step
create 12 Elixir of Mighty Strength##54218,Alchemy,395
|tip You may need to create more or less of these.
|tip Each additional elixir requires 2 Tiger Lily and 1 Crystal Vial.
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Elixir of Mighty Agility |learn Elixir of Mighty Agility##53840 |goto Dalaran/1 42.64,32.06
stickystart "Collect_10_Goldclover_400"
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
|tip They look like piles of green moss along the path.
|tip Track them on your minimap with "Find Herbs".
collect 34 Adder's Tongue##36903 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 400 Herbalism skill to gather these.
|tip Save at least 24 of these; you will need them for future steps.
'|complete skill("Alchemy") >= 400 |or
step
label "Collect_10_Goldclover_400"
collect 10 Goldclover##36901 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 400 |or
step
talk Patricia Egan##28725
|tip Inside the building.
buy 5 Crystal Vial##3371 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 400 |or
step
create 5 Elixir of Mighty Agility##53840,Alchemy,400
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Northrend Alchemy Research |learn Northrend Alchemy Research##60893 |goto Dalaran/1 42.64,32.06
stickystart "Collect_10_Adder's_Tongue_401"
stickystart "Collect_10_Goldclover_401"
step
collect 4 Talandra's Rose##36907 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 401 |or
step
label "Collect_10_Adder's_Tongue_401"
collect 10 Adder's Tongue##36903 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 401 |or
step
label "Collect_10_Goldclover_401"
collect 10 Goldclover##36901 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 401 |or
step
talk Patricia Egan##28725
|tip Inside the building.
buy 1 Crystal Vial##3371 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 401 |or
step
create 1 Northrend Alchemy Research##60893,Alchemy,401
stickystart "Collect_14_Adder's_Tongue_405"
step
collect 14 Goldclover##36901 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 405 |or
step
label "Collect_14_Adder's_Tongue_405"
collect 14 Adder's Tongue##36903 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 405 |or
step
talk Patricia Egan##28725
|tip Inside the building.
buy 7 Crystal Vial##3371 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 405 |or
step
create 7 Elixir of Mighty Agility##53840,Alchemy,405
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Indestructible Potion |learn Indestructible Potion##53905 |goto Dalaran/1 42.64,32.06
step
map The Storm Peaks/0
path follow smart; loop on; ants curved; dist 30
path	40.48,84.72	38.66,87.17	37.60,88.31	36.46,88.65	35.02,88.40
path	33.04,87.96	32.36,87.32	31.15,86.01	31.26,83.85	32.88,82.55
path	34.41,82.23	37.43,81.32	38.61,80.09	38.42,77.89	38.35,76.11
path	38.74,73.99	37.68,73.22	36.73,71.76	36.68,69.14	36.32,67.06
path	34.88,65.94	30.85,65.94	29.52,67.06	29.48,69.42	29.23,70.90
path	27.57,72.50	26.02,72.85	25.60,71.51	26.75,67.96	27.06,65.35
path	26.93,62.88	26.18,62.34	24.08,61.56	23.06,60.72	21.86,57.73
path	22.87,55.34	24.36,56.14	27.01,56.95	27.90,55.75	28.61,53.06
path	29.83,51.20	31.85,50.00	32.80,49.22	33.11,48.06	33.67,45.40
path	34.61,43.60	35.58,42.52	36.26,43.24	37.45,45.62	39.00,47.32
path	39.40,48.12	39.25,49.56	38.64,51.52	37.74,54.90	37.82,57.96
path	37.92,61.22	37.98,63.22	38.43,63.67	39.29,63.34	41.71,62.19
path	43.54,59.60	43.96,56.47	43.76,55.08	45.37,54.72	46.71,56.45
path	48.25,58.99	48.84,60.33	48.86,63.66	49.78,64.45	51.20,64.42
path	52.87,65.09	54.07,66.91	54.51,68.66	52.51,70.07	50.76,72.23
path	49.99,73.68	49.17,77.80	46.82,77.95	44.64,78.02	41.03,78.62
path	41.08,81.81
click Icethorn##190172+
|tip They look like blue and white thorns growing out of the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 20 Icethorn##36906 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 435 Herbalism skill to gather these.
'|complete skill("Alchemy") >= 415 |or
step
talk Patricia Egan##28725
|tip Inside the building.
buy 10 Crystal Vial##3371 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 415 |or
step
create 10 Indestructible Potion##53905,Alchemy,415
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Runic Mana Potion |learn Runic Mana Potion##53837 |goto Dalaran/1 42.64,32.06
stickystart "Collect_20_Goldclover_425"
step
map The Storm Peaks/0
path follow smart; loop on; ants curved; dist 30
path	40.48,84.72	38.66,87.17	37.60,88.31	36.46,88.65	35.02,88.40
path	33.04,87.96	32.36,87.32	31.15,86.01	31.26,83.85	32.88,82.55
path	34.41,82.23	37.43,81.32	38.61,80.09	38.42,77.89	38.35,76.11
path	38.74,73.99	37.68,73.22	36.73,71.76	36.68,69.14	36.32,67.06
path	34.88,65.94	30.85,65.94	29.52,67.06	29.48,69.42	29.23,70.90
path	27.57,72.50	26.02,72.85	25.60,71.51	26.75,67.96	27.06,65.35
path	26.93,62.88	26.18,62.34	24.08,61.56	23.06,60.72	21.86,57.73
path	22.87,55.34	24.36,56.14	27.01,56.95	27.90,55.75	28.61,53.06
path	29.83,51.20	31.85,50.00	32.80,49.22	33.11,48.06	33.67,45.40
path	34.61,43.60	35.58,42.52	36.26,43.24	37.45,45.62	39.00,47.32
path	39.40,48.12	39.25,49.56	38.64,51.52	37.74,54.90	37.82,57.96
path	37.92,61.22	37.98,63.22	38.43,63.67	39.29,63.34	41.71,62.19
path	43.54,59.60	43.96,56.47	43.76,55.08	45.37,54.72	46.71,56.45
path	48.25,58.99	48.84,60.33	48.86,63.66	49.78,64.45	51.20,64.42
path	52.87,65.09	54.07,66.91	54.51,68.66	52.51,70.07	50.76,72.23
path	49.99,73.68	49.17,77.80	46.82,77.95	44.64,78.02	41.03,78.62
path	41.08,81.81
click Lichbloom##190171+
|tip They look like tangled blue plants along the path.
|tip Track them on your minimap with "Find Herbs".
collect 125 Lichbloom##36905 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 425 Herbalism skill to gather these.
|tip Save at least 105 of these; you will need them for future steps.
'|complete skill("Alchemy") >= 425 |or
step
label "Collect_20_Goldclover_425"
collect 20 Goldclover##36901 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 425 |or
step
talk Patricia Egan##28725
|tip Inside the building.
buy 20 Crystal Vial##3371 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 425 |or
step
create 20 Runic Mana Potion##53837,Alchemy,425
|tip You may need to create more or less of these.
|tip Each additional potion requires 1 Goldclover, 1 Lichbloom, and 1 Crystal Vial.
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Transmute: Titanium |learn Transmute: Titanium##60350 |goto Dalaran/1 42.64,32.06
step
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	79.27,65.32	80.51,63.45	80.55,60.91	80.11,58.43	79.71,55.90
path	78.57,54.98	76.16,53.63	74.31,53.72	72.37,52.46	70.19,51.19
path	68.54,50.18	68.10,49.16	68.42,47.09	71.54,42.33	71.77,41.02
path	70.80,39.72	69.17,39.54	66.84,39.75	65.22,39.43	63.46,37.28
path	62.15,34.64	60.96,31.35	58.97,32.07	56.70,33.49	55.46,34.36
path	53.15,36.55	51.51,36.91	49.18,36.87	46.07,35.95	44.29,39.29
path	40.80,40.94	40.12,42.66	39.54,44.03	38.93,44.94	38.07,48.02
path	38.18,49.57	37.68,51.43	36.63,51.07	35.74,50.18	34.32,48.74
path	32.65,48.37	32.04,50.86	32.76,53.74	31.75,57.06	31.27,59.57
path	30.57,62.54	31.30,66.34	32.34,69.72	34.25,69.54	36.01,70.86
path	37.83,69.46	38.62,68.21	40.71,66.06	42.62,65.37	47.84,65.25
path	49.03,63.72	49.25,62.37	47.89,57.80	48.08,53.78	48.13,50.05
path	48.61,47.04	51.44,45.25	55.15,43.88	57.87,43.96	59.59,46.21
path	61.20,47.93	62.33,50.75	62.58,54.26	64.21,56.39	65.31,59.10
path	66.48,61.81	66.37,64.78	67.17,70.17	67.87,70.86	69.35,69.71
path	72.29,67.71	72.82,64.27	73.82,61.06	76.10,61.31	77.53,63.76
click Saronite Deposit##189980+
click Rich Saronite Deposit##189981+
|tip They look like large green clusters of rock and crystals.
|tip Track them on your minimap with "Find Minerals".
collect Saronite Ore##36912 |n
|tip Smelt the ore at a forge.
collect 56 Saronite Bar##36913 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 400 Mining skill to gather these.
'|complete skill("Alchemy") >= 430 |or
step
create 7 Transmute: Titanium##60350,Alchemy,430
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Transmute: Earthsiege Diamond |learn Transmute: Earthsiege Diamond##57427 |goto Dalaran/1 42.64,32.06
|tip You can also Transmute: Skyflare Diamond for points.
stickystart "Collect_5_Huge_Citrine_435"
stickystart "Collect_5_Eternal_Fire_435"
step
collect 5 Dark Jade##36932 |or
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
|tip You can also Transmute: Skyflare Diamond for points.
|tip Each Skyflare Diamond costs 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to transmute.
'|complete skill("Alchemy") >= 435 |or
step
label "Collect_5_Huge_Citrine_435"
collect 5 Huge Citrine##36929 |or
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
|tip You can also Transmute: Skyflare Diamond for points. |notinsticky
|tip Each Skyflare Diamond costs 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to transmute. |notinsticky
'|complete skill("Alchemy") >= 435 |or
step
label "Collect_5_Eternal_Fire_435"
Enter the cave |goto The Storm Peaks/0 62.48,41.49 < 20 |walk |notinsticky
kill Wailing Winds##30450+ |notinsticky
|tip Inside the cave. |notinsticky
use the Crystallized Fire##37702 |notinsticky
|tip Combine 10 Crystallized Fire into 1 Eternal Fire. |notinsticky
collect 5 Eternal Fire##36860 |goto The Storm Peaks/0 61.43,39.48 |or
|tip Farm them from fire elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Titanium Veins with the Northrend Mining guide. |notinsticky
|tip You can also Transmute: Skyflare Diamond for points. |notinsticky
|tip Each Skyflare Diamond costs 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to transmute. |notinsticky
'|complete skill("Alchemy") >= 435 |or
step
create 5 Transmute: Earthsiege Diamond##57427,Alchemy,435
|tip You can also Transmute: Skyflare Diamond for points.
|tip Each Skyflare Diamond costs 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to transmute.
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Flask of Endless Rage |learn Flask of Endless Rage##53903 |goto Dalaran/1 42.64,32.06
|tip You can also create Flasks of Pure Mojo, Stoneblood, or the Frost Wyrm.
stickystart "Collect_105_Lichbloom_450"
stickystart "Collect_45_Goldclover_450"
step
click Frost Lotus##190176+
|tip They look like pink, white, and blue flowers along the path.
|tip Track them on your minimap with "Find Herbs".
|tip Frost Lotus is a rare herb and will take longer to find.
collect 15 Frost Lotus##36908 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 450 |or
step
label "Collect_105_Lichbloom_450"
collect 105 Lichbloom##36905 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 450 |or
step
label "Collect_45_Goldclover_450"
collect 45 Goldclover##36901 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 450 |or
step
talk Patricia Egan##28725
|tip Inside the building.
buy 15 Crystal Vial##3371 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 450 |or
step
create 15 Flask of Endless Rage##53903,Alchemy,450
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Cataclysm-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Alchemy |confirm |next "Begin_Alchemy_Leveling_Cataclysm" |or
'|complete skill("Alchemy") >= 525 |or |next "Begin_Alchemy_Leveling_Cataclysm"
stickystart "Collect_Azshara's_Veil_Total"
stickystart "Collect_Heartblossom_Total"
stickystart "Collect_Volatile_Life_Total"
stickystart "Collect_Whiptail_Total"
stickystart "Collect_Twilight_Jasmine_Total"
stickystart "Collect_Nightstone_Total"
stickystart "Collect_Alicite_Total"
step
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
collect 85 Cinderbloom##52983
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 515
step
label "Collect_Azshara's_Veil_Total"
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
collect 15 Azshara's Veil##52985
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 475
step
label "Collect_Heartblossom_Total"
map Deepholm/0
path follow smart; loop on; ants curved; dist 60
path	69.45,56.02	74.70,61.14	75.81,67.59	70.52,61.93	71.11,70.62
path	66.03,68.53	58.01,73.22	47.40,67.35	37.03,53.36	37.63,44.71
path	26.81,41.51	23.12,35.31	28.92,35.62	27.84,27.02	31.22,32.00
path	36.63,28.95	33.00,19.13	47.81,12.91	45.91,21.10	43.61,25.12
path	44.52,28.62	49.12,33.66	56.73,38.30	73.80,32.71	75.20,41.93
path	69.61,46.45
collect 25 Heartblossom##52986
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 495
step
label "Collect_Whiptail_Total"
map Uldum/0
path follow smart; loop on; ants straight; dist 30
path	52.04,34.76	49.71,31.20	46.66,28.99	48.65,32.36	49.82,35.80
path	50.63,41.83	51.55,44.75	54.26,46.47	55.55,46.73	56.26,49.75
path	57.24,52.88	58.12,55.65	58.98,59.77	59.28,63.35	59.14,69.50
path	59.27,74.41	59.77,79.51	60.03,82.60	61.43,80.76	62.87,78.55
path	65.43,77.43	67.74,76.82	69.59,76.35	68.06,73.08	66.74,71.67
path	60.14,56.99	59.42,53.64	57.64,47.89	56.97,45.77	58.53,30.28
path	57.61,27.73	56.82,23.62	56.97,19.77	58.45,15.72	60.98,13.91
collect 60 Whiptail##52988
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 525
step
label "Collect_Volatile_Life_Total"
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
collect 45 Volatile Life##52329
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 505
step
label "Collect_Twilight_Jasmine_Total"
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
collect 45 Twilight Jasmine##52987
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 520
step
label "Collect_Alicite_Total"
step
collect 15 Alicite##52179
|tip Prospect them with Jewelcrafting from Cataclysm Ore, mine them from Cataclysm Mining nodes, or purchase them from the Auction House.
|only if skill("Alchemy") < 525
step
label "Collect_Nightstone_Total"
collect 15 Nightstone##52180
|tip Prospect them with Jewelcrafting from Cataclysm Ore, mine them from Cataclysm Mining nodes, or purchase them from the Auction House.
|only if skill("Alchemy") < 520
step
label "Begin_Alchemy_Leveling_Cataclysm"
talk Yelmak##3347
|tip Inside the building.
Train Alchemy |skillmax Alchemy,525 |goto Orgrimmar/1 55.68,45.76
|tip You must be at least level 75.
step
talk Kor'geld##3348
buy 100 Crystal Vial##3371 |goto Orgrimmar/1 55.24,45.90
|only if skill("Alchemy") < 525
step
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
collect 5 Cinderbloom##52983
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 515
step
Open Your Alchemy Crafting Panel:
_<Create 5 Draught of War>_
|tip You may need to make a few more.
Reach 455 Alchemy |skill Alchemy,455
step
talk Yelmak##3347
|tip Inside the building.
learn Ghost Elixir##80477 |goto Orgrimmar/1 55.68,45.76
step
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
collect 10 Cinderbloom##52983
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 515
step
Open Your Alchemy Crafting Panel:
_<Create 5 Ghost Elixir>_
|tip You may need to make a few more.
Reach 460 Alchemy |skill Alchemy,460
stickystart "Azshara's_Veil_465"
step
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
collect 5 Cinderbloom##52983
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 515
step
label "Azshara's_Veil_465"
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
collect 5 Azshara's Veil##52985
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 465
step
talk Yelmak##3347
|tip Inside the building.
learn Volcanic Potion##80481 |goto Orgrimmar/1 55.68,45.76
step
Open Your Alchemy Crafting Panel:
_<Create 5 Volcanic Potion>_
Reach 465 Alchemy |skill Alchemy,465
step
talk Yelmak##3347
|tip Inside the building.
learn Elixir of the Cobra##80484 |goto Orgrimmar/1 55.68,45.76
stickystart "Azshara's_Veil_475"
step
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
collect 10 Cinderbloom##52983
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 515
step
label "Azshara's_Veil_475"
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
collect 10 Azshara's Veil##52985
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 475
step
Open Your Alchemy Crafting Panel:
_<Create 10 Elixir of the Cobra>_
|tip You may need to make a few more.
Reach 475 Alchemy |skill Alchemy,475
step
talk Yelmak##3347
|tip Inside the building.
learn Elixir of Deep Earth##80488 |goto Orgrimmar/1 55.68,45.76
step
map Deepholm/0
path follow smart; loop on; ants curved; dist 60
path	69.45,56.02	74.70,61.14	75.81,67.59	70.52,61.93	71.11,70.62
path	66.03,68.53	58.01,73.22	47.40,67.35	37.03,53.36	37.63,44.71
path	26.81,41.51	23.12,35.31	28.92,35.62	27.84,27.02	31.22,32.00
path	36.63,28.95	33.00,19.13	47.81,12.91	45.91,21.10	43.61,25.12
path	44.52,28.62	49.12,33.66	56.73,38.30	73.80,32.71	75.20,41.93
path	69.61,46.45
collect 10 Heartblossom##52986
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 480
step
Open Your Alchemy Crafting Panel:
_<Create 5 Elixir of Deep Earth>_
Reach 480 Alchemy |skill Alchemy,480
step
talk Yelmak##3347
|tip Inside the building.
learn Elixir of Impossible Accuracy##80491 |goto Orgrimmar/1 55.68,45.76
step
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
collect 10 Cinderbloom##52983
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 485
step
map Deepholm/0
path follow smart; loop on; ants curved; dist 60
path	69.45,56.02	74.70,61.14	75.81,67.59	70.52,61.93	71.11,70.62
path	66.03,68.53	58.01,73.22	47.40,67.35	37.03,53.36	37.63,44.71
path	26.81,41.51	23.12,35.31	28.92,35.62	27.84,27.02	31.22,32.00
path	36.63,28.95	33.00,19.13	47.81,12.91	45.91,21.10	43.61,25.12
path	44.52,28.62	49.12,33.66	56.73,38.30	73.80,32.71	75.20,41.93
path	69.61,46.45
collect 5 Heartblossom##52986
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 485
step
Open Your Alchemy Crafting Panel:
_<Create 5 Elixir of Impossible Accuracy>_
Reach 485 Alchemy |skill Alchemy,485
step
talk Yelmak##3347
|tip Inside the building.
learn Mythical Mana Potion##80494 |goto Orgrimmar/1 55.68,45.76
step
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
collect 5 Cinderbloom##52983
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 490
step
map Uldum/0
path follow smart; loop on; ants straight; dist 30
path	52.04,34.76	49.71,31.20	46.66,28.99	48.65,32.36	49.82,35.80
path	50.63,41.83	51.55,44.75	54.26,46.47	55.55,46.73	56.26,49.75
path	57.24,52.88	58.12,55.65	58.98,59.77	59.28,63.35	59.14,69.50
path	59.27,74.41	59.77,79.51	60.03,82.60	61.43,80.76	62.87,78.55
path	65.43,77.43	67.74,76.82	69.59,76.35	68.06,73.08	66.74,71.67
path	60.14,56.99	59.42,53.64	57.64,47.89	56.97,45.77	58.53,30.28
path	57.61,27.73	56.82,23.62	56.97,19.77	58.45,15.72	60.98,13.91
collect 5 Whiptail##52988
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 525
step
Open Your Alchemy Crafting Panel:
_<Create 5 Mythical Mana Potion>_
Reach 490 Alchemy |skill Alchemy,490
step
talk Yelmak##3347
|tip Inside the building.
learn Golemblood Potion##80496 |goto Orgrimmar/1 55.68,45.76
stickystart "Collect_Volatile_Life_495"
step
map Deepholm/0
path follow smart; loop on; ants curved; dist 60
path	69.45,56.02	74.70,61.14	75.81,67.59	70.52,61.93	71.11,70.62
path	66.03,68.53	58.01,73.22	47.40,67.35	37.03,53.36	37.63,44.71
path	26.81,41.51	23.12,35.31	28.92,35.62	27.84,27.02	31.22,32.00
path	36.63,28.95	33.00,19.13	47.81,12.91	45.91,21.10	43.61,25.12
path	44.52,28.62	49.12,33.66	56.73,38.30	73.80,32.71	75.20,41.93
path	69.61,46.45
collect 5 Heartblossom##52986
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 495
step
label "Collect_Volatile_Life_495"
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
collect 5 Volatile Life##52329
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 495
step
Open Your Alchemy Crafting Panel:
_<Create 5 Golemblood Potion>_
Reach 495 Alchemy |skill Alchemy,495
step
talk Yelmak##3347
|tip Inside the building.
learn Mythical Healing Potion##80498 |goto Orgrimmar/1 55.68,45.76
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
collect 27 Twilight Jasmine##52987
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 520
step
Open Your Alchemy Crafting Panel:
_<Create 27 Mythical Healing Potion>_
Reach 510 Alchemy |skill Alchemy,510
step
talk Yelmak##3347
|tip Inside the building.
learn Flask of Titanic Strength##80723 |goto Orgrimmar/1 55.68,45.76
stickystart "Collect_Volatile_Life_515"
stickystart "Collect_Whiptail_515"
step
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
collect 40 Cinderbloom##52983
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 515
step
label "Collect_Volatile_Life_515"
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
collect 40 Volatile Life##52329
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 515
step
label "Collect_Whiptail_515"
map Uldum/0
path follow smart; loop on; ants straight; dist 30
path	52.04,34.76	49.71,31.20	46.66,28.99	48.65,32.36	49.82,35.80
path	50.63,41.83	51.55,44.75	54.26,46.47	55.55,46.73	56.26,49.75
path	57.24,52.88	58.12,55.65	58.98,59.77	59.28,63.35	59.14,69.50
path	59.27,74.41	59.77,79.51	60.03,82.60	61.43,80.76	62.87,78.55
path	65.43,77.43	67.74,76.82	69.59,76.35	68.06,73.08	66.74,71.67
path	60.14,56.99	59.42,53.64	57.64,47.89	56.97,45.77	58.53,30.28
path	57.61,27.73	56.82,23.62	56.97,19.77	58.45,15.72	60.98,13.91
collect 40 Whiptail##52988
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 525
step
Open Your Alchemy Crafting Panel:
_<Create 5 Flask of Titanic Strength>_
Reach 515 Alchemy |skill Alchemy,515
step
talk Yelmak##3347
|tip Inside the building.
learn Transmute: Demonseye##80248 |goto Orgrimmar/1 55.68,45.76
stickystart "Twilight_Jasmine_520"
step
collect 15 Nightstone##52180
|tip Prospect them with Jewelcrafting from Cataclysm Ore, mine them from Cataclysm Mining nodes, or purchase them from the Auction House.
|only if skill("Alchemy") < 520
step
label "Twilight_Jasmine_520"
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
collect 15 Twilight Jasmine##52987
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 520
step
Open Your Alchemy Crafting Panel:
_<Create 5 Transmute: Demonseye>_
Reach 520 Alchemy |skill Alchemy,520
step
talk Yelmak##3347
|tip Inside the building.
learn Transmute: Amberjewel##80247 |goto Orgrimmar/1 55.68,45.76
stickystart "Collect_Whiptail_525"
step
collect 15 Alicite##52179
|tip Prospect them with Jewelcrafting from Cataclysm Ore, mine them from Cataclysm Mining nodes, or purchase them from the Auction House.
|only if skill("Alchemy") < 525
step
label "Collect_Whiptail_525"
map Uldum/0
path follow smart; loop on; ants straight; dist 30
path	52.04,34.76	49.71,31.20	46.66,28.99	48.65,32.36	49.82,35.80
path	50.63,41.83	51.55,44.75	54.26,46.47	55.55,46.73	56.26,49.75
path	57.24,52.88	58.12,55.65	58.98,59.77	59.28,63.35	59.14,69.50
path	59.27,74.41	59.77,79.51	60.03,82.60	61.43,80.76	62.87,78.55
path	65.43,77.43	67.74,76.82	69.59,76.35	68.06,73.08	66.74,71.67
path	60.14,56.99	59.42,53.64	57.64,47.89	56.97,45.77	58.53,30.28
path	57.61,27.73	56.82,23.62	56.97,19.77	58.45,15.72	60.98,13.91
collect 15 Whiptail##52988
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 525
step
Open Your Alchemy Crafting Panel:
_<Create 5 Transmute: Amberjewel>_
Reach 525 Alchemy |skill Alchemy,525
step
Reach Level 80 |ding 80
|tip You must be at least level 80 to train Zen Master professions.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Pandaria materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Alchemy |confirm |next "Begin_Profession_Leveling_Pandaria" |or
'|complete skill("Alchemy") >= 500 |or |next "Begin_Profession_Leveling_Pandaria"
step
collect 30 Green Tea Leaf##72234 |or |usebank
|tip You can farm these with Herbalism or purchase them from the Auction House.
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Green Tea Leaf"
'|complete skill("Alchemy") >= 525
step
label "Begin_Profession_Leveling_Pandaria"
talk Yelmak##3347
|tip Inside the building.
Train Zen Master Alchemy |skillmax Alchemy,600 |goto Orgrimmar/1 55.68,45.76
step
talk Yelmak##3347
|tip Inside the building.
Train Master Healing Potion |learn Master Healing Potion##114752 |goto Orgrimmar/1 55.68,45.76
step
collect 30 Green Tea Leaf##72234 |or |usebank
|tip You can farm these with Herbalism or purchase them from the Auction House.
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Green Tea Leaf"
'|complete skill("Alchemy") >= 525
step
create 30 Master Healing Potion##114752,Alchemy,525
|tip You will discover new recipes as you craft these.
'|complete skill("Alchemy") >= 525
step
Keep crafting new potions that you discover as you level up.
|tip The materials will differ depending on the potions you discover.
|tip Prioritize recipes using Green Tea Leaf##72234 as it is the cheapest to aquire.
|tip Some good recipes to use are:
|tip Mantid Elixir##114755 (until 550)
|tip Potion of the Mountains##114753 (until 550)
|tip Potion of the Jade Serpent##114757 (until 550)
|tip Potion of Mogu Power##114760 (until 575)
'|complete skill("Alchemy") >= 575
step
collect 30 Snow Lily##79010 |or |usebank
|tip You can farm these with Herbalism or purchase them from the Auction House.
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Snow Lily"
'|complete skill("Alchemy") >= 600
step
collect 30 Green Tea Leaf##72234 |or |usebank
|tip You can farm these with Herbalism or purchase them from the Auction House.
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Green Tea Leaf"
'|complete skill("Alchemy") >= 600
step
collect 30 Fool's Cap##79011 |or |usebank
|tip You can farm these with Herbalism or purchase them from the Auction House.
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Fool's Cap"
'|complete skill("Alchemy") >= 600
step
create 30 Master Mana Potion##114775,Alchemy,600
|tip If you haven't discovered this recipe, keep crafting potions and flasks until you do.
'|complete skill("Alchemy") >= 600
]])
QuestCore:RegisterGuide("Profession Guides\\Archaeology\\Leveling Guides\\Archaeology (1-600)",{
expansion="mists",
mopready=true,
author="QuestCore",
description="This guide will walk you through leveling your Archaeology skill from 1-600.",
condition_end=function() return skill('Archaeology') >= 600 end,
condition_suggested=function() return skill('Archaeology') < 600 and level >= 20 end,
},[[
step
Reach Level 20 |ding 20
step
confirm
|tip You can dig up Dwarf, Fossil, Night Elf, and Troll artifacts with a skill level of 1.
|tip They can be found in Eastern Kingdoms and Kalimdor, while Night Elf and Troll artifacts can be found in Northrend too.
|tip Draenei and Orc artifacts can be found in Outland with a skill level of 300 or higher.
|tip Nerubian artifacts require at least 375 skill level and can be found in Northrend and Eastern Kingdoms.
|tip Vrykul artifacts require at least 375 skill level and can be found in Northrend.
|tip Tol'vir artifacts require at least 450 skill level and are only found in Uldum, Kalimdor.
|tip Pandaren and Mogu artifacts require at least 500 skill and are only found in Pandaria.
step
Enter the building |goto Orgrimmar/1 49.91,75.62 < 15 |walk
talk Belloc Brightblade##47571
|tip Inside the building.
Train Apprentice Archaeology |skillmax Archaeology,75 |goto Orgrimmar/1 49.08,70.55
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
|tip They look like small shovel icons on your world map that spawn in random places.
|tip When you reach the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip A telescope will appear and point in a certain direction.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Red indicates 80+ yards away.
|tip Yellow indicates 40-80 yards away.
|tip Green indicates within 40 yards.
|tip Each dig site has up to 6 artifacts you can find.
click Archaeology Fragment+
|tip Each one can grant a single skill point.
|tip Open your Archaeology panel and solve artifacts to gain additional points.
|tip You receive 5 skill points for normal solves and 15 skill points for rare solves.
Reach 50 Archaeology Skill |skill Archaeology,50
step
Enter the building |goto Orgrimmar/1 49.91,75.62 < 15 |walk
talk Belloc Brightblade##47571
|tip Inside the building.
Train Journeyman Archaeology |skillmax Archaeology,150 |goto Orgrimmar/1 49.08,70.55
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
|tip They look like small shovel icons on your world map that spawn in random places.
|tip When you reach the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip A telescope will appear and point in a certain direction.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Red indicates 80+ yards away.
|tip Yellow indicates 40-80 yards away.
|tip Green indicates within 40 yards.
|tip Each dig site has up to 6 artifacts you can find.
click Archaeology Fragment+
|tip Each one can grant a single skill point.
|tip Open your Archaeology panel and solve artifacts to gain additional points.
|tip You receive 5 skill points for normal solves and 15 skill points for rare solves.
Reach 125 Archaeology Skill |skill Archaeology,125
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk
talk Belloc Brightblade##47571
|tip Inside the building.
Train Expert Archaeology |skillmax Archaeology,225 |goto Orgrimmar/1 49.06,70.55
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
|tip They look like small shovel icons on your world map that spawn in random places.
|tip When you reach the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip A telescope will appear and point in a certain direction.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Red indicates 80+ yards away.
|tip Yellow indicates 40-80 yards away.
|tip Green indicates within 40 yards.
|tip Each dig site has up to 6 artifacts you can find.
click Archaeology Fragment+
|tip Each one can grant a single skill point.
|tip Open your Archaeology panel and solve artifacts to gain additional points.
|tip You receive 5 skill points for normal solves and 15 skill points for rare solves.
Reach 200 Archaeology Skill |skill Archaeology,200
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk
talk Belloc Brightblade##47571
|tip Inside the building.
Train Artisan Archaeology |skillmax Archaeology,300 |goto Orgrimmar/1 49.06,70.55
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
|tip They look like small shovel icons on your world map that spawn in random places.
|tip When you reach the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip A telescope will appear and point in a certain direction.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Red indicates 80+ yards away.
|tip Yellow indicates 40-80 yards away.
|tip Green indicates within 40 yards.
|tip Each dig site has up to 6 artifacts you can find.
click Archaeology Fragment+
|tip Each one can grant a single skill point.
|tip Open your Archaeology panel and solve artifacts to gain additional points.
|tip You receive 5 skill points for normal solves and 15 skill points for rare solves.
Reach 275 Archaeology Skill |skill Archaeology,275
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk
talk Belloc Brightblade##47571
|tip Inside the building.
Train Master Archaeology |skillmax Archaeology,375 |goto Orgrimmar/1 49.06,70.55
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
|tip They look like small shovel icons on your world map that spawn in random places.
|tip When you reach the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip A telescope will appear and point in a certain direction.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Red indicates 80+ yards away.
|tip Yellow indicates 40-80 yards away.
|tip Green indicates within 40 yards.
|tip Each dig site has up to 6 artifacts you can find.
click Archaeology Fragment+
|tip Each one can grant a single skill point.
|tip Open your Archaeology panel and solve artifacts to gain additional points.
|tip You receive 5 skill points for normal solves and 15 skill points for rare solves.
Reach 350 Archaeology Skill |skill Archaeology,350
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk
talk Belloc Brightblade##47571
|tip Inside the building.
Train Grand Master Archaeology |skillmax Archaeology,450 |goto Orgrimmar/1 49.06,70.55
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
|tip They look like small shovel icons on your world map that spawn in random places.
|tip When you reach the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip A telescope will appear and point in a certain direction.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Red indicates 80+ yards away.
|tip Yellow indicates 40-80 yards away.
|tip Green indicates within 40 yards.
|tip Each dig site has up to 6 artifacts you can find.
click Archaeology Fragment+
|tip Each one can grant a single skill point.
|tip Open your Archaeology panel and solve artifacts to gain additional points.
|tip You receive 5 skill points for normal solves and 15 skill points for rare solves.
Reach 425 Archaeology Skill |skill Archaeology,425
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk
talk Belloc Brightblade##47571
|tip Inside the building.
Train Illustrious Grand Master Archaeology |skillmax Archaeology,525 |goto Orgrimmar/1 49.06,70.55
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
|tip They look like small shovel icons on your world map that spawn in random places.
|tip When you reach the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip A telescope will appear and point in a certain direction.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Red indicates 80+ yards away.
|tip Yellow indicates 40-80 yards away.
|tip Green indicates within 40 yards.
|tip Each dig site has up to 6 artifacts you can find.
click Archaeology Fragment+
|tip Each one can grant a single skill point.
|tip Open your Archaeology panel and solve artifacts to gain additional points.
|tip You receive 5 skill points for normal solves and 15 skill points for rare solves.
Reach 525 Archaeology Skill |skill Archaeology,525
step
Enter the building |goto Orgrimmar/1 49.91,75.62 < 15 |walk
talk Belloc Brightblade##47571
|tip Inside the building.
Train Zen Master Archaeology |skillmax Archaeology,600 |goto Orgrimmar/1 49.08,70.55
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
|tip They look like small shovel icons on your world map that spawn in random places.
|tip When you reach the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip A telescope will appear and point in a certain direction.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Red indicates 80+ yards away.
|tip Yellow indicates 40-80 yards away.
|tip Green indicates within 40 yards.
|tip Each dig site has up to 6 artifacts you can find.
click Archaeology Fragment+
|tip Each one can grant a single skill point.
|tip Open your Archaeology panel and solve artifacts to gain additional points.
|tip You receive 5 skill points for normal solves and 15 skill points for rare solves.
Reach 600 Archaeology Skill |skill Archaeology,600
]])
QuestCore:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Blacksmithing (1-600)",{
expansion="mists",
mopready=true,
author="QuestCore",
condition_suggested=function() return skill('Blacksmithing') > 0 end,
description="This guide will walk you through leveling your Blacksmithing skill from 1-600.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/1 81.56,22.74 < 7 |walk
talk Saru Steelfury##3355
|tip Inside the building.
Train Apprentice Blacksmithing |skillmax Blacksmithing,75 |goto Orgrimmar/1 76.49,34.50
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Blacksmithing |confirm |next "Begin_Profession_Leveling_Classic" |or
'|complete skill("Blacksmithing") >= 300 |or |next "Begin_Profession_Leveling_Classic"
stickystart "Collect_Copper_Bar_Total"
stickystart "Collect_Coarse_Stone_Total"
stickystart "Collect_Bronze_Bar_Total"
stickystart "Collect_Silver_Bar_Total"
stickystart "Collect_Heavy_Stone_Total"
stickystart "Collect_Iron_Bar_Total"
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 150 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Blacksmithing") >= 65 |or
step
label "Collect_Copper_Bar_Total"
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+ |notinsticky
|tip They look like gray rocks with orange and yellow mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 150 Copper Ore##2770 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 150 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 110 |or
step
label "Collect_Coarse_Stone_Total"
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Tin Vein##3764+ |notinsticky
|tip They look like gray rocks with silver mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 85 Coarse Stone##2836 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 65 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 100 |or
step
label "Collect_Bronze_Bar_Total"
collect 140 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip Smelting 2 Bronze Bars requires 1 Copper Bar and 1 Tin Bar. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 150 |or
step
label "Collect_Silver_Bar_Total"
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Silver Vein##1733+ |notinsticky
|tip They look like gray rocks with silver-green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 5 Silver Ore##2775 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 5 Silver Bar##2842 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 75 Mining skill to gather these. |notinsticky
'|complete skill("Blacksmithing") >= 105 |or
step
label "Collect_Heavy_Stone_Total"
map Feralas
path	follow loose; loop on; ants curved; dist 20
path	 84.9,39.9	81.8,39.3	79.2,37.2
path	75.3,35.5	71.5,34.7	68.4,39.7
path	68.1,46.1	70.0,48.6	68.7,52.0
path	65.5,52.5	63.8,54.9	61.5,50.5
path	58.2,51.4	53.8,49.4	48.6,44.0
path	48.6,38.8	49.7,34.9	51.6,33.8
path	49.5,26.1	51.7,25.5	51.3,19.0
path	52.7,16.5	54.9,8.1	53.4,5.5
path	51.6,4.8	48.5,11.5	46.1,7.2
path	42.0,8.2	40.0,7.7	37.1,12.1
path	38.2,18.6	37.0,25.6	41.2,25.5
path	41.5,17.2	45.2,21.1	46.0,15.7
path	47.7,22.1	46.2,26.6	47.2,34.7
path	46.7,44.9	50.3,52.7	54.8,53.9
path	55.0,59.8	54.6,64.0	52.9,66.2
path	53.6,73.7	55.5,75.7	61.5,75.0
path	61.6,68.9	64.0,68.9	61.9,66.2
path	61.0,59.1	64.1,58.7	63.7,61.0
path	65.8,63.5	68.1,61.5	71.6,65.1
path	77.2,62.1	75.9,53.5	76.2,49.6
path	79.5,46.2	84.0,45.6	82.5,43.1
click Iron Deposit##1735+ |notinsticky
|tip They look like dense gray rocks with small silver-green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 90 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 125 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 140 |or
step
label "Collect_Iron_Bar_Total"
map Feralas
path	follow loose; loop on; ants curved; dist 20
path	 84.9,39.9	81.8,39.3	79.2,37.2
path	75.3,35.5	71.5,34.7	68.4,39.7
path	68.1,46.1	70.0,48.6	68.7,52.0
path	65.5,52.5	63.8,54.9	61.5,50.5
path	58.2,51.4	53.8,49.4	48.6,44.0
path	48.6,38.8	49.7,34.9	51.6,33.8
path	49.5,26.1	51.7,25.5	51.3,19.0
path	52.7,16.5	54.9,8.1	53.4,5.5
path	51.6,4.8	48.5,11.5	46.1,7.2
path	42.0,8.2	40.0,7.7	37.1,12.1
path	38.2,18.6	37.0,25.6	41.2,25.5
path	41.5,17.2	45.2,21.1	46.0,15.7
path	47.7,22.1	46.2,26.6	47.2,34.7
path	46.7,44.9	50.3,52.7	54.8,53.9
path	55.0,59.8	54.6,64.0	52.9,66.2
path	53.6,73.7	55.5,75.7	61.5,75.0
path	61.6,68.9	64.0,68.9	61.9,66.2
path	61.0,59.1	64.1,58.7	63.7,61.0
path	65.8,63.5	68.1,61.5	71.6,65.1
path	77.2,62.1	75.9,53.5	76.2,49.6
path	79.5,46.2	84.0,45.6	82.5,43.1
click Iron Deposit##1735+ |notinsticky
|tip They look like dense gray rocks with small silver-green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 230 Iron Ore##2772 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 230 Iron Bar##3575 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 125 Mining skill to gather these. |notinsticky
|tip If you plan to gather Steel Bars instead of buying them, farm another 190 Iron Bars.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 190 |or
stickystart "Collect_Steel_Bar_Total"
stickystart "Collect_Solid_Stone_Total"
stickystart "Collect_Mithril_Bar_Total"
stickystart "Collect_Citrine_Total"
stickystart "Collect_Mageweave_Cloth_Total"
stickystart "Collect_Dense_Stone_Total"
stickystart "Collect_Thorium_Bar_Total"
step
map Feralas
path	follow loose; loop on; ants curved; dist 20
path	 84.9,39.9	81.8,39.3	79.2,37.2
path	75.3,35.5	71.5,34.7	68.4,39.7
path	68.1,46.1	70.0,48.6	68.7,52.0
path	65.5,52.5	63.8,54.9	61.5,50.5
path	58.2,51.4	53.8,49.4	48.6,44.0
path	48.6,38.8	49.7,34.9	51.6,33.8
path	49.5,26.1	51.7,25.5	51.3,19.0
path	52.7,16.5	54.9,8.1	53.4,5.5
path	51.6,4.8	48.5,11.5	46.1,7.2
path	42.0,8.2	40.0,7.7	37.1,12.1
path	38.2,18.6	37.0,25.6	41.2,25.5
path	41.5,17.2	45.2,21.1	46.0,15.7
path	47.7,22.1	46.2,26.6	47.2,34.7
path	46.7,44.9	50.3,52.7	54.8,53.9
path	55.0,59.8	54.6,64.0	52.9,66.2
path	53.6,73.7	55.5,75.7	61.5,75.0
path	61.6,68.9	64.0,68.9	61.9,66.2
path	61.0,59.1	64.1,58.7	63.7,61.0
path	65.8,63.5	68.1,61.5	71.6,65.1
path	77.2,62.1	75.9,53.5	76.2,49.6
path	79.5,46.2	84.0,45.6	82.5,43.1
click Gold Vein##1734+ |notinsticky
|tip They look like gray rocks with bright yellow mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 5 Gold Ore##2776 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 5 Gold Bar##3577 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 155 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 155 |or
step
label "Collect_Steel_Bar_Total"
collect 190 Steel Bar##3859 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip Each Steel Bar requires 1 Iron Bar and 1 Coal. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 235 |or
step
label "Collect_Solid_Stone_Total"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 520 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these. |notinsticky
|tip If you cannot find the plans for Mithril Spurs, you will need more Thorium or Mithril but only 120 Solid Stone.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|goto Tanaris/0 33.90,68.55 < 30 |c |noway |or
'|complete skill("Blacksmithing") >= 210 |or
step
label "Collect_Mithril_Bar_Total"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 250 Mithril Ore##3858 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 250 Mithril Bar##3860 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 270 |or
step
label "Collect_Citrine_Total"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
collect 10 Citrine##3864 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 175 Mining skill to gather these.
|tip Save these; you will need them for future steps.
'|complete skill("Blacksmithing") >= 235 |or
step
label "Collect_Mageweave_Cloth_Total"
Kill Dunemaul enemies around this area |notinsticky
collect 60 Mageweave Cloth##4338 |or |goto Tanaris/0 40.50,55.50
|tip Farm them from humanoid mobs or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 225 |or
step
label "Collect_Dense_Stone_Total"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 20 Dense Stone##12365 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 260 |or
step
label "Collect_Thorium_Bar_Total"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 462 Thorium Ore##10620 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 462 Thorium Bar##12359 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 300 |or
step
Tamar##3366
|tip Inside the building.
buy 35 Green Dye##2605 |goto Orgrimmar/1 63.05,45.53 |or
'|complete skill("Blacksmithing") >= 165 |or
step
label "Begin_Profession_Leveling_Classic"
talk Sumi##3356
|tip Inside the building.
buy Blacksmith Hammer##5956 |goto Orgrimmar/1 82.59,23.95 |or
|tip Save this, you will need it to create items.
'|complete skill("Blacksmithing") >= 375 |or
stickystart "Collect_Copper_Bars_30"
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 150 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Save at least 110 of these, you will need them for a future step.
'|complete skill("Blacksmithing") >= 30 |or
step
label "Collect_Copper_Bars_30"
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+ |notinsticky
|tip They look like gray rocks with orange and yellow mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 150 Copper Ore##2770 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 150 Copper Bar##2840 |or
|tip Save these, you will need them for future steps.
'|complete skill("Blacksmithing") >= 30 |or
step
create 40 Rough Sharpening Stone##2660,Blacksmithing,30
|tip You may need to create more or less of these.
|tip Each additional Rough Sharpening Stone requires 1 Rough Stone.
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Rough Grinding Stone |learn Rough Grinding Stone##3320 |goto Orgrimmar/1 76.49,34.50
step
collect 110 Rough Stone##2835 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 65 |or
step
create 55 Rough Grinding Stone##3320,Blacksmithing,65
|tip You may need to create more or less of these.
|tip Each additional Rough Grinding Stone requires 2 Rough Stone.
|tip Save at least 10 of these, you will need them for a future step.
step
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Tin Vein##3764+
|tip They look like gray rocks with silver mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 85 Coarse Stone##2836 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 65 Mining skill to gather these.
|tip Save at least 60 of these, you will need them for a future step.
'|complete skill("Blacksmithing") >= 75 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Coarse Sharpening Stone |learn Coarse Sharpening Stone##2665 |goto Orgrimmar/1 76.49,34.50
step
create 25 Coarse Sharpening Stone##2665,Blacksmithing,75
|tip You may need to create more or less of these.
|tip Each additional Coarse Sharpening Stone requires 1 Coarse Stone.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Journeyman Blacksmithing |skillmax Blacksmithing,150 |goto Orgrimmar/1 76.49,34.50
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Coarse Grinding Stone |learn Coarse Grinding Stone##3326 |goto Orgrimmar/1 76.49,34.50
step
collect 60 Coarse Stone##2836 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 90 |or
step
create 30 Coarse Grinding Stone##3326,Blacksmithing,30 total |or
'|complete skill("Blacksmithing") >= 90 |or
step
create 1 Coarse Grinding Stone##3326,Blacksmithing,90
|tip You may need to create more of these.
|tip Each additional Coarse Grinding Stone requires 2 Coarse Stone.
|tip Save at least 30 of these, you will need them for a future step.
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Runed Copper Belt |learn Runed Copper Belt##2666 |goto Orgrimmar/1 76.49,34.50
step
collect 100 Copper Bar##2840 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 100 |or
step
create 10 Runed Copper Belt##2666,Blacksmithing,100 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
|tip Inside the building.
stickystart "Collect_Rough_Grinding_Stone_105"
step
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Silver Vein##1733+ |notinsticky
|tip They look like gray rocks with silver-green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 5 Silver Ore##2775 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 5 Silver Bar##2842 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 75 Mining skill to gather these.
'|complete skill("Blacksmithing") >= 105 |or
step
label "Collect_Rough_Grinding_Stone_105"
collect 10 Rough Grinding Stone##3470 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 105 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Silver Rod |learn Silver Rod##7818 |goto Orgrimmar/1 76.49,34.50
step
create 5 Silver Rod##7818,Blacksmithing,105 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
|tip Inside the building.
step
collect 50 Copper Bar##2840 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 110 |or
step
Enter the building |goto Orgrimmar/1 81.62,22.79 < 7 |walk
create 5 Runed Copper Belt##2666,Blacksmithing,110 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
|tip Inside the building.
step
collect 140 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
|tip Smelting 2 Bronze Bars requires 1 Copper Bar and 1 Tin Bar.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 50 of these, you will need them for a future step.
'|complete skill("Blacksmithing") >= 125 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Rough Bronze Leggings |learn Rough Bronze Leggings##2668 |goto Orgrimmar/1 76.49,34.50
step
create 15 Rough Bronze Leggings##2668,Blacksmithing,125 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
|tip Inside the building.
stickystart "Collect_Iron_Bars_140"
stickystart "Collect_Gold_Bars_140"
step
map Feralas
path	follow loose; loop on; ants curved; dist 20
path	 84.9,39.9	81.8,39.3	79.2,37.2
path	75.3,35.5	71.5,34.7	68.4,39.7
path	68.1,46.1	70.0,48.6	68.7,52.0
path	65.5,52.5	63.8,54.9	61.5,50.5
path	58.2,51.4	53.8,49.4	48.6,44.0
path	48.6,38.8	49.7,34.9	51.6,33.8
path	49.5,26.1	51.7,25.5	51.3,19.0
path	52.7,16.5	54.9,8.1	53.4,5.5
path	51.6,4.8	48.5,11.5	46.1,7.2
path	42.0,8.2	40.0,7.7	37.1,12.1
path	38.2,18.6	37.0,25.6	41.2,25.5
path	41.5,17.2	45.2,21.1	46.0,15.7
path	47.7,22.1	46.2,26.6	47.2,34.7
path	46.7,44.9	50.3,52.7	54.8,53.9
path	55.0,59.8	54.6,64.0	52.9,66.2
path	53.6,73.7	55.5,75.7	61.5,75.0
path	61.6,68.9	64.0,68.9	61.9,66.2
path	61.0,59.1	64.1,58.7	63.7,61.0
path	65.8,63.5	68.1,61.5	71.6,65.1
path	77.2,62.1	75.9,53.5	76.2,49.6
path	79.5,46.2	84.0,45.6	82.5,43.1
click Iron Deposit##1735+
|tip They look like dense gray rocks with small silver-green mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 90 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 125 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Blacksmithing") >= 140 |or
step
label "Collect_Iron_Bars_140"
map Feralas
path	follow loose; loop on; ants curved; dist 20
path	 84.9,39.9	81.8,39.3	79.2,37.2
path	75.3,35.5	71.5,34.7	68.4,39.7
path	68.1,46.1	70.0,48.6	68.7,52.0
path	65.5,52.5	63.8,54.9	61.5,50.5
path	58.2,51.4	53.8,49.4	48.6,44.0
path	48.6,38.8	49.7,34.9	51.6,33.8
path	49.5,26.1	51.7,25.5	51.3,19.0
path	52.7,16.5	54.9,8.1	53.4,5.5
path	51.6,4.8	48.5,11.5	46.1,7.2
path	42.0,8.2	40.0,7.7	37.1,12.1
path	38.2,18.6	37.0,25.6	41.2,25.5
path	41.5,17.2	45.2,21.1	46.0,15.7
path	47.7,22.1	46.2,26.6	47.2,34.7
path	46.7,44.9	50.3,52.7	54.8,53.9
path	55.0,59.8	54.6,64.0	52.9,66.2
path	53.6,73.7	55.5,75.7	61.5,75.0
path	61.6,68.9	64.0,68.9	61.9,66.2
path	61.0,59.1	64.1,58.7	63.7,61.0
path	65.8,63.5	68.1,61.5	71.6,65.1
path	77.2,62.1	75.9,53.5	76.2,49.6
path	79.5,46.2	84.0,45.6	82.5,43.1
click Iron Deposit##1735+ |notinsticky
|tip They look like dense gray rocks with small silver-green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 230 Iron Ore##2772 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 230 Iron Bar##3575 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 125 Mining skill to gather these.
|tip If you plan to gather Steel Bars instead of buying them, farm another 190 Iron Bars.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save these, you will need them in future steps |notinsticky
'|complete skill("Blacksmithing") >= 140 |or
step
label "Collect_Gold_Bars_140"
map Feralas
path	follow loose; loop on; ants curved; dist 20
path	 84.9,39.9	81.8,39.3	79.2,37.2
path	75.3,35.5	71.5,34.7	68.4,39.7
path	68.1,46.1	70.0,48.6	68.7,52.0
path	65.5,52.5	63.8,54.9	61.5,50.5
path	58.2,51.4	53.8,49.4	48.6,44.0
path	48.6,38.8	49.7,34.9	51.6,33.8
path	49.5,26.1	51.7,25.5	51.3,19.0
path	52.7,16.5	54.9,8.1	53.4,5.5
path	51.6,4.8	48.5,11.5	46.1,7.2
path	42.0,8.2	40.0,7.7	37.1,12.1
path	38.2,18.6	37.0,25.6	41.2,25.5
path	41.5,17.2	45.2,21.1	46.0,15.7
path	47.7,22.1	46.2,26.6	47.2,34.7
path	46.7,44.9	50.3,52.7	54.8,53.9
path	55.0,59.8	54.6,64.0	52.9,66.2
path	53.6,73.7	55.5,75.7	61.5,75.0
path	61.6,68.9	64.0,68.9	61.9,66.2
path	61.0,59.1	64.1,58.7	63.7,61.0
path	65.8,63.5	68.1,61.5	71.6,65.1
path	77.2,62.1	75.9,53.5	76.2,49.6
path	79.5,46.2	84.0,45.6	82.5,43.1
click Gold Vein##1734+ |notinsticky
|tip They look like gray rocks with bright yellow mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 5 Gold Ore##2776 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 5 Gold Bar##3577 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 155 Mining skill to gather these.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save these, you will need them in future steps |notinsticky
'|complete skill("Blacksmithing") >= 140 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Heavy Grinding Stone |learn Heavy Grinding Stone##3337 |goto Orgrimmar/1 76.49,34.50
step
create 30 Heavy Grinding Stone##3337,Blacksmithing,30 total |or
'|complete skill("Blacksmithing") >= 140 |or
step
create 1 Heavy Grinding Stone##3337,Blacksmithing,140
|tip You may need to create more of these.
|tip Each additional Heavy Grinding Stone requires 3 Heavy Stone.
|tip Save at least 30 of these; you will need them for future steps.
stickystart "Collect_Coarse_Grinding_Stone_150"
step
collect 50 Bronze Bar##2841 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 150 |or
step
label "Collect_Coarse_Grinding_Stone_150"
collect 20 Coarse Grinding Stone##3478 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 150 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Patterned Bronze Bracers |learn Patterned Bronze Bracers##2672 |goto Orgrimmar/1 76.49,34.50
step
create 10 Patterned Bronze Bracers##2672,Blacksmithing,150 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
|tip Inside the building.
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Expert Blacksmithing |skillmax Blacksmithing,225 |goto Orgrimmar/1 76.49,34.50
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Golden Rod |learn Golden Rod##14379 |goto Orgrimmar/1 76.49,34.50
stickystart "Collect_Coarse_Grinding_Stone_155"
step
collect 5 Gold Bar##3577 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 155 |or
step
label "Collect_Coarse_Grinding_Stone_155"
collect 10 Coarse Grinding Stone##3478 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 155 |or
step
create 5 Golden Rod##14379,Blacksmithing,155 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
|tip Inside the building.
stickystart "Collect_Heavy_Grinding_Stone_165"
step
collect 80 Iron Bar##3575 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 165 |or
step
label "Collect_Heavy_Grinding_Stone_165"
collect 10 Heavy Grinding Stone##3486 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 165 |or
step
Tamar##3366
|tip Inside the building.
buy 35 Green Dye##2605 |goto Orgrimmar/1 63.05,45.53 |or
'|complete skill("Blacksmithing") >= 165 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Green Iron Leggings |learn Green Iron Leggings##3506 |goto Orgrimmar/1 76.49,34.50
step
create 10 Green Iron Leggings##3506,Blacksmithing,165 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
|tip Inside the building.
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Green Iron Bracers |learn Green Iron Bracers##3501 |goto Orgrimmar/1 76.49,34.50
stickystart "Collect_Green_Dye_190"
step
collect 150 Iron Bar##3575 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 190 |or
step
label "Collect_Green_Dye_190"
collect 25 Green Dye##2605 |or
|tip You purchased these in a previous step.
'|complete skill("Blacksmithing") >= 190 |or
step
create 25 Green Iron Bracers##3501,Blacksmithing,190 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
|tip Inside the building.
stickystart "Collect_Heavy_Grinding_Stone_200"
step
collect 190 Steel Bar##3859 |or
|tip Create them with Mining or purchase them from the auction house.
|tip Each Steel Bar requires 1 Iron Bar and 1 Coal.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save 140 of these, you will need them for future steps.
'|complete skill("Blacksmithing") >= 200 |or
step
label "Collect_Heavy_Grinding_Stone_200"
collect 20 Heavy Grinding Stone##3486 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 200 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Golden Scale Bracers |learn Golden Scale Bracers##7223 |goto Orgrimmar/1 76.49,34.50
step
create 10 Golden Scale Bracers##7223,Blacksmithing,200 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
|tip Inside the building.
|tip If you intend to choose the Armorsmith specialization, keep 6 of these.
step
label "Collect_Solid_Stone_210"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 520 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these.
|tip If you cannot find the plans for Mithril Spurs, you will need more Thorium or Mithril but only 120 Solid Stone.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 210 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Solid Grinding Stone |learn Solid Grinding Stone##9920 |goto Orgrimmar/1 76.49,34.50
step
create 130 Solid Grinding Stone##9920,Blacksmithing,130 total |or
|tip Save these, you will need them for future steps.
|tip If you can't find the plans for Mithril Spurs, you will only need to save 10 of these.
'|complete skill("Blacksmithing") >= 210 |or
step
create 1 Solid Grinding Stone##9920,Blacksmithing,210
|tip You may need to make a few more of these.
|tip Each additional Solid Grinding Stone requires 4 Solid Stone.
|tip Save 130 these, you will need them for future steps.
|tip If you can't find the plans for Mithril Spurs, you will only need to save 10 of these.
stickystart "Collect_Citrine_235"
stickystart "Collect_Mageweave_Cloth_225"
step
label "Collect_Mithril_Bar_225"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
collect 250 Mithril Ore##3858 |n
|tip Smelt the ore at a forge.
collect 250 Mithril Bar##3860 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 175 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 160 of these; you will need them for future steps.
'|complete skill("Blacksmithing") >= 225 |or
step
label "Collect_Citrine_235"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
collect 10 Citrine##3864 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 175 Mining skill to gather these.
|tip Save these; you will need them for future steps.
'|complete skill("Blacksmithing") >= 235 |or
step
label "Collect_Mageweave_Cloth_225"
Kill Dunemaul enemies around this area
collect 60 Mageweave Cloth##4338 |goto Tanaris/0 40.50,55.50 |or
|tip Farm them from humanoid mobs or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 225 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Heavy Mithril Gauntlet |learn Heavy Mithril Gauntlet##9928 |goto Orgrimmar/1 76.49,34.50
step
create 15 Heavy Mithril Gauntlet##9928,Blacksmithing,225 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
|tip Inside the building.
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Artisan Blacksmithing |skillmax Blacksmithing,300 |goto Orgrimmar/1 76.49,34.50
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Steel Plate Helm |learn Steel Plate Helm##9935 |goto Orgrimmar/1 76.49,34.50
stickystart "Collect_Steel_Bar_235"
stickystart "Collect_Solid_Grinding_Stone_235"
step
collect 10 Citrine##3864 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 235 |or
step
label "Collect_Steel_Bar_235"
collect 140 Steel Bar##3859 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 235 |or
step
label "Collect_Solid_Grinding_Stone_235"
collect 10 Solid Grinding Stone##7966 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 235 |or
step
create 10 Steel Plate Helm##9935,Blacksmithing,235 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
|tip Inside the building.
|tip If you intend to choose the Armorsmith specialization, keep 4 of these.
step
collect Plans: Mithril Spurs##7989 |or
|tip Purchase this from the auction house.
|tip You can also make 15 Mithril Coifs.
|tip This will require more materials at 150 Mithril Bars and 90 Mageweave Cloth.
'|complete skill("Blacksmithing") >= 255 |or
step
use the Plans: Mithril Spurs##7989
Learn Mithril Spurs |learn Mithril Spurs##9964
|tip You can also make 15 Mithril Coifs.
|tip This will require more materials at 150 Mithril Bars and 90 Mageweave Cloth.
stickystart "Collect_Solid_Grinding_Stone_250"
step
collect 80 Mithril Bar##3860 |or
|tip You collected these in a previous step.
|tip You can also make 15 Mithril Coifs.
|tip This will require more materials at 150 Mithril Bars and 90 Mageweave Cloth.
'|complete skill("Blacksmithing") >= 250 |or
step
label "Collect_Solid_Grinding_Stone_250"
collect 60 Solid Grinding Stone##7966 |or
|tip You created these in a previous step.
|tip You do not need these if you make Mithril Coifs instead.
'|complete skill("Blacksmithing") >= 250 |or
step
create 20 Mithril Spurs##9964,Blacksmithing,250 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Mithril Spur requires 4 Mithril Bars and 3 Solid Grinding Stones.
|tip Solid Grinding Stones require 4 Solid Stone.
|tip You can also make 15 Mithril Coifs.
|tip This will require more materials at 150 Mithril Bars and 90 Mageweave Cloth.
step
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+
click Rich Thorium Vein##175404+
|tip They look like green mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 20 Dense Stone##12365 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Blacksmithing") >= 260 |or
step
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 462 Thorium Ore##10620 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 462 Thorium Bar##12359 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save these, you will need them for future steps.
'|complete skill("Blacksmithing") >= 260 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Dense Sharpening Stone |learn Dense Sharpening Stone##16641 |goto Orgrimmar/1 76.49,34.50
step
create 20 Dense Sharpening Stone##16641,Blacksmithing,260
|tip You may need to create more or less of these.
|tip Each additional Dense Sharpening Stone requires 1 Dense Stone.
stickystart "Collect_Solid_Grinding_Stone_270"
step
collect 80 Mithril Bar##3860 |or
|tip You collected these in a previous step.
|tip If you didn't buy the plans for Mithril Spurs, you can buy plans for Thorium Bracers, Thorium Belt, or Radiant Belt.
|tip Less ideally, you can make Heavy Mithril Boots from 260-265 and Imperial Plate Belts from 265-270.
|tip Imperial Plate Belt Plans can be obtained from Derotain in Gadgetzan for 10 Thorium Bars.
'|complete skill("Blacksmithing") >= 270 |or
step
label "Collect_Solid_Grinding_Stone_270"
collect 60 Solid Grinding Stone##7966 |or
|tip You collected these in a previous step.
|tip If you didn't buy the plans for Mithril Spurs, you can buy plans for Thorium Bracers, Thorium Belt, or Radiant Belt. |notinsticky
|tip Less ideally, you can make Heavy Mithril Boots from 260-265 and Imperial Plate Belts from 265-270. |notinsticky
|tip Imperial Plate Belt Plans can be obtained from Derotain in Gadgetzan for 10 Thorium Bars. |notinsticky
'|complete skill("Blacksmithing") >= 270 |or
step
create 20 Mithril Spurs##9964,Blacksmithing,270 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Mithril Spur requires 4 Mithril Bars and 3 Solid Grinding Stones.
|tip Solid Grinding Stones require 4 Solid Stone.
|tip If you didn't buy the plans for Mithril Spurs, you can buy plans for Thorium Bracers, Thorium Belt, or Radiant Belt.
|tip Less ideally, you can make Heavy Mithril Boots from 260-265 and Imperial Plate Belts from 265-270.
|tip Imperial Plate Belt Plans can be obtained from Derotain in Gadgetzan for 10 Thorium Bars.
step
talk Saru Steelfury##3355
Train Imperial Plate Bracers |learn Imperial Plate Bracers##16649 |goto Orgrimmar/1 76.49,34.50
step
collect 312 Thorium Bar##12359 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 295 |or
step
create 26 Imperial Plate Bracers##16649,Blacksmithing,295 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Imperial Plate Bracer requires 12 Thorium Bars.
step
talk Saru Steelfury##3355
Train Imperial Plate Boots |learn Imperial Plate Boots##16657 |goto Orgrimmar/1 76.49,34.50
step
collect 90 Thorium Bar##12359 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 300 |or
step
create 5 Imperial Plate Boots##16657,Blacksmithing,300 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Imperial Plate Boots requires 18 Thorium Bars.
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to train Master professions in Outland.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Burning Crusade-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Blacksmithing |confirm |next "Begin_Profession_Leveling_Outland" |or
'|complete skill("Blacksmithing") >= 350 |or |next "Begin_Profession_Leveling_Outland"
stickystart "Collect_Adamantite_Bar_Total"
stickystart "Collect_Netherweave_Cloth_Total"
step
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+
|tip They look like rocky green mineral clusters along path.
|tip Track them on your minimap with "Find Minerals".
collect 326 Fel Iron Ore##23424 |n
|tip Smelt the ore at a forge.
collect 163 Fel Iron Bar##23445 |or
|tip Create them with Mining or purchase them from the auction house.
|tip You will need at least 300 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Blacksmithing") >= 340 |or
step
label "Collect_Adamantite_Bar_Total"
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
click Adamantite Deposit##181556+ |notinsticky
|tip They look like light blue mineral clusters around this path. |notinsticky
click Rich Adamantite Deposit##181569+ |notinsticky
|tip They look like dark blue mineral clusters around this path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 180 Adamantite Ore##23425 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 90 Adamantite Bar##23446 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 325 Mining skill to mine Adamantite Deposits and 350 Mining skill to mine Rich Adamantite Deposits. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 350 |or
step
label "Collect_Netherweave_Cloth_Total"
map Shadowmoon Valley/0
path follow smart; loop on; ants curved; dist 20
path	51.1,58.8	53.0,59.3	53.2,60.5	52.8,63.2	52.8,65.4
path	52.9,69.0	52.5,71.8	47.3,71.1	45.8,71.3	45.2,69.2
path	45.6,66.1	48.0,67.2
Kill enemies around this area |notinsticky
collect 7 Netherweave Cloth##21877 |or
|tip Farm them from humanoid mobs in Outland or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 305 |or
step
label "Begin_Profession_Leveling_Outland"
talk Saru Steelfury##3355
Train Master Blacksmithing |skillmax Blacksmithing,375 |goto Orgrimmar/1 76.49,34.50
step
talk Saru Steelfury##3355
Train Fel Weightstone |learn Fel Weightstone##34607 |goto Orgrimmar/1 76.49,34.50
stickystart "Collect_Netherweave_Cloth_305"
step
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+
|tip They look like rocky green mineral clusters along path.
|tip Track them on your minimap with "Find Minerals".
collect 326 Fel Iron Ore##23424 |n
|tip Smelt the ore at a forge.
collect 163 Fel Iron Bar##23445 |or
|tip Create them with Mining or purchase them from the auction house.
|tip You will need at least 300 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 156 of these; you will need them for future steps.
'|complete skill("Blacksmithing") >= 305 |or
step
label "Collect_Netherweave_Cloth_305"
map Shadowmoon Valley/0
path follow smart; loop on; ants curved; dist 20
path	51.1,58.8	53.0,59.3	53.2,60.5	52.8,63.2	52.8,65.4
path	52.9,69.0	52.5,71.8	47.3,71.1	45.8,71.3	45.2,69.2
path	45.6,66.1	48.0,67.2
Kill enemies around this area
collect 7 Netherweave Cloth##21877 |or
|tip Farm them from humanoid mobs in Outland or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 305 |or
step
create 7 Fel Weightstone##34607,Blacksmithing,305 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Fel Weightstone requires 1 Fel Iron Bar and 1 Netherweave Cloth.
step
collect 44 Fel Iron Bar##23445 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 316 |or
step
talk Saru Steelfury##3355
Train Fel Iron Plate Belt |learn Fel Iron Plate Belt##29547 |goto Orgrimmar/1 76.49,34.50
step
create 11 Fel Iron Plate Belt##29547,Blacksmithing,316 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
step
collect 25 Fel Iron Bar##23445 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 321 |or
step
talk Saru Steelfury##3355
Train Fel Iron Chain Gloves |learn Fel Iron Chain Gloves##29552 |goto Orgrimmar/1 76.49,34.50
step
create 5 Fel Iron Chain Gloves##29552,Blacksmithing,321 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
step
collect 24 Fel Iron Bar##23445 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 325 |or
step
talk Saru Steelfury##3355
Train Fel Iron Plate Boots |learn Fel Iron Plate Boots##29548 |goto Orgrimmar/1 76.49,34.50
step
create 4 Fel Iron Plate Boots##29548,Blacksmithing,325 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
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
|tip Track them on your minimap with "Find Minerals".
collect 180 Adamantite Ore##23425 |n
|tip Smelt the ore at a forge.
collect 90 Adamantite Bar##23446 |or
|tip Create them with Mining or purchase them from the auction house.
|tip You will need at least 325 Mining skill to mine Adamantite Deposits and 350 Mining skill to mine Rich Adamantite Deposits.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 45 of these, you will need them for a future step.
'|complete skill("Blacksmithing") >= 335 |or
step
talk Saru Steelfury##3355
Train Lesser Rune of Warding |learn Lesser Rune of Warding##32284 |goto Orgrimmar/1 76.49,34.50
step
create 45 Lesser Rune of Warding##32284,Blacksmithing,335
|tip You may need to create more or less of these.
|tip Each additional Rune of Warding requires 1 Adamantite Bar.
step
collect 63 Fel Iron Bar##23445 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 340 |or
step
talk Saru Steelfury##3355
Train Fel Iron Chain Tunic |learn Fel Iron Chain Tunic##29556 |goto Orgrimmar/1 76.49,34.50
step
create 7 Fel Iron Chain Tunic##29556,Blacksmithing,340 |goto Orgrimmar/1 53.07,38.05
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Fel Iron Chain Tunic requires 9 Fel Iron Bars.
step
talk Rohok##16583
buy 1 Plans: Lesser Ward of Shielding##23638 |goto Hellfire Peninsula/0 53.13,38.15 |or
|tip This is a limited supply item that can also be purchased from the auction house.
|tip If it is sold out it should restock in about 15-60 minutes.
'|complete skill("Blacksmithing") >= 350 |or
step
use the Plans: Lesser Ward of Shielding##23638
Learn Lesser Ward of Shielding |learn Lesser Ward of Shielding##29728
step
collect 45 Adamantite Bar##23446 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 350 |or
step
create 45 Lesser Ward of Shielding##29728,Blacksmithing,350 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Lesser Ward of Shielding requires 1 Adamantite Bar.
step
Reach Level 65 |ding 65
|tip You must be at least level 65 to train Grand Master professions in Northrend.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Lich King-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Blacksmithing |confirm |next "Begin_Profession_Leveling_Northrend" |or
'|complete skill("Blacksmithing") >= 450 |or |next "Begin_Profession_Leveling_Northrend"
stickystart "Collect_Saronite_Bars_Total"
stickystart "Collect_Titanium_Bars_Total"
stickystart "Collect_Crystallized_Air_Total"
stickystart "Collect_Eternal_Earth_Total"
stickystart "Collect_Eternal_Water_Total"
stickystart "Collect_Eternal_Shadow_Total"
step
map Howling Fjord/0
path follow smart; loop on; ants curved; dist 30
path	55.65,17.60	53.52,15.00	51.43,15.71	49.20,14.74	47.56,15.38
path	45.05,13.89	43.14,13.19	41.34,13.29	40.23,14.59	38.60,14.93
path	37.64,16.63	36.43,16.99	35.40,15.49	32.38,11.59	30.00,10.92
path	26.87,11.45	23.99,12.75	23.01,13.71	23.35,16.35	23.44,18.65
path	21.16,22.18	20.25,24.48	21.23,26.31	22.95,26.56	24.19,25.71
path	25.40,23.02	26.71,22.98	27.79,25.04	27.53,28.00	27.68,29.99
path	30.40,30.52	32.46,30.72	33.34,29.71	34.89,28.56	36.68,28.46
path	38.80,27.56	39.48,29.21	40.90,30.52	44.05,31.72	45.86,31.80
path	47.02,34.07	48.36,35.08	50.93,33.85	52.89,34.14	55.30,35.21
path	57.83,37.08	60.42,38.26	62.79,40.38	64.35,42.45	65.48,48.32
path	65.93,51.73	67.05,53.90	67.80,56.08	68.47,59.74	66.95,63.80
path	65.01,66.28	64.47,69.52	64.82,71.76	65.94,72.50	68.40,73.31
path	70.29,73.66	71.48,70.48	72.00,69.07	73.67,68.26	76.42,67.33
path	77.11,65.13	76.75,62.91	73.39,60.77	73.92,57.74	75.91,52.76
path	76.90,51.02	78.76,48.21	79.67,45.76	78.27,44.92	75.77,44.46
path	73.89,43.50	74.69,39.29	71.07,38.60	69.75,33.99	70.56,32.18
path	69.18,30.96	68.13,28.96	70.46,26.26	73.37,22.20	73.03,19.18
path	71.72,13.55	71.53,11.86	70.13,11.18	68.47,10.35	66.46,13.07
path	65.17,16.95	63.95,20.60	60.91,22.40	60.52,24.71	58.88,24.52
path	57.84,21.39	57.56,17.79	56.26,16.77
click Cobalt Deposit##189978+
click Rich Cobalt Deposit##189979+
|tip They look like large blue clusters of rock and crystals.
|tip Track them on your minimap with "Find Minerals".
collect 320 Cobalt Ore##36909 |n
|tip Smelt the ore at a forge.
collect 320 Cobalt Bar##36916 |or
|tip Create them with Mining or purchase them from the auction house.
|tip You will need at least 350 Mining skill to mine Cobalt Deposits and 375 Mining skill to mine Rich Cobalt Deposits.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Blacksmithing") >= 405 |or
step
label "Collect_Saronite_Bars_Total"
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	79.27,65.32	80.51,63.45	80.55,60.91	80.11,58.43	79.71,55.90
path	78.57,54.98	76.16,53.63	74.31,53.72	72.37,52.46	70.19,51.19
path	68.54,50.18	68.10,49.16	68.42,47.09	71.54,42.33	71.77,41.02
path	70.80,39.72	69.17,39.54	66.84,39.75	65.22,39.43	63.46,37.28
path	62.15,34.64	60.96,31.35	58.97,32.07	56.70,33.49	55.46,34.36
path	53.15,36.55	51.51,36.91	49.18,36.87	46.07,35.95	44.29,39.29
path	40.80,40.94	40.12,42.66	39.54,44.03	38.93,44.94	38.07,48.02
path	38.18,49.57	37.68,51.43	36.63,51.07	35.74,50.18	34.32,48.74
path	32.65,48.37	32.04,50.86	32.76,53.74	31.75,57.06	31.27,59.57
path	30.57,62.54	31.30,66.34	32.34,69.72	34.25,69.54	36.01,70.86
path	37.83,69.46	38.62,68.21	40.71,66.06	42.62,65.37	47.84,65.25
path	49.03,63.72	49.25,62.37	47.89,57.80	48.08,53.78	48.13,50.05
path	48.61,47.04	51.44,45.25	55.15,43.88	57.87,43.96	59.59,46.21
path	61.20,47.93	62.33,50.75	62.58,54.26	64.21,56.39	65.31,59.10
path	66.48,61.81	66.37,64.78	67.17,70.17	67.87,70.86	69.35,69.71
path	72.29,67.71	72.82,64.27	73.82,61.06	76.10,61.31	77.53,63.76
click Saronite Deposit##189980+ |notinsticky
click Rich Saronite Deposit##189981+ |notinsticky
|tip They look like large green clusters of rock and crystals. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 1058 Saronite Ore##36912 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 529 Saronite Bar##36913 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 400 Mining skill to mine Saronite Deposits and 425 Mining skill to mine Rich Saronite Deposits. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You will need more than this, but your final 5 points will be green so your totals will vary. |notinsticky
'|complete skill("Blacksmithing") >= 400 |or
step
label "Collect_Titanium_Bars_Total"
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	79.27,65.32	80.51,63.45	80.55,60.91	80.11,58.43	79.71,55.90
path	78.57,54.98	76.16,53.63	74.31,53.72	72.37,52.46	70.19,51.19
path	68.54,50.18	68.10,49.16	68.42,47.09	71.54,42.33	71.77,41.02
path	70.80,39.72	69.17,39.54	66.84,39.75	65.22,39.43	63.46,37.28
path	62.15,34.64	60.96,31.35	58.97,32.07	56.70,33.49	55.46,34.36
path	53.15,36.55	51.51,36.91	49.18,36.87	46.07,35.95	44.29,39.29
path	40.80,40.94	40.12,42.66	39.54,44.03	38.93,44.94	38.07,48.02
path	38.18,49.57	37.68,51.43	36.63,51.07	35.74,50.18	34.32,48.74
path	32.65,48.37	32.04,50.86	32.76,53.74	31.75,57.06	31.27,59.57
path	30.57,62.54	31.30,66.34	32.34,69.72	34.25,69.54	36.01,70.86
path	37.83,69.46	38.62,68.21	40.71,66.06	42.62,65.37	47.84,65.25
path	49.03,63.72	49.25,62.37	47.89,57.80	48.08,53.78	48.13,50.05
path	48.61,47.04	51.44,45.25	55.15,43.88	57.87,43.96	59.59,46.21
path	61.20,47.93	62.33,50.75	62.58,54.26	64.21,56.39	65.31,59.10
path	66.48,61.81	66.37,64.78	67.17,70.17	67.87,70.86	69.35,69.71
path	72.29,67.71	72.82,64.27	73.82,61.06	76.10,61.31	77.53,63.76
click Titanium Vein##191133+ |notinsticky
|tip They look like large blue clusters of rock and crystals. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
|tip They share spawns with Saronite Deposits, so gather those as well. |notinsticky
collect 50 Titanium Ore##36910 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 25 Titanium Bar##41163 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 450 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 430 |or
step
label "Collect_Crystallized_Air_Total"
kill Scion of Storm##30184+ |notinsticky
|tip Inside the cave. |notinsticky
collect 22 Crystallized Air##37700 |goto The Storm Peaks/0 67.73,41.55 |or
|tip Farm them from air elementals or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 416 |or
step
label "Collect_Eternal_Earth_Total"
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
use Crystallized Earth##37701 |notinsticky
|tip Combine 10 Crystallized Earth into 1 Eternal Earth. |notinsticky
kill Lifeblood Elemental##29124+ |notinsticky
collect 35 Eternal Earth##35624 |or
|tip Farm them from earth elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Mining nodes with Northrend Mining guides. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You will need more than this, but your final 5 points will be green so your totals will vary. |notinsticky
'|complete skill("Blacksmithing") >= 445 |or
step
label "Collect_Eternal_Water_Total"
kill Boiling Spirit##25419+ |notinsticky
use the Crystallized Water##37705 |notinsticky
|tip Combine 10 Crystallized Water into 1 Eternal Water. |notinsticky
collect 13 Eternal Water##35622 |goto Borean Tundra/0 46.94,13.40 |or
|tip Farm them from water elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 425 |or
step
label "Collect_Eternal_Shadow_Total"
Enter the cave |goto Dragonblight/0 74.24,23.64 < 30 |walk |notinsticky
kill Deathbringer Revenant##27382+ |notinsticky
|tip Inside the cave. |notinsticky
use the Crystallized Shadow##37703 |notinsticky
|tip Combine 10 Crystallized Shadow into 1 Eternal Shadow. |notinsticky
collect 13 Eternal Shadow##35627 |or
|tip Farm them from shadow mobs or purchase them from the auction house. |notinsticky
|tip You can also farm them from Saronite Deposits with the Northrend Mining guide. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 425 |or
step
label "Begin_Profession_Leveling_Northrend"
talk Saru Steelfury##3355
|tip Inside the building.
Train Grand Master Blacksmithing |skillmax Blacksmithing,450 |goto Orgrimmar/1 76.49,34.50
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Cobalt Boots |learn Cobalt Boots##52569 |goto Orgrimmar/1 76.49,34.50
step
map Howling Fjord/0
path follow smart; loop on; ants curved; dist 30
path	55.65,17.60	53.52,15.00	51.43,15.71	49.20,14.74	47.56,15.38
path	45.05,13.89	43.14,13.19	41.34,13.29	40.23,14.59	38.60,14.93
path	37.64,16.63	36.43,16.99	35.40,15.49	32.38,11.59	30.00,10.92
path	26.87,11.45	23.99,12.75	23.01,13.71	23.35,16.35	23.44,18.65
path	21.16,22.18	20.25,24.48	21.23,26.31	22.95,26.56	24.19,25.71
path	25.40,23.02	26.71,22.98	27.79,25.04	27.53,28.00	27.68,29.99
path	30.40,30.52	32.46,30.72	33.34,29.71	34.89,28.56	36.68,28.46
path	38.80,27.56	39.48,29.21	40.90,30.52	44.05,31.72	45.86,31.80
path	47.02,34.07	48.36,35.08	50.93,33.85	52.89,34.14	55.30,35.21
path	57.83,37.08	60.42,38.26	62.79,40.38	64.35,42.45	65.48,48.32
path	65.93,51.73	67.05,53.90	67.80,56.08	68.47,59.74	66.95,63.80
path	65.01,66.28	64.47,69.52	64.82,71.76	65.94,72.50	68.40,73.31
path	70.29,73.66	71.48,70.48	72.00,69.07	73.67,68.26	76.42,67.33
path	77.11,65.13	76.75,62.91	73.39,60.77	73.92,57.74	75.91,52.76
path	76.90,51.02	78.76,48.21	79.67,45.76	78.27,44.92	75.77,44.46
path	73.89,43.50	74.69,39.29	71.07,38.60	69.75,33.99	70.56,32.18
path	69.18,30.96	68.13,28.96	70.46,26.26	73.37,22.20	73.03,19.18
path	71.72,13.55	71.53,11.86	70.13,11.18	68.47,10.35	66.46,13.07
path	65.17,16.95	63.95,20.60	60.91,22.40	60.52,24.71	58.88,24.52
path	57.84,21.39	57.56,17.79	56.26,16.77
click Cobalt Deposit##189978+
click Rich Cobalt Deposit##189979+
|tip They look like large blue clusters of rock and crystals.
|tip Track them on your minimap with "Find Minerals".
collect 40 Cobalt Ore##36909 |n
|tip Smelt the ore at a forge.
collect 40 Cobalt Bar##36916 |or
|tip Create them with Mining or purchase them from the auction house.
|tip You will need at least 350 Mining skill to mine Cobalt Deposits and 375 Mining skill to mine Rich Cobalt Deposits.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 280 of these; you will need them for future steps.
'|complete skill("Blacksmithing") >= 360 |or
step
create 10 Cobalt Boots##52569,Blacksmithing,360 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
step
collect 40 Cobalt Bar##36916 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 370 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Cobalt Triangle Shield |learn Cobalt Triangle Shield##54550 |goto Orgrimmar/1 76.49,34.50
step
create 10 Cobalt Triangle Shield##54550,Blacksmithing,370 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
step
collect 25 Cobalt Bar##36916 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 375 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Cobalt Legplates |learn Cobalt Legplates##52567 |goto Orgrimmar/1 76.49,34.50
step
create 5 Cobalt Legplates##52567,Blacksmithing,375 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
step
collect 25 Cobalt Bar##36916 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 380 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Cobalt Gauntlets |learn Cobalt Gauntlets##55835 |goto Orgrimmar/1 76.49,34.50
step
create 5 Cobalt Gauntlets##55835,Blacksmithing,380 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
step
collect 35 Cobalt Bar##36916 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 385 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Spiked Cobalt Boots |learn Spiked Cobalt Boots##54918 |goto Orgrimmar/1 76.49,34.50
step
create 5 Spiked Cobalt Boots##54918,Blacksmithing,385 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
step
collect 35 Cobalt Bar##36916 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 390 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Spiked Cobalt Shoulders |learn Spiked Cobalt Shoulders##54941 |goto Orgrimmar/1 76.49,34.50
step
create 5 Spiked Cobalt Shoulders##54941,Blacksmithing,390 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
step
collect 50 Cobalt Bar##36916 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 395 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Notched Cobalt War Axe |learn Notched Cobalt War Axe##55204 |goto Orgrimmar/1 76.49,34.50
step
create 5 Notched Cobalt War Axe##55204,Blacksmithing,395 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
stickystart "Collect_Cobalt_Bars_400"
step
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	79.27,65.32	80.51,63.45	80.55,60.91	80.11,58.43	79.71,55.90
path	78.57,54.98	76.16,53.63	74.31,53.72	72.37,52.46	70.19,51.19
path	68.54,50.18	68.10,49.16	68.42,47.09	71.54,42.33	71.77,41.02
path	70.80,39.72	69.17,39.54	66.84,39.75	65.22,39.43	63.46,37.28
path	62.15,34.64	60.96,31.35	58.97,32.07	56.70,33.49	55.46,34.36
path	53.15,36.55	51.51,36.91	49.18,36.87	46.07,35.95	44.29,39.29
path	40.80,40.94	40.12,42.66	39.54,44.03	38.93,44.94	38.07,48.02
path	38.18,49.57	37.68,51.43	36.63,51.07	35.74,50.18	34.32,48.74
path	32.65,48.37	32.04,50.86	32.76,53.74	31.75,57.06	31.27,59.57
path	30.57,62.54	31.30,66.34	32.34,69.72	34.25,69.54	36.01,70.86
path	37.83,69.46	38.62,68.21	40.71,66.06	42.62,65.37	47.84,65.25
path	49.03,63.72	49.25,62.37	47.89,57.80	48.08,53.78	48.13,50.05
path	48.61,47.04	51.44,45.25	55.15,43.88	57.87,43.96	59.59,46.21
path	61.20,47.93	62.33,50.75	62.58,54.26	64.21,56.39	65.31,59.10
path	66.48,61.81	66.37,64.78	67.17,70.17	67.87,70.86	69.35,69.71
path	72.29,67.71	72.82,64.27	73.82,61.06	76.10,61.31	77.53,63.76
click Saronite Deposit##189980+
click Rich Saronite Deposit##189981+
|tip They look like large green clusters of rock and crystals.
|tip Track them on your minimap with "Find Minerals".
collect 1058 Saronite Ore##36912 |n
|tip Smelt the ore at a forge.
collect 529 Saronite Bar##36913 |or
|tip Create them with Mining or purchase them from the auction house.
|tip You will need at least 400 Mining skill to mine Saronite Deposits and 425 Mining skill to mine Rich Saronite Deposits.
|tip These totals are approximate.
|tip You will need more than this, but your final 5 points will be green so your totals will vary.
|tip Save at least 504 of these; you will need them for future steps.
'|complete skill("Blacksmithing") >= 400 |or
step
label "Collect_Cobalt_Bars_400"
collect 30 Cobalt Bar##36916 |or
|tip You collected these in a previous step. |notinsticky
'|complete skill("Blacksmithing") >= 400 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Brilliant Saronite Belt |learn Brilliant Saronite Belt##59436 |goto Orgrimmar/1 76.49,34.50
step
create 5 Brilliant Saronite Belt##59436,Blacksmithing,400 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
step
collect 40 Cobalt Bar##36916 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 405 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Horned Cobalt Helm |learn Horned Cobalt Helm##54949 |goto Orgrimmar/1 76.49,34.50
step
create 5 Horned Cobalt Helm##54949,Blacksmithing,405 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
stickystart "Collect_Saronite_Bar_416"
step
kill Scion of Storm##30184+
|tip Inside the cave.
collect 22 Crystallized Air##37700 |goto The Storm Peaks/0 67.73,41.55 |or
|tip Farm them from air elementals or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Blacksmithing") >= 416 |or
step
label "Collect_Saronite_Bar_416"
collect 77 Saronite Bar##36913 |or
|tip You collected these in a previous step. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 416 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Deadly Saronite Dirk |learn Deadly Saronite Dirk##55206 |goto Orgrimmar/1 76.49,34.50
step
create 11 Deadly Saronite Dirk##55206,Blacksmithing,416 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
|tip You may need to create more of these.
|tip Each additional Deadly Saronite Dirk requires 7 Saronite Bars and 2 Crystallized Air.
stickystart "Collect_Eternal_Water_425"
stickystart "Collect_Eternal_Shadow_425"
stickystart "Collect_Saronite_Bar_425"
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
use Crystallized Earth##37701
|tip Combine 10 Crystallized Earth into 1 Eternal Earth.
kill Lifeblood Elemental##29124+
collect 35 Eternal Earth##35624 |or
|tip Farm them from earth elementals or purchase them from the auction house.
|tip You can also farm them from Mining nodes with Northrend Mining guides.
|tip These totals are approximate.
|tip You will need more than this, but your final 5 points will be green so your totals will vary.
|tip Save at least 22 of these; you will need them for future steps.
'|complete skill("Blacksmithing") >= 425 |or
step
label "Collect_Eternal_Water_425"
kill Boiling Spirit##25419+ |notinsticky
use the Crystallized Water##37705 |notinsticky
|tip Combine 10 Crystallized Water into 1 Eternal Water. |notinsticky
collect 13 Eternal Water##35622 |goto Borean Tundra/0 46.94,13.40 |or
|tip Farm them from water elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 425 |or
step
label "Collect_Eternal_Shadow_425"
Enter the cave |goto Dragonblight/0 74.24,23.64 < 30 |walk |notinsticky
kill Deathbringer Revenant##27382+ |notinsticky
|tip Inside the cave. |notinsticky
use the Crystallized Shadow##37703 |notinsticky
|tip Combine 10 Crystallized Shadow into 1 Eternal Shadow. |notinsticky
collect 13 Eternal Shadow##35627 |or
|tip Farm them from shadow mobs or purchase them from the auction house. |notinsticky
|tip You can also farm them from Saronite Deposits with the Northrend Mining guide. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 425 |or
step
label "Collect_Saronite_Bar_425"
collect 52 Saronite Bar##36913 |or
|tip You collected these in a previous step. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 425 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Eternal Belt Buckle |learn Eternal Belt Buckle##55656 |goto Orgrimmar/1 76.49,34.50
|tip There are cheaper alternatives, but this sells well.
step
create 13 Eternal Belt Buckle##55656,Blacksmithing,425 |goto Orgrimmar/1 76.49,34.50
|tip There are cheaper alternatives, but this sells well.
|tip Stand next to an anvil inside the building.
|tip You may need to create more or less of these.
|tip Each additional Eternal Belt Buckle requires 4 Saronite Bars, 1 Eternal Earth, 1 Eternal Water, and 1 Eternal Shadow.
stickystart "Collect_Saronite_Bar_430"
step
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	79.27,65.32	80.51,63.45	80.55,60.91	80.11,58.43	79.71,55.90
path	78.57,54.98	76.16,53.63	74.31,53.72	72.37,52.46	70.19,51.19
path	68.54,50.18	68.10,49.16	68.42,47.09	71.54,42.33	71.77,41.02
path	70.80,39.72	69.17,39.54	66.84,39.75	65.22,39.43	63.46,37.28
path	62.15,34.64	60.96,31.35	58.97,32.07	56.70,33.49	55.46,34.36
path	53.15,36.55	51.51,36.91	49.18,36.87	46.07,35.95	44.29,39.29
path	40.80,40.94	40.12,42.66	39.54,44.03	38.93,44.94	38.07,48.02
path	38.18,49.57	37.68,51.43	36.63,51.07	35.74,50.18	34.32,48.74
path	32.65,48.37	32.04,50.86	32.76,53.74	31.75,57.06	31.27,59.57
path	30.57,62.54	31.30,66.34	32.34,69.72	34.25,69.54	36.01,70.86
path	37.83,69.46	38.62,68.21	40.71,66.06	42.62,65.37	47.84,65.25
path	49.03,63.72	49.25,62.37	47.89,57.80	48.08,53.78	48.13,50.05
path	48.61,47.04	51.44,45.25	55.15,43.88	57.87,43.96	59.59,46.21
path	61.20,47.93	62.33,50.75	62.58,54.26	64.21,56.39	65.31,59.10
path	66.48,61.81	66.37,64.78	67.17,70.17	67.87,70.86	69.35,69.71
path	72.29,67.71	72.82,64.27	73.82,61.06	76.10,61.31	77.53,63.76
click Titanium Vein##191133+
|tip They look like large blue clusters of rock and crystals.
|tip Track them on your minimap with "Find Minerals".
|tip They share spawns with Saronite Deposits, so gather those as well.
collect 50 Titanium Ore##36910 |n
|tip Smelt the ore at a forge.
collect 25 Titanium Bar##41163 |or
|tip Create them with Mining or purchase them from the auction house.
|tip You will need at least 450 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Blacksmithing") >= 430 |or
label "Collect_Saronite_Bar_430"
step
collect 77 Saronite Bar##36913 |or
|tip You collected these in a previous step. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 430 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Titanium Weapon Chain |learn Titanium Weapon Chain##55839 |goto Orgrimmar/1 76.49,34.50
step
create 7 Titanium Weapon Chain##55839,Blacksmithing,430 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
|tip You may need to create more of these.
|tip Each additional Titanium Weapon Chain requires 2 Saronite Bars and 1 Titanium Bar.
stickystart "Collect_Saronite_Bar_435"
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
use Crystallized Earth##37701
|tip Combine 10 Crystallized Earth into 1 Eternal Earth.
kill Lifeblood Elemental##29124+
collect 5 Eternal Earth##35624 |or
|tip Farm them from earth elementals or purchase them from the auction house.
|tip You can also farm them from Mining nodes with Northrend Mining guides.
|tip These totals are approximate.
|tip You may need slightly more than the indicated amount.
'|complete skill("Blacksmithing") >= 435 |or
step
label "Collect_Saronite_Bar_435"
collect 60 Saronite Bar##36913 |or
|tip You collected these in a previous step. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 435 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Daunting Handguards |learn Daunting Handguards##55301 |goto Orgrimmar/1 76.49,34.50
step
create 5 Daunting Handguards##55301,Blacksmithing,435 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
|tip You may need to create more of these.
|tip Each additional Daunting Handguards requires 12 Saronite Bars and 1 Eternal Earth.
stickystart "Collect_Saronite_Bar_445"
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
use Crystallized Earth##37701
|tip Combine 10 Crystallized Earth into 1 Eternal Earth.
kill Lifeblood Elemental##29124+
collect 17 Eternal Earth##35624 |or
|tip Farm them from earth elementals or purchase them from the auction house.
|tip You can also farm them from Mining nodes with Northrend Mining guides.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Blacksmithing") >= 445 |or
step
label "Collect_Saronite_Bar_445"
collect 238 Saronite Bar##36913 |or
|tip You collected these in a previous step. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 445 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Daunting Legplates |learn Daunting Legplates##55303 |goto Orgrimmar/1 76.49,34.50
step
create 17 Daunting Legplates##55303,Blacksmithing,445 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
|tip You may need to create more or less of these.
|tip Each additional Daunting Legplates requires 14 Saronite Bars and 1 Eternal Earth.
step
create Daunting Legplates##55303,Blacksmithing,450 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
|tip From this point on, you can create any green recipe requiring 14 Saronite Bars.
|tip Titansteel items are also an option, but are very expensive.
|tip Each additional Daunting Legplates requires 14 Saronite Bars and 1 Eternal Earth.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Cataclysm-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Blacksmithing |confirm |next "Begin_Blacksmithing_Leveling_Cataclysm" |or
'|complete skill("Blacksmithing") >= 525 |or |next "Begin_Blacksmithing_Leveling_Cataclysm"
stickystart "Collect_Obsidium_Bars_Total"
stickystart "Collect_Titanium_Bars_Total"
stickystart "Collect_Volatile_Earth_Total"
stickystart "Collect_Volatile_Fire_Total"
stickystart "Collect_Hardened_Elementium_Total"
step
label "Collect_Obsidium_Bars_Total"
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	64.52,32.82	59.54,32.60	54.43,28.82	51.95,17.39	46.03,25.96
path	43.53,26.94	41.14,21.81	35.52,23.56	33.12,24.51	32.25,29.77
path	33.96,33.62	30.51,39.40	27.14,38.97	27.15,36.08	24.15,32.92
path	13.59,37.50	10.03,36.02	15.27,46.43	17.82,54.98	20.48,59.09
path	24.63,59.77	29.20,55.47	33.08,52.54	35.89,51.99	36.52,57.46
path	33.75,64.34	39.87,63.17	49.68,58.94	55.81,57.37	58.34,56.00
path	62.24,58.01	65.04,53.21	68.69,55.16	72.55,58.55	74.49,62.92
path	78.12,59.42	83.94,60.29	87.31,54.46	87.18,49.22	80.70,51.98
click Obsidium Deposit##202736+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 780 Obsidium Ore##53038 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 390 Obsidium Bar##54849 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 450 Mining skill to mine Obsidium Deposits |notinsticky
'|complete skill("Blacksmithing") >= 455 |or
step
label "Collect_Elementium_Bars_Total"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
click Elementium Vein##202738+ |notinsticky
click Rich Elementium Vein##202741+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 640 Elementium Ore##52185 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 320 Elementium Bar##52186 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 500 Mining skill to mine Elementium Deposits |notinsticky
'|complete skill("Blacksmithing") >= 525 |or
step
label "Collect_Volatile_Earth_Total"
map Mount Hyjal/0
path follow smart; loop on; ants curved
path	68.29,25.32	67.93,22.53	66.51,20.84	64.49,19.55	62.87,19.94
path	63.88,22.98	65.24,22.46	65.70,27.28	66.63,28.76
kill Scalding Rock Elemental##40229+
collect 10 Volatile Earth##52327 |or
'|complete skill("Blacksmithing") >= 470 |or
step
label "Collect_Volatile_Fire_Total"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 150 Volatile Fire##52325 |or
'|complete skill("Blacksmithing") >= 525 |or
step
label "Collect_Hardened_Elementium_Total"
collect 2 Hardened Elementium Bar##53039 |or
|tip Smelt them with Mining or purchase them from the Auction House.
|tip Each Hardened Elementium Bar requires 10 Elementium Bars and 4 Volatile Earth
'|complete skill("Blacksmithing") >= 521 |or
step
label "Begin_Blacksmithing_Leveling_Cataclysm"
talk Saru Steelfury##3355
Train Illustrious Grand Master Blacksmithing |skillmax Blacksmithing,525 |goto Orgrimmar/1 76.49,34.50
|tip You must be at least level 75.
step
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	64.52,32.82	59.54,32.60	54.43,28.82	51.95,17.39	46.03,25.96
path	43.53,26.94	41.14,21.81	35.52,23.56	33.12,24.51	32.25,29.77
path	33.96,33.62	30.51,39.40	27.14,38.97	27.15,36.08	24.15,32.92
path	13.59,37.50	10.03,36.02	15.27,46.43	17.82,54.98	20.48,59.09
path	24.63,59.77	29.20,55.47	33.08,52.54	35.89,51.99	36.52,57.46
path	33.75,64.34	39.87,63.17	49.68,58.94	55.81,57.37	58.34,56.00
path	62.24,58.01	65.04,53.21	68.69,55.16	72.55,58.55	74.49,62.92
path	78.12,59.42	83.94,60.29	87.31,54.46	87.18,49.22	80.70,51.98
click Obsidium Deposit##202736+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 780 Obsidium Ore##53038 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 390 Obsidium Bar##54849 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 450 Mining skill to mine Obsidium Deposits |notinsticky
'|complete skill("Blacksmithing") >= 455 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 195 Folded Obsidium>_
|tip Make all of these, you will need them later.
Reach 455 Blacksmithing |skill Blacksmithing,455 |goto Orgrimmar/1 76.49,34.50
step
talk Saru Steelfury##3355
learn Redsteel Bracers##76262 |goto Orgrimmar/1 76.49,34.50
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Redsteel Bracers>_
Reach 460 Blacksmithing |skill Blacksmithing,460 |goto Orgrimmar/1 76.49,34.50
step
talk Saru Steelfury##3355
learn Redsteel Belt##76264 |goto Orgrimmar/1 76.49,34.50
step
map Mount Hyjal/0
path follow smart; loop on; ants curved
path	68.29,25.32	67.93,22.53	66.51,20.84	64.49,19.55	62.87,19.94
path	63.88,22.98	65.24,22.46	65.70,27.28	66.63,28.76
kill Scalding Rock Elemental##40229+
collect 10 Volatile Earth##52327 |or
'|complete skill("Blacksmithing") >= 470 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Redsteel Belt>_
Reach 470 Blacksmithing |skill Blacksmithing,470 |goto Orgrimmar/1 76.49,34.50
step
talk Saru Steelfury##3355
learn Redsteel Boots##76265 |goto Orgrimmar/1 76.49,34.50
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Redsteel Boots>_
Reach 475 Blacksmithing |skill Blacksmithing,475 |goto Orgrimmar/1 76.49,34.50
step
talk Saru Steelfury##3355
learn Obsidium Skeleton Key##76438 |goto Orgrimmar/1 76.49,34.50
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Obsidium Skeleton Key>_
|tip You may need to create a few more.
Reach 485 Blacksmithing |skill Blacksmithing,485 |goto Orgrimmar/1 76.49,34.50
step
talk Saru Steelfury##3355
learn Redsteel Shoulders##76266 |goto Orgrimmar/1 76.49,34.50
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
click Elementium Vein##202738+ |notinsticky
click Rich Elementium Vein##202741+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 60 Elementium Ore##52185 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 30 Elementium Bar##52186 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 500 Mining skill to mine Elementium Deposits |notinsticky
'|complete skill("Blacksmithing") >= 490 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Redsteel Shoulders>_
Reach 490 Blacksmithing |skill Blacksmithing,490 |goto Orgrimmar/1 76.49,34.50
step
talk Saru Steelfury##3355
learn Redsteel Legguards##76267 |goto Orgrimmar/1 76.49,34.50
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
click Elementium Vein##202738+ |notinsticky
click Rich Elementium Vein##202741+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 140 Elementium Ore##52185 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 70 Elementium Bar##52186 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 500 Mining skill to mine Elementium Deposits |notinsticky
'|complete skill("Blacksmithing") >= 500 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Redsteel Legguards>_
Reach 500 Blacksmithing |skill Blacksmithing,500 |goto Orgrimmar/1 76.49,34.50
step
talk Saru Steelfury##3355
learn Hardened Obsidium Breastplate##76261 |goto Orgrimmar/1 76.49,34.50
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
click Elementium Vein##202738+ |notinsticky
click Rich Elementium Vein##202741+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 120 Elementium Ore##52185 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 60 Elementium Bar##52186 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 500 Mining skill to mine Elementium Deposits |notinsticky
'|complete skill("Blacksmithing") >= 510 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Hardened Obsidium Breastplate>_
Reach 510 Blacksmithing |skill Blacksmithing,510 |goto Orgrimmar/1 76.49,34.50
step
talk Sumi##3356
buy 1 Plans: Bloodied Pyrium Belt##66119 |goto Orgrimmar/1 82.59,23.95
|tip This costs 20 Elementium Bars.
step
use the Plans: Bloodied Pyrium Belt##66119
learn Bloodied Pyrium Belt##76458
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
click Elementium Vein##202738+ |notinsticky
click Rich Elementium Vein##202741+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 200 Elementium Ore##52185 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 100 Elementium Bar##52186 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 500 Mining skill to mine Elementium Deposits |notinsticky
'|complete skill("Blacksmithing") >= 520 |or
step
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 100 Volatile Fire##52325 |or
'|complete skill("Blacksmithing") >= 520 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Bloodied Pyrium Belt>_
Reach 520 Blacksmithing |skill Blacksmithing,520 |goto Orgrimmar/1 76.49,34.50
step
talk Sumi##3356
buy 1 Plans: Bloodied Pyrium Boots##66120 |goto Orgrimmar/1 82.59,23.95
|tip This costs 2 Hardened Elementium Bars.
step
use the Plans: Bloodied Pyrium Boots##66120
learn Bloodied Pyrium Boots##76459
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
click Elementium Vein##202738+ |notinsticky
click Rich Elementium Vein##202741+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 120 Elementium Ore##52185 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 60 Elementium Bar##52186 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 500 Mining skill to mine Elementium Deposits |notinsticky
'|complete skill("Blacksmithing") >= 525 |or
step
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 50 Volatile Fire##52325 |or
'|complete skill("Blacksmithing") >= 525 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Bloodied Pyrium Boots>_
Reach 525 Blacksmithing |skill Blacksmithing,525 |goto Orgrimmar/1 76.49,34.50
step
Reach Level 80 |ding 80
|tip You must be at least level 80 to train Zen Master professions.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Pandaria materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Blacksmithing |confirm |next "Begin_Profession_Leveling_Pandaria" |or
'|complete skill("Blacksmithing") >= 500 |or |next "Begin_Profession_Leveling_Pandaria"
stickystart "Collect_Spirit_of_Harmony_Total"
step
collect 233 Ghost Iron Bar##72096 |or
|tip Create it with Mining or purchase it from the auction house.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Ghost Iron"
'|complete skill("Blacksmithing") >= 600 |or
step
label "Collect_Spirit_of_Harmony_Total"
collect 1 Spirit of Harmony##76061 |or |usebank
|tip Spirit of Harmony#76061 can be created by combining 10 Motes of Harmony#89112.
|tip Mote of Harmony#89112 can drop from any mob in Pandaria at a low rate.
'|complete skill("Blacksmithing") >= 600
step
label "Begin_Profession_Leveling_Pandaria"
talk Saru Steelfury##3355
Train Zen Master Blacksmithing |skillmax Blacksmithing,600 |goto Orgrimmar/1 76.49,34.50
|tip You must be at least level 80.
step
talk Saru Steelfury##3355
Train Ghostly Skeleton Key |learn Ghostly Skeleton Key##122633 |goto Orgrimmar/1 76.49,34.50
'|complete skill("Blacksmithing") >= 525 |or
step
collect 45 Ghost Iron Bar##72096 |or
|tip Create it with Mining or purchase it from the auction house.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Ghost Iron"
'|complete skill("Blacksmithing") >= 525 |or
step
create 45 Ghostly Skeleton Key##122633,Blacksmithing,500 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
'|complete skill("Blacksmithing") >= 525 |or
step
talk Saru Steelfury##3355
Train Spiritguard Belt |learn Spiritguard Belt##122575 |goto Orgrimmar/1 76.49,34.50
'|complete skill("Blacksmithing") >= 540 |or
step
collect 35 Ghost Iron Bar##72096 |or
|tip Create it with Mining or purchase it from the auction house.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Ghost Iron"
'|complete skill("Blacksmithing") >= 540 |or
step
create 5 Spiritguard Belt##122575,Blacksmithing,525 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
'|complete skill("Blacksmithing") >= 540 |or
step
talk Saru Steelfury##3355
Train Ghost-Forged Shoulders |learn Ghost-Forged Shoulders##122577 |goto Orgrimmar/1 76.49,34.50
'|complete skill("Blacksmithing") >= 544 |or
step
collect 18 Ghost Iron Bar##72096 |or
|tip Create it with Mining or purchase it from the auction house.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Ghost Iron"
'|complete skill("Blacksmithing") >= 544 |or
step
create 2 Ghost-Forged Shoulders##122577,Blacksmithing,540 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
'|complete skill("Blacksmithing") >= 544 |or
step
talk Saru Steelfury##3355
Train Spiritguard Shield |learn Spiritguard Shield##122636 |goto Orgrimmar/1 76.49,34.50
'|complete skill("Blacksmithing") >= 559 |or
step
collect 27 Ghost Iron Bar##72096 |or
|tip Create it with Mining or purchase it from the auction house.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Ghost Iron"
'|complete skill("Blacksmithing") >= 559 |or
step
create 3 Spiritguard Shield##122636,Blacksmithing,544 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
'|complete skill("Blacksmithing") >= 559 |or
step
talk Saru Steelfury##3355
Train Lightsteel Breastplate |learn Lightsteel Breastplate##122586 |goto Orgrimmar/1 76.49,34.50
'|complete skill("Blacksmithing") >= 569 |or
step
collect 24 Ghost Iron Bar##72096 |or
|tip Create it with Mining or purchase it from the auction house.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Ghost Iron"
'|complete skill("Blacksmithing") >= 569 |or
step
create 2 Lightsteel Breastplate##122586,Blacksmithing,544 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
'|complete skill("Blacksmithing") >= 569 |or
step
talk Saru Steelfury##3355
Train Masterwork Lightsteel Shoulders |learn Masterwork Lightsteel Shoulders##122609 |goto Orgrimmar/1 76.49,34.50
'|complete skill("Blacksmithing") >= 575 |or
step
collect 14 Ghost Iron Bar##72096 |or
|tip Create it with Mining or purchase it from the auction house.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Ghost Iron"
'|complete skill("Blacksmithing") >= 575 |or
step
create 2 Masterwork Lightsteel Shoulders##122609,Blacksmithing,544 |goto Orgrimmar/1 76.49,34.50
|tip Stand next to an anvil inside the building.
'|complete skill("Blacksmithing") >= 575 |or
step
talk Jorunga Stonehoof##64058
|tip Inside the building.
Purchase and Learn Pattern: Contender's Revenant Belt |learn Contender's Revenant Belt##122623 |goto Shrine of Two Moons/1 26.27,45.1
|tip You can choose any of the PVP patterns you'd like.
'|complete skill("Blacksmithing") >= 600 |or'
step
collect 70 Ghost Iron Bar##72096 |or
|tip Create it with Mining or purchase it from the auction house.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Ghost Iron"
'|complete skill("Blacksmithing") >= 600 |or
step
create 10 Contender's Revenant Belt##122623,Blacksmithing,10 total |or |usebank
'|complete skill("Blacksmithing") >= 600 |or
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Enchanting (1-600)",{
expansion="mists",
mopready=true,
author="QuestCore",
condition_suggested=function() return skill('Enchanting') > 0 end,
description="This guide will walk you through leveling your Enchanting skill from 1-600.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/1 53.42,36.92 < 7 |walk
talk Godan##3345
|tip Inside the building.
Train Apprentice Enchanting |skillmax Enchanting,75 |goto Orgrimmar/1 53.33,49.20
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Classic-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Enchanting |confirm |next "Begin_Profession_Leveling_Classic" |or
|complete skill("Enchanting") >= 300 |next "Begin_Profession_Leveling_Classic" |only if default |or
|complete skill("Enchanting") >= 310 |next "Begin_Profession_Leveling_Classic" |only if BloodElf |or
stickystart "Collect_Soul_Dust_Total"
stickystart "Collect_Vision_Dust_Total"
stickystart "Collect_Dream_Dust_Total"
stickystart "Collect_Illusion_Dust_Total"
step
cast Disenchant##13262
collect 131 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|complete skill("Enchanting") >= 101 |only if default |or
|complete skill("Enchanting") >= 111 |only if BloodElf |or
step
label "Collect_Soul_Dust_Total"
cast Disenchant##13262 |notinsticky
collect 122 Soul Dust##11083 |or
|tip Disenchant level 26-35 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|complete skill("Enchanting") >= 185 |only if default |or
|complete skill("Enchanting") >= 195 |only if BloodElf |or
step
label "Collect_Vision_Dust_Total"
cast Disenchant##13262 |notinsticky
collect 237 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|complete skill("Enchanting") >= 250 |only if default |or
|complete skill("Enchanting") >= 260 |only if BloodElf |or
step
label "Collect_Dream_Dust_Total"
cast Disenchant##13262 |notinsticky
collect 330 Dream Dust##11176 |or
|tip Disenchant level 46-55 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|complete skill("Enchanting") >= 294 |only if default |or
|complete skill("Enchanting") >= 304 |only if BloodElf |or
step
label "Collect_Illusion_Dust_Total"
cast Disenchant##13262 |notinsticky
collect 82 Illusion Dust##16204 |or
|tip Disenchant level 56-60 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|complete skill("Enchanting") >= 300 |only if default |or
|complete skill("Enchanting") >= 310 |only if BloodElf |or
stickystart "Collect_Lesser_Astral_Essence_Total"
stickystart "Collect_Greater_Astral_Essence_Total"
stickystart "Collect_Lesser_Nether_Essence_Total"
stickystart "Collect_Greater_Mystic_Essence_Total"
stickystart "Collect_Greater_Eternal_Essence_Total"
step
cast Disenchant##13262
collect 12 Greater Magic Essence##10939 |or
|tip Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting or purchase them from the auction house. |notinsticky
|tip You can combine 3 Lesser Magic Essences to create 1 Greater Magic Essence.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|complete skill("Enchanting") >= 110 |only if default |or
|complete skill("Enchanting") >= 120 |only if BloodElf |or
step
label "Collect_Lesser_Astral_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 25 Lesser Astral Essence##10998 |or
|tip Disenchant level 21-25 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|complete skill("Enchanting") >= 135 |only if default |or
|complete skill("Enchanting") >= 145 |only if BloodElf |or
step
label "Collect_Greater_Astral_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 2 Greater Astral Essence##11082 |or
|tip Disenchant level 26-30 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|complete skill("Enchanting") >= 151 |only if default |or
|complete skill("Enchanting") >= 161 |only if BloodElf |or
step
label "Collect_Lesser_Nether_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 5 Lesser Nether Essence##11174 |or
|tip Disenchant level 28-40 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|complete skill("Enchanting") >= 230 |only if default |or
|complete skill("Enchanting") >= 240 |only if BloodElf |or
step
label "Collect_Greater_Mystic_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 2 Greater Mystic Essence##11135 |or
|tip Disenchant level 36-40 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|complete skill("Enchanting") >= 201 |only if default |or
|complete skill("Enchanting") >= 211 |only if BloodElf |or
step
label "Collect_Greater_Eternal_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 4 Greater Eternal Essence##16203 |or
|tip Disenchant level 51-56 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|complete skill("Enchanting") >= 300 |only if default |or
|complete skill("Enchanting") >= 310 |only if BloodElf |or
step
collect 40 Purple Lotus##8831 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|complete skill("Enchanting") >= 265 |only if default |or
|complete skill("Enchanting") >= 275 |only if BloodElf |or
step
label "Begin_Profession_Leveling_Classic"
talk Kithas##3346
|tip Inside the building.
buy Copper Rod##6217 |goto Orgrimmar/1 53.33,49.20 |complete skill("Enchanting") >= 25
buy Strange Dust##10940 |goto Orgrimmar/1 53.33,49.20 |complete skill("Enchanting") >= 25
buy Lesser Magic Essence##10938 |goto Orgrimmar/1 53.33,49.20 |complete skill("Enchanting") >= 25
|tip These are limited supply items that can also be purchased from the auction house.
step
create 1 Runed Copper Rod##7421,Enchanting,2 |only if default |or
create 1 Runed Copper Rod##7421,Enchanting,12 |only if BloodElf |or
|tip Save this, you will need it for future steps.
step
cast Disenchant##13262
collect 69 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 70 |only if default |or
|complete skill("Enchanting") >= 80 |only if BloodElf |or
step
create 69 Enchant Bracer - Minor Health##7418,Enchanting,70 |only if default |or
create 69 Enchant Bracer - Minor Health##7418,Enchanting,80 |only if BloodElf |or
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Godan##3345
|tip Inside the building.
Train Journeyman Enchanting |skillmax Enchanting,150 |goto Orgrimmar/1 53.33,49.20
step
talk Godan##3345
|tip Inside the building.
Train Enchant Bracer - Minor Stamina |learn Enchant Bracer - Minor Stamina##7457 |goto Orgrimmar/1 53.33,49.20
step
cast Disenchant##13262
collect 25 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 90 |only if default |or
|complete skill("Enchanting") >= 100 |only if BloodElf |or
step
create 25 Enchant Bracer - Minor Health##7418,Enchanting,90 |only if default |or
create 25 Enchant Bracer - Minor Health##7418,Enchanting,100 |only if BloodElf |or
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
|tip You may need to make more or less of these.
|tip Each additional Minor Health enchant requires 1 Strange Dust.
step
cast Disenchant##13262
collect 30 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 100 |only if default |or
|complete skill("Enchanting") >= 110 |or
step
create 10 Enchant Bracer - Minor Stamina##7457,Enchanting,100 |only if default |or
create 10 Enchant Bracer - Minor Stamina##7457,Enchanting,110 |only if BloodElf |or
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
step
talk Godan##3345
|tip Inside the building.
Train Greater Magic Wand |learn Greater Magic Wand##14807 |goto Orgrimmar/1 53.33,49.20
step
cast Disenchant##13262
collect 10 Greater Magic Essence##10939 |or
|tip Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting or purchase them from the auction house.
|tip You can combine 3 Lesser Magic Essences to create 1 Greater Magic Essence.
|complete skill("Enchanting") >= 110 |only if default |or
|complete skill("Enchanting") >= 120 |only if BloodElf |or
step
Enter the building |goto Orgrimmar/1 53.42,36.92 < 7 |walk
talk Kithas##3346
|tip Inside the building.
buy 10 Simple Wood##4470 |goto Orgrimmar/1 53.87,38.02 |or
|complete skill("Enchanting") >= 110 |only if default |or
|complete skill("Enchanting") >= 120 |only if BloodElf |or
step
create 10 Greater Magic Wand##14807,Enchanting,110 |only if default |or
create 10 Greater Magic Wand##14807,Enchanting,120 |only if BloodElf |or
step
talk Kulwia##12043
buy Formula: Enchant Cloak - Minor Agility##11039 |goto Stonetalon Mountains/0 45.39,59.33 |or 2
buy Formula: Enchant Bracer - Lesser Strength##11101 |goto Stonetalon Mountains/0 45.39,59.33 |or 2
|tip These are limited supply items that can also be purchased from the auction house.
|tip The respawn timer seems to be between 30-50 minutes.
|complete skill("Enchanting") >= 165 |only if default |or
|complete skill("Enchanting") >= 175 |only if BloodElf |or
step
use the Formula: Enchant Cloak - Minor Agility##11039
Train Enchant Cloak - Minor Agility |learn Enchant Cloak - Minor Agility##13419
step
cast Disenchant##13262
collect 25 Lesser Astral Essence##10998 |or
|tip Disenchant level 21-25 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip If Astral Essence is expensive you can also make Minor Impact enchants using Strange Dust and Small Glimmering Shards.
|complete skill("Enchanting") >= 135 |only if default |or
|complete skill("Enchanting") >= 145 |only if BloodElf |or
step
create 25 Enchant Cloak - Minor Agility##13419,Enchanting,135 |only if default |or
create 25 Enchant Cloak - Minor Agility##13419,Enchanting,145 |only if BloodElf |or
|tip Place then enchant on a cloak slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' cloak to make some profit while increasing your skill level.
|tip If Astral Essence is expensive you can also make Minor Impact enchants using Strange Dust and Small Glimmering Shards.
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Godan##3345
|tip Inside the building.
Train Expert Enchanting |skillmax Enchanting,225 |goto Orgrimmar/1 53.33,49.20
step
talk Godan##3345
|tip Inside the building.
Train Enchant Bracer - Lesser Stamina |learn Enchant Bracer - Lesser Stamina##13501 |goto Orgrimmar/1 53.33,49.20
step
cast Disenchant##13262
collect 40 Soul Dust##11083 |or
|tip Disenchant level 26-35 uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 155 |only if default |or
|complete skill("Enchanting") >= 165 |only if BloodElf |or
step
create 20 Enchant Bracer - Lesser Stamina##13501,Enchanting,155 |only if default |or
create 20 Enchant Bracer - Lesser Stamina##13501,Enchanting,165 |only if BloodElf |or
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
step
use the Formula: Enchant Bracer - Lesser Strength##11101
|tip You purchased this in a previous step.
Train Enchant Bracer - Lesser Strength |learn Enchant Bracer - Lesser Strength##13536
step
cast Disenchant##13262
collect 80 Soul Dust##11083 |or
|tip Disenchant level 26-35 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip You can also Enchant Bracer - Spirit for 1 Lesser Mystic Essence each from 165-185 if essence is cheaper than dust.
|complete skill("Enchanting") >= 185 |only if default |or
|complete skill("Enchanting") >= 195 |only if BloodElf |or
step
create 40 Enchant Bracer - Lesser Strength##13536,Enchanting,185 |only if default |or
create 40 Enchant Bracer - Lesser Strength##13536,Enchanting,195 |only if BloodElf |or
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
|tip You may need to make more or less of these.
|tip Each additional Lesser Strength enchant requires 2 Soul Dust.
|tip You can also Enchant Bracer - Spirit for 1 Lesser Mystic Essence each from 165-185 if essence is cheaper than dust.
step
cast Disenchant##13262
collect 15 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 200 |only if default |or
|complete skill("Enchanting") >= 210 |only if BloodElf |or
step
talk Godan##3345
|tip Inside the building.
Train Enchant Bracer - Strength |learn Enchant Bracer - Strength##13661 |goto Orgrimmar/1 53.33,49.20
step
create 15 Enchant Bracer - Strength##13661,Enchanting,200 |only if default |or
create 15 Enchant Bracer - Strength##13661,Enchanting,210 |only if BloodElf |or
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
step
cast Disenchant##13262
collect 25 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 220 |only if default |or
|complete skill("Enchanting") >= 230 |only if BloodElf |or
step
create 25 Enchant Bracer - Strength##13661,Enchanting,220 |only if default |or
create 25 Enchant Bracer - Strength##13661,Enchanting,230 |only if BloodElf |or
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
|tip You may need to make more or less of these.
|tip Each additional Strength enchant requires 1 Vision Dust.
step
cast Disenchant##13262
collect 15 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 225 |only if default |or
|complete skill("Enchanting") >= 235 |only if BloodElf |or
step
talk Godan##3345
|tip Inside the building.
Train Enchant Cloak - Greater Defense |learn Enchant Cloak - Greater Defense##13746 |goto Orgrimmar/1 53.33,49.20
step
create 5 Enchant Cloak - Greater Defense##13746,Enchanting,225 |only if default |or
create 5 Enchant Cloak - Greater Defense##13746,Enchanting,235 |only if BloodElf |or
|tip Place then enchant on a cloak slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' cloak to make some profit while increasing your skill level.
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Godan##3345
|tip Inside the building.
Train Artisan Enchanting |skillmax Enchanting,300 |goto Orgrimmar/1 53.33,49.20
step
talk Godan##3345
|tip Inside the building.
Train Enchant Gloves - Agility |learn Enchant Gloves - Agility##13815 |goto Orgrimmar/1 53.33,49.20
stickystart "Collect_Vision_Dust_230"
step
cast Disenchant##13262
collect 5 Lesser Nether Essence##11174 |or
|tip Disenchant level 28-40 uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 230 |only if default |or
|complete skill("Enchanting") >= 240 |only if BloodElf |or
step
label "Collect_Vision_Dust_230"
cast Disenchant##13262 |notinsticky
collect 5 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 230 |only if default |or
|complete skill("Enchanting") >= 240 |only if BloodElf |or
step
create 5 Enchant Gloves - Agility##13815,Enchanting,230 |only if default |or
create 5 Enchant Gloves - Agility##13815,Enchanting,240 |only if BloodElf |or
|tip Place then enchant on a cloak slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' gloves to make some profit while increasing your skill level.
step
cast Disenchant##13262
collect 25 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 235 |only if default |or
|complete skill("Enchanting") >= 245 |only if BloodElf |or
step
talk Godan##3345
|tip Inside the building.
Train Enchant Boots - Stamina |learn Enchant Boots - Stamina##13836 |goto Orgrimmar/1 53.33,49.20
step
create 5 Enchant Boots - Stamina##13836,Enchanting,235 |only if default |or
create 5 Enchant Boots - Stamina##13836,Enchanting,245 |only if BloodElf |or
|tip Place then enchant on a boot slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' boots to make some profit while increasing your skill level.
step
cast Disenchant##13262
collect 150 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 250 |only if default |or
|complete skill("Enchanting") >= 260 |only if BloodElf |or
step
talk Godan##3345
|tip Inside the building.
Train Enchant Chest - Superior Health |learn Enchant Chest - Superior Health##13858 |goto Orgrimmar/1 53.33,49.20
step
create 25 Enchant Chest - Superior Health##13858,Enchanting,250 |only if default |or
create 25 Enchant Chest - Superior Health##13858,Enchanting,260 |only if BloodElf |or
|tip Place then enchant on a chest slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' chest to make some profit while increasing your skill level.
|tip You may need to make more or less of these.
|tip Each additional Superior Health enchant requires 6 Vision Dust.
step
talk Kania##15419
|tip Upstairs inside the building.
buy Formula: Lesser Mana Oil##20754 |goto Silithus/0 55.59,37.21 |or
|tip Enchant Bracer - Greater Stamina is the best recipe to use to 265.
|tip It is a random world drop but may be available in the auction house.
|tip Each Greater Stamina enchant requires 5 Dream Dust.
|complete skill("Enchanting") >= 265 |only if default |or
|complete skill("Enchanting") >= 275 |only if BloodElf |or
step
use the Formula: Lesser Mana Oil##20754
Learn Lesser Mana Oil |learn Lesser Mana Oil##25127
|tip Enchant Bracer - Greater Stamina is the best recipe to use to 265.
|tip It is a random world drop but may be available in the auction house.
|tip Each Greater Stamina enchant requires 5 Dream Dust.
stickystart "Collect_Purple_Lotus_265"
step
cast Disenchant##13262
collect 60 Dream Dust##11176 |or
|tip Disenchant level 46-55 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip Enchant Bracer - Greater Stamina is the best recipe to use to 265.
|tip It is a random world drop but may be available in the auction house.
|tip Each Greater Stamina enchant requires 5 Dream Dust.
|complete skill("Enchanting") >= 265 |only if default |or
|complete skill("Enchanting") >= 275 |only if BloodElf |or
step
label "Collect_Purple_Lotus_265"
collect 40 Purple Lotus##8831 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip Enchant Bracer - Greater Stamina is the best recipe to use to 265. |notinsticky
|tip It is a random world drop but may be available in the auction house. |notinsticky
|tip Each Greater Stamina enchant requires 5 Dream Dust. |notinsticky
|complete skill("Enchanting") >= 265 |only if default |or
|complete skill("Enchanting") >= 275 |only if BloodElf |or
step
talk Daniel Bartlett##4561
buy 20 Crystal Vial##3371 |goto Undercity 64.05,37.37 |or
|tip Enchant Bracer - Greater Stamina is the best recipe to use to 265.
|tip It is a random world drop but may be available in the auction house.
|tip Each Greater Stamina enchant requires 5 Dream Dust.
|complete skill("Enchanting") >= 265 |only if default |or
|complete skill("Enchanting") >= 275 |only if BloodElf |or
step
create 20 Lesser Mana Oil##25127,Enchanting,265 |only if default |or
create 20 Lesser Mana Oil##25127,Enchanting,275 |only if BloodElf |or
|tip You may need to make more or less of these.
|tip Each additional Lesser Mana Oil requires 3 Dream Dust, 2 Purple Lotus, and 1 Crystal Vial.
|tip Enchant Bracer - Greater Stamina is the best recipe to use to 265.
|tip It is a random world drop but may be available in the auction house.
|tip Each Greater Stamina enchant requires 5 Dream Dust.
step
talk Daniel Bartlett##4561
buy Formula: Enchant Shield - Greater Stamina##16217 |goto Undercity/0 64.05,37.37 |or
|tip This is a limited supply item that cannot be purchased from the auction house.
|tip It binds on pickup, so you cannot mail it to another character.
|tip If he doesn't have it for sale, you will have to wait.
|complete skill("Enchanting") >= 290 |only if default |or
|complete skill("Enchanting") >= 300 |only if BloodElf |or
step
use the Formula: Enchant Shield - Greater Stamina##16217
Learn Enchant Shield - Greater Stamina |learn Enchant Shield - Greater Stamina##20017
step
cast Disenchant##13262
collect 270 Dream Dust##11176 |or
|tip Disenchant level 46-55 uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 290 |only if default |or
|complete skill("Enchanting") >= 300 |only if BloodElf |or
step
create 27 Enchant Shield - Greater Stamina##20017,Enchanting,290 |only if default |or
create 27 Enchant Shield - Greater Stamina##20017,Enchanting,300 |only if BloodElf |or
|tip Place then enchant on a shield slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' shield to make some profit while increasing your skill level.
|tip You may need to make more or less of these.
|tip Each additional Greater Stamina enchant requires 10 Dream Dust.
step
Follow the road |goto Moonglade 40.25,37.05 < 30 |only if walking
talk Lorelae Wintersong##12022
|tip Inside the building.
buy Formula: Enchant Cloak - Superior Defense##16224 |goto Moonglade 48.24,40.14 |or
|tip This is a limited supply item that can also be purchased from the auction house.
|tip The Superior Defense formula has a long respawn timer.
|complete skill("Enchanting") >= 300 |only if default |or
|complete skill("Enchanting") >= 310 |only if BloodElf |or
step
use the Formula: Enchant Cloak - Superior Defense##16224
Learn Enchant Cloak - Superior Defense |learn Enchant Cloak - Superior Defense##20015
step
cast Disenchant##13262
collect 72 Illusion Dust##16204 |or
|tip Disenchant level 56-60 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 299 |only if default |or
'|complete skill("Enchanting") >= 309 |only if BloodElf |or
step
create 9 Enchant Cloak - Superior Defense##20015,Enchanting,299 |only if default |or
create 9 Enchant Cloak - Superior Defense##20015,Enchanting,309 |only if BloodElf |or
|tip Place then enchant on a cloak slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' cloak to make some profit while increasing your skill level.
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to train Master professions in Outland.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Burning Crusade-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Enchanting |confirm |next "Begin_Profession_Leveling_Outland" |or
'|complete skill("Enchanting") >= 350 |or |next "Begin_Profession_Leveling_Outland"
stickystart "Collect_Arcane_Dust_Total"
stickystart "Collect_Nightmare_Vine_Total"
stickystart "Collect_Large_Prismatic_Shard_Total"
step
cast Disenchant##13262
collect 20 Lesser Planar Essence##22447 |or
|tip Disenchant Outland level 57-62 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
'|complete skill("Enchanting") >= 340 |or
|only if not BloodElf
step
label "Collect_Arcane_Dust_Total"
cast Disenchant##13262 |notinsticky
collect 338 Arcane Dust##22445 |only if default |or
collect 238 Arcane Dust##22445 |only if BloodElf |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|complete skill("Enchanting") >= 365 |only if default |or
|complete skill("Enchanting") >= 375 |only if BloodElf |or
step
label "Collect_Nightmare_Vine_Total"
collect 15 Nightmare Vine##22792 |only if default |or
collect 20 Nightmare Vine##22792 |only if BloodElf |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|complete skill("Enchanting") >= 350 |only if default |or
|complete skill("Enchanting") >= 360 |only if BloodElf |or
step
label "Collect_Large_Prismatic_Shard_Total"
cast Disenchant##13262 |notinsticky
collect 5 Large Prismatic Shard##22449 |only if default |or
collect 1 Large Prismatic Shard##22449 |only if BloodElf |or
|tip Disenchant Outland rare (blue) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|complete skill("Enchanting") >= 375 |only if default |or
|complete skill("Enchanting") >= 385 |only if BloodElf |or
step
label "Begin_Profession_Leveling_Outland"
talk Felannia##18753
|tip Upstairs in the middle of the tower.
Train Master Enchanting |skillmax Enchanting,375 |goto Hellfire Peninsula/0 52.34,35.98
step
talk Felannia##18753
|tip Upstairs in the middle of the tower.
Train Enchant Bracer - Assault |learn Enchant Bracer - Assault##34002 |goto Hellfire Peninsula/0 52.34,35.98
step
cast Disenchant##13262
collect 60 Arcane Dust##22445 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 310 |only if default |or
|complete skill("Enchanting") >= 320 |only if BloodElf |or
step
create 10 Enchant Bracer - Assault##34002,Enchanting,310 |only if default
create 10 Enchant Bracer - Assault##34002,Enchanting,320 |only if BloodElf
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
step
cast Disenchant##13262
collect 36 Arcane Dust##22445 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 316 |only if default |or
|complete skill("Enchanting") >= 326 |only if BloodElf |or
step
talk Felannia##18753
|tip Upstairs in the middle of the tower.
Train Enchant Bracer - Brawn |learn Enchant Bracer - Brawn##27899 |goto Hellfire Peninsula/0 52.34,35.98
step
create 6 Enchant Bracer - Brawn##27899,Enchanting,316 |only if default
create 6 Enchant Bracer - Brawn##27899,Enchanting,326 |only if BloodElf
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
|tip You may need to create more of these.
|tip Each additional Brawn enchant requires 6 Arcane Dust.
step
cast Disenchant##13262
collect 128 Arcane Dust##22445 |only if default |or
collect 88 Arcane Dust##22445 |only if BloodElf |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 330 |only if default |or
|complete skill("Enchanting") >= 335 |only if BloodElf |or
step
talk Felannia##18753
|tip Upstairs in the middle of the tower.
Train Enchant Gloves - Assault |learn Enchant Gloves - Assault##33996 |goto Hellfire Peninsula/0 52.34,35.98
step
create 16 Enchant Gloves - Assault##33996,Enchanting,330 |only if default
create 11 Enchant Gloves - Assault##33996,Enchanting,335 |only if BloodElf
|tip Place then enchant on a glove slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' glove to make some profit while increasing your skill level.
|tip You may need to create more or less of these.
|tip Each additional Assault enchant requires 8 Arcane Dust.
step
talk Madame Ruby##19663
buy Formula: Enchant Shield - Major Stamina##28282 |goto Shattrath City/0 63.28,71.05 |or 2
buy Formula: Superior Wizard Oil##22563 |goto Shattrath City/0 63.28,71.05 |or 2
|tip These are limited supply, so you may need to wait for them to respawn.
|complete skill("Enchanting") >= 350 |or
|only if not BloodElf
step
talk Madame Ruby##19663
buy Formula: Large Prismatic Shard##22565 |goto Shattrath City/0 63.28,71.05 |or 2
buy Formula: Superior Wizard Oil##22563 |goto Shattrath City/0 63.28,71.05 |or 2
|tip These are limited supply, so you may need to wait for them to respawn.
|complete skill("Enchanting") >= 360 |or
|only if BloodElf
step
use the Formula: Enchant Shield - Major Stamina##28282
|tip You purchased this in a previous step.
Learn Enchant Shield - Major Stamina |learn Enchant Shield - Major Stamina##34009
|only if not BloodElf
step
cast Disenchant##13262
collect 75 Arcane Dust##22445 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 335 |or
|only if not BloodElf
step
create 5 Enchant Shield - Major Stamina##34009,Enchanting,335
|tip Place then enchant on a shield slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' shield to make some profit while increasing your skill level.
|only if not BloodElf
step
talk Felannia##18753
|tip Upstairs in the middle of the tower.
Learn Enchant Shield - Resilience |learn Enchant Shield - Resilience##44383 |goto Hellfire Peninsula/0 52.34,35.98
|tip You can also keep making Major Stamina shield enchants for 15 Arcane Dust each.
|only if not BloodElf
stickystart "Collect_Large_Prismatic_Shards_340"
step
cast Disenchant##13262
collect 20 Lesser Planar Essence##22447 |or
|tip Disenchant Outland level 57-62 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip You can also keep making Major Stamina shield enchants for 15 Arcane Dust each.
|complete skill("Enchanting") >= 340 |or
|only if not BloodElf
step
label "Collect_Large_Prismatic_Shards_340"
cast Disenchant##13262
collect 5 Large Prismatic Shard##22449 |or
|tip Disenchant Outland rare (blue) items with Enchanting or purchase it from the auction house.
|tip You can also keep making Major Stamina shield enchants for 15 Arcane Dust each.
|complete skill("Enchanting") >= 340 |or
|only if not BloodElf
step
create 5 Enchant Shield - Resilience##44383,Enchanting,340
|tip Place then enchant on a shield slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' shield to make some profit while increasing your skill level.
|tip You can also keep making Major Stamina shield enchants for 15 Arcane Dust each.
|only if not BloodElf
step
talk Felannia##18753
|tip Upstairs in the middle of the tower.
Train Small Prismatic Shard |learn Small Prismatic Shard##42615 |goto Hellfire Peninsula/0 52.34,35.98
|only if BloodElf
step
use the Formula: Large Prismatic Shard##22565
|tip You purchased this in a previous step.
Learn Large Prismatic Shard |learn Large Prismatic Shard##28022
|only if BloodElf
step
cast Disenchant##13262
collect 1 Large Prismatic Shard##22449 |or
|tip Disenchant Outland rare (blue) items with Enchanting or purchase it from the auction house.
_Or_
collect 3 Small Prismatic Shard##22448 |or
|tip Disenchant Outland rare (blue) items with Enchanting or purchase them from the auction house.
|tip You will be converting these back and forth, so it doesn't matter which one you have.
|complete skill("Enchanting") >= 345 |or
|only if BloodElf
step
create 1 Small Prismatic Shard##42615,Enchanting,345
create 1 Large Prismatic Shard##28022,Enchanting,345
|tip Convert the shard(s) you have back and forth between Large and Small.
|tip This may take a while, but it will save you some gold.
|only if BloodElf
step
use Formula: Superior Wizard Oil##22563
|tip You purchased this in a previous step.
Train Superior Wizard Oil |learn Superior Wizard Oil##22522
stickystart "Collect_Nightmare_Vine_350"
step
cast Disenchant##13262
collect 45 Arcane Dust##22445 |only if default |or
collect 60 Arcane Dust##22445 |only if BloodElf |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 350 |only if default |or
|complete skill("Enchanting") >= 360 |only if BloodElf |or
step
label "Collect_Nightmare_Vine_350"
cast Disenchant##13262 |notinsticky
collect 15 Nightmare Vine##22792 |only if default |or
collect 20 Nightmare Vine##22792 |only if BloodElf |or
|tip Farm them with Herbalism or purchase them from the auction house.
|complete skill("Enchanting") >= 350 |only if default |or
|complete skill("Enchanting") >= 360 |only if BloodElf |or
step
talk Ernie Packwell##19194
buy 15 Crystal Vial##3371 |goto Shattrath City/0 65.97,64.78 |only if default |or
buy 20 Crystal Vial##3371 |goto Shattrath City/0 65.97,64.78 |only if BloodElf |or
|complete skill("Enchanting") >= 350 |only if default |or
|complete skill("Enchanting") >= 360 |only if BloodElf |or
step
create 15 Superior Wizard Oil##22522,Enchanting,350 |only if default
create 20 Superior Wizard Oil##22522,Enchanting,360 |only if BloodElf
|tip You may need to create more or less of these.
|tip Each additional Superior Wizard Oil requires 3 Arcane Dust, 1 Nightmare Vine, and 1 Crystal Vial.
step
Reach Level 65 |ding 65
|tip You must be at least level 65 to train Grand Master professions in Northrend.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Lich King-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Enchanting |confirm |next "Begin_Profession_Leveling_Northrend" |or
'|complete skill("Enchanting") >= 450 |or |next "Begin_Profession_Leveling_Northrend"
stickystart "Collect_Greater_Planar_Essence_Total"
stickystart "Collect_Greater_Cosmic_Essence_Total"
stickystart "Collect_Dream_Shard_Total"
stickystart "Collect_Crystallized_Water_Total"
stickystart "Collect_Eternal_Earth_Total"
step
cast Disenchant##13262 |notinsticky
collect 717 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|complete skill("Enchanting") >= 435 |only if default |or
|complete skill("Enchanting") >= 445 |only if BloodElf |or
step
label "Collect_Greater_Planar_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 2 Greater Planar Essence##22446 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip You can combine 3 Lesser Planar Essence into 1 Greater Planar Essence. |notinsticky
|complete skill("Enchanting") >= 376 |only if default |or
|complete skill("Enchanting") >= 386 |only if BloodElf |or
step
label "Collect_Greater_Cosmic_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 15 Greater Cosmic Essence##34055 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip You can combine 3 Lesser Cosmic Essence into 1 Greater Cosmic Essence. |notinsticky
|complete skill("Enchanting") >= 435 |only if default |or
|complete skill("Enchanting") >= 445 |only if BloodElf |or
step
label "Collect_Dream_Shard_Total"
cast Disenchant##13262 |notinsticky
collect 28 Dream Shard##34052 |or
|tip Disenchant Northrend rare (blue) items with Enchanting or purchase them from the auction house. |notinsticky
|tip You can also use Create Dream Shard with Enchanting to turn 3 Small Dream Shards into one Dream Shard. |notinsticky
|complete skill("Enchanting") >= 445 |only if default |or
|complete skill("Enchanting") >= 455 |only if BloodElf |or
step
label "Collect_Crystallized_Water_Total"
kill Boiling Spirit##25419+ |notinsticky
collect 10 Crystallized Water##37705 |goto Borean Tundra/0 46.94,13.40 |or
|tip Farm them from water elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide. |notinsticky
|complete skill("Enchanting") >= 395 |only if default |or
|complete skill("Enchanting") >= 405 |only if BloodElf |or
step
label "Collect_Eternal_Earth_Total"
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
use Crystallized Earth##37701 |notinsticky
|tip Combine 10 Crystallized Earth into 1 Eternal Earth. |notinsticky
kill Lifeblood Elemental##29124+ |notinsticky
collect 134 Eternal Earth##35624 |or
|tip Farm them from earth elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Mining nodes with Northrend Mining guides. |notinsticky
|complete skill("Enchanting") >= 445 |only if default |or
|complete skill("Enchanting") >= 455 |only if BloodElf |or
step
label "Begin_Profession_Leveling_Northrend"
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Grand Master Enchanting |skillmax Enchanting,450 |goto Dalaran/1 39.05,39.79
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Enchant Cloak - Speed |learn Enchant Cloak - Speed##60609 |goto Dalaran/1 39.05,39.79
step
cast Disenchant##13262
collect 60 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 360 |only if default |or
|complete skill("Enchanting") >= 370 |only if BloodElf |or
step
create 10 Enchant Cloak - Speed##60609,Enchanting,360 |only if default
create 10 Enchant Cloak - Speed##60609,Enchanting,370 |only if BloodElf
step
cast Disenchant##13262
collect 108 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|complete skill("Enchanting") >= 375 |only if default |or
|complete skill("Enchanting") >= 385 |only if BloodElf |or
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Enchant Bracers - Striking |learn Enchant Bracers - Striking##60616 |goto Dalaran/1 39.05,39.79
step
create 18 Enchant Bracers - Striking##60616,Enchanting,375 |only if default
create 18 Enchant Bracers - Striking##60616,Enchanting,385 |only if BloodElf
|tip You may need to create more or less of these.
|tip Each additional Striking enchant requires 6 Infinite Dust.
step
cast Disenchant##13262
collect 36 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|complete skill("Enchanting") >= 380 |only if default |or
|complete skill("Enchanting") >= 390 |only if BloodElf |or
step
create 6 Enchant Bracers - Striking##60616,Enchanting,380 |only if default
create 6 Enchant Bracers - Striking##60616,Enchanting,390 |only if BloodElf
|tip You may need to create more or less of these.
|tip Each additional Striking enchant requires 6 Infinite Dust.
step
cast Disenchant##13262
collect 50 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 385 |only if default |or
|complete skill("Enchanting") >= 395 |only if BloodElf |or
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Enchant Bracers - Exceptional Intellect |learn Enchant Bracers - Exceptional Intellect##44555 |goto Dalaran/1 39.05,39.79
step
create 5 Enchant Bracers - Exceptional Intellect##44555,Enchanting,385 |only if default
create 5 Enchant Bracers - Exceptional Intellect##44555,Enchanting,395 |only if BloodElf
stickystart "Collect_Infinite_Dust_395"
step
kill Boiling Spirit##25419+
collect 10 Crystallized Water##37705 |goto Borean Tundra/0 46.94,13.40 |or
|tip Farm them from water elementals or purchase them from the auction house.
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide.
|complete skill("Enchanting") >= 395 |only if default |or
|complete skill("Enchanting") >= 405 |only if BloodElf |or
step
label "Collect_Infinite_Dust_395"
cast Disenchant##13262
collect 80 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 395 |only if default |or
|complete skill("Enchanting") >= 405 |only if BloodElf |or
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Enchant Boots - Icewalker |learn Enchant Boots - Icewalker##60623 |goto Dalaran/1 39.05,39.79
step
create 10 Enchant Boots - Icewalker##60623,Enchanting,395 |only if default
create 10 Enchant Boots - Icewalker##60623,Enchanting,405 |only if BloodElf
step
cast Disenchant##13262
collect 144 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|complete skill("Enchanting") >= 410 |only if default |or
|complete skill("Enchanting") >= 420 |only if BloodElf |or
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Enchant Cloak - Superior Agility |learn Enchant Cloak - Superior Agility##44500 |goto Dalaran/1 39.05,39.79
step
create 16 Enchant Cloak - Superior Agility##44500,Enchanting,410 |only if default
create 16 Enchant Cloak - Superior Agility##44500,Enchanting,420 |only if BloodElf
|tip You may need to create more or less of these.
|tip Each additional Superior Agility enchant requires 9 Infinite Dust.
step
cast Disenchant##13262
collect 60 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 415 |only if default |or
|complete skill("Enchanting") >= 425 |only if BloodElf |or
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Enchant Gloves - Expertise |learn Enchant Gloves - Expertise##44484 |goto Dalaran/1 39.05,39.79
step
create 5 Enchant Gloves - Expertise##44484,Enchanting,415 |only if default
create 5 Enchant Gloves - Expertise##44484,Enchanting,425 |only if BloodElf
stickystart "Collect_Infinite_Dust_420"
step
cast Disenchant##13262
collect 5 Greater Cosmic Essence##34055 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
|tip You can combine 3 Lesser Cosmic Essence into 1 Greater Cosmic Essence.
|complete skill("Enchanting") >= 420 |only if default |or
|complete skill("Enchanting") >= 430 |only if BloodElf |or
step
label "Collect_Infinite_Dust_420"
cast Disenchant##13262
collect 50 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 420 |only if default |or
|complete skill("Enchanting") >= 430 |only if BloodElf |or
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Enchant Boots - Greater Spirit |learn Enchant Boots - Greater Spirit##44508 |goto Dalaran/1 39.05,39.79
step
create 5 Enchant Boots - Greater Spirit##44508,Enchanting,420 |only if default
create 5 Enchant Boots - Greater Spirit##44508,Enchanting,430 |only if BloodElf
stickystart "Collect_Infinite_Dust_425"
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
use Crystallized Earth##37701
|tip Combine 10 Crystallized Earth into 1 Eternal Earth.
kill Lifeblood Elemental##29124+
collect 30 Eternal Earth##35624 |or
|tip Farm them from earth elementals or purchase them from the auction house.
|tip You can also farm them from Mining nodes with Northrend Mining guides.
|complete skill("Enchanting") >= 425 |only if default |or
|complete skill("Enchanting") >= 435 |only if BloodElf |or
step
label "Collect_Infinite_Dust_425"
cast Disenchant##13262
collect 30 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
|complete skill("Enchanting") >= 425 |only if default |or
|complete skill("Enchanting") >= 435 |only if BloodElf |or
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Enchant Shield - Dodge |learn Enchant Shield - Dodge##44489 |goto Dalaran/1 39.05,39.79
step
create 5 Enchant Shield - Dodge##44489,Enchanting,425 |only if default
create 5 Enchant Shield - Dodge##44489,Enchanting,435 |only if BloodElf
stickystart "Collect_Infinite_Dust_430"
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
use Crystallized Earth##37701
|tip Combine 10 Crystallized Earth into 1 Eternal Earth.
kill Lifeblood Elemental##29124+
collect 24 Eternal Earth##35624 |or
|tip Farm them from earth elementals or purchase them from the auction house.
|tip You can also farm them from Mining nodes with Northrend Mining guides.
|complete skill("Enchanting") >= 430 |only if default |or
|complete skill("Enchanting") >= 440 |only if BloodElf |or
step
label "Collect_Infinite_Dust_430"
cast Disenchant##13262 |notinsticky
collect 24 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|complete skill("Enchanting") >= 430 |only if default |or
|complete skill("Enchanting") >= 440 |only if BloodElf |or
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Enchant Shield - Dodge |learn Enchant Shield - Dodge##44489 |goto Dalaran/1 39.05,39.79
step
create 4 Enchant Shield - Dodge##44489,Enchanting,430 |only if default
create 4 Enchant Shield - Dodge##44489,Enchanting,440 |only if BloodElf
stickystart "Collect_Infinite_Dust_435"
stickystart "Collect_Dream_Shard_435"
step
cast Disenchant##13262
collect 10 Greater Cosmic Essence##34055 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
|tip You can combine 3 Lesser Cosmic Essence into 1 Greater Cosmic Essence.
|complete skill("Enchanting") >= 435 |only if default |or
|complete skill("Enchanting") >= 445 |only if BloodElf |or
step
label "Collect_Infinite_Dust_435"
cast Disenchant##13262 |notinsticky
collect 75 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|complete skill("Enchanting") >= 435 |only if default |or
|complete skill("Enchanting") >= 445 |only if BloodElf |or
step
label "Collect_Dream_Shard_435"
cast Disenchant##13262 |notinsticky
collect 4 Dream Shard##34052 |or
|tip Disenchant Northrend rare (blue) items with Enchanting or purchase them from the auction house. |notinsticky
|tip You can also use Create Dream Shard with Enchanting to turn 3 Small Dream Shards into one Dream Shard. |notinsticky
|complete skill("Enchanting") >= 435 |only if default |or
|complete skill("Enchanting") >= 445 |only if BloodElf |or
step
talk Vanessa Sellers##32514
|tip Inside the building.
buy 1 Formula: Enchant Cloak - Mighty Stamina##44471 |goto Dalaran/1 38.41,41.03 |or
|tip This formula costs 4 Dream Shards that you collected.
|complete skill("Enchanting") >= 435 |only if default |or
|complete skill("Enchanting") >= 445 |only if BloodElf |or
step
use the Formula: Enchant Cloak - Mighty Stamina##44471
Train Enchant Cloak - Mighty Stamina |learn Enchant Cloak - Mighty Stamina##47672 |goto Dalaran/1 39.05,39.79
step
create 5 Enchant Cloak - Mighty Stamina##47672,Enchanting,435 |only if default
create 5 Enchant Cloak - Mighty Stamina##47672,Enchanting,445 |only if BloodElf
stickystart "Collect_Dream_Shard_445"
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
use Crystallized Earth##37701
|tip Combine 10 Crystallized Earth into 1 Eternal Earth.
kill Lifeblood Elemental##29124+
collect 80 Eternal Earth##35624 |or
|tip Farm them from earth elementals or purchase them from the auction house.
|tip You can also farm them from Mining nodes with Northrend Mining guides.
|complete skill("Enchanting") >= 445 |only if default |or
|complete skill("Enchanting") >= 455 |only if BloodElf |or
step
label "Collect_Dream_Shard_445"
cast Disenchant##13262 |notinsticky
collect 24 Dream Shard##34052 |or
|tip Disenchant Northrend rare (blue) items with Enchanting or purchase them from the auction house. |notinsticky
|tip You can also use Create Dream Shard with Enchanting to turn 3 Small Dream Shards into one Dream Shard. |notinsticky
|complete skill("Enchanting") >= 445 |only if default |or
|complete skill("Enchanting") >= 455 |only if BloodElf |or
step
talk Vanessa Sellers##32514
|tip Inside the building.
buy 1 Formula: Enchant Gloves - Armsman##44485 |goto Dalaran/1 38.41,41.03 |or
|tip This formula costs 4 Dream Shards that you collected.
|complete skill("Enchanting") >= 445 |only if default |or
|complete skill("Enchanting") >= 455 |only if BloodElf |or
step
use the Formula: Enchant Gloves - Armsman##44485
Train Enchant Gloves - Armsman |learn Enchant Gloves - Armsman##44625 |goto Dalaran/1 39.05,39.79
step
create 10 Enchant Gloves - Armsman##44625,Enchanting,445 |only if default
create 10 Enchant Gloves - Armsman##44625,Enchanting,455 |only if BloodElf
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Abyssal Shatter |learn Abyssal Shatter##69412 |goto Dalaran/1 39.05,39.79
step
create 1 Abyssal Shatter##69412,Enchanting,450 |only if default
create 1 Abyssal Shatter##69412,Enchanting,460 |only if BloodElf
|tip You can create these until you reach max skill.
|tip Typically you can make more from dust and essence than the Abyss Crystals used.
|tip Each Abyssal Shatter requires 1 Abyss Crystal.
|tip You can also Enchant Boots - Greater Assault for 4 Dream Shards and 4 Greater Cosmic Essence each.
|tip The formula for this is sold by Vanessa Sellers in Dalaran.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Lich King-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Enchanting |confirm |next "Begin_Enchanting_Leveling_Cataclysm" |or
'|complete skill("Enchanting") >= 525 |or |next "Begin_Enchanting_Leveling_Cataclysm"
stickystart "Collect_Greater_Celestial_Essence_451"
stickystart "Collect_Hypnotic_Dust_451"
stickystart "Collect_Lesser_Celestial_426"
step
label "Collect_Greater_Celestial_Essence_451"
cast Disenchant##13262 |notinsticky
collect 135 Greater Celestial Essence##52719 |or
|tip Disenchant Cataclysm uncommon (green) items or purchase them from the auction house. |notinsticky
|tip You can combine 3 Lesser Celestial Essence into 1 Greater Celestial Essence. |notinsticky
|complete skill("Enchanting") >= 520 |or
step
label "Collect_Hypnotic_Dust_451"
cast Disenchant##13262 |notinsticky
collect 625 Hypnotic Dust##52555 |or
|tip Disenchant Cataclysm uncommon (green) items or purchase them from the auction house. |notinsticky
|complete skill("Enchanting") >= 461 |or
step
label "Collect_Lesser_Celestial_426"
cast Disenchant##13262 |notinsticky
collect 5 Lesser Celestial Essence##52718 |or
|tip Disenchant Cataclysm uncommon (green) items or purchase them from the auction house. |notinsticky
|complete skill("Enchanting") >= 470 |or
step
label "Begin_Enchanting_Leveling_Cataclysm"
talk Godan##3345
|tip Inside the building.
Train Illustrious Grand Master Enchanting |skillmax Enchanting,525 |goto Orgrimmar/1 53.33,49.20
|tip You must be at least level 75.
step
talk Kithas##3346
|tip Inside the building.
buy 75 Enchanting Vellum##38682 |goto Orgrimmar/1 53.33,49.20
|only if skill("Enchanting") < 525
step
collect 10 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 455
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Boots: Earthen Vitality>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
|tip You may neeed to make more than 4 as this recipe is yellow.
Reach 455 Enchanting |skill Enchanting,455
step
talk Godan##3345
|tip Inside the building.
learn Enchant Cloak: Lesser Power##74192 |goto Orgrimmar/1 53.33,49.20
step
collect 15 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 460
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Cloak: Lesser Power>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
|tip You may neeed to make more than 5 as this recipe is yellow.
Reach 460 Enchanting |skill Enchanting,460
step
talk Godan##3345
|tip Inside the building.
learn Enchant Gloves: Haste##74198 |goto Orgrimmar/1 53.33,49.20
stickystart "Hypnotic_Dust_465"
step
collect 5 Lesser Celestial Essence##52718
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 465
step
label "Hypnotic_Dust_465"
collect 20 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 465
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Gloves: Haste>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 465 Enchanting |skill Enchanting,465
step
talk Godan##3345
|tip Inside the building.
learn Enchant Cloak: Intellect##74202 |goto Orgrimmar/1 53.33,49.20
step
collect 60 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 475
step
Open Your Enchanting Crafting Panel:
_<Create 10 Enchant Cloak: Intellect>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 475 Enchanting |skill Enchanting,475
step
talk Godan##3345
|tip Inside the building.
learn Enchant Gloves: Exceptional Strength##74212 |goto Orgrimmar/1 53.33,49.20
stickystart "Hypnotic_Dust_480"
step
collect 10 Greater Celestial Essence##52719
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can combine 3 Lesser Celestial Essence to create a Greater Celestial Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 480
step
label "Hypnotic_Dust_480"
collect 15 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 480
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Gloves: Exceptional Strength>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 480 Enchanting |skill Enchanting,480
step
talk Godan##3345
|tip Inside the building.
learn Enchant Boots: Major Agility##74213 |goto Orgrimmar/1 53.33,49.20
stickystart "Hypnotic_Dust_485"
step
collect 10 Greater Celestial Essence##52719
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can combine 3 Lesser Celestial Essence to create a Greater Celestial Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 485
step
label "Hypnotic_Dust_485"
collect 20 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 485
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Boots: Major Agility>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 485 Enchanting |skill Enchanting,485
step
talk Godan##3345
|tip Inside the building.
learn Enchant Gloves: Greater Expertise##74220 |goto Orgrimmar/1 53.33,49.20
stickystart "Hypnotic_Dust_490"
step
collect 10 Greater Celestial Essence##52719
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can combine 3 Lesser Celestial Essence to create a Greater Celestial Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 490
step
label "Hypnotic_Dust_490"
collect 25 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 490
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Gloves: Greater Expertise>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 490 Enchanting |skill Enchanting,490
step
talk Godan##3345
|tip Inside the building.
learn Enchant Shield: Mastery##74226 |goto Orgrimmar/1 53.33,49.20
step
collect 60 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 495
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Shield: Mastery>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 495 Enchanting |skill Enchanting,495
step
talk Godan##3345
|tip Inside the building.
learn Enchant Bracer: Precision##74232 |goto Orgrimmar/1 53.33,49.20
stickystart "Hypnotic_Dust_505"
step
collect 10 Greater Celestial Essence##52719
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can combine 3 Lesser Celestial Essence to create a Greater Celestial Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 505
step
label "Hypnotic_Dust_505"
collect 120 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 505
step
Open Your Enchanting Crafting Panel:
_<Create 10 Enchant Bracers: Precision>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 505 Enchanting |skill Enchanting,505
step
talk Godan##3345
|tip Inside the building.
learn Enchant Shield: Superior Intellect##74235 |goto Orgrimmar/1 53.33,49.20
stickystart "Hypnotic_Dust_510"
step
collect 20 Greater Celestial Essence##52719
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can combine 3 Lesser Celestial Essence to create a Greater Celestial Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 510
step
label "Hypnotic_Dust_510"
collect 30 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 510
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Shield: Superior Intellect>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 510 Enchanting |skill Enchanting,510
step
talk Godan##3345
|tip Inside the building.
learn Enchant Bracers: Exceptional Spirit##74237 |goto Orgrimmar/1 53.33,49.20
stickystart "Hypnotic_Dust_515"
step
collect 15 Greater Celestial Essence##52719
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can combine 3 Lesser Celestial Essence to create a Greater Celestial Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 515
step
label "Hypnotic_Dust_515"
collect 45 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 515
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Bracers: Exceptional Spirit>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 515 Enchanting |skill Enchanting,515
step
talk Godan##3345
|tip Inside the building.
learn Enchant Boots: Mastery##74238 |goto Orgrimmar/1 53.33,49.20
stickystart "Hypnotic_Dust_525"
step
collect 51 Greater Celestial Essence##52719
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can combine 3 Lesser Celestial Essence to create a Greater Celestial Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 525
step
label "Hypnotic_Dust_525"
collect 170 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 525
step
Open Your Enchanting Crafting Panel:
_<Create 17 Enchant Boots: Mastery>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
|tip This recipe will be green halfway through, so you may need to create more.
Reach 525 Enchanting |skill Enchanting,525
step
Reach Level 80 |ding 80
|tip You must be at least level 80 to train Zen Master professions.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Pandaria-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Enchanting |confirm |next "Begin_Profession_Leveling_Pandaria" |or
|complete skill("Enchanting") >= 500 |or |next "Begin_Profession_Leveling_Pandaria"
stickystart "Collect_Mysterious_Essence_Total"
step
collect 116 Spirit Dust##74249 |or
|tip Create it with Disenchanting or purchase it from the auction house.
|complete skill("Enchanting") >= 600 |or
step
label "Collect_Mysterious_Essence_Total"
collect 30 Mysterious Essence##74250 |or
|tip Create it with Enchanting or purchase it from the auction house. |notinsticky
|tip It requires 5 Spirit Dust to craft. |notinsticky
|complete skill("Enchanting") >= 600 |or
step
label "Begin_Profession_Leveling_Pandaria"
Enter the building |goto Orgrimmar/1 53.42,36.92 < 7 |walk
talk Godan##3345
|tip Inside the building.
Train Zen Master Enchanting |skillmax Enchanting,600 |goto Orgrimmar/1 53.42,36.92
step
talk Godan##3345
|tip Inside the building.
Train Enchant Bracer - Mastery |learn Enchant Bracer - Mastery##141868 |goto Orgrimmar/1 53.42,36.92
step
collect 52 Spirit Dust##74249 |or
|tip Create it with Disenchanting or purchase it from the auction house.
|complete skill("Enchanting") >= 525 |or
step
create 13 Enchant Bracer - Mastery##141868,Enchanting,525
|complete skill("Enchanting") >= 525
step
talk Godan##3345
|tip Inside the building.
Train Enchant Gloves - Greater Haste |learn Enchant Gloves - Greater Haste##104416 |goto Orgrimmar/1 53.42,36.92
step
collect 48 Spirit Dust##74249 |or
|tip Create it with Disenchanting or purchase it from the auction house.
|complete skill("Enchanting") >= 550 |or
step
create 12 Enchant Gloves - Greater Haste##104416,Enchanting,550
|complete skill("Enchanting") >= 550
step
talk Godan##3345
|tip Inside the building.
Train Enchant Ring - Greater Strength |learn Enchant Ring - Greater Strength##103465 |goto Orgrimmar/1 53.42,36.92
step
collect 4 Spirit Dust##74249 |or
|tip Create it with Disenchanting or purchase it from the auction house.
|complete skill("Enchanting") >= 556 |or
step
create 2 Enchant Ring - Greater Strength##103465,Enchanting,556
|complete skill("Enchanting") >= 556
step
talk Godan##3345
|tip Inside the building.
Train Enchant Gloves - Superior Expertise |learn Enchant Gloves - Superior Expertise##104417 |goto Orgrimmar/1 53.42,36.92
step
collect 12 Mysterious Essence##74250 |or
|tip Create it with Enchanting or purchase it from the auction house. |notinsticky
|tip It requires 5 Spirit Dust to craft. |notinsticky
|complete skill("Enchanting") >= 575 |or
step
create 6 Enchant Gloves - Superior Expertise##104417,Enchanting,575
|complete skill("Enchanting") >= 575
step
talk Godan##3345
|tip Inside the building.
Train Enchant Chest - Glorious Stats |learn Enchant Chest - Glorious Stats##104395 |goto Orgrimmar/1 53.42,36.92
step
collect 18 Mysterious Essence##74250 |or
|tip Create it with Enchanting or purchase it from the auction house. |notinsticky
|tip It requires 5 Spirit Dust to craft. |notinsticky
|complete skill("Enchanting") >= 600 |or
step
collect 12 Spirit Dust##74249 |or
|tip Create it with Disenchanting or purchase it from the auction house.
|complete skill("Enchanting") >= 600 |or
step
create 6 Enchant Chest - Glorious Stats##104395,Enchanting,600
Reach 600 Enchanting |skill Enchanting,600
]])
QuestCore:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Engineering (1-600)",{
expansion="mists",
mopready=true,
author="QuestCore",
condition_suggested=function() return skill("Engineering") > 0 end,
description="This guide will walk you through leveling your Engineering skill from 1-600.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/1 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Apprentice Engineering |skillmax Engineering,75 |goto Orgrimmar/1 56.81,56.47
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Engineering |confirm |next "Begin_Profession_Leveling_Classic" |or
'|complete skill("Engineering") >= 375 |or |next "Begin_Profession_Leveling_Classic"
stickystart "Collect_Coarse_Stone_Total"
stickystart "Collect_Heavy_Stone_Total"
stickystart "Collect_Dense_Stone_Total"
stickystart "Collect_Moss_Agate_Total"
stickystart "Collect_Medium_Leather_Total"
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 60 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 30 |or
step
label "Collect_Coarse_Stone_Total"
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Tin Vein##3764+ |notinsticky
|tip They look like gray rocks with silver mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 60 Coarse Stone##2836 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 65 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 95 |or
step
label "Collect_Heavy_Stone_Total"
map Feralas/0
path	follow loose; loop on; ants curved; dist 20
path	 84.9,39.9	81.8,39.3	79.2,37.2
path	75.3,35.5	71.5,34.7	68.4,39.7
path	68.1,46.1	70.0,48.6	68.7,52.0
path	65.5,52.5	63.8,54.9	61.5,50.5
path	58.2,51.4	53.8,49.4	48.6,44.0
path	48.6,38.8	49.7,34.9	51.6,33.8
path	49.5,26.1	51.7,25.5	51.3,19.0
path	52.7,16.5	54.9,8.1	53.4,5.5
path	51.6,4.8	48.5,11.5	46.1,7.2
path	42.0,8.2	40.0,7.7	37.1,12.1
path	38.2,18.6	37.0,25.6	41.2,25.5
path	41.5,17.2	45.2,21.1	46.0,15.7
path	47.7,22.1	46.2,26.6	47.2,34.7
path	46.7,44.9	50.3,52.7	54.8,53.9
path	55.0,59.8	54.6,64.0	52.9,66.2
path	53.6,73.7	55.5,75.7	61.5,75.0
path	61.6,68.9	64.0,68.9	61.9,66.2
path	61.0,59.1	64.1,58.7	63.7,61.0
path	65.8,63.5	68.1,61.5	71.6,65.1
path	77.2,62.1	75.9,53.5	76.2,49.6
path	79.5,46.2	84.0,45.6	82.5,43.1
click Iron Deposit##1735+ |notinsticky
|tip They look like dense gray rocks with small silver-green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 30 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 125 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 146 |or
step
label "Collect_Solid_Stone_Total"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 120 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 195 |or
step
label "Collect_Dense_Stone_Total"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 70 Dense Stone##12365 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 260 |or
step
label "Collect_Moss_Agate_Total"
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Tin Vein##3764+ |notinsticky
|tip They look like gray rocks with silver mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 10 Moss Agate##1206 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 65 Mining skill to gather these.
|tip They can be Prospected from Tin Ore with Jewelcrafting. |notinsticky
'|complete skill("Engineering") >= 135 |or
step
label "Collect_Medium_Leather_Total"
Kill Yeti enemies around this area |notinsticky
|tip Skin their corpses. |notinsticky
|tip You can find more inside the cave. |notinsticky
collect 15 Medium Leather##2319 |goto Hillsbrad Foothills 46.64,54.41 |or
|tip You will need level 155 Skinning to collect these. |notinsticky
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 160 |or
stickystart "Collect_Silver_Bar_Total"
stickystart "Collect_Bronze_Bar_Total"
stickystart "Collect_Steel_Bar_Total"
stickystart "Collect_Mithril_Bar_Total"
stickystart "Collect_Thorium_Bar_Total"
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 66 Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 66 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 75 |or
step
label "Collect_Silver_Bar_Total"
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Silver Vein##1733+ |notinsticky
|tip They look like gray rocks with silver-green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 5 Silver Ore##2775 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 5 Silver Bar##2842 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 75 Mining skill to gather these. |notinsticky
'|complete skill("Engineering") >= 105 |or
step
label "Collect_Bronze_Bar_Total"
collect 120 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip Smelting 2 Bronze Bars requires 1 Copper Bar and 1 Tin Bar. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 175 |or
step
label "Collect_Steel_Bar_Total"
map Feralas/0
path	follow loose; loop on; ants curved; dist 20
path	 84.9,39.9	81.8,39.3	79.2,37.2
path	75.3,35.5	71.5,34.7	68.4,39.7
path	68.1,46.1	70.0,48.6	68.7,52.0
path	65.5,52.5	63.8,54.9	61.5,50.5
path	58.2,51.4	53.8,49.4	48.6,44.0
path	48.6,38.8	49.7,34.9	51.6,33.8
path	49.5,26.1	51.7,25.5	51.3,19.0
path	52.7,16.5	54.9,8.1	53.4,5.5
path	51.6,4.8	48.5,11.5	46.1,7.2
path	42.0,8.2	40.0,7.7	37.1,12.1
path	38.2,18.6	37.0,25.6	41.2,25.5
path	41.5,17.2	45.2,21.1	46.0,15.7
path	47.7,22.1	46.2,26.6	47.2,34.7
path	46.7,44.9	50.3,52.7	54.8,53.9
path	55.0,59.8	54.6,64.0	52.9,66.2
path	53.6,73.7	55.5,75.7	61.5,75.0
path	61.6,68.9	64.0,68.9	61.9,66.2
path	61.0,59.1	64.1,58.7	63.7,61.0
path	65.8,63.5	68.1,61.5	71.6,65.1
path	77.2,62.1	75.9,53.5	76.2,49.6
path	79.5,46.2	84.0,45.6	82.5,43.1
click Iron Deposit##1735+ |notinsticky
|tip They look like dense gray rocks with small silver-green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 4 Iron Ore##2772 |n |notinsticky
|tip Buy 4 Coal from the Trade Supplier near the forge. |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 4 Steel Bar##3859 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 125 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 300 or itemcount(10498) >= 1 |or
step
label "Collect_Mithril_Bar_Total"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 161 Mithril Ore##3858 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 161 Mithril Bar##3860 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 238 |or
step
label "Collect_Thorium_Bar_Total"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 135 Thorium Ore##10620 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 135 Thorium Bar##12359 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 300 |or
stickystart "Collect_Wool_Cloth_Total"
stickystart "Collect_Mageweave_Cloth_Total"
stickystart "Collect_Runecloth_Total"
step
collect 50 Linen Cloth##2589 |or
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 100 |or
step
label "Collect_Wool_Cloth_Total"
Kill Venture Co. enemies around this area |notinsticky
|tip You can find more inside the mine. |notinsticky
collect 60 Wool Cloth##2592 |or |goto The Barrens/0 66.28,13.05
|tip Farm them from level 16-30 humanoid mobs or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 175 |or
step
label "Collect_Mageweave_Cloth_Total"
Kill Dunemaul enemies around this area |notinsticky
collect 20 Mageweave Cloth##4338 |or |goto Tanaris/0 40.50,55.50
|tip Farm them from level 38-50 humanoid mobs or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 216 |or
step
label "Collect_Runecloth_Total"
Kill Blackrock enemies around this area |notinsticky
|tip You can find more inside the building. |notinsticky
collect 35 Runecloth###14047 |or |goto Burning Steppes 42.17,35.64
|tip Farm them from level 50+ humanoid mobs or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 285 |or
step
label "Begin_Profession_Leveling_Classic"
talk Sovik##3413
|tip Inside the building.
buy Blacksmith Hammer##5956 |goto Orgrimmar/1 75.49,25.36 |or
|tip Save this, you will need it for future steps.
'|complete skill("Engineering") >= 300 |or
stickystart "Collect_Copper_Bars_50"
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 60 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 30 |or
step
label "Collect_Copper_Bars_50"
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 66 Copper Ore##2770 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 66 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save these, you will need them for future steps. |notinsticky
'|complete skill("Engineering") >= 50 |or
step
create 60 Rough Blasting Powder##3918,Engineering,60 total |or
'|complete skill("Engineering") >= 75 |or
step
create 1 Rough Blasting Powder##3918,Engineering,30
|tip Save at least 60 of these; you will need them for future steps.
step
talk Roxxik##11017
|tip Inside the building.
Train Handful of Copper Bolts |learn Handful of Copper Bolts##3922 |goto Orgrimmar/1 56.81,56.47
step
collect 30 Copper Bar##2840 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 50 |or
step
create 30 Handful of Copper Bolts##3922,Engineering,30 total |goto Orgrimmar/1 56.50,56.53 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 75 |or
step
create 30 Handful of Copper Bolts##3922,Engineering,50 |goto Orgrimmar/1 56.50,56.53
|tip Stand next to an anvil.
|tip Save at least 30 of these; you will need them for future steps.
|tip You may need to make a few more of these.
|tip Each additional Handful of Copper Bolts requires 1 copper bar.
step
Enter the building |goto Orgrimmar/1 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Arclight Spanner |learn Arclight Spanner##7430 |goto Orgrimmar/1 56.81,56.47
step
collect 6 Copper Bar##2840 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 51 or itemcount(6219) < 1 |or
step
create 1 Arclight Spanner##7430,Engineering,1 total |goto Orgrimmar/1 56.50,56.53
|tip Stand next to an anvil.
|tip Save this, you will need it for future steps.
step
create 1 Arclight Spanner##7430,Engineering,51 |goto Orgrimmar/1 56.50,56.53
|tip Stand next to an anvil.
|tip Save this, you will need it for future steps.
step
Enter the building |goto Orgrimmar/1 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Rough Copper Bomb |learn Rough Copper Bomb##3923 |goto Orgrimmar/1 56.81,56.47
stickystart "Collect_Handful_of_Copper_Bolts_75"
stickystart "Collect_Copper_Bar_75"
stickystart "Collect_Linen_Cloth_75"
step
collect 60 Rough Blasting Powder##4357 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 75 |or
step
label "Collect_Handful_of_Copper_Bolts_75"
collect 30 Handful of Copper Bolts##4359 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 75 |or
step
label "Collect_Copper_Bar_75"
collect 30 Copper Bar##2840 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 75 |or
step
label "Collect_Linen_Cloth_75"
collect 50 Linen Cloth##2589 |or
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
|tip Save at least 20 of these; you will need them for future steps.
|tip You may need more or less of these.
'|complete skill("Engineering") >= 75 |or
step
create 30 Rough Copper Bomb##3923,Engineering,75 |goto Orgrimmar/1 56.50,56.53
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Rough Copper Bomb requires 2 Rough Blasting Powder, 1 Handful of Copper Bolts, 1 Copper Bar, and 1 Linen Cloth.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/1 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Journeyman Engineering |skillmax Engineering,150 |goto Orgrimmar/1 56.81,56.47
step
talk Roxxik##11017
|tip Inside the building.
Train Coarse Blasting Powder |learn Coarse Blasting Powder##3929 |goto Orgrimmar/1 56.81,56.47
stickystart "Collect_Silver_Bars_105"
stickystart "Collect_Moss_Agate_135"
step
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Tin Vein##3764+
|tip They look like gray rocks with silver mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 60 Coarse Stone##2836 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 65 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 95 |or
step
label "Collect_Silver_Bars_105"
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Silver Vein##1733+
|tip They look like gray rocks with silver-green mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 5 Silver Ore##2775 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 5 Silver Bar##2842 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 75 Mining skill to gather these. |notinsticky
'|complete skill("Engineering") >= 105 |or
step
label "Collect_Moss_Agate_135"
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Tin Vein##3764+
|tip They look like gray rocks with silver mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 10 Moss Agate##1206 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 65 Mining skill to gather these. |notinsticky
|tip They can be Prospected from Tin Ore with Jewelcrafting. |notinsticky
'|complete skill("Engineering") >= 135 |or
step
create 60 Coarse Blasting Powder##3929,Engineering,60 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 100 |or
step
create 1 Coarse Blasting Powder##3929,Engineering,95
|tip Save 60 of these, they will be used in a later schematic.
step
Enter the building |goto Orgrimmar/1 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Coarse Dynamite |learn Coarse Dynamite##3931 |goto Orgrimmar/1 56.81,56.47
stickystart "Collect_Linen_Cloth_100"
step
collect 60 Coarse Blasting Powder##4364 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 100 |or
step
label "Collect_Linen_Cloth_100"
collect 20 Linen Cloth##2589 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 100 |or
step
create 20 Coarse Dynamite##3931,Engineering,100
|tip You may need to create more or less of these.
|tip Each additional Coarse Dynamite requires 3 Coarse Blasting Powder and 1 Linen Cloth.
step
Enter the building |goto Orgrimmar/1 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Silver Contact |learn Silver Contact##3973 |goto Orgrimmar/1 56.81,56.47
step
collect 5 Silver Bar##2842 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 105 |or
step
create 5 Silver Contact##3973,Engineering,105
step
talk Roxxik##11017
|tip Inside the building.
Train Bronze Tube |learn Bronze Tube##3938 |goto Orgrimmar/1 56.81,56.47
step
label "Collect_Bronze_Bars_125"
collect 120 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
|tip Smelting 2 Bronze Bars requires 1 Copper Bar and 1 Tin Bar.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 60 of these; you will need them for future steps.
'|complete skill("Engineering") >= 125 |or
step
talk Sovik##3413
|tip Inside the building.
buy 25 Weak Flux##2880 |goto Orgrimmar/1 75.49,25.36 |or
'|complete skill("Engineering") >= 125 |or
step
create 10 Bronze Tube##3938,Engineering,10 total |goto Orgrimmar/1 56.50,56.53 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 135 |or
step
create 15 Bronze Tube##3938,Engineering,125 |goto Orgrimmar/1 56.50,56.53
|tip Stand next to an anvil.
|tip Save at least 10 of these; you will need them for future steps.
|tip You may need to create more or less of these.
|tip Each additional Bronze Tube requires 2 Bronze Bars and 1 Weak Flux.
step
talk Roxxik##11017
|tip Inside the building.
Train Standard Scope |learn Standard Scope##3978 |goto Orgrimmar/1 56.81,56.47
stickystart "Collect_Bronze_Tube_135"
step
collect 10 Moss Agate##1206 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 135 |or
step
label "Collect_Bronze_Tube_135"
collect 10 Bronze Tube##4371 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 135 |or
step
create 10 Standard Scope##3978,Engineering,135
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Roxxik##11017
|tip Inside the building.
Train Expert Engineering |skillmax Engineering,225 |goto Orgrimmar/1 56.81,56.47
step
talk Roxxik##11017
|tip Inside the building.
Train Heavy Blasting Powder |learn Heavy Blasting Powder##3945 |goto Orgrimmar/1 56.81,56.47
step
talk Roxxik##11017
|tip Inside the building.
Train Whirring Bronze Gizmo |learn Whirring Bronze Gizmo##3942 |goto Orgrimmar/1 56.81,56.47
stickystart "Collect_Steel_Bars_300"
step
map Feralas/0
path	follow loose; loop on; ants curved; dist 20
path	 84.9,39.9	81.8,39.3	79.2,37.2
path	75.3,35.5	71.5,34.7	68.4,39.7
path	68.1,46.1	70.0,48.6	68.7,52.0
path	65.5,52.5	63.8,54.9	61.5,50.5
path	58.2,51.4	53.8,49.4	48.6,44.0
path	48.6,38.8	49.7,34.9	51.6,33.8
path	49.5,26.1	51.7,25.5	51.3,19.0
path	52.7,16.5	54.9,8.1	53.4,5.5
path	51.6,4.8	48.5,11.5	46.1,7.2
path	42.0,8.2	40.0,7.7	37.1,12.1
path	38.2,18.6	37.0,25.6	41.2,25.5
path	41.5,17.2	45.2,21.1	46.0,15.7
path	47.7,22.1	46.2,26.6	47.2,34.7
path	46.7,44.9	50.3,52.7	54.8,53.9
path	55.0,59.8	54.6,64.0	52.9,66.2
path	53.6,73.7	55.5,75.7	61.5,75.0
path	61.6,68.9	64.0,68.9	61.9,66.2
path	61.0,59.1	64.1,58.7	63.7,61.0
path	65.8,63.5	68.1,61.5	71.6,65.1
path	77.2,62.1	75.9,53.5	76.2,49.6
path	79.5,46.2	84.0,45.6	82.5,43.1
click Iron Deposit##1735+
|tip They look like dense gray rocks with small silver-green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals".
collect 30 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 125 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 146 |or
step
label "Collect_Steel_Bars_300"
map Feralas/0
path	follow loose; loop on; ants curved; dist 20
path	 84.9,39.9	81.8,39.3	79.2,37.2
path	75.3,35.5	71.5,34.7	68.4,39.7
path	68.1,46.1	70.0,48.6	68.7,52.0
path	65.5,52.5	63.8,54.9	61.5,50.5
path	58.2,51.4	53.8,49.4	48.6,44.0
path	48.6,38.8	49.7,34.9	51.6,33.8
path	49.5,26.1	51.7,25.5	51.3,19.0
path	52.7,16.5	54.9,8.1	53.4,5.5
path	51.6,4.8	48.5,11.5	46.1,7.2
path	42.0,8.2	40.0,7.7	37.1,12.1
path	38.2,18.6	37.0,25.6	41.2,25.5
path	41.5,17.2	45.2,21.1	46.0,15.7
path	47.7,22.1	46.2,26.6	47.2,34.7
path	46.7,44.9	50.3,52.7	54.8,53.9
path	55.0,59.8	54.6,64.0	52.9,66.2
path	53.6,73.7	55.5,75.7	61.5,75.0
path	61.6,68.9	64.0,68.9	61.9,66.2
path	61.0,59.1	64.1,58.7	63.7,61.0
path	65.8,63.5	68.1,61.5	71.6,65.1
path	77.2,62.1	75.9,53.5	76.2,49.6
path	79.5,46.2	84.0,45.6	82.5,43.1
click Iron Deposit##1735+
|tip They look like dense gray rocks with small silver-green mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 4 Iron Ore##2772 |n |notinsticky
|tip Buy 4 Coal from the Trade Supplier near the forge. |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 4 Steel Bar##3859 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 125 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 300 or itemcount(10498) >= 1 |or
step
create 30 Heavy Blasting Powder##3945,Engineering,30 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 146 |or
stickystart "Collect_Wool_Cloth_Gizmo"
step
label "Collect_Bronze_Bars_175"
collect 30 Bronze Bar##2841 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 175 |or
step
label "Collect_Wool_Cloth_Gizmo"
Kill Venture Co. enemies around this area
|tip You can find more inside the mine.
collect 60 Wool Cloth##2592 |or |goto The Barrens/0 66.28,13.05
|tip Farm them from level 16-30 humanoid mobs or purchase them from the auction house.
|tip Save at least 45 of these; you will need them for future steps.
'|complete skill("Engineering") >= 175 |or
step
create 15 Whirring Bronze Gizmo##3942,Engineering,15 total |goto The Barrens/0 56.50,56.53 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 175 |or
step
create 15 Whirring Bronze Gizmo##3942,Engineering,150
|tip Stand next to an anvil.
|tip Save at least 15 of these; you will need them for future steps.
|tip You may need to create more or less of these.
|tip Each additional Whirring Bronze Gizmo requires 2 Bronze Bars and 1 Wool Cloth.
step
talk Roxxik##11017
|tip Inside the building.
Train Bronze Framework |learn Bronze Framework##3953 |goto Orgrimmar/1 56.81,56.47
stickystart "Collect_Medium_Leather_Framework"
stickystart "Collect_Wool_Cloth_Framework"
step
collect 30 Bronze Bar##2841 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 175 |or
step
label "Collect_Medium_Leather_Framework"
Kill Yeti enemies around this area
|tip Skin their corpses.
|tip You can find more inside the cave.
|tip You will need level 155 Skinning to collect these.
collect 15 Medium Leather##2319 |or |goto Hillsbrad Foothills 46.64,54.41
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Engineering") >= 160 |or
step
label "Collect_Wool_Cloth_Framework"
collect 15 Wool Cloth##2592 |or |goto The Barrens/0 66.28,13.05
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 160 |or
step
create 15 Bronze Framework##3953,Engineering,15 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 175 |or
step
create 1 Bronze Framework##3953,Engineering,160
|tip Save at least 15 of these; you will need them for future steps.
step
talk Roxxik##11017
|tip Inside the building.
Train Explosive Sheep |learn Explosive Sheep##3955 |goto Orgrimmar/1 56.81,56.47
stickystart "Collect_Whirring_Bronze_Gizmo_175"
stickystart "Collect_Bronze_Framework_175"
stickystart "Collect_Wool_Cloth_175"
step
collect 30 Heavy Blasting Powder##4377 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 175 |or
step
label "Collect_Whirring_Bronze_Gizmo_175"
collect 15 Whirring Bronze Gizmo##4375 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 175 |or
step
label "Collect_Bronze_Framework_175"
collect 15 Bronze Framework##4382 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 175 |or
step
label "Collect_Wool_Cloth_175"
collect 30 Wool Cloth##2592 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 175 |or
step
create 15 Explosive Sheep##3955,Engineering,175 |goto Orgrimmar/1 56.50,56.53
|tip Stand next to an anvil.
|tip Save 5 of these if you intend to specialize in Goblin Engineering later.
step
talk Roxxik##11017
|tip Inside the building.
Train Gyromatic Micro-Adjustor |learn Gyromatic Micro-Adjustor##12590 |goto Orgrimmar/1 56.81,56.47
step
collect 4 Steel Bar##3859 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 300 or itemcount(10498) >= 1 |or
step
create 1 Gyromatic Micro-Adjustor##12590,Engineering,1 total |goto Orgrimmar/1 56.50,56.53 |or
|tip Stand next to an anvil.
|tip Save this, you will need it for future steps.
'|complete skill("Engineering") >= 300 |or
step
talk Roxxik##11017
|tip Inside the building.
Train Solid Blasting Powder |learn Solid Blasting Powder##12585 |goto Orgrimmar/1 56.81,56.47
stickystart "Collect_Mithril_Bar_200"
step
label "Collect_Solid_Stone_195"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 120 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 195 |or
step
label "Collect_Mithril_Bar_200"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 161 Mithril Ore##3858 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 161 Mithril Bar##3860 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save these, you will need them for future steps. |notinsticky
'|complete skill("Engineering") >= 200 |or
step
create 60 Solid Blasting Powder##12585,Engineering,60 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 250 |or
step
create 1 Solid Blasting Powder##12585,Engineering,195
|tip Save at least 60 of these; you will need them for future steps.
|tip You may need to create more of these.
|tip Each additional Solid Blasting Powder requires 2 Solid Stone.
step
talk Roxxik##11017
|tip Inside the building.
Train Mithril Tube |learn Mithril Tube##12589 |goto Orgrimmar/1 56.81,56.47
step
collect 21 Mithril Bar##3860 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 200 |or
step
create 7 Mithril Tube##12589,Engineering,200 |goto Orgrimmar/1 56.50,56.53
|tip Stand next to an anvil.
|tip You  may need to create more or less of these.
|tip Each additional Mithril Tube requires 3 Mithril Bars.
|tip Save 6 of these if you intend to specialize in Gnomish Engineering later.
step
talk Roxxik##11017
|tip Inside the building.
Train Unstable Trigger |learn Unstable Trigger##12591 |goto Orgrimmar/1 56.81,56.47
stickystart "Collect_Mithril_Bar_216"
stickystart "Collect_Mageweave_Cloth_216"
step
collect 20 Solid Blasting Powder##10505 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 216 |or
step
label "Collect_Mithril_Bar_216"
collect 20 Mithril Bar##3860 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 216 |or
step
label "Collect_Mageweave_Cloth_216"
Kill Dunemaul enemies around this area
collect 20 Mageweave Cloth##4338 |or |goto Tanaris/0 40.50,55.50
|tip Farm them from level 38-50 humanoid mobs or purchase them from the auction house.
'|complete skill("Engineering") >= 216 |or
step
create 20 Unstable Trigger##12591,Engineering,20 total |goto Orgrimmar/1 56.50,56.53 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 250 |or
step
create 1 Unstable Trigger##12591,Engineering,216 |goto Orgrimmar/1 56.50,56.53
|tip Stand next to an anvil.
|tip Save at least 20 of these; you will need them for future steps.
|tip You may need to create more or less of these.
|tip Each additional Unstable Trigger requires 1 Solid Blasting Powder, 1 Mithril Bar, and 1 Mageweave Cloth.
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Roxxik##11017
|tip Inside the building.
Train Artisan Engineering |skillmax Engineering,300 |goto Orgrimmar/1 56.81,56.47
step
talk Roxxik##11017
|tip Inside the building.
Train Mithril Casing |learn Mithril Casing##12599 |goto Orgrimmar/1 56.81,56.47
step
collect 120 Mithril Bar##3860 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 238 |or
step
create 40 Mithril Casing##12599,Engineering,40 total |goto Orgrimmar/1 56.50,56.53 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 250 |or
step
create 1 Mithril Casing##12599,Engineering,238 |goto Orgrimmar/1 56.50,56.53
|tip Stand next to an anvil.
|tip Save at least 40 of these; you will need them for future steps.
|tip You may need to create more or less of these.
|tip Each additional Mithril Casing requires 3 Mithril Bars.
step
talk Roxxik##11017
|tip Inside the building.
Train Hi-Explosive Bomb |learn Hi-Explosive Bomb##12619 |goto Orgrimmar/1 56.81,56.47
stickystart "Collect_Unstable_Trigger_250"
stickystart "Collect_Mithril_Casing_250"
step
collect 40 Solid Blasting Powder##10505 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 250 |or
step
label "Collect_Unstable_Trigger_250"
collect 20 Unstable Trigger##10560 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 250 |or
step
label "Collect_Mithril_Casing_250"
collect 40 Mithril Casing##10561 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 250 |or
step
create 20 Hi-Explosive Bomb##12619,Engineering,250 |goto Orgrimmar/1 56.50,56.53
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Hi-Explosive Bomb requires 2 Solid Blasting Powders, 1 Unstable Trigger, and 1 Mithril Casing.
step
talk Roxxik##11017
|tip Inside the building.
Train Dense Blasting Powder |learn Dense Blasting Powder##19788 |goto Orgrimmar/1 56.81,56.47
stickystart "Collect_Thorium_Bar_285"
step
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+
click Rich Thorium Vein##175404+
|tip They look like green mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 70 Dense Stone##12365 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 260 |or
step
label "Collect_Thorium_Bar_285"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+
click Rich Thorium Vein##175404+
|tip They look like green mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 195 Thorium Ore##10620 |n
|tip Smelt the ore at a forge.
collect 195 Thorium Bar##12359 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 285 |or
step
create 35 Dense Blasting Powder##19788,Engineering,260
|tip You may need to create more or less of these.
|tip Each additional Dense Blasting Powder requires 2 Dense Stone.
|tip Save these for a later step.
step
talk Roxxik##11017
|tip Inside the building.
Train Thorium Widget |learn Thorium Widget##19791 |goto Orgrimmar/1 56.81,56.47
stickystart "Collect_Runecloth_285"
step
collect 105 Thorium Bar##12359 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 285 |or
step
label "Collect_Runecloth_285"
Kill Blackrock enemies around this area
|tip You can find more inside the building.
collect 35 Runecloth###14047 |or |goto Burning Steppes 42.17,35.64
|tip Farm them from level 50+ humanoid mobs or purchase them from the auction house.
'|complete skill("Engineering") >= 285 |or
step
create 35 Thorium Widget##19791,Engineering,285 |goto Orgrimmar/1 56.50,56.53
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Thorium Widget requires 3 Thorium Bar and 2 Runecloth.
step
talk Roxxik##11017
|tip Inside the building.
Train Thorium Tube |learn Thorium Tube##19795 |goto Orgrimmar/1 56.81,56.47
step
collect 90 Thorium Bar##12359 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 300 |or
step
create 15 Thorium Tube##19795,Engineering,300 |goto Orgrimmar/1 56.50,56.53
|tip Stand next to an anvil.
|tip You may need to create more of these.
|tip Each additional Thorium Tube requires 2 Thorium Bar and 1 Dense Blasting Powder.
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to train Master professions in Outland.
|tip Use the leveling guides to accomplish this.
step
talk Zebig##18752
Learn Master Engineering |skillmax Engineering,375 |goto Hellfire Peninsula/0 54.78,38.51
step
talk Zebig##18752
Train Handful of Fel Iron Bolts |learn Handful of Fel Iron Bolts##30305 |goto Hellfire Peninsula/0 54.78,38.51
step
talk Zebig##18752
Train Elemental Blasting Powder |learn Elemental Blasting Powder##30303 |goto Hellfire Peninsula/0 54.78,38.51
step
talk Zebig##18752
Train Fel Iron Casing |learn Fel Iron Casing##30304 |goto Hellfire Peninsula/0 54.78,38.51
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Burning Crusade-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Engineering |confirm |next "Begin_Profession_Leveling_Outland" |or
'|complete skill("Engineering") >= 350 |or |next "Begin_Profession_Leveling_Outland"
stickystart "Collect_Adamantite_Bar_Total"
stickystart "Collect_Mote_of_Earth_Total"
stickystart "Collect_Mote_of_Fire_Total"
stickystart "Collect_Netherweave_Cloth_Total"
step
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+
|tip They look like green mineral clusters around this path.
|tip Enter caves along the path.
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
collect 140 Fel Iron Ore##23424 |n
|tip Smelt the ore at a forge.
collect 70 Fel Iron Bar##23445 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 321 |or
step
label "Collect_Adamantite_Bar_Total"
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
click Adamantite Deposit##181556+ |notinsticky
click Rich Adamantite Deposit##181569+ |notinsticky
|tip They look like dark blue mineral deposits along the path. |notinsticky
|tip Enter caves along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 80 Adamantite Ore##23425 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 40 Adamantite Bar##23446 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 325 Mining skill to gather regular veins and 350 skill to gather rich veins. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 336 |or
step
label "Collect_Mote_of_Earth_Total"
map Nagrand/0
path follow smart; loop off; ants curved; dist 30
path	46.19,77.20	41.98,78.72	40.31,82.83	32.13,80.25	29.34,79.24
path	28.40,73.85	28.94,66.76	28.17,63.58
kill Shattered Rumbler##17157+ |notinsticky
|tip Follow the path, killing any that you see. |notinsticky
collect 40 Mote of Earth##22573 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
'|goto Nagrand/0 28.17,63.58 < 30 |c |noway |or
'|complete skill("Engineering") >= 321 |or
step
map Nagrand/0
path follow smart; loop off; ants curved; dist 30
path	28.17,63.58	28.94,66.76	28.40,73.85	29.34,79.24	32.13,80.25
path	40.31,82.83	41.98,78.72	46.19,77.20
kill Shattered Rumbler##17157+
|tip Follow the path, killing any that you see.
collect 40 Mote of Earth##22573 |or
|tip Farm them with Mining or purchase them from the auction house.
'|goto Nagrand/0 46.19,77.20 < 30 |c |noway |next "Collect_Mote_of_Earth_Total" |or
'|complete skill("Engineering") >= 321 |or
step
label "Collect_Mote_of_Fire_Total"
map Shadowmoon Valley/0
path	loop off; ants curved; dist 25
path	44.47,46.46	46.81,48.88	48.83,51.69	51.70,52.00
kill Enraged Fire Spirit##21061+ |notinsticky
|tip Follow the path, killing any that you see. |notinsticky
collect 20 Mote of Fire##22574 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
'|goto Shadowmoon Valley/0 51.70,52.00 |noway |c |or
'|complete skill("Engineering") >= 321 |or
step
kill Enraged Fire Spirit##21061
map Shadowmoon Valley/0
path	loop off; ants curved; dist 25
path	48.34,46.75	47.93,42.37	49.03,37.97	51.34,36.12	49.04,34.47
kill Enraged Fire Spirit##21061+
|tip Follow the path, killing any that you see.
collect 20 Mote of Fire##22574 |or
|tip Farm them with Mining or purchase them from the auction house.
'|goto Shadowmoon Valley/0 49.04,34.47 |noway |c |next "Collect_Mote_of_Fire_Total" |or
'|complete skill("Engineering") >= 321 |or
step
label "Collect_Netherweave_Cloth_Total"
map Shadowmoon Valley/0
path follow smart; loop on; ants curved; dist 20
path	51.1,58.8	53.0,59.3	53.2,60.5	52.8,63.2	52.8,65.4
path	52.9,69.0	52.5,71.8	47.3,71.1	45.8,71.3	45.2,69.2
path	45.6,66.1	48.0,67.2
Kill enemies around this area |notinsticky
collect 60 Netherweave Cloth##21877 |or
|tip Farm them from humanoid mobs in Outland or purchase them from the auction house. |notinsticky
'|complete skill("Engineering") >= 355 |or
step
label "Begin_Profession_Leveling_Outland"
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+
|tip They look like green mineral clusters around this path.
|tip Enter caves along the path.
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
collect 140 Fel Iron Ore##23424 |n
|tip Smelt the ore at a forge.
collect 70 Fel Iron Bar##23445 |or
|tip Create them with Mining or purchase them from the auction house.
|tip Save at least 30 of these; you will need them for future steps.
'|complete skill("Engineering") >= 320 |or
step
create 40 Handful of Fel Iron Bolts##30305,Engineering,40 total |goto Hellfire Peninsula/0 53.07,38.04 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 320 |or
step
collect 30 Fel Iron Bar##23445 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 321 |or
step
create 10 Fel Iron Casing##30304,Engineering,10 total |goto Hellfire Peninsula/0 53.07,38.04 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 321 |or
stickystart "Collect_Motes_of_Earth_321"
stickystart "Collect_Mote_of_Fire_321"
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
click Rich Adamantite Deposit##181569+
|tip They look like dark blue mineral deposits along the path.
|tip Enter caves along the path.
|tip Track them on your minimap with "Find Minerals".
collect 80 Adamantite Ore##23425 |n
|tip Smelt the ore at a forge.
collect 40 Adamantite Bar##23446 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 325 Mining skill to gather regular veins and 350 skill to gather rich veins.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 336 |or
step
label "Collect_Motes_of_Earth_321"
map Nagrand/0
path follow smart; loop off; ants curved; dist 30
path	46.19,77.20	41.98,78.72	40.31,82.83	32.13,80.25	29.34,79.24
path	28.40,73.85	28.94,66.76	28.17,63.58
kill Shattered Rumbler##17157+ |notinsticky
|tip Follow the path, killing any that you see. |notinsticky
collect 40 Mote of Earth##22573 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
'|goto Nagrand/0 28.17,63.58 < 30 |c |noway |or
'|complete skill("Engineering") >= 321 |or
step
map Nagrand/0
path follow smart; loop off; ants curved; dist 30
path	28.17,63.58	28.94,66.76	28.40,73.85	29.34,79.24	32.13,80.25
path	40.31,82.83	41.98,78.72	46.19,77.20
kill Shattered Rumbler##17157+
|tip Follow the path, killing any that you see.
collect 40 Mote of Earth##22573 |or
|tip Farm them with Mining or purchase them from the auction house.
'|goto Nagrand/0 46.19,77.20 < 30 |c |noway |next "Collect_Motes_of_Earth_321" |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 321 |or
step
label "Collect_Mote_of_Fire_321"
map Shadowmoon Valley/0
path	loop off; ants curved; dist 25
path	44.47,46.46	46.81,48.88	48.83,51.69	51.70,52.00
kill Enraged Fire Spirit##21061+ |notinsticky
|tip Follow the path, killing any that you see. |notinsticky
collect 20 Mote of Fire##22574 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
'|goto Shadowmoon Valley/0 51.70,52.00 |noway |c |or
'|complete skill("Engineering") >= 321 |or
step
kill Enraged Fire Spirit##21061
map Shadowmoon Valley/0
path	loop off; ants curved; dist 25
path	48.34,46.75	47.93,42.37	49.03,37.97	51.34,36.12	49.04,34.47
kill Enraged Fire Spirit##21061+
|tip Follow the path, killing any that you see.
collect 20 Mote of Fire##22574 |or
|tip Farm them with Mining or purchase them from the auction house.
'|goto Shadowmoon Valley/0 49.04,34.47 |noway |c |next "Collect_Mote_of_Fire_321" |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 321 |or
step
create 20 Elemental Blasting Powder##30303,Engineering,80 total |goto Hellfire Peninsula/0 53.07,38.04 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 321 |or
step
create Fel Iron Casing##30304,Engineering,320 |goto Hellfire Peninsula/0 53.07,38.04
|tip Stand next to an anvil.
|tip You may need to create more of these.
|tip Each additional Fel Iron Casing requires 3 Fel Iron Bars.
step
talk Zebig##18752
Train Fel Iron Bomb |learn Fel Iron Bomb##30310 |goto Hellfire Peninsula/0 54.78,38.51
stickystart "Collect_Fel_Iron_Casing_325"
stickystart "Collect_Elemental_Blasting_Powder_325"
step
collect 20 Handful of Fel Iron Bolts##23783 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 325 |or
step
label "Collect_Fel_Iron_Casing_325"
collect 10 Fel Iron Casing##23782 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 325 |or
step
label "Collect_Elemental_Blasting_Powder_325"
collect 10 Elemental Blasting Powder##23781 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 325 |or
step
create 10 Fel Iron Bomb##30310,Engineering,325 |goto Hellfire Peninsula/0 53.07,38.04
|tip Stand next to an anvil.
|tip You may need to make more or less of these.
step
talk Zebig##18752
Train Adamantite Grenade |learn Adamantite Grenade##30311 |goto Hellfire Peninsula/0 54.78,38.51
step
collect 40 Adamantite Bar##23446 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 335 |or
step
collect 20 Handful of Fel Iron Bolts##23783 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 335 |or
step
collect 10 Elemental Blasting Powder##23781 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 335 |or
step
create 10 Adamantite Grenade##30311,Engineering,335 |goto Hellfire Peninsula/0 53.07,38.04
|tip Stand next to an anvil.
step
talk Wind Trader Lathrai##18484
buy 1 Schematic: White Smoke Flare##23811 |goto Shattrath City/0 72.23,30.74 |or
|tip This is a limited supply item that can also be purchased from the auction house.
'|complete skill("Engineering") >= 350 |or
step
use the Schematic: White Smoke Flare##23811
Train White Smoke Flare |learn White Smoke Flare##30341
stickystart "Collect_Elemental_Blasting_Powder_325"
step
map Shadowmoon Valley/0
path follow smart; loop on; ants curved; dist 20
path	51.1,58.8	53.0,59.3	53.2,60.5	52.8,63.2	52.8,65.4
path	52.9,69.0	52.5,71.8	47.3,71.1	45.8,71.3	45.2,69.2
path	45.6,66.1	48.0,67.2
Kill enemies around this area
collect 60 Netherweave Cloth##21877 |or
|tip Farm them from humanoid mobs in Outland or purchase them from the auction house.
'|complete skill("Engineering") >= 350 |or
step
label "Collect_Elemental_Blasting_Powder_325"
collect 60 Elemental Blasting Powder##23781 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 350 |or
step
create 60 White Smoke Flare##30341,Engineering,350 |goto Shattrath City/0 69.35,42.89
|tip Stand next to an anvil.
|tip You may need to make more or less of these.
|tip Each additional White Smoke Flare requires 1 Netherweave Cloth and 1 Elemental Blasting Powder.
step
Reach Level 65 |ding 65
|tip You must be at least level 65 to train Grand Master professions in Northrend.
|tip Use the leveling guides to accomplish this.
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Grand Master Engineering |skillmax Engineering,450 |goto Dalaran/1 38.49,25.82
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Handful of Cobalt Bolts |learn Handful of Cobalt Bolts##56349 |goto Dalaran/1 38.49,25.82
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Volatile Blasting Trigger |learn Volatile Blasting Trigger##53281 |goto Dalaran/1 38.49,25.82
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Lich King-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Engineering |confirm |next "Begin_Profession_Leveling_Northrend" |or
'|complete skill("Engineering") >= 450 |or |next "Begin_Profession_Leveling_Northrend"
stickystart "Collect_Saronite_Bars_Total"
stickystart "Collect_Crystallized_Water_Total"
stickystart "Collect_Crystallized_Earth_Total"
stickystart "Collect_Crystallized_Fire_Total"
stickystart "Collect_Frostweave_Cloth_Total"
stickystart "Collect_Eternal_Shadow_Total"
stickystart "Collect_Borean_Leather_Total"
step
map Howling Fjord/0
path follow smart; loop on; ants curved; dist 30
path	55.65,17.60	53.52,15.00	51.43,15.71	49.20,14.74	47.56,15.38
path	45.05,13.89	43.14,13.19	41.34,13.29	40.23,14.59	38.60,14.93
path	37.64,16.63	36.43,16.99	35.40,15.49	32.38,11.59	30.00,10.92
path	26.87,11.45	23.99,12.75	23.01,13.71	23.35,16.35	23.44,18.65
path	21.16,22.18	20.25,24.48	21.23,26.31	22.95,26.56	24.19,25.71
path	25.40,23.02	26.71,22.98	27.79,25.04	27.53,28.00	27.68,29.99
path	30.40,30.52	32.46,30.72	33.34,29.71	34.89,28.56	36.68,28.46
path	38.80,27.56	39.48,29.21	40.90,30.52	44.05,31.72	45.86,31.80
path	47.02,34.07	48.36,35.08	50.93,33.85	52.89,34.14	55.30,35.21
path	57.83,37.08	60.42,38.26	62.79,40.38	64.35,42.45	65.48,48.32
path	65.93,51.73	67.05,53.90	67.80,56.08	68.47,59.74	66.95,63.80
path	65.01,66.28	64.47,69.52	64.82,71.76	65.94,72.50	68.40,73.31
path	70.29,73.66	71.48,70.48	72.00,69.07	73.67,68.26	76.42,67.33
path	77.11,65.13	76.75,62.91	73.39,60.77	73.92,57.74	75.91,52.76
path	76.90,51.02	78.76,48.21	79.67,45.76	78.27,44.92	75.77,44.46
path	73.89,43.50	74.69,39.29	71.07,38.60	69.75,33.99	70.56,32.18
path	69.18,30.96	68.13,28.96	70.46,26.26	73.37,22.20	73.03,19.18
path	71.72,13.55	71.53,11.86	70.13,11.18	68.47,10.35	66.46,13.07
path	65.17,16.95	63.95,20.60	60.91,22.40	60.52,24.71	58.88,24.52
path	57.84,21.39	57.56,17.79	56.26,16.77
click Cobalt Deposit##189978+
click Rich Cobalt Deposit##189979+
|tip They look like large blue clusters of rock and crystals.
|tip Track them on your minimap with "Find Minerals".
collect Cobalt Ore##36909 |n
|tip Smelt the ore at a forge.
collect 272 Cobalt Bar##36916 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 350 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 400 |or
step
label "Collect_Saronite_Bars_Total"
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	79.27,65.32	80.51,63.45	80.55,60.91	80.11,58.43	79.71,55.90
path	78.57,54.98	76.16,53.63	74.31,53.72	72.37,52.46	70.19,51.19
path	68.54,50.18	68.10,49.16	68.42,47.09	71.54,42.33	71.77,41.02
path	70.80,39.72	69.17,39.54	66.84,39.75	65.22,39.43	63.46,37.28
path	62.15,34.64	60.96,31.35	58.97,32.07	56.70,33.49	55.46,34.36
path	53.15,36.55	51.51,36.91	49.18,36.87	46.07,35.95	44.29,39.29
path	40.80,40.94	40.12,42.66	39.54,44.03	38.93,44.94	38.07,48.02
path	38.18,49.57	37.68,51.43	36.63,51.07	35.74,50.18	34.32,48.74
path	32.65,48.37	32.04,50.86	32.76,53.74	31.75,57.06	31.27,59.57
path	30.57,62.54	31.30,66.34	32.34,69.72	34.25,69.54	36.01,70.86
path	37.83,69.46	38.62,68.21	40.71,66.06	42.62,65.37	47.84,65.25
path	49.03,63.72	49.25,62.37	47.89,57.80	48.08,53.78	48.13,50.05
path	48.61,47.04	51.44,45.25	55.15,43.88	57.87,43.96	59.59,46.21
path	61.20,47.93	62.33,50.75	62.58,54.26	64.21,56.39	65.31,59.10
path	66.48,61.81	66.37,64.78	67.17,70.17	67.87,70.86	69.35,69.71
path	72.29,67.71	72.82,64.27	73.82,61.06	76.10,61.31	77.53,63.76
click Saronite Deposit##189980+ |notinsticky
click Rich Saronite Deposit##189981+ |notinsticky
|tip They look like large green clusters of rock and crystals. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect Saronite Ore##36912 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 555 Saronite Bar##36913 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 400 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 450 |or
step
label "Collect_Crystallized_Water_Total"
kill Boiling Spirit##25419+ |notinsticky
collect 68 Crystallized Water##37705 |goto Borean Tundra/0 46.94,13.40 |or
|tip Farm them from water elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide. |notinsticky
'|complete skill("Engineering") >= 425 |or
step
label "Collect_Crystallized_Earth_Total"
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
kill Lifeblood Elemental##29124+ |notinsticky
collect 10 Crystallized Earth##37701 |or
|tip Farm them from earth elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Mining nodes with Northrend Mining guides. |notinsticky
'|complete skill("Engineering") >= 385 |or
step
label "Collect_Crystallized_Fire_Total"
Enter the cave |goto The Storm Peaks/0 62.48,41.49 < 20 |walk |notinsticky
kill Wailing Winds##30450+ |notinsticky
|tip Inside the cave. |notinsticky
collect 15 Crystallized Fire##37702 |goto The Storm Peaks/0 61.43,39.48 |or
|tip Farm them from fire elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Titanium Veins with the Northrend Mining guide. |notinsticky
'|complete skill("Engineering") >= 415 |or
step
label "Collect_Frostweave_Cloth_Total"
kill Mjordin Combatant##30037+ |notinsticky
|tip They will continuously respawn when you deplete their numbers. |notinsticky
collect 7 Frostweave Cloth##33470 |goto Icecrown/0 37.29,23.72 |or
'|complete skill("Engineering") >= 390 |or
step
label "Collect_Eternal_Shadow_Total"
Enter the cave |goto Dragonblight/0 74.24,23.64 < 30 |walk |notinsticky
kill Deathbringer Revenant##27382+ |notinsticky
|tip Inside the cave. |notinsticky
use the Crystallized Shadow##37703 |notinsticky
|tip Combine 10 Crystallized Shadow into 1 Eternal Shadow. |notinsticky
collect 7 Eternal Shadow##35627 |or
|tip Farm them from shadow mobs or purchase them from the auction house. |notinsticky
|tip You can also farm them from Saronite Deposits with the Northrend Mining guide. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill.
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger. |notinsticky
'|complete skill("Engineering") >= 430 |or
step
label "Collect_Borean_Leather_Total"
map Borean Tundra/0
path follow smart; loop on; ants curved; dist 30
path	47.21,48.30	44.24,47.61	41.18,46.20	40.98,44.66	41.46,41.47
path	42.96,40.00	43.64,40.96	45.77,41.70	46.85,43.10	47.89,46.20
Kill Wooly Rhino enemies around along the path |notinsticky
|tip Skin their corpses. |notinsticky
collect 14 Borean Leather##33568 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip You will need 345 Skinning skill minimum to skin all of these mobs. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill.
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger. |notinsticky
'|goto Borean Tundra/0 47.89,46.20 < 30 |c |noway |or
'|complete skill("Engineering") >= 430 |or
step
map Borean Tundra/0
path follow smart; loop on; ants curved; dist 30
path	50.60,68.96	49.51,72.06	47.53,73.94	44.84,74.30	42.65,74.76
path	40.52,72.87	41.06,70.43	43.42,70.41	45.00,70.40	47.12,70.14
path	48.70,69.55	50.08,66.87
Kill Wooly Rhino enemies around along the path
|tip Skin their corpses.
collect 14 Borean Leather##33568 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip You will need 345 Skinning skill minimum to skin all of these mobs.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill.
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger.
'|goto Borean Tundra/0 50.08,66.87 < 30 |c |noway |next "Collect_Borean_Leather_Total" |or
'|complete skill("Engineering") >= 430 |or
step
label "Begin_Profession_Leveling_Northrend"
map Howling Fjord/0
path follow smart; loop on; ants curved; dist 30
path	55.65,17.60	53.52,15.00	51.43,15.71	49.20,14.74	47.56,15.38
path	45.05,13.89	43.14,13.19	41.34,13.29	40.23,14.59	38.60,14.93
path	37.64,16.63	36.43,16.99	35.40,15.49	32.38,11.59	30.00,10.92
path	26.87,11.45	23.99,12.75	23.01,13.71	23.35,16.35	23.44,18.65
path	21.16,22.18	20.25,24.48	21.23,26.31	22.95,26.56	24.19,25.71
path	25.40,23.02	26.71,22.98	27.79,25.04	27.53,28.00	27.68,29.99
path	30.40,30.52	32.46,30.72	33.34,29.71	34.89,28.56	36.68,28.46
path	38.80,27.56	39.48,29.21	40.90,30.52	44.05,31.72	45.86,31.80
path	47.02,34.07	48.36,35.08	50.93,33.85	52.89,34.14	55.30,35.21
path	57.83,37.08	60.42,38.26	62.79,40.38	64.35,42.45	65.48,48.32
path	65.93,51.73	67.05,53.90	67.80,56.08	68.47,59.74	66.95,63.80
path	65.01,66.28	64.47,69.52	64.82,71.76	65.94,72.50	68.40,73.31
path	70.29,73.66	71.48,70.48	72.00,69.07	73.67,68.26	76.42,67.33
path	77.11,65.13	76.75,62.91	73.39,60.77	73.92,57.74	75.91,52.76
path	76.90,51.02	78.76,48.21	79.67,45.76	78.27,44.92	75.77,44.46
path	73.89,43.50	74.69,39.29	71.07,38.60	69.75,33.99	70.56,32.18
path	69.18,30.96	68.13,28.96	70.46,26.26	73.37,22.20	73.03,19.18
path	71.72,13.55	71.53,11.86	70.13,11.18	68.47,10.35	66.46,13.07
path	65.17,16.95	63.95,20.60	60.91,22.40	60.52,24.71	58.88,24.52
path	57.84,21.39	57.56,17.79	56.26,16.77
click Cobalt Deposit##189978+
click Rich Cobalt Deposit##189979+
|tip They look like large blue clusters of rock and crystals.
|tip Track them on your minimap with "Find Minerals".
collect Cobalt Ore##36909 |n
|tip Smelt the ore at a forge.
collect 272 Cobalt Bar##36916 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 350 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 112 of these; you will need them for future steps.
'|complete skill("Engineering") >= 375 |or
step
kill Boiling Spirit##25419+
collect 68 Crystallized Water##37705 |goto Borean Tundra/0 46.94,13.40 |or
|tip Farm them from water elementals or purchase them from the auction house.
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide.
|tip Save at least 54 of these; you will need them for future steps.
'|complete skill("Engineering") >= 375 |or
step
create 35 Handful of Cobalt Bolts##56349,Engineering,50 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 381 |or
step
create 14 Volatile Blasting Trigger##53281,Engineering,28 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 386 |or
stickystart "Collect_Cobalt_Bar_385"
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
kill Lifeblood Elemental##29124+
collect 10 Crystallized Earth##37701 |or
|tip Farm them from earth elementals or purchase them from the auction house.
|tip You can also farm them from Mining nodes with Northrend Mining guides.
'|complete skill("Engineering") >= 385 |or
step
label "Collect_Cobalt_Bar_385"
collect 40 Cobalt Bar##36916 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 385 |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Overcharged Capacitor |learn Overcharged Capacitor##56464 |goto Dalaran/1 38.49,25.82
step
create 10 Overcharged Capacitor##56464,Engineering,10 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 391 |or
stickystart "Collect_Volatile_Blasting_Trigger_380"
step
kill Mjordin Combatant##30037+
|tip They will continuously respawn when you deplete their numbers.
collect 7 Frostweave Cloth##33470 |goto Icecrown/0 37.29,23.72 |or
'|complete skill("Engineering") >= 390 |or
step
label "Collect_Volatile_Blasting_Trigger_380"
collect 21 Volatile Blasting Trigger##39690 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 390 |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Explosive Decoy |learn Explosive Decoy##56463 |goto Dalaran/1 38.49,25.82
step
create 7 Explosive Decoy##56463,Engineering,390 |or
|tip You may need to make more or less of these.
|tip Each additional Explosive Decoy requires 3 Volatile Blasting Triggers and 1 Frostweave Cloth.
stickystart "Collect_Crystallized_Water_400"
step
collect 120 Cobalt Bar##36916 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 400 |or
step
label "Collect_Crystallized_Water_400"
collect 15 Crystallized Water##37705 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 400 |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Froststeel Tube |learn Froststeel Tube##56471 |goto Dalaran/1 38.49,25.82
step
create 1 Froststeel Tube##56471,Engineering,400 |or
|tip Create these one at a time.
|tip Stop making them at 400 skill, and only make more if needed later at 430+ skill.
|tip Save these, you will need them for future steps.
stickystart "Collect_Handful_of_Cobalt_Bolts_405"
step
collect 5 Froststeel Tube##39683 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 405 |or
step
label "Collect_Handful_of_Cobalt_Bolts_405"
collect 10 Handful of Cobalt Bolts##39681 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 405 |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Diamond-cut Refractor Scope |learn Diamond-cut Refractor Scope##61471 |goto Dalaran/1 38.49,25.82
step
create 5 Diamond-cut Refractor Scope##61471,Engineering,405 |or
stickystart "Collect_Volatile_Blasting_Trigger_410"
step
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	79.27,65.32	80.51,63.45	80.55,60.91	80.11,58.43	79.71,55.90
path	78.57,54.98	76.16,53.63	74.31,53.72	72.37,52.46	70.19,51.19
path	68.54,50.18	68.10,49.16	68.42,47.09	71.54,42.33	71.77,41.02
path	70.80,39.72	69.17,39.54	66.84,39.75	65.22,39.43	63.46,37.28
path	62.15,34.64	60.96,31.35	58.97,32.07	56.70,33.49	55.46,34.36
path	53.15,36.55	51.51,36.91	49.18,36.87	46.07,35.95	44.29,39.29
path	40.80,40.94	40.12,42.66	39.54,44.03	38.93,44.94	38.07,48.02
path	38.18,49.57	37.68,51.43	36.63,51.07	35.74,50.18	34.32,48.74
path	32.65,48.37	32.04,50.86	32.76,53.74	31.75,57.06	31.27,59.57
path	30.57,62.54	31.30,66.34	32.34,69.72	34.25,69.54	36.01,70.86
path	37.83,69.46	38.62,68.21	40.71,66.06	42.62,65.37	47.84,65.25
path	49.03,63.72	49.25,62.37	47.89,57.80	48.08,53.78	48.13,50.05
path	48.61,47.04	51.44,45.25	55.15,43.88	57.87,43.96	59.59,46.21
path	61.20,47.93	62.33,50.75	62.58,54.26	64.21,56.39	65.31,59.10
path	66.48,61.81	66.37,64.78	67.17,70.17	67.87,70.86	69.35,69.71
path	72.29,67.71	72.82,64.27	73.82,61.06	76.10,61.31	77.53,63.76
click Saronite Deposit##189980+
click Rich Saronite Deposit##189981+
|tip They look like large green clusters of rock and crystals.
|tip Track them on your minimap with "Find Minerals".
collect Saronite Ore##36912 |n
|tip Smelt the ore at a forge.
collect 555 Saronite Bar##36913 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 400 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 530 of these; you will need them for future steps.
'|complete skill("Engineering") >= 410 |or
step
label "Collect_Volatile_Blasting_Trigger_410"
collect 5 Volatile Blasting Trigger##39690 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 410 |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Box of Bombs |learn Box of Bombs##56468 |goto Dalaran/1 38.49,25.82
step
create 5 Box of Bombs##56468,Engineering,410 |or
stickystart "Collect_Crystallized_Water_415"
stickystart "Collect_Saronite_Bar_415"
step
Enter the cave |goto The Storm Peaks/0 62.48,41.49 < 20 |walk
kill Wailing Winds##30450+
|tip Inside the cave.
collect 15 Crystallized Fire##37702 |goto The Storm Peaks/0 61.43,39.48 |or
|tip Farm them from fire elementals or purchase them from the auction house.
|tip You can also farm them from Titanium Veins with the Northrend Mining guide.
'|complete skill("Engineering") >= 415 |or
step
label "Collect_Crystallized_Water_415"
collect 15 Crystallized Water##37705 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 415 |or
step
label "Collect_Saronite_Bar_415"
collect 30 Saronite Bar##36913 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 415 |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Goblin Beam Welder |learn Goblin Beam Welder##67326 |goto Dalaran/1 38.49,25.82
step
create 5 Goblin Beam Welder##67326,Engineering,415 |or
stickystart "Collect_Crystallized_Water_425"
step
collect 144 Saronite Bar##36913 |or
|tip You collected these in a previous step.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 425 |or
step
label "Collect_Crystallized_Water_425"
collect 24 Crystallized Water##37705 |or
|tip You collected these in a previous step.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 425 |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Mana Injector Kit |learn Mana Injector Kit##56477 |goto Dalaran/1 38.49,25.82
step
create 12 Mana Injector Kit##56477,Engineering,425 |or
|tip You may need to make more or less of these.
|tip Each additional Mana Injector Kit requires 12 Saronite Bars and 2 Crystallized Water.
stickystart "Collect_Borean_Leather_430"
stickystart "Collect_Saronite_Bar_430"
step
Enter the cave |goto Dragonblight/0 74.24,23.64 < 30 |walk
kill Deathbringer Revenant##27382+
|tip Inside the cave.
use the Crystallized Shadow##37703
|tip Combine 10 Crystallized Shadow into 1 Eternal Shadow.
collect 7 Eternal Shadow##35627 |or
|tip Farm them from shadow mobs or purchase them from the auction house.
|tip You can also farm them from Saronite Deposits with the Northrend Mining guide.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill.
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger.
'|complete skill("Engineering") >= 430 |or
step
label "Collect_Borean_Leather_430"
map Borean Tundra/0
path follow smart; loop on; ants curved; dist 30
path	47.21,48.30	44.24,47.61	41.18,46.20	40.98,44.66	41.46,41.47
path	42.96,40.00	43.64,40.96	45.77,41.70	46.85,43.10	47.89,46.20
Kill Wooly Rhino enemies around along the path |notinsticky
|tip Skin their corpses. |notinsticky
collect 14 Borean Leather##33568 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip You will need 345 Skinning skill minimum to skin all of these mobs. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill.
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger. |notinsticky
'|goto Borean Tundra/0 47.89,46.20 < 30 |c |noway |or
'|complete skill("Engineering") >= 430 |or
step
map Borean Tundra/0
path follow smart; loop on; ants curved; dist 30
path	50.60,68.96	49.51,72.06	47.53,73.94	44.84,74.30	42.65,74.76
path	40.52,72.87	41.06,70.43	43.42,70.41	45.00,70.40	47.12,70.14
path	48.70,69.55	50.08,66.87
Kill Wooly Rhino enemies around along the path
|tip Skin their corpses.
collect 14 Borean Leather##33568 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip You will need 345 Skinning skill minimum to skin all of these mobs.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill.
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger.
'|goto Borean Tundra/0 50.08,66.87 < 30 |c |noway |next "Collect_Borean_Leather_430" |or
'|complete skill("Engineering") >= 430 |or
step
label "Collect_Saronite_Bar_430"
collect 56 Saronite Bar##36913 |or
|tip You collected these in a previous step. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill.
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger. |notinsticky
'|complete skill("Engineering") >= 430 |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Mechanized Snow Goggles |learn Mechanized Snow Goggles##61483 |goto Dalaran/1 38.49,25.82
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill.
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger.
step
create 7 Mechanized Snow Goggles##61483,Engineering,430 |or
|tip You may need to make more or less of these.
|tip Each additional Mechanized Snow Goggles requires 8 Saronite Bars, 2 Borean Leather, and 1 Eternal Shadow.
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill.
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger.
stickystart "Collect_Handful_of_Cobalt_Bolts_435"
stickystart "Collect_Overcharged_Capacitor_435"
step
collect 10 Froststeel Tube##39683 |or
|tip You created these in a previous step.
|tip Create more of them as needed if you didn't craft them all initially.
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill.
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger.
'|complete skill("Engineering") >= 435 |or
step
label "Collect_Handful_of_Cobalt_Bolts_435"
collect 40 Handful of Cobalt Bolts##39681 |or
|tip You created these in a previous step.
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill.
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger. |notinsticky
'|complete skill("Engineering") >= 435 |or
step
label "Collect_Overcharged_Capacitor_435"
collect 10 Overcharged Capacitor##39682 |or
|tip You created these in a previous step.
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill.
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger. |notinsticky
'|complete skill("Engineering") >= 435 |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Noise Machine |learn Noise Machine##56467 |goto Dalaran/1 38.49,25.82
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill.
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger.
step
create 5 Noise Machine##56467,Engineering,435 |or
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill.
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger.
stickystart "Collect_Saronite_Bar_450"
step
talk Ranid Glowergold##28718
|tip Inside the building.
buy 30 Skinning Knife##7005 |goto Dalaran/1 36.63,27.88 |or
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 450 |or
step
talk Bryan Landers##28722
|tip Inside the building.
buy 30 Mining Pick##2901 |goto Dalaran/1 38.94,24.53 |complete skill("Engineering") >= 450 |or 2
buy 30 Blacksmith Hammer##5956 |goto Dalaran/1 38.94,24.53 |complete skill("Engineering") >= 450 |or 2
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
step
label "Collect_Saronite_Bar_450"
collect 300 Saronite Bar##36913 |or
|tip You collected these in a previous step. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 450 |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Gnomish Army Knife |learn Gnomish Army Knife##56462 |goto Dalaran/1 38.49,25.82
step
create 30 Gnomish Army Knife##56462,Engineering,450
|tip You may need to make more or less of these.
|tip Each additional Gnomish Army Knife requires 10 Saronite Bars, 1 Skinning Knife, 1 Mining Pick, and 1 Blacksmith Hammer.
|tip At 448, make a Wormhole Generator: Northrend and your epic Engineering goggles if you intend to.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Cataclysm-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Engineering |confirm |next "Begin_Engineering_Leveling_Cataclysm" |or
'|complete skill("Engineering") >= 450 |only if default |or |next "Begin_Engineering_Leveling_Cataclysm"
stickystart "Collect_Obsidium_Bar_Total"
stickystart "Collect_Volatile_Earth_Total"
stickystart "Collect_Volatile_Air_Total"
stickystart "Collect_Elementium_Bar_Total"
stickystart "Collect_Volatile_Fire_Total"
stickystart "Collect_Alicite_Total"
stickystart "Collect_Hardened_Elementium_Total"
stickystart "Collect_Dream_Emerald_Total"
step
label "Collect_Obsidium_Bar_Total"
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	64.52,32.82	59.54,32.60	54.43,28.82	51.95,17.39	46.03,25.96
path	43.53,26.94	41.14,21.81	35.52,23.56	33.12,24.51	32.25,29.77
path	33.96,33.62	30.51,39.40	27.14,38.97	27.15,36.08	24.15,32.92
path	13.59,37.50	10.03,36.02	15.27,46.43	17.82,54.98	20.48,59.09
path	24.63,59.77	29.20,55.47	33.08,52.54	35.89,51.99	36.52,57.46
path	33.75,64.34	39.87,63.17	49.68,58.94	55.81,57.37	58.34,56.00
path	62.24,58.01	65.04,53.21	68.69,55.16	72.55,58.55	74.49,62.92
path	78.12,59.42	83.94,60.29	87.31,54.46	87.18,49.22	80.70,51.98
click Obsidium Deposit##202736+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 140 Obsidium Ore##53038 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 70 Obsidium Bar##54849 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 450 Mining skill to mine Obsidium Deposits |notinsticky
'|complete skill("Engineering") >= 495 |or
step
label "Collect_Alicite_Total"
collect 2 Alicite##52179
|tip Alicite can be gathered from prospecting or purchased from the auction house.
'|complete skill("Engineering") >= 470 |or
step
label "Collect_Volatile_Earth_Total"
map Mount Hyjal/0
path follow smart; loop on; ants curved
path	68.29,25.32	67.93,22.53	66.51,20.84	64.49,19.55	62.87,19.94
path	63.88,22.98	65.24,22.46	65.70,27.28	66.63,28.76
kill Scalding Rock Elemental##40229+
collect 48 Volatile Earth##52327
'|complete skill("Engineering") >= 495 |or
step
label "Collect_Volatile_Air_Total"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	39.56,47.29	41.39,48.90	41.53,46.16	39.76,44.61
kill Storm Vortex##47728+
collect 40 Volatile Air##52328 |or
|tip Or purchase them from the auction house |notinsticky
'|complete skill("Engineering") >= 460 |or
step
label "Collect_Elementium_Bar_Total"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
click Elementium Vein##202738+ |notinsticky
click Rich Elementium Vein##202741+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 176 Elementium Ore##52185 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 84 Elementium Bar##52186 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 500 Mining skill to mine Elementium Deposits |notinsticky
'|complete skill("Engineering") >= 525 |or
step
label "Collect_Volatile_Fire_Total"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 19 Volatile Fire##52325 |or
|tip Or purchase them from the auction house |notinsticky
'|complete skill("Engineering") >= 525 |or
step
label "Collect_Hardened_Elementium_Total"
collect 21 Hardened Elementium Bar##53039
|tip Hardened Elementium Bar is created by smelting 10 Elementium Bar and 4 Volatile Earth.
|tip Farm them using the Elementium Bar and Volatile Earth farming guides, or purchase them from the auction house.
'|complete skill("Engineering") >= 525 |or
step
label "Collect_Dream_Emerald_Total"
collect 6 Dream Emerald##52192
|tip Dream Emerald can be gathered from prospecting or purchased from the auction house.
'|complete skill("Engineering") >= 525 |or
step
label "Begin_Engineering_Leveling_Cataclysm"
talk Roxxik##11017
Train Illustrious Grand Master Engineering |skillmax Engineering,525 |goto Orgrimmar/1 56.37,56.50
|tip You must be at least level 75.
step
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	64.52,32.82	59.54,32.60	54.43,28.82	51.95,17.39	46.03,25.96
path	43.53,26.94	41.14,21.81	35.52,23.56	33.12,24.51	32.25,29.77
path	33.96,33.62	30.51,39.40	27.14,38.97	27.15,36.08	24.15,32.92
path	13.59,37.50	10.03,36.02	15.27,46.43	17.82,54.98	20.48,59.09
path	24.63,59.77	29.20,55.47	33.08,52.54	35.89,51.99	36.52,57.46
path	33.75,64.34	39.87,63.17	49.68,58.94	55.81,57.37	58.34,56.00
path	62.24,58.01	65.04,53.21	68.69,55.16	72.55,58.55	74.49,62.92
path	78.12,59.42	83.94,60.29	87.31,54.46	87.18,49.22	80.70,51.98
click Obsidium Deposit##202736+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 108 Obsidium Ore##53038 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 54 Obsidium Bar##54849 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 450 Mining skill to mine Obsidium Deposits |notinsticky
'|complete skill("Engineering") >= 465 |or
step
Open Your Engineering Crafting Panel:
_<Create 27 Handful of Obsidium Bolts>_
|tip Save them for later.
'|complete skill("Engineering") >= 465
step
talk Roxxik##11017
learn Electrified Ether##94748 |goto Orgrimmar/1 56.37,56.50
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	39.56,47.29	41.39,48.90	41.53,46.16	39.76,44.61
kill Storm Vortex##47728+
collect 40 Volatile Air##52328 |or
|tip Or purchase them from the auction house |notinsticky
'|complete skill("Engineering") >= 460 |or
step
Open Your Engineering Crafting Panel:
_<Create 20 Electrified Ether>_
|tip Save them for later.
Reach 460 Engineering |skill Engineering,460 |goto Orgrimmar/1 56.37,56.50
step
talk Roxxik##11017
learn R19 Threatfinder##84408 |goto Orgrimmar/1 56.37,56.50
stickystart "Alicite_470"
step
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	64.52,32.82	59.54,32.60	54.43,28.82	51.95,17.39	46.03,25.96
path	43.53,26.94	41.14,21.81	35.52,23.56	33.12,24.51	32.25,29.77
path	33.96,33.62	30.51,39.40	27.14,38.97	27.15,36.08	24.15,32.92
path	13.59,37.50	10.03,36.02	15.27,46.43	17.82,54.98	20.48,59.09
path	24.63,59.77	29.20,55.47	33.08,52.54	35.89,51.99	36.52,57.46
path	33.75,64.34	39.87,63.17	49.68,58.94	55.81,57.37	58.34,56.00
path	62.24,58.01	65.04,53.21	68.69,55.16	72.55,58.55	74.49,62.92
path	78.12,59.42	83.94,60.29	87.31,54.46	87.18,49.22	80.70,51.98
click Obsidium Deposit##202736+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 20 Obsidium Ore##53038 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 10 Obsidium Bar##54849 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 450 Mining skill to mine Obsidium Deposits |notinsticky
'|complete skill("Engineering") >= 470 |or
step
label "Alicite_470"
collect 2 Alicite##52179
|tip Alicite can be gathered from prospecting or purchased from the auction house.
'|complete skill("Engineering") >= 470 |or
step
Open Your Engineering Crafting Panel:
_<Create 2 R19 Threatfinder>_
|tip Each craft give 5 skill points
Reach 470 Engineering |skill Engineering,470 |goto Orgrimmar/1 56.37,56.50
step
talk Roxxik##11017
learn High-Powered Bolt Gun##84411 |goto Orgrimmar/1 56.37,56.50
step
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	64.52,32.82	59.54,32.60	54.43,28.82	51.95,17.39	46.03,25.96
path	43.53,26.94	41.14,21.81	35.52,23.56	33.12,24.51	32.25,29.77
path	33.96,33.62	30.51,39.40	27.14,38.97	27.15,36.08	24.15,32.92
path	13.59,37.50	10.03,36.02	15.27,46.43	17.82,54.98	20.48,59.09
path	24.63,59.77	29.20,55.47	33.08,52.54	35.89,51.99	36.52,57.46
path	33.75,64.34	39.87,63.17	49.68,58.94	55.81,57.37	58.34,56.00
path	62.24,58.01	65.04,53.21	68.69,55.16	72.55,58.55	74.49,62.92
path	78.12,59.42	83.94,60.29	87.31,54.46	87.18,49.22	80.70,51.98
click Obsidium Deposit##202736+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 24 Obsidium Ore##53038 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 12 Obsidium Bar##54849 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 450 Mining skill to mine Obsidium Deposits |notinsticky
'|complete skill("Engineering") >= 495 |or
step
Open Your Engineering Crafting Panel:
_<Create 1 High-Powered Bolt Gun>_
|tip Each craft gives 5 skill points.
Reach 475 Engineering |skill Engineering,475 |goto Orgrimmar/1 56.37,56.50
step
talk Roxxik##11017
learn Elementium Toolbox##84416 |goto Orgrimmar/1 56.37,56.50
stickystart "Volatile_Earth_495"
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
click Elementium Vein##202738+ |notinsticky
click Rich Elementium Vein##202741+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 120 Elementium Ore##52185 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 60 Elementium Bar##52186 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 500 Mining skill to mine Elementium Deposits |notinsticky
'|complete skill("Engineering") >= 495 |or
step
label "Volatile_Earth_495"
map Mount Hyjal/0
path follow smart; loop on; ants curved
path	68.29,25.32	67.93,22.53	66.51,20.84	64.49,19.55	62.87,19.94
path	63.88,22.98	65.24,22.46	65.70,27.28	66.63,28.76
kill Scalding Rock Elemental##40229+
collect 48 Volatile Earth##52327 |or
'|complete skill("Engineering") >= 495 |or
step
Open Your Engineering Crafting Panel:
_<Create 4 Elementium Toolbox>_
|tip Each craft gives 5 skill points
Reach 495 Engineering |skill Engineering,495 |goto Orgrimmar/1 56.37,56.50
step
talk Roxxik##11017
learn Finely-Tuned Throat Needler##84420 |goto Orgrimmar/1 56.37,56.50
stickystart "Hardened_Elementium_500"
step
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	64.52,32.82	59.54,32.60	54.43,28.82	51.95,17.39	46.03,25.96
path	43.53,26.94	41.14,21.81	35.52,23.56	33.12,24.51	32.25,29.77
path	33.96,33.62	30.51,39.40	27.14,38.97	27.15,36.08	24.15,32.92
path	13.59,37.50	10.03,36.02	15.27,46.43	17.82,54.98	20.48,59.09
path	24.63,59.77	29.20,55.47	33.08,52.54	35.89,51.99	36.52,57.46
path	33.75,64.34	39.87,63.17	49.68,58.94	55.81,57.37	58.34,56.00
path	62.24,58.01	65.04,53.21	68.69,55.16	72.55,58.55	74.49,62.92
path	78.12,59.42	83.94,60.29	87.31,54.46	87.18,49.22	80.70,51.98
click Obsidium Deposit##202736+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 8 Obsidium Ore##53038 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 4 Obsidium Bar##54849 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 450 Mining skill to mine Obsidium Deposits |notinsticky
'|complete skill("Engineering") >= 500 |or
step
label "Hardened_Elementium_500"
collect 5 Hardened Elementium Bar##53039
|tip Hardened Elementium Bar is created by smelting 10 Elementium Bar and 4 Volatile Earth.
|tip Farm them using the Elementium Bar and Volatile Earth farming guides, or purchase them from the auction house.
'|complete skill("Engineering") >= 500 |or
step
Open Your Engineering Crafting Panel:
_<Create 1 Finely-Tuned Throat Needler>_
|tip Each craft gives 5 skill points
Reach 500 Engineering |skill Engineering,500 |goto Orgrimmar/1 56.37,56.50
step
talk Roxxik##11017
learn Volatile Thunderstick##84417 |goto Orgrimmar/1 56.37,56.50
stickystart "Collect_Volatile_Fire_510"
step
collect 10 Hardened Elementium Bar##53039
|tip Hardened Elementium Bar is created by smelting 10 Elementium Bar and 4 Volatile Earth.
|tip Farm them using the Elementium Bar and Volatile Earth farming guides, or purchase them from the auction house.
'|complete skill("Engineering") >= 510 |or
step
label "Collect_Volatile_Fire_510"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 12 Volatile Fire##52325 |or
|tip Or purchase them from the auction house |notinsticky
'|complete skill("Engineering") >= 510 |or
step
Open Your Engineering Crafting Panel:
_<Create 2 Volatile Thunderstick>_
|tip Each craft gives 5 skill points
Reach 510 Engineering |skill Engineering,510 |goto Orgrimmar/1 56.37,56.50
step
talk Roxxik##11017
learn Heat-Treated Spinning Lure##84430 |goto Orgrimmar/1 56.37,56.50
stickystart "Collect_Volatile_Fire_515"
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
click Elementium Vein##202738+ |notinsticky
click Rich Elementium Vein##202741+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 120 Elementium Ore##52185 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 60 Elementium Bar##52186 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 500 Mining skill to mine Elementium Deposits |notinsticky
'|complete skill("Engineering") >= 515 |or
step
label "Collect_Volatile_Fire_515"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 7 Volatile Fire##52325 |or
|tip Or purchase them from the auction house |notinsticky
'|complete skill("Engineering") >= 515 |or
step
Open Your Engineering Crafting Panel:
_<Create 7 Heat-Treated Spinning Lure>_
Reach 515 Engineering |skill Engineering,515 |goto Orgrimmar/1 56.37,56.50
step
talk Roxxik##11017
learn Gnomish X-Ray Scope##84428 |goto Orgrimmar/1 56.37,56.50
stickystart "Collect_Dream_Emerald_525"
step
collect 6 Hardened Elementium Bar##53039
|tip Hardened Elementium Bar is created by smelting 10 Elementium Bar and 4 Volatile Earth.
|tip Farm them using the Elementium Bar and Volatile Earth farming guides, or purchase them from the auction house.
'|complete skill("Engineering") >= 525 |or
step
label "Collect_Dream_Emerald_525"
collect 6 Dream Emerald##52192
|tip Dream Emerald can be gathered from prospecting or purchased from the auction house.
'|complete skill("Engineering") >= 525 |or
step
Open Your Engineering Crafting Panel:
_<Create 3 Gnomish X-Ray Scope>_
|tip Each craft gives 5 skill points
Reach 525 Engineering |skill Engineering,525 |goto Orgrimmar/1 56.37,56.50
step
Reach Level 80 |ding 80
|tip You must be at least level 80 to train Zen Master professions.
|tip Use the leveling guides to accomplish this.
step
talk Roxxik##11017
Train Zen Master Engineering |skillmax Engineering,600 |goto Orgrimmar/1 75.19,24.59
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Pandaria materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Engineering |confirm |next "Begin_Profession_Leveling_Pandaria" |or
'|complete skill("Engineering") >= 500 |or |next "Begin_Profession_Leveling_Pandaria"
stickystart "Collect_Spirit_of_Harmony_Total"
step
collect 177 Ghost Iron Bar##72096 |or |usebank
|tip Ghost Iron Bars can be created with Mining or purchased from the auction house.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Ghost Iron"
'|complete skill("Engineering") >= 600
step
label "Collect_Spirit_of_Harmony_Total"
collect 10 Spirit of Harmony##76061 |or |usebank
|tip Spirit of Harmony#76061 can be created by combining 10 Motes of Harmony#89112.
|tip Mote of Harmony#89112 can drop from any mob in Pandaria at a low rate.
'|complete skill("Engineering") >= 600
step
label "Begin_Profession_Leveling_Pandaria"
talk Roxxik##11017
Train Ghost Iron Bolts |learn Ghost Iron Bolts##127113 |goto Orgrimmar/1 75.19,24.59
step
collect 141 Ghost Iron Bar##72096 |or |usebank
|tip Ghost Iron Bars can be created with Mining or purchased from the auction house.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Ghost Iron"
'|complete skill("Engineering") >= 600
step
create 47 Ghost Iron Bolts##127113,Blacksmithing,500 |goto Orgrimmar/1 75.19,24.59
|tip Stand next to an anvil inside the building.
'|complete skill("Blacksmithing") >= 500 |or
|tip You will need 94 Ghost Iron Bolts to reach 600 skill.
step
talk Roxxik##11017
Train High-Explosive Gunpowder |learn High-Explosive Gunpowder##127114 |goto Orgrimmar/1 75.19,24.59
step
collect 36 Ghost Iron Bar##72096 |or |usebank
|tip Ghost Iron Bars can be created with Mining or purchased from the auction house.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Ghost Iron"
'|complete skill("Engineering") >= 600
step
create 36 High-Explosive Gunpowder##127114,Blacksmithing,500 |goto Orgrimmar/1 75.19,24.59
|tip Stand next to an anvil inside the building.
'|complete skill("Blacksmithing") >= 550 |or
|tip You will need 72 High-Explosive Gunpowder to reach 600 skill.
step
talk Roxxik##11017
Train Thermal Anvil |learn Thermal Anvil##127131 |goto Orgrimmar/1 75.19,24.59
step
create 9 Thermal Anvil##127131,Blacksmithing,500 |goto Orgrimmar/1 75.19,24.59
|tip Stand next to an anvil inside the building.
'|complete skill("Blacksmithing") >= 575 |or
step
talk Roxxik##11017
Train Mist-Piercing Goggles |learn Mist-Piercing Goggles##127130 |goto Orgrimmar/1 75.19,24.59
step
collect 10 Spirit of Harmony##76061 |or |usebank
|tip Spirit of Harmony#76061 can be created by combining 10 Motes of Harmony#89112.
|tip Mote of Harmony#89112 can drop from any mob in Pandaria at a low rate.
'|complete skill("Engineering") >= 600
step
create 5 Mist-Piercing Goggles##127130,Blacksmithing,500 |goto Orgrimmar/1 75.19,24.59
|tip Stand next to an anvil inside the building.
'|complete skill("Blacksmithing") >= 600 |or
]])
QuestCore:RegisterGuide("Profession Guides\\First Aid\\Leveling Guides\\First Aid (1-600)",{
expansion="mists",
mopready=true,
author="QuestCore",
condition_suggested=function() return skill('First Aid') > 0 end,
description="This guide will walk you through leveling your First Aid skill from 1-600.",
},[[
step
talk Krenk Choplimb##45540
Train Apprentice First Aid |skillmax First Aid,75 |goto Orgrimmar/1 37.49,87.21
step
Inside Ragefire Chasm:
Kill Ragefire enemies throughout the dungeon
collect 170 Linen Cloth##2589 |or
|tip You can also purchase them from the Auction House.
|tip Save at least 120 of these, you will need them for future steps.
'|complete skill("First Aid") >= 40 |or
step
create 50 Linen Bandage##3275,First Aid,40
step
talk Krenk Choplimb##45540
Train Heavy Linen Bandage |learn Heavy Linen Bandage##3276 |goto Orgrimmar/1 37.49,87.21
step
collect 90 Linen Cloth##2589 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 70 |or
step
create 45 Heavy Linen Bandage##3276,First Aid,75
step
talk Krenk Choplimb##45540
Train Journeyman First Aid |skillmax First Aid,150 |goto Orgrimmar/1 37.49,87.21
step
collect 30 Linen Cloth##2589 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 80 |or
step
create 15 Heavy Linen Bandage##3276,First Aid,80
step
talk Krenk Choplimb##45540
Train Wool Bandage |learn Wool Bandage##3277 |goto Orgrimmar/1 37.49,87.21
step
Kill Venture Co. enemies around this area
|tip You can find more inside the mine.
collect 180 Wool Cloth##2592 |goto The Barrens/0 66.28,13.05 |or
|tip You can also purchase them from the Auction House.
|tip Save at least 120 of these, you will need them for future steps.
'|complete skill("First Aid") >= 115 |or
step
create 60 Wool Bandage##3277,First Aid,115
step
talk Krenk Choplimb##45540
Train Heavy Wool Bandage |learn Heavy Wool Bandage##3278 |goto Orgrimmar/1 37.49,87.21
step
collect 120 Wool Cloth##2592 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 150 |or
step
create 60 Heavy Wool Bandage##3278,First Aid,150
step
talk Krenk Choplimb##45540
Train Expert First Aid |skillmax First Aid,225 |goto Orgrimmar/1 37.49,87.21
step
talk Krenk Choplimb##45540
Train Silk Bandage |learn Silk Bandage##7928 |goto Orgrimmar/1 37.49,87.21
step
Kill Grimtotem enemies around this area
|tip You can find more inside the cave.
collect 150 Silk Cloth##4306 |goto Thousand Needles 13.26,5.84 |or
|tip You can also purchase them from the Auction House.
|tip Save at least 100 of these, you will need them for future steps.
'|complete skill("First Aid") >= 180 |or
step
create 50 Silk Bandage##7928,First Aid,180
step
talk Krenk Choplimb##45540
Train Heavy Silk Bandage |learn Heavy Silk Bandage##7929 |goto Orgrimmar/1 37.49,87.21
step
collect 100 Silk Cloth##4306 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 210 |or
step
create 50 Heavy Silk Bandage##7929,First Aid,210
step
talk Krenk Choplimb##45540
Train Mageweave Bandage |learn Mageweave Bandage##10840 |goto Orgrimmar/1 37.49,87.21
step
Kill Dunemaul enemies around this area
collect 120 Mageweave Cloth##4338 |goto Tanaris/0 40.50,55.50 |or
|tip You can also purchase them from the Auction House.
|tip Save at least 60 of these, you will need them for future steps.
'|complete skill("First Aid") >= 225 |or
step
create 60 Mageweave Bandage##10840,First Aid,240
step
talk Krenk Choplimb##45540
Train Artisan First Aid |skillmax First Aid,300 |goto Orgrimmar/1 37.49,87.21
step
talk Krenk Choplimb##45540
Train Heavy Mageweave Bandage |learn Heavy Mageweave Bandage##10841 |goto Orgrimmar/1 37.49,87.21
step
collect 60 Mageweave Cloth##4338 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 260 |or
step
create 30 Heavy Mageweave Bandage##10841,First Aid,260
step
Kill Twilight enemies around this area
collect 80 Runecloth###14047 |goto Silithus/0 39.28,44.89 |or
|tip Save at least 30 of these, you will need them for future steps.
You can find more around [25.57,33.48]
'|complete skill("First Aid") >= 290 |or
step
talk Krenk Choplimb##45540
Train Runecloth Bandage |learn Runecloth Bandage##18629 |goto Orgrimmar/1 37.49,87.21
step
create 50 Runecloth Bandage##18629,First Aid,290
step
collect 30 Runecloth###14047 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 300 |or
step
talk Krenk Choplimb##45540
Train Heavy Runecloth Bandage |learn Heavy Runecloth Bandage##18630 |goto Orgrimmar/1 37.49,87.21
step
create 15 Heavy Runecloth Bandage##18630,First Aid,300
step
talk Aresella##18991
|tip Inside the building.
Train Master First Aid |skillmax First Aid,375 |goto Hellfire Peninsula/0 26.2,62.0
step
talk Aresella##18991
|tip Inside the building.
Train Netherweave Bandage |learn Netherweave Bandage##27032 |goto Hellfire Peninsula/0 26.2,62.0
step
map Shadowmoon Valley/0
path follow smart; loop on; ants curved; dist 20
path	51.1,58.8	53.0,59.3	53.2,60.5	52.8,63.2	52.8,65.4
path	52.9,69.0	52.5,71.8	47.3,71.1	45.8,71.3	45.2,69.2
path	45.6,66.1	48.0,67.2
Kill enemies around this area
collect 70 Netherweave Cloth##21877 |or
|tip You can also purchase them from the Auction House.
|tip Save at least 20 of these, you will need them for future steps.
'|complete skill("First Aid") >= 340 |or
step
create 50 Netherweave Bandage##27032,First Aid,340
step
collect 20 Netherweave Cloth##21877 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 360 |or
step
talk Aresella##18991
|tip Inside the building.
Train Heavy Netherweave Bandage |learn Heavy Netherweave Bandage##27033 |goto Hellfire Peninsula/0 26.2,62.0
step
create 10 Heavy Netherweave Bandage##27033,First Aid,350
step
Enter the building |goto Dalaran/1 37.78,36.50 < 7 |walk
talk Olisarra the Kind##28706
|tip Inside the building.
Learn Grand Master First Aid |skillmax First Aid,450 |goto Dalaran/1 36.56,37.26
step
Enter the building |goto Dalaran/1 37.78,36.50 < 7 |walk
talk Olisarra the Kind##28706
|tip Inside the building.
Learn Frostweave Bandage |learn Frostweave Bandage##45545 |goto Dalaran/1 36.56,37.26
step
Collect 5 Gold |complete _G.GetMoney() >= 50000 |q 13272 |future
|tip You will need 5 gold to complete the quest to obtain Northrend Cloth Scavenging.
|tip This will increase your Frostweave Cloth drops.
'|only if skill("Tailoring") >= 325
step
talk Charles Worth##28699
|tip Inside the building.
accept Cloth Scavenging##13272 |goto Dalaran/1 36.14,33.55
|tip You will train Northrend Cloth Scavenging.
|tip This will increase your Frostweave Cloth drops.
'|only if skill("Tailoring") >= 325
step
kill Mjordin Combatant##30037+
|tip They will continuously respawn when you deplete their numbers.
collect 270 Frostweave Cloth##33470 |goto Icecrown/0 37.29,23.72 |or
|tip You can also purchase them from the Auction House.
|tip Save at least 180 of these, you will need them for future steps.
'|complete skill("First Aid") >= 400 |or
step
create 90 Frostweave Bandage##45545,First Aid,400
step
collect 180 Frostweave Cloth##33470 |goto Icecrown/0 37.29,23.72 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 450 |or
step
Kill Drakuru and Rageclaw enemies around this area
collect Manual: Heavy Frostweave Bandage##39152 |goto Zul'Drak/0 34.23,83.24 |or
|tip This will not drop unless your First Aid skill is at least 390.
'|complete knowspell(45546) |or
step
use the Manual: Heavy Frostweave Bandage##39152
Learn Heavy Frostweave Bandage |learn Heavy Frostweave Bandage##45546
step
create 90 Heavy Frostweave Bandage##45546,First Aid,450
step
talk Krenk Choplimb##45540
|tip Inside the building.
Train Illustrious Grand Master First Aid |skillmax First Aid,525 |goto Orgrimmar/1 37.49,87.21
|tip You must be atleast level 75 to learn Cataclysm First Aid.
step
talk Krenk Choplimb##45540
|tip Inside the building.
Train Embersilk Bandage |learn Embersilk Bandage##74556 |goto Orgrimmar/1 37.49,87.21
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 75 Embersilk Cloth##53010
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 475 |or
step
create 75 Embersilk Bandage##74556,First Aid,475
|tip This recipe goes green at 467, so you may need more or less cloth depending on skill ups.
step
talk Krenk Choplimb##45540
|tip Inside the building.
Train Heavy Embersilk Bandage |learn Heavy Embersilk Bandage##74557 |goto Orgrimmar/1 37.49,87.21
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 150 Embersilk Cloth##53010
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 525 |or
step
create 75 Heavy Embersilk Bandage##74557,First Aid,525
|tip This recipe goes green at 505, so you may need more or less cloth depending on skill ups.
step
Reach Level 80 |ding 80
|tip You must be at least level 80 to train Zen Master professions.
|tip Use the leveling guides to accomplish this.
step
talk Krenk Choplimb##45540
|tip Inside the building.
Train Zen Master First Aid |skillmax First Aid,600 |goto Orgrimmar/1 37.49,87.21
step
talk Krenk Choplimb##45540
|tip Inside the building.
Train Windwool Bandage |learn Windwool Bandage##102697 |goto Orgrimmar/1 37.49,87.21
step
collect 124 Windwool Cloth##72162 |or |usebank
|tip You can farm these from mobs in Pandaria or purchase them from the Auction House.
|loadguide "Profession Guides\\Tailoring\\Farming Guides\\Windwool Cloth"
'|complete skill("Tailoring") >= 555
step
create 49 Windwool Bandage##102697,First Aid,500
'|complete skill("First Aid") >= 550
step
talk Krenk Choplimb##45540
|tip Inside the building.
Train Heavy Windwool Bandage |learn Heavy Windwool Bandage##102698 |goto Orgrimmar/1 37.49,87.21
step
create 25 Heavy Windwool Bandage##102698,First Aid,500
'|complete skill("First Aid") >= 600
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Fishing (1-600)",{
expansion="mists",
mopready=true,
author="QuestCore",
condition_suggested=function() return skill('Fishing') > 0 end,
description="This guide will walk you through leveling your Fishing skill from 1-600.",
},[[
step
talk Lumak##3332
Train Apprentice Fishing |skillmax Fishing,75 |goto Orgrimmar/1 66.47,41.98
step
talk Shankys##3333
buy Fishing Pole##6256 |goto Orgrimmar/1 66.71,41.84 |or
|tip You need to be able to equip a fishing pole in order to fish.
'|complete skill("Fishing") >= 300 |or
step
talk Shankys##3333
buy 5 Shiny Bauble##6529 |goto Orgrimmar/1 66.71,41.84 |or
|tip These will allow you to catch fish easier.
'|complete skill("Fishing") >= 50 |or
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Orgrimmar/1 66.71,41.84 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 50 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Shiny Bauble##6529
|tip Use it on your Fishing Pole.
|tip It will grant you +25 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 50 in Fishing |skill Fishing,50 |goto Orgrimmar/1 66.71,41.84
step
talk Lumak##3332
Train Journeyman Fishing |skillmax Fishing,150 |goto Orgrimmar/1 66.47,41.98
step
talk Shankys##3333
buy 10 Nightcrawlers##6530 |goto Orgrimmar/1 66.71,41.84 |complete skill("Fishing") >= 125
buy 10 Bright Baubles##6532 |goto Orgrimmar/1 66.71,41.84 |complete skill("Fishing") >= 125
|tip These will allow you to catch fish easier.
step
talk Shankys##3333
buy Strong Fishing Pole##6365 |goto Orgrimmar/1 66.71,41.84 |or
|tip This is a limited supply item.
|tip If she doesn't have it for sale, check the Auction House.
|tip If you can't get one, you can skip this step.
'|complete skill("Fishing") >= 300 |or
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Orgrimmar/1 66.71,41.84 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Orgrimmar/1 66.71,41.84 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Orgrimmar/1 68.09,29.54 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 125 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Nightcrawlers##6530 |only if default
use the Bright Baubles##6532 |only if skill("Fishing") >= 100
|tip Use it on your Fishing Pole.
|tip It will grant you +50 Fishing skill for 10 minutes. |only if default
|tip It will grant you +75 Fishing skill for 10 minutes. |only if skill("Fishing") >= 100
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 125 in Fishing |skill Fishing,125 |goto Orgrimmar/1 66.71,41.84
step
talk Lumak##3332
Train Expert Fishing |skillmax Fishing,225 |goto Orgrimmar/1 66.47,41.98
step
talk Shankys##3333
buy 20 Bright Baubles##6532 |goto Orgrimmar/1 66.71,41.84 |or
|tip These will allow you to catch fish easier.
'|complete skill("Fishing") >= 200 |or
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto The Barrens/0 37.44,45.74 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto The Barrens/0 37.44,45.74 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto The Barrens/0 37.44,45.74 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto The Barrens/0 37.44,45.74 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto The Barrens/0 37.44,45.74 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto The Barrens/0 37.44,45.74 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto The Barrens/0 37.44,45.74 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto The Barrens/0 37.44,45.74 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto The Barrens/0 37.44,45.74 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto The Barrens/0 37.44,45.74 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto The Barrens/0 37.44,45.74 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 150 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 200 in Fishing |skill Fishing,200 |goto The Barrens/0 37.44,45.74
step
talk Lumak##3332
Train Artisan Fishing |skillmax Fishing,300 |goto Orgrimmar/1 66.47,41.98
step
talk Shankys##3333
buy 20 Bright Baubles##6532 |goto Orgrimmar/1 66.71,41.84 |or
|tip These will allow you to catch fish easier.
'|complete skill("Fishing") >= 300 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 275 in Fishing |skill Fishing,275 |goto Feralas/0 75.67,44.12
step
Click Here to Complete "Nat Pagle, Angler Extreme" |confirm
|tip This is optional and will award a +25 skill fishing pole.
|tip You will be required to fish 4 quest fish in different zones.
|tip The zones are Dustwallow Marsh, Feralas, Desolace, and Swamp of Sorrows.
Click Here to Skip This Quest |confirm |next "Reach_Skill_275"
|tip This quest can be safely skipped or done at a later time.
step
Cross the water |goto Dustwallow Marsh/0 66.54,55.09 < 30 |only if walking
talk Nat Pagle##12919
|tip On a small island in the water.
accept Nat Pagle, Angler Extreme##6607 |goto Dustwallow Marsh/0 58.55,60.21
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Feralas/0 62.38,52.50 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Feralas/0 62.38,52.50 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Feralas/0 62.38,52.50 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Feralas/0 62.38,52.50 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Feralas/0 62.38,52.50 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Feralas/0 62.38,52.50 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Feralas/0 62.38,52.50 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Feralas/0 62.38,52.50 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Feralas/0 62.38,52.50 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Feralas/0 62.38,52.50 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Feralas/0 62.38,52.50 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Feralas/0 62.38,52.50 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete completedq(6607,1) |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect Feralas Ahi##16967 |q 6607/1 |goto Feralas/0 62.38,52.50
|tip You will eventually catch one.
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Desolace/0 38.96,22.70 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Desolace/0 38.96,22.70 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Desolace/0 38.96,22.70 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Desolace/0 38.96,22.70 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Desolace/0 38.96,22.70 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Desolace/0 38.96,22.70 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Desolace/0 38.96,22.70 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Desolace/0 38.96,22.70 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Desolace/0 38.96,22.70 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Desolace/0 38.96,22.70 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Desolace/0 38.96,22.70 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Desolace/0 38.96,22.70 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete completedq(6607,3) |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect Sar'theris Striker##16968 |q 6607/3 |goto Desolace/0 36.30,33.40
|tip You will eventually catch one.
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto The Cape of Stranglethorn/0 39.47,66.91 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete completedq(6607,4) |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect Savage Coast Blue Sailfin##16969 |q 6607/4 |goto The Cape of Stranglethorn/0 39.47,66.91
|tip You will eventually catch one.
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Swamp of Sorrows/0 90.45,73.47 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Swamp of Sorrows/0 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Swamp of Sorrows/0 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Swamp of Sorrows/0 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Swamp of Sorrows/0 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Swamp of Sorrows/0 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Swamp of Sorrows/0 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Swamp of Sorrows/0 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Swamp of Sorrows/0 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Swamp of Sorrows/0 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Swamp of Sorrows/0 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Swamp of Sorrows/0 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete completedq(6607,2) |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect Misty Reed Mahi Mahi##16970 |q 6607/2 |goto Swamp of Sorrows/0 90.45,73.47
|tip You will eventually catch one.
step
Cross the water |goto Dustwallow Marsh/0 66.54,55.09 < 30 |only if walking
talk Nat Pagle##12919
|tip On a small island in the water.
turnin Nat Pagle, Angler Extreme##6607 |goto Dustwallow Marsh/0 58.55,60.21
step
label "Reach_Skill_275"
cast Fishing##33095
|tip Fish in the water.
|tip This spot is safe, but watch out for elites getting there.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 300 in Fishing |skill Fishing,300 |goto Feralas/0 49.98,14.57
step
Click Here to Level in Outland |confirm
|tip This route can be started at level 58, but provides less valuable fish.
Click Here to Level in Northrend Instead |confirm |next "Begin_Fishing_Northrend"
|tip You can fish in Wintergrasp from 300-450 and catch valuable fish.
|tip You will catch mostly junk until you reach 400 skill with bait applied.
step
talk Juno Dufrain##18911
Train Master Fishing |skillmax Fishing,375 |goto Zangarmarsh/0 78.05,66.09
step
talk Juno Dufrain##18911
buy 20 Bright Baubles##6532 |goto Zangarmarsh/0 78.05,66.09 |or
'|complete skill("Fishing") >= 375 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 350 in Fishing |skill Fishing,350 |goto Zangarmarsh/0 73.33,64.54
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 375 in Fishing |skill Fishing,375 |goto Terokkar Forest/0 39.95,14.44
step
label "Begin_Fishing_Northrend"
talk Marcia Chase##28742
Train Master Fishing |skillmax Fishing,375 |goto Dalaran/1 53.04,64.95
step
talk Marcia Chase##28742
buy 20 Bright Baubles##6532 |goto Dalaran/1 53.04,64.95 |or
'|complete skill("Fishing") >= 375 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 375 in Fishing |skill Fishing,375 |goto Wintergrasp/0 23.94,35.84
step
talk Marcia Chase##28742
Train Grand Master Fishing |skillmax Fishing,450 |goto Dalaran/1 53.04,64.95
step
talk Marcia Chase##28742
buy 20 Bright Baubles##6532 |goto Dalaran/1 53.04,64.95 |or
'|complete skill("Fishing") >= 300 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 450 in Fishing |skill Fishing,450 |goto Wintergrasp/0 23.94,35.84
step
talk Lumak##3332
Train Illustrious Grand Master Fishing |skillmax Fishing,525  |goto Orgrimmar/1 66.42,41.96
|tip You must be level 75 to train Cataclysm professions.
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach 525 Fishing |skill Fishing,525 |goto Mount Hyjal/0 62.95,26.60
step
Reach Level 80 |ding 80
|tip You must be at least level 80 to train Zen Master professions.
|tip Use the leveling guides to accomplish this.
step
talk Lumak##3332
Train Zen Master Fishing |skillmax Fishing,600 |goto Orgrimmar/1 66.42,41.96
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
|tip You can fish in any body of water that is convenient for you.
Reach 600 Fishing |skill Fishing,600 |goto Vale of Eternal Blossoms/0 69.9,27.7
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Herbalism (1-600)",{
expansion="mists",
mopready=true,
description="This guide will walk you through leveling 1-600 Herbalism",
},[[
step
talk Muraga##467418
Train Herbalism |skillmax Herbalism,75 |goto Orgrimmar/1 54.99,50.36
|tip She walks around the room inside the building
step
map Durotar/0
path follow smart; loop on; ants straight; dist 30
path	42.32,15.46	38.48,17.88	38.48,21.04	36.72,23.85	37.08,26.77
path	37.52,28.92	38.27,31.61	36.69,37.54	35.81,40.25	41.85,41.22
path	38.24,46.11	40.14,49.62	43.99,45.01	50.95,47.51	51.04,51.45
path	51.60,56.37	52.37,60.98	54.54,64.08	54.50,59.72	56.33,56.70
path	57.35,53.02	56.16,49.04	56.55,45.71	58.25,44.42	55.93,41.14
path	55.62,36.89	55.10,32.76	56.30,27.54	56.87,24.05	56.92,20.43
path	56.42,16.15	53.30,13.04	53.00,11.17	49.53,13.22
|tip Gather Peacebloom, Silverleaf, and Earthroot along the path.
click Peacebloom##1618+
click Silverleaf##1617+
click Earthroot##1619+
Reach Level 60 Herbalism |skill Herbalism,60
step
talk Muraga##46741
Train Journeyman Herbalism |skillmax Herbalism,150 |goto Orgrimmar/1 54.99,50.36
|tip She walks around the room inside the building
step
map The Barrens/0
path follow smart; loop on; ants straight; dist 30
path	66.63,12.04	59.22,17.42	55.62,18.76	55.16,19.61	53.05,25.68
path	56.62,32.61	58.31,35.92	51.93,35.34	49.02,36.86	48.54,42.53
path	46.28,45.82	42.95,48.35	39.95,49.12	33.87,50.00	35.19,52.18
path	39.36,57.99	36.99,66.92	40.41,72.74	43.36,70.65	46.29,69.81
path	48.36,74.04	52.36,70.51	53.51,74.82	57.12,78.65	60.72,77.37
path	63.22,78.21	66.36,77.65	63.34,66.93	65.08,62.95	70.51,60.28
path	66.71,53.97	64.65,54.15	61.56,49.66	58.75,47.58	55.22,48.61
|tip Gather Earthroot and Mageroyal along the path.
click Earthroot##1619+
click Mageroyal##1620+
Reach Level 70 Herbalism |skill Herbalism,70
step
map The Barrens/0
path follow smart; loop on; ants straight; dist 30
path	66.63,12.04	59.22,17.42	55.62,18.76	55.16,19.61	53.05,25.68
path	56.62,32.61	58.31,35.92	51.93,35.34	49.02,36.86	48.54,42.53
path	46.28,45.82	42.95,48.35	39.95,49.12	33.87,50.00	35.19,52.18
path	39.36,57.99	36.99,66.92	40.41,72.74	43.36,70.65	46.29,69.81
path	48.36,74.04	52.36,70.51	53.51,74.82	57.12,78.65	60.72,77.37
path	63.22,78.21	66.36,77.65	63.34,66.93	65.08,62.95	70.51,60.28
path	66.71,53.97	64.65,54.15	61.56,49.66	58.75,47.58	55.22,48.61
|tip Gather Briarthorn and Mageroyal along the path.
click Briarthorn##2450+
click Mageroyal##1620+
Reach Level 125 Herbalism |skill Herbalism,125
step
talk Muraga##46741
Train Expert Herbalism |skillmax Herbalism,225 |goto Orgrimmar/1 54.99,50.36
|tip She walks around the room inside the building
|tip You must be at least level 10 to learn Expert Herbalism. |only if level < 10
step
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	41.90,20.67	37.44,18.90	34.85,19.46	32.34,24.69	30.05,30.56
path	31.98,34.72	35.10,35.48	36.39,37.67	36.22,43.48	39.56,45.08
path	41.94,46.79	43.43,52.34	46.37,51.56	48.08,49.67	48.49,45.14
path	48.80,39.39	47.67,35.55	47.51,32.62	54.93,29.17	59.73,28.40
path	63.25,29.41	63.03,23.00	59.49,21.11	57.08,20.01	54.52,20.03
path	52.60,22.27	51.52,24.23	41.44,25.58
|tip Gather Kingsblood and Wild Steelbloom along the path.
click Kingsblood##3356+
click Wild Steelbloom##1623+
|tip At 150 you can start gathering Liferoot from along the river.
Reach Level 160 Herbalism |skill Herbalism,160
step
map The Cape of Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	49.45,10.57	48.12,15.04	49.07,18.49	46.62,19.50	42.69,17.68
path	43.11,22.88	41.16,27.28	44.83,34.99	45.80,43.54	40.95,44.14
path	37.46,47.35	37.28,51.60	39.19,56.20	42.32,61.61	45.84,65.53
path	47.45,61.68	47.26,57.65	49.85,55.73	50.58,49.54	49.59,41.91
path	51.92,33.55	53.22,31.69	54.47,27.92	58.38,28.73	62.17,31.34
path	62.14,27.41
|tip Gather Fadeleaf, Khadgar's Whisker and Goldthorn along this path.
click Fadeleaf##3818+
click Khadgar's Whisker##2043+
click Goldthorn##2046+
Reach Level 210 Herbalism |skill Herbalism,210
step
talk Muraga##46741
Train Artisan Herbalism |skillmax Herbalism,300 |goto Orgrimmar/1 54.99,50.36
|tip She walks around the room inside the building
|tip You must be at least level 25 to learn Artisan Herbalism. |only if level < 25
step
map Searing Gorge/0
path follow smart; loop on; ants straight; dist 30
path	37.00,41.10	30.85,44.01	29.87,50.40	31.28,58.18	31.09,64.17
path	31.15,68.86	34.68,68.60	39.43,73.19	45.08,66.57	47.38,61.80
path	52.13,67.88	56.85,61.86	58.61,56.17	63.23,64.32	64.76,55.47
path	65.92,46.59	67.62,37.32	59.23,35.66	48.34,38.83
|tip Gather Firebloom along this path.
click Firebloom##4625+
Reach Level 230 Herbalism |skill Herbalism,230
step
map Searing Gorge/0
path follow smart; loop on; ants straight; dist 30
path	37.00,41.10	30.85,44.01	29.87,50.40	31.28,58.18	31.09,64.17
path	31.15,68.86	34.68,68.60	39.43,73.19	45.08,66.57	47.38,61.80
path	52.13,67.88	56.85,61.86	58.61,56.17	63.23,64.32	64.76,55.47
path	65.92,46.59	67.62,37.32	59.23,35.66	48.34,38.83
|tip Gather Firebloom and Sungrass along this path.
click Firebloom##4625+
click Sungrass##176636+
Reach Level 260 Herbalism |skill Herbalism,260
step
map Felwood/0
path follow smart; loop on; ants curved; dist 30
path	48.25,74.18	45.57,71.52	45.19,67.93	44.99,64.81	43.75,63.75
path	42.60,61.94	42.10,60.44	42.52,58.39	42.19,55.80	42.12,53.77
path	42.52,51.99	42.46,49.04	43.22,46.66	42.28,45.26	43.25,43.10
path	44.86,43.11	46.09,41.05	45.72,36.88	46.03,33.95	47.65,33.39
path	51.14,32.99	51.89,29.81	53.84,27.92	55.31,24.24	55.39,22.27
path	45.98,22.93	52.60,22.73	51.41,24.65	50.01,21.04	46.67,25.21
path	43.76,23.67	42.49,24.58	40.74,26.31	41.42,27.63	41.25,30.12
path	40.28,31.55	39.63,32.74	40.28,34.49	39.88,36.76	39.02,41.56
path	38.95,44.99	40.65,46.99	39.91,49.88	39.07,53.19	38.83,55.66
path	39.72,58.29	41.23,59.18	41.60,60.63	42.10,62.62	41.71,64.52
path	40.58,65.26	40.40,68.00	39.31,70.23	39.26,71.58	41.53,72.75
path	41.89,74.07	40.92,76.49	41.72,78.38	43.01,80.29	44.69,81.19
path	45.84,83.32	47.74,82.92	49.87,80.73
|tip Gather Gromsblood and Golden Sansam along this path.
click Gromsblood##142145+
click Golden Sansam##176583+
|tip Gather Dreamfoil at 270 as well
Reach Level 280 Herbalism |skill Herbalism,280
step
map Winterspring/0
path follow smart; loop on; ants straight; dist 30
path	22.42,57.71	22.19,61.90	24.41,62.07	25.90,57.83	28.15,57.73
path	30.01,58.79	33.34,59.63	36.12,58.61	37.72,57.57	41.87,53.30
path	42.37,56.65	47.15,60.90	49.65,58.66	52.13,58.02	53.47,63.96
path	53.44,67.10	55.13,69.75	55.67,73.09	55.70,76.15	57.96,75.83
path	60.19,72.78	61.19,69.92	61.14,67.07	61.38,62.85	62.74,61.72
path	65.10,60.73	67.03,61.17	67.14,57.10	66.70,52.77	65.40,50.58
path	63.77,49.22	65.55,45.93	68.20,45.58	68.56,43.10	67.70,40.22
path	67.74,37.68	66.91,35.23	67.08,32.77	66.70,30.51	65.97,26.46
path	64.59,29.09	62.41,31.24	60.89,31.57	59.82,29.78	58.81,27.51
path	59.22,24.40	59.88,22.11	57.63,18.43	54.82,19.50	52.66,18.83
path	49.90,18.51	48.92,14.84	46.77,13.89	44.89,14.63	44.82,16.63
path	44.90,19.96	44.89,22.91	45.39,25.33	46.78,29.13	47.65,32.26
path	47.37,33.81	48.66,37.63	48.80,42.57	48.06,44.53	44.26,47.48
path	42.29,46.73	40.02,46.26	38.31,45.75	35.60,47.41	31.24,47.64
path	27.43,47.39	25.05,46.58
|tip Gather Mountain Silversage along this path.
click Mountain Silversage##176586+
click Icecap##176588+
Reach Level 300 Herbalism |skill Herbalism,300
step
talk Muraga##46741
Train Master Herbalism |skillmax Herbalism,375 |goto Orgrimmar/1 54.99,50.36
|tip She walks around the room inside the building
|tip You must be at least level 40 to learn Master Herbalism. |only if level < 40
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
Reach Level 315 Herbalism |skill Herbalism,315
step
map Nagrand/0
path follow smart; loop on; ants straight; dist 30
path	73.74,55.38	71.51,57.49	71.51,61.00	74.67,63.28	75.05,67.93
path	75.00,69.36	74.71,71.83	72.26,73.84	70.34,76.16	71.17,78.66
path	67.46,75.67	67.01,73.43	65.67,70.00	62.51,74.78	59.20,72.11
path	57.98,68.35	59.35,65.14	58.76,60.69	57.55,56.52	55.56,57.85
path	51.66,60.42	49.73,61.20	49.91,67.46	48.17,69.91	45.96,67.39
path	44.50,70.51	42.62,70.55	40.94,71.99	39.26,77.58	35.82,76.93
path	32.40,75.32	30.49,72.19	32.35,69.48	33.86,67.30	34.51,64.49
path	32.65,61.72	28.70,60.83	26.80,56.13	23.10,54.53	22.95,54.34
path	21.30,50.23	22.32,45.77	27.38,40.65	30.02,37.64	30.91,33.55
path	32.43,32.10	33.38,27.86	36.77,24.78	39.86,24.33	40.09,22.13
path	41.89,22.68	44.55,26.87	46.66,26.77	47.66,23.71	49.19,22.59
path	51.90,22.15	51.16,29.01	52.21,30.91	50.37,38.57	48.03,43.27
path	49.18,47.27	52.27,46.65	53.97,47.44	58.03,46.11	59.60,43.60
path	62.80,41.81	66.80,40.73	69.47,45.77	71.27,47.04
|tip Gather Felweed along this path
click Felweed##181270+
click Dreaming Glory##181271+
Reach Level 325 Herbalism |skill Herbalism,325
step
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
|tip Gather Terocone and other herbs along the path.
Reach Level 350 Herbalism |skill Herbalism,350
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
Reach Level 375 Herbalism |skill Herbalism,375
step
talk Muraga##46741
Train Grand Master Herbalism |skillmax Herbalism,450 |goto Orgrimmar/1 54.99,50.36
|tip She walks around the room inside the building
|tip You must be at least level 55 to learn Grand Master Herbalism. |only if level < 55
step
map Howling Fjord/0
path follow smart; loop on; ants straight; dist 30
path	28.32,9.45	26.89,7.87
map Grizzly Hills
path	34.30,81.36
map Howling Fjord
path	24.38,14.17	27.59,18.66	28.51,21.97	28.47,25.41	27.25,29.28
path	29.21,31.96	31.02,33.50	32.75,33.13	34.65,34.63	39.17,33.19
path	41.20,34.00	42.30,28.24	43.86,27.95	44.60,29.76	47.05,29.52
path	48.37,29.95	49.43,34.95	50.68,33.99	52.23,32.35	53.73,32.24
path	55.99,36.28	57.37,37.11	58.94,38.82	51.52,42.42	47.37,42.65
path	45.21,42.41	43.48,43.14	41.04,40.53	37.50,40.00	37.15,44.48
path	35.33,46.41	34.64,50.52	36.59,52.85	39.34,54.24	46.33,53.51
path	46.60,50.54	48.34,48.40	50.70,48.46	52.29,51.37	53.00,55.99
path	51.29,58.81	49.26,62.45	46.78,71.23	48.76,72.20	52.81,71.77
path	53.69,75.28	56.26,75.89	61.22,80.50	66.72,74.20	69.10,74.68
path	70.02,72.41	70.08,69.89	70.63,66.92	73.14,66.67	76.45,67.80
path	76.65,64.02	75.76,60.81	73.48,58.67	72.44,55.06	75.72,51.02
path	78.83,49.70	80.48,46.73	78.94,45.06	76.53,43.20	74.27,44.13
path	72.64,42.52	70.62,40.65	70.40,34.94	70.44,32.87	70.65,28.32
path	69.75,24.84	69.72,22.42	70.12,19.08	68.38,19.94	65.57,24.57
path	63.35,27.37	61.53,28.13	59.26,26.03	58.29,23.98	56.01,20.08
path	52.69,18.20	50.68,16.74	49.14,18.22	45.76,22.17	42.21,23.86
path	39.89,23.58	35.69,22.56
|tip Gather Goldclover and Tiger Lily along the path.
click Goldclover##189973+
click Tiger Lily##190169+
Reach Level 400 Herbalism |skill Herbalism,400
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
Reach Level 435 Herbalism |skill Herbalism,435
step
talk Muraga##46741
Train Illustrious Grand Master Herbalism |skillmax Herbalism,525 |goto Orgrimmar/1 54.99,50.36
|tip She walks around the room inside the building
|tip You must be at least level 75 to learn Illustrious Grand Master Herbalism. |only if level < 75
step
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
Reach Level 500 Herbalism |skill Herbalism,500
step
talk Grower Miao##66980
Train Zen Master Herbalism |skillmax Herbalism,600 |goto The Jade Forest/0 27.79,15.53
|tip You must be at least level 80.
step
map The Jade Forest/0
path follow strictbounce; loop off; ants curved; dist 30
path	30.96,15.27	30.12,18.71	29.45,22.30	29.04,26.58	29.55,30.35
path	30.95,33.00	31.95,35.68	33.30,37.92	35.24,38.99	37.60,39.51
path	39.18,39.31	42.05,37.52	44.38,35.96	45.74,34.01	47.42,30.41
path	50.56,30.49	52.85,33.06	54.01,35.54	53.48,38.95	51.13,40.35
path	49.59,39.98	47.22,39.85	44.00,39.80	41.43,40.54	38.15,45.25
Collect herbs along the path
|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
Reach 525 Herbalism |skill Herbalism,525
step
map The Jade Forest/0
path follow smart; loop on; ants curved; dist 30
path	37.23,46.91	38.09,49.98	39.13,52.36	41.00,53.42	42.55,54.57
path	43.48,58.48	43.96,62.91	45.74,64.62	49.06,65.24	51.81,63.28
path	51.74,60.57	50.41,57.77	47.17,57.56	45.27,54.03	43.66,49.29
Collect herbs along the path
|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
Reach 545 Herbalism |skill Herbalism,545
step
map Valley of the Four Winds/0
path follow smart; loop on; ants curved; dist 30
path	85.95,23.04	86.12,32.29	79.98,38.66	75.75,44.40	72.83,52.62
path	69.05,59.77	64.70,66.39	57.77,72.38	51.07,70.05	44.73,70.56
path	36.49,74.27	33.42,78.40	30.68,76.24	30.32,69.62	32.03,57.19
path	32.14,51.66	35.07,41.85	36.11,33.68	37.28,31.96	40.17,36.36
path	41.52,37.80	45.39,35.05	50.97,29.46	53.49,32.97	54.92,38.78
path	57.35,43.71	60.34,40.37	59.47,33.45	59.15,28.16	60.81,26.07
path	63.27,28.55	64.56,33.17	66.59,31.91	66.56,26.58	72.39,24.91
path	79.59,22.21	83.47,19.35
Collect herbs along the path
|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
Reach 575 Herbalism |skill Herbalism,575
step
map Kun-Lai Summit/0
path follow smart; loop on; ants curved; dist 30
path	59.72,56.78	56.75,53.76	54.95,53.31	53.58,52.97	52.60,54.61
path	53.43,58.65	54.42,62.34	54.21,65.06	53.47,66.03	52.28,64.71
path	50.69,61.06	49.32,59.44	47.63,57.93	46.24,55.30	45.51,58.22
path	45.68,64.22	46.27,69.07	46.10,72.21	43.25,73.98	41.82,74.67
path	39.93,78.44	37.05,80.06	36.37,76.87	37.21,73.40	38.22,70.14
path	37.29,67.35	36.47,65.02	38.47,63.17	41.30,62.41	41.85,60.35
path	40.81,58.93	37.48,59.09	35.08,58.00	34.65,54.04	34.62,50.21
path	37.47,51.49	39.10,52.36	39.66,46.47	39.59,41.30	41.66,40.49
path	42.37,44.95	42.35,46.40	45.66,46.31	47.19,46.56	49.73,50.69
path	50.94,50.92	51.52,48.72	53.71,45.99	57.25,42.17	58.01,45.03
path	57.86,48.76	58.86,53.46
Collect herbs along the path
|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
Reach 600 Herbalism |skill Herbalism,600
]])
QuestCore:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Inscription (1-600)",{
expansion="mists",
mopready=true,
author="QuestCore",
condition_suggested=function() return skill('Inscription') > 0 end,
description="This guide will walk you through leveling your Inscription skill from 1-600.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Nerog##46716
|tip Inside the building.
Train Apprentice Inscription |skillmax Inscription,75 |goto Orgrimmar/1 55.24,55.80
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Classic-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Inscription |confirm |next "Begin_Profession_Leveling_Classic" |or
'|complete skill("Inscription") >= 300 |or |next "Begin_Profession_Leveling_Classic"
stickystart "Collect_Dusky_Pigment_Total"
stickystart "Collect_Golden_Pigment_Total"
stickystart "Collect_Emerald_Pigment_Total"
stickystart "Collect_Violet_Pigment_Total"
stickystart "Collect_Silvery_Pigment_Total"
step
map Tirisfal Glades
path follow smart; loop on; ants curved; dist 20
path	51.54,54.24	50.24,56.05	47.60,53.12	45.65,51.89	46.96,47.83
path	44.74,46.19	42.79,42.59	41.45,40.79	39.11,40.30	38.92,43.20
path	38.50,46.14	36.48,47.41	34.54,48.14	32.02,48.17	31.72,50.34
path	33.92,51.19	37.36,51.84	38.60,52.08	39.77,54.03	40.68,58.21
path	40.92,60.80	41.92,63.49	44.02,65.29	46.57,66.37	49.11,67.48
path	50.44,66.83	51.57,64.64	54.10,62.49	56.28,59.15	56.53,55.12
path	53.81,53.15	52.04,54.99
click Peacebloom##1618+
|tip They look like small white flowers on the ground along the path.
click Silverleaf##1617+ |notinsticky
|tip They look like bushy blue and green plants on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 62 Alabaster Pigment##39151 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Alabaster Pigment can be Milled from Earthroot, Peacebloom, and Silverleaf.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Inscription") >= 53 |or
step
label "Collect_Dusky_Pigment_Total"
map The Barrens/0
path follow smart; loop on; ants straight; dist 30
path	39.36,57.49	34.89,52.89	33.36,50.00	30.07,47.72	29.91,44.17
path	33.29,42.12	35.45,40.82	36.33,37.91	36.65,35.15	35.37,32.30
path	48.42,29.59	50.71,27.22	53.27,25.57	55.42,23.27	55.79,19.31
path	58.97,17.65	66.68,12.45	64.37,22.75	62.88,34.68	59.08,35.10
path	56.55,32.56	53.15,34.00	48.57,41.78	46.26,46.30	53.57,56.68
path	55.00,54.38	55.22,48.55	59.06,47.80	61.38,49.96	64.29,54.33
path	64.83,59.12	65.14,62.68	63.50,66.84	63.61,77.85	60.59,76.48
path	53.29,73.51	51.63,71.03	43.14,70.39
click Mageroyal##1620+ |notinsticky
|tip They look like bushy pink flowers on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 42 Dusky Pigment##39334 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house. |notinsticky
|tip Dusky Pigment can be Milled from Briarthorn, Bruiseweed, Mageroyal, Stranglekelp, and Swiftthistle. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Inscription") >= 80 |or
step
label "Collect_Golden_Pigment_Total"
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	46.75,25.55	51.58,29.02	56.21,30.36	59.67,33.23	62.46,34.02
path	61.92,38.94	58.55,43.68	56.51,48.27	44.88,34.82	41.25,33.98
path	35.44,31.57	31.52,36.24	26.99,34.94	18.37,36.35	13.78,37.41
path	14.84,33.80	18.22,32.79	19.10,26.35	21.55,27.19	24.28,28.73
path	27.93,30.36	32.61,27.99	35.45,24.60	38.43,23.41	40.84,24.23
click Kingsblood##1624+ |notinsticky
|tip They look like bushy purple, pink, and green plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 80 Golden Pigment##39338 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house. |notinsticky
|tip Golden Pigment can be Milled from Grave Moss, Kingsblood, Liferoot, and Wild Steelbloom. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Inscription") >= 105 |or
step
label "Collect_Emerald_Pigment_Total"
map Western Plaguelands/0
path follow smart; loop on; ants curved; dist 60
path	31.87,59.33	36.90,57.16	43.53,53.27	45.91,44.70	45.21,35.23
path	49.51,35.12	51.02,47.42	55.22,51.34	61.82,52.02	67.25,44.52
path	63.60,56.06	56.61,60.11	52.61,67.55	46.40,59.23	37.91,62.21
path	33.73,62.71
click Khadgar's Whisker##2043+ |notinsticky
|tip They look like clumps of gold and green grass on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 94 Emerald Pigment##39339 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house. |notinsticky
|tip Emerald Pigment can be Milled from Fadeleaf, Goldthorn, Khadgar's Whisker, and Wintersbite. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Inscription") >= 155 |or
step
label "Collect_Violet_Pigment_Total"
map Felwood/0
path follow smart; loop on; ants curved; dist 30
path	48.25,74.18	45.57,71.52	45.19,67.93	44.99,64.81	43.75,63.75
path	42.60,61.94	42.10,60.44	42.52,58.39	42.19,55.80	42.12,53.77
path	42.52,51.99	42.46,49.04	43.22,46.66	42.28,45.26	43.25,43.10
path	44.86,43.11	46.09,41.05	45.72,36.88	46.03,33.95	47.65,33.39
path	51.14,32.99	51.89,29.81	53.84,27.92	55.31,24.24	55.39,22.27
path	45.98,22.93	52.60,22.73	51.41,24.65	50.01,21.04	46.67,25.21
path	43.76,23.67	42.49,24.58	40.74,26.31	41.42,27.63	41.25,30.12
path	40.28,31.55	39.63,32.74	40.28,34.49	39.88,36.76	39.02,41.56
path	38.95,44.99	40.65,46.99	39.91,49.88	39.07,53.19	38.83,55.66
path	39.72,58.29	41.23,59.18	41.60,60.63	42.10,62.62	41.71,64.52
path	40.58,65.26	40.40,68.00	39.31,70.23	39.26,71.58	41.53,72.75
path	41.89,74.07	40.92,76.49	41.72,78.38	43.01,80.29	44.69,81.19
path	45.84,83.32	47.74,82.92	49.87,80.73
click Gromsblood##142145+ |notinsticky
|tip They look like purple and green weeds on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
|tip You will need level 250 Herbalism to gather these. |notinsticky
collect 110 Violet Pigment##39340 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house. |notinsticky
|tip Violet Pigment can be Milled from Blindweed, Firebloom, Ghost Mushroom, Gromsblood, Purple Lotus, and Sungrass. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Inscription") >= 205 |or
step
label "Collect_Silvery_Pigment_Total"
map Winterspring
path follow smart; loop on; ants curved; dist 20
path	51.15,36.38	49.02,37.97	47.29,38.82	46.26,37.85	44.98,36.98
path	43.34,37.35	42.00,36.66	40.04,36.95	37.55,36.29	37.03,38.50
path	37.04,40.67	36.22,41.42	34.89,40.49	32.81,37.93	31.53,36.07
path	29.97,36.02	29.97,39.23	29.90,42.23	30.63,44.36	31.61,44.78
path	32.31,44.29	34.16,43.86	34.79,42.97	35.73,43.41	36.55,44.20
path	37.95,44.18	40.05,43.83	41.97,43.60	43.29,44.09	44.44,42.87
path	45.25,41.37	45.82,40.53	46.38,39.95	47.29,40.48	48.43,42.60
path	49.89,44.73	50.67,45.63	52.44,46.41	53.08,44.56	53.42,43.72
path	55.09,43.38	56.62,42.13	57.86,40.63	58.81,39.07	58.04,36.73
path	56.38,36.22	54.08,33.77
click Icecap##176588+ |notinsticky
|tip They look like plants topped with white balls on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
|tip You will need level 290 Herbalism to gather these. |notinsticky
collect 120 Silvery Pigment##39341 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house. |notinsticky
|tip Silvery Pigment can be Milled from Dreamfoil, Golden Sansam, Icecap, Mountain Silversage, and Plaguebloom. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip If you receive Sapphire Pigment from Milling, you will need less of these. |notinsticky
'|complete skill("Inscription") >= 255 |or
step
label "Begin_Profession_Leveling_Classic"
map Tirisfal Glades
path follow smart; loop on; ants curved; dist 20
path	51.54,54.24	50.24,56.05	47.60,53.12	45.65,51.89	46.96,47.83
path	44.74,46.19	42.79,42.59	41.45,40.79	39.11,40.30	38.92,43.20
path	38.50,46.14	36.48,47.41	34.54,48.14	32.02,48.17	31.72,50.34
path	33.92,51.19	37.36,51.84	38.60,52.08	39.77,54.03	40.68,58.21
path	40.92,60.80	41.92,63.49	44.02,65.29	46.57,66.37	49.11,67.48
path	50.44,66.83	51.57,64.64	54.10,62.49	56.28,59.15	56.53,55.12
path	53.81,53.15	52.04,54.99
click Peacebloom##1618+
|tip They look like small white flowers on the ground along the path.
click Silverleaf##1617+ |notinsticky
|tip They look like bushy blue and green plants on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 62 Alabaster Pigment##39151 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Alabaster Pigment can be Milled from Earthroot, Peacebloom, and Silverleaf.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Inscription") >= 19 |or
step
talk Moraka##46718
|tip Inside the building.
buy 1 Virtuoso Inking Set##39505 |goto Orgrimmar/1 55.24,55.80 |or
'|complete skill("Inscription") >= 19 |or
step
talk Nerog##46716
|tip Inside the building.
Train Ivory Ink |learn Ivory Ink##52738 |goto Orgrimmar/1 55.24,55.80
step
create 18 Ivory Ink##52738,Inscription,18 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Inscription") >= 19 |or
step
create 1 Ivory Ink##52738,Inscription,19
|tip Save at least 18 of these; you will need them for future steps.
step
collect 16 Ivory Ink##37101 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 35 |or
step
talk Moraka##46718
buy 16 Light Parchment##39354 |goto Orgrimmar/1 55.24,55.80 |or
'|complete skill("Inscription") >= 35 |or
step
talk Nerog##46716
|tip Inside the building.
Train Scroll of Stamina |learn Scroll of Stamina##45382 |goto Orgrimmar/1 55.24,55.80
step
create 16 Scroll of Stamina##45382,Inscription,35
|tip You may need to create more or less of these.
|tip Each additional Scroll of Stamina requires 1 Ivory Ink and 1 Light Parchment.
step
collect 44 Alabaster Pigment##39151 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 53 |or
step
talk Nerog##46716
|tip Inside the building.
Train Moonglow Ink |learn Moonglow Ink##52843 |goto Orgrimmar/1 55.24,55.80
step
create 22 Moonglow Ink##52843,Inscription,53
|tip Save at least 22 of these; you will need them for future steps.
step
collect 22 Moonglow Ink##39469 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 75 |or
step
talk Moraka##46718
buy 44 Light Parchment##39354 |goto Orgrimmar/1 55.24,55.80 |or
'|complete skill("Inscription") >= 75 |or
step
talk Nerog##46716
|tip Inside the building.
Train Armor Vellum |learn Armor Vellum##52739 |goto Orgrimmar/1 55.24,55.80
step
create 22 Armor Vellum##52739,Inscription,75
|tip You may need to create more or less of these.
|tip Each additional Armor Vellum requires 1 Moonglow Ink and 2 Light Parchment.
|tip Save these and place high-value enchants on them.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Nerog##46716
|tip Inside the building.
Train Journeyman Inscription |skillmax Inscription,150 |goto Orgrimmar/1 55.24,55.80
step
talk Nerog##46716
|tip Inside the building.
Train Midnight Ink |learn Midnight Ink##53462 |goto Orgrimmar/1 55.24,55.80
step
map The Barrens/0
path follow smart; loop on; ants straight; dist 30
path	39.36,57.49	34.89,52.89	33.36,50.00	30.07,47.72	29.91,44.17
path	33.29,42.12	35.45,40.82	36.33,37.91	36.65,35.15	35.37,32.30
path	48.42,29.59	50.71,27.22	53.27,25.57	55.42,23.27	55.79,19.31
path	58.97,17.65	66.68,12.45	64.37,22.75	62.88,34.68	59.08,35.10
path	56.55,32.56	53.15,34.00	48.57,41.78	46.26,46.30	53.57,56.68
path	55.00,54.38	55.22,48.55	59.06,47.80	61.38,49.96	64.29,54.33
path	64.83,59.12	65.14,62.68	63.50,66.84	63.61,77.85	60.59,76.48
path	53.29,73.51	51.63,71.03	43.14,70.39
click Mageroyal##1620+
|tip They look like bushy pink flowers on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 42 Dusky Pigment##39334 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Dusky Pigment can be Milled from Briarthorn, Bruiseweed, Mageroyal, Stranglekelp, and Swiftthistle.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Inscription") >= 80 |or
step
create 21 Midnight Ink##53462,Inscription,80
|tip You may need to create more or less of these.
|tip Each additional Midnight Ink requires 2 Dusky Pigment.
step
collect 21 Midnight Ink##39774 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 100 |or
step
talk Moraka##46718
buy 20 Light Parchment##39354 |goto Orgrimmar/1 55.24,55.80 |or
'|complete skill("Inscription") >= 100 |or
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 20 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 100 Inscription Skill |skill Inscription,100
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	46.75,25.55	51.58,29.02	56.21,30.36	59.67,33.23	62.46,34.02
path	61.92,38.94	58.55,43.68	56.51,48.27	44.88,34.82	41.25,33.98
path	35.44,31.57	31.52,36.24	26.99,34.94	18.37,36.35	13.78,37.41
path	14.84,33.80	18.22,32.79	19.10,26.35	21.55,27.19	24.28,28.73
path	27.93,30.36	32.61,27.99	35.45,24.60	38.43,23.41	40.84,24.23
click Kingsblood##1624+
|tip They look like bushy purple, pink, and green plants on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 80 Golden Pigment##39338 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Golden Pigment can be Milled from Grave Moss, Kingsblood, Liferoot, and Wild Steelbloom.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Inscription") >= 105 |or
step
talk Nerog##46716
|tip Inside the building.
Train Lion's Ink |learn Lion's Ink##57704 |goto Orgrimmar/1 55.24,55.80
step
create 40 Lion's Ink##57704,Inscription,40 total
|tip Save these, you will need them for future steps.
step
create 1 Lion's Ink##57704,Inscription,105
|tip You may need to create more or less of these.
|tip Each additional Lion's Ink requires 2 Dusky Pigment.
step
collect 20 Lion's Ink##43116 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 125 |or
step
talk Moraka##46718
buy 20 Common Parchment##10648 |goto Orgrimmar/1 55.24,55.80 |or
'|complete skill("Inscription") >= 125 |or
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 20 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 125 Inscription Skill |skill Inscription,125
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Nerog##46716
|tip Inside the building.
Train Expert Inscription |skillmax Inscription,225 |goto Orgrimmar/1 55.24,55.80
|tip Also train any orange-difficulty glyphs you would like to make.
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 20 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 130 Inscription Skill |skill Inscription,130
|tip If you have any Burnt Pigment, you can turn it into Dawnstar Ink for points first.
step
collect 17 Lion's Ink##43116 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 147 |or
step
talk Moraka##46718
buy 17 Common Parchment##10648 |goto Orgrimmar/1 55.24,55.80 |or
'|complete skill("Inscription") >= 147 |or
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 17 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 147 Inscription Skill |skill Inscription,147
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 17 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 150 Inscription Skill |skill Inscription,150
|tip If you made Dawnstar Ink, make Strange Tarot cards instead.
step
label "Collect_Emerald_Pigment_155"
map Western Plaguelands/0
path follow smart; loop on; ants curved; dist 60
path	31.87,59.33	36.90,57.16	43.53,53.27	45.91,44.70	45.21,35.23
path	49.51,35.12	51.02,47.42	55.22,51.34	61.82,52.02	67.25,44.52
path	63.60,56.06	56.61,60.11	52.61,67.55	46.40,59.23	37.91,62.21
path	33.73,62.71
click Khadgar's Whisker##2043+
|tip They look like clumps of gold and green grass on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 94 Emerald Pigment##39339 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Emerald Pigment can be Milled from Fadeleaf, Goldthorn, Khadgar's Whisker, and Wintersbite.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Inscription") >= 155 |or
step
talk Nerog##46716
|tip Inside the building.
Train Jadefire Ink |learn Jadefire Ink##57707 |goto Orgrimmar/1 55.24,55.80
step
create 47 Jadefire Ink##57707,Inscription,47 total
|tip Save these, you will need them for future steps.
step
create 1 Jadefire Ink##57707,Inscription,155
|tip You may need to create more or less of these.
|tip Each additional Jadefire Ink requires 2 Emerald Pigment.
step
collect 40 Jadefire Ink##43118 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 195 |or
step
talk Moraka##46718
buy 40 Common Parchment##10648 |goto Orgrimmar/1 55.24,55.80 |or
'|complete skill("Inscription") >= 195 |or
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 40 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 195 Inscription Skill |skill Inscription,195
|tip At skill 175, stop and convert Indigo Pigment into Royal Ink if you have any.
step
_<Create any yellow-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 5 points, continue creating yellow-difficulty glyphs to gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is yellow.
Reach 200 Inscription Skill |skill Inscription,200
|tip If you made Indigo Pigment, make Arcane Tarot cards instead.
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Nerog##46716
|tip Inside the building.
Train Artisan Inscription |skillmax Inscription,300 |goto Orgrimmar/1 55.24,55.80
step
talk Nerog##46716
|tip Inside the building.
Train Celestial Ink |learn Celestial Ink##57709 |goto Orgrimmar/1 55.24,55.80
step
map Felwood/0
path follow smart; loop on; ants curved; dist 30
path	48.25,74.18	45.57,71.52	45.19,67.93	44.99,64.81	43.75,63.75
path	42.60,61.94	42.10,60.44	42.52,58.39	42.19,55.80	42.12,53.77
path	42.52,51.99	42.46,49.04	43.22,46.66	42.28,45.26	43.25,43.10
path	44.86,43.11	46.09,41.05	45.72,36.88	46.03,33.95	47.65,33.39
path	51.14,32.99	51.89,29.81	53.84,27.92	55.31,24.24	55.39,22.27
path	45.98,22.93	52.60,22.73	51.41,24.65	50.01,21.04	46.67,25.21
path	43.76,23.67	42.49,24.58	40.74,26.31	41.42,27.63	41.25,30.12
path	40.28,31.55	39.63,32.74	40.28,34.49	39.88,36.76	39.02,41.56
path	38.95,44.99	40.65,46.99	39.91,49.88	39.07,53.19	38.83,55.66
path	39.72,58.29	41.23,59.18	41.60,60.63	42.10,62.62	41.71,64.52
path	40.58,65.26	40.40,68.00	39.31,70.23	39.26,71.58	41.53,72.75
path	41.89,74.07	40.92,76.49	41.72,78.38	43.01,80.29	44.69,81.19
path	45.84,83.32	47.74,82.92	49.87,80.73
click Gromsblood##142145+
|tip They look like purple and green weeds on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
|tip You will need level 250 Herbalism to gather these.
collect 110 Violet Pigment##39340 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Violet Pigment can be Milled from Blindweed, Firebloom, Ghost Mushroom, Gromsblood, Purple Lotus, and Sungrass.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Inscription") >= 205 |or
step
create 55 Celestial Ink##57709,Inscription,55 total
|tip Save these, you will need them for future steps.
step
create 1 Celestial Ink##57709,Inscription,205
|tip You may need to create more or less of these.
|tip Each additional Celestial Ink requires 2 Violet Pigment.
step
collect 40 Celestial Ink##43120 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 245 |or
step
talk Moraka##46718
buy 40 Heavy Parchment##39501 |goto Orgrimmar/1 55.24,55.80 |or
'|complete skill("Inscription") >= 245 |or
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 40 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 245 Inscription Skill |skill Inscription,245
|tip At skill 225, stop and convert Ruby Pigment into Fiery Ink if you have any.
step
_<Create any yellow-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 5 points, continue creating yellow-difficulty glyphs to gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is yellow.
Reach 250 Inscription Skill |skill Inscription,250
|tip If you made Ruby Pigment, make Weapon Vellum II instead.
step
map Winterspring
path follow smart; loop on; ants curved; dist 20
path	51.15,36.38	49.02,37.97	47.29,38.82	46.26,37.85	44.98,36.98
path	43.34,37.35	42.00,36.66	40.04,36.95	37.55,36.29	37.03,38.50
path	37.04,40.67	36.22,41.42	34.89,40.49	32.81,37.93	31.53,36.07
path	29.97,36.02	29.97,39.23	29.90,42.23	30.63,44.36	31.61,44.78
path	32.31,44.29	34.16,43.86	34.79,42.97	35.73,43.41	36.55,44.20
path	37.95,44.18	40.05,43.83	41.97,43.60	43.29,44.09	44.44,42.87
path	45.25,41.37	45.82,40.53	46.38,39.95	47.29,40.48	48.43,42.60
path	49.89,44.73	50.67,45.63	52.44,46.41	53.08,44.56	53.42,43.72
path	55.09,43.38	56.62,42.13	57.86,40.63	58.81,39.07	58.04,36.73
path	56.38,36.22	54.08,33.77
click Icecap##176588+
|tip They look like plants topped with white balls on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
|tip You will need level 290 Herbalism to gather these.
collect 130 Silvery Pigment##39341 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Silvery Pigment can be Milled from Dreamfoil, Golden Sansam, Icecap, Mountain Silversage, and Plaguebloom.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip If you receive Sapphire Pigment from Milling, you will around 30 fewer.
'|complete skill("Inscription") >= 255 |or
step
talk Nerog##46716
|tip Inside the building.
Train Shimmering Ink |learn Shimmering Ink##57711 |goto Orgrimmar/1 55.24,55.80
step
create 65 Shimmering Ink##57711,Inscription,65 total
|tip Save these, you will need them for future steps.
|tip If you receive Sapphire Pigment from Milling, you will around 15 fewer.
step
create 1 Shimmering Ink##57711,Inscription,255
|tip You may need to create more or less of these.
|tip Each additional Shimmering Ink requires 2 Violet Pigment.
|tip If you receive Sapphire Pigment from Milling, you will around 15 fewer.
step
collect 5 Shimmering Ink##43122 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 260 |or
step
talk Moraka##46718
buy 10 Heavy Parchment##39501 |goto Orgrimmar/1 55.24,55.80 |or
'|complete skill("Inscription") >= 260 |or
step
talk Nerog##46716
|tip Inside the building.
Train Scroll of Spirit V |learn Scroll of Spirit V##50608 |goto Orgrimmar/1 55.24,55.80
step
create 5 Scroll of Spirit V##50608,Inscription,265
step
collect 60 Shimmering Ink##43122 |or
|tip You collected these in a previous step.
|tip If you receive Sapphire Pigment from Milling, you will around 15 fewer.
'|complete skill("Inscription") >= 290 |or
step
talk Moraka##46718
buy 60 Heavy Parchment##39501 |goto Orgrimmar/1 55.24,55.80 |or
|tip If you receive Sapphire Pigment from Milling, you will around 15 fewer.
'|complete skill("Inscription") >= 290 |or
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 25 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 290 Inscription Skill |skill Inscription,290
|tip At skill 275, stop and convert Sapphire Pigment into Ink of the Sky if you have any.
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to train Master professions in Outland.
|tip Use the leveling guides to accomplish this.
step
talk Neferatti##30722
|tip Inside the building.
Train Master Inscription |skillmax Inscription,375 |goto Hellfire Peninsula/0 52.2,36.0
step
talk Neferatti##30722
|tip Inside the building.
Train Ethereal Ink |learn Ethereal Ink##57713 |goto Hellfire Peninsula/0 52.2,36.0
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
|tip They look like small white flowers on the ground along the path.
|tip You will need level 300 Herbalism to gather these.
click Dreaming Glory##181271+
|tip They look like bushy blue and green plants on the ground along the path.
|tip You will need level 315 Herbalism to gather these.
|tip Track them on your minimap with "Find Herbs".
collect 90 Nether Pigment##39342 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Nether Pigment can be Milled from any Outland herb.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Inscription") >= 305 |or
step
create 45 Ethereal Ink##57713,Inscription,45 total
|tip Save these, you will need them for future steps.
step
create 1 Ethereal Ink##57713,Inscription,305
|tip You may need to create more or less of these.
|tip Each additional Ethereal Ink requires 2 Nether Pigment.
step
collect 45 Ethereal Ink##43124 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 350 |or
step
talk Kul Inkspiller##30735
|tip Inside the building.
buy 45 Resilient Parchment##39502 |goto Hellfire Peninsula/0 52.4,36.0 |or
'|complete skill("Inscription") >= 350 |or
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 45 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 350 Inscription Skill |skill Inscription,350
step
Reach Level 65 |ding 65
|tip You must be at least level 65 to train Grand Master professions in Northrend.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Lich King-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Inscription |confirm |next "Begin_Profession_Leveling_Northrend" |or
'|complete skill("Inscription") >= 450 |or |next "Begin_Profession_Leveling_Northrend"
stickystart "Colelct_Azure_Pigment_Total"
step
map The Storm Peaks/0
path follow smart; loop on; ants curved; dist 30
path	40.48,84.72	38.66,87.17	37.60,88.31	36.46,88.65	35.02,88.40
path	33.04,87.96	32.36,87.32	31.15,86.01	31.26,83.85	32.88,82.55
path	34.41,82.23	37.43,81.32	38.61,80.09	38.42,77.89	38.35,76.11
path	38.74,73.99	37.68,73.22	36.73,71.76	36.68,69.14	36.32,67.06
path	34.88,65.94	30.85,65.94	29.52,67.06	29.48,69.42	29.23,70.90
path	27.57,72.50	26.02,72.85	25.60,71.51	26.75,67.96	27.06,65.35
path	26.93,62.88	26.18,62.34	24.08,61.56	23.06,60.72	21.86,57.73
path	22.87,55.34	24.36,56.14	27.01,56.95	27.90,55.75	28.61,53.06
path	29.83,51.20	31.85,50.00	32.80,49.22	33.11,48.06	33.67,45.40
path	34.61,43.60	35.58,42.52	36.26,43.24	37.45,45.62	39.00,47.32
path	39.40,48.12	39.25,49.56	38.64,51.52	37.74,54.90	37.82,57.96
path	37.92,61.22	37.98,63.22	38.43,63.67	39.29,63.34	41.71,62.19
path	43.54,59.60	43.96,56.47	43.76,55.08	45.37,54.72	46.71,56.45
path	48.25,58.99	48.84,60.33	48.86,63.66	49.78,64.45	51.20,64.42
path	52.87,65.09	54.07,66.91	54.51,68.66	52.51,70.07	50.76,72.23
path	49.99,73.68	49.17,77.80	46.82,77.95	44.64,78.02	41.03,78.62
path	41.08,81.81
click Icethorn##190172+
|tip They look like blue and white thorns growing out of the ground along the path.
|tip You will need level 435 Herbalism to gather these.
|tip Track them on your minimap with "Find Herbs".
collect 42 Icy Pigment##43109 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Icy Pigment can be Milled from any Northrend herb, but most commonly from Icethorn and Lichbloom.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip The final 20 points are cheaper and more practical to obtain with a daily cooldown using these.
'|complete skill("Inscription") >= 450 |or
step
label "Colelct_Azure_Pigment_Total"
map The Storm Peaks/0
path follow smart; loop on; ants curved; dist 30
path	40.48,84.72	38.66,87.17	37.60,88.31	36.46,88.65	35.02,88.40
path	33.04,87.96	32.36,87.32	31.15,86.01	31.26,83.85	32.88,82.55
path	34.41,82.23	37.43,81.32	38.61,80.09	38.42,77.89	38.35,76.11
path	38.74,73.99	37.68,73.22	36.73,71.76	36.68,69.14	36.32,67.06
path	34.88,65.94	30.85,65.94	29.52,67.06	29.48,69.42	29.23,70.90
path	27.57,72.50	26.02,72.85	25.60,71.51	26.75,67.96	27.06,65.35
path	26.93,62.88	26.18,62.34	24.08,61.56	23.06,60.72	21.86,57.73
path	22.87,55.34	24.36,56.14	27.01,56.95	27.90,55.75	28.61,53.06
path	29.83,51.20	31.85,50.00	32.80,49.22	33.11,48.06	33.67,45.40
path	34.61,43.60	35.58,42.52	36.26,43.24	37.45,45.62	39.00,47.32
path	39.40,48.12	39.25,49.56	38.64,51.52	37.74,54.90	37.82,57.96
path	37.92,61.22	37.98,63.22	38.43,63.67	39.29,63.34	41.71,62.19
path	43.54,59.60	43.96,56.47	43.76,55.08	45.37,54.72	46.71,56.45
path	48.25,58.99	48.84,60.33	48.86,63.66	49.78,64.45	51.20,64.42
path	52.87,65.09	54.07,66.91	54.51,68.66	52.51,70.07	50.76,72.23
path	49.99,73.68	49.17,77.80	46.82,77.95	44.64,78.02	41.03,78.62
path	41.08,81.81
click Icethorn##190172+ |notinsticky
|tip They look like blue and white thorns growing out of the ground along the path. |notinsticky
|tip You will need level 435 Herbalism to gather these. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 180 Azure Pigment##39343 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house. |notinsticky
|tip Azure Pigment can be Milled from any Northrend herb. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Inscription") >= 430 |or
step
label "Begin_Profession_Leveling_Northrend"
talk Professor Pallin##92195
|tip Inside the building.
Train Grand Master Inscription |skillmax Inscription,450 |goto Dalaran/1 41.61,37.15
step
talk Professor Pallin##92195
|tip Inside the building.
Train Ink of the Sea |learn Ink of the Sea##57715 |goto Dalaran/1 41.61,37.15
step
map The Storm Peaks/0
path follow smart; loop on; ants curved; dist 30
path	40.48,84.72	38.66,87.17	37.60,88.31	36.46,88.65	35.02,88.40
path	33.04,87.96	32.36,87.32	31.15,86.01	31.26,83.85	32.88,82.55
path	34.41,82.23	37.43,81.32	38.61,80.09	38.42,77.89	38.35,76.11
path	38.74,73.99	37.68,73.22	36.73,71.76	36.68,69.14	36.32,67.06
path	34.88,65.94	30.85,65.94	29.52,67.06	29.48,69.42	29.23,70.90
path	27.57,72.50	26.02,72.85	25.60,71.51	26.75,67.96	27.06,65.35
path	26.93,62.88	26.18,62.34	24.08,61.56	23.06,60.72	21.86,57.73
path	22.87,55.34	24.36,56.14	27.01,56.95	27.90,55.75	28.61,53.06
path	29.83,51.20	31.85,50.00	32.80,49.22	33.11,48.06	33.67,45.40
path	34.61,43.60	35.58,42.52	36.26,43.24	37.45,45.62	39.00,47.32
path	39.40,48.12	39.25,49.56	38.64,51.52	37.74,54.90	37.82,57.96
path	37.92,61.22	37.98,63.22	38.43,63.67	39.29,63.34	41.71,62.19
path	43.54,59.60	43.96,56.47	43.76,55.08	45.37,54.72	46.71,56.45
path	48.25,58.99	48.84,60.33	48.86,63.66	49.78,64.45	51.20,64.42
path	52.87,65.09	54.07,66.91	54.51,68.66	52.51,70.07	50.76,72.23
path	49.99,73.68	49.17,77.80	46.82,77.95	44.64,78.02	41.03,78.62
path	41.08,81.81
click Icethorn##190172+
|tip They look like blue and white thorns growing out of the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 180 Azure Pigment##39343 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Azure Pigment can be Milled from any Northrend herb.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Inscription") >= 430 |or
step
create 90 Ink of the Sea##57715,Inscription,90 total
|tip Save these, you will need them for future steps.
step
create 1 Ink of the Sea##57715,Inscription,355
|tip Save these, you will need them for future steps.
step
collect 5 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 360 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 10 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 360 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Scroll of Spirit VII |learn Scroll of Spirit VII##50610 |goto Dalaran/1 41.61,37.15
step
create 5 Scroll of Spirit VII##50610,Inscription,360
step
collect 5 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 365 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 10 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 365 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Scroll of Intellect VII |learn Scroll of Intellect VII##50603 |goto Dalaran/1 41.61,37.15
step
create 5 Scroll of Intellect VII##50603,Inscription,365
step
collect 5 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 370 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 10 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 370 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Scroll of Strength VII |learn Scroll of Strength VII##58490 |goto Dalaran/1 41.61,37.15
step
create 5 Scroll of Strength VII##58490,Inscription,370
step
collect 5 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 375 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 10 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 375 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Scroll of Agility VII |learn Scroll of Agility VII##58482 |goto Dalaran/1 41.61,37.15
step
create 5 Scroll of Agility VII##58482,Inscription,375
step
map The Storm Peaks/0
path follow smart; loop on; ants curved; dist 30
path	40.48,84.72	38.66,87.17	37.60,88.31	36.46,88.65	35.02,88.40
path	33.04,87.96	32.36,87.32	31.15,86.01	31.26,83.85	32.88,82.55
path	34.41,82.23	37.43,81.32	38.61,80.09	38.42,77.89	38.35,76.11
path	38.74,73.99	37.68,73.22	36.73,71.76	36.68,69.14	36.32,67.06
path	34.88,65.94	30.85,65.94	29.52,67.06	29.48,69.42	29.23,70.90
path	27.57,72.50	26.02,72.85	25.60,71.51	26.75,67.96	27.06,65.35
path	26.93,62.88	26.18,62.34	24.08,61.56	23.06,60.72	21.86,57.73
path	22.87,55.34	24.36,56.14	27.01,56.95	27.90,55.75	28.61,53.06
path	29.83,51.20	31.85,50.00	32.80,49.22	33.11,48.06	33.67,45.40
path	34.61,43.60	35.58,42.52	36.26,43.24	37.45,45.62	39.00,47.32
path	39.40,48.12	39.25,49.56	38.64,51.52	37.74,54.90	37.82,57.96
path	37.92,61.22	37.98,63.22	38.43,63.67	39.29,63.34	41.71,62.19
path	43.54,59.60	43.96,56.47	43.76,55.08	45.37,54.72	46.71,56.45
path	48.25,58.99	48.84,60.33	48.86,63.66	49.78,64.45	51.20,64.42
path	52.87,65.09	54.07,66.91	54.51,68.66	52.51,70.07	50.76,72.23
path	49.99,73.68	49.17,77.80	46.82,77.95	44.64,78.02	41.03,78.62
path	41.08,81.81
click Icethorn##190172+
|tip They look like blue and white thorns growing out of the ground along the path.
|tip You will need level 435 Herbalism to gather these.
|tip Track them on your minimap with "Find Herbs".
collect 42 Icy Pigment##43109 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Icy Pigment can be Milled from any Northrend herb, but most commonly from Icethorn and Lichbloom.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip The final 20 points are cheaper and more practical to obtain with a daily cooldown using these.
'|complete skill("Inscription") >= 450 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Snowfall Ink |learn Snowfall Ink##57716 |goto Dalaran/1 41.61,37.15
step
create 21 Snowfall Ink##57716,Inscription,21 total
|tip Save these, you will need them for future steps.
step
create 1 Snowfall Ink##57716,Inscription,380
|tip Save these, you will need them for future steps.
step
collect 7 Ink of the Sea##43126 |or
|tip You created these in a previous step.
|tip From 375-380 you can also turn Icy Pigment into Snowfall Ink.
'|complete skill("Inscription") >= 385 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 7 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 385 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Glyph of Focus |learn Glyph of Focus##62162 |goto Dalaran/1 41.61,37.15
|tip You can also create any other similar-level glyph.
step
create 7 Glyph of Focus##62162,Inscription,385
|tip You can also create any other similar-level glyph.
step
collect 3 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 386 |or
step
collect 1 Snowfall Ink##43127 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 386 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 5 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 386 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Northrend Inscription Research |learn Northrend Inscription Research##61177 |goto Dalaran/1 41.61,37.15
step
create 1 Northrend Inscription Research##61177,Inscription,386
step
collect 25 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 400 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 25 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 400 |or
step
<Create approximately 25 of any major glyph you discovered>
|tip Glyphs discovered with Northrend Inscription Research will be random.
|tip Keep performing Northrend Inscription Research every day.
|tip Each Northrend Inscription Research requires 3 Ink of the Sea, 5 Resilient Parchment, and 1 Snowfall Ink.
Reach 400 Inscription Skill |skill Inscription,400
step
collect 5 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 405 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 10 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 405 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Scroll of Stamina VIII |learn Scroll of Stamina VIII##50620 |goto Dalaran/1 41.61,37.15
step
create 5 Scroll of Stamina VIII##50620,Inscription,405
step
collect 5 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 410 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 10 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 410 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Scroll of Spirit VIII |learn Scroll of Spirit VIII##50611 |goto Dalaran/1 41.61,37.15
step
create 5 Scroll of Spirit VIII##50611,Inscription,410
step
collect 5 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 415 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 10 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 415 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Scroll of Intellect VIII |learn Scroll of Intellect VIII##50604 |goto Dalaran/1 41.61,37.15
step
create 5 Scroll of Intellect VIII##50604,Inscription,415
step
collect 5 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 420 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 10 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 420 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Scroll of Strength VIII |learn Scroll of Strength VIII##58491 |goto Dalaran/1 41.61,37.15
step
create 5 Scroll of Strength VIII##58491,Inscription,420
step
collect 13 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 430 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 26 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 430 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Scroll of Agility VIII |learn Scroll of Agility VIII##58483 |goto Dalaran/1 41.61,37.15
step
create 13 Scroll of Agility VIII##58483,Inscription,430
step
create 1 Northrend Inscription Research##61177,Inscription,450
|tip For the last 20 points, Northrend Inscription Research is the most practical method.
|tip Darkmoon Cards and Runescrolls of Fortitude are options, but rely on rare ink and are more expensive.
step
talk Nerog##46716
|tip Inside the building.
Train Illustrious Grand Master Inscription |skillmax Inscription,525 |goto Orgrimmar/1 55.24,55.80
|tip You must be at least level 75.
step
talk Nerog##46716
|tip Inside the building.
learn Blackfallow Ink##86004 |goto Orgrimmar/1 55.24,55.80
step
talk Nerog##46716
|tip Inside the building.
learn Mysterious Fortune Card##86609 |goto Orgrimmar/1 55.24,55.80
step
talk Moraka##46718
|tip Inside the building.
buy 10 Resilient Parchment##39502 |goto Orgrimmar/1 55.24,55.80
|only if skill("Inscription") < 460
step
collect 10 Blackfallow Ink##61978
|tip Ashen Pigment can be Milled from Azshara's Veil, Cinderbloom, Heartblossom, Stormvine, Twilight Jasmine, and Whiptail.
|only if skill("Inscription") < 460
step
Open Your Inscription Crafting Panel:
_<Create 10 Mysterious Fortune Card>_
Reach 460 Inscription |skill Inscription,460
step
talk Nerog##46716
|tip Inside the building.
learn Scroll of Stamina IX##89372 |goto Orgrimmar/1 55.24,55.80
step
talk Moraka##46718
|tip Inside the building.
buy 10 Resilient Parchment##39502 |goto Orgrimmar/1 55.24,55.80
|only if skill("Inscription") < 465
step
collect 5 Blackfallow Ink##61978
|tip Ashen Pigment can be Milled from Azshara's Veil, Cinderbloom, Heartblossom, Stormvine, Twilight Jasmine, and Whiptail.
|only if skill("Inscription") < 465
step
Open Your Inscription Crafting Panel:
_<Create 5 Scroll of Stamina IX>_
Reach 465 Inscription |skill Inscription,465
step
talk Nerog##46716
|tip Inside the building.
learn Glyph of Colossus Smash##89815 |goto Orgrimmar/1 55.24,55.80
step
talk Moraka##46718
|tip Inside the building.
buy 2 Common Parchment##10648 |goto Orgrimmar/1 55.24,55.80
|only if skill("Inscription") < 471
step
collect 6 Blackfallow Ink##61978
|tip Ashen Pigment can be Milled from Azshara's Veil, Cinderbloom, Heartblossom, Stormvine, Twilight Jasmine, and Whiptail.
|only if skill("Inscription") < 471
step
Open Your Inscription Crafting Panel:
_<Create 2 Glyph of Colossus Smash>_
|tip Each craft gives 3 skill points.
Reach 471 Inscription |skill Inscription,471
step
talk Nerog##46716
|tip Inside the building.
learn Scroll of Agility IX##89370 |goto Orgrimmar/1 55.24,55.80
step
talk Moraka##46718
|tip Inside the building.
buy 8 Resilient Parchment##39502 |goto Orgrimmar/1 55.24,55.80
|only if skill("Inscription") < 475
step
collect 4 Blackfallow Ink##61978
|tip Ashen Pigment can be Milled from Azshara's Veil, Cinderbloom, Heartblossom, Stormvine, Twilight Jasmine, and Whiptail.
|only if skill("Inscription") < 475
step
Open Your Inscription Crafting Panel:
_<Create 4 Scroll of Agility IX>_
Reach 475 Inscription |skill Inscription,475
step
talk Nerog##46716
|tip Inside the building.
learn Inferno Ink##86005 |goto Orgrimmar/1 55.24,55.80
step
collect 14 Burning Embers##61980
|tip Burning Embers can be Milled from Azshara's Veil, Cinderbloom, Heartblossom, Stormvine, Twilight Jasmine, and Whiptail.
|only if skill("Inscription") < 482
step
Open Your Inscription Crafting Panel:
_<Create 7 Inferno Ink>_
Reach 482 Inscription |skill Inscription,482
step
talk Nerog##46716
|tip Inside the building.
learn Dust of Disappearance##92027 |goto Orgrimmar/1 55.24,55.80
step
collect 18 Blackfallow Ink##61978
|tip Ashen Pigment can be Milled from Azshara's Veil, Cinderbloom, Heartblossom, Stormvine, Twilight Jasmine, and Whiptail.
|only if skill("Inscription") < 490
step
Open Your Inscription Crafting Panel:
_<Create 18 Dust of Disappearance>_
Reach 490 Inscription |skill Inscription,490
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill enemies in the area
collect Technique: Origami Rock##65650
step
use the Technique: Origami Rock##65650
learn Origami Rock##86645
step
talk Moraka##46718
|tip Inside the building.
buy 30 Resilient Parchment##39502 |goto Orgrimmar/1 55.24,55.80
|only if skill("Inscription") < 500
step
Open Your Inscription Crafting Panel:
_<Create 10 Origami Rock>_
Reach 500 Inscription |skill Inscription,500
step
kill Schnottz Infantryman##48629+
|tip They spawn in large groups all around this area.
collect Technique: Origami Beetle##65651 |goto Uldum/0 39.82,11.67
step
use the Technique: Origami Beetle##65651
learn Origami Beetle##86646
step
talk Moraka##46718
|tip Inside the building.
buy 30 Resilient Parchment##39502 |goto Orgrimmar/1 55.24,55.80
|only if skill("Inscription") < 510
step
Open Your Inscription Crafting Panel:
_<Create 10 Origami Beetle>_
|tip Keep making them until you reach 510 Inscription.
Reach 510 Inscription |skill Inscription,510
step
talk Nerog##46716
|tip Inside the building.
learn Dungeoneering Guide##86641 |goto Orgrimmar/1 55.24,55.80
step
talk Moraka##46718
|tip Inside the building.
buy 40 Resilient Parchment##39502 |goto Orgrimmar/1 55.24,55.80
|only if skill("Inscription") < 520
stickystart "Volatile_Life_520"
stickystart "Volatile_Water_520"
step
collect 32 Inferno Ink##61981
|tip Burning Embers can be Milled from Azshara's Veil, Cinderbloom, Heartblossom, Stormvine, Twilight Jasmine, and Whiptail.
|only if skill("Inscription") < 520
step
label "Volatile_Life_520"
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
collect 98 Volatile Life##52329
|tip It can also be purchased from the auction house.
|only if skill("Inscription") < 520
step
label "Volatile_Water_520"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	29.60,66.46	28.77,62.37	31.51,59.47	33.77,56.98	35.75,60.13
path	34.61,63.05
kill Enslaved Waterspout##46329+
|tip You can also fish in any schools of fish for Volatile Water as well. |only if skill("Fishing") >= 450
collect 24 Volatile Water##52326
|tip It can also be purchased from the auction house.
|only if skill("Inscription") < 520
step
Open Your Inscription Crafting Panel:
_<Create 4 Dungeoneering Guide>_
|tip Each craft gives 3 skill points.
Reach 520 Inscription |skill Inscription,520
step
talk Nerog##46716
|tip Inside the building.
learn Silver Inlaid Leaf##86653 |goto Orgrimmar/1 55.24,55.80
stickystart "Volatile_Life_525"
stickystart "Volatile_Air_525"
stickystart "Inferno_Ink_525"
step
talk Una Kobuna##50248
|tip She may not be visible if you have not done quests in the area.
buy Silver Charm Bracelet##67335 |goto Twilight Highlands/0 78.54,76.16
step
label "Inferno_Ink_525"
collect 12 Inferno Ink##61981
|tip Burning Embers can be Milled from Azshara's Veil, Cinderbloom, Heartblossom, Stormvine, Twilight Jasmine, and Whiptail.
|only if skill("Inscription") < 525
step
label "Volatile_Life_525"
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
collect 36 Volatile Life##52329
|tip It can also be purchased from the auction house.
|only if skill("Inscription") < 525
step
label "Volatile_Air_525"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	39.56,47.29	41.39,48.90	41.53,46.16	39.76,44.61
kill Storm Vortex##47728+
collect 12 Volatile Air##52328
|tip It can also be purchased from the auction house.
|only if skill("Inscription") < 525
step
Open Your Inscription Crafting Panel:
_<Create 1 Silver Inlaid Leaf>_
|tip Each craft gives 5 skill points.
Reach 525 Inscription |skill Inscription,525
step
Reach Level 80 |ding 80
|tip You must be at least level 80 to train Zen Master professions.
|tip Use the leveling guides to accomplish this.
step
talk Nerog##46716
|tip Inside the building.
Train Zen Master Inscription |skillmax Inscription,600 |goto Orgrimmar/1 55.24,55.80
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Pandaria materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Inscription |confirm |next "Begin_Profession_Leveling_Pandaria" |or
'|complete skill("Inscription") >= 500 |or |next "Begin_Profession_Leveling_Pandaria"
stickystart "Collect_Misty_Pigment_Total"
step
collect 130 Shadow Pigment##79251 |or |usebank
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Shadow Pigment can be Milled from any Pandaria herb.
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Green Tea Leaf"
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Rain Poppy"
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Silkweed"
step
label "Collect_Misty_Pigment_Total"
collect 9 Misty Pigment##79253 |or |usebank
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Misty Pigment can be Milled from any Pandaria herb.
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Green Tea Leaf"
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Rain Poppy"
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Silkweed"
step
label "Begin_Profession_Leveling_Pandaria"
Train Ink of Dreams |learn Ink of Dreams##111645 |goto Orgrimmar/1 55.24,55.80
step
collect 130 Shadow Pigment##79251 |or |usebank
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Shadow Pigment can be Milled from any Pandaria herb.
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Green Tea Leaf"
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Rain Poppy"
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Silkweed"
step
create 65 Ink of Dreams##111645,Inscription,65 total
|tip Save these, you will need them for future steps.
'|complete skill("Inscription") >= 545
step
talk Nerog##46716
|tip Inside the building.
Train Scroll of Wisdom |learn Scroll of Wisdom##112996 |goto Orgrimmar/1 55.24,55.80
step
create Scroll of Wisdom##112996,Inscription,546
|tip You will discover a Glyph recipe when you create a Scroll of Wisdom.
step
|tip You will discover a Glyph recipe when you create a Scroll of Wisdom.
|tip Create 20 of the Glyph you discovered.
|tip You can find the Glyph recipe in your Inscription spellbook.
Reach Skill Level 595 in Inscription |skill Inscription,595
step
talk Nerog##46716
|tip You can choose any of the shoulder enchantments instead.
Train Greater Tiger Fang Inscription |learn Greater Tiger Fang Inscription##126997 |goto Orgrimmar/1 55.24,55.80
step
collect 9 Misty Pigment##79253 |or |usebank
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Misty Pigment can be Milled from any Pandaria herb.
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Green Tea Leaf"
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Rain Poppy"
|loadguide "Profession Guides\\Herbalism\\Farming Guides\\Silkweed"
step
create 5 Greater Tiger Fang Inscription##126997,Inscription,600
'|complete skill("Inscription") >= 600
]])
QuestCore:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting (1-600)",{
expansion="mists",
mopready=true,
author="QuestCore",
condition_suggested=function() return skill('Jewelcrafting') > 0 end,
description="This guide will walk you through leveling your Jewelcrafting skill from 1-600.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Kalinda##19775
|tip Inside the building.
Train Apprentice Jewelcrafting |skillmax Jewelcrafting,75 |goto Silvermoon City/0 90.33,73.83
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Classic-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Jewelcrafting |confirm |next "Begin_Profession_Leveling_Classic" |or
'|complete skill("Jewelcrafting") >= 300 |next "Begin_Profession_Leveling_Classic" |or
stickystart "Collect_Bronze_Bar_Total"
stickystart "Collect_Mithril_Bar_Total"
stickystart "Collect_Truesilver_Bar_Total"
stickystart "Collect_Thorium_Bar_Total"
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 110 Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 110 Copper Bar##2840 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Jewelcrafting") >= 35 |or
step
label "Collect_Bronze_Bar_Total"
collect 120 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip Smelting 2 Bronze Bars requires 1 Copper Bar and 1 Tin Bar. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 110 |or
step
label "Collect_Mithril_Bar_Total"
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	22.32,54.98	23.55,51.83	26.37,53.38	28.56,52.55	31.62,51.82
path	32.90,49.43	32.52,45.27	33.35,42.82	37.00,44.27	38.68,49.34
path	40.06,46.12	41.79,45.36	43.39,45.31	45.26,44.46	48.22,42.83
path	50.09,45.81	52.30,43.80	54.20,41.70	55.89,38.55	57.58,38.26
path	59.27,40.29	61.27,40.65	64.16,42.61	64.42,45.56	65.99,50.86
path	67.14,51.59	68.90,51.63	71.46,50.92	77.39,49.20	78.12,50.19
path	77.31,51.56	75.77,54.07	74.39,56.04	72.26,60.38	72.06,64.08
path	71.87,65.66	70.00,63.83	67.35,62.94	64.88,62.27	63.77,62.36
path	63.02,60.36	62.46,58.05	60.95,56.00	59.95,54.56	58.25,51.61
path	57.52,50.17	56.53,51.66	55.04,53.13	53.74,54.42	53.21,56.28
path	52.25,58.96	51.38,63.60	51.49,67.71	49.89,70.12	48.81,71.36
path	47.41,70.20	44.61,70.37	43.56,68.65	42.90,67.26	42.47,62.95
path	41.38,61.30	40.46,62.25	38.34,63.41	35.95,62.96	35.91,65.38
path	36.03,67.84	35.26,70.66	35.50,72.88	35.79,74.04	33.83,74.25
path	32.47,73.37	30.82,71.94	31.27,70.10	32.37,70.01	33.90,68.55
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 142 Mithril Ore##3858 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 142 Mithril Bar##3860 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save these, you will need them for future steps. |notinsticky
'|goto The Hinterlands/0 33.90,68.55 < 30 |c |noway |or
'|complete skill("Jewelcrafting") >= 180 |or
step
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	35.45,66.69	35.69,63.65	33.97,60.80	33.10,57.98	31.77,55.79
path	30.30,55.75	29.53,55.60	28.77,56.41	27.40,58.19	27.70,60.14
path	27.42,68.06	26.09,66.01	25.62,63.37	24.61,58.76	23.02,56.86
path	21.44,56.49
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 142 Mithril Ore##3858 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 142 Mithril Bar##3860 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save these, you will need them for future steps. |notinsticky
'|goto The Hinterlands/0 21.44,56.49 < 30 |c |noway |next "Collect_Mithril_Bar_Total" |or
'|complete skill("Jewelcrafting") >= 180 |or
step
label "Collect_Truesilver_Bar_Total"
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	22.32,54.98	23.55,51.83	26.37,53.38	28.56,52.55	31.62,51.82
path	32.90,49.43	32.52,45.27	33.35,42.82	37.00,44.27	38.68,49.34
path	40.06,46.12	41.79,45.36	43.39,45.31	45.26,44.46	48.22,42.83
path	50.09,45.81	52.30,43.80	54.20,41.70	55.89,38.55	57.58,38.26
path	59.27,40.29	61.27,40.65	64.16,42.61	64.42,45.56	65.99,50.86
path	67.14,51.59	68.90,51.63	71.46,50.92	77.39,49.20	78.12,50.19
path	77.31,51.56	75.77,54.07	74.39,56.04	72.26,60.38	72.06,64.08
path	71.87,65.66	70.00,63.83	67.35,62.94	64.88,62.27	63.77,62.36
path	63.02,60.36	62.46,58.05	60.95,56.00	59.95,54.56	58.25,51.61
path	57.52,50.17	56.53,51.66	55.04,53.13	53.74,54.42	53.21,56.28
path	52.25,58.96	51.38,63.60	51.49,67.71	49.89,70.12	48.81,71.36
path	47.41,70.20	44.61,70.37	43.56,68.65	42.90,67.26	42.47,62.95
path	41.38,61.30	40.46,62.25	38.34,63.41	35.95,62.96	35.91,65.38
path	36.03,67.84	35.26,70.66	35.50,72.88	35.79,74.04	33.83,74.25
path	32.47,73.37	30.82,71.94	31.27,70.10	32.37,70.01	33.90,68.55
Click ore as you follow the path around this area |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
|tip You will need level 230 Mining to collect these. |notinsticky
collect Truesilver Ore##7911 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 28 Truesilver Bar##6037 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|goto The Hinterlands/0 33.90,68.55 < 30 |c |noway |or
'|complete skill("Jewelcrafting") >= 210 |or
step
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	35.45,66.69	35.69,63.65	33.97,60.80	33.10,57.98	31.77,55.79
path	30.30,55.75	29.53,55.60	28.77,56.41	27.40,58.19	27.70,60.14
path	27.42,68.06	26.09,66.01	25.62,63.37	24.61,58.76	23.02,56.86
path	21.44,56.49
Click ore as you follow the path around this area |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
|tip You will need level 230 Mining to collect these. |notinsticky
collect Truesilver Ore##7911 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 28 Truesilver Bar##6037 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|goto The Hinterlands/0 21.44,56.49 < 30 |c |noway |next "Collect_Truesilver_Bar_Total" |or
'|complete skill("Jewelcrafting") >= 210 |or
step
label "Collect_Thorium_Bar_Total"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 56 Thorium Ore##10620 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 56 Thorium Bar##12359 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need level 245 Mining to collect these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 250 |or
stickystart "Collect_Shadowgem_Total"
stickystart "Collect_Moss_Agate_Total"
stickystart "Collect_Aquamarine_Total"
stickystart "Collect_Heavy_Stone_Total"
stickystart "Collect_Solid_Stone_Total"
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 15 Tigerseye##818 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Copper Ore with Jewelcrafting.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Jewelcrafting") >= 50 |or
step
label "Collect_Shadowgem_Total"
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Tin Vein##3764+ |notinsticky
|tip They look like gray rocks with silver mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 60 Shadowgem##1210 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 65 Mining skill to gather these. |notinsticky
|tip They can be Prospected from Tin Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 110 |or
step
label "Collect_Moss_Agate_Total"
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Tin Vein##3764+ |notinsticky
|tip They look like gray rocks with silver mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 30 Moss Agate##1206 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 65 Mining skill to gather these. |notinsticky
|tip They can be Prospected from Tin Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 150 |or
step
label "Collect_Aquamarine_Total"
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	22.32,54.98	23.55,51.83	26.37,53.38	28.56,52.55	31.62,51.82
path	32.90,49.43	32.52,45.27	33.35,42.82	37.00,44.27	38.68,49.34
path	40.06,46.12	41.79,45.36	43.39,45.31	45.26,44.46	48.22,42.83
path	50.09,45.81	52.30,43.80	54.20,41.70	55.89,38.55	57.58,38.26
path	59.27,40.29	61.27,40.65	64.16,42.61	64.42,45.56	65.99,50.86
path	67.14,51.59	68.90,51.63	71.46,50.92	77.39,49.20	78.12,50.19
path	77.31,51.56	75.77,54.07	74.39,56.04	72.26,60.38	72.06,64.08
path	71.87,65.66	70.00,63.83	67.35,62.94	64.88,62.27	63.77,62.36
path	63.02,60.36	62.46,58.05	60.95,56.00	59.95,54.56	58.25,51.61
path	57.52,50.17	56.53,51.66	55.04,53.13	53.74,54.42	53.21,56.28
path	52.25,58.96	51.38,63.60	51.49,67.71	49.89,70.12	48.81,71.36
path	47.41,70.20	44.61,70.37	43.56,68.65	42.90,67.26	42.47,62.95
path	41.38,61.30	40.46,62.25	38.34,63.41	35.95,62.96	35.91,65.38
path	36.03,67.84	35.26,70.66	35.50,72.88	35.79,74.04	33.83,74.25
path	32.47,73.37	30.82,71.94	31.27,70.10	32.37,70.01	33.90,68.55
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 35 Aquamarine##7909 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Tin Ore, Iron Ore, and Mithril Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|goto The Hinterlands/0 33.90,68.55 < 30 |c |noway |or
'|complete skill("Jewelcrafting") >= 225 |or
step
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	35.45,66.69	35.69,63.65	33.97,60.80	33.10,57.98	31.77,55.79
path	30.30,55.75	29.53,55.60	28.77,56.41	27.40,58.19	27.70,60.14
path	27.42,68.06	26.09,66.01	25.62,63.37	24.61,58.76	23.02,56.86
path	21.44,56.49
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 35 Aquamarine##7909 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Tin Ore, Iron Ore, and Mithril Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|goto The Hinterlands/0 21.44,56.49 < 30 |c |noway |next "Collect_Aquamarine_Total" |or
'|complete skill("Jewelcrafting") >= 225 |or
step
label "Collect_Heavy_Stone_Total"
map Feralas
path	follow loose; loop on; ants curved; dist 20
path	 84.9,39.9	81.8,39.3	79.2,37.2
path	75.3,35.5	71.5,34.7	68.4,39.7
path	68.1,46.1	70.0,48.6	68.7,52.0
path	65.5,52.5	63.8,54.9	61.5,50.5
path	58.2,51.4	53.8,49.4	48.6,44.0
path	48.6,38.8	49.7,34.9	51.6,33.8
path	49.5,26.1	51.7,25.5	51.3,19.0
path	52.7,16.5	54.9,8.1	53.4,5.5
path	51.6,4.8	48.5,11.5	46.1,7.2
path	42.0,8.2	40.0,7.7	37.1,12.1
path	38.2,18.6	37.0,25.6	41.2,25.5
path	41.5,17.2	45.2,21.1	46.0,15.7
path	47.7,22.1	46.2,26.6	47.2,34.7
path	46.7,44.9	50.3,52.7	54.8,53.9
path	55.0,59.8	54.6,64.0	52.9,66.2
path	53.6,73.7	55.5,75.7	61.5,75.0
path	61.6,68.9	64.0,68.9	61.9,66.2
path	61.0,59.1	64.1,58.7	63.7,61.0
path	65.8,63.5	68.1,61.5	71.6,65.1
path	77.2,62.1	75.9,53.5	76.2,49.6
path	79.5,46.2	84.0,45.6	82.5,43.1
click Iron Deposit##1735+ |notinsticky
|tip They look like dense gray rocks with small silver-green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 80 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 125 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 120 |or
step
label "Collect_Solid_Stone_Total"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 90 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|goto Tanaris/0 33.90,68.55 < 30 |c |noway |or
'|complete skill("Jewelcrafting") >= 185 |or
stickystart "Collect_Large_Opal_Total"
stickystart "Collect_Azerothian_Diamond_Total"
stickystart "Collect_Huge_Emerald_Total"
step
label "Collect_Star_Ruby_Total"
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	22.32,54.98	23.55,51.83	26.37,53.38	28.56,52.55	31.62,51.82
path	32.90,49.43	32.52,45.27	33.35,42.82	37.00,44.27	38.68,49.34
path	40.06,46.12	41.79,45.36	43.39,45.31	45.26,44.46	48.22,42.83
path	50.09,45.81	52.30,43.80	54.20,41.70	55.89,38.55	57.58,38.26
path	59.27,40.29	61.27,40.65	64.16,42.61	64.42,45.56	65.99,50.86
path	67.14,51.59	68.90,51.63	71.46,50.92	77.39,49.20	78.12,50.19
path	77.31,51.56	75.77,54.07	74.39,56.04	72.26,60.38	72.06,64.08
path	71.87,65.66	70.00,63.83	67.35,62.94	64.88,62.27	63.77,62.36
path	63.02,60.36	62.46,58.05	60.95,56.00	59.95,54.56	58.25,51.61
path	57.52,50.17	56.53,51.66	55.04,53.13	53.74,54.42	53.21,56.28
path	52.25,58.96	51.38,63.60	51.49,67.71	49.89,70.12	48.81,71.36
path	47.41,70.20	44.61,70.37	43.56,68.65	42.90,67.26	42.47,62.95
path	41.38,61.30	40.46,62.25	38.34,63.41	35.95,62.96	35.91,65.38
path	36.03,67.84	35.26,70.66	35.50,72.88	35.79,74.04	33.83,74.25
path	32.47,73.37	30.82,71.94	31.27,70.10	32.37,70.01	33.90,68.55
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 10 Star Ruby##7910 |or
|tip You will need level 175 Mining to collect these. |notinsticky
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Iron Ore, Mithril Ore, and Thorium Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|goto The Hinterlands/0 33.90,68.55 < 30 |c |noway |or
'|complete skill("Jewelcrafting") >= 260 |or
step
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	35.45,66.69	35.69,63.65	33.97,60.80	33.10,57.98	31.77,55.79
path	30.30,55.75	29.53,55.60	28.77,56.41	27.40,58.19	27.70,60.14
path	27.42,68.06	26.09,66.01	25.62,63.37	24.61,58.76	23.02,56.86
path	21.44,56.49
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 10 Star Ruby##7910 |or
|tip You will need level 175 Mining to collect these. |notinsticky
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Iron Ore, Mithril Ore, and Thorium Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|goto The Hinterlands/0 21.44,56.49 < 30 |c |noway |next "Collect_Star_Ruby_Total" |or
'|complete skill("Jewelcrafting") >= 260 |or
step
label "Collect_Large_Opal_Total"
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	22.32,54.98	23.55,51.83	26.37,53.38	28.56,52.55	31.62,51.82
path	32.90,49.43	32.52,45.27	33.35,42.82	37.00,44.27	38.68,49.34
path	40.06,46.12	41.79,45.36	43.39,45.31	45.26,44.46	48.22,42.83
path	50.09,45.81	52.30,43.80	54.20,41.70	55.89,38.55	57.58,38.26
path	59.27,40.29	61.27,40.65	64.16,42.61	64.42,45.56	65.99,50.86
path	67.14,51.59	68.90,51.63	71.46,50.92	77.39,49.20	78.12,50.19
path	77.31,51.56	75.77,54.07	74.39,56.04	72.26,60.38	72.06,64.08
path	71.87,65.66	70.00,63.83	67.35,62.94	64.88,62.27	63.77,62.36
path	63.02,60.36	62.46,58.05	60.95,56.00	59.95,54.56	58.25,51.61
path	57.52,50.17	56.53,51.66	55.04,53.13	53.74,54.42	53.21,56.28
path	52.25,58.96	51.38,63.60	51.49,67.71	49.89,70.12	48.81,71.36
path	47.41,70.20	44.61,70.37	43.56,68.65	42.90,67.26	42.47,62.95
path	41.38,61.30	40.46,62.25	38.34,63.41	35.95,62.96	35.91,65.38
path	36.03,67.84	35.26,70.66	35.50,72.88	35.79,74.04	33.83,74.25
path	32.47,73.37	30.82,71.94	31.27,70.10	32.37,70.01	33.90,68.55
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 21 Large Opal##12799 |or
|tip You will need level 175 Mining to collect these. |notinsticky
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|goto The Hinterlands/0 33.90,68.55 < 30 |c |noway |or
'|complete skill("Jewelcrafting") >= 281 |or
step
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	35.45,66.69	35.69,63.65	33.97,60.80	33.10,57.98	31.77,55.79
path	30.30,55.75	29.53,55.60	28.77,56.41	27.40,58.19	27.70,60.14
path	27.42,68.06	26.09,66.01	25.62,63.37	24.61,58.76	23.02,56.86
path	21.44,56.49
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 21 Large Opal##12799 |or
|tip You will need level 175 Mining to collect these.
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|goto The Hinterlands/0 21.44,56.49 < 30 |c |noway |next "Collect_Large_Opal_Total" |or
'|complete skill("Jewelcrafting") >= 281 |or
step
label "Collect_Azerothian_Diamond_Total"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect Thorium Ore##10620 |n
collect 20 Azerothian Diamond##12800 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need level 245 Mining to collect these. |notinsticky
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 295 |or
step
label "Collect_Huge_Emerald_Total"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 10 Huge Emerald##12364 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need level 245 Mining to collect these. |notinsticky
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 300 |or
step
label "Begin_Profession_Leveling_Classic"
talk Gelanthis##16624
|tip Inside the building.
buy 1 Jeweler's Kit##20815 |goto Silvermoon City/0 90.91,73.35 |or 2
buy 1 Simple Grinder##20824 |goto Silvermoon City/0 90.91,73.35 |or 2
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 375 |or
stickystart "Collect_Tigerseye_50"
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 110 Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 110 Copper Bar##2840 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 35 |or
step
label "Collect_Tigerseye_50"
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+ |notinsticky
|tip They look like gray rocks with orange and yellow mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 15 Tigerseye##818 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Copper Ore with Jewelcrafting. |notinsticky
'|complete skill("Jewelcrafting") >= 50 |or
step
create 55 Delicate Copper Wire##25255,Jewelcrafting,55 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 51 |or
step
create 1 Delicate Copper Wire##25255,Jewelcrafting,Jewelcrafting,35
|tip Save these, you will need them for future steps.
|tip You may need to make a few more of these.
|tip Each additional Delicate Copper Wire requires 2 Copper Bars.
stickystart "Collect_Delicate_Copper_Wire_50"
step
collect 15 Tigerseye##818 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 50 |or
step
label "Collect_Delicate_Copper_Wire_50"
collect 15 Delicate Copper Wire##20816 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 50 |or
step
talk Kalinda##19775
|tip Inside the building.
Train Tigerseye Band |learn Tigerseye Band##32179 |goto Silvermoon City/0 90.33,73.83
step
create 15 Tigerseye Band##32179,Jewelcrafting,50
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Kalinda##19775
|tip Inside the building.
Train Journeyman Jewelcrafting |skillmax Jewelcrafting,150 |goto Silvermoon City/0 90.33,73.83
step
talk Kalinda##19775
|tip Inside the building.
Train Bronze Setting |learn Bronze Setting##25278 |goto Silvermoon City/0 90.33,73.83
step
collect 120 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
|tip Smelting 2 Bronze Bars requires 1 Copper Bar and 1 Tin Bar.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 20 of these; you will need them for future steps.
'|complete skill("Jewelcrafting") >= 80
step
create 50 Bronze Setting##25278,Jewelcrafting,50 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 150 |or
step
create 1 Bronze Setting##25278,Jewelcrafting,80
|tip Save these, you will need them for future steps.
stickystart "Collect_Moss_Agate_150"
stickystart "Collect_Bronze_Setting_100"
stickystart "Collect_Delicate_Copper_Wire_100"
step
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Tin Vein##3764+
|tip They look like gray rocks with silver mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 60 Shadowgem##1210 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 65 Mining skill to gather these.
|tip They can be Prospected from Copper Ore and Tin Ore with Jewelcrafting.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 20 of these; you will need them for future steps.
'|complete skill("Jewelcrafting") >= 100 |or
step
label "Collect_Moss_Agate_150"
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Tin Vein##3764+ |notinsticky
|tip They look like gray rocks with silver mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 30 Moss Agate##1206 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 65 Mining skill to gather these.
|tip They can be Prospected from Copper Ore and Tin Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save these, you will need them for future steps. |notinsticky
'|complete skill("Jewelcrafting") >= 150 |or
step
label "Collect_Bronze_Setting_100"
collect 20 Bronze Setting##20817 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 100 |or
step
label "Collect_Delicate_Copper_Wire_100"
collect 40 Delicate Copper Wire##20816 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 100 |or
step
talk Kalinda##19775
|tip Inside the building.
Train Gloom Band |learn Gloom Band##25287 |goto Silvermoon City/0 90.33,73.83
step
create 20 Gloom Band##25287,Jewelcrafting,100
|tip You may need to create more or less of these.
|tip Each additional Gloom Band requires 2 Shadowgems and 1 Delicate Copper Wire.
stickystart "Collect_Shadowgem_110"
step
collect 20 Bronze Bar##2841 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 110 |or
step
label "Collect_Shadowgem_110"
collect 20 Shadowgem##1210 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 110 |or
step
talk Kalinda##19775
|tip Inside the building.
Train Ring of Twilight Shadows |learn Ring of Twilight Shadows##25318 |goto Silvermoon City/0 90.33,73.83
step
create 10 Ring of Twilight Shadows##25318,Jewelcrafting,110
step
map Feralas
path	follow loose; loop on; ants curved; dist 20
path	 84.9,39.9	81.8,39.3	79.2,37.2
path	75.3,35.5	71.5,34.7	68.4,39.7
path	68.1,46.1	70.0,48.6	68.7,52.0
path	65.5,52.5	63.8,54.9	61.5,50.5
path	58.2,51.4	53.8,49.4	48.6,44.0
path	48.6,38.8	49.7,34.9	51.6,33.8
path	49.5,26.1	51.7,25.5	51.3,19.0
path	52.7,16.5	54.9,8.1	53.4,5.5
path	51.6,4.8	48.5,11.5	46.1,7.2
path	42.0,8.2	40.0,7.7	37.1,12.1
path	38.2,18.6	37.0,25.6	41.2,25.5
path	41.5,17.2	45.2,21.1	46.0,15.7
path	47.7,22.1	46.2,26.6	47.2,34.7
path	46.7,44.9	50.3,52.7	54.8,53.9
path	55.0,59.8	54.6,64.0	52.9,66.2
path	53.6,73.7	55.5,75.7	61.5,75.0
path	61.6,68.9	64.0,68.9	61.9,66.2
path	61.0,59.1	64.1,58.7	63.7,61.0
path	65.8,63.5	68.1,61.5	71.6,65.1
path	77.2,62.1	75.9,53.5	76.2,49.6
path	79.5,46.2	84.0,45.6	82.5,43.1
click Iron Deposit##1735+
|tip They look like dense gray rocks with small silver-green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals".
collect 80 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 125 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Jewelcrafting") >= 120 |or
step
talk Kalinda##19775
|tip Inside the building.
Train Heavy Stone Statue |learn Heavy Stone Statue##32807 |goto Silvermoon City/0 90.33,73.83
step
create 10 Heavy Stone Statue##32807,Jewelcrafting,120
stickystart "Collect_Bronze_Setting_150"
step
collect 30 Moss Agate##1206 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 150 |or
step
label "Collect_Bronze_Setting_150"
collect 30 Bronze Setting##20817 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 150 |or
step
talk Jandia##4877
|tip Inside the building.
buy 1 Design: Pendant of the Agate Shield##20970 |goto Thousand Needles/0 46.0,51.6 |or
|tip This design is a limited supply item.
|tip You may need to wait a short period of time (around 10 minutes) for it to resupply.
'|complete skill("Jewelcrafting") >= 150 |or
step
use the Design: Pendant of the Agate Shield##20970
Train Pendant of the Agate Shield |learn Pendant of the Agate Shield##25610
step
create 30 Pendant of the Agate Shield##25610,Jewelcrafting,150
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Kalinda##19775
|tip Inside the building.
Train Expert Jewelcrafting |skillmax Jewelcrafting,225 |goto Silvermoon City/0 90.33,73.83
step
talk Kalinda##19775
|tip Inside the building.
Train Mithril Filigree |learn Mithril Filigree##25615 |goto Silvermoon City/0 90.33,73.83
stickystart "Collect_Truesilver_Bar_210"
stickystart "Collect_Solid_Stone_185"
stickystart "Collect_Aquamarine_220"
step
label "Collect_Mithril_Bar_180"
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	22.32,54.98	23.55,51.83	26.37,53.38	28.56,52.55	31.62,51.82
path	32.90,49.43	32.52,45.27	33.35,42.82	37.00,44.27	38.68,49.34
path	40.06,46.12	41.79,45.36	43.39,45.31	45.26,44.46	48.22,42.83
path	50.09,45.81	52.30,43.80	54.20,41.70	55.89,38.55	57.58,38.26
path	59.27,40.29	61.27,40.65	64.16,42.61	64.42,45.56	65.99,50.86
path	67.14,51.59	68.90,51.63	71.46,50.92	77.39,49.20	78.12,50.19
path	77.31,51.56	75.77,54.07	74.39,56.04	72.26,60.38	72.06,64.08
path	71.87,65.66	70.00,63.83	67.35,62.94	64.88,62.27	63.77,62.36
path	63.02,60.36	62.46,58.05	60.95,56.00	59.95,54.56	58.25,51.61
path	57.52,50.17	56.53,51.66	55.04,53.13	53.74,54.42	53.21,56.28
path	52.25,58.96	51.38,63.60	51.49,67.71	49.89,70.12	48.81,71.36
path	47.41,70.20	44.61,70.37	43.56,68.65	42.90,67.26	42.47,62.95
path	41.38,61.30	40.46,62.25	38.34,63.41	35.95,62.96	35.91,65.38
path	36.03,67.84	35.26,70.66	35.50,72.88	35.79,74.04	33.83,74.25
path	32.47,73.37	30.82,71.94	31.27,70.10	32.37,70.01	33.90,68.55
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 142 Mithril Ore##3858 |n
|tip Smelt the ore at a forge.
collect 142 Mithril Bar##3860 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 175 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|goto The Hinterlands/0 33.90,68.55 < 30 |c |noway |or
'|complete skill("Jewelcrafting") >= 180 |or
step
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	35.45,66.69	35.69,63.65	33.97,60.80	33.10,57.98	31.77,55.79
path	30.30,55.75	29.53,55.60	28.77,56.41	27.40,58.19	27.70,60.14
path	27.42,68.06	26.09,66.01	25.62,63.37	24.61,58.76	23.02,56.86
path	21.44,56.49
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 142 Mithril Ore##3858 |n
|tip Smelt the ore at a forge.
collect 142 Mithril Bar##3860 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 175 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|goto The Hinterlands/0 21.44,56.49 < 30 |c |noway |next "Collect_Mithril_Bar_180" |or
'|complete skill("Jewelcrafting") >= 180 |or
step
label "Collect_Truesilver_Bar_210"
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	22.32,54.98	23.55,51.83	26.37,53.38	28.56,52.55	31.62,51.82
path	32.90,49.43	32.52,45.27	33.35,42.82	37.00,44.27	38.68,49.34
path	40.06,46.12	41.79,45.36	43.39,45.31	45.26,44.46	48.22,42.83
path	50.09,45.81	52.30,43.80	54.20,41.70	55.89,38.55	57.58,38.26
path	59.27,40.29	61.27,40.65	64.16,42.61	64.42,45.56	65.99,50.86
path	67.14,51.59	68.90,51.63	71.46,50.92	77.39,49.20	78.12,50.19
path	77.31,51.56	75.77,54.07	74.39,56.04	72.26,60.38	72.06,64.08
path	71.87,65.66	70.00,63.83	67.35,62.94	64.88,62.27	63.77,62.36
path	63.02,60.36	62.46,58.05	60.95,56.00	59.95,54.56	58.25,51.61
path	57.52,50.17	56.53,51.66	55.04,53.13	53.74,54.42	53.21,56.28
path	52.25,58.96	51.38,63.60	51.49,67.71	49.89,70.12	48.81,71.36
path	47.41,70.20	44.61,70.37	43.56,68.65	42.90,67.26	42.47,62.95
path	41.38,61.30	40.46,62.25	38.34,63.41	35.95,62.96	35.91,65.38
path	36.03,67.84	35.26,70.66	35.50,72.88	35.79,74.04	33.83,74.25
path	32.47,73.37	30.82,71.94	31.27,70.10	32.37,70.01	33.90,68.55
click Truesilver Deposit##2047+ |notinsticky
|tip They look like gray rocks with large glowing crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect Truesilver Ore##7911 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 28 Truesilver Bar##6037 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 230 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|goto The Hinterlands/0 33.90,68.55 < 30 |c |noway |or
'|complete skill("Jewelcrafting") >= 210 |or
step
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	35.45,66.69	35.69,63.65	33.97,60.80	33.10,57.98	31.77,55.79
path	30.30,55.75	29.53,55.60	28.77,56.41	27.40,58.19	27.70,60.14
path	27.42,68.06	26.09,66.01	25.62,63.37	24.61,58.76	23.02,56.86
path	21.44,56.49
click Truesilver Deposit##2047+ |notinsticky
|tip They look like gray rocks with large glowing crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect Truesilver Ore##7911 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 28 Truesilver Bar##6037 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need level 230 Mining to collect these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|goto The Hinterlands/0 21.44,56.49 < 30 |c |noway |next "Collect_Truesilver_Bar_210" |or
'|complete skill("Jewelcrafting") >= 210 |or
step
label "Collect_Solid_Stone_185"
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	22.32,54.98	23.55,51.83	26.37,53.38	28.56,52.55	31.62,51.82
path	32.90,49.43	32.52,45.27	33.35,42.82	37.00,44.27	38.68,49.34
path	40.06,46.12	41.79,45.36	43.39,45.31	45.26,44.46	48.22,42.83
path	50.09,45.81	52.30,43.80	54.20,41.70	55.89,38.55	57.58,38.26
path	59.27,40.29	61.27,40.65	64.16,42.61	64.42,45.56	65.99,50.86
path	67.14,51.59	68.90,51.63	71.46,50.92	77.39,49.20	78.12,50.19
path	77.31,51.56	75.77,54.07	74.39,56.04	72.26,60.38	72.06,64.08
path	71.87,65.66	70.00,63.83	67.35,62.94	64.88,62.27	63.77,62.36
path	63.02,60.36	62.46,58.05	60.95,56.00	59.95,54.56	58.25,51.61
path	57.52,50.17	56.53,51.66	55.04,53.13	53.74,54.42	53.21,56.28
path	52.25,58.96	51.38,63.60	51.49,67.71	49.89,70.12	48.81,71.36
path	47.41,70.20	44.61,70.37	43.56,68.65	42.90,67.26	42.47,62.95
path	41.38,61.30	40.46,62.25	38.34,63.41	35.95,62.96	35.91,65.38
path	36.03,67.84	35.26,70.66	35.50,72.88	35.79,74.04	33.83,74.25
path	32.47,73.37	30.82,71.94	31.27,70.10	32.37,70.01	33.90,68.55
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 90 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|goto The Hinterlands/0 33.90,68.55 < 30 |c |noway |or
'|complete skill("Jewelcrafting") >= 185 |or
step
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	35.45,66.69	35.69,63.65	33.97,60.80	33.10,57.98	31.77,55.79
path	30.30,55.75	29.53,55.60	28.77,56.41	27.40,58.19	27.70,60.14
path	27.42,68.06	26.09,66.01	25.62,63.37	24.61,58.76	23.02,56.86
path	21.44,56.49
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 90 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|goto The Hinterlands/0 21.44,56.49 < 30 |c |noway |next "Collect_Solid_Stone_185" |or
'|complete skill("Jewelcrafting") >= 185 |or
step
label "Collect_Aquamarine_220"
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	22.32,54.98	23.55,51.83	26.37,53.38	28.56,52.55	31.62,51.82
path	32.90,49.43	32.52,45.27	33.35,42.82	37.00,44.27	38.68,49.34
path	40.06,46.12	41.79,45.36	43.39,45.31	45.26,44.46	48.22,42.83
path	50.09,45.81	52.30,43.80	54.20,41.70	55.89,38.55	57.58,38.26
path	59.27,40.29	61.27,40.65	64.16,42.61	64.42,45.56	65.99,50.86
path	67.14,51.59	68.90,51.63	71.46,50.92	77.39,49.20	78.12,50.19
path	77.31,51.56	75.77,54.07	74.39,56.04	72.26,60.38	72.06,64.08
path	71.87,65.66	70.00,63.83	67.35,62.94	64.88,62.27	63.77,62.36
path	63.02,60.36	62.46,58.05	60.95,56.00	59.95,54.56	58.25,51.61
path	57.52,50.17	56.53,51.66	55.04,53.13	53.74,54.42	53.21,56.28
path	52.25,58.96	51.38,63.60	51.49,67.71	49.89,70.12	48.81,71.36
path	47.41,70.20	44.61,70.37	43.56,68.65	42.90,67.26	42.47,62.95
path	41.38,61.30	40.46,62.25	38.34,63.41	35.95,62.96	35.91,65.38
path	36.03,67.84	35.26,70.66	35.50,72.88	35.79,74.04	33.83,74.25
path	32.47,73.37	30.82,71.94	31.27,70.10	32.37,70.01	33.90,68.55
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 35 Aquamarine##7909 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these.
|tip They can be Prospected from Tin Ore, Iron Ore, and Mithril Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save these, you will need them for future steps. |notinsticky
'|goto The Hinterlands/0 33.90,68.55 < 30 |c |noway |or
'|complete skill("Jewelcrafting") >= 185 |or
step
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	35.45,66.69	35.69,63.65	33.97,60.80	33.10,57.98	31.77,55.79
path	30.30,55.75	29.53,55.60	28.77,56.41	27.40,58.19	27.70,60.14
path	27.42,68.06	26.09,66.01	25.62,63.37	24.61,58.76	23.02,56.86
path	21.44,56.49
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 35 Aquamarine##7909 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these.
|tip They can be Prospected from Tin Ore, Iron Ore, and Mithril Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save these, you will need them for future steps. |notinsticky
'|goto The Hinterlands/0 21.44,56.49 < 30 |c |noway |next "Collect_Aquamarine_220" |or
'|complete skill("Jewelcrafting") >= 185 |or
step
create 71 Mithril Filigree##25615,Jewelcrafting,71 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 180 |or
step
create 1 Mithril Filigree##25615,Jewelcrafting,180
|tip Save at least 71 of these; you will need them for future steps.
|tip You may need to create more of these.
|tip Each additional Mithril Filigree requires 2 Mithril Bars.
step
collect 90 Solid Stone##7912 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 185 |or
step
talk Kalinda##19775
|tip Inside the building.
Train Solid Stone Statue |learn Solid Stone Statue##32808 |goto Silvermoon City/0 90.33,73.83
step
create 9 Solid Stone Statue##32808,Jewelcrafting,185
|tip You may need to create more or less of these.
|tip Each additional Solid Stone Statue requires 10 Solid Stone.
stickystart "Collect_Mithril_Filigree_210"
step
collect 28 Truesilver Bar##6037 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 210 |or
step
label "Collect_Mithril_Filigree_210"
collect 56 Mithril Filigree##20963 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 210 |or
step
talk Kalinda##19775
|tip Inside the building.
Train Engraved Truesilver Ring |learn Engraved Truesilver Ring##25620 |goto Silvermoon City/0 90.33,73.83
step
create 28 Engraved Truesilver Ring##25620,Jewelcrafting,210
|tip You may need to create more or less of these.
|tip Each additional Engraved Truesilver Ring requires 1 Truesilver Bars and 2 Mithril Filigrees.
step
collect 30 Aquamarine##7909 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 220 |or
step
talk Kalinda##19775
|tip Inside the building.
Train Aquamarine Signet |learn Aquamarine Signet##26874 |goto Silvermoon City/0 90.33,73.83
step
create 10 Aquamarine Signet##26874,Jewelcrafting,220
stickystart "Collect_Mithril_Filigree_225"
step
collect 5 Aquamarine##7909 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 225 |or
step
label "Collect_Mithril_Filigree_225"
collect 15 Mithril Filigree##20963 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 225 |or
step
talk Kalinda##19775
|tip Inside the building.
Train Aquamarine Pendant of the Warrior |learn Aquamarine Pendant of the Warrior##26876 |goto Silvermoon City/0 90.33,73.83
step
create 5 Aquamarine Pendant of the Warrior##26876,Jewelcrafting,225
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Kalinda##19775
|tip Inside the building.
Train Artisan Jewelcrafting |skillmax Jewelcrafting,300 |goto Silvermoon City/0 90.33,73.83
step
talk Kalinda##19775
|tip Inside the building.
Train Thorium Setting |learn Thorium Setting##26880 |goto Silvermoon City/0 90.33,73.83
stickystart "Collect_Large_Opals_281
stickystart "Collect_Azerothian_Diamonds_295"
stickystart "Collect_Huge_Emeralds_300"
step
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+
click Rich Thorium Vein##175404+
|tip They look like green mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 56 Thorium Ore##10620 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 56 Thorium Bar##12359 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 250 |or
step
label "Collect_Large_Opals_281
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 21 Large Opal##12799 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting. |notinsticky
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 281 |or
step
label "Collect_Azerothian_Diamonds_295"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 20 Azerothian Diamond##12800 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting. |notinsticky
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 295 |or
step
label "Collect_Huge_Emeralds_300"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 10 Huge Emerald##12364 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting. |notinsticky
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 300 |or
step
create 56 Thorium Setting##26880,Jewelcrafting,56 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 250 |or
step
create 1 Thorium Setting##26880,Jewelcrafting,250
|tip You may need to create more of these.
|tip Each additional Thorium Setting requires 1 Thorium Bar.
|tip Save these, you will need them for future steps.
stickystart "Collect_Thorium_Setting_260"
step
label "Collect_Star_Ruby_260"
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	22.32,54.98	23.55,51.83	26.37,53.38	28.56,52.55	31.62,51.82
path	32.90,49.43	32.52,45.27	33.35,42.82	37.00,44.27	38.68,49.34
path	40.06,46.12	41.79,45.36	43.39,45.31	45.26,44.46	48.22,42.83
path	50.09,45.81	52.30,43.80	54.20,41.70	55.89,38.55	57.58,38.26
path	59.27,40.29	61.27,40.65	64.16,42.61	64.42,45.56	65.99,50.86
path	67.14,51.59	68.90,51.63	71.46,50.92	77.39,49.20	78.12,50.19
path	77.31,51.56	75.77,54.07	74.39,56.04	72.26,60.38	72.06,64.08
path	71.87,65.66	70.00,63.83	67.35,62.94	64.88,62.27	63.77,62.36
path	63.02,60.36	62.46,58.05	60.95,56.00	59.95,54.56	58.25,51.61
path	57.52,50.17	56.53,51.66	55.04,53.13	53.74,54.42	53.21,56.28
path	52.25,58.96	51.38,63.60	51.49,67.71	49.89,70.12	48.81,71.36
path	47.41,70.20	44.61,70.37	43.56,68.65	42.90,67.26	42.47,62.95
path	41.38,61.30	40.46,62.25	38.34,63.41	35.95,62.96	35.91,65.38
path	36.03,67.84	35.26,70.66	35.50,72.88	35.79,74.04	33.83,74.25
path	32.47,73.37	30.82,71.94	31.27,70.10	32.37,70.01	33.90,68.55
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 10 Star Ruby##7910 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 175 Mining skill to gather these.
|tip They can be Prospected from Iron Ore, Mithril Ore, and Thorium Ore with Jewelcrafting.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|goto The Hinterlands/0 33.90,68.55 < 30 |c |noway |or
'|complete skill("Jewelcrafting") >= 260 |or
step
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	35.45,66.69	35.69,63.65	33.97,60.80	33.10,57.98	31.77,55.79
path	30.30,55.75	29.53,55.60	28.77,56.41	27.40,58.19	27.70,60.14
path	27.42,68.06	26.09,66.01	25.62,63.37	24.61,58.76	23.02,56.86
path	21.44,56.49
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 10 Star Ruby##7910 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 175 Mining skill to gather these.
|tip They can be Prospected from Iron Ore, Mithril Ore, and Thorium Ore with Jewelcrafting.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|goto The Hinterlands/0 21.44,56.49 < 30 |c |noway |next "Collect_Star_Ruby_260" |or
'|complete skill("Jewelcrafting") >= 260 |or
step
label "Collect_Thorium_Setting_260"
collect 10 Thorium Setting##21752 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 260 |or
step
talk Kalinda##19775
|tip Inside the building.
Train Ruby Pendant of Fire |learn Ruby Pendant of Fire##26883 |goto Silvermoon City/0 90.33,73.83
step
create 10 Ruby Pendant of Fire##26883,Jewelcrafting,260
stickystart "Collect_Thorium_Setting_281"
step
collect 21 Large Opal##12799 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 281 |or
step
label "Collect_Thorium_Setting_281"
collect 21 Thorium Setting##21752 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 281 |or
step
talk Kalinda##19775
|tip Inside the building.
Train Simple Opal Ring |learn Simple Opal Ring##26902 |goto Silvermoon City/0 90.33,73.83
step
create 21 Simple Opal Ring##26902,Jewelcrafting,281
|tip You may need to create more or less of these.
|tip Each additional Simple Opal Ring requires 1 Large Opal and 1 Thorium Setting.
stickystart "Collect_Thorium_Setting_295"
step
collect 20 Azerothian Diamond##12800 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 295 |or
step
label "Collect_Thorium_Setting_295"
collect 20 Thorium Setting##21752 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 295 |or
step
talk Kalinda##19775
|tip Inside the building.
Train Diamond Focus Ring |learn Diamond Focus Ring##36526 |goto Silvermoon City/0 90.33,73.83
step
create 20 Diamond Focus Ring##36526,Jewelcrafting,295
|tip You may need to create more or less of these.
|tip Each additional Diamond Focus Ring requires 1 Azerothian Diamond and 1 Thorium Setting.
stickystart "Collect_Thorium_Setting_300"
step
collect 10 Huge Emerald##12364 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 300 |or
step
label "Collect_Thorium_Setting_300"
collect 5 Thorium Setting##21752 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 300 |or
step
talk Kalinda##19775
|tip Inside the building.
Train Emerald Lion Ring |learn Emerald Lion Ring##34961 |goto Silvermoon City/0 90.33,73.83
step
create 5 Emerald Lion Ring##34961,Jewelcrafting,300
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to train Master professions in Outland.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Burning Crusade-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Jewelcrafting |confirm |next "Begin_Profession_Leveling_Outland" |or
'|complete skill("Jewelcrafting") >= 350 |or |next "Begin_Profession_Leveling_Outland"
step
Enter the building |goto Hellfire Peninsula/0 56.41,37.79 < 7 |walk
talk Kalaen##18751
|tip Inside the building.
Learn Master Jewelcrafting |skillmax Jewelcrafting,375 |goto Hellfire Peninsula/0 56.78,37.79
step
talk Kalaen##18751
|tip Inside the building.
Train Bold Blood Garnet |learn Bold Blood Garnet##28905 |goto Hellfire Peninsula/0 56.78,37.79
stickystart "Collect_Flame_Spessarite_Total"
stickystart "Collect_Shadow_Draenite_Total"
stickystart "Collect_Primal_Earth_Total"
stickystart "Collect_Adamantite_Ore_Total"
stickystart "Collect_Adamantite_Powder_Total"
stickystart "Collect_Mercurial_Stone_Total"
step
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+
|tip They look like green mineral deposits along the path.
|tip Enter caves along the path.
|tip Track them on your minimap with "Find Minerals".
collect 30 Blood Garnet##23077 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 300 Mining skill to gather these.
|tip They can be Prospected from Fel Iron Ore, Khorium Ore, and Adamantite Ore with Jewelcrafting.
|tip You can cut any low level gem for points.
'|complete skill("Jewelcrafting") >= 320 |or
step
label "Collect_Flame_Spessarite_Total"
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Enter caves along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 7 Flame Spessarite##21929 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 300 Mining skill to gather these. |notinsticky
|tip They can be Prospected from Khorium Ore, Fel Iron Ore, and Adamantite Ore with Jewelcrafting. |notinsticky
|tip You can cut Flame Spessarite, Blood Garnet, Deep Peridot, and Azure Moonstone for points. |notinsticky
'|complete skill("Jewelcrafting") >= 325 |or
step
label "Collect_Shadow_Draenite_Total"
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Enter caves along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 7 Shadow Draenite##23107 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 300 Mining skill to gather these. |notinsticky
|tip They can be Prospected from Khorium Ore, Fel Iron Ore, and Adamantite Ore with Jewelcrafting. |notinsticky
|tip You can cut Flame Spessarite, Shadow Draenite, and Golden Draenite for points. |notinsticky
'|complete skill("Jewelcrafting") >= 340 |or
step
label "Collect_Primal_Earth_Total"
map Nagrand/0
path follow smart; loop off; ants curved; dist 30
path	46.19,77.20	41.98,78.72	40.31,82.83	32.13,80.25	29.34,79.24
path	28.40,73.85	28.94,66.76	28.17,63.58
kill Shattered Rumbler##17157+ |notinsticky
|tip Follow the path, killing any that you see. |notinsticky
use the Mote of Earth##22573 |notinsticky
|tip Combine 10 Motes of Earth into 1 Primal Earth. |notinsticky
collect 12 Primal Earth##22452 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
'|goto Nagrand/0 28.17,63.58 < 30 |c |noway
'|complete skill("Jewelcrafting") >= 335 |or
step
map Nagrand/0
path follow smart; loop off; ants curved; dist 30
path	28.17,63.58	28.94,66.76	28.40,73.85	29.34,79.24	32.13,80.25
path	40.31,82.83	41.98,78.72	46.19,77.20
kill Shattered Rumbler##17157+ |notinsticky
|tip Follow the path, killing any that you see. |notinsticky
use the Mote of Earth##22573 |notinsticky
|tip Combine 10 Motes of Earth into 1 Primal Earth. |notinsticky
collect 12 Primal Earth##22452 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
'|goto Nagrand/0 46.19,77.20 < 30 |c |noway "Collect_Primal_Earth_Total"
'|complete skill("Jewelcrafting") >= 335 |or
step
label "Collect_Adamantite_Ore_Total"
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
click Adamantite Deposit##181556+ |notinsticky
click Rich Adamantite Deposit##181569+ |notinsticky
|tip They look like dark blue mineral deposits along the path. |notinsticky
|tip Enter caves along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 24 Adamantite Ore##23425 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 12 Adamantite Bar##23446 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 325 Mining skill to gather regular veins and 350 skill to gather rich veins. |notinsticky
'|complete skill("Jewelcrafting") >= 350 |or
step
label "Collect_Adamantite_Powder_Total"
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
click Adamantite Deposit##181556+ |notinsticky
click Rich Adamantite Deposit##181569+ |notinsticky
|tip They look like dark blue mineral deposits along the path. |notinsticky
|tip Enter caves along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 48 Adamantite Powder##24243 |or
|tip Prospect them from Adamantite Ore with Jewelcrafting or purchase them from the auction house. |notinsticky
|tip You will need at least 325 Mining skill to gather regular veins and 350 skill to gather rich veins. |notinsticky
'|complete skill("Jewelcrafting") >= 335 |or
step
label "Collect_Mercurial_Stone_Total"
collect Mercurial Stone##31080 |or
|tip These are created by Alchemists and required to be present in your inventory to transmute Mercurial Adamantite. |notinsticky
|tip Crafting one requires 1 Primal Earth, 1 Primal Life, and 1 Primal Mana. |notinsticky
|tip Have an Alchemist craft one for you or purchase one from the auction house. |notinsticky
'|complete skill("Jewelcrafting") >= 335 |or
step
label "Begin_Profession_Leveling_Outland"
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+
|tip They look like green mineral clusters around this path.
|tip Enter caves along the path.
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
collect 30 Blood Garnet##23077 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Khorium Ore, Fel Iron Ore, and Adamantite Ore with Jewelcrafting.
|tip You can cut any low level gem for points.
'|complete skill("Jewelcrafting") >= 320 |or
step
create 30 Bold Blood Garnet##28905,Jewelcrafting,320
|tip You can cut any low level gem for points.
step
talk Kalaen##18751
|tip Inside the building.
Train Glinting Flame Spessarite |learn Glinting Flame Spessarite##28914 |goto Hellfire Peninsula/0 56.78,37.79
step
collect 7 Flame Spessarite##21929 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Khorium Ore, Fel Iron Ore, and Adamantite Ore with Jewelcrafting.
|tip You can cut Flame Spessarite, Blood Garnet, Deep Peridot, and Azure Moonstone for points.
'|complete skill("Jewelcrafting") >= 325 |or
step
create 7 Glinting Flame Spessarite##28914,Jewelcrafting,325
|tip You can cut Flame Spessarite, Blood Garnet, Deep Peridot, and Azure Moonstone for points.
step
talk Kalaen##18751
|tip Inside the building.
Train Mercurial Adamantite |learn Mercurial Adamantite##38068 |goto Hellfire Peninsula/0 56.78,37.79
stickystart "Collect_Adamantite_Powder_335"
stickystart "Collect_Mercurial_Stone"
step
label "Collect_Primal_Earth_335"
map Nagrand/0
path follow smart; loop off; ants curved; dist 30
path	46.19,77.20	41.98,78.72	40.31,82.83	32.13,80.25	29.34,79.24
path	28.40,73.85	28.94,66.76	28.17,63.58
kill Shattered Rumbler##17157+
|tip Follow the path, killing any that you see.
use the Mote of Earth##22573
|tip Combine 10 Motes of Earth into 1 Primal Earth.
collect 12 Primal Earth##22452 |or
|tip Farm them with Mining or purchase them from the auction house.
'|goto Nagrand/0 28.17,63.58 < 30 |c |noway
'|complete skill("Jewelcrafting") >= 335 |or
step
map Nagrand/0
path follow smart; loop off; ants curved; dist 30
path	28.17,63.58	28.94,66.76	28.40,73.85	29.34,79.24	32.13,80.25
path	40.31,82.83	41.98,78.72	46.19,77.20
kill Shattered Rumbler##17157+
|tip Follow the path, killing any that you see.
use the Mote of Earth##22573
|tip Combine 10 Motes of Earth into 1 Primal Earth.
collect 12 Primal Earth##22452 |or
|tip Farm them with Mining or purchase them from the auction house.
'|goto Nagrand/0 46.19,77.20 < 30 |c |noway |next "Collect_Primal_Earth_335"
'|complete skill("Jewelcrafting") >= 335 |or
step
label "Collect_Adamantite_Powder_335"
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
collect 48 Adamantite Powder##24243 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can also be Prospected from Adamantite Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 335 |or
step
label "Collect_Mercurial_Stone"
collect Mercurial Stone##31080 |or
|tip These are created by Alchemists and required to be present in your inventory to transmute Mercurial Adamantite.
|tip Crafting one requires 1 Primal Earth, 1 Primal Life, and 1 Primal Mana.
|tip Have an Alchemist craft one for you or purchase one from the auction house.
'|complete skill("Jewelcrafting") >= 335 |or
step
create 12 Mercurial Adamantite##38068,Jewelcrafting,12 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 335 |or
step
create 1 Mercurial Adamantite##38068,Jewelcrafting,335
|tip Save these, you will need them for future steps.
step
talk Kalaen##18751
|tip Inside the building.
Train Sovereign Shadow Draenite |learn Sovereign Shadow Draenite##28936 |goto Hellfire Peninsula/0 56.78,37.79
step
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+
|tip They look like green mineral clusters around this path.
|tip Enter caves along the path.
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
collect Fel Iron Ore##23424 |n
collect 7 Shadow Draenite##23107 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Khorium Ore, Fel Iron Ore, and Adamantite Ore with Jewelcrafting.
|tip You can cut Flame Spessarite, Shadow Draenite, and Golden Draenite for points.
'|complete skill("Jewelcrafting") >= 340 |or
step
create 7 Sovereign Shadow Draenite##28936,Jewelcrafting,340
|tip You can cut Flame Spessarite, Shadow Draenite, and Golden Draenite for points.
step
talk Kalaen##18751
|tip Inside the building.
Train Heavy Adamantite Ring |learn Heavy Adamantite Ring##31052 |goto Hellfire Peninsula/0 56.78,37.79
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
collect 24 Adamantite Ore##23425 |n
|tip Smelt the ore at a forge.
collect 12 Adamantite Bar##23446 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 350 |or
step
create 12 Heavy Adamantite Ring##31052,Jewelcrafting,350
step
Reach Level 65 |ding 65
|tip You must be at least level 65 to train Grand Master professions in Northrend.
|tip Use the leveling guides to accomplish this.
step
talk Timothy Jones##28701
|tip Inside the building.
Train Grand Master Jewelcrafting |skillmax Jewelcrafting,450 |goto Dalaran/1 40.67,35.35
step
collect 65 Chalcedony##36923 |or
|tip You can use any combination of Bloodstone, Chalcedony, Dark Jade, Huge Citrine, Shadow Crystal, or Sun Crystal.
|tip 5 of these gems must be either Bloodstone, Chalcedony, Huge Citrine, or Sun Crystals.
|tip Pick whichever is cheapest and skip this step if necessary.
'|complete skill("Jewelcrafting") >= 400 |or
step
_<Create any uncommon Northrend gem>_
|tip Train the gems of your choosing from the trainer.
|tip For the next 45 points, continue training new gems as necessary to gain points.
|tip Open your Jewelcrafting panel and create any trained gem of your choice.
Create 60 Uncommon Northrend Gems |skill Jewelcrafting,395
|tip You may need to make more or less of these.
|tip Each additional gem will require on uncut gem of the base type.
step
talk Timothy Jones##28701
|tip Inside the building.
Train Crystal Chalcedony Amulet |learn Crystal Chalcedony Amulet##58142 |goto Dalaran/1 40.67,35.35
|tip You can also learn Bloodstone Band, Crystal Citrine Necklace, or Sun Rock Ring and make those.
step
collect 5 Chalcedony##36923 |or
|tip You collected these in a previous step.
|tip 5 of these gems must be either Bloodstone, Chalcedony, Huge Citrine, or Sun Crystals.
|tip Pick whichever is cheapest and skip this step if necessary.
'|complete skill("Jewelcrafting") >= 400 |or
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
kill Lifeblood Elemental##29124+
collect 10 Crystallized Earth##37701 |or
|tip Farm them from earth elementals or purchase them from the auction house.
|tip You can also farm them from Mining nodes with Northrend Mining guides.
'|complete skill("Jewelcrafting") >= 400 |or
step
create 5 Crystal Chalcedony Amulet##58142,Jewelcrafting,400
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
use Crystallized Earth##37701
|tip Combine 10 Crystallized Earth into 1 Eternal Earth.
kill Lifeblood Elemental##29124+
collect 46 Eternal Earth##35624 |or
|tip Farm them from earth elementals or purchase them from the auction house.
|tip You can also farm them from Mining nodes with Northrend Mining guides.
|tip You can also collect 23 Eternal Earth and 23 Eternal Shadow and make Shadowmight Rings.
|tip These totals are approximate.
|tip You may need more or less of these.
'|complete skill("Jewelcrafting") >= 420 |or
step
talk Timothy Jones##28701
|tip Inside the building.
Train Stoneguard Band |learn Stoneguard Band##58145 |goto Dalaran/1 40.67,35.35
|tip You can also learn Shadowmight Ring and make those.
step
create 23 Stoneguard Band##58145,Jewelcrafting,420
|tip You may need more or less of these.
|tip Each additional Stoneguard Band requires 2 Eternal Earth.
|tip Each additional Shadowmight Ring requies 1 Eternal Earth and 1 Eternal Shadow.
step
_<Create any Northrend meta gem>_
|tip Train the meta gems of your choosing from the trainer.
|tip For the next 30 points, continue training new gems as necessary to gain points.
|tip Open your Jewelcrafting panel and create any trained meta gem of your choice.
|tip This is generally the best way to finish, as you can sell popular gems to recover gold.
Create Northrend Meta Gems |skill Jewelcrafting,450
|tip Each additional meta gem will require on uncut gem of the base type.
|tip Alternatively, you can make Icy Prisms on cooldown for 1 Frozen Orb, 1 Chalcedony, 1 Dark Jade, and 1 Shadow Crystal.
|tip You can also make Dream Signets for 1 Titanium Bar, 1 Forest Emerald, and 1 Dream Shard.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Cataclysm-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Jewelcrafting |confirm |next "Begin_Jewelcrafting_Leveling_Cataclysm" |or
'|complete skill("Jewelcrafting") >= 450 |only if default |or |next "Begin_Jewelcrafting_Leveling_Cataclysm"
stickystart "Collect_Hessonite_Total"
stickystart "Collect_Volatile_Fire_Total"
stickystart "Collect_Volatile_Air_Total"
stickystart "Collect_Nightstone_Total"
stickystart "Collect_Ocean_Sapphire_Total"
stickystart "Collect_Shadowspirit_Total"
step
collect 30 Jasper##52182
|tip Farm them with Mining or purchase them from the Auction House.
|tip Jasper can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 468
step
label "Collect_Hessonite_Total"
collect 34 Hessonite##52181
|tip Farm them with Mining or purchase them from the Auction House.
|tip Hessonite can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 485
step
label "Collect_Nightstone_Total"
collect 40 Nightstone##52180
|tip Farm them with Mining or purchase them from the Auction House.
|tip Nightstone can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 500
step
label "Collect_Shadowspirit_Total"
collect 20 Shadowspirit Diamond##52303
|tip Transmute them with Alchemy or purchase them from the Auction House.
|tip Each Shadowspirit Diamond requires 3 Alicite, 3 Nightstone, 3 Zephyrite, 3 Carnelian, 3 Hessonite and 3 Jasper to make.
|only if skill("Jewelcrafting") < 520
step
label "Collect_Ocean_Sapphire_Total"
collect 25 Ocean Sapphire##52191
|tip Farm them with Mining or purchase them from the Auction House.
|tip Ocean Sapphires can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 525
step
label "Collect_Volatile_Air_Total"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	39.56,47.29	41.39,48.90	41.53,46.16	39.76,44.61
kill Storm Vortex##47728+
collect 40 Volatile Air##52328 |or
|tip Or purchase them from the auction house |notinsticky
|only if skill("Jewelcrafting") < 525
step
label "Collect_Volatile_Fire_Total"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 20 Volatile Fire##52325
|tip Farm them from elementals or purchase them from the Auction House.
|only if skill("Jewelcrafting") < 525
step
label "Begin_Jewelcrafting_Leveling_Cataclysm"
talk Lugrah##46675
Train Jewelcrafting |skillmax Jewelcrafting,525 |goto Orgrimmar/1 72.49,34.34
|tip You must be at least level 75.
step
talk Lugrah##46675
learn Jasper Ring##73494 |goto Orgrimmar/1 72.49,34.34
step
talk Marith Lazuria##50482
buy 70 Jeweler's Setting##52188 |goto Orgrimmar/1 72.59,34.44
|only if skill("Jewelcrafting") < 525
step
collect 18 Jasper##52182
|tip Farm them with Mining or purchase them from the Auction House.
|tip Jasper can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 468 |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 18 Jasper Ring>_
|tip You may need to craft a few more.
Reach 468 Jewelcrafting |skill Jewelcrafting,468
step
talk Lugrah##46675
learn Hessonite Band##73495 |goto Orgrimmar/1 72.49,34.34
step
collect 34 Hessonite##52181
|tip Farm them with Mining or purchase them from the Auction House.
|tip Hessonite can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 485
step
Open Your Jewelcrafting Crafting Panel:
_<Create 17 Hessonite Band>_
Reach 485 Jewelcrafting |skill Jewelcrafting,485
step
talk Lugrah##46675
learn Nightstone Choker##73497 |goto Orgrimmar/1 72.49,34.34
step
collect 40 Nightstone##52180
|tip Farm them with Mining or purchase them from the Auction House.
|tip Nightstone can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 500
step
Open Your Jewelcrafting Crafting Panel:
_<Create 15 Nightstone Choker>_
|tip You may need to craft a few more.
Reach 500 Jewelcrafting |skill Jewelcrafting,500
step
Collect #4# Illustrious Jewelcrafter's Token |complete curcount(361) >= 4
|tip It will take 4 days to collect these.
|tip Use the "Jewelcrafting Daily Guide" to complete dailies.
|only if skill("Jewelcrafting") < 520
step
talk Taryssa Lazuria##57922
buy 1 Design: Forlorn Shadowspirit Diamond##52445 |goto Orgrimmar/1 72.34,34.35
|only if skill("Jewelcrafting") < 520
step
use the Design: Forlorn Shadowspirit Diamond##52445
learn Forlorn Shadowspirit Diamond##73476
step
collect 20 Shadowspirit Diamond##52303
|tip Transmute them with Alchemy or purchase them from the Auction House.
|tip Each Shadowspirit Diamond requires 3 Alicite, 3 Nightstone, 3 Zephyrite, 3 Carnelian, 3 Hessonite and 3 Jasper to make.
|only if skill("Jewelcrafting") < 520
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Forlorn Shadowspirit Diamond>_
Reach 520 Jewelcrafting |skill Jewelcrafting,520
step
talk Lugrah##46675
learn Vicious Sapphire Necklace##99542 |goto Orgrimmar/1 72.49,34.34
stickystart "Collect_Volatile_Air_525"
stickystart "Collect_Volatile_Fire_525"
step
collect 25 Ocean Sapphire##52191
|tip Farm them with Mining or purchase them from the Auction House.
|tip Ocean Sapphires can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 525
step
label "Collect_Volatile_Air_525"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	39.56,47.29	41.39,48.90	41.53,46.16	39.76,44.61
kill Storm Vortex##47728+
collect 40 Volatile Air##52328 |or
|tip Or purchase them from the auction house |notinsticky
|only if skill("Jewelcrafting") < 525
step
label "Collect_Volatile_Fire_525"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 20 Volatile Fire##52325
|tip Farm them from elementals or purchase them from the Auction House.
|only if skill("Jewelcrafting") < 525
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Vicious Sapphire Necklace>_
Reach 525 Jewelcrafting |skill Jewelcrafting,525
step
Reach Level 80 |ding 80
|tip You must be at least level 80 to train Zen Master professions.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Pandaria materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Jewelcrafting |confirm |next "Begin_Profession_Leveling_Pandaria" |or
'|complete skill("Jewelcrafting") >= 500 |or |next "Begin_Profession_Leveling_Pandaria"
stickystart "Collect_Tiger_Opal_Total"
stickystart "Collect_Sunstone_Total"
stickystart "Collect_Gems_Total"
step
collect 9 Lapis Lazuli##76133 |or
|tip You can aquire these by prospecting ore or buy them from the Auction House.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Ghost Iron Ore"
'|complete skill("Jewelcrafting") >= 525
step
label "Collect_Tiger_Opal_Total"
collect 9 Tiger Opal##76134 |or
|tip You can aquire these by prospecting ore or buy them from the Auction House.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Ghost Iron Ore"
'|complete skill("Jewelcrafting") >= 525
step
label "Collect_Sunstone_Total"
collect 9 Sunstone##76135 |or
|tip You can aquire these by prospecting ore or buy them from the Auction House.
|loadguide "Profession Guides\\Mining\\Farming Guides\\Ghost Iron Ore"
'|complete skill("Jewelcrafting") >= 525
step
label "Collect_Gems_Total"
Collect 79 more Uncommon gems through Prospecting or purchase from the Auction House |or
|tip Choose whichever gems are cheapest:
|tip Tiger Opal, Lapis Lazuli, Sunstone, Roguestone, Pandarian Garnet, or Alexandrite.
step
label "Begin_Profession_Leveling_Pandaria"
talk Lugrah##46675
Train Zen Master Jewelcrafting |skillmax Jewelcrafting,600 |goto Orgrimmar/1 72.49,34.34
step
talk Lugrah##46675
Train Ornate Band |learn Ornate Band##122661 |goto Orgrimmar/1 72.49,34.34
step
create 9 Ornate Band##122661,Jewelcrafting,525
'complete skill("Jewelcrafting") >= 525
step
talk Lugrah##46675
Train Solid Lapis Lazuli |learn Solid Lapis Lazuli##107619 |goto Orgrimmar/1 72.49,34.34
|tip You can choose whichever uncommon gem you have available instead of Lapis Lazuli.
step
create 70 Solid Lapis Lazuli##76567,Jewelcrafting,585
|tip You can choose whichever uncommon gem you have available instead of Lapis Lazuli.
|tip
'complete skill("Jewelcrafting") >= 585
step
Complete a daily gem research, using 3 Rare gems (they must be the same kind).
|tip Pick either Primordial Ruby, River's Heart, Sun's Radiance, Vermilion Onyx, Imperial Amethyst, or Wild Jade.
|tip You can find the gem research in your profession skill window.
'|complete skill("Jewelcrafting") >= 588
step
Craft 6 of the gem you discovered from the daily research.
|tip You will need 6 of the same type of rare gem that you used to research.
'|complete skill("Jewelcrafting") >= 600
]])
QuestCore:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Leatherworking (1-600)",{
expansion="mists",
mopready=true,
author="QuestCore",
condition_suggested=function() return skill('Leatherworking') > 0 end,
description="This guide will walk you through leveling your Leatherworking skill from 1-600.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/1 62.22,45.65 < 5 |walk
talk Karolek##3365
|tip Inside the building.
Train Apprentice Leatherworking |skillmax Leatherworking,75 |goto Orgrimmar/1 60.87,54.96
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Leatherworking |confirm |next "Begin_Profession_Leveling_Classic" |or
'|complete skill("Leatherworking") >= 300 |or |next "Begin_Profession_Leveling_Classic"
stickystart "Collect_Light_Leather_Total"
stickystart "Collect_Medium_Leather_Total"
stickystart "Collect_Heavy_Hide_Total"
stickystart "Collect_Heavy_Leather_Total"
stickystart "Collect_Thick_Leather_Total"
stickystart "Collect_Rugged_Leather_Total"
step
Kill enemies around this area
|tip Skin their corpses.
collect 57 Ruined Leather Scraps##2934 |or |goto Durotar 43.89,17.49
|tip Farm them with Skinning or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
You can find more around [39.47,17.22]
'|complete skill("Leatherworking") >= 20 |or
step
label "Collect_Light_Leather_Total"
Kill enemies around this area |notinsticky
|tip Skin their corpses. |notinsticky
collect 375 Ruined Leather Scraps##2934 |goto Durotar 43.89,17.49 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
You can find more around [39.47,17.22]
'|complete skill("Leatherworking") >= 125 |or
step
label "Collect_Medium_Leather_Total"
Kill Yeti enemies around this area |notinsticky
|tip Skin their corpses. |notinsticky
|tip You can find more inside the cave. |notinsticky
collect 352 Medium Leather##2319 |goto Hillsbrad Foothills 46.64,54.41 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip You will need level 155 Skinning to collect these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 155 |or
step
label "Collect_Heavy_Hide_Total"
Kill enemies around this area |notinsticky
|tip Skin their corpses. |notinsticky
collect 20 Heavy Hide##4235 |goto The Hinterlands 16.19,50.97 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip You will need level 205 Skinning to collect these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 171 |or
step
label "Collect_Heavy_Leather_Total"
Kill enemies around this area |notinsticky
|tip Only beast enemies will be skinnable. |notinsticky
|tip Skin their corpses. |notinsticky
collect 215 Heavy Leather##4234 |goto Dustwallow Marsh 40.73,58.37 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip You will need level 185 Skinning to collect these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
You can find more around: |notinsticky
[43.35,50.06]
[40.42,41.57]
'|complete skill("Leatherworking") >= 200 |or
step
label "Collect_Thick_Leather_Total"
Kill Ravasaur enemies around this area |notinsticky
|tip Skin their corpses. |notinsticky
collect 739 Thick Leather##4304 |goto Un'Goro Crater 67.37,72.59 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip You will need level 250 Skinning to collect these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
You can find more around: |notinsticky
[65.75,64.16]
[70.21,55.33]
'|complete skill("Leatherworking") >= 260 |or
step
label "Collect_Rugged_Leather_Total"
Kill Ice Thistle enemies around this area |notinsticky
|tip You can find more inside the cave. |notinsticky
|tip Skin their corpses. |notinsticky
collect 344 Rugged Leather##8170 |goto Winterspring 66.43,44.38 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip You will need level 275 Skinning to collect these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
You can find more inside the cave at [67.67,41.72]
'|complete skill("Leatherworking") >= 300 |or
step
label "Begin_Profession_Leveling_Classic"
Kill enemies around this area
|tip Skin their corpses.
collect 57 Ruined Leather Scraps##2934 |or |goto Durotar 43.89,17.49
|tip Farm them with Skinning or purchase them from the auction house.
|tip You can also use 20 Light Leather to make 20 Light Armor Kits.
You can find more around [39.47,17.22]
'|complete skill("Leatherworking") >= 20 |or
step
create 19 Light Leather##2881,Leatherworking,20
|tip Save these, you will need them for future steps.
|tip You can also use 19 Light Leather to make 19 Light Armor Kits.
step
Kill enemies around this area
|tip Skin their corpses.
collect 40 Light Leather##2318 |or |goto Durotar 43.89,17.49
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around [39.47,17.22]
'|complete skill("Leatherworking") >= 45 |or
step
create 40 Light Armor Kit##2152,Leatherworking,45
|tip You may need to create more or less of these.
|tip Each additional Light Armor Kit requires 1 Light Leather.
step
Kill enemies around this area
|tip Skin their corpses.
collect 42 Light Leather##2318 |or |goto Durotar 43.89,17.49
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around [39.47,17.22]
'|complete skill("Leatherworking") >= 55 |or
step
Tamar##3366
|tip Inside the building.
buy 21 Coarse Thread##2320 |goto Orgrimmar/1 60.36,54.38 |or
'|complete skill("Leatherworking") >= 55 |or
step
create 21 Handstitched Leather Cloak##9058,Leatherworking,55
|tip You may need to create more or less of these.
|tip Each additional Handstitched Leather Cloak requires 2 Light Leather and 1 Coarse Thread.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Karolek##3365
|tip Inside the building.
Train Journeyman Leatherworking |skillmax Leatherworking,150 |goto Orgrimmar/1 60.87,54.96
step
talk Karolek##3365
|tip Inside the building.
Train Embossed Leather Gloves |learn Embossed Leather Gloves##3756 |goto Orgrimmar/1 60.87,54.96
step
Kill enemies around this area
|tip Skin their corpses.
collect 165 Light Leather##2318 |or |goto Durotar 43.89,17.49
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around [39.47,17.22]
'|complete skill("Leatherworking") >= 100 |or
step
Tamar##3366
|tip Inside the building.
buy 180 Coarse Thread##2320 |goto Orgrimmar/1 60.36,54.38 |or
|tip Save these, you will need them for future steps.
'|complete skill("Leatherworking") >= 100 |or
step
create 55 Embossed Leather Gloves##3756,Leatherworking,100
|tip You may need to create more or less of these.
|tip Each additional Embossed Leather Glove requires 3 Light Leather and 2 Coarse Thread.
step
talk Karolek##3365
|tip Inside the building.
Train Fine Leather Belt |learn Fine Leather Belt##3763 |goto Orgrimmar/1 60.87,54.96
step
Kill enemies around this area
|tip Skin their corpses.
collect 210 Light Leather##2318 |or |goto Durotar 43.89,17.49
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around [39.47,17.22]
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 125 |or
step
Tamar##3366
|tip Inside the building.
buy 70 Coarse Thread##2320 |goto Orgrimmar/1 60.36,54.38 |or
|tip You bought these in a previous step.
'|complete skill("Leatherworking") >= 125 |or
step
create 35 Fine Leather Belt##3763,Leatherworking,125
|tip You may need to create more or less of these.
|tip Each additional Fine Leather Belt requires 6 Light Leather and 2 Coarse Thread.
step
talk Karolek##3365
|tip Inside the building.
Train Dark Leather Boots |learn Dark Leather Boots##2167 |goto Orgrimmar/1 60.87,54.96
step
Kill Yeti enemies around this area
|tip Skin their corpses.
|tip You can find more inside the cave.
|tip You will need level 155 Skinning to collect these.
collect 72 Medium Leather##2319 |or |goto Hillsbrad Foothills 46.64,54.41
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 137 |or
step
Tamar##3366
|tip Inside the building.
buy 36 Fine Thread##2321 |goto Orgrimmar/1 60.36,54.38 |or 2
buy 18 Gray Dye##4340 |goto Orgrimmar/1 60.36,54.38 |or 2
'|complete skill("Leatherworking") >= 137 |or
step
create 18 Dark Leather Boots##2167,Leatherworking,137
|tip You may need to create more or less of these.
|tip Each additional Dark Leather Boot requires 4 Medium Leather, 2 Fine Thread, and 1 Gray Dye.
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Karolek##3365
|tip Inside the building.
Train Expert Leatherworking |skillmax Leatherworking,225 |goto Orgrimmar/1 60.87,54.96
step
talk Karolek##3365
|tip Inside the building.
Train Dark Leather Pants |learn Dark Leather Pants##7135 |goto Orgrimmar/1 60.87,54.96
step
Kill Yeti enemies around this area
|tip Skin their corpses.
|tip You can find more inside the cave.
|tip You will need level 155 Skinning to collect these.
collect 240 Medium Leather##2319 |or |goto Hillsbrad Foothills 46.64,54.41
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 150 |or
step
Tamar##3366
|tip Inside the building.
buy 20 Fine Thread##2321 |goto Orgrimmar/1 60.36,54.38 |or 2
buy 20 Gray Dye##4340 |goto Orgrimmar/1 60.36,54.38 |or 2
'|complete skill("Leatherworking") >= 150 |or
step
create 20 Dark Leather Pants##7135,Leatherworking,150
|tip You may need to create more or less of these.
|tip Each additional Dark Leather Pant requires 12 Medium Leather, 1 Fine Thread, and 1 Gray Dye.
step
talk Karolek##3365
|tip Inside the building.
Train Heavy Leather |learn Heavy Leather##20649 |goto Orgrimmar/1 60.87,54.96
step
Kill Yeti enemies around this area
|tip Skin their corpses.
|tip You can find more inside the cave.
|tip You will need level 155 Skinning to collect these.
collect 40 Medium Leather##2319 |or |goto Hillsbrad Foothills 46.64,54.41
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 155 |or
step
create 8 Heavy Leather##20649,Leatherworking,155
|tip You may need to create more or less of these.
|tip Each additional Heavy Leather requires 5 Medium Leather.
step
talk Karolek##3365
|tip Inside the building.
Train Cured Heavy Hide |learn Cured Heavy Hide##3818 |goto Orgrimmar/1 60.87,54.96
step
Kill enemies around this area
|tip Skin their corpses.
|tip You will need level 205 Skinning to collect these.
collect 20 Heavy Hide##4235 |or |goto The Hinterlands 16.19,50.97
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 171 |or
step
Tamar##3366
|tip Inside the building.
buy 60 Salt##4289 |goto Orgrimmar/1 60.36,54.38 |or
'|complete skill("Leatherworking") >= 171 |or
step
create 20 Cured Heavy Hide##3818,Leatherworking,20 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Leatherworking") >= 171 |or
step
create 1 Cured Heavy Hide##3818,Leatherworking,165
|tip Save at least 20 of these; you will need them for future steps.
|tip You may need to create more of these.
|tip Each additional Cured Heavy Hide requires 1 Heavy Hide and 3 Salt.
step
talk Karolek##3365
|tip Inside the building.
Train Heavy Armor Kit |learn Heavy Armor Kit##3780 |goto Orgrimmar/1 60.87,54.96
step
Kill enemies around this area
|tip Only beast enemies will be skinnable.
|tip Skin their corpses.
|tip You will need level 185 Skinning to collect these.
collect 95 Heavy Leather##4234 |or |goto Dustwallow Marsh 40.73,58.37
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around: |notinsticky
[43.35,50.06]
[40.42,41.57]
'|complete skill("Leatherworking") >= 180 |or
step
Tamar##3366
|tip Inside the building.
buy 39 Fine Thread##2321 |goto Orgrimmar/1 60.36,54.38 |or
|tip Save these, you will need them for future steps.
'|complete skill("Leatherworking") >= 180 |or
step
create 19 Heavy Armor Kit##3780,Leatherworking,180
|tip You may need to create more of these.
|tip Each additional Heavy Armor Kit requires 5 Heavy Leather and 1 Fine Thread.
step
talk Karolek##3365
|tip Inside the building.
Train Barbaric Shoulders |learn Barbaric Shoulders##7151 |goto Orgrimmar/1 60.87,54.96
stickystart "Collect_Cured_Heavy_Hide_190"
step
Kill enemies around this area
|tip Only beast enemies will be skinnable.
|tip Skin their corpses.
|tip You will need level 185 Skinning to collect these.
collect 80 Heavy Leather##4234 |or |goto Dustwallow Marsh 40.73,58.37
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around: |notinsticky
[43.35,50.06]
[40.42,41.57]
'|complete skill("Leatherworking") >= 190 |or
step
label "Collect_Cured_Heavy_Hide_190"
collect 10 Cured Heavy Hide##4236 |or
|tip You created these in a previous step.
'|complete skill("Leatherworking") >= 190 |or
step
Tamar##3366
|tip Inside the building.
buy 20 Fine Thread##2321 |goto Orgrimmar/1 60.36,54.38 |or
|tip You purchased these in a previous step.
'|complete skill("Leatherworking") >= 190 |or
step
create 10 Barbaric Shoulders##7151,Leatherworking,190
step
talk Karolek##3365
|tip Inside the building.
Train Guardian Gloves |learn Guardian Gloves##7156 |goto Orgrimmar/1 60.87,54.96
stickystart "Collect_Cured_Heavy_Hide_200"
step
Kill enemies around this area
|tip Only beast enemies will be skinnable.
|tip Skin their corpses.
|tip You will need level 185 Skinning to collect these.
collect 40 Heavy Leather##4234 |or |goto Dustwallow Marsh 40.73,58.37
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around: |notinsticky
[43.35,50.06]
[40.42,41.57]
'|complete skill("Leatherworking") >= 200 |or
step
label "Collect_Cured_Heavy_Hide_200"
collect 10 Cured Heavy Hide##4236 |or
|tip You created these in a previous step.
'|complete skill("Leatherworking") >= 200 |or
step
Tamar##3366
|tip Inside the building.
buy 15 Silken Thread##4291 |goto Orgrimmar/1 60.36,54.38 |or
|tip Save these, you will need them for future steps.
'|complete skill("Leatherworking") >= 200 |or
step
create 10 Guardian Gloves##7156,Leatherworking,200
step
talk Karolek##3365
|tip Inside the building.
Train Thick Armor Kit |learn Thick Armor Kit##10487 |goto Orgrimmar/1 60.87,54.96
step
Kill Ravasaur enemies around this area
|tip Skin their corpses.
|tip You will need level 250 Skinning to collect these.
collect 25 Thick Leather##4304 |or |goto Un'Goro Crater 67.37,72.59
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around: |notinsticky
[65.75,64.16]
[70.21,55.33]
'|complete skill("Leatherworking") >= 205 |or
step
Tamar##3366
|tip Inside the building.
buy 5 Silken Thread##4291 |goto Orgrimmar/1 60.36,54.38 |or
|tip You purchased these in a previous step.
'|complete skill("Leatherworking") >= 205 |or
step
create 5 Thick Armor Kit##10487,Leatherworking,205
step
Reach Level 35 |ding 35
|tip You must be at least this level before you can learn the next rank of this profession.
|tip Use the leveling guides to accomplish this.
step
talk Karolek##3365
|tip Inside the building.
Train Artisan Leatherworking |skillmax Leatherworking,300 |goto Orgrimmar/1 60.87,54.96
step
talk Karolek##3365
|tip Inside the building.
Train Nightscape Headband |learn Nightscape Headband##10507 |goto Orgrimmar/1 60.87,54.96
step
Kill Ravasaur enemies around this area
|tip Skin their corpses.
|tip You will need level 250 Skinning to collect these.
collect 200 Thick Leather##4304 |or |goto Un'Goro Crater 67.37,72.59
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around: |notinsticky
[65.75,64.16]
[70.21,55.33]
'|complete skill("Leatherworking") >= 235 |or
step
Tamar##3366
|tip Inside the building.
buy 166 Silken Thread##4291 |goto Orgrimmar/1 60.36,54.38 |or
|tip Save these, you will need them for future steps.
'|complete skill("Leatherworking") >= 235 |or
step
create 40 Nightscape Headband##10507,Leatherworking,235
|tip You may need to make more or less of these.
|tip Each additional Nightscape Headband requires 5 Thick Leather and 2 Silken Thread.
step
talk Karolek##3365
|tip Inside the building.
Train Nightscape Pants |learn Nightscape Pants##10548 |goto Orgrimmar/1 60.87,54.96
step
Kill Ravasaur enemies around this area
|tip Skin their corpses.
|tip You will need level 250 Skinning to collect these.
collect 210 Thick Leather##4304 |or |goto Un'Goro Crater 67.37,72.59
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around: |notinsticky
[65.75,64.16]
[70.21,55.33]
'|complete skill("Leatherworking") >= 250 |or
step
Tamar##3366
|tip Inside the building.
buy 60 Silken Thread##4291 |goto Orgrimmar/1 60.36,54.38 |or
|tip You purchased these in a previous step.
'|complete skill("Leatherworking") >= 250 |or
step
create 15 Nightscape Pants##10548,Leatherworking,250
step
talk Karolek##3365
|tip Inside the building.
Train Nightscape Boots |learn Nightscape Boots##10558 |goto Orgrimmar/1 60.87,54.96
step
Kill Ravasaur enemies around this area
|tip Skin their corpses.
|tip You will need level 250 Skinning to collect these.
collect 304 Thick Leather##4304 |or |goto Un'Goro Crater 67.37,72.59
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around: |notinsticky
[65.75,64.16]
[70.21,55.33]
'|complete skill("Leatherworking") >= 260 |or
step
Tamar##3366
|tip Inside the building.
buy 38 Heavy Silken Thread##8343 |goto Orgrimmar/1 60.36,54.38 |or
|tip You purchased these in a previous step.
'|complete skill("Leatherworking") >= 260 |or
step
create 19 Nightscape Boots##10558,Leatherworking,265
|tip You may need to make more or less of these.
|tip Each additional Nightscape Boot requires 16 Thick Leather and 2 Silken Thread.
step
talk Karolek##3365
|tip Inside the building.
Train Wicked Leather Bracers |learn Wicked Leather Bracers##19052 |goto Orgrimmar/1 60.87,54.96
step
Tamar##3366
|tip Inside the building.
buy 28 Black Dye##2325 |goto Orgrimmar/1 60.36,54.38 |or 2
buy 28 Rune Thread##14341 |goto Orgrimmar/1 60.36,54.38 |or 2
'|complete skill("Leatherworking") >= 290 |or
step
Kill Ice Thistle enemies around this area
|tip You can find more inside the cave.
|tip Skin their corpses.
|tip You will need level 275 Skinning to collect these.
collect 264 Rugged Leather##8170 |or |goto Winterspring 66.43,44.38
|tip Farm them with Skinning or purchase them from the auction house.
You can find more inside the cave at [67.67,41.72]
'|complete skill("Leatherworking") >= 290 |or
step
create 28 Wicked Leather Bracers##19052,Leatherworking,290
|tip You may need to make more or less of these.
|tip Each additional Wicked Leather Bracer requires 8 Rugged Leather, 1 Black Dye, and 1 Rune Thread.
step
talk Karolek##3365
|tip Inside the building.
Train Wicked Leather Headband |learn Wicked Leather Headband##19071 |goto Orgrimmar/1 60.87,54.96
step
Kill Ice Thistle enemies around this area
|tip You can find more inside the cave.
|tip Skin their corpses.
|tip You will need level 275 Skinning to collect these.
collect 120 Rugged Leather##8170 |or |goto Winterspring 66.43,44.38
|tip Farm them with Skinning or purchase them from the auction house.
You can find more inside the cave at [67.67,41.72]
'|complete skill("Leatherworking") >= 300 |or
step
Tamar##3366
|tip Inside the building.
buy 10 Black Dye##2325 |goto Orgrimmar/1 60.36,54.38 |or 2
buy 10 Rune Thread##14341 |goto Orgrimmar/1 60.36,54.38 |or 2
'|complete skill("Leatherworking") >= 300 |or
step
create 10 Wicked Leather Headband##19071,Leatherworking,300
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to train Master professions in Outland.
|tip Use the leveling guides to accomplish this.
step
talk Barim Spilthoof##18754
Learn Master Leatherworking |skillmax Leatherworking,375 |goto Hellfire Peninsula/0 56.22,38.70
step
talk Barim Spilthoof##18754
Train Knothide Armor Kit |learn Knothide Armor Kit##32456 |goto Hellfire Peninsula/0 56.22,38.70
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Burning Crusade-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Leatherworking |confirm |next "Begin_Profession_Leveling_Outland" |or
'|complete skill("Leatherworking") >= 375 |or |next "Begin_Profession_Leveling_Outland"
stickystart "Collect_Fel_Hide_Total"
stickystart "Collect_Thick_Clefthoof_Leather_Total"
step
map Netherstorm/0
path follow smart; loop on; ants curved; dist 30
path	43.61,57.06	45.22,57.65	47.41,56.58	48.25,54.31	48.18,51.86
path	46.52,51.17	45.58,49.75	43.63,50.57	43.29,52.27	43.66,54.99
path	44.85,56.21
Kill enemies around this area
|tip Only Beast enemies will be skinnable.
|tip Skin their corpses.
collect 1355 Knothide Leather##21887 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Leatherworking") >= 336 |or
step
label "Collect_Fel_Hide_Total"
map Netherstorm/0
path follow smart; loop on; ants curved; dist 30
path	55.33,60.50	58.09,60.46	58.98,58.47	61.66,59.15	63.22,59.54
path	65.48,61.63	66.93,63.05	63.63,64.45	61.98,62.72
kill Warp Chaser##18884+ |notinsticky
|tip Skin their corpses. |notinsticky
collect 24 Fel Hide##25707 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 375 |or
step
label "Collect_Thick_Clefthoof_Leather_Total"
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	44.28,26.55	43.25,29.59	45.88,33.29	47.54,38.47	50.14,51.61
path	52.51,54.52	54.09,50.75	54.25,48.06	55.98,45.01	51.01,39.01
path	50.63,31.76	46.12,27.60
Kill Clefthoof enemies around this area |notinsticky
|tip Skin their corpses. |notinsticky
collect 24 Thick Clefthoof Leather##25708 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 370 |or
step
label "Begin_Profession_Leveling_Outland"
map Netherstorm/0
path follow smart; loop on; ants curved; dist 30
path	43.61,57.06	45.22,57.65	47.41,56.58	48.25,54.31	48.18,51.86
path	46.52,51.17	45.58,49.75	43.63,50.57	43.29,52.27	43.66,54.99
path	44.85,56.21
Kill enemies around this area
|tip Only Beast enemies will be skinnable.
|tip Skin their corpses.
collect 470 Knothide Leather##21887 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Save at least 330 of these; you will need them for future steps.
|tip You can also make Wicked Leather Belts to 325.
|tip Each Wicked Leather Belt requires 14 Rugged Leather, 2 Black Dye, and 2 Rune Thread.
'|complete skill("Leatherworking") >= 325 |or
step
create 35 Knothide Armor Kit##32456,Leatherworking,325
|tip You may need to create more or less of these.
|tip Each additional Knothide Armor Kit requires 4 Knothide Leather.
|tip You can also make Wicked Leather Belts to 325.
|tip Each Wicked Leather Belt requires 14 Rugged Leather, 2 Black Dye, and 2 Rune Thread.
step
talk Barim Spilthoof##18754
Train Heavy Knothide Leather |learn Heavy Knothide Leather##32455 |goto Hellfire Peninsula/0 56.22,38.70
step
collect 330 Knothide Leather##21887 |or
|tip You collected these in a previous step.
'|complete skill("Leatherworking") >= 335 |or
step
create 66 Heavy Knothide Leather##32455,Leatherworking,66 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Leatherworking") >= 336 |or
step
create 1 Heavy Knothide Leather##32455,Leatherworking,335
|tip Save at least 66 of these; you will need them for future steps.
|tip You may need to create more or less of these.
|tip Each additional Heavy Knothide Leather requires 5 Knothide Leather.
step
talk Barim Spilthoof##18754
Train Thick Draenic Vest |learn Thick Draenic Vest##32473 |goto Hellfire Peninsula/0 56.22,38.70
step
collect 66 Heavy Knothide Leather##23793 |or
|tip You created these in a previous step.
'|complete skill("Leatherworking") >= 350 |or
step
talk Barim Spilthoof##18754
buy 66 Rune Thread##14341 |goto Hellfire Peninsula/0 56.22,38.70 |or
'|complete skill("Leatherworking") >= 350 |or
step
create 22 Thick Draenic Vest##32473,Leatherworking,350
|tip You may need to create more or less of these.
|tip Each additional Thick Draenic Vest requires 3 Heavy Knothide Leather and 3 Rune Thread.
step
Reach Level 65 |ding 65
|tip You must be at least level 65 to train Grand Master professions in Northrend.
|tip Use the leveling guides to accomplish this.
step
talk Diane Cannings##28700
|tip Inside the building.
Learn Grand Master Leatherworking |skillmax Leatherworking,450 |goto Dalaran/1 34.71,28.64
step
talk Diane Cannings##28700
|tip Inside the building.
Train Borean Leather |learn Borean Leather##64661 |goto Dalaran/1 34.71,28.64
step
talk Diane Cannings##28700
|tip Inside the building.
Train Borean Armor Kit |learn Borean Armor Kit##50962 |goto Dalaran/1 34.71,28.64
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Lich King-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Leatherworking |confirm |next "Begin_Profession_Leveling_Northrend" |or
'|complete skill("Leatherworking") >= 450 |or |next "Begin_Profession_Leveling_Northrend"
stickystart "Collect_Arctic_Fur_Total"
stickystart "Collect_Crystallized_Water_Total"
stickystart "Collect_Eternal_Water_Total"
stickystart "Collect_Eternal_Shadow_Total"
stickystart "Collect_Eternal_Fire_Total"
stickystart "Collect_Nerubian_Chitin_Total"
stickystart "Collect_Nerubian_Chitin_Total_2"
stickystart "Collect_Frozen_Orb_Total"
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	57.48,73.45	58.98,70.90	60.60,70.78	63.07,71.59	65.68,70.68
path	67.78,69.72	70.17,69.54	71.94,70.61	70.25,72.47	67.58,73.52
path	66.01,75.76	66.54,78.64	66.01,80.77	64.47,79.46	63.81,74.39
path	62.61,73.65	59.73,74.19	58.47,75.31	57.14,77.70	56.50,79.34
path	55.75,77.61	55.35,75.24
Kill Hardknuckle enemies along the path
|tip Skin their corpses.
|tip BEWARE of wandering Frenzyheart NPCs that will attack you close to Frenzyheart Hill! |only if rep("Frenzyheart Tribe") <= Hostile
collect 2200 Borean Leather##33568 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip You will need 385 Skinning skill minimum to skin all of these mobs.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Leatherworking") >= 410 |or
step
label "Collect_Arctic_Fur_Total"
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	57.48,73.45	58.98,70.90	60.60,70.78	63.07,71.59	65.68,70.68
path	67.78,69.72	70.17,69.54	71.94,70.61	70.25,72.47	67.58,73.52
path	66.01,75.76	66.54,78.64	66.01,80.77	64.47,79.46	63.81,74.39
path	62.61,73.65	59.73,74.19	58.47,75.31	57.14,77.70	56.50,79.34
path	55.75,77.61	55.35,75.24
Kill Hardknuckle enemies along the path |notinsticky
|tip Skin their corpses. |notinsticky
|tip BEWARE of wandering Frenzyheart NPCs that will attack you close to Frenzyheart Hill! |notinsticky |only if rep("Frenzyheart Tribe") <= Hostile
collect 12 Arctic Fur##44128 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip You will need 385 Skinning skill minimum to skin all of these mobs. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 441 |or
step
label "Collect_Crystallized_Water_Total"
kill Boiling Spirit##25419+ |notinsticky
collect 65 Crystallized Water##37705 |goto Borean Tundra/0 46.94,13.40 |or
|tip You can also use Crystallized Shadow instead of Crystallized Water. |notinsticky
|tip Farm them from water elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide. |notinsticky
'|complete skill("Leatherworking") >= 420 |or
step
label "Collect_Eternal_Water_Total"
kill Boiling Spirit##25419+ |notinsticky
use the Crystallized Water##37705 |notinsticky
|tip Combine 10 Crystallized Water into 1 Eternal Water. |notinsticky
collect 18 Eternal Water##35622 |goto Borean Tundra/0 46.94,13.40 |or
|tip Farm them from water elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 435 |or
step
label "Collect_Eternal_Shadow_Total"
Enter the cave |goto Dragonblight/0 74.24,23.64 < 30 |walk |notinsticky
kill Deathbringer Revenant##27382+ |notinsticky
|tip Inside the cave. |notinsticky
use the Crystallized Shadow##37703 |notinsticky
|tip Combine 10 Crystallized Shadow into 1 Eternal Shadow. |notinsticky
collect 50 Eternal Shadow##35627 |or
|tip Farm them from shadow mobs or purchase them from the auction house. |notinsticky
|tip You can also farm them from Saronite Deposits with the Northrend Mining guide. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 450 |or
step
label "Collect_Eternal_Fire_Total"
Enter the cave |goto The Storm Peaks/0 62.48,41.49 < 20 |walk |notinsticky
kill Wailing Winds##30450+ |notinsticky
|tip Inside the cave. |notinsticky
use the Crystallized Fire##37702 |notinsticky
|tip Combine 10 Crystallized Fire into 1 Eternal Fire. |notinsticky
collect 50 Eternal Fire##36860 |goto The Storm Peaks/0 61.43,39.48 |or
|tip Farm them from fire elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Titanium Veins with the Northrend Mining guide. |notinsticky
|tip You can also Transmute: Skyflare Diamond for points. |notinsticky
|tip Each Skyflare Diamond costs 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to transmute. |notinsticky
'|complete skill("Leatherworking") >= 450 |or
step
label "Collect_Nerubian_Chitin_Total"
map Icecrown/0
path follow smart; loop on; ants straight; dist 30
path	85.59,78.81	84.26,78.80	83.69,75.83	83.76,73.78	83.03,71.79
path	84.15,71.95	84.99,73.76	85.08,74.92	84.73,75.97	85.35,77.32
Kill Undead enemies around along the path |notinsticky
|tip Forgotten Depths Slayers and Carrion Fleshstrippers drop Nerubian Chitin. |notinsticky
|tip Skin their corpses. |notinsticky
collect 10 Nerubian Chitin##38558 |or
|tip Farm them from Undead enemies or purchase them from the auction house. |notinsticky
|tip You will need 390 Skinning skill minimum to skin all of these mobs. |notinsticky
'|complete skill("Leatherworking") >= 440 |or
|only if not completedq(13070)
step
label "Collect_Nerubian_Chitin_Total_2"
map Zul'Drak/0
path follow smart; loop on; ants curved; dist 30
path	58.36,76.22	57.40,79.28	57.83,81.42	58.35,82.42	59.32,82.30
path	59.19,83.49	57.27,84.74	55.84,85.74	54.57,85.67	53.52,84.01
path	54.74,82.05	55.99,79.99	56.22,78.21	56.80,76.69
Kill Hath'ar enemies around along the path |notinsticky
|tip Skin their corpses. |notinsticky
collect 10 Nerubian Chitin##38558 |or
|tip Farm them from Undead enemies or purchase them from the auction house. |notinsticky
|tip You will need 380 Skinning skill minimum to skin all of these mobs. |notinsticky
'|complete skill("Leatherworking") >= 450 |or
|only if completedq(13070)
step
label "Collect_Frozen_Orb_Total"
collect 15 Frozen Orb##43102 |or
|tip These drop from the final boss of Northred heroic dungeons.
'|complete skill("Leatherworking") >= 450 |or
stickystart "Collect_Arctic_Fur_380"
step
label "Begin_Profession_Leveling_Northrend"
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	57.48,73.45	58.98,70.90	60.60,70.78	63.07,71.59	65.68,70.68
path	67.78,69.72	70.17,69.54	71.94,70.61	70.25,72.47	67.58,73.52
path	66.01,75.76	66.54,78.64	66.01,80.77	64.47,79.46	63.81,74.39
path	62.61,73.65	59.73,74.19	58.47,75.31	57.14,77.70	56.50,79.34
path	55.75,77.61	55.35,75.24
Kill Hardknuckle enemies along the path
|tip Skin their corpses.
|tip BEWARE of wandering Frenzyheart NPCs that will attack you close to Frenzyheart Hill! |only if rep("Frenzyheart Tribe") <= Hostile
collect 2200 Borean Leather##33568 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip You will need 385 Skinning skill minimum to skin all of these mobs.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save all of these, you will need them for future steps.
'|complete skill("Leatherworking") >= 380 |or
step
label "Collect_Arctic_Fur_380"
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	57.48,73.45	58.98,70.90	60.60,70.78	63.07,71.59	65.68,70.68
path	67.78,69.72	70.17,69.54	71.94,70.61	70.25,72.47	67.58,73.52
path	66.01,75.76	66.54,78.64	66.01,80.77	64.47,79.46	63.81,74.39
path	62.61,73.65	59.73,74.19	58.47,75.31	57.14,77.70	56.50,79.34
path	55.75,77.61	55.35,75.24
Kill Hardknuckle enemies along the path |notinsticky
|tip Skin their corpses. |notinsticky
|tip BEWARE of wandering Frenzyheart NPCs that will attack you close to Frenzyheart Hill! |notinsticky |only if rep("Frenzyheart Tribe") <= Hostile
collect 12 Arctic Fur##44128 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip You will need 385 Skinning skill minimum to skin all of these mobs. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 380 |or
step
create 35 Borean Armor Kit##50962,Leatherworking,380
|tip Convert any Borean Leather Scraps you have first using your skill panel.
|tip If you right-click scraps, you will not get skill points.
|tip You may need to create more or less of these.
|tip Each additional Borean Armor Kit requires 4 Borean Leather.
step
collect 48 Borean Leather##33568 |or
|tip You collected these in a previous step.
'|complete skill("Leatherworking") >= 386 |or
step
talk Diane Cannings##28700
|tip Inside the building.
Train Arctic Boots |learn Arctic Boots##50948 |goto Dalaran/1 34.71,28.64
step
create 6 Arctic Boots##50948,Leatherworking,386
step
collect 40 Borean Leather##33568 |or
|tip You collected these in a previous step.
'|complete skill("Leatherworking") >= 390 |or
step
talk Diane Cannings##28700
|tip Inside the building.
Train Arctic Gloves |learn Arctic Gloves##50947 |goto Dalaran/1 34.71,28.64
step
create 4 Arctic Gloves##50947,Leatherworking,390
step
collect 1800 Borean Leather##33568 |or
|tip You collected these in a previous step.
'|complete skill("Leatherworking") >= 405 |or
step
talk Diane Cannings##28700
|tip Inside the building.
Train Heavy Borean Leather |learn Heavy Borean Leather##50936 |goto Dalaran/1 34.71,28.
step
create 300 Heavy Borean Leather##50936,Leatherworking,300 total |or
'|complete skill("Leatherworking") >= 405 |or
step
create Heavy Borean Leather##50936,Leatherworking,405
step
collect 40 Borean Leather##33568 |or
|tip You collected these in a previous step.
'|complete skill("Leatherworking") >= 410 |or
step
talk Diane Cannings##28700
|tip Inside the building.
Train Arctic Wristguards |learn Arctic Wristguards##51571 |goto Dalaran/1 34.71,28.64
step
create 10 Arctic Wristguards##51571,Leatherworking,410
|tip You may need to make more of these.
|tip Each additional Arctic Wristguard requires 12 Borean Leather.
stickystart "Collect_Crystallized_Water_420"
stickystart "Collect_Heavy_Borean_Leather_420"
step
kill Boiling Spirit##25419+
use the Crystallized Water##37705
|tip Combine 10 Crystallized Water into 1 Eternal Water.
collect 18 Eternal Water##35622 |goto Borean Tundra/0 46.94,13.40 |or
|tip Farm them from water elementals or purchase them from the auction house.
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save these, you will need them for future steps.
'|complete skill("Leatherworking") >= 435 |or
step
label "Collect_Crystallized_Water_420"
kill Boiling Spirit##25419+ |notinsticky
collect 65 Crystallized Water##37705 |goto Borean Tundra/0 46.94,13.40 |or
|tip You can also use Crystallized Shadow instead of Crystallized Water and make Dark Iceborne Leggings. |notinsticky
|tip Farm them from water elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide. |notinsticky
'|complete skill("Leatherworking") >= 420 |or
step
label "Collect_Heavy_Borean_Leather_420"
collect 52 Heavy Borean Leather##38425 |or
|tip You created these in a previous step. |notinsticky
'|complete skill("Leatherworking") >= 420 |or
step
talk Diane Cannings##28700
|tip Inside the building.
Train Dark Frostscale Leggings |learn Dark Frostscale Leggings##60601 |goto Dalaran/1 34.71,28.64
|tip You can also use Crystallized Shadow instead of Crystallized Water and make Dark Iceborne Leggings.
step
create 13 Dark Frostscale Leggings##60601,Leatherworking,420
|tip You may need to make more of these.
|tip Each additional Dark Frostscale Legging requires 4 Heavy Borean Leather and 5 Crystallized Water.
|tip Each additional Dark Iceborne Legging requires 4 Heavy Borean Leather and 5 Crystallized Shadow.
stickystart "Collect_Heavy_Borean_Leather_425"
step
collect 5 Eternal Water##35622 |or
|tip You collected these in a previous step.
'|complete skill("Leatherworking") >= 425 |or
step
label "Collect_Heavy_Borean_Leather_425"
collect 40 Heavy Borean Leather##38425 |or
|tip You created these in a previous step. |notinsticky
'|complete skill("Leatherworking") >= 425 |or
step
talk Diane Cannings##28700
|tip Inside the building.
Train Overcast Bracers |learn Overcast Bracers##60720 |goto Dalaran/1 34.71,28.64
step
create 10 Overcast Bracers##60720,Leatherworking,425
|tip You may need to make more of these.
step
collect 3 Heavy Borean Leather##38425 |or
|tip You created these in a previous step.
'|complete skill("Leatherworking") >= 435 |or
step
talk Braeg Stoutbeard##32515
buy Pattern: Overcast Handwraps##44525 |goto Dalaran/1 37.36,28.71 |or
'|complete skill("Leatherworking") >= 435 |or
step
use the Pattern: Overcast Handwraps##44525
Train Overcast Handwraps |learn Overcast Handwraps##60721
stickystart "Collect_Heavy_Borean_Leather_435"
step
collect 13 Eternal Water##35622 |or
|tip You collected these in a previous step.
'|complete skill("Leatherworking") >= 435 |or
step
label "Collect_Heavy_Borean_Leather_435"
collect 130 Heavy Borean Leather##38425 |or
|tip You created these in a previous step. |notinsticky
'|complete skill("Leatherworking") >= 435 |or
step
create 10 Overcast Handwraps##60721,Leatherworking,435
|tip You may need to make more of these.
|tip Each additional Overcast Handwraps requires 10 Heavy Borean Leather and 1 Eternal Water.
stickystart "Collect_Frozen_Orb_440"
stickystart "Collect_Arctic_Fur_440"
step
map Icecrown/0
path follow smart; loop on; ants straight; dist 30
path	85.59,78.81	84.26,78.80	83.69,75.83	83.76,73.78	83.03,71.79
path	84.15,71.95	84.99,73.76	85.08,74.92	84.73,75.97	85.35,77.32
Kill Undead enemies around along the path
|tip Forgotten Depths Slayers and Carrion Fleshstrippers drop Nerubian Chitin.
|tip Skin their corpses.
collect 10 Nerubian Chitin##38558 |or
|tip You can farm 10 Icy Dragonscale and make Icescale Leg Armor as well.
|tip Farm them from Undead enemies or purchase them from the auction house.
|tip You will need 390 Skinning skill minimum to skin all of these mobs.
'|complete skill("Leatherworking") >= 440 |or
|only if not completedq(13070)
step
map Zul'Drak/0
path follow smart; loop on; ants curved; dist 30
path	58.36,76.22	57.40,79.28	57.83,81.42	58.35,82.42	59.32,82.30
path	59.19,83.49	57.27,84.74	55.84,85.74	54.57,85.67	53.52,84.01
path	54.74,82.05	55.99,79.99	56.22,78.21	56.80,76.69
Kill Hath'ar enemies around along the path
|tip Skin their corpses.
collect 10 Nerubian Chitin##38558 |or
|tip You can farm 10 Icy Dragonscale and make Icescale Leg Armor as well.
|tip Farm them from Undead enemies or purchase them from the auction house.
|tip You will need 380 Skinning skill minimum to skin all of these mobs.
'|complete skill("Leatherworking") >= 440 |or
|only if completedq(13070)
step
label "Collect_Frozen_Orb_440"
collect 5 Frozen Orb##43102 |or
|tip These drop from the final boss of Northred heroic dungeons. |notinsticky
'|complete skill("Leatherworking") >= 440 |or
step
label "Collect_Arctic_Fur_440"
collect 10 Arctic Fur##44128 |or
|tip You collected these in a previous step. |notinsticky
'|complete skill("Leatherworking") >= 440 |or
step
talk Diane Cannings##28700
|tip Inside the building.
Train Frosthide Leg Armor |learn Frosthide Leg Armor##50965 |goto Dalaran/1 34.71,28.64
|tip You can farm 10 Icy Dragonscale and make Icescale Leg Armor as well.
step
create 10 Frosthide Leg Armor##50965,Leatherworking,440
|tip You can farm 10 Icy Dragonscale and make Icescale Leg Armor as well.
|tip You may need to make more of these.
|tip Each additional Frosthide Leg Armor requires 2 Arctic Fur, 2 Nerubian Chitin, and 1 Frozen Orb.
|tip Each additional Icescale Leg Armor requires 2 Arctic Fur, 2 Icy Dragonscale, and 1 Frozen Orb.
step
collect 2 Arctic Fur##44128 |or
|tip You collected these in a previous step. |notinsticky
'|complete skill("Leatherworking") >= 450 |or
step
talk Braeg Stoutbeard##32515
buy Pattern: Trollwoven Girdle##44551 |goto Dalaran/1 37.36,28.71 |or
|tip You can also farm Eternal Water or Eternal Air and make Revenant's Treads or Windripper Boots instead.
'|complete skill("Leatherworking") >= 450 |or
step
use the Pattern: Trollwoven Girdle##44551
Train Trollwoven Girdle |learn Trollwoven Girdle##60759
|tip You can also farm Eternal Water or Eternal Air and make Revenant's Treads or Windripper Boots instead.
stickystart "Collect_Eternal_Fire_450"
stickystart "Collect_Frozen_Orb_450"
stickystart "Collect_Heavy_Borean_Leather_450"
step
Enter the cave |goto Dragonblight/0 74.24,23.64 < 30 |walk
kill Deathbringer Revenant##27382+
|tip Inside the cave.
use the Crystallized Shadow##37703
|tip Combine 10 Crystallized Shadow into 1 Eternal Shadow.
collect 50 Eternal Shadow##35627 |or
|tip You can also farm Eternal Water or Eternal Air and make Revenant's Treads or Windripper Boots instead.
|tip Farm them from shadow mobs or purchase them from the auction house.
|tip You can also farm them from Saronite Deposits with the Northrend Mining guide.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Leatherworking") >= 450 |or
step
label "Collect_Eternal_Fire_450"
Enter the cave |goto The Storm Peaks/0 62.48,41.49 < 20 |walk |notinsticky
kill Wailing Winds##30450+ |notinsticky
|tip Inside the cave. |notinsticky
use the Crystallized Fire##37702 |notinsticky
|tip Combine 10 Crystallized Fire into 1 Eternal Fire. |notinsticky
collect 50 Eternal Fire##36860 |goto The Storm Peaks/0 61.43,39.48 |or
|tip You can also farm Eternal Water or Eternal Air and make Revenant's Treads or Windripper Boots instead. |notinsticky
|tip Farm them from fire elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Titanium Veins with the Northrend Mining guide. |notinsticky
|tip You can also Transmute: Skyflare Diamond for points. |notinsticky
|tip Each Skyflare Diamond costs 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to transmute. |notinsticky
'|complete skill("Leatherworking") >= 450 |or
step
label "Collect_Frozen_Orb_450"
collect 10 Frozen Orb##43102 |or
|tip These drop from the final boss of Northred heroic dungeons. |notinsticky
'|complete skill("Leatherworking") >= 450 |or
step
label "Collect_Heavy_Borean_Leather_450"
collect 100 Heavy Borean Leather##38425 |or
|tip You created these in a previous step. |notinsticky
'|complete skill("Leatherworking") >= 450 |or
step
create 10 Trollwoven Girdle##60759,Leatherworking,450
|tip You can farm 10 Icy Dragonscale and make Icescale Leg Armor as well.
|tip You may need to make more of these.
|tip Revenant's Treads require 10 Heavy Borean Leather, 10 Eternal Water, and 1 Frozen Orb.
|tip Windripper Boots require 10 Heavy Borean Leather, 5 Eternal Water, 5 Eternal Air, and 1 Frozen Orb.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Cataclysm-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Leatherworking |confirm |next "Begin_Leatherworking_Leveling_Cataclysm" |or
'|complete skill("Leatherworking") >= 525 |or |next "Begin_Leatherworking_Leveling_Cataclysm"
stickystart "Collect_Volatile_Fire_Total"
stickystart "Collect_Volatile_Water_Total"
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
Kill enemies around this area.
|tip Skin their corpses.
collect 1600 Savage Leather##52976
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 495
step
label "Collect_Volatile_Fire_Total"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 112 Volatile Fire##52325
|tip Farm them or purchase them from the Auction House.
|only if skill("Leatherworking") < 520
step
label "Collect_Volatile_Water_Total"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	29.60,66.46	28.77,62.37	31.51,59.47	33.77,56.98	35.75,60.13
path	34.61,63.05
kill Enslaved Waterspout##46329+
collect 50 Volatile Water##52326
|tip Farm them or purchase them from the Auction House.
|only if skill("Leatherworking") < 525
step
label "Begin_Leatherworking_Leveling_Cataclysm"
talk Karolek##3365
|tip Inside the building.
Train Illustrious Grand Master Leatherworking |skillmax Leatherworking,525 |goto Orgrimmar/1 60.87,54.96
|tip You must be at least level 75.
step
talk Tamar##3366
|tip Inside the building.
buy 30 Eternium Thread##38426 |goto Orgrimmar/1 60.36,54.38
|only if skill("Leatherworking") < 495
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
collect 25 Savage Leather##52976
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 455
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Savage Armor Kit>_
|tip You may need to make more.
Reach 455 Leatherworking |skill Leatherworking,455
step
talk Karolek##3365
|tip Inside the building.
learn Tsunami Boots##78410 |goto Orgrimmar/1 60.87,54.96
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
collect 35 Savage Leather##52976
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 460
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Tsunami Boots>_
Reach 460 Leatherworking |skill Leatherworking,460
step
talk Karolek##3365
|tip Inside the building.
learn Savage Cloak##78380 |goto Orgrimmar/1 60.87,54.96
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
collect 70 Savage Leather##52976
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 470
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Savage Cloak>_
Reach 470 Leatherworking |skill Leatherworking,470
step
talk Karolek##3365
|tip Inside the building.
learn Darkbrand Boots##78407 |goto Orgrimmar/1 60.87,54.96
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
collect 50 Savage Leather##52976
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 475
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Darkbrand Boots>_
Reach 475 Leatherworking |skill Leatherworking,475
step
talk Karolek##3365
|tip Inside the building.
learn Darkbrand Shoulders##78411 |goto Orgrimmar/1 60.87,54.96
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
collect 120 Savage Leather##52976
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 485
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Darkbrand Shoulders>_
Reach 485 Leatherworking |skill Leatherworking,485
step
talk Karolek##3365
|tip Inside the building.
learn Heavy Savage Leather##78436 |goto Orgrimmar/1 60.87,54.96
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
collect 1200 Savage Leather##52976
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 490
step
Open Your Leatherworking Crafting Panel:
_<Create 240 Heavy Savage Leather>_
|tip Keep these, you'll need them later.
Reach 490 Leatherworking |skill Leatherworking,490
step
talk Karolek##3365
|tip Inside the building.
learn Darkbrand Chestguard##78428 |goto Orgrimmar/1 60.87,54.96
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
collect 60 Savage Leather##52976
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 495
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Darkbrand Chestguard>_
Reach 495 Leatherworking |skill Leatherworking,495
step
collect 60 Heavy Savage Leather##56516
|tip You should have these from previous steps.
|only if skill("Leatherworking") < 507
step
talk Karolek##3365
|tip Inside the building.
learn Darkbrand Helm##78424 |goto Orgrimmar/1 60.87,54.96
step
Open Your Leatherworking Crafting Panel:
_<Create 12 Darkbrand Helm>_
|tip You may need to make more.
Reach 507 Leatherworking |skill Leatherworking,507
step
talk Karolek##3365
|tip Inside the building.
learn Vicious Hide Cloak##99535 |goto Orgrimmar/1 60.87,54.96
step
collect 30 Heavy Savage Leather##56516
|tip You should have these from previous steps.
|only if skill("Leatherworking") < 510
step
talk Tamar##3366
|tip Inside the building.
buy 3 Pristine Hide##52980 |goto Orgrimmar/1 60.36,54.38
|tip These will cost 10 Heavy Savage Leather each.
|only if skill("Leatherworking") < 510
step
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 12 Volatile Fire##52325
|tip Farm them or purchase them from the Auction House.
|only if skill("Leatherworking") < 510
step
Open Your Leatherworking Crafting Panel:
_<Create 3 Vicious Hide Cloak>_
Reach 510 Leatherworking |skill Leatherworking,510
step
collect 150 Heavy Savage Leather##56516
|tip You should have these from previous steps.
|only if skill("Leatherworking") < 515
step
talk Tamar##3366
|tip Inside the building.
buy 1 Pattern: Bloodied Leather Bracers##67046 |goto Orgrimmar/1 60.36,54.38
step
use the Pattern: Bloodied Leather Bracers##67046
learn Bloodied Leather Bracers##78446
|only if skill("Leatherworking") < 515
step
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 50 Volatile Fire##52325
|tip Farm them or purchase them from the Auction House.
|only if skill("Leatherworking") < 520
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Bloodied Leather Bracers>_
Reach 515 Leatherworking |skill Leatherworking,515
step
talk Tamar##3366
|tip Inside the building.
buy 1 Pattern: Bloodied Leather Boots##67060 |goto Orgrimmar/1 60.36,54.38
|only if skill("Leatherworking") < 520
step
use the Pattern: Bloodied Leather Boots##67060
learn Bloodied Leather Boots##78454
step
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 50 Volatile Fire##52325
|tip Farm them or purchase them from the Auction House.
|only if skill("Leatherworking") < 520
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Bloodied Leather Boots>_
Reach 520 Leatherworking |skill Leatherworking,520
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	29.60,66.46	28.77,62.37	31.51,59.47	33.77,56.98	35.75,60.13
path	34.61,63.05
kill Enslaved Waterspout##46329+
collect 50 Volatile Water##52326
|tip Farm them or purchase them from the Auction House.
|only if skill("Leatherworking") < 525
step
talk Tamar##3366
|tip Inside the building.
buy 1 Pattern: Bloodied Leather Helm##67077 |goto Orgrimmar/1 60.36,54.38
|only if skill("Leatherworking") < 525
step
use the Pattern: Bloodied Leather Helm##67077
learn Bloodied Leather Helm##78469
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Bloodied Leather Helm>_
Reach 525 Leatherworking |skill Leatherworking,525
step
Reach Level 80 |ding 80
|tip You must be at least level 80 to train Zen Master professions.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Pandaria materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Leatherworking |confirm |next "Begin_Profession_Leveling_Pandaria" |or
|complete skill("Leatherworking") >= 500 |or |next "Begin_Profession_Leveling_Pandaria"
stickystart "Collect_Mist_Touched_Leather_Total"
step
collect 65 Sha-Touched Leather##72162 |or |usebank
|tip You can farm these from mobs in Pandaria or purchase them from the Auction House.
|loadguide "Profession Guides\\Skinning\\Farming Guides\\Exotic Leather"
|complete skill("Leatherworking") >= 525
step
label "Collect_Mist_Touched_Leather_Total"
collect 382 Mist-Touched Leather##72120 |or |usebank
|tip You can farm these from mobs in Pandaria or purchase them from the Auction House.
|loadguide "Profession Guides\\Skinning\\Farming Guides\\Exotic Leather"
|complete skill("Leatherworking") >= 600
step
label "Begin_Profession_Leveling_Pandaria"
talk Karolek##3365
|tip Inside the building.
Train Zen Master Leatherworking |skillmax Leatherworking,600 |goto Orgrimmar/1 60.87,54.96
step
talk Karolek##3365
|tip Inside the building.
Train Mist-Touched Leather |learn Mist-Touched Leather##124627 |goto Orgrimmar/1 60.87,54.96
step
collect 65 Sha-Touched Leather##72162 |or |usebank
|tip You can farm these from mobs in Pandaria or purchase them from the Auction House.
|loadguide "Profession Guides\\Skinning\\Farming Guides\\Exotic Leather"
|complete skill("Leatherworking") >= 525
step
create 13 Mist-Touched Leather##124627,Leatherworking,13 total |or |usebank
|complete skill("Leatherworking") >= 525 |or
step
talk Karolek##3365
|tip Inside the building.
Train Misthide Belt |learn Misthide Belt##124578 |goto Orgrimmar/1 60.87,54.96
step
collect 96 Mist-Touched Leather##72120 |or |usebank
|tip You can farm these from mobs in Pandaria or purchase them from the Auction House.
|loadguide "Profession Guides\\Skinning\\Farming Guides\\Exotic Leather"
|complete skill("Leatherworking") >= 550
step
create 12 Misthide Belt##124578,Leatherworking,12 total |or |usebank
|complete skill("Leatherworking") >= 550 |or
step
talk Karolek##3365
|tip Inside the building.
Train Misthide Chestguard |learn Misthide Chestguard##124573 |goto Orgrimmar/1 60.87,54.96
step
collect 130 Mist-Touched Leather##72120 |or |usebank
|tip You can farm these from mobs in Pandaria or purchase them from the Auction House.
|loadguide "Profession Guides\\Skinning\\Farming Guides\\Exotic Leather"
|complete skill("Leatherworking") >= 575
step
create 13 Misthide Chestguard##124573,Leatherworking,13 total |or |usebank
|complete skill("Leatherworking") >= 575 |or
step
talk Krogo Darkhide##64054
|tip Inside the building.
Purchase and Learn Pattern: Contender's Wyrmhide Bracers |learn Contender's Wyrmhide Bracers##124592 |goto Shrine of Two Moons/1 30.84,46.8
|tip You can choose any of the PVP patterns you'd like.
|complete skill("Leatherworking") >= 600 |or'
step
collect 156 Mist-Touched Leather##72120 |or |usebank
|tip You can farm these from mobs in Pandaria or purchase them from the Auction House.
|loadguide "Profession Guides\\Skinning\\Farming Guides\\Exotic Leather"
|complete skill("Leatherworking") >= 600
step
create 13 Contender's Wyrmhide Bracers##124592,Leatherworking,13 total |or |usebank
|complete skill("Leatherworking") >= 600 |or
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Mining (1-600)",{
expansion="mists",
mopready=true,
description="This guide will walk you through leveling 1-600 Mining",
},[[
step
talk Makaru##3357
Train Mining |skillmax Mining,75 |goto Orgrimmar/1 72.36,34.96
|tip He is inside the building
step
map Durotar/0
path follow smart; loop on; ants straight; dist 30
path	39.65,14.79	38.28,15.44	38.22,20.48	38.38,22.76	36.65,26.69
path	35.91,28.78	36.06,33.42	36.96,36.30	37.80,39.27	39.26,39.70
path	42.38,39.50	43.19,44.44	41.45,47.20	38.90,50.61	39.14,52.89
path	42.55,50.67	45.74,49.28	47.76,48.46	50.63,46.66	50.86,52.45
path	50.91,55.62	51.94,58.63	51.24,65.15	50.15,71.44	52.02,77.63
path	53.44,78.95	55.23,76.72	57.35,70.85	55.28,65.96	54.96,60.66
path	58.62,60.36	60.61,61.55	60.55,54.98	56.43,50.20	58.59,41.52
path	56.89,31.45	54.40,28.26	51.34,27.28	51.18,23.73	51.64,19.86
path	52.93,18.10	51.32,16.33
|tip Mine Copper Ore along the path
click Copper Vein##1731+
|tip You can smelt Copper Ore as well from 1-50.
Reach Level 50 Mining |skill Mining,50
step
talk Makaru##3357
Train Journeyman Mining |skillmax Mining,150 |goto Orgrimmar/1 72.36,34.96
|tip He is inside the building
step
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
|tip Mine Tin Ore along the path.
|tip Enter caves along the path to check for ore as well.
click Tin Vein##1732+
|tip You can smelt Tin Ore as well from 50-75. Afterwards smelt Bronze til 115 and Silver up to 125.
Reach Level 125 Mining |skill Mining,125
step
talk Makaru##3357
Train Expert Mining |skillmax Mining,225 |goto Orgrimmar/1 72.36,34.96
|tip He is inside the building
|tip You must be at least level 10 to learn Expert Mining. |only if level < 10
step
map Desolace/0
path follow smart; loop on; ants straight; dist 30
path	56.89,12.79	55.69,16.76	55.93,21.85	57.37,28.71	56.18,30.02
path	54.51,32.54	52.22,32.64	48.21,29.09	45.96,27.10	38.90,35.04
path	38.63,37.92	34.22,51.24	32.16,53.03	29.52,52.35	29.39,55.11
path	30.97,59.87	29.89,66.12	29.70,70.86	26.60,80.92	28.44,83.18
path	33.54,82.52	39.19,89.95	42.73,85.78	44.07,83.20	47.68,82.24
path	51.21,83.38	52.17,86.89	60.31,89.98	64.45,91.08	64.71,86.76
path	65.90,83.88	68.95,82.50	64.62,70.06	67.89,62.18	64.91,57.19
path	65.28,48.42	69.53,53.43	74.94,49.96	74.45,44.35	68.66,38.22
path	74.23,36.02	76.67,34.48	74.56,26.14	78.57,20.83	79.72,15.70
path	74.12,15.10	69.97,16.80
|tip Mine Iron Ore along the path.
click Iron Deposit##1735+
|tip You can smelt Iron Ore from 125-140 as well.
Reach Level 175 Mining |skill Mining,175
step
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
|tip Mine Mithril Ore along the path.
|tip Enter caves along the path to check for ore as well.
click Mithril Deposit##2040+
|tip You can smelt Mithril Ore from 175-230 as well.
Reach Level 225 Mining |skill Mining,225
step
talk Brek Stonehoof##3001
Train Artisan Mining |skillmax Mining,300 |goto Thunder Bluff/0 34.36,57.88
|tip He is inside the building
|tip You must be at least level 25 to learn Artisan Mining. |only if level < 25
step
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
|tip Mine Mithril Ore along the path.
|tip Enter caves along the path to check for ore as well.
click Mithril Deposit##2040+
|tip You can smelt Mithril Ore from 175-230 as well.
Reach Level 235 Mining |skill Mining,235
step
map Un'Goro Crater/0
path follow smart; loop on; ants straight; dist 30
path	76.74,42.05	73.74,30.89	69.66,20.70	63.51,16.72	59.87,15.96
path	56.36,12.61	49.73,13.57	36.10,20.32	26.67,30.68	24.84,39.93
path	23.80,50.02	24.09,58.91	26.24,66.95	29.29,72.74	31.69,79.87
path	37.12,81.23	39.59,84.18	44.39,86.33	50.01,79.90	54.71,86.32
path	59.99,84.20	65.04,79.87	74.01,69.76	76.30,60.04	76.90,54.28
|tip Mine Thorium Ore along the path.
|tip Enter caves along the path to check for ore as well.
click Small Thorium Vein##324+
click Rich Thorium Vein##175404+
Reach Level 300 Mining |skill Mining,300
step
talk Makaru##3357
Train Master Mining |skillmax Mining,375 |goto Orgrimmar/1 72.36,34.96
|tip He is inside the building
|tip You must be at least level 40 to learn Master Mining. |only if level < 40
step
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	40.75,42.50	40.26,40.96	40.59,36.51	41.36,33.28	43.83,33.24
path	44.70,32.04	44.07,29.69	41.52,29.31	40.39,28.06	39.18,28.60
path	38.78,31.28	39.45,34.58	38.84,37.75	38.00,41.81	37.29,44.05
path	34.94,45.10	33.47,44.99	32.33,43.34	31.25,41.56	31.18,38.16
path	33.35,35.12	34.81,36.51	36.88,34.23	36.38,31.00	36.65,27.50
path	34.86,27.64	34.18,30.27	33.95,32.60	32.82,32.93	30.49,32.56
path	29.46,34.09	29.89,36.50	29.26,38.76	28.50,39.00	27.60,36.52
path	26.16,37.69	25.80,40.12	24.27,41.44	21.50,41.64	20.34,41.76
path	19.47,39.60	18.10,38.61	16.12,37.94	14.31,37.73	13.47,36.02
path	12.48,35.85	12.11,38.86	13.09,40.80	12.81,43.48	12.08,46.56
path	11.32,48.30	9.56,49.23	8.57,51.37	9.57,52.68	10.84,55.14
path	12.17,55.31	12.26,58.81	12.81,59.93	14.07,61.24	14.96,63.01
path	15.77,59.56	17.36,57.29	19.16,56.46	21.27,57.56	22.06,59.04
path	23.61,61.30	22.10,63.38	21.62,65.68	22.34,67.89	23.43,69.32
path	25.05,71.45	26.07,71.93	25.79,75.23	25.80,78.02	27.25,79.15
path	28.84,78.89	29.38,76.72	29.62,73.24	29.96,69.53	30.61,66.72
path	32.37,65.87	33.99,66.14	35.61,70.00	36.83,67.98	39.60,68.47
path	40.74,70.17	42.73,73.61	42.33,76.12	43.05,79.48	41.89,82.43
path	40.80,84.01	39.64,86.19	38.83,87.20	36.99,88.84	34.33,90.22
path	34.22,92.33	35.51,92.08	37.34,90.33	38.44,88.67	40.48,86.49
path	44.73,81.62	46.22,84.73	48.19,84.16	51.50,82.91	53.54,84.94
path	55.09,86.21	55.59,83.18	56.70,82.04	58.55,79.67	58.63,77.75
path	57.99,75.75	56.39,74.03	57.13,72.33	58.10,70.83	59.03,68.99
path	61.00,68.45	63.04,67.10	63.48,64.36	65.00,63.16	65.82,67.02
path	67.49,69.37	68.20,70.18	66.71,72.92	65.89,73.70	64.97,73.80
path	64.55,75.74	66.07,77.99	67.88,76.49	68.96,73.63	70.44,70.80
path	70.78,66.63	69.81,64.01	68.32,62.59	65.54,61.99	64.51,60.64
path	65.42,57.87	67.00,57.51	69.46,58.76	72.80,60.39	74.27,58.69
path	72.07,56.26	70.55,54.02	71.34,51.09	70.09,49.47	69.18,47.28
path	67.71,41.84	65.81,40.93	64.46,40.63	64.00,38.40	64.00,34.75
path	62.89,32.54	61.87,29.33	60.44,30.36	59.24,29.85	57.33,29.47
path	55.07,28.81	53.89,27.91	53.69,30.17	55.04,30.78	55.79,32.59
path	54.46,34.59	52.34,34.35	50.66,34.27	49.00,34.34	47.97,37.12
path	47.88,40.46	46.11,43.55	45.00,44.24	43.34,43.21	41.71,43.80
click Fel Iron Deposit##181555+
|tip Gather Fel Iron Ore along the path.
Reach Level 350 Mining |skill Mining,350
step
talk Makaru##3357
Train Grand Master Mining |skillmax Mining,450 |goto Orgrimmar/1 72.36,34.96
|tip He is inside the building
|tip You must be at least level 55 to learn Grand Master Mining. |only if level < 55
step
map Howling Fjord/0
path follow smart; loop on; ants curved; dist 30
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
|tip Gather Cobalt Ore along the path.
Reach Level 400 Mining |skill Mining,400
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
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
click Cobalt Deposit##189978+
click Rich Cobalt Deposit##189979+
|tip Gather Saronite and Cobalt Ore along the path.
Reach Level 450 Mining |skill Mining,450 |or
|tip If you want to gather Cataclysm Ore as soon as possible, you can leave at 425.
Click Here Once You Are At 425 |confirm |or
step
talk Makaru##3357
Train Illustrious Grand Master Mining |skillmax Mining,525 |goto Orgrimmar/1 72.36,34.96
|tip He is inside the building
|tip You must be at least level 75 to learn Illustrious Grand Master Mining. |only if level < 75
step
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	64.52,32.82	59.54,32.60	54.43,28.82	51.95,17.39	46.03,25.96
path	43.53,26.94	41.14,21.81	35.52,23.56	33.12,24.51	32.25,29.77
path	33.96,33.62	30.51,39.40	27.14,38.97	27.15,36.08	24.15,32.92
path	13.59,37.50	10.03,36.02	15.27,46.43	17.82,54.98	20.48,59.09
path	24.63,59.77	29.20,55.47	33.08,52.54	35.89,51.99	36.52,57.46
path	33.75,64.34	39.87,63.17	49.68,58.94	55.81,57.37	58.34,56.00
path	62.24,58.01	65.04,53.21	68.69,55.16	72.55,58.55	74.49,62.92
path	78.12,59.42	83.94,60.29	87.31,54.46	87.18,49.22	80.70,51.98
|tip Gather Obsidium Ore along the path.
|tip Enter caves along the path for additional ore.
click Obsidium Deposit##202736+
Reach Level 500 Mining |skill Mining,500
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
|tip Gather Elementium Ore along the path.
|tip Enter caves along the path for additional ore.
click Elementium Vein##202738+
click Rich Elementium Vein##202741+
Reach Level 525 Mining |skill Mining,525
step
talk Stonebreaker Ruian##66979
Train Zen Master Mining |skillmax Mining,600 |goto The Jade Forest/0 27.82,14.84
|tip You must be at least level 80.
step
map Dread Wastes/0
path follow smart; loop on; ants curved; dist 30
path	57.49,14.06	55.81,17.08	54.38,19.53	52.23,20.51	50.71,21.37
path	49.81,24.40	49.49,26.69	46.99,26.44	45.03,25.92	43.76,28.11
path	43.89,30.86	45.60,33.15	48.31,36.52	47.25,38.99	46.27,41.47
path	47.27,43.08	49.19,44.88	50.85,44.37	52.17,43.10	54.43,45.83
path	56.22,47.60	58.85,46.44	60.98,48.04	63.10,48.13	65.50,49.59
path	67.62,48.97	67.26,45.82	67.05,42.57	68.26,39.41	70.14,37.17
path	71.46,33.55	71.77,30.02	70.53,24.75	69.50,21.19	68.67,17.19
path	67.71,13.20	64.79,12.60	62.17,13.69
Mine along the path
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
Reach 600 Mining |skill Mining,600
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Skinning (1-600)",{
expansion="mists",
mopready=true,
description="This guide will walk you through leveling 1-600 Skinning",
},[[
step
talk Thuwd##7088
Train Apprentice Skinning |skillmax Skinning,75 |goto Orgrimmar/1 61.16,54.69
step
map Durotar/0
path follow smart; loop on; ants straight; dist 30
path	45.45,22.62	45.31,27.05	45.20,31.59	46.14,35.11	47.83,35.80
path	49.03,37.31	48.33,39.33	46.46,40.80	44.80,36.50	44.20,33.66
path	42.34,31.86	42.39,28.82
Kill Boars, Raptors, and Scorpids along the path.
|tip Skin their corpses.
Reach Level 60 Skinning |skill Skinning,60
step
talk Thuwd##7088
Train Journeyman Skinning |skillmax Skinning,150 |goto Orgrimmar/1 61.16,54.69
step
map The Barrens/0
path follow smart; loop on; ants straight; dist 30
path	64.31,53.60	63.54,56.03	64.35,57.96	63.62,59.42	63.28,61.27
path	61.12,64.95	56.87,64.69	53.70,65.29	51.28,63.15	52.37,56.14
Kill Raptors, Zhevras, and Prowlers, Giraffes, and Plainstriders along the path.
|tip Skin their corpses.
Reach Level 110 Skinning |skill Skinning,110
step
map Ashenvale/0
path follow smart; loop on; ants straight; dist 30
path	71.31,63.57	70.37,62.85	70.19,59.62	70.61,57.68	72.60,55.09
path	72.39,52.76	72.45,52.50	72.47,50.09	70.12,50.60	68.54,51.07
path	66.57,51.69	64.39,53.16	63.99,55.31	64.47,58.15	65.80,60.60
path	66.00,62.81	64.62,65.63	63.00,68.65	62.12,70.57	60.62,71.25
path	59.45,72.56	57.46,72.39	56.74,70.29	58.15,67.21
Kill Deer, Wolves, and Bears along the path.
|tip Skin their corpses.
Reach level 150 Skinning |skill Skinning,150
step
talk Thuwd##7088
Train Expert Skinning |skillmax Skinning,225 |goto Orgrimmar/1 61.16,54.69
|tip You must be at least level 10 to learn Expert Skinning. |only if level < 10
step
map Ashenvale/0
path follow smart; loop on; ants straight; dist 30
path	71.31,63.57	70.37,62.85	70.19,59.62	70.61,57.68	72.60,55.09
path	72.39,52.76	72.45,52.50	72.47,50.09	70.12,50.60	68.54,51.07
path	66.57,51.69	64.39,53.16	63.99,55.31	64.47,58.15	65.80,60.60
path	66.00,62.81	64.62,65.63	63.00,68.65	62.12,70.57	60.62,71.25
path	59.45,72.56	57.46,72.39	56.74,70.29	58.15,67.21
Kill Deer, Wolves, and Bears along the path.
|tip Skin their corpses.
Reach level 185 Skinning |skill Skinning,185
step
map Dustwallow Marsh/0
path follow smart; loop on; ants straight; dist 30
path	46.81,17.35	48.14,19.50	48.89,19.50	49.21,18.22	48.54,16.45
path	47.70,15.03	47.29,16.57
kill Bloodfen Screecher##4352+
|tip Skin their corpses.
Reach level 205 Skinning |skill Skinning,205
step
talk Mooranta##7089
Train Artisan Skinning |skillmax Skinning,300 |goto Thunder Bluff/0 44.59,43.21
|tip She is outside the tent.
|tip You must be at least level 25 to learn Artisan Skinning. |only if level < 25
step
map Thousand Needles/0
path follow smart; loop on; ants straight; dist 30
path	75.62,47.01	70.58,49.25	68.78,48.07	66.37,45.46	64.01,43.72
path	59.87,43.88	57.01,43.58	54.77,41.66	57.10,53.30	62.03,57.52
path	65.36,58.56	64.04,64.55	64.03,67.49	64.01,70.28	65.52,72.46
path	65.91,74.88	65.25,77.61	64.32,79.70
Kill Scorpions, Cobras and Wind Serpents along the path.
|tip Skin their corpses.
Reach 265 Skinning |skill Skinning,265
step
map Un'Goro Crater/0
path follow smart; loop on; ants straight; dist 30
path	71.50,51.89	68.37,50.13	66.83,49.45	64.55,50.01	62.23,51.83
path	62.73,56.71	63.99,59.59	63.75,62.76	62.89,66.14	65.36,70.11
path	67.29,72.47	70.55,63.82	70.89,60.76
kill Venomhide Ravasaur##6508+
|tip Skin their corpses.
Reach 300 Skinnning |skill Skinning,300
step
talk Mooranta##7089
Train Master Skinning |skillmax Skinning,375 |goto Thunder Bluff/0 44.59,43.21
|tip You must be at least level 40 to learn Master Skinning. |only if level < 40
step
map Hellfire Peninsula/0
path follow smart; loop on; ants straight; dist 30
path	67.67,62.73	69.93,63.31	68.52,65.87	66.74,66.93	61.37,76.30
path	61.93,78.10	59.44,77.65	58.14,73.92
kill Starving Helboar##16879+
|tip Skin their corpses.
Reach 305 Skinning |skill Skinning,305
step
map Hellfire Peninsula/0
path follow smart; loop on; ants straight; dist 30
path	53.26,71.27	52.73,70.26	50.84,68.97	49.79,70.09	50.38,72.02
path	51.18,73.94	51.33,75.80
kill Deranged Helboar##16863+
|tip Skin their corpses.
Reach 310 Skinning |skill Skinning,310
step
map Hellfire Peninsula/0
path follow smart; loop on; ants straight; dist 30
path	41.25,83.55	40.47,84.73	38.69,86.68	37.48,88.25	36.69,90.47
path	37.80,89.87	39.49,88.08	40.61,86.62	41.85,85.56
Kill Ravagers in the area.
|tip Skin their corpses.
Reach 330 Skinning |skill Skinning,330
step
map Nagrand/0
path follow smart; loop on; ants straight; dist 30
path	62.06,44.42	59.47,44.66	58.06,45.14	57.00,45.96	55.04,44.81
path	53.28,43.00	52.14,42.31	51.03,40.98	50.19,39.58	50.09,37.13
path	51.20,32.74	52.07,29.94	49.70,29.32	48.27,30.45	47.68,39.20
path	49.49,42.11	49.25,45.08	50.85,48.34	52.43,48.11	56.05,47.54
Kill Talbuks and Clefthoofs in the area.
|tip Skin their corpses.
Reach 350 Skinning |skill Skinning,350
step
talk Tiponi Stormwhisper##26986
|tip Inside the building.
Train Grand Master Skinning |skillmax Skinning,450 |goto Borean Tundra/0 76.19,37.52
|tip You must be at least level 55 to learn Grand Master Skinning.
step
map Borean Tundra/0
path follow smart; loop on; ants straight; dist 30
path	44.51,48.38	45.85,47.32	46.44,44.34	45.02,41.41	43.61,41.61
path	42.56,43.29	41.23,43.73	42.93,46.90
Kill Rhinos in the area.
|tip Skin their corpses.
Reach 395 Skinning |skill Skinning,395
step
map Sholazar Basin/0
path follow smart; loop on; ants straight; dist 30
path	56.24,78.81	56.68,75.64	58.12,72.80	59.86,70.72	63.95,70.51
path	65.62,70.12	70.28,70.04	67.18,73.51	64.45,74.90
Kill Gorillas in the area.
|tip Skin their corpses.
Reach 425 Skinning |skill Skinning,425
step
talk Tiponi Stormwhisper##26986
|tip Inside the building.
Train Illustrious Grand Master Skinning |skillmax Skinning,525 |goto Borean Tundra/0 76.19,37.52
|tip You must be at least level 75 to learn Illustrious Grand Master Skinning.
step
Reach 500 Skinning |skill Skinning,550 |goto The Oculus/1 47.99,12.02
|tip Clear the first floor of The Occulus dungeon, skinning the mobs you kill.
|tip When you clear the floor, zone out and reset.
step
talk Trapper Ri##66981
Train Zen Master Skinning |skillmax Skinning,600 |goto The Jade Forest/0 27.77,15.47
|tip You must be at least level 80.
step
kill Wyrmhorn Turtle##56256+
|tip Skin their corpses.
Reach 550 Skinning |skill Skinning,550 |goto Valley of the Four Winds/0 67.08,29.10
step
map Townlong Steppes/0
path follow smart; loop on; ants curved; dist 30
path	58.75,63.79	56.44,66.35	54.53,69.06	52.41,71.42	50.82,67.21
path	50.49,60.06	51.64,52.92	54.80,47.03	57.35,47.27	60.28,50.18
path	61.86,56.27	61.22,60.01
kill Longshadow Mushan##61618, Longshadow Bull##66463, Fluttering Moth##66514
|tip Skin their corpses.
Reach 590 Skinning |skill Skinning,590
step
map Dread Wastes/0
path follow smart; loop on; ants curved; dist 30
path	29.18,47.69	32.57,50.12	34.01,52.27	30.67,52.54	28.69,50.40
path	26.11,46.96	25.52,41.29	25.59,34.86	24.60,28.53	27.13,26.36
path	27.14,33.18	27.68,37.56	28.33,41.75	29.07,46.76
kill Ruby Venomtail##63588, Onyx Venomtail##63586
|tip Skin their corpses.
Reach 600 Skinning |skill Skinning,600
|only if not knowspell(115913) and not knowspell(130487)
step
kill Skyrange Mushan##64309, Stout Shaghorn##59139
|tip Skin their corpses.
Reach 600 Skinning |skill Skinning,600 |goto Valley of the Four Winds/0 28.95,37.57
|only if knowspell(115913) or knowspell(130487)
]])
QuestCore:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Tailoring (1-600)",{
expansion="mists",
mopready=true,
author="QuestCore",
condition_suggested=function() return skill('Tailoring') > 0 end,
description="This guide will walk you through leveling your Tailoring skill from 1-600.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/1 61.38,50.37 < 7 |walk
talk Magar##3363
|tip Inside the building.
Train Apprentice Tailoring |skillmax Tailoring,75 |goto Orgrimmar/1 63.65,49.93
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Tailoring |confirm |next "Begin_Profession_Leveling_Classic" |or
'|complete skill("Tailoring") >= 375 |or |next "Begin_Profession_Leveling_Classic"
stickystart "Collect_Wool_Cloth_Total"
stickystart "Collect_Silk_Cloth_Total"
stickystart "Collect_Mageweave_Cloth_Total"
stickystart "Collect_Runecloth_Total"
step
Inside Ragefire Chasm:
Kill Ragefire enemies throughout the dungeon
collect 204 Linen Cloth##2589 |or
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Tailoring") >= 50 |or
step
label "Collect_Wool_Cloth_Total"
Kill Venture Co. enemies around this area |notinsticky
|tip You can find more inside the mine. |notinsticky
collect 135 Wool Cloth##2592 |goto The Barrens/0 66.28,13.05 |or
|tip Farm them from level 16-30 humanoid mobs or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 100 |or
step
label "Collect_Silk_Cloth_Total"
Kill Grimtotem enemies around this area |notinsticky
collect 804 Silk Cloth##4306 |goto Thousand Needles 13.26,5.84 |or
|tip Farm them from level 28-40 humanoid mobs or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 146 |or
step
label "Collect_Mageweave_Cloth_Total"
Kill Dunemaul enemies around this area |notinsticky
collect 500 Mageweave Cloth##4338 |goto Tanaris/0 40.50,55.50 |or
|tip Farm them from level 38-50 humanoid mobs or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 185 |or
step
label "Collect_Runecloth_Total"
Kill Twilight enemies around this area
collect 800 Runecloth###14047 |goto Silithus/0 45.01,41.82 |or
You can find more around [33.53,34.87]
|tip Farm them from level 50+ humanoid mobs or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 260 |or
step
label "Begin_Profession_Leveling_Classic"
Inside Ragefire Chasm:
Kill Ragefire enemies throughout the dungeon
collect 204 Linen Cloth##2589 |or
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 50 |or
step
create 102 Bolt of Linen Cloth##2963,Tailoring,102 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 51 |or
step
create 1 Bolt of Linen Cloth##2963,Tailoring,45
|tip Save at least 102 of these; you will need them for future steps.
|tip You may need to make a few more of these.
|tip Each additional Bolt of Linen Cloth requires 2 Linen Cloth.
step
collect 40 Bolt of Linen Cloth##2996 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 70 |or
step
talk Borya##3364
|tip Inside the building.
buy 55 Coarse Thread##2320 |goto Orgrimmar/1 63.08,51.45 |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 70 |or
step
talk Magar##3363
|tip Inside the building.
Train Linen Belt |learn Linen Belt##8776 |goto Orgrimmar/1 63.65,49.93
step
create 40 Linen Belt##8776,Tailoring,70
|tip You may need to make a few more of these.
|tip Each additional Linen Belt requires 1 Bolt of Linen Cloth and 1 Coarse Thread.
step
collect 10 Bolt of Linen Cloth##2996 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 75 |or
step
talk Borya##3364
|tip Inside the building.
buy 15 Coarse Thread##2320 |goto Orgrimmar/1 63.08,51.45 |or
|tip You purchased these in a previous step.
'|complete skill("Tailoring") >= 75 |or
step
talk Magar##3363
|tip Inside the building.
Train Reinforced Linen Cape |learn Reinforced Linen Cape##2397 |goto Orgrimmar/1 63.65,49.93
step
create 5 Reinforced Linen Cape##2397,Tailoring,75
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Magar##3363
|tip Inside the building.
Train Journeyman Tailoring |skillmax Tailoring,150 |goto Orgrimmar/1 63.65,49.93
step
talk Magar##3363
|tip Inside the building.
Train Bolt of Woolen Cloth |learn Bolt of Woolen Cloth##2964 |goto Orgrimmar/1 63.65,49.93
step
Kill Venture Co. enemies around this area
|tip You can find more inside the mine.
collect 135 Wool Cloth##2592 |or |goto The Barrens/0 66.28,13.05
|tip Farm them from level 16-30 humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 100 |or
step
create 45 Bolt of Woolen Cloth##2964,Tailoring,45 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 106 |or
step
create 1 Bolt of Woolen Cloth##2964,Tailoring,100
|tip Save at least 45 of these; you will need them for future steps.
|tip You may need to make a few more of these.
|tip Each additional Bolt of Woolen Cloth requires 3 Wool Cloth.
step
collect 52 Bolt of Linen Cloth##2996 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 110 |or
step
talk Borya##3364
|tip Inside the building.
buy 43 Fine Thread##2321 |goto Orgrimmar/1 63.08,51.45 |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 110 |or
step
talk Magar##3363
|tip Inside the building.
Train Simple Kilt |learn Simple Kilt##12046 |goto Orgrimmar/1 63.65,49.93
step
create 13 Simple Kilt##12046,Tailoring,110
|tip You may need to make a few more of these.
|tip Each additional Simple Kilt requires 4 Bolts of Linen Cloth and 1 Fine Thread.
step
collect 45 Bolt of Woolen Cloth##2997 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 125 |or
step
talk Borya##3364
|tip Inside the building.
buy 30 Fine Thread##2321 |goto Orgrimmar/1 63.08,51.45 |or
|tip You purchased these in a previous step.
'|complete skill("Tailoring") >= 125 |or
step
talk Magar##3363
|tip Inside the building.
Train Double-stitched Woolen Shoulders |learn Double-stitched Woolen Shoulders##3848 |goto Orgrimmar/1 63.65,49.93
step
create 15 Double-stitched Woolen Shoulders##3848,Tailoring,125
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Magar##3363
|tip Inside the building.
Train Expert Tailoring |skillmax Tailoring,225 |goto Orgrimmar/1 63.65,49.93
step
talk Magar##3363
|tip Inside the building.
Train Bolt of Silk Cloth |learn Bolt of Silk Cloth##3839 |goto Orgrimmar/1 63.65,49.93
step
Kill Grimtotem enemies around this area
collect 804 Silk Cloth##4306 |goto Thousand Needles 13.26,5.84 |or
|tip Farm them from level 28-40 humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 146 |or
step
create 201 Bolt of Silk Cloth##3839,Tailoring,201 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 146 |or
step
create 1 Bolt of Silk Cloth##3839,Tailoring,145
|tip Save at least 201 of these; you will need them for future steps.
step
collect 36 Bolt of Silk Cloth##4305 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 160 |or
step
talk Borya##3364
|tip Inside the building.
buy 18 Fine Thread##2321 |goto Orgrimmar/1 63.08,51.45 |or 2
buy 36 Blue Dye##6260 |goto Orgrimmar/1 63.08,51.45 |or 2
'|complete skill("Tailoring") >= 160 |or
step
talk Magar##3363
|tip Inside the building.
Train Azure Silk Hood |learn Azure Silk Hood##8760 |goto Orgrimmar/1 63.65,49.93
step
create 18 Azure Silk Hood##8760,Tailoring,160
|tip You may need to create more or less of these.
|tip Each additional Azure Silk Hood requires 2 Bolts of Silk Cloth, 2 Blue Dye, and 1 Fine Thread.
step
collect 30 Bolt of Silk Cloth##4305 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 170 |or
step
talk Borya##3364
|tip Inside the building.
buy 20 Fine Thread##2321 |goto Orgrimmar/1 63.08,51.45 |or
'|complete skill("Tailoring") >= 170 |or
step
talk Magar##3363
|tip Inside the building.
Train Silk Headband |learn Silk Headband##8762 |goto Orgrimmar/1 63.65,49.93
step
create 10 Silk Headband##8762,Tailoring,170
step
collect 15 Bolt of Silk Cloth##4305 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 175 |or
step
talk Borya##3364
|tip Inside the building.
buy 10 Bleach##2324 |goto Orgrimmar/1 63.08,51.45 |or 2
buy 5 Fine Thread##2321 |goto Orgrimmar/1 63.08,51.45 |or 2
'|complete skill("Tailoring") >= 175 |or
step
talk Magar##3363
|tip Inside the building.
Train Formal White Shirt |learn Formal White Shirt##3871 |goto Orgrimmar/1 63.65,49.93
step
create 5 Formal White Shirt##3871,Tailoring,175
step
Kill Dunemaul enemies around this area
collect 500 Mageweave Cloth##4338 |or |goto Tanaris/0 40.50,55.50
|tip Farm them from level 38-50 humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 185 |or
step
talk Magar##3363
|tip Inside the building.
Train Bolt of Mageweave |learn Bolt of Mageweave##3865 |goto Orgrimmar/1 63.65,49.93
step
create 100 Bolt of Mageweave##3865,Tailoring,100 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 186 |or
step
create 1 Bolt of Mageweave##3865,Tailoring,185
|tip Save at least 100 of these; you will need them for future steps.
step
collect 80 Bolt of Silk Cloth##4305 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 205 |or
step
talk Borya##3364
|tip Inside the building.
buy 40 Fine Thread##2321 |goto Orgrimmar/1 63.08,51.45 |or 2
buy 40 Red Dye##2604 |goto Orgrimmar/1 63.08,51.45 |or 2
'|complete skill("Tailoring") >= 205 |or
step
talk Magar##3363
|tip Inside the building.
Train Crimson Silk Vest |learn Crimson Silk Vest##8791 |goto Orgrimmar/1 63.65,49.93
step
create 20 Crimson Silk Vest##8791,Tailoring,205
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Magar##3363
|tip Inside the building.
Train Artisan Tailoring |skillmax Tailoring,300 |goto Orgrimmar/1 63.65,49.93
step
talk Magar##3363
|tip Inside the building.
Train Crimson Silk Pantaloons |learn Crimson Silk Pantaloons##8799 |goto Orgrimmar/1 63.65,49.93
step
collect 40 Bolt of Silk Cloth##4305 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 215 |or
step
talk Borya##3364
|tip Inside the building.
buy 20 Red Dye##2604 |goto Orgrimmar/1 63.08,51.45 |or 2
buy 20 Silken Thread##4291 |goto Orgrimmar/1 63.08,51.45 |or 2
'|complete skill("Tailoring") >= 215 |or
step
create 10 Crimson Silk Pantaloons##8799,Tailoring,215
step
collect 5 Bolt of Mageweave##4339 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 220 |or
step
talk Borya##3364
|tip Inside the building.
buy 5 Orange Dye##6261 |goto Orgrimmar/1 63.08,51.45 |or 2
buy 5 Heavy Silken Thread##8343 |goto Orgrimmar/1 63.08,51.45 |or 2
'|complete skill("Tailoring") >= 220 |or
step
talk Magar##3363
|tip Inside the building.
Train Orange Mageweave Shirt |learn Orange Mageweave Shirt##12061 |goto Orgrimmar/1 63.65,49.93
step
create 5 Orange Mageweave Shirt##12061,Tailoring,220
step
collect 20 Bolt of Mageweave##4339 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 230 |or
step
talk Borya##3364
|tip Inside the building.
buy 20 Heavy Silken Thread##8343 |goto Orgrimmar/1 63.08,51.45 |or
'|complete skill("Tailoring") >= 230 |or
step
talk Magar##3363
|tip Inside the building.
Train Black Mageweave Gloves |learn Black Mageweave Gloves##12053 |goto Orgrimmar/1 63.65,49.93
step
create 10 Black Mageweave Gloves##12053,Tailoring,230
step
collect 75 Bolt of Mageweave##4339 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 250 |or
step
talk Borya##3364
|tip Inside the building.
buy 50 Heavy Silken Thread##8343 |goto Orgrimmar/1 63.08,51.45 |or
'|complete skill("Tailoring") >= 250 |or
step
talk Magar##3363
|tip Inside the building.
Train Black Mageweave Headband |learn Black Mageweave Headband##12072 |goto Orgrimmar/1 63.65,49.93
step
create 25 Black Mageweave Headband##12072,Tailoring,250
|tip You may need to create more or less of these.
|tip Each additional Black Mageweave Headband requires 3 Bolts of Mageweave and 2 Heavy Silken Thread.
step
Kill Twilight enemies around this area
collect 800 Runecloth###14047 |or |goto Silithus/0 45.01,41.82
You can find more around [33.53,34.87]
|tip Farm them from level 50+ humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 260 |or
step
talk Magar##3363
|tip Inside the building.
Train Bolt of Runecloth |learn Bolt of Runecloth##18401 |goto Orgrimmar/1 63.65,49.93
step
create 200 Bolt of Runecloth##18401,Tailoring,200 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 260 |or
step
create 1 Bolt of Runecloth##18401,Tailoring,260
|tip Save at least 200 of these; you will need them for future steps.
step
collect 75 Bolt of Runecloth##14048 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 280 |or
step
talk Borya##3364
|tip Inside the building.
buy 25 Rune Thread##14341 |goto Orgrimmar/1 63.08,51.45 |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 280 |or
step
talk Magar##3363
|tip Inside the building.
Train Runecloth Belt |learn Runecloth Belt##18402 |goto Orgrimmar/1 63.65,49.93
step
create 25 Runecloth Belt##18402,Tailoring,280
|tip You may need to create more or less of these.
|tip Each additional Runecloth Belt requires 3 Bolts of Runecloth and 1 Rune Thread.
step
collect 125 Bolt of Runecloth##14048 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 300 |or
step
talk Borya##3364
|tip Inside the building.
buy 50 Rune Thread##14341 |goto Orgrimmar/1 63.08,51.45 |or
'|complete skill("Tailoring") >= 300 |or
step
talk Magar##3363
|tip Inside the building.
Train Runecloth Gloves |learn Runecloth Gloves##18417 |goto Orgrimmar/1 63.65,49.93
step
create 25 Runecloth Gloves##18417,Tailoring,300
|tip You may need to create more or less of these.
|tip Each additional Runecloth Glove requires 5 Bolts of Runecloth and 2 Rune Thread.
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to train Master professions.
|tip Use the leveling guides to accomplish this.
step
talk Dalinna##18749
|tip Inside the building.
Train Master Tailoring |skillmax Tailoring,375 |goto Hellfire Peninsula/0 56.6,37.2
step
talk Dalinna##18749
|tip Inside the building.
Train Bolt of Netherweave |learn Bolt of Netherweave##26745 |goto Hellfire Peninsula/0 56.6,37.2
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Burning Crusade-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Tailoring |confirm |next "Begin_Profession_Leveling_Outland" |or
'|complete skill("Tailoring") >= 375 |or |next "Begin_Profession_Leveling_Outland"
stickystart "Collect_Arcane_Dust_Total"
stickystart "Collect_Knothide_Leather_Total"
step
map Shadowmoon Valley/0
path follow smart; loop on; ants curved; dist 20
path	51.1,58.8	53.0,59.3	53.2,60.5	52.8,63.2	52.8,65.4
path	52.9,69.0	52.5,71.8	47.3,71.1	45.8,71.3	45.2,69.2
path	45.6,66.1	48.0,67.2
Kill enemies around this area
collect 740 Netherweave Cloth##21877 |or
|tip Farm them from Outland humanoid mobs or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Tailoring") >= 326 |or
step
label "Collect_Arcane_Dust_Total"
collect 12 Arcane Dust##22445 |or
|tip Disenchant them from Outland uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 331 |or
step
label "Collect_Knothide_Leather_Total"
map Netherstorm/0
path follow smart; loop on; ants curved; dist 30
path	43.61,57.06	45.22,57.65	47.41,56.58	48.25,54.31	48.18,51.86
path	46.52,51.17	45.58,49.75	43.63,50.57	43.29,52.27	43.66,54.99
path	44.85,56.21
Kill enemies around this area |notinsticky
|tip Only Beast enemies will be skinnable. |notinsticky
|tip Skin their corpses. |notinsticky
collect 20 Knothide Leather##21887 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 346 |or
step
label "Begin_Profession_Leveling_Outland"
map Shadowmoon Valley/0
path follow smart; loop on; ants curved; dist 20
path	51.1,58.8	53.0,59.3	53.2,60.5	52.8,63.2	52.8,65.4
path	52.9,69.0	52.5,71.8	47.3,71.1	45.8,71.3	45.2,69.2
path	45.6,66.1	48.0,67.2
Kill enemies around this area
collect 740 Netherweave Cloth##21877 |or
|tip Farm them from Outland humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 326 |or
step
create 148 Bolt of Netherweave##26745,Tailoring,148 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 326 |or
step
create 1 Bolt of Netherweave##26745,Tailoring,325
|tip Save at least 148 of these; you will need them for future steps.
stickystart "Collect_Arcane_Dust_331"
step
collect 18 Bolt of Netherweave##21840 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 341 |or
step
label "Collect_Arcane_Dust_331"
collect 12 Arcane Dust##22445 |or
|tip Disenchant them from Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Tailoring") >= 341 |or
step
talk Eiin##19213
buy Pattern: Bolt of Imbued Netherweave##21892 |goto Shattrath City/0 66.2,68.6 |complete skill("Tailoring") >= 331 or knowsrecipe(26747)
buy Pattern: Netherweave Tunic##21897 |goto Shattrath City/0 66.26,68.91 |complete skill("Tailoring") >= 350 or knowsrecipe(26774)
|tip Save this, you will need it later.
step
use the Pattern: Bolt of Imbued Netherweave##21892
Train Bolt of Imbued Netherweave |learn Bolt of Imbued Netherweave##26747
step
create 6 Bolt of Imbued Netherweave##26747,Tailoring,331 |goto Shattrath City/0 66.50,68.73
|tip You must be standing at the Mana Loom in Shattrath City to craft these.
step
collect 30 Bolt of Netherweave##21840 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 336 |or
step
talk Dalinna##18749
|tip Inside the building.
buy 5 Rune Thread##14341 |goto Hellfire Peninsula/0 56.6,37.2 |or
'|complete skill("Tailoring") >= 336 |or
step
talk Dalinna##18749
|tip Inside the building.
Train Netherweave Pants |learn Netherweave Pants##26771 |goto Hellfire Peninsula/0 56.6,37.2
step
create 5 Netherweave Pants##26771,Tailoring,336
|tip You may need to create more of these.
|tip Each additional Netherweave Pants requires 6 Bolts of Netherweave and 1 Rune Thread.
stickystart "Collect_Knothide_Leather_346"
step
collect 60 Bolt of Netherweave##21840 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 346 |or
step
label "Collect_Knothide_Leather_346"
map Netherstorm/0
path follow smart; loop on; ants curved; dist 30
path	43.61,57.06	45.22,57.65	47.41,56.58	48.25,54.31	48.18,51.86
path	46.52,51.17	45.58,49.75	43.63,50.57	43.29,52.27	43.66,54.99
path	44.85,56.21
Kill enemies around this area
|tip Only Beast enemies will be skinnable.
|tip Skin their corpses.
collect 20 Knothide Leather##21887 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Tailoring") >= 346 |or
step
talk Dalinna##18749
|tip Inside the building.
buy 10 Rune Thread##14341 |goto Hellfire Peninsula/0 56.6,37.2 |or
'|complete skill("Tailoring") >= 346 |or
step
talk Dalinna##18749
|tip Inside the building.
Train Netherweave Boots |learn Netherweave Boots##26772 |goto Hellfire Peninsula/0 56.6,37.2
step
create 10 Netherweave Boots##26772,Tailoring,346
step
collect 40 Bolt of Netherweave##21840 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 350 |or
step
talk Dalinna##18749
|tip Inside the building.
buy 10 Rune Thread##14341 |goto Hellfire Peninsula/0 56.6,37.2 |or
'|complete skill("Tailoring") >= 350 |or
step
use the Pattern: Netherweave Tunic##21897
|tip You purchased this in a previous step.
Learn Netherweave Tunic |learn Netherweave Tunic##26774
step
create 5 Netherweave Tunic##26774,Tailoring,350
step
Reach Level 65 |ding 65
|tip You must be at least level 65 to train Grand Master professions in Northrend.
|tip Use the leveling guides to accomplish this.
step
talk Charles Worth##28699
|tip Inside the building.
Learn Grand Master Tailoring |skillmax Tailoring,450 |goto Dalaran/1 36.14,33.55
step
talk Charles Worth##28699
|tip Inside the building.
Train Bolt of Frostweave |learn Bolt of Frostweave##55899 |goto Dalaran/1 36.14,33.55
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Lich King-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Tailoring |confirm |next "Begin_Profession_Leveling_Northrend" |or
'|complete skill("Tailoring") >= 450 |or |next "Begin_Profession_Leveling_Northrend"
stickystart "Collect_Infinite_Dust_Total"
step
Collect 5 Gold |complete _G.GetMoney() >= 50000 |q 13272 |future
|tip You will need 5 gold to complete the quest to obtain Northrend Cloth Scavenging.
|tip This will increase your Frostweave Cloth drops.
step
talk Charles Worth##28699
|tip Inside the building.
accept Cloth Scavenging##13272 |goto Dalaran/1 36.14,33.55
|tip You will train Northrend Cloth Scavenging.
|tip This will increase your Frostweave Cloth drops.
step
kill Mjordin Combatant##30037+
|tip They will continuously respawn when you deplete their numbers.
collect 2975 Frostweave Cloth##33470 |goto Icecrown/0 37.29,23.72 |or
|tip Farm them from Northrend humanoid mobs or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Tailoring") >= 450 |or
step
label "Collect_Infinite_Dust_Total"
collect 240 Infinite Dust##34054 |or
|tip Disenchant them from Northrend uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 405 |or
step
label "Begin_Profession_Leveling_Northrend"
Collect 5 Gold |complete _G.GetMoney() >= 50000 |q 13272 |future
|tip You will need 5 gold to complete the quest to obtain Northrend Cloth Scavenging.
|tip This will increase your Frostweave Cloth drops.
step
talk Charles Worth##28699
|tip Inside the building.
accept Cloth Scavenging##13272 |goto Dalaran/1 36.14,33.55
|tip You will train Northrend Cloth Scavenging.
|tip This will increase your Frostweave Cloth drops.
step
kill Mjordin Combatant##30037+
|tip They will continuously respawn when you deplete their numbers.
collect 2975 Frostweave Cloth##33470 |goto Icecrown/0 37.29,23.72 |or
|tip Farm them from Northrend humanoid mobs or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Tailoring") >= 375 |or
step
create 595 Bolt of Frostweave##55899,Tailoring,595 total
step
create 1 Bolt of Frostweave##55899,Tailoring,375
step
collect 15 Bolt of Frostweave##41510 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 380 |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 5 Eternium Thread##38426 |goto Dalaran/1 35.60,34.40 |or
'|complete skill("Tailoring") >= 380 |or
step
talk Charles Worth##28699
|tip Inside the building.
Train Frostwoven Belt |learn Frostwoven Belt##55908 |goto Dalaran/1 36.14,33.55
step
create 5 Frostwoven Belt##55908,Tailoring,380
step
collect 20 Bolt of Frostweave##41510 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 385 |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 5 Eternium Thread##38426 |goto Dalaran/1 35.60,34.40 |or
'|complete skill("Tailoring") >= 385 |or
step
talk Charles Worth##28699
|tip Inside the building.
Train Frostwoven Boots |learn Frostwoven Boots##55906 |goto Dalaran/1 36.14,33.55
step
create 5 Frostwoven Boots##55906,Tailoring,385
step
collect 65 Bolt of Frostweave##41510 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 395 |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 13 Eternium Thread##38426 |goto Dalaran/1 35.60,34.40 |or
'|complete skill("Tailoring") >= 395 |or
step
talk Charles Worth##28699
|tip Inside the building.
Train Frostwoven Cowl |learn Frostwoven Cowl##55907 |goto Dalaran/1 36.14,33.55
step
create 13 Frostwoven Cowl##55907,Tailoring,395
|tip You may need to create more of these.
|tip Each additional Frostwoven Cowl requires 5 Bolts of Frostweave and 1 Eternium Thread.
step
collect 35 Bolt of Frostweave##41510 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 400 |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 5 Eternium Thread##38426 |goto Dalaran/1 35.60,34.40 |or
'|complete skill("Tailoring") >= 400 |or
step
talk Charles Worth##28699
|tip Inside the building.
Train Duskweave Belt |learn Duskweave Belt##55914 |goto Dalaran/1 36.14,33.55
step
create 5 Duskweave Belt##55914,Tailoring,400
stickystart "Collect_Bolt_of_Frostweave_405"
step
collect 240  Infinite Dust##34054 |or
|tip Disenchant them from Northrend uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 405 |or
step
label "Collect_Bolt_of_Frostweave_405"
collect 240  Bolt of Frostweave##41510 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 405 |or
step
talk Charles Worth##28699
|tip Inside the building.
Train Bolt of Imbued Frostweave |learn Bolt of Imbued Frostweave##55900 |goto Dalaran/1 36.14,33.55
step
create 120 Bolt of Imbued Frostweave##55900,Tailoring,120 total
|tip Save these, you will need them for future steps.
step
create 1 Bolt of Imbued Frostweave##55900,Tailoring,405
|tip Save 120 of these, you will need them for future steps.
step
collect 40 Bolt of Frostweave##41510 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 410 |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 5 Eternium Thread##38426 |goto Dalaran/1 35.60,34.40 |or
'|complete skill("Tailoring") >= 410 |or
step
talk Charles Worth##28699
|tip Inside the building.
Train Duskweave Wristwraps |learn Duskweave Wristwraps##55920 |goto Dalaran/1 36.14,33.55
step
create 5 Duskweave Wristwraps##55920,Tailoring,410
step
collect 45 Bolt of Frostweave##41510 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 415 |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 5 Eternium Thread##38426 |goto Dalaran/1 35.60,34.40 |or
'|complete skill("Tailoring") >= 415 |or
step
talk Charles Worth##28699
|tip Inside the building.
Train Duskweave Gloves |learn Duskweave Gloves##55922 |goto Dalaran/1 36.14,33.55
step
create 5 Duskweave Gloves##55922,Tailoring,415
step
collect 130 Bolt of Frostweave##41510 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 425 |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 13 Eternium Thread##38426 |goto Dalaran/1 35.60,34.40 |or
'|complete skill("Tailoring") >= 425 |or
step
talk Charles Worth##28699
|tip Inside the building.
Train Duskweave Boots |learn Duskweave Boots##55924 |goto Dalaran/1 36.14,33.55
step
create 13 Duskweave Boots##55924,Tailoring,425
|tip You may need to create more of these.
|tip Each additional Duskweave Boots requires 10 Bolts of Frostweave and 1 Eternium Thread.
step
collect 120 Bolt of Imbued Frostweave##41511 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 440 |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 40 Eternium Thread##38426 |goto Dalaran/1 35.60,34.40 |or
'|complete skill("Tailoring") >= 440 |or
step
talk Charles Worth##28699
|tip Inside the building.
Train Frostweave Bag |learn Frostweave Bag##56007 |goto Dalaran/1 36.14,33.55
step
create 20 Frostweave Bag##56007,Tailoring,440
|tip You may need to create more of these.
|tip Each additional Frostweave Bag requires 6 Bolts of Imbued Frostweave and 2 Eternium Thread.
step
create 1 Frostweave Bag##56007,Tailoring,450
|tip From this point on, it's best to keep creating bags and selling them unless you need a piece of epic gear.
|tip If so, craft any for points with daily cooldown materials.
|tip Each additional Frostweave Bag requires 6 Bolts of Imbued Frostweave and 2 Eternium Thread.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Cataclysm-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Tailoring |confirm |next "Begin_Tailoring_Leveling_Cataclysm" |or
'|complete skill("Tailoring") >= 525 |or |next "Begin_Tailoring_Leveling_Cataclysm"
stickystart "Collect_Volatile_Fire_Total"
stickystart "Collect_Volatile_Air_Total"
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 1825 Embersilk Cloth##53010 |or
collect 365 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|tip Turn the cloth into Embersilk Bolts after.
|only if skill("Tailoring") < 525
step
label "Collect_Volatile_Fire_Total"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 70 Volatile Fire##52325 |or
'|complete skill("Tailoring") >= 525 |or
step
label "Collect_Volatile_Air_Total"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	39.56,47.29	41.39,48.90	41.53,46.16	39.76,44.61
kill Storm Vortex##47728+
collect 15 Volatile Air##52328 |or
|tip Or purchase them from the auction house |notinsticky
'|complete skill("Tailoring") >= 505 |or
step
label "Collect_Volatile_Water_Total"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	29.60,66.46	28.77,62.37	31.51,59.47	33.77,56.98	35.75,60.13
path	34.61,63.05
kill Enslaved Waterspout##46329+
collect 55 Volatile Water##52326
|tip Farm them or purchase them from the Auction House.
|only if skill("Tailoring") < 525
step
label "Begin_Tailoring_Leveling_Cataclysm"
talk Magar##3363
Train Illustrious Grand Master Tailoring |skillmax Tailoring,525 |goto Orgrimmar/1 63.65,49.93
|tip You must be at least level 75.
step
talk Magar##3363
learn Deathsilk Bracers##75249 |goto Orgrimmar/1 63.65,49.93
step
talk Borya##3364
buy 100 Eternium Thread##38426 |goto Orgrimmar/1 63.08,51.45
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 125 Embersilk Cloth##53010 |or
collect 15 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|tip Turn the cloth into Embersilk Bolts after.
|only if skill("Tailoring") < 455
step
_<Create 5 Deathsilk Bracers>_
Reach 455 Tailoring |skill Tailoring,455
step
talk Magar##3363
learn Deathsilk Boots##75252 |goto Orgrimmar/1 63.65,49.93
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 75 Embersilk Cloth##53010 |or
collect 15 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|tip Turn the cloth into Embersilk Bolts after.
|only if skill("Tailoring") < 460
step
_<Create 5 Deathsilk Boots>_
Reach 460 Tailoring |skill Tailoring,460
step
talk Magar##3363
learn Deathsilk Leggings##75254 |goto Orgrimmar/1 63.65,49.93
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 75 Embersilk Cloth##53010 |or
collect 15 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|tip Turn the cloth into Embersilk Bolts after.
|only if skill("Tailoring") < 465
step
_<Create 5 Deathsilk Leggings>_
Reach 465 Tailoring |skill Tailoring,465
step
talk Magar##3363
learn Deathsilk Cowl##75256 |goto Orgrimmar/1 63.65,49.93
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 75 Embersilk Cloth##53010 |or
collect 15 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 470
step
_<Create 5 Deathsilk Cowl>_
Reach 470 Tailoring |skill Tailoring,470
step
talk Magar##3363
learn Spiritmend Belt##75258 |goto Orgrimmar/1 63.65,49.93
step
talk Magar##3363
learn Deathsilk Cowl##75256 |goto Orgrimmar/1 63.65,49.93
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 100 Embersilk Cloth##53010 |or
collect 20 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 475
step
_<Create 5 Spiritmend Belt>_
Reach 475 Tailoring |skill Tailoring,475
step
talk Magar##3363
learn Spiritmend Boots##75261 |goto Orgrimmar/1 63.65,49.93
step
talk Magar##3363
learn Deathsilk Cowl##75256 |goto Orgrimmar/1 63.65,49.93
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 100 Embersilk Cloth##53010 |or
collect 20 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 480
step
_<Create 5 Spiritmend Boots>_
Reach 480 Tailoring |skill Tailoring,480
step
talk Magar##3363
learn Spiritmend Leggings##75263 |goto Orgrimmar/1 63.65,49.93
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 100 Embersilk Cloth##53010 |or
collect 20 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 485
step
_<Create 5 Spiritmend Leggings>_
Reach 485 Tailoring |skill Tailoring,485
step
talk Magar##3363
learn Spiritmend Robe##75267 |goto Orgrimmar/1 63.65,49.93
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 450 Embersilk Cloth##53010 |or
collect 90 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 500
step
_<Create 15 Spiritmend Robe>_
Reach 500 Tailoring |skill Tailoring,500
step
talk Magar##3363
learn Fireweave Bracers##75290 |goto Orgrimmar/1 63.65,49.93
stickystart "Volatile_Air_505"
stickystart "Volatile_Fire_505"
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 150 Embersilk Cloth##53010 |or
collect 30 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 500
step
label "Volatile_Fire_505"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 15 Volatile Fire##52325 |or
'|complete skill("Tailoring") >= 505 |or
step
label "Volatile_Air_505"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	39.56,47.29	41.39,48.90	41.53,46.16	39.76,44.61
kill Storm Vortex##47728+
collect 15 Volatile Air##52328 |or
|tip Or purchase them from the auction house |notinsticky
'|complete skill("Tailoring") >= 505 |or
step
_<Create 5 Fireweave Bracers>_
Reach 505 Tailoring |skill Tailoring,505
step
talk Magar##3363
learn Emberfire Shoulders##75291 |goto Orgrimmar/1 63.65,49.93
stickystart "Volatile_Fire_510"
stickystart "Volatile_Water_510"
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 150 Embersilk Cloth##53010 |or
collect 30 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 510
step
label "Volatile_Fire_510"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 15 Volatile Fire##52325 |or
'|complete skill("Tailoring") >= 510 |or
step
label "Volatile_Water_510"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	29.60,66.46	28.77,62.37	31.51,59.47	33.77,56.98	35.75,60.13
path	34.61,63.05
kill Enslaved Waterspout##46329+
collect 15 Volatile Water##52326 |or
'|complete skill("Tailoring") >= 510 |or
step
_<Create 5 Emberfire Shoulders>_
Reach 510 Tailoring |skill Tailoring,510
step
talk Magar##3363
learn Emberfire Belt##75293 |goto Orgrimmar/1 63.65,49.93
stickystart "Volatile_Fire_516"
stickystart "Volatile_Water_516"
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 150 Embersilk Cloth##53010 |or
collect 30 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 516
step
label "Volatile_Fire_516"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 12 Volatile Fire##52325 |or
'|complete skill("Tailoring") >= 516 |or
step
label "Volatile_Water_516"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	29.60,66.46	28.77,62.37	31.51,59.47	33.77,56.98	35.75,60.13
path	34.61,63.05
kill Enslaved Waterspout##46329+
collect 12 Volatile Water##52326 |or
'|complete skill("Tailoring") >= 516 |or
step
_<Create 3 Emberfire Belt##75293,Tailoring
|tip Each craft gives two skill points.
Reach 516 Tailoring |skill Tailoring,516
step
talk Magar##3363
learn Emberfire Gloves##75295 |goto Orgrimmar/1 63.65,49.93
stickystart "Volatile_Fire_516"
stickystart "Volatile_Water_516"
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 100 Embersilk Cloth##53010 |or
collect 20 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 520
step
label "Volatile_Fire_516"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 8 Volatile Fire##52325 |or
'|complete skill("Tailoring") >= 520 |or
step
label "Volatile_Water_516"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	29.60,66.46	28.77,62.37	31.51,59.47	33.77,56.98	35.75,60.13
path	34.61,63.05
kill Enslaved Waterspout##46329+
collect 8 Volatile Water##52326 |or
'|complete skill("Tailoring") >= 520 |or
step
_<Create 2 Emberfire Gloves>_
|tip Each craft gives two skill points.
Reach 520 Tailoring |skill Tailoring,520
step
talk Magar##3363
learn Emberfire Boots##75297
stickystart "Volatile_Fire_516"
stickystart "Volatile_Water_516"
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 250 Embersilk Cloth##53010 |or
collect 50 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 520
step
label "Volatile_Fire_516"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 20 Volatile Fire##52325 |or
'|complete skill("Tailoring") >= 520 |or
step
label "Volatile_Water_516"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	29.60,66.46	28.77,62.37	31.51,59.47	33.77,56.98	35.75,60.13
path	34.61,63.05
kill Enslaved Waterspout##46329+
collect 20 Volatile Water##52326 |or
'|complete skill("Tailoring") >= 520 |or
step
_<Create 5 Emberfire Boots>_
Reach 525 Tailoring |skill Tailoring,525
step
Reach Level 80 |ding 80
|tip You must be at least level 80 to train Zen Master professions.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Pandaria materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Tailoring |confirm |next "Begin_Profession_Leveling_Pandaria" |or
'|complete skill("Tailoring") >= 500 |or |next "Begin_Profession_Leveling_Pandaria"
step
collect 600 Windwool Cloth##72162 |or |usebank
|tip You can farm these from mobs in Pandaria or purchase them from the Auction House.
|loadguide "Profession Guides\\Tailoring\\Farming Guides\\Windwool Cloth"
'|complete skill("Tailoring") >= 555
step
collect 460 Windwool Cloth##72162 |or |usebank
|tip You can farm these from mobs in Pandaria or purchase them from the Auction House.
|loadguide "Profession Guides\\Tailoring\\Farming Guides\\Windwool Cloth"
'|complete skill("Tailoring") >= 600
step
label "Begin_Profession_Leveling_Pandaria"
talk Magar##3363
|tip Inside the building.
Train Zen Master Tailoring |skillmax Tailoring,600 |goto Orgrimmar/1 63.65,49.93
step
talk Magar##3363
|tip Inside the building.
Train Bolt of Windwool Cloth |learn Bolt of Windwool Cloth##125551 |goto Orgrimmar/1 63.65,49.93
'|complete skill("Tailoring") >= 600 |or
step
collect 600 Windwool Cloth##72162 |or |usebank
|tip You can farm these from mobs in Pandaria or purchase them from the Auction House.
|loadguide "Profession Guides\\Tailoring\\Farming Guides\\Windwool Cloth"
'|complete skill("Tailoring") >= 555
step
create 60 Bolt of Windwool Cloth##125551,Tailoring,60 total |or |usebank
'|complete skill("Tailoring") >= 555 |or
step
talk Magar##3363
|tip Inside the building.
Train Windwool Shoulders |learn Windwool Shoulders##125524 |goto Orgrimmar/1 63.65,49.93
step
collect 28 Bolt of Windwool Cloth##82441 |or |usebank
'|complete skill("Tailoring") >= 555 |or
step
create 7 Windwool Shoulders##125524,Tailoring,28 total |or |usebank
'|complete skill("Tailoring") >= 555 |or
step
talk Esha the Loommaiden##64051
|tip Inside the building.
Purchase and Learn Pattern: Contender's Silk Cuffs |learn Contender's Silk Cuffs##125536 |goto Shrine of Two Moons/1 32.13,53.64
|tip You can choose any of the PVP patterns you'd like.
'|complete skill("Leatherworking") >= 600 |or'
step
collect 92 Bolt of Windwool Cloth##82441 |or |usebank
'|complete skill("Tailoring") >= 600 |or
step
create 23 Contender's Silk Cuffs##125536,Tailoring,92 total |or |usebank
'|complete skill("Tailoring") >= 600 |or
]])
