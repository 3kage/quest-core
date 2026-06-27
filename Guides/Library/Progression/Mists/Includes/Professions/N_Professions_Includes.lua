
if not QuestCore then return end
---------------------
------ Alchemy ------
---------------------



-------------------------
------ Archaeology ------
-------------------------



---------------------------
------ Blacksmithing ------
---------------------------

QuestCore:RegisterInclude("trainer_Blacksmithing_Shatt",[[
		talk Kradu Grimblade##20124 |goto Shattrath City 69.40,43.30
]])

---------------------
------ Cooking ------
---------------------

QuestCore:RegisterInclude("cooking_fire",[[
		Stand next to a fire, or create one yourself |cast Cooking fire##818
]])

QuestCore:RegisterInclude("Outland_Cooking_Trainer",[[
		talk Jack Trapper##19185 |goto Shattrath City/0 63.09,68.38
		|tip Inside the building.
]])

------------------------
------ Enchanting ------
------------------------



-------------------------
------ Engineering ------
-------------------------



-----------------------
------ First Aid ------
-----------------------



---------------------
------ Fishing ------
---------------------



-----------------------
------ Herbalism ------
-----------------------

QuestCore:RegisterInclude("follow_path_herbs",[[
		Zoom your minimap all the way out and track herbs
		Follow the path and gather from yellow nodes on your minimap
]])

QuestCore:RegisterInclude("FW_DG_Path",[[
	--Felweed // Dreaming Glory
	map Hellfire Peninsula
	path follow loose;loop;ants straight;dist 60
	path 80.60,79.90		73.30,67.00		68.60,76.90
	path 56.10,71.60		48.40,75.20		40.70,84.50
	path 36.60,67.40		32.90,65.60		28.00,78.70
	path 22.90,67.50		13.70,63.00		13.50,38.70
	path 23.80,44.60		30.50,33.10		37.80,30.80
	path 55.80,31.10		67.10,27.30
]])

QuestCore:RegisterInclude("GC_TL_Path",[[
	--Goldclover // Tiger Lily
	map Borean Tundra
	path follow loose;loop;ants straight;dist 60
	path 51.90,47.70		53.70,43.40	53.20,38.80
	path 54.80,29.90		51.30,20.80	49.40,26.20
	path 42.90,41.30		36.50,54.90	44.10,64.20
	path 52.20,60.70		57.70,52.10
]])

QuestCore:RegisterInclude("GC_TL_AT_Path",[[
	--Goldclover // Tiger Lily // Adder's Tongue
	map Sholazar Basin
	path follow loose;loop;ants straight;dist 60
	path 32.00,58.20		36.10,65.30		43.90,57.70
	path 44.50,63.90		39.50,66.30		40.40,71.70
	path 32.80,82.30		36.10,84.40		42.60,76.00
	path 46.80,62.50		51.00,62.00		60.00,73.90
	path 55.70,85.90		66.40,82.30		69.30,65.80
	path 55.20,57.10		48.90,55.00		55.40,48.10
	path 58.10,38.30		34.80,31.40		30.10,43.40
	path 32.10,48.50		26.60,55.40		23.70,60.30
]])

QuestCore:RegisterInclude("Terocone_Path",[[
	--Terocone
	map Terokkar Forest
	path follow loose;loop;ants straight;dist 60
	path 34.40,8.00 		37.50,16.10		41.60,19.90
	path 44.50,11.50		51.00,21.00		48.40,26.90
	path 60.20,22.50		73.10,45.30		61.50,48.60
	path 54.00,37.10		48.00,33.50		39.00,34.80
	path 39.20,44.40		47.30,50.00		47.00,79.80
	path 33.50,76.90		19.60,77.80		21.50,60.70
	path 31.40,39.90		37.40,30.10
]])

