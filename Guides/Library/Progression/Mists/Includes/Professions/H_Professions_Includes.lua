-- QuestCore bundled guide (mists)
if not QuestCore then return end
if UnitFactionGroup("player")~="Horde" then return end

---------------------
------ Alchemy ------
---------------------

QuestCore:RegisterInclude("trainer_Alchemy",[[
		talk Yelmak##3347 |goto Orgrimmar 55.70,45.70
]])

QuestCore:RegisterInclude("vendor_Alchemy",[[
		talk Kor'geld##3348 |goto Orgrimmar 55.40,46.10
]])

-------------------------
------ Archaeology ------
-------------------------

QuestCore:RegisterInclude("trainer_Archaeology",[[
		talk Belloc Brightblade##47571 |goto Orgrimmar 49.00,70.70
]])

---------------------------
------ Blacksmithing ------
---------------------------

QuestCore:RegisterInclude("trainer_Blacksmithing",[[
		talk Rogg##37072 |goto Orgrimmar 44.40,77.30
]])

QuestCore:RegisterInclude("vendor_Blacksmithing",[[
		talk Punra##46359 |goto Orgrimmar 45.00,77.10
]])

---------------------
------ Cooking ------
---------------------

QuestCore:RegisterInclude("Orgrimmar_Cooking_Trainer",[[
		talk Marogg##42506 |goto Orgrimmar/1 56.53,62.49
]])

QuestCore:RegisterInclude("Old_Dalaran_Cooking_Trainer",[[
		talk Awilo Lon'gomba##29631 |goto Dalaran/1 70.06,38.80
		|tip He walks around inside the building.
]])

QuestCore:RegisterInclude("vendor_Cooking",[[
		talk Suja##46708 |goto Orgrimmar 56.40,61.30
]])

QuestCore:RegisterInclude("trainer_Cooking_MoP",[[
		talk Sungshin Ironpaw##64231 |goto Valley of the Four Winds 53.60,51.20
]])

------------------------
------ Enchanting ------
------------------------

QuestCore:RegisterInclude("trainer_Enchanting",[[
		talk Godan##3345 |goto Orgrimmar 53.40,49.30
]])

-------------------------
------ Engineering ------
-------------------------

QuestCore:RegisterInclude("trainer_Engineering",[[
		talk Roxxik##11017 |goto Orgrimmar 56.90,56.40
]])

-----------------------
------ First Aid ------
-----------------------

QuestCore:RegisterInclude("trainer_FirstAid",[[
		talk Krenk Choplimb##45540 |goto Orgrimmar 37.10,87.20
]])

---------------------
------ Fishing ------
---------------------

QuestCore:RegisterInclude("trainer_Fishing",[[
		talk Lumak##3332 |goto Orgrimmar 66.50,41.50
]])

-----------------------
------ Herbalism ------
-----------------------

QuestCore:RegisterInclude("trainer_Herbalism",[[
		talk Muraga##46741 |goto Orgrimmar 54.70,50.50
]])

QuestCore:RegisterInclude("trainer_HerbalismUC",[[
		talk Martha Alliestar##4614 |goto Undercity 54.00,49.60
]])

QuestCore:RegisterInclude("PB_SL_ER_Path",[[
	--Preacebloom // Silverleaf // Earthroot
	map Durotar
	path follow loose;loop;ants straight;dist 60
	path 46.20,17.10		38.80,16.20		38.70,22.10
	path 37.90,30.40		48.50,32.80		51.40,36.50
	path 51.70,52.00		53.60,62.40		55.60,69.70
	path 60.90,69.10		60.70,58.00		57.60,46.90
	path 55.00,32.40		57.80,26.10		53.40,12.50
]])

QuestCore:RegisterInclude("GM_KB_LR_WS_Path",[[
	--Gravemoss // Kingsblood // Liferoot // Wild Steelbloom
	map Northern Stranglethorn
	path follow loose;loop;ants straight;dist 70
	path 64.20,25.40		63.90,39.40		56.20,43.20
	path 42.50,43.90		35.90,32.90		31.50,37.20
	path 23.10,32.30		17.40,24.10
]])

-------------------------
------ Inscription ------
-------------------------

QuestCore:RegisterInclude("trainer_Inscription",[[
		talk Nerog##46716 |goto Orgrimmar 55.20,55.70
]])

QuestCore:RegisterInclude("vendor_Inscription",[[
		talk Moraka##46718 |goto Orgrimmar 55.40,56.00
]])

