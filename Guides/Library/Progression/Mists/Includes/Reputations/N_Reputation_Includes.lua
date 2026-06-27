
if not QuestCore then return end
---------------------------
----- Tabard Includes -----
---------------------------

QuestCore:RegisterInclude("WATabard",[[
		talk Cielstrasza##32533 |only if rep("The Wyrmrest Accord")<Exalted
		buy 1 Tabard of the Wyrmrest Accord##43156 |goto Dragonblight 59.80,53.00 |only if rep("The Wyrmrest Accord")<Exalted
]])

QuestCore:RegisterInclude("RamkahenTabard",[[
		talk Blacksmith Abasi##48617 |only if rep("Ramkahen")<Exalted
		buy 1 Tabard of Ramkahen##65904 |goto Uldum 54.10,33.30 |only if rep("Ramkahen")<Exalted
]])