QuestCore:RegisterInclude("NB_DG_Path",[[
	--Netherbloom // Dreaming Glory
	map Netherstorm
	path follow loose;loop;ants straight;dist 60
	path 31.50,51.40		25.60,63.50		19.50,67.70
	path 20.30,77.10		40.20,77.20		46.20,82.60
	path 48.00,86.90		58.90,88.80		61.40,79.40
	path 51.60,75.70		46.00,72.10		34.50,55.80
	path 40.10,52.90		50.20,69.00		67.10,60.70
	path 50.80,54.80		46.50,47.10		55.00,39.90
	path 58.50,47.20		62.70,50.30		73.40,40.50
	path 73.20,35.20		62.10,30.50		55.60,31.60
	path 49.80,35.90		48.80,25.50		57.10,24.30
	path 55.50,17.30		49.70,17.40		48.90,12.50
	path 44.90,19.80		42.50,16.20		39.50,15.70
	path 35.70,19.80		32.10,29.20		38.50,42.40
	path 31.10,38.10		23.50,35.40		22.90,44.10
	path 30.20,43.30
]])

QuestCore:RegisterInclude("GC_DN_TL_Path",[[
	--Goldclover // Deadnettle // Tiger Lily
	map Howling Fjord
	path follow loose;loop;ants straight;dist 60
	path	70.10,47.30	75.50,50.80	80.50,46.20
	path	76.30,42.80	70.30,40.50	66.50,33.50
	path	70.50,32.40	73.60,26.70	69.80,19.20
	path	65.80,26.80	61.80,28.50	58.50,22.70
	path	50.20,16.60	48.70,21.20	26.50,7.90
	path	29.20,12.00	23.80,14.00	26.80,14.50
	path	27.20,20.80	29.00,22.20	27.10,29.60
	path	31.30,33.30	34.80,34.10	41.70,34.20
	path	42.10,27.70	46.30,31.50	47.10,29.00
	path	54.10,32.50	49.00,35.80	58.10,37.00
	path	58.30,40.10	43.30,44.10	40.90,40.20
	path	37.00,39.90	37.00,44.90	34.90,46.20
	path	46.40,54.30	45.90,50.20	51.10,48.30
	path	59.50,51.60	59.00,55.60	45.10,59.40
	path	48.70,62.70	46.80,71.60	52.80,71.50

	path	53.40,76.50	60.00,76.80	62.60,80.50
	path	64.80,67.60	67.90,59.70	65.80,72.50
	path	67.10,74.90	69.50,74.50	70.60,66.10
	path	76.40,67.90
]])

QuestCore:RegisterInclude("Tiger_Lily_Path",[[
	--Tiger Lily
	map Sholazar Basin
	path	68.70,66.60	69.40,68.50	71.00,70.30
	path	69.10,73.60	68.10,70.10	65.30,70.50
	path	67.10,75.20	65.30,75.60	61.50,71.20
	path	65.10,79.50	62.90,83.50	59.20,72.50
	path	57.50,83.30	60.10,85.30	51.60,86.50
	path	43.60,75.30	47.90,73.90	50.50,62.60
	path	47.90,60.10	46.20,63.10	46.90,65.50
	path	43.10,62.30	41.30,67.50	37.90,63.60
	path	37.70,66.20	29.80,66.80	31.90,70.10
	path	31.10,71.10	43.70,71.00	40.10,76.50
	path	43.30,77.40	42.50,83.00	41.00,83.90
	path	41.90,86.50	40.80,87.80	37.50,83.30
	path	35.20,87.10	35.20,83.40	28.80,84.80
	path	28.50,79.50	30.50,75.70	28.50,75.50
	path	26.60,77.60	21.60,63.70	22.40,60.30
	path	32.70,64.50	32.40,60.40	29.10,61.70
	path	32.70,64.50	32.40,60.40	29.10,61.70
	path	32.70,64.50	32.40,60.40	29.10,61.70
	path	25.30,59.00	21.50,56.30	25.70,55.90
	path	32.00,41.70	31.20,55.20	28.70,53.50
	path	28.50,60.10	35.20,60.70	35.50,58.70
	path	38.20,60.20	38.60,55.50	41.60,56.20
	path	41.20,58.80	43.50,59.50	49.50,52.30
	path	47.60,49.60	44.60,49.10	46.80,52.10
	path	45.50,51.60	39.60,35.80	33.90,31.60
	path	38.50,29.60	33.80,24.40	35.40,20.90
	path	40.60,26.00	39.90,21.10	43.90,23.50
	path	56.50,31.50	62.70,33.90	57.60,41.30
	path	59.30,42.10	59.60,45.10	57.70,47.20
	path	53.50,44.00	50.50,54.20	52.30,56.80
	path	56.60,54.50	55.60,49.90	64.20,46.40
	path	63.90,48.90
]])

