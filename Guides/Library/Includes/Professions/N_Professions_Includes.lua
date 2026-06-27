-- Bundled QuestCore guide
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

QuestCore:RegisterInclude("Pandarian_Cooking_1-520",[[
		talk Sungshin Ironpaw##64231
		skillmax Cooking,75 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 30
	step
		talk Sungshin Ironpaw##64231
		accept So You Want to Be a Chef...##31281 |goto Valley of the Four Winds 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Sliced Peaches##125117 |goto Valley of the Four Winds 53.58,51.23 |complete _G.IsSpellKnown(125117) or skill("Cooking")>=30
	step
		talk Sungshin Ironpaw##64231
		buy 6 Pandaren Peach##74660 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=30 or itemcount(74660)>=6
	step
		#include cooking_fire
		create 6 Sliced Peaches##125117,Cooking,5 total |q 31281/1
	step
		collect 6 Sliced Peaches##86057 |q 31281/2
		skill Cooking,30
		|tip You may need to buy another peach if your cooking skill is not 30 yet.
	step
		talk Sungshin Ironpaw##64231
		turnin So You Want to Be a Chef...##31281 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 60 or itemcount() > 5
	step
		talk Sungshin Ironpaw##64231
		learn Perfectly Cooked Instant Noodles##125067 |goto Valley of the Four Winds 53.58,51.23 |complete _G.IsSpellKnown(125067) or skill("Cooking")>=60
		|only if skill('Cooking')<=59
	step
		talk Sungshin Ironpaw##64231
		buy 6 Instant Noodles##74854 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=60 or itemcount(74854)>=6
	step
		create 6 Perfectly Cooked Instant Noodles##125067,Cooking,60
	// Cooking 90
	step
		talk Sungshin Ironpaw##64231
		skillmax Cooking,150 |goto Valley of the Four Winds 53.58,51.23
		|only if skill('Cooking')<=89
	step
		talk Sungshin Ironpaw##64231
		learn Toasted Fish Jerky##124225 |goto Valley of the Four Winds 53.58,51.23
	step
		Equip your Fishing Pole |use Fishing Pole##6256
		Fish here, you can also fish along the beach |cast Fishing##131474
		collect 6 Golden Carp##74866 |goto Valley of the Four Winds 58.90,47.10 |complete skill("Cooking")>=90 or itemcount(74866)>=6
	step
		#include cooking_fire
		create Toasted Fish Jerky##124225,Cooking,90
	// Cooking 120
	step
		talk Sungshin Ironpaw##64231
		learn Dried Needle Mushrooms##124227 |goto Valley of the Four Winds 53.58,51.23
		|only if skill('Cooking')<=119
	step
		talk Sungshin Ironpaw##64231
		buy 6 Needle Mushrooms##85583 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=120 or itemcount(85583)>=6
	step
		create Dried Needle Mushrooms##124227,Cooking,120
	// Cooking 150
	step
		talk Sungshin Ironpaw##64231
		learn Pounded Rice Cake##124223 |goto Valley of the Four Winds 53.58,51.23
		|only if skill('Cooking')<=149
	step
		talk Sungshin Ironpaw##64231
		buy 6 Rice##74851 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=150 or itemcount(74851)>=6
	step
		talk Sungshin Ironpaw##64231
		create Pounded Rice Cake##124223,Cooking,150 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 180
	step
		talk Sungshin Ironpaw##64231
		skillmax Cooking,225 |goto Valley of the Four Winds 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Yak Cheese Curds##124224 |goto Valley of the Four Winds 53.58,51.23
		|only if skill('Cooking')<=179
	step
		talk Sungshin Ironpaw##64231
		buy 6 Yak Milk##74852 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=180 or itemcount(74852)>=6
	step
		talk Sungshin Ironpaw##64231
		create Yak Cheese Curds##124224,Cooking,180 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 210
	step
		talk Sungshin Ironpaw##64231
		learn Dried Peaches##124226 |goto Valley of the Four Winds 53.58,51.23
		|only if skill('Cooking')<=209
	step
		talk Sungshin Ironpaw##64231
		buy 6 Pandaren Peach##74660 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=210 or itemcount(74660)>=6
	step
		talk Sungshin Ironpaw##64231
		create Dried Peaches##124226,Cooking,210 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 240
	step
		skillmax Cooking,300
		|only if skill('Cooking')<=225
	step
		talk Sungshin Ironpaw##64231
		learn Boiled Silkworm Pupa##124228 |goto Valley of the Four Winds 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 6 Silkworm Pupa##85584 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=240 or itemcount(85584)>=6
	step
		talk Sungshin Ironpaw##64231
		create Boiled Silkworm Pupa##124228,Cooking,240 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 270
	step
		talk Sungshin Ironpaw##64231
		learn Roasted Barley Tea##125078 |goto Valley of the Four Winds 53.58,51.23
		|only if skill('Cooking')<=269
	step
		talk Sungshin Ironpaw##64231
		buy 6 Barley##74832 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=270 or itemcount(74832)>=6
	step
		talk Sungshin Ironpaw##64231
		create Roasted Barley Tea##125078,Cooking,270 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 300
	step
		talk Sungshin Ironpaw##64231
		learn Golden Carp Consomme##104237 |goto Valley of the Four Winds 53.58,51.23
		|only if skill('Cooking')<=299
	step

		Equip your Fishing Pole |use Fishing Pole##6256
		Fish here, you can also fish along the beach|cast Fishing##131474 |goto Valley of the Four Winds 58.90,47.10
		collect 24 Golden Carp##74866 |only if skill('Cooking')<=299 |complete skill("Cooking")>=300
		collect 12 Golden Carp##74866 |only if skill('Cooking')>=300 and skill('Cooking')<=329 |complete skill("Cooking")>=300
	step
		#include cooking_fire
		create Golden Carp Consomme##104237,Cooking,300
	// Cooking 330
	step
		talk Sungshin Ironpaw##64231
		skillmax Cooking,375 |goto Valley of the Four Winds 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Fish Cake##104297 |goto Valley of the Four Winds 53.58,51.23
		|only if skill('Cooking')<=329
	step
		Equip your Fishing Pole |use Fishing Pole##6256
		Fish here, you can also fish along the beach |cast Fishing##131474 |goto Valley of the Four Winds 58.90,47.10
		collect 12 Golden Carp##74866 |only if skill('Cooking')>=300 and skill('Cooking')<=329 |complete skill("Cooking")>=300
	step
		talk Sungshin Ironpaw##64231
		create Fish Cake##104297,Cooking,330 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 360
	step
		talk Sungshin Ironpaw##64231
		learn Blanched Needle Mushrooms##124233 |goto Valley of the Four Winds 53.58,51.23
		|only if skill('Cooking')<=359
	step
		talk Sungshin Ironpaw##64231
		buy 12 Needle Mushrooms##85583 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=360 or itemcount(85583)>=12
	// Cooking 390
	step
		create 6 Blanched Needle Mushrooms##124233,Cooking,360
	step
		talk Sungshin Ironpaw##64231
		skillmax Cooking,450 |goto Valley of the Four Winds 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Red Bean Bun##124229 |goto Valley of the Four Winds 53.58,51.23
		|only if skill('Cooking')<=389
	step
		talk Sungshin Ironpaw##64231
		buy 6 Red Beans##85585 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=390 or itemcount(85585)>=6
	step
		talk Sungshin Ironpaw##64231
		create Red Bean Bun##124229,Cooking,390 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 420
	step
		talk Sungshin Ironpaw##64231
		learn Skewered Peanut Chicken##124234 |goto Valley of the Four Winds 53.58,51.23
		|only if skill('Cooking')<=419
	step
		talk Sungshin Ironpaw##64231
		buy 6 Farm Chicken##74659 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=420 or itemcount(74659)>=6
	step
		#include cooking_fire
		create Skewered Peanut Chicken##124234,Cooking,420
	// Cooking 450 |complete skill("Cooking")>=270
	step
		talk Sungshin Ironpaw##64231
		learn Green Curry Fish##124231 |goto Valley of the Four Winds 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		buy 6 Rice##74851 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=450 or itemcount(74851)>=6
	step
		Equip your Fishing Pole |use Fishing Pole##6256
		Fish here, you can also fish along the beach |cast Fishing##131474 |goto Valley of the Four Winds 58.90,47.10
		collect 12 Golden Carp##74866 |only if skill('Cooking')<=449
	step
		#include cooking_fire
		create Green Curry Fish##124231,Cooking,450
	// Cooking 480
	step
		talk Sungshin Ironpaw##64231
		skillmax Cooking,525 |goto Valley of the Four Winds 53.58,51.23
	step
		talk Sungshin Ironpaw##64231
		learn Peach Pie##124232 |goto Valley of the Four Winds 53.58,51.23
		|only if skill('Cooking')<=479
	step
		talk Sungshin Ironpaw##64231
		buy 12 Pandaren Peach##74660 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=480 or itemcount(74660)>=12
	step
		talk Sungshin Ironpaw##64231
		create Peach Pie##124232,Cooking,480 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 495
	step
		talk Sungshin Ironpaw##64231
		learn Tangy Yogurt##124230 |goto Valley of the Four Winds 53.58,51.23
		|only if skill('Cooking')<=494
	step
		talk Sungshin Ironpaw##64231
		buy 3 Pandaren Peach##74660 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=495 or itemcount(74660)>=3
		buy 3 Yak Milk##74852 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=495 or itemcount(74852)>=3
	step
		talk Sungshin Ironpaw##64231
		create 6 Tangy Yogurt##124230,Cooking,495 |goto Valley of the Four Winds 53.58,51.23
	// Cooking 510
	step
		talk Sungshin Ironpaw##64231
		learn Pearl Milk Tea##125080 |goto Valley of the Four Winds 53.58,51.23
		|only if skill('Cooking')<=509
	step
		talk Sungshin Ironpaw##64231
		buy 6 Yak Milk##74852 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=510 or itemcount(74852)>=6
	step
		talk Sungshin Ironpaw##64231
		create Pearl Milk Tea##125080,Cooking,510 |goto Valley of the Four Winds 53.58,51.23
	// Cooking
	step
		talk Sungshin Ironpaw##64231
		learn Wildfowl Ginseng Soup##125121 |goto Valley of the Four Winds 53.58,51.23
		|only if skill('Cooking')<=519
	step
		talk Sungshin Ironpaw##64231
		buy 2 Ginseng##74845 |goto Valley of the Four Winds 53.58,51.23 |complete skill("Cooking")>=520 or itemcount(74845)>=2
		|only if skill('Cooking')<=519
	step
		Kill Glade mobs and Carp Hunters
		You canfind Carp Hunters at this location |goto Valley of the Four Winds 54.81,36.81
		collect 15 Wildfowl Breast##74839 |goto Krasarang Wilds 64.60,29.30 |complete skill("Cooking")>=520 or itemcount(74839)>=15
		|only if skill('Cooking')<=519
	step
		talk Sungshin Ironpaw##64231
		create Wildfowl Ginseng Soup##125121,Cooking,520 |goto Valley of the Four Winds 53.58,51.23
]])

