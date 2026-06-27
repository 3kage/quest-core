-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Alliance" then return end
---------------------
------ Alchemy ------
---------------------

QuestCore:RegisterInclude("trainer_Alchemy",[[
		talk Lilyssia Nightbreeze##5499 |goto Stormwind City,55.70,86.10
]])

QuestCore:RegisterInclude("vendor_Alchemy",[[
		talk Maria Lumere##1313 |goto Stormwind City 55.90,85.60
]])

-------------------------
------ Archaeology ------
-------------------------

QuestCore:RegisterInclude("trainer_Archaeology",[[
		talk Harrison Jones##44238 |goto Stormwind City,85.80,25.90
]])

---------------------------
------ Blacksmithing ------
---------------------------

QuestCore:RegisterInclude("trainer_Blacksmithing",[[
		talk Therum Deepforge##5511 |goto Stormwind City 63.70,37.00
]])

QuestCore:RegisterInclude("vendor_Blacksmithing",[[
		talk Kaita Deepforge##5512 |goto Stormwind City 63.30,37.80
]])

---------------------
------ Cooking ------
---------------------

QuestCore:RegisterInclude("Stormwind_Cooking_Trainer",[[
		talk Stephen Ryback##5482 |goto Stormwind City/0 77.29,53.22
		|tip Inside the building.
]])

QuestCore:RegisterInclude("Old_Dalaran_Cooking_Trainer",[[
		talk Katherine Lee##28705 |goto Dalaran/1 40.53,65.62
		|tip She walks around the table.
		|tip Inside the building.
]])

QuestCore:RegisterInclude("vendor_Cooking",[[
		talk Erika Tate##5483 |goto Stormwind City 77.60,53.10
]])

QuestCore:RegisterInclude("vendor_Cooking_Dalaran",[[
		talk Katherine Lee##28705 |goto Dalaran 41.60,64.60
]])

------------------------
------ Enchanting ------
------------------------

QuestCore:RegisterInclude("trainer_Enchanting",[[
		talk Lucan Cordell##1317 |goto Stormwind City,52.90,74.50
]])

-------------------------
------ Engineering ------
-------------------------

QuestCore:RegisterInclude("trainer_Engineering",[[
		talk Lilliam Sparkspindle##5518 |goto Stormwind City,62.80,32.00
]])

-----------------------
------ First Aid ------
-----------------------

QuestCore:RegisterInclude("trainer_FirstAid",[[
		talk Angela Leifeld##56796 |goto Stormwind City 52.20,45.40
]])

---------------------
------ Fishing ------
---------------------

QuestCore:RegisterInclude("trainer_Fishing",[[
		talk Arnold Leland##5493 |goto Stormwind City 54.80,69.60
]])

QuestCore:RegisterInclude("vendor_Fishing",[[
		talk Catherine Leland##5494 |goto Stormwind City 55.00,69.70
]])

-----------------------
------ Herbalism ------
-----------------------

QuestCore:RegisterInclude("trainer_Herbalism",[[
		talk Tannysa##5566 |goto Stormwind City 54.30,84.10
]])

-------------------------
------ Inscription ------
-------------------------

QuestCore:RegisterInclude("trainer_Inscription",[[
		talk Catarina Stanford##30713 |goto Stormwind City,49.80,74.80
]])

QuestCore:RegisterInclude("vendor_Inscription",[[
		talk Stanly McCormick##30730 |goto Stormwind City 49.60,74.90
]])

---------------------------
------ Jewelcrafting ------
---------------------------

QuestCore:RegisterInclude("trainer_Jewelcrafting",[[
		talk Theresa Denman##44582 |goto Stormwind City 63.50,61.80
]])

QuestCore:RegisterInclude("vendor_Jewelcrafting",[[
		talk Terrance Denman##44583 |goto Stormwind City 63.20,61.70
]])

----------------------------
------ Leatherworking ------
----------------------------

QuestCore:RegisterInclude("trainer_Leatherworking",[[
		talk Simon Tanner##5564 |goto Stormwind City,71.70,63.00
]])

QuestCore:RegisterInclude("vendor_Leatherworking",[[
		talk Jillian Tanner##5565 |goto Stormwind City,71.60,62.80
]])

--------------------
------ Mining ------
--------------------

QuestCore:RegisterInclude("trainer_Mining",[[
		talk Gelman Stonehand##5513 |goto Stormwind City,59.60,37.60
]])

QuestCore:RegisterInclude("vendor_Mining",[[
		talk Brooke Stonebraid##5514 |goto Stormwind City 59.20,37.50
]])

QuestCore:RegisterInclude("Copper_Path",[[
	--Copper Ore Path
	map Elwynn Forest
	path follow loose;loop;ants straight;dist 30
	path	32.80,50.50	30.20,58.20	28.30,64.80
	path	25.60,70.30	21.40,74.50	23.10,82.50
	path	31.50,78.10	37.50,71.40	38.20,82.50
	path	49.70,84.80	57.30,80.80	61.70,75.20
	path	67.30,72.20	70.20,66.10	73.70,56.00
	path	73.80,48.20	80.50,54.80	80.00,46.10
	path	77.50,38.10	71.40,38.50	64.70,37.90
	path	63.30,46.20	62.00,53.00	55.10,56.00
	path	49.90,60.40	46.20,53.90	43.20,48.70
	path	37.20,51.90
]])

QuestCore:RegisterInclude("Tin_Path",[[
	--Tin Ore Path	// Silver
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
		talk Maris Granger##1292 |goto Stormwind City,72.20,62.20
]])

-----------------------
------ Tailoring ------
-----------------------

QuestCore:RegisterInclude("trainer_Tailoring",[[
		talk Georgio Bolero##1346 |goto Stormwind City,53.10,81.30
]])

QuestCore:RegisterInclude("vendor_Tailoring",[[
		talk Alexandra Bolero##1347 |goto Stormwind City 53.10,81.80
]])

------------
-- Anvils --
------------

QuestCore:RegisterInclude("maincity_anvil",[[
		Stand next to this anvil |goto Stormwind City 63.60,37.00
]])