QuestCore:RegisterInclude("T_Rose_Path",[[
	--Talandra's Rose
	map Zul'Drak
	path follow loose;loop;ants straight;dist 60
	path 21.30,84.10		31.20,68.20		39.30,63.70
	path 29.70,52.60		37.10,40.80		43.60,46.70
	path 43.00,62.90		50.70,62.40		58.20,73.50
	path 52.20,83.30		39.50,87.00
]])

QuestCore:RegisterInclude("IT_LB_Path",[[
	--Icethorn // Lichbloom
	map The Storm Peaks
	path follow loose;loop;ants straight;dist 60
	path 31.40,83.10		33.00,93.80		40.00,82.30
	path 52.20,69.50		56.90,71.00		63.00,59.60
	path 65.00,73.20		66.90,58.50		77.20,72.80
	path 77.00,61.30		72.80,53.10		70.90,47.20
	path 64.10,54.10		65.70,41.50		52.50,53.20
	path 47.70,36.00		34.60,40.40		30.40,50.50
	path 29.10,37.40		22.20,36.70		24.30,56.40
	path 30.70,64.50		24.60,72.50		36.30,72.70
]])

QuestCore:RegisterInclude("SV_CB_Path",[[
	--Stormvine // Cinderbloom
	map Mount Hyjal
	path follow loose;loop;ants straight;dist 60
	path 68.20,23.90		57.00,38.90		57.90,17.50
	path 51.50,16.90		52.60,35.50		48.70,36.50
	path 44.00,24.50		39.80,32.50		36.50,21.70
	path 32.30,25.20		34.60,36.90		43.50,42.60
	path 36.20,44.90		25.30,37.80		24.10,31.90
	path 11.80,31.60		19.00,58.50		25.60,62.00
	path 31.90,46.70		36.90,53.50		42.30,55.90
	path 33.80,65.00		31.30,76.50		33.80,98.20
	path 57.10,80.90		59.20,84.50		59.80,77.80
	path 55.80,74.70		59.80,71.60		49.10,51.60
	path 61.90,60.50		67.10,53.50		74.30,58.80
	path 71.90,68.50		77.50,59.50		83.00,64.20
	path 89.90,49.80		80.90,51.80
]])

QuestCore:RegisterInclude("Stormvine_Path",[[
	--Stormvine
	map Shimmering Expanse
	path	42.20,55.20	37.70,67.10	48.20,81.40
	path	57.80,83.20	58.50,69.60	49.60,59.10
	path	68.00,49.70	63.90,39.40	57.90,39.80
	path	50.60,35.30	41.30,34.80	38.10,44.70
	path	32.50,54.70
]])

QuestCore:RegisterInclude("HB_Path",[[
	--Heartblossom
	map Deepholm
	path	69.40,56.00	70.00,60.70	72.90,58.20
	path 	74.70,61.10	75.80,67.50	70.90,62.90
	path 	71.10,70.60	66.00,68.50	26.80,41.50
	path 	26.50,35.60	23.10,35.30	25.90,31.90
	path 	27.50,32.30	27.80,27.00	31.20,32.00
	path 	28.90,35.60	26.80,41.50
]])