QuestCore:RegisterInclude("Cooking_PreMasteries",[[
		talk Sungshin Ironpaw##64231
		accept Ready for Greatness##31302 |goto Valley of the Four Winds 53.70,51.00
	step
		talk Sungshin Ironpaw##64231
		learn Rice Pudding##125122
	step
		talk Sungshin Ironpaw##64231
		buy 5 Rice##74851 |q 31302 |goto 53.60,51.20 |complete itemcount(74851)>=5 or completedq(31302)
		buy 5 Yak Milk##74852 |q 31302 |goto 53.60,51.20 |complete itemcount(74852)>=5 or completedq(31302)
	step
		#include cooking_fire
		create 5 Rice Pudding##125122,Cooking,5 total |q 31302/1
		collect 5 Rice Pudding##86069 |q 31302/2
	step
		talk Sungshin Ironpaw##64231
		turnin Ready for Greatness##31302 |goto 53.70,51.00
		accept Way of the Grill##31311 |goto 53.70,51.00
		accept Way of the Wok##31470 |goto 53.70,51.00
		accept Way of the Pot##31472 |goto 53.70,51.00
		accept Way of the Steamer##31475 |goto 53.70,51.00
		accept Way of the Oven##31478 |goto 53.70,51.00
		accept Way of the Brew##31479 |goto 53.70,51.00
	step
		talk Sungshin Ironpaw##64231
		buy 1 Ginseng##74845 |q 31480 |goto 53.70,51.00 |complete itemcount(74845)>=1 or completedq(31480)
	step
		talk Nam Ironpaw##64395
		buy 1 Sack of Raw Tiger Steaks##87701 |n
		use Sack of Raw Tiger Steaks##87701
		collect 5 Raw Tiger Steak##74833 |q 31311/1 |goto 53.50,51.20 |complete itemcount(74833)>=5 or completedq(31311)
	step
		talk Kol Ironpaw##58712
		turnin Way of the Grill##31311 |goto 53.00,51.30
		accept Strong as a Tiger##31467 |goto 53.00,51.30
	step
		talk Kol Ironpaw##58712
		learn Charbroiled Tiger Steak##104298 |q 31467/1 |goto 53.00,51.30 |complete _G.IsSpellKnown(104298) or completedq(31467)
	step
		#include cooking_fire
		create Charbroiled Tiger Steak##104298,Cooking,535
		Create #5# Charboiled Tiger Steaks |q 31467/2
	step
		talk Kol Ironpaw##58712
		turnin Strong as a Tiger##31467 |goto 53.00,51.30
	step
		talk Bobo Ironpaw##58717
		turnin Way of the Brew##31479 |goto 53.20,52.20
		accept Have a Drink##31480 |goto 53.20,52.20
	step
		talk Bobo Ironpaw##58717
		learn Ginseng Tea##124052 |q 31480/1 |goto 53.00,51.30 |complete _G.IsSpellKnown(124052) or completedq(31480)
	step
		#include cooking_fire
		create 1 Ginseng Tea##124052,Way of the Brew,531
		collect 1 Ginseng Tea##75026 |q 31480/2
	step
		talk Bobo Ironpaw##58717
		turnin Have a Drink##31480 |goto 53.20,52.20
	step
		talk Nam Ironpaw##64395
		buy 1 Sack of Juicycrunch Carrots##87707 |n
		Use the Sack of Juicycrunch Carrots |use Sack of Juicycrunch Carrots##87707
		collect 5 Juicycrunch Carrot##74841 |q 31470/1 |goto 53.50,51.20
	step
		talk Anthea Ironpaw##58713
		turnin Way of the Wok##31470 |goto 52.70,52.00
		accept Agile as a Tiger##31471 |goto 52.70,52.00
	step
		talk Anthea Ironpaw##58713
		learn Sauteed Carrots##104301 |q 31471/1 |goto 52.70,52.00 |complete _G.IsSpellKnown(104301) or completedq(31471)
	step
		#include cooking_fire
		create 5 Sauteed Carrots##104301,Way of the Wok,535
		Cook #5# Sauteed Carrots |q 31471/2
	step
		talk Anthea Ironpaw##58713
		turnin Agile as a Tiger##31471 |goto 52.70,52.00
	step
		talk Nam Ironpaw##64395
		buy 1 Sack of Jade Lungfish##87721 |n
		Use the Sack of Jade Lungfish |use Sack of Jade Lungfish##87721
		collect 5 Jade Lungfish##74856 |q 31472/1 |goto 53.50,51.20

		buy 1 Sack of Mantis Shrimp##87722 |n
		Use the Sack of Mantis Shrimp |use Sack of Mantis Shrimp##87722
		collect 5 Giant Mantis Shrimp##74857 |q 31475/1 |goto 53.50,51.20

		buy 1 Sack of Wildfowl Breasts##87705 |n
		Use the Sack of Wildfowl Breasts |use Sack of Wildfowl Breasts##87705
		collect 5 Wildfowl Breast##74839 |q 31478/1 |goto 53.50,51.20
	step
		talk Jian Ironpaw##58716
		turnin Way of the Oven##31478 |goto 53.40,51.60
		accept Endurance##31477 |goto 53.40,51.60
	step
		talk Jian Ironpaw##58716
		learn Wildfowl Roast##104310 |q 31477/1 |goto 53.40,51.60
	step
		#include cooking_fire
		create 5 Wildfowl Roast##104310,Way of the Oven,535
		Cook #5# Wildfowl Roasts |q 31477/2
	step
		talk Jian Ironpaw##58716
		turnin Endurance##31477 |goto 53.40,51.60
	step
		talk Yan Ironpaw##58715
		turnin Way of the Steamer##31475 |goto 52.50,51.80
		accept The Spirit of Cooking##31476 |goto 52.50,51.80
	step
		talk Yan Ironpaw##58715
		learn Shrimp Dumplings##104307 |q 31476/1 |goto 52.50,51.80
	step
		#include cooking_fire
		create 5 Shrimp Dumplings##104307,Way of the Steamer,535
		Cook #5# Shrimp Dumplings |q 31476/2
	step
		talk Yan Ironpaw##58715
		turnin The Spirit of Cooking##31476 |goto 52.50,51.80
	step
		talk Mei Mei Ironpaw##58714
		turnin Way of the Pot##31472 |goto 52.60,51.50
		accept The Soup of Contemplation##31474 |goto 52.60,51.50
	step
		talk Mei Mei Ironpaw##58714
		learn Swirling Mist Soup##104304 |q 31474/1 |goto 52.60,51.50
	step
		#include cooking_fire
		create 5 Swirling Mist Soup##104304,Way of the Pot,535
		Cook #5# Swirling Mist Soup |q 31474/2
	step
		talk Mei Mei Ironpaw##58714
		turnin The Soup of Contemplation##31474 |goto 52.60,51.50
	step
		talk Nam Ironpaw##64395
		accept Preserving Freshness##31536 |goto 53.50,51.20
	step
		talk Merchant Cheng##64940
		buy 1 Empty Raw Tiger Steak Container##87658 |q 31536/1 |goto 53.00,52.40
	step
	label "final_quest"
		talk Nam Ironpaw##64395
		turnin Preserving Freshness##31536 |goto 53.50,51.20
]])