---------------------------
------ Jewelcrafting ------
---------------------------

QuestCore:RegisterInclude("trainer_Jewelcrafting",[[
		talk Lugrah##46675 |goto Orgrimmar 72.50,34.50
]])

QuestCore:RegisterInclude("vendor_Jewelcrafting",[[
		talk Marith Lazuria##50482 |goto Orgrimmar 72.40,34.60
]])

----------------------------
------ Leatherworking ------
----------------------------

QuestCore:RegisterInclude("trainer_Leatherworking",[[
		talk Karolek##3365 |goto Orgrimmar 60.90,54.90
]])

QuestCore:RegisterInclude("vendor_Leatherworking",[[
		talk Tamar##3366 |goto Orgrimmar 60.30,54.30
]])

--------------------
------ Mining ------
--------------------

QuestCore:RegisterInclude("trainer_Mining",[[
		talk Makaru##3357 |goto Orgrimmar 72.30,35.00
]])

QuestCore:RegisterInclude("vendor_Mining",[[
		talk Gorina##3358 |goto Orgrimmar 72.70,34.80
]])

QuestCore:RegisterInclude("Copper_Path",[[
	--Copper Ore Path
	map Durotar
	path	38.90,16.00	37.50,21.10	35.90,34.40
	path	36.80,52.30	44.20,49.50	50.60,46.30
	path 	50.70,63.30	54.90,67.00	56.20,49.80
	path 	55.00,36.90	53.00,29.70	57.90,30.00
	path 	54.80,19.00	50.00,17.20	44.20,23.60
]])

QuestCore:RegisterInclude("Tin_Path",[[
	--Tin Ore Path
	map Ashenvale
	path	82.00,50.20	78.80,44.90	67.10,45.80
	path 	61.90,42.60	59.50,37.50	54.50,37.10
	path 	53.50,48.20	49.50,54.70	45.50,47.50
	path 	41.80,40.30	40.10,32.40	38.20,30.30
	path 	34.60,33.30	33.60,28.50	33.00,22.50
	path 	25.40,19.30	21.00,19.10	16.60,15.70
	path 	14.10,13.10	17.00,23.70	17.30,28.20
	path 	16.50,36.60	19.50,45.70	18.80,55.40
	path 	23.40,50.20	25.40,54.20	25.70,60.40
	path 	29.90,58.10	31.80,64.70	33.10,70.30
	path 	38.80,62.70	42.00,64.20	55.60,68.40
	path 	62.70,64.60	67.00,69.10	75.60,69.20
	path 	82.40,71.80	86.50,79.10	90.10,76.60
]])

QuestCore:RegisterInclude("Silver_Tin_Path",[[
	--Silver Ore Path
	map Northern Stranglethorn
	path follow loose;loop;ants straight;dist 60
	path	44.90,19.00	37.50,14.80	34.40,17.30
	path	17.10,22.60	23.70,32.30	30.60,36.30
	path	34.70,30.00	38.70,34.40	39.60,43.20
	path	47.00,41.50	44.10,49.70	46.30,52.90
	path	54.20,55.80	60.50,51.80	67.20,49.10
	path	67.30,36.90	66.40,25.80	59.90,18.90
	path	51.00,17.40
]])

----------------------
------ Skinning ------
----------------------

QuestCore:RegisterInclude("trainer_Skinning",[[
		talk Thuwd##7088 |goto Orgrimmar 61.10,54.80
]])

QuestCore:RegisterInclude("Ruined_Light_Leather",[[
	map Durotar
	path follow loose;loop;ants straight;dist 60
	path	44.10,20.60	45.70,23.80	45.10,31.20
	path	45.50,37.60	45.00,44.40	41.10,46.60
	path	36.90,45.20	36.00,34.80	38.00,25.20
	path	41.90,19.40
]])

-----------------------
------ Tailoring ------
-----------------------

QuestCore:RegisterInclude("trainer_Tailoring",[[
		talk Magar##3363 |goto Orgrimmar 60.80,59.10
]])

QuestCore:RegisterInclude("vendor_Tailoring",[[
		talk Borya##3364 |goto Orgrimmar 60.70,58.70
]])

------------
-- Anvils --
------------

QuestCore:RegisterInclude("maincity_anvil",[[
		Stand at this Anvil |goto Orgrimmar 44.70,78.00
]])

QuestCore:RegisterInclude("maincity_forge2",[[
		Stand at this forge |goto Orgrimmar 75.70,34.60
]])