QuestCore:RegisterInclude("Whiptail_Path",[[
	--Whiptail
	map Uldum
	path	58.40,31.30	56.20,22.60	57.80,14.50
	path 	61.50,14.00	57.10,44.70	60.50,58.30
	path 	69.80,76.50	65.90,75.90	60.00,83.20
	path 	59.00,58.80	55.30,45.80	52.00,45.60
	path 	50.80,42.50	50.80,36.00	50.80,36.00
]])

QuestCore:RegisterInclude("TJ_Path",[[
	--Twilight Jasmine
	map Twilight Highlands
	path	71.70,48.90	68.10,41.80	61.90,36.00
	path 	53.90,32.00	47.30,40.30	45.60,45.20
	path 	45.30,36.10	41.30,52.00	48.70,54.50
	path 	51.50,45.60	58.20,48.00	59.10,40.10
	path 	70.90,64.80	73.50,64.00	73.70,72.20
	path	69.80,64.70	63.10,60.80	59.50,63.60
	path 	55.30,50.40	57.00,77.50	53.00,79.80
	path 	49.00,70.00	44.20,70.60	47.90,63.40
	path 	33.60,49.90	29.00,40.30	28.60,30.50
	path	46.30,23.20	57.50,27.20	69.10,38.20
	path 	72.90,47.20
]])

QuestCore:RegisterInclude("FL_GT_KW_BW_Path",[[
	--Fadeleaf // Goldthorn // Khadgar's Whisker // Blindweed
	map Feralas
	path follow loose;loop;ants straight;dist 60
	path 73.00,42.00		72.90,37.30		70.50,37.10
	path 69.20,42.30		67.30,45.90		63.90,48.10
	path 59.40,46.60		59.80,54.20		56.00,60.10		55.20,66.60
	path 58.60,64.70		61.30,61.90		62.80,58.00
	path 68.80,50.30		69.00,60.10		71.40,60.00
	path 72.10,55.50		75.90,56.60
	path 73.30,50.20
]])

QuestCore:RegisterInclude("GB_Path",[[
	--Gromsblood
	map Felwood
	path follow loose;loop;ants straight;dist 60
	path 50.50,80.90		47.60,75.80		45.40,71.40
	path 44.90,66.40		42.90,58.30		43.60,52.10
	path 45.20,42.10		49.60,33.60		55.30,24.80
	path 57.50,15.50		54.30,14.10		42.70,21.70
	path 40.00,37.50		40.00,46.50		39.60,56.90
	path 39.10,66.20		38.90,71.30		42.70,84.70
]])

QuestCore:RegisterInclude("GT_WS_Path",[[
	--Goldthorn // Wild Steelbloom
	map Arathi Highlands
	path follow loose;loop;ants straight;dist 60
	path	43.30,39.00	57.60,29.00	70.60,28.60
	path	73.60,31.70	75.60,39.60
	path	50.70,74.50	41.00,80.20
	path	28.70,67.90	9.00,70.20	19.90,34.90
	path	29.10,48.40
]])

QuestCore:RegisterInclude("GS_SM_Path",[[
	--Golden Sansam // Sorrow Moss
	map Swamp of Sorrows
	path follow loose;loop;ants straight;dist 60
	path 18.80,60.40		23.90,55.30		27.30,62.00
	path 37.50,53.60		57.50,59.10		77.40,79.50
	path 80.90,60.10		88.60,63.40		79.90,42.40
	path 75.10,23.50		50.70,31.30		24.60,45.30
	path 14.10,33.20		21.50,45.00
]])

QuestCore:RegisterInclude("Kingsblood_Path",[[
	--Kingsblood
	map Western Plaguelands
	path follow loose;loop;ants straight;dist 70
	path	31.80,59.30	43.50,53.20	45.90,44.70
	path	45.20,35.20	49.50,35.10	51.00,47.40
	path	61.80,52.00	67.20,44.50	63.60,56.00
	path	56.60,60.10	52.60,67.50	46.40,59.20
	path	33.70,62.70
]])