QuestCore:RegisterInclude("Cooking_520-600",[[
		talk Sungshin Ironpaw##64231
		skillmax Cooking,525 |goto Valley of the Four Winds/0 53.60,51.20
	step
		talk Sungshin Ironpaw##64231
		learn Rice Pudding##125122 |goto Valley of the Four Winds/0 53.60,51.20 |complete _G.IsSpellKnown(125122) or skill("Cooking")>=530
	step
		talk Sungshin Ironpaw##64231
		collect 2 Rice##74851 |goto Valley of the Four Winds/0 53.60,51.20 |complete skill("Cooking")>=530
		collect 2 Yak Milk##74852 |goto Valley of the Four Winds/0 53.60,51.20 |complete skill("Cooking")>=530
	step
		create Rice Pudding##125122,Cooking,530
		#include "Cooking_PreMasteries"
	step
		Before you continue, _open your cooking window_ so the guide can determine what level your cooking mastery is. |cast Cooking##2550
		confirm always
	step
		talk Bobo Ironpaw##58717
		learn Ginseng Tea##124052 |goto Valley of the Four Winds 53.00,52.00
	step
		talk Sungshin Ironpaw##64231
		buy 19 Ginseng##74845 |goto Valley of the Four Winds 53.60,51.20 |complete itemcount(74845)>=19 or skill("Way of the Brew")>=550
	step
		#include cooking_fire
		create Ginseng Tea##124052,Cooking,19 total |n
		skill Way of the Brew,550
	step
		talk Bobo Ironpaw##58717
		learn Jade Witch Brew##124053 |goto Valley of the Four Winds 53.20,52.20
	step
		You will need _11 Ironpaw Tokens_ in order to reach 600 Cooking
		talk Merchant Cheng##64940
		buy 9 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.00,52.40 |complete itemcount(87658)>=6 or skill("Way of the Brew")>=600
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path follow loose; ants curved; loop; dist 50
		path	49.70,48.30	50.00,53.70	50.00,59.40
		path	50.60,64.60	53.50,68.60	58.10,67.20
		path	62.80,59.30	61.50,54.20	57.40,51.90
		path	56.30,45.50
		collect 120 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 9 Bundle of Groceries##87557 |complete itemcount(87557)>=9 or skill("Way of the Brew")>=576
	step
		talk Nam Ironpaw##64395
		accept Replenishing the Pantry##31535 |complete "incomplete" |or
		earn 9 Ironpaw Tokens##402 |goto Valley of the Four Winds/0 53.50,51.20 |or
	step
	label "brew1"
		talk Nam Ironpaw##64395
		buy Sack of Witchberries##87712 |n
		use Sack of Witchberries##87712
		collect 75 Witchberries##74846 |goto Valley of the Four Winds/0 53.50,51.20 |complete itemcount(74846)>=75 or skill("Way of the Brew")>=576
		|tip You can also buy these from the Auction House.
	step
		talk Nam Ironpaw##64395
		buy Sack of Jade Squash##87713 |n
		use Sack of Jade Squash##87713
		collect 75 Jade Squash##74847 |goto Valley of the Four Winds/0 53.50,51.20 |complete itemcount(74847)>=75 or skill("Way of the Brew")>=576
		|tip You can also buy these from the Auction House.
	step
		#include cooking_fire
		create Jade Witch Brew##124053,Way of the Brew,576
	step
		You will need _65 Striped Melon_ as well as _13 Jade Lungfish_
		Click here to start farming for the _Iron Paw Tokens_ |confirm |complete skill("Way of the Brew")>=600
	step
		You will need _11 Ironpaw Tokens_ in order to reach 600 Cooking
		talk Merchant Cheng##64940
		buy 11 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.00,52.40 |complete itemcount(87658)>=11 or skill("Way of the Brew")>=600
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path follow loose; ants curved; loop; dist 50
		path	49.70,48.30	50.00,53.70	50.00,59.40
		path	50.60,64.60	53.50,68.60	58.10,67.20
		path	62.80,59.30	61.50,54.20	57.40,51.90
		path	56.30,45.50
		collect 220 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 11 Bundle of Groceries##87557 |complete itemcount(87557)>=11 or skill("Way of the Brew")>=600
	step
		talk Nam Ironpaw##64395
		accept Replenishing the Pantry##31535 |complete "incomplete" |or
		earn 11 Ironpaw Tokens##402 |goto Valley of the Four Winds/0 53.50,51.20 |or
	step
		talk Nam Ironpaw##64395
		buy 3 100 Year Soy Sauce##74853 |complete itemcount(74853)>=3 or skill("Way of the Brew")>=600
		|tip You can also buy these from the Auction House.
	step
		talk Nam Ironpaw##64395
		buy Sack of Witchberries##87712 |n
		use Sack of Witchberries##87712
		collect 100 Witchberries##74846 |goto Valley of the Four Winds/0 53.50,51.20 |complete itemcount(74846)>=100 or skill("Way of the Brew")>=600
		|tip You can also buy these from the Auction House.
	step
		talk Nam Ironpaw##64395
		buy Sack of Green Cabbage##87706 |n
		use Sack of Green Cabbages##87706
		collect 100 Green Cabbage##74840 |goto Valley of the Four Winds/0 53.50,51.20 |complete itemcount(74840)>=100 or skill("Way of the Brew")>=600
		|tip You can also buy these from the Auction House.
	step
		talk Bobo Ironpaw##58717
		learn Great banquet of the Brew##125603 |goto Valley of the Four Winds 53.00,52.00
	step
		#include "cooking_fire"
		create Great banquet of the Brew##125603,Way of the Brew,600
]])

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