QuestCore:RegisterInclude("LR_SK_Path",[[
	--Liferoot
	map Western Plaguelands/0
	path follow loose;loop;ants straight;dist 45
	path	51.00,72.60	55.10,75.80	59.00,81.80
	path	63.10,82.70	66.60,84.20	70.30,83.80
	path	73.60,82.60	78.30,80.70	79.70,75.40
	path	80.00,70.50	78.60,66.60	75.90,65.40
	path	76.60,61.80	73.10,59.70	68.70,61.70
	path	64.30,64.10	60.10,65.30	56.60,69.50
	path	53.80,72.20
]])

QuestCore:RegisterInclude("MR_BW_BT_SK_Path",[[
	--Mageroyal // Bruiseweed // Briarthorn // Stranglekelp
	map Hillsbrad Foothills
	path follow loose;loop;ants straight;dist 70
	path 31.80,62.60		33.90,54.00		29.70,44.10
	path 35.50,37.80		34.50,28.20		39.50,21.00
	path 44.20,8.30		51.30,14.00		57.50,20.90
	path 56.10,34.30		49.90,46.20		41.20,46.60
	path 40.10,55.00		41.30,67.40		31.80,71.90
]])

QuestCore:RegisterInclude("Sungrass_Path",[[
	--Sungrass
	map Searing Gorge
	path follow loose;loop;ants straight;dist 60
	path	66.90,43.20	58.90,53.00	55.60,68.10
	path	49.80,70.10	45.90,61.50	38.10,74.90
	path	31.00,67.80	32.10,56.90	29.40,44.80
	path	37.50,47.80	40.50,39.10	47.20,42.10
	path	53.50,35.40	77.00,19.00
]])

-------------------------
------ Inscription ------
-------------------------



---------------------------
------ Jewelcrafting ------
---------------------------



----------------------------
------ Leatherworking ------
----------------------------



--------------------
------ Mining ------
--------------------

QuestCore:RegisterInclude("follow_path_mine",[[
		Zoom your minimap all the way out, track ore, and follow the path while mining yellow spots on your minimap.
]])

QuestCore:RegisterInclude("Obsidium_Path",[[
	--Obsidium
	map Mount Hyjal
	path follow loose;dist 60
	path	67.20,29.10	61.10,36.70	54.50,17.10
	path	41.20,20.50	42.90,27.50	49.60,25.50
	path	46.60,35.60	40.50,33.60	39.90,29.40
	path	34.90,27.50	35.00,21.70	32.30,28.80
	path	35.00,35.60	31.10,40.40	25.70,40.60
	path	28.70,35.70	24.30,35.80	25.70,29.80
	path	14.70,38.80	13.60,31.60	9.40,36.40
	path	17.60,46.50	12.90,46.50	15.50,52.20
	path	20.70,60.20	21.50,56.80	23.30,61.50
	path	30.30,55.20	27.60,55.00	27.70,51.20
	path	34.10,46.80	34.10,55.20	37.50,54.90
	path	36.00,51.00	40.30,51.60	41.50,63.30
	path	38.90,65.50	36.40,58.60	32.80,61.80
	path	35.20,63.50	32.80,66.60	31.30,90.40
	path	36.60,95.50	50.80,82.10	51.80,75.10
	path	60.60,82.50	59.80,73.00	56.50,69.80
	path	58.90,66.40	53.60,66.80	49.60,51.10
	path	59.70,56.30	55.50,56.80	62.80,60.00
	path	64.50,50.90	67.50,50.60	69.80,56.00
	path	75.90,69.60	75.70,63.60	80.20,67.20
	path	84.30,64.90	88.10,48.50	84.20,47.50
	path	78.50,53.30	84.20,54.50	82.10,60.90
	path	72.90,57.90
]])

QuestCore:RegisterInclude("Iron_Ore_Path",[[
	map Feralas
	path	74.90,48.60	84.00,45.60	84.90,39.90
	path	71.50,34.70	54.30,50.10	48.60,44.00
	path	49.70,34.90	51.60,33.80	50.90,26.20
	path	51.30,19.00	54.90,8.10	49.40,4.00
	path	40.00,7.70	37.10,12.10	38.10,17.60
	path	37.00,25.60	45.10,26.20	46.30,38.60
	path	50.30,52.70	47.90,55.40	46.90,64.10
	path	54.80,53.90	55.20,62.60	52.90,66.20
	path	53.60,73.70	60.80,75.80	62.00,55.00
	path	63.70,61.00	66.40,51.30	68.20,51.30
	path	68.10,61.50	71.60,65.10	77.20,62.10
]])

QuestCore:RegisterInclude("Mithril_Ore_Path",[[
	--Mithril Ore Path
	map Felwood
	path	63.50,24.50	62.60,6.90	55.70,18.60
	path	42.50,17.10	42.00,24.10	39.90,22.10
	path	41.00,27.50	38.60,37.40	38.30,55.60
	path	40.70,59.80	35.00,59.10	41.80,62.60
	path	36.30,66.80	40.70,72.90	37.80,73.50
	path	40.30,77.40	39.10,79.30	43.80,81.50
	path	39.00,81.60	42.30,87.10	45.10,84.60
	path	45.10,89.70	48.10,92.80	51.20,86.10
	path	52.50,88.80	57.70,86.50	58.60,84.80
	path	55.90,81.10	49.60,76.60	43.50,60.90
	path	42.90,50.80	52.90,31.60	59.60,27.20
]])

QuestCore:RegisterInclude("Thorium_Ore_Path",[[
	--Thorium Ore Path
	map Winterspring
	path	52.80,46.20	58.30,41.20	59.70,45.00
	path 	59.90,21.40	58.30,18.40	54.50,21.20
	path 	45.90,13.10	44.80,15.30	44.80,29.00
	path 	47.80,33.20	49.80,42.80	39.50,51.00
	path 	33.50,47.20	30.20,48.60	31.50,53.50
	path 	28.40,51.60	27.30,48.00	23.00,45.70
	path 	22.30,62.40	25.30,61.30	25.90,58.10
	path 	41.20,57.70	42.10,53.20	46.10,60.80
	path 	51.00,61.40	53.70,63.60	51.20,69.90
	path 	55.20,68.90	56.80,81.10	59.00,80.30
	path 	59.00,85.30	62.00,87.60	64.10,81.80
	path 	62.20,77.70	62.30,73.30	67.00,68.50
	path 	67.10,60.10
]])

QuestCore:RegisterInclude("Fel_Iron_Path",[[
	--Fel Iron Ore Path
	map Hellfire Peninsula
	path	69.30,47.50	74.50,38.70	68.20,37.70
	path	62.00,31.00	58.00,32.80	54.00,26.70
	path	46.00,29.30	34.10,29.10	32.00,34.50
	path	38.50,38.20	35.70,40.70	33.40,49.80
	path	30.30,48.60	32.50,43.30	28.50,39.30
	path	26.50,45.50	22.60,45.10	18.00,38.30
	path	12.50,36.10	17.90,46.30	11.80,41.90
	path	12.00,47.00	06.20,49.50	15.40,62.40
	path	20.30,52.90	24.00,61.10	21.20,62.70
	path	28.10,80.80	27.70,69.50	30.50,72.80
	path	30.30,59.90	34.80,66.60	37.70,53.30
	path	46.90,46.30	49.30,49.50	60.30,48.60
	path	60.80,52.80	52.10,52.70	47.20,57.70
	path	45.90,75.50	33.50,89.60	33.10,92.60
	path	49.10,77.50	44.60,86.20	55.50,82.80
	path	58.70,78.80	56.50,72.30	65.80,63.60
	path	67.10,71.70	63.00,73.30	65.80,77.90
	path	68.70,77.60	71.00,71.70	70.10,68.60
	path	65.00,59.80	65.60,56.00	75.00,63.90
	path	78.40,80.20	80.70,77.50	77.30,63.70
	path	72.70,60.20	71.50,53.10	68.30,52.00
]])