QuestCore:RegisterInclude("GT_SW_Path",[[
	--Greentea // Silk
	map Valley of the Four Winds
	path follow loose;loop;ants straight;dist 40
	path 81.40,21.50	76.40,29.20	68.20,33.30
	path 70.60,41.80	65.10,60.10	57.60,65.60
	path 50.80,58.60	48.00,65.90	46.90,61.30
	path 42.50,58.30	33.60,62.10	28.10,72.70
	path 25.70,78.40	18.50,51.00	15.40,53.90
	path 12.80,44.70	14.30,41.20	14.80,35.80
	path 19.60,34.40	24.00,42.20	25.00,50.20
	path 30.10,55.70	 35.80,54.80	41.50,48.90
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







QuestCore:RegisterInclude("Protofom_Synthesis_Pet_Unlock",[[
	step
		Complete "Cyphers of the First Ones" Quest |complete completedq(64230) |or
		|tip This is the final quest of the third chapter of the Zereth Mortis campaign.
		|tip It is required to unlock Protoform Synthesis crafting.
		Click Here to Load the Zereth Mortis Leveling Guide |loadguide "Leveling Guides\\Shadowlands (50-70)\\Eternity's End\\Zereth Mortis" |or
	step
		earn 5 Cyphers of the First Ones##1979 |or
		|tip Earn these by completing daily quests and world quests in Zereth Mortis.
		|tip You can also farm rares and treasures.
		'|specialtalent Metrial Understanding##1901 |or
	step
		click Cypher Console
		|tip Inside the cave.
		|tip Start the "Metrial Understanding" Core Systems upgrade.
		Learn Metrial Understanding |specialtalent Metrial Understanding##1901 |goto Zereth Mortis/0 33.76,49.50
	step
		earn 45 Cyphers of the First Ones##1979 |or
		|tip Earn these by completing daily quests and world quests in Zereth Mortis.
		|tip You can also farm rares and treasures.
		'|specialtalent Aealic Understanding##1904 |or
	step
		click Cypher Console
		|tip Inside the cave.
		|tip Start the "Aealic Understanding" Console Upgrades upgrade.
		|tip This upgrade will require 18 hours to complete.
		Learn Aealic Understanding |specialtalent Aealic Understanding##1904 |goto 33.76,49.50
	step
		earn 200 Cyphers of the First Ones##1979 |or
		|tip Earn these by completing daily quests and world quests in Zereth Mortis.
		|tip You can also farm rares and treasures.
		'|specialtalent Dealic Understanding##1932 |or
	step
		click Cypher Console
		|tip Inside the cave.
		|tip Start the "Dealic Understanding" Wildlife Control upgrade.
		|tip This upgrade will require 3 days 18 hours to complete.
		Learn Dealic Understanding |specialtalent Dealic Understanding##1932 |goto 33.76,49.50
	step
		cast Summon Pocopoc##360078
		Summon Pocopoc |complete spellactive(360078) |q 65419 |future
	step
		_Next to you:_
		talk Pocopoc##181059
		accept Protoform Synthesis##65419 |goto 61.87,58.94
	step
		Enter the tunnel |goto Zereth Mortis/0 61.86,58.93 < 7 |walk
		Locate the Synthesis Forge Chamber |q 65419/1 |goto Zereth Mortis/0 61.79,58.96
	step
		Enter the Synthesis Forge Chamber |q 65419/2 |goto 60.52,59.39
	step
		_Next to you:_
		talk Pocopoc##181059
		|tip Use your "Summon Pocopoc" ability if it is not already present.
		turnin Protoform Synthesis##65419
]])

QuestCore:RegisterInclude("Protofom_Synthesis_Mount_Unlock",[[
	step
		Complete "Cyphers of the First Ones" Quest |complete completedq(64230) |or
		|tip This is the final quest of the third chapter of the Zereth Mortis campaign.
		|tip It is required to unlock Protoform Synthesis crafting.
		Click Here to Load the Zereth Mortis Leveling Guide |loadguide "Leveling Guides\\Shadowlands (50-70)\\Eternity's End\\Zereth Mortis" |or
	step
		earn 5 Cyphers of the First Ones##1979 |or
		|tip Earn these by completing daily quests and world quests in Zereth Mortis.
		|tip You can also farm rares and treasures.
		'|specialtalent Metrial Understanding##1901 |or
	step
		click Cypher Console
		|tip Inside the cave.
		|tip Start the "Metrial Understanding" Core Systems upgrade.
		Learn Metrial Understanding |specialtalent Metrial Understanding##1901 |goto Zereth Mortis/0 33.76,49.50
	step
		earn 45 Cyphers of the First Ones##1979 |or
		|tip Earn these by completing daily quests and world quests in Zereth Mortis.
		|tip You can also farm rares and treasures.
		'|specialtalent Aealic Understanding##1904 |or
	step
		click Cypher Console
		|tip Inside the cave.
		|tip Start the "Aealic Understanding" Console Upgrades upgrade.
		|tip This upgrade will require 18 hours to complete.
		Learn Aealic Understanding |specialtalent Aealic Understanding##1904 |goto 33.76,49.50
	step
		earn 200 Cyphers of the First Ones##1979 |or
		|tip Earn these by completing daily quests and world quests in Zereth Mortis.
		|tip You can also farm rares and treasures.
		'|specialtalent Dealic Understanding##1932 |or
	step
		click Cypher Console
		|tip Inside the cave.
		|tip Start the "Dealic Understanding" Wildlife Control upgrade.
		|tip This upgrade will require 3 days 18 hours to complete.
		Learn Dealic Understanding |specialtalent Dealic Understanding##1932 |goto 33.76,49.50
	step
		cast Summon Pocopoc##360078
		Summon Pocopoc |complete spellactive(360078) |q 65419 |future
	step
		_Next to you:_
		talk Pocopoc##181059
		accept Protoform Synthesis##65419 |goto 61.87,58.94
	step
		Enter the tunnel |goto Zereth Mortis/0 61.86,58.93 < 7 |walk
		Locate the Synthesis Forge Chamber |q 65419/1 |goto Zereth Mortis/0 61.79,58.96
	step
		Enter the Synthesis Forge Chamber |q 65419/2 |goto 60.52,59.39
	step
		_Next to you:_
		talk Pocopoc##181059
		|tip Use your "Summon Pocopoc" ability if it is not already present.
		turnin Protoform Synthesis##65419
	step
		earn 220 Cyphers of the First Ones##1979 |or
		|tip Earn these by completing daily quests and world quests in Zereth Mortis.
		|tip You can also farm rares and treasures.
		'|specialtalent Sopranian Understanding##1931 |or
	step
		click Cypher Console
		|tip Inside the cave.
		|tip Start the "Sopranian Understanding" Wildlife Control upgrade.
		|tip This upgrade will require 5 days 18 hours to complete.
		Learn Sopranian Understanding |specialtalent Sopranian Understanding##1931 |goto 33.76,49.50
	step 
		talk Elder Amir##180630
		accept Finding Tahli##64829 |goto 61.37,51.55
	step
		talk Tahli##181410
		turnin Finding Tahli##64829 |goto 63.94,40.77
		accept Selfless Preservation##64745
	step
		kill Ilgaz the Plunderer##184002
		|tip This enemy is elite and may require a group.
		collect Stolen Artifact##188798 |q 64745/1 |goto 62.48,36.04
	step 
		click Orb of Transference##370406
		Place the Orb |q 64745/2 |goto 61.49,36.72
	step
		Watch the dialogue
		talk Tahli##181273
		|tip Inside the building.
		turnin Selfless Preservation##64745 |goto 61.18,37.63
		accept Junk's Not Dead##64759 |goto 61.18,37.63
		accept Core Competency##64761 |goto 61.18,37.63
	step
		click Orb of Transference##370405
		|tip Inside the building.
		Leave the Building |havebuff spell:364301 |goto 61.37,37.02 |q 64759
	stickystart "Charge_Depleted_Automa_Core"
	step
		click Depleted Servitor##183441+
		|tip They look like small inactive robots on the ground around this area.
		|tip They appear on your minimap as yellow dots.
		Transcribe the First Glyph |q 64759/1 |goto 63.13,38.56 |count 1
	step
		click Depleted Servitor##183441+
		|tip They look like small inactive robots on the ground around this area.
		|tip They appear on your minimap as yellow dots.
		Transcribe the Second Glyph |q 64759/1 |goto 65.78,38.17 |count 2
	step
		click Depleted Servitor##183441+
		|tip They look like small inactive robots on the ground around this area.
		|tip They appear on your minimap as yellow dots.
		Transcribe the Third Glyph |q 64759/1 |goto 67.00,37.40 |count 3
	step
		click Depleted Servitor##183441+
		|tip They look like small inactive robots on the ground around this area.
		|tip They appear on your minimap as yellow dots.
		Transcribe the Fourth Glyph |q 64759/1 |goto 67.40,40.17 |count 4
	step
		click Depleted Servitor##183441+
		|tip They look like small inactive robots on the ground around this area.
		|tip They appear on your minimap as yellow dots.
		Transcribe the Fifth Glyph |q 64759/1 |goto 66.50,41.40 |count 5
	step
		click Depleted Servitor##183441+
		|tip They look like small inactive robots on the ground around this area.
		|tip They appear on your minimap as yellow dots.
		Transcribe the Sixth Glyph |q 64759/1 |goto 65.85,40.38 |count 6
	step
	label "Charge_Depleted_Automa_Core"
		Kill Animate and Scarabid enemies around this area
		|tip Any wild animates in the area will work for this.
		use Depleted Automa Core##187941
		|tip Use it on the slain Animates until it is fully charged.
		Charge the Depleted Automa Core |q 64761/1 |goto 63.98,37.98
	step 
		click Orb of Transference##370406
		Teleport Inside the Building |havebuff spell:364301 |goto 61.49,36.72 |q 64761
	step 
		talk Tahli##181273
		|tip Inside the building.
		turnin Junk's Not Dead##64759 |goto 61.18,37.63
		turnin Core Competency##64761 |goto 61.18,37.63
		accept Revival of the Fittest##64762 |goto 61.18,37.63
	step
		Use the _"Awaken the Servitor"_ ability
		|tip In the gold circle inside the building.
		|tip It appears as a button on your screen.
		Begin the Ritual |q 64762/1 |goto 61.21,37.54
	step
		Watch the dialogue
		|tip Inside the building.
		Awaken the Servitor |q 64762/2 |goto 61.21,37.54
	step
		Watch the dialogue
		talk Kodah##183507
		|tip Inside the building.
		turnin Revival of the Fittest##64762 |goto 61.24,37.63
		accept Maintenance Mode##64763 |goto 61.24,37.63
		accept Access Request##64766 |goto 61.24,37.63
	step
		click Orb of Transference##370405
		|tip Inside the building.
		Leave the Building |havebuff spell:364301 |goto 61.37,37.02 |q 64766
	step
		Enter the building |goto 65.90,36.18 < 10 |walk
		click Chamber Door
		kill Dominated Architect##181045
		|tip The enemies in this room are elite and may require a group.
		|tip Interrupt "Agression Sentry" on cooldown.
		|tip Move out of areas targeted on the ground.
		collect Restoration Matrix##187628 |q 64766/1 |goto 67.24,39.72
	step
		click Chamber Door |goto 66.59,38.00 < 4 |walk
		Kill Mawsworn enemies around this area
		collect Attunement Codex##189492+ |n
		click Arrangement Terminal##370178
		Attune the First Arrangement Terminal |q 64763/1 |goto 66.31,34.47 |count 1
	step
		Kill Mawsworn enemies around this area
		collect Attunement Codex##189492+ |n
		click Arrangement Terminal##370178
		Attune the Second Arrangement Terminal |q 64763/1 |goto 65.37,31.96 |count 2
	step
		Kill Mawsworn enemies around this area
		collect Attunement Codex##189492+ |n
		click Arrangement Terminal##370178
		Attune the Third Arrangement Terminal |q 64763/1 |goto 63.67,32.95 |count 3
	step
		Kill Mawsworn enemies around this area
		collect Attunement Codex##189492+ |n
		click Arrangement Terminal##370178
		Attune the Final Arrangement Terminal |q 64763/1 |goto 63.99,35.58 |count 4
	step
		Enter the building |goto 68.58,30.17 < 10 |walk
		talk Kodah##183508
		|tip Inside the building.
		turnin Maintenance Mode##64763 |goto 68.77,29.71
		turnin Access Request##64766 |goto 68.77,29.71
		accept The Final Song##64767 |goto 68.77,29.71
	step
		talk Kodah##180610
		|tip Inside the building.
		Tell him _"Let's do this!"_
		|tip This will start an event that may require a group.
		Speak to Kodah |q 64767/1 |goto 68.77,29.71
	step
		Kill enemies that attack in waves
		|tip Inside the building.
		|tip You must stand in the circle to progress the event.
		|tip Any enemies inside the circle will halt your progress.
		|tip Try to position yourself in the circle with attacking enemies outside of it.
		|tip You may need help with this.
		Defend Kodah |q 64767/2 |goto 70.53,28.22
	step
		click Restoration Matrix##373519
		|tip Inside the building.
		Activate the Restoration Matrix |q 64767/3 |goto 70.21,28.56
	step
		Watch the dialogue
		talk Tahli##181410
		|tip Inside the building.
		|tip Tahli will run into the room.
		turnin The Final Song##64767 |goto 70.13,28.73
		accept Judgement Call##65420 |goto 70.13,28.73
	step
		talk Elder Amir##180630
		turnin Judgment Call##65420 |goto 61.37,51.55
	step
		Watch the dialogue
		talk Tahli##181273
		accept The Lost Component##65426 |goto 61.46,51.56
		|tip You may need to relog to see this quest.
	step
		click Protoform Catalyst##375227
		collect Protoform Catalyst##189499 |q 65426/1 |goto 61.33,51.67
	step
		Enter the building |goto 68.58,30.17 < 10 |walk
		click Repository Console
		|tip Inside the building.
		Choose _"Insert the Protoform Catalyst."_
		Return the Component |q 65426/2 |goto 70.21,28.57
	step
		talk Servitor Interface##181135
		|tip Inside the building.
		turnin The Lost Component##65426 |goto 70.21,28.57
		accept A New Architect##65427 |goto 70.21,28.57
	step
		click Protoform Tool##375222
		|tip Inside the building.
		collect 1 Protoform Tool##189501 |q 65427/2 |goto 70.01,27.72
	step
		click Repository Vault##375223
		|tip Inside the building.
		collect Cervid Lattice##189500 |q 65427/1 |goto 70.59,27.21
	step
		click Protoform Tool##375222
		|tip Inside the building.
		collect 2 Protoform Tool##189501 |q 65427/2 |goto 71.32,27.72
	step
		click Protoform Tool##375222
		|tip Inside the building.
		collect 3 Protoform Tool##189501 |q 65427/2 |goto 70.73,29.09
	step
		talk Servitor Interface##181135
		|tip Inside the building.
		turnin A New Architect##65427 |goto 70.21,28.57
]])