QuestCore:RegisterInclude("Adamantite_Path",[[
	--Adamantite Ore Path
	map Nagrand
	path follow loose;dist 30
	path	72.70,64.70	74.30,60.50	69.10,48.60
	path	72.30,43.10	66.10,32.30	59.50,27.30
	path	55.70,23.00	54.80,20.60	50.70,20.00
	path	49.30,24.10	47.10,20.20	39.60,20.40
	path	28.20,12.10	25.70,16.50	26.80,23.60
	path	27.90,25.30	27.50,32.10	23.20,27.80
	path	7.10,39.90	25.20,61.10	31.90,81.90
	path	41.80,81.80	43.50,73.70	48.40,71.40
	path	43.00,62.20	32.20,60.30	29.20,54.10
	path	33.40,49.40	40.80,32.10	45.50,43.90
	path	42.40,50.90	48.00,57.50	51.50,55.60
	path	60.50,56.90	56.70,64.00	70.10,83.30
	path	69.80,72.50
]])

QuestCore:RegisterInclude("Cobalt_Path",[[
	--Cobalt Ore Path
	map Howling Fjord
	path follow loose; dist 40
	path	83.00,44.80	78.10,39.40	72.70,38.30
	path	71.00,31.80	75.30,22.90	70.20,8.30
	path	63.20,13.70	64.40,16.40
	path	61.40,23.60	57.70,18.30
	path	51.40,14.20	45.50,13.30	38.10,18.90
	path	31.10,10.90	28.90,10.30	21.70,12.80
	path	19.40,23.50	24.20,27.40	23.90,33.60
	path	27.30,30.80	38.10,29.00	47.60,32.70
	path	53.00,31.90	63.50,37.10	65.50,48.70
	path	66.90,62.70	64.40,67.80	64.40,72.40
	path	67.90,76.50	69.80,74.70	72.50,67.90
	path	77.30,67.20	77.20,60.80	74.90,55.30
	path	79.10,50.40
]])

QuestCore:RegisterInclude("Saronite_Path",[[
	--Saronite Ore Path
	map Sholazar Basin
	path follow loose;dist 50
	path	77.90,63.80	78.70,52.40	74.30,48.60
	path	58.90,53.90	63.50,44.40	66.70,40.30
	path	65.10,30.50	58.90,27.80	58.90,21.10
	path	40.80,20.80	48.00,33.20	53.80,37.00
	path	47.80,43.10	46.80,39.70	39.60,32.80
	path	32.90,32.80	23.30,48.40	33.50,46.60
	path	35.80,49.90	40.00,50.90	38.00,54.90
	path	30.50,55.30	20.80,56.10	20.40,76.60
	path	22.60,78.50	22.50,84.00	34.20,78.40
	path	33.80,73.40	33.00,67.90	40.90,70.10
	path	34.50,88.90	50.90,88.80	51.50,82.10
	path	46.00,60.90	52.50,68.90	58.70,88.20
	path	62.30,74.50	63.60,84.40
]])

----------------------
------ Skinning ------
----------------------



-----------------------
------ Tailoring ------
-----------------------



-----------------------------------------------
------ Miscellaneous Profession Includes ------
-----------------------------------------------

QuestCore:RegisterInclude("end_of_prof_trial_125",[[
	step
	label "end_of_prof_trial"
		This Trial guides only goes up to 125.
		To continue further, please purchase the full QuestCore Profession Guides!
]])

QuestCore:RegisterInclude("end_of_prof_trial_150",[[
	step
	label "end_of_prof_trial"
		This Trial guides only goes up to 150.
		To continue further, please purchase the full QuestCore Profession Guides!
]])

------------
-- Anvils --
------------

QuestCore:RegisterInclude("shatt_anvil",[[
		Stand next to this anvil |goto Shattrath City 69.70,42.70
]])
