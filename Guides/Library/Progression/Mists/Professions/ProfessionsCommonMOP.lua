-- QuestCore bundled guide (mists)
if not QuestCore then return end
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Cooking (1-600)",{
expansion="mists",
mopready=true,
description="This guide will walk you through leveling your Cooking skill from 1-600.",
condition_end=function() return skill('Cooking') >= 600 end,
},[[
step
talk Sungshin Ironpaw##64231
skillmax Cooking,520
accept So You Want to Be a Chef...##31281 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Sliced Peaches##125117 |q 31281
buy 5 Pandaren Peach##74660 |q 31281 |goto Valley of the Four Winds/0 53.58,51.23
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 5 Sliced Peaches>_
collect 5 Sliced Peaches##86057 |q 31281/2
Reach Cooking Skill 30 |complete skill("Cooking") >= 30
|tip You may need to buy another peach if your cooking skill is not 30 yet.
step
talk Sungshin Ironpaw##64231
turnin So You Want to Be a Chef...##31281 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Perfectly Cooked Instant Noodles##125067 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=59
step
talk Sungshin Ironpaw##64231
buy 6 Instant Noodles##74854 |n
Open Your Cooking Crafting Panel:
_<Create 6 Perfectly Cooked Instant Noodles>_
Reach Cooking Skill 60 |complete skill("Cooking") >= 60 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Toasted Fish Jerky##124225
skillmax Cooking,150 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=89
step
goto Valley of the Four Winds/0 58.9,47.1
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
collect 6 Golden Carp##74866
|only if skill('Cooking')<=89
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 6 Toasted Fish Jerky>_
Reach Cooking Skill 90 |complete skill("Cooking") >= 90
step
talk Sungshin Ironpaw##64231
learn Dried Needle Mushrooms##124227 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=119
step
talk Sungshin Ironpaw##64231
buy 6 Needle Mushrooms##85583 |n
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 6 Dried Needle Mushrooms>_
Reach Cooking Skill 120 |complete skill("Cooking") >= 120 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Pounded Rice Cake##124223 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=149
step
talk Sungshin Ironpaw##64231
buy 6 Rice##74851 |n
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 6 Pounded Rice Cake>_
Reach Cooking Skill 150 |complete skill("Cooking") >= 150 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
skillmax Cooking,225 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Yak Cheese Curds##124224 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=179
step
talk Sungshin Ironpaw##64231
buy 6 Yak Milk##74852 |n
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 6 Yak Cheese Curds>_
Reach Cooking Skill 180 |complete skill("Cooking") >= 180 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Dried Peaches##124226 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=209
step
talk Sungshin Ironpaw##64231
buy 6 Pandaren Peach##74660 |n
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 6 Dried Peaches>_
Reach Cooking Skill 210 |complete skill("Cooking") >= 210 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Boiled Silkworm Pupa##124228
skillmax Cooking,300 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=239
step
talk Sungshin Ironpaw##64231
buy 6 Silkworm Pupa##85584 |n
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 6 Boiled Silkworm Pupa>_
Reach Cooking Skill 240 |complete skill("Cooking") >= 240 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Roasted Barley Tea##125078 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=269
step
talk Sungshin Ironpaw##64231
buy 6 Barley##74832 |n
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 6 Roasted Barley Tea>_
Reach Cooking Skill 270 |complete skill("Cooking") >= 270 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Golden Carp Consomme##104237 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=299
step
goto Valley of the Four Winds/0 58.9,47.1
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
collect 24 Golden Carp##74866 |only if skill('Cooking')<=299
collect 12 Golden Carp##74866 |only if skill('Cooking')>=300 and skill('Cooking')<=329
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 6 Golden Carp Consomme>_
Reach Cooking Skill 300 |complete skill("Cooking") >= 300
step
talk Sungshin Ironpaw##64231
skillmax Cooking,375 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Fish Cake##104297 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=329
step
goto Valley of the Four Winds/0 58.9,47.1
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
collect 12 Golden Carp##74866 |only if skill('Cooking')>=300 and skill('Cooking')<=329
step
talk Sungshin Ironpaw##64231
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 6 Fish Cake>_
Reach Cooking Skill 330 |complete skill("Cooking") >= 330 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Blanched Needle Mushrooms##124233 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=359
step
talk Sungshin Ironpaw##64231
buy 12 Needle Mushrooms##85583 |n
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 6 Blanched Needle Mushrooms>_
Reach Cooking Skill 360 |complete skill("Cooking") >= 360 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
skillmax Cooking,450 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Red Bean Bun##124229 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=389
step
talk Sungshin Ironpaw##64231
buy 6 Red Beans##85585 |n
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 6 Red Bean Buns>_
Reach Cooking Skill 390 |complete skill("Cooking") >= 390 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Skewered Peanut Chicken##124234 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=419
step
talk Sungshin Ironpaw##64231
buy 6 Farm Chicken##74659 |n
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 6 Skewered Peanut Chicken>_
Reach Cooking Skill 420 |complete skill("Cooking") >= 420 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Green Curry Fish##124231
buy 6 Rice##74851 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=449
step
goto Valley of the Four Winds/0 58.9,47.1
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
collect 12 Golden Carp##74866
|only if skill('Cooking')<=449
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 6 Green Curry Fish>_
Reach Cooking Skill 450 |complete skill("Cooking") >= 450
step
talk Sungshin Ironpaw##64231
skillmax Cooking,525 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Peach Pie##124232 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=479
step
talk Sungshin Ironpaw##64231
buy 12 Pandaren Peach##74660 |n
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 6 Peach Pie>_
Reach Cooking Skill 480 |complete skill("Cooking") >= 480 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Tangy Yogurt##124230 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=494
step
talk Sungshin Ironpaw##64231
buy 3 Pandaren Peach##74660 |n
buy 3 Yak Milk##74852 |n
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 3 Tangy Yogurt>_
Reach Cooking Skill 495 |complete skill("Cooking") >= 495 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Pearl Milk Tea##125080 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=509
step
talk Sungshin Ironpaw##64231
buy 6 Yak Milk##74852 |n
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 3 Pearl Milk Tea>_
Reach Cooking Skill 510 |complete skill("Cooking") >= 510 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Wildfowl Ginseng Soup##125121 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=519
step
talk Sungshin Ironpaw##64231
buy 2 Ginseng##74845 |goto Valley of the Four Winds/0 53.58,51.23
|only if skill('Cooking')<=519
step
kill Carp Hunter##58116+
collect 2 Wildfowl Breast##74839 |goto Krasarang Wilds/0 64.6,29.3
|only if skill('Cooking')<=519
step
talk Sungshin Ironpaw##64231
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 2 Wildfowl Ginseng Soup>_
Reach Cooking Skill 520 |complete skill("Cooking") >= 520 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
accept Ready for Greatness##31302 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
learn Rice Pudding##125122
buy 5 Rice##74851 |q 31302
buy 5 Yak Milk##74852 |q 31302 |goto Valley of the Four Winds/0 53.58,51.23
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 5 Rice Pudding>_
collect 5 Rice Pudding##86069 |q 31302/2
step
talk Sungshin Ironpaw##64231
turnin Ready for Greatness##31302 |goto Valley of the Four Winds/0 53.58,51.23
accept Way of the Grill##31311 |goto Valley of the Four Winds/0 53.58,51.23
accept Way of the Wok##31470 |goto Valley of the Four Winds/0 53.58,51.23
accept Way of the Pot##31472 |goto Valley of the Four Winds/0 53.58,51.23
accept Way of the Steamer##31475 |goto Valley of the Four Winds/0 53.58,51.23
accept Way of the Oven##31478 |goto Valley of the Four Winds/0 53.58,51.23
accept Way of the Brew##31479 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Sungshin Ironpaw##64231
buy 1 Ginseng##74845 |q 31480 |goto Valley of the Four Winds/0 53.58,51.23
step
talk Nam Ironpaw##64395
buy 1 Sack of Raw Tiger Steaks##87701 |n |goto Valley of the Four Winds/0 53.58,51.23
use Sack of Raw Tiger Steaks##87701
get 5 Raw Tiger Steak##74833 |q 31311/1
step
talk Kol Ironpaw##58712
turnin Way of the Grill##31311 |goto Valley of the Four Winds/0 53.0,51.3
accept Strong as a Tiger##31467 |goto Valley of the Four Winds/0 53.0,51.3
step
talk Kol Ironpaw##58712
learn Charbroiled Tiger Steak##104298 |q 31467/1 |goto Valley of the Four Winds/0 53.0,51.3
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 5 Charbroiled Tiger Steaks>_
collect 5 Charbroiled Tiger Steaks##74642 |q 31467/2
step
talk Kol Ironpaw##58712
turnin Strong as a Tiger##31467 |goto Valley of the Four Winds/0 53.0,51.3
step
talk Bobo Ironpaw##58717
turnin Way of the Brew##31479 |goto Valley of the Four Winds/0 53.2,52.2
accept Have a Drink##31480 |goto Valley of the Four Winds/0 53.2,52.2
step
talk Bobo Ironpaw##58717
learn Ginseng Tea##124052 |q 31480/1 |goto Valley of the Four Winds/0 53.0,51.3
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 1 Ginseng Tea>_
collect 1 Ginseng Tea##75026 |q 31480/2
step
talk Bobo Ironpaw##58717
turnin Have a Drink##31480 |goto Valley of the Four Winds/0 53.2,52.2
step
talk Nam Ironpaw##64395
buy 1 Sack of Juicycrunch Carrots##87707 |n |goto Valley of the Four Winds/0 53.5,51.2
Use the Sack of Juicycrunch Carrots |use Sack of Juicycrunch Carrots##87707
get 5 Juicycrunch Carrot##74841 |q 31470/1
step
talk Anthea Ironpaw##58713
turnin Way of the Wok##31470 |goto Valley of the Four Winds/0 52.7,52.0
accept Agile as a Tiger##31471 |goto Valley of the Four Winds/0 52.7,52.0
step
talk Anthea Ironpaw##58713
learn Sauteed Carrots##104301 |q 31471/1 |goto Valley of the Four Winds/0 52.7,52.0
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 5 Sauteed Carrots>_
collect 5 Sauteed Carrots##74643 |q 31471/2
step
talk Anthea Ironpaw##58713
turnin Agile as a Tiger##31471 |goto Valley of the Four Winds/0 52.7,52.0
step
talk Nam Ironpaw##64395
buy 1 Sack of Jade Lungfish##87721 |n |goto Valley of the Four Winds/0 53.5,51.2
Use the Sack of Jade Lungfish |use Sack of Jade Lungfish##87721
get 5 Jade Lungfish##74856 |q 31472/1
buy 1 Sack of Mantis Shrimp##87722 |n |goto Valley of the Four Winds/0 53.5,51.2
Use the Sack of Mantis Shrimp |use Sack of Mantis Shrimp##87722
get 5 Giant Mantis Shrimp##74857 |q 31475/1
buy 1 Sack of Wildfowl Breasts##87705 |n |goto Valley of the Four Winds/0 53.5,51.2
Use the Sack of Wildfowl Breasts |use Sack of Wildfowl Breasts##87705
get 5 Wildfowl Breast##74839 |q 31478/1
step
talk Jian Ironpaw##58716
turnin Way of the Oven##31478 |goto Valley of the Four Winds/0 53.4,51.6
accept Endurance##31477 |goto Valley of the Four Winds/0 53.4,51.6
step
talk Jian Ironpaw##58716
learn Wildfowl Roast##104310 |q 31477/1 |goto Valley of the Four Winds/0 53.4,51.6
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 5 Wildfowl Roasts>_
collect 5 Wildfowl Roasts##74654 |q 31477/2
step
talk Jian Ironpaw##58716
turnin Endurance##31477 |goto Valley of the Four Winds/0 53.4,51.6
step
talk Yan Ironpaw##58715
turnin Way of the Steamer##31475 |goto Valley of the Four Winds/0 52.5,51.8
accept The Spirit of Cooking##31476 |goto Valley of the Four Winds/0 52.5,51.8
step
talk Yan Ironpaw##58715
learn Shrimp Dumplings##104307 |q 31476/1 |goto Valley of the Four Winds/0 52.5,51.8
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 5 Shrimp Dumplings>_
collect 5 Shrimp Dumplings##74651 |q 31476/2
step
talk Yan Ironpaw##58715
turnin The Spirit of Cooking##31476 |goto Valley of the Four Winds/0 52.5,51.8
step
talk Mei Mei Ironpaw##58714
turnin Way of the Pot##31472 |goto Valley of the Four Winds/0 52.6,51.5
accept The Soup of Contemplation##31474 |goto Valley of the Four Winds/0 52.6,51.5
step
talk Mei Mei Ironpaw##58714
learn Swirling Mist Soup##104304 |q 31474/1 |goto Valley of the Four Winds/0 52.6,51.5
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 5 Swirling Mist Soups>_
collect 5 Swirling Mist Soups##74644 |q 31474/2
step
talk Mei Mei Ironpaw##58714
turnin The Soup of Contemplation##31474 |goto Valley of the Four Winds/0 52.6,51.5
step
talk Nam Ironpaw##64395
accept Preserving Freshness##31536 |goto Valley of the Four Winds/0 53.5,51.2
step
talk Merchant Cheng##64940
buy 1 Empty Raw Tiger Steak Container##87658 |q 31536/1 |goto Valley of the Four Winds/0 53.0,52.4
step
label final_quest
talk Nam Ironpaw##64395
turnin Preserving Freshness##31536 |goto Valley of the Four Winds/0 53.5,51.2
step
label cooking_start
Your Cooking Skill should now be at least 535.
With cooking you now have a choice to choose a _Cooking Mastery_.
Different Masteries specialize in foods providing different buffs.
This allows you to _Cook foods based on what your character needs or wants._
_
Before you continue, _open your cooking window_ so the guide can determine what level your cooking mastery is. |cast Cooking##2550
|confirm always
step
title Cooking Mastery
label	cooking_mastery_start
Here is where you will start your Mastery Cooking:
Remember to open your Cooking Window |cast Cooking##2550
Click here for Way of the Grill - Strength Food |confirm |loadguide "Profession Guides\\Cooking\\Leveling Guides\\Way of the Grill" |only if skill('Way of the Grill')<600
You have maxed out Way of the Grill |only if skill('Way of the Grill')==600
Click here for Way of the Wok - Agility Food |confirm |loadguide "Profession Guides\\Cooking\\Leveling Guides\\Way of the Wok" |only if skill('Way of the Wok')<600
You have maxed out Way of the Wok |only if skill('Way of the Wok')==600
Click here for Way of the Pot - Intellect Food |confirm |loadguide "Profession Guides\\Cooking\\Leveling Guides\\Way of the Pot" |only if skill('Way of the Pot')<600
You have maxed out Way of the Pot |only if skill('Way of the Pot')==600
Click here for Way of the Steamer - Spirit Food |confirm |loadguide "Profession Guides\\Cooking\\Leveling Guides\\Way of the Steamer" |only if skill('Way of the Steamer')<600
You have maxed out Way of the Steamer |only if skill('Way of the Steamer')==600
Click here for Way of the Oven - Stamina Food |confirm |loadguide "Profession Guides\\Cooking\\Leveling Guides\\Way of the Oven" |only if skill('Way of the Oven')<600
You have maxed out Way of the Oven |only if skill('Way of the Oven')==600
Click here for Way of the Brew - Mana drinks and Random Food buffs |confirm |loadguide "Profession Guides\\Cooking\\Leveling Guides\\Way of the Brew" |only if skill('Way of the Brew')<600
You have maxed out Way of the Brew |only if skill('Way of the Brew')==600
|next mastery_end
step
label mastery_end
talk Sungshin Ironpaw##64231
accept To Be a Master##31521 |goto Valley of the Four Winds/0 53.6,51.2
|tip This will only be available when you have maxed out your cooking.
step
talk Sungshin Ironpaw##64231
turnin To Be a Master##31521 |goto Valley of the Four Winds/0 53.6,51.2
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Way of the Oven",{
expansion="mists",
mopready=true,
description="This guide will walk you through completing the Way of the Oven cooking mastery.",
},[[
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all the cooking materials before beginning.
_Or_
Click Here to Collect Materials as you continue the Way of the Oven |confirm |next "Begin_Cooking_Way_Of_The_Oven" |or
|complete skill("Cooking") >= 600 |only if default |or |next "Begin_Cooking_Way_Of_The_Oven"
stickystart "Collect_Krasarang_Paddlefish_Total"
stickystart "Collect_Raw_Turtle_Meat_Total"
stickystart "Collect_Mogu_Pumpkin_Total"
stickystart "Collect_100_Year_Soy_Sauce_Total"
step
kill Carp Hunter##58116+
collect 25 Wildfowl Breast##74839 |goto Krasarang Wilds/0 64.6,29.3
|tip Farm them or purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Krasarang_Paddlefish_Total"
map Krasarang Wilds
path loose; loop; curved
path	37.4,35.2	42.9,38.7	43.4,46.0
path	38.0,42.3	34.1,38.4	30.3,33.8
Follow this river and use your fishing ability to catch Krasarang Paddlefish
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
collect 76 Krasarang Paddlefish##74865
step
label "Collect_Raw_Turtle_Meat_Total"
kill Wyrmhorn Turtle##56256+
collect 50 Raw Turtle Meat##74837 |goto Valley of the Four Winds/0 66.8,32.5
|tip Farm them or purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Mogu_Pumpkin_Total"
collect 250 Mogu Pumpkin##74842
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_100_Year_Soy_Sauce_Total"
talk Nam Ironpaw##64395
collect 5 100 Year Soy Sauce##74853 |goto Valley of the Four Winds/0 53.5,51.2
|tip Trade 1 Ironpaw Token for a bag of 100 Year Soy Sauce.
step
label "Begin_Cooking_Way_Of_The_Oven"
talk Jian Ironpaw##58716
Train Wild Fowl Roast |learn Wild Fowl Roast##104310 |goto Valley of the Four Winds/0 53.4,51.6
step
kill Carp Hunter##58116+
collect 25 Wildfowl Breast##74839 |goto Krasarang Wilds/0 64.6,29.3
|tip Farm them or purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 25 Wild Fowl Roast>_
Reach Cooking Skill 550 |complete skill("Cooking") >= 550
step
talk Jian Ironpaw##58716
Train Twin Fish Platter |learn Twin Fish Platter##104311 |goto Valley of the Four Winds/0 53.4,51.6
step
map Krasarang Wilds
path loose; loop; curved
path	37.4,35.2	42.9,38.7	43.4,46.0
path	38.0,42.3	34.1,38.4	30.3,33.8
Follow this river and use your fishing ability to catch Krasarang Paddlefish
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
collect 26 Krasarang Paddlefish##74865
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 13 Twin Fish Platter>_
Reach Cooking Skill 576 |complete skill("Cooking") >= 576
step
talk Jian Ironpaw##58716
Train Banquet of the Oven |learn Banquet of the Oven##125600 |goto Valley of the Four Winds/0 53.4,51.6
stickystart "Collect_Raw_Turtle_Meat_Banquet"
stickystart "Collect_Mogu_Pumpkin_Banquet"
stickystart "Collect_100_Year_Soy_Sauce_Banquet"
step
map Krasarang Wilds
path loose; loop; curved
path	37.4,35.2	42.9,38.7	43.4,46.0
path	38.0,42.3	34.1,38.4	30.3,33.8
Follow this river and use your fishing ability to catch Krasarang Paddlefish
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
collect 50 Krasarang Paddlefish##74865
step
label "Collect_Raw_Turtle_Meat_Banquet"
kill Wyrmhorn Turtle##56256+
collect 50 Raw Turtle Meat##74837 |goto Valley of the Four Winds/0 66.8,32.5
|tip Farm them or purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Mogu_Pumpkin_Banquet"
collect 250 Mogu Pumpkin##74842
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_100_Year_Soy_Sauce_Banquet"
talk Nam Ironpaw##64395
collect 5 100 Year Soy Sauce##74853 |goto Valley of the Four Winds/0 53.5,51.2
|tip Trade 1 Ironpaw Token for a bag of 100 Year Soy Sauce.
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 5 Banquet of the Oven>_
Reach Cooking Skill 600 |complete skill("Cooking") >= 600
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Way of the Brew",{
expansion="mists",
mopready=true,
description="This guide will walk you through completing the Way of the Brew cooking mastery.",
},[[
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all the cooking materials before beginning.
_Or_
Click Here to Collect Materials as you continue the Way of the Brew |confirm |next "Begin_Cooking_Way_Of_The_Brew" |or
|complete skill("Cooking") >= 600 |only if default |or |next "Begin_Cooking_Way_Of_The_Brew"
stickystart "Collect_Jade_Squash_Total"
stickystart "Collect_Green_Cabbage_Total"
stickystart "Collect_Witchberries_Total"
stickystart "Collect_100_Year_Soy_Sauce_Total"
step
talk Sungshin Ironpaw##64231
buy 25 Ginseng##74845 |n
collect 25 Ginseng##74845 |goto Valley of the Four Winds/0 53.6,51.2
step
label "Collect_Jade_Squash_Total"
collect 65 Jade Squash##74842
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Green_Cabbage_Total"
collect 250 Green Cabbage##74840
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Witchberries_Total"
collect 315 Witchberries##74846
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_100_Year_Soy_Sauce_Total"
talk Nam Ironpaw##64395
collect 5 100 Year Soy Sauce##74853 |goto Valley of the Four Winds/0 53.5,51.2
|tip Trade 1 Ironpaw Token for a bag of 100 Year Soy Sauce.
step
label "Begin_Cooking_Way_Of_The_Brew"
talk Bobo Ironpaw##58717
Train Ginseng Tea |learn Ginseng Tea##124052 |goto Valley of the Four Winds/0 53.0,52.0
step
talk Sungshin Ironpaw##64231
buy 25 Ginseng##74845 |n
collect 25 Ginseng##74845 |goto Valley of the Four Winds/0 53.6,51.2
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 25 Ginseng Tea>_
Reach Cooking Skill 550 |complete skill("Cooking") >= 550
step
talk Bobo Ironpaw##58717
Train Jade Witch Brew |learn Jade Witch Brew##124053 |goto Valley of the Four Winds/0 53.0,52.0
stickystart "Collect_Witchberries_Witch_Brew"
step
collect 65 Jade Squash##74842
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Witchberries_Witch_Brew"
collect 65 Witchberries##74846
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 13 Jade Witch Brew>_
Reach Cooking Skill 576 |complete skill("Cooking") >= 576
step
talk Bobo Ironpaw##58717
Train Banquet of the Brew |learn Banquet of the Brew##125602 |goto Valley of the Four Winds/0 53.0,52.0
stickystart "Collect_Witchberries_Banquet"
stickystart "Collect_100_Year_Soy_Sauce_Banquet"
step
collect 250 Green Cabbage##74840
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Witchberries_Banquet"
collect 315 Witchberries##74846
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_100_Year_Soy_Sauce_Banquet"
talk Nam Ironpaw##64395
collect 5 100 Year Soy Sauce##74853 |goto Valley of the Four Winds/0 53.5,51.2
|tip Trade 1 Ironpaw Token for a bag of 100 Year Soy Sauce.
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 5 Banquet of the Brew>_
Reach Cooking Skill 600 |complete skill("Cooking") >= 600
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Way of the Grill",{
expansion="mists",
mopready=true,
description="This guide will walk you through completing the Way of the Grill cooking mastery.",
},[[
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all the cooking materials before beginning.
_Or_
Click Here to Collect Materials as you continue the Way of the Grill |confirm |next "Begin_Cooking_Way_Of_The_Grill" |or
|complete skill("Cooking") >= 600 |only if default |or |next "Begin_Cooking_Way_Of_The_Grill"
stickystart "Collect_Jade_Lungfish_Total"
stickystart "Collect_Raw_Crab_Meat_Total"
stickystart "Collect_Redbelly_Mandarin_Total"
stickystart "Collect_Striped_Melon_Total"
stickystart "Collect_White_Turnip_Total"
stickystart "Collect_100_Year_Soy_Sauce_Total"
step
kill Krasari Huntress##58070+
kill Windward Tiger##63537+
collect 25 Raw Tiger Steak##74833 |goto Krasarang Wilds/0 66.0,28.4
|tip Farm them or purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Jade_Lungfish_Total"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. Look for Schools of fish to increase your chance of catching Jade Lungfish |cast Fishing##131474
collect 13 Jade Lungfish##74856 |goto The Jade Forest/0 55.0,71.1
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Raw_Crab_Meat_Total"
kill Flesh-Eating Sandsnapper##65823+
kill Viseclaw Fisher##58880+
collect 50 Raw Crab Meat##74838 |goto Krasarang Wilds/0 55.3,44.2
|tip Farm them or purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Redbelly_Mandarin_Total"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. |cast Fishing##131474
collect 50 Redbelly Mandarin##74860 |goto Townlong Steppes/0 35.2,74.6
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Striped_Melon_Total"
collect 65 Striped Melon##74848
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_White_Turnip_Total"
collect 250 White Turnip##74850
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_100_Year_Soy_Sauce_Total"
talk Nam Ironpaw##64395
collect 5 100 Year Soy Sauce##74853 |goto Valley of the Four Winds/0 53.5,51.2
|tip Trade 1 Ironpaw Token for a bag of 100 Year Soy Sauce.
step
label "Begin_Cooking_Way_Of_The_Grill"
talk Kol Ironpaw##58712
Train Charbroiled Tiger Steak |learn Charbroiled Tiger Steak##104298 |goto Valley of the Four Winds/0 52.7,52.0
step
kill Krasari Huntress##58070+
kill Windward Tiger##63537+
collect 25 Raw Tiger Steak##74833 |goto Krasarang Wilds/0 66.0,28.4
|tip Farm them or purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 25 Charbroiled Tiger Steak>_
Reach Cooking Skill 550 |complete skill("Cooking") >= 550
step
talk Kol Ironpaw##58712
Train Eternal Blossom Fish |learn Eternal Blossom Fish##104299 |goto Valley of the Four Winds/0 53.0,51.4
stickystart "Collect_Striped_Melon_Blossom_Fish"
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. Look for Schools of fish to increase your chance of catching Jade Lungfish |cast Fishing##131474
collect 13 Jade Lungfish##74856 |goto The Jade Forest/0 55.0,71.1
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Striped_Melon_Blossom_Fish"
collect 65 Striped Melon##74848
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 13 Eternal Blossom Fish>_
Reach Cooking Skill 576 |complete skill("Cooking") >= 576
step
talk Kol Ironpaw##58712
Train Banquet of the Grill |learn Banquet of the Grill##125141 |goto Valley of the Four Winds/0 53.4,51.6
stickystart "Collect_Redbelly_Mandarin_Banquet"
stickystart "Collect_White_Turnip_Banquet"
stickystart "Collect_100_Year_Soy_Sauce_Banquet"
step
kill Flesh-Eating Sandsnapper##65823+
kill Viseclaw Fisher##58880+
collect 50 Raw Crab Meat##74838 |goto Krasarang Wilds/0 55.3,44.2
|tip Farm them or purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Redbelly_Mandarin_Banquet"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. |cast Fishing##131474
collect 50 Redbelly Mandarin##74860 |goto Townlong Steppes/0 35.2,74.6
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_White_Turnip_Banquet"
collect 250 White Turnip##74850
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_100_Year_Soy_Sauce_Banquet"
talk Nam Ironpaw##64395
collect 5 100 Year Soy Sauce##74853 |goto Valley of the Four Winds/0 53.5,51.2
|tip Trade 1 Ironpaw Token for a bag of 100 Year Soy Sauce.
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 5 Banquet of the Oven>_
Reach Cooking Skill 600 |complete skill("Cooking") >= 600
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Way of the Pot",{
expansion="mists",
mopready=true,
description="This guide will walk you through completing the Way of the Pot cooking mastery.",
},[[
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all the cooking materials before beginning.
_Or_
Click Here to Collect Materials as you continue the Way of the Pot |confirm |next "Begin_Cooking_Way_Of_The_Pot" |or
|complete skill("Cooking") >= 600 |only if default |or |next "Begin_Cooking_Way_Of_The_Pot"
stickystart "Collect_Raw_Turtle_Meat_Total"
stickystart "Collect_Reef_Octopus_Total"
stickystart "Collect_Mushan_Ribs_Total"
stickystart "Collect_Juicycrunch_Carrot_Total"
stickystart "Collect_100_Year_Soy_Sauce_Total"
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. Look for Schools of fish to increase your chance of catching Jade Lungfish |cast Fishing##131474
collect 25 Jade Lungfish##74856 |goto The Jade Forest/0 55.0,71.1
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Raw_Turtle_Meat_Total"
kill Wyrmhorn Turtle##56256+
collect 13 Raw Turtle Meat##74837 |goto Valley of the Four Winds/0 66.8,32.5
|tip Farm them or purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Reef_Octopus_Total"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
collect 50 Reef Octopus##74864 |goto Krasarang Wilds/0 67.9,49.6
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Mushan_Ribs_Total"
kill Dustback Warder##65627+
kill Young Dustback Mushan##58427+
collect 50 Mushan Ribs##74834 |goto Valley of the Four Winds/0 24.6,75.9
step
label "Collect_Juicycrunch_Carrot_Total"
collect 315 Juicycrunch Carrot##74841
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_100_Year_Soy_Sauce_Total"
talk Nam Ironpaw##64395
collect 5 100 Year Soy Sauce##74853 |goto Valley of the Four Winds/0 53.5,51.2
|tip Trade 1 Ironpaw Token for a bag of 100 Year Soy Sauce.
step
label "Begin_Cooking_Way_Of_The_Pot"
talk Mei Mei Ironpaw##58714
Train Swirling Mist Soup |learn Swirling Mist Soup##104304 |goto Valley of the Four Winds/0 52.6,51.5
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. Look for Schools of fish to increase your chance of catching Jade Lungfish |cast Fishing##131474
collect 25 Jade Lungfish##74856 |goto The Jade Forest/0 55.0,71.1
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 25 Swirling Mist Soup>_
Reach Cooking Skill 550 |complete skill("Cooking") >= 550
step
talk Mei Mei Ironpaw##58714
learn Braised Turtle##104305 |goto Valley of the Four Winds/0 52.6,51.6
stickystart "Collect_Juicycrunch_Carrot_Braised_Turtle"
step
kill Wyrmhorn Turtle##56256+
collect 13 Raw Turtle Meat##74837 |goto Valley of the Four Winds/0 66.8,32.5
|tip Farm them or purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Juicycrunch_Carrot_Braised_Turtle"
collect 65 Juicycrunch Carrot##74841
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 13 Braised Turtle>_
Reach Cooking Skill 576 |complete skill("Cooking") >= 576
step
talk Mei Mei Ironpaw##58714
Train Banquet of the Pot |learn Banquet of the Pot##125596 |goto Valley of the Four Winds/0 52.6,51.6
stickystart "Collect_Mushan_Ribs_Banquet"
stickystart "Collect_Juicycrunch_Carrot_Banquet"
stickystart "Collect_100_Year_Soy_Sauce_Banquet"
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
collect 50 Reef Octopus##74864 |goto Krasarang Wilds/0 67.9,49.6
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Mushan_Ribs_Banquet"
kill Dustback Warder##65627+
kill Young Dustback Mushan##58427+
collect 50 Mushan Ribs##74834 |goto Valley of the Four Winds/0 24.6,75.9
step
label "Collect_Juicycrunch_Carrot_Banquet"
collect 250 Juicycrunch Carrot##74841
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_100_Year_Soy_Sauce_Banquet"
talk Nam Ironpaw##64395
collect 5 100 Year Soy Sauce##74853 |goto Valley of the Four Winds/0 53.5,51.2
|tip Trade 1 Ironpaw Token for a bag of 100 Year Soy Sauce.
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 5 Banquet of the Pot>_
Reach Cooking Skill 600 |complete skill("Cooking") >= 600
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Way of the Steamer",{
expansion="mists",
mopready=true,
description="This guide will walk you through completing the Way of the Steamer cooking mastery.",
},[[
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all the cooking materials before beginning.
_Or_
Click Here to Collect Materials as you continue the Way of the Steamer |confirm |next "Begin_Cooking_Way_Of_The_Steamer" |or
|complete skill("Cooking") >= 600 |only if default |or |next "Begin_Cooking_Way_Of_The_Steamer"
stickystart "Collect_Emperor_Salmon_Total"
stickystart "Collect_Wildfowl_Breast_Total"
stickystart "Collect_Scallions_Total"
stickystart "Collect_Jade_Squash_Total"
stickystart "Collect_100_Year_Soy_Sauce_Total"
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
collect 25 Giant Mantis Shrimp##74857 |goto Krasarang Wilds/0 67.9,49.6
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Emperor_Salmon_Total"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
collect 63 Emperor Salmon##74859 |goto Krasarang Wilds/0 37.4,35.2
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Wildfowl_Breast_Total"
kill Carp Hunter##58116+
collect 50 Wildfowl Breast##74839 |goto Krasarang Wilds/0 64.6,29.3
|tip Farm them or purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Scallions_Total"
collect 65 Scallions##74843
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Jade_Squash_Total"
collect 250 Jade Squash##74847
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_100_Year_Soy_Sauce_Total"
talk Nam Ironpaw##64395
collect 5 100 Year Soy Sauce##74853 |goto Valley of the Four Winds/0 53.5,51.2
|tip Trade 1 Ironpaw Token for a bag of 100 Year Soy Sauce.
step
label "Begin_Cooking_Way_Of_The_Steamer"
talk Yan Ironpaw##58715
Train Shrimp Dumplings |learn Shrimp Dumplings##104307 |q 31476/1 |goto Valley of the Four Winds/0 52.5,51.8
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
collect 25 Giant Mantis Shrimp##74857 |goto Krasarang Wilds/0 67.9,49.6
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 25 Shrimp Dumplings>_
Reach Cooking Skill 550 |complete skill("Cooking") >= 550
step
talk Yan Ironpaw##58715
Train Fire Spirit Salmon |learn Fire Spirit Salmon##104308 |goto Valley of the Four Winds/0 52.6,51.7
stickystart "Collect_Scallions_Salmon"
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
collect 13 Emperor Salmon##74859 |goto Krasarang Wilds/0 37.4,35.2
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Scallions_Salmon"
collect 65 Scallions##74843
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 13 Fire Spirit Salmon>_
Reach Cooking Skill 576 |complete skill("Cooking") >= 576
step
talk Yan Ironpaw##58715
Train Banquet of the Steamer |learn Banquet of the Steamer##125598 |goto Valley of the Four Winds/0 52.6,51.7
stickystart "Collect_Wildfowl_Breast_Banquet"
stickystart "Collect_Jade_Squash_Banquet"
stickystart "Collect_100_Year_Soy_Sauce_Banquet"
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
collect 50 Emperor Salmon##74859 |goto Krasarang Wilds/0 37.4,35.2
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Wildfowl_Breast_Banquet"
kill Carp Hunter##58116+
collect 50 Wildfowl Breast##74839 |goto Krasarang Wilds/0 64.6,29.3
|tip Farm them or purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Jade_Squash_Banquet"
collect 250 Jade Squash##74847
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_100_Year_Soy_Sauce_Banquet"
talk Nam Ironpaw##64395
collect 5 100 Year Soy Sauce##74853 |goto Valley of the Four Winds/0 53.5,51.2
|tip Trade 1 Ironpaw Token for a bag of 100 Year Soy Sauce.
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 5 Banquet of the Steamer>_
Reach Cooking Skill 600 |complete skill("Cooking") >= 600
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Way of the Wok",{
expansion="mists",
mopready=true,
description="This guide will walk you through completing the Way of the Wok cooking mastery.",
},[[
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all the cooking materials before beginning.
_Or_
Click Here to Collect Materials as you continue the Way of the Wok |confirm |next "Begin_Cooking_Way_Of_The_Wok" |or
|complete skill("Cooking") >= 600 |only if default |or |next "Begin_Cooking_Way_Of_The_Wok"
stickystart "Collect_Juicycrunch_Carrot_Total"
stickystart "Collect_Red_Blossom_Leek_Total"
stickystart "Collect_Reef_Octopus_Total"
stickystart "Collect_Giant_Mantis_Shrimp_Total"
stickystart "Collect_Raw_Crocolisk_Belly_Total"
stickystart "Collect_100_Year_Soy_Sauce_Total"
step
kill Carp Hunter##58116+
collect 13 Wildfowl Breast##74839 |goto Krasarang Wilds/0 64.6,29.3
|tip Farm them or purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Juicycrunch_Carrot_Total"
collect 50 Juicycrunch Carrot##74841
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Red_Blossom_Leek_Total"
collect 250 Red Blossom Leek##74844
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Reef_Octopus_Total"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
collect 13 Reef Octopus##74864 |goto Krasarang Wilds/0 67.9,49.6
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Giant_Mantis_Shrimp_Total"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
collect 50 Giant Mantis Shrimp##74857 |goto Krasarang Wilds/0 67.9,49.6
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Raw_Crocolisk_Belly_Total"
kill Coldbite Crocolisk##62023
collect 50 Raw Crocolisk Belly##75014 |goto Dread Wastes/0 65.6,58.2
|tip Farm them or purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_100_Year_Soy_Sauce_Total"
talk Nam Ironpaw##64395
collect 5 100 Year Soy Sauce##74853 |goto Valley of the Four Winds/0 53.5,51.2
|tip Trade 1 Ironpaw Token for a bag of 100 Year Soy Sauce.
step
label "Begin_Cooking_Way_Of_The_Wok"
talk Anthea Ironpaw##58713
Train Sauteed Carrots |learn Sauteed Carrots##104301 |goto Valley of the Four Winds/0 52.7,52.0
step
collect 50 Juicycrunch Carrot##74841
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 25 Sauteed Carrots>_
Reach Cooking Skill 550 |complete skill("Cooking") >= 550
step
talk Anthea Ironpaw##58713
Train Valley Stir Fry |learn Valley Stir Fry##104302 |goto Valley of the Four Winds/0 52.7,52.0
stickystart "Collect_Reef_Octopus_Stir_Fry"
step
kill Carp Hunter##58116+
collect 13 Wildfowl Breast##74839 |goto Krasarang Wilds/0 64.6,29.3
|tip Farm them or purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Reef_Octopus_Stir_Fry"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
collect 13 Reef Octopus##74864 |goto Krasarang Wilds/0 67.9,49.6
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 13 Valley Stir Fry>_
Reach Cooking Skill 576 |complete skill("Cooking") >= 576
step
talk Anthea Ironpaw##58713
Train Banquet of the Wok |learn Banquet of the Wok##125584 |goto Valley of the Four Winds/0 52.7,52.0
stickystart "Collect_Giant_Mantis_Shrimp_Banquet"
stickystart "Collect_Raw_Crocolisk_Belly_Banquet"
stickystart "Collect_100_Year_Soy_Sauce_Banquet"
step
collect 250 Red Blossom Leek##74844
|tip You can use Tiller's farm to plant and grow them.
|tip You can also purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Giant_Mantis_Shrimp_Banquet"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
collect 50 Giant Mantis Shrimp##74857 |goto Krasarang Wilds/0 67.9,49.6
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_Raw_Crocolisk_Belly_Banquet"
kill Coldbite Crocolisk##62023
collect 50 Raw Crocolisk Belly##75014 |goto Dread Wastes/0 65.6,58.2
|tip Farm them or purchase them from the Auction House.
|tip You can trade "Ironpaw Tokens" for bags of them from Nam Ironpaw in Halfhill.
step
label "Collect_100_Year_Soy_Sauce_Banquet"
talk Nam Ironpaw##64395
collect 5 100 Year Soy Sauce##74853 |goto Valley of the Four Winds/0 53.5,51.2
|tip Trade 1 Ironpaw Token for a bag of 100 Year Soy Sauce.
step
cast Cooking Fire##818
Open Your Cooking Crafting Panel:
_<Create 5 Banquet of the Wok>_
Reach Cooking Skill 600 |complete skill("Cooking") >= 600
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Fool's Cap",{
expansion="mists",
description="Fool's Cap can be gathered from the Dread Wastes.",
meta={goldtype="route",skillreq={herbalism=525},levelreq=89},
items={79011},
maps={"Dread Wastes"},
mopready=true,
},[[
step
map Dread Wastes/0
path follow smart; loop on; ants curved
path	62.97,56.16	64.75,55.56	66.39,56.43	66.83,58.38	67.09,61.56
path	66.02,62.93	64.87,63.23	60.45,64.33	56.84,64.56	53.60,63.54
path	49.24,61.97	46.73,61.53	45.51,63.50	44.12,63.43	42.64,62.44
path	41.49,65.06	41.11,68.27	40.51,70.56	39.17,71.24	38.37,69.01
path	38.01,66.51	36.34,65.38	34.49,66.33	33.15,66.50	32.86,64.84
path	34.87,62.55	36.84,61.92	38.39,61.56	39.37,59.99	37.26,58.37
path	34.86,57.70	33.23,59.33	31.43,61.36	30.47,60.43	30.62,58.32
path	30.12,55.13	30.27,52.48	30.88,52.01	32.40,52.80	34.03,54.12
path	36.59,54.90	38.85,55.54	40.94,56.72	43.35,57.32	44.83,56.87
path	48.00,58.14	50.81,54.90	52.77,54.28	55.30,56.63	55.95,55.13
path	58.42,55.41	59.85,57.63	62.06,58.42
click Fool's Cap##209355+
|tip Gather Fool's Cap along the path.
|tip They spawn in swampy areas.
collect Fool's Cap##79011 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Golden Lotus",{
expansion="mists",
description="Golden Lotus can be gathered from The Jade Forest in Pandaria.",
meta={goldtype="route",skillreq={herbalism=525},levelreq=85},
items={72238},
maps={"The Jade Forest"},
mopready=true,
},[[
step
map The Jade Forest/0
path follow smart; loop on; ants curved
path	48.49,39.61	49.74,37.75	50.52,36.40	51.37,36.01	52.22,35.17
path	53.55,33.51	54.90,32.64	55.27,34.18	54.31,35.81	53.75,38.63
path	53.48,40.44	53.29,43.45	53.30,45.60	53.01,47.88	52.68,50.13
path	51.79,52.71	51.09,54.22	50.64,55.73	50.88,57.78	51.52,60.10
path	51.63,63.24	53.21,64.39	54.17,66.55	55.53,68.51	55.74,70.37
path	56.57,71.12	57.65,70.57	58.64,69.52	59.60,69.57	60.32,71.16
path	61.46,71.96	61.52,73.58	61.52,75.48	61.82,76.86	63.90,77.73
path	64.58,79.11	65.10,81.92	66.09,84.47	65.75,88.24	64.42,89.42
path	63.29,92.12	61.86,93.67	61.05,93.19	60.44,92.39	59.88,91.63
path	58.02,93.00	56.18,92.82	55.67,91.96	56.77,90.59	58.70,90.09
path	57.59,86.95	56.68,86.40	55.41,85.78	55.08,84.92	54.87,81.04
path	54.44,78.82	53.87,79.21	53.77,81.23	52.96,82.40	52.73,84.26
path	52.06,86.07	51.42,86.38	50.89,88.14	48.57,90.26	47.65,91.06
path	45.98,91.67	43.99,91.54	43.55,88.83	43.26,83.99	42.97,82.29
path	43.91,80.49	45.51,79.24	46.76,80.35	48.51,80.69	49.77,79.86
path	50.69,78.74	50.46,76.22	50.49,73.91	50.65,71.37	50.25,68.97
path	48.75,67.48	46.90,65.96	44.72,65.10	41.78,63.76	40.23,64.16
path	38.69,65.76	36.95,66.10	36.15,64.87	36.57,62.40	35.77,62.05
path	34.41,62.61	33.47,61.06	33.30,59.40	34.65,58.93	35.62,56.72
path	37.02,56.25	38.57,55.79	39.13,54.07	38.68,53.30	36.89,52.69
path	34.73,52.60	33.24,52.56	31.48,52.90	30.20,52.19	30.34,50.38
path	30.78,47.94	30.06,46.05	30.31,44.19	30.86,41.47	31.42,38.92
path	31.70,35.31	30.81,32.07	30.08,30.56	29.88,28.75	28.39,29.65
path	27.17,30.13	26.14,28.92	25.98,26.87	26.75,25.87	27.77,26.47
path	28.75,25.65	29.79,23.64	30.92,21.94	31.00,20.17	30.80,17.33
path	31.27,14.86	32.51,12.96	34.36,12.77	36.23,11.04	37.80,9.97
path	39.55,10.57	41.69,11.40	43.19,13.53	43.42,15.06	44.22,15.92
path	44.38,17.70	45.23,18.51	46.87,18.08	48.54,18.08	49.88,18.66
path	49.71,20.73	48.88,24.22	47.98,26.68	47.54,28.08	47.20,30.13
path	47.17,32.69	47.14,35.25	46.96,37.10
click Golden Lotus##209354+
|tip Make sure you enable "Find Herbs" in the tracking menu on the minimap.
|tip Golden Lotus can spawn anywhere in Pandaria zones.
|tip They will spawn in place of other herbs, so pick everything.
collect Golden Lotus##72238 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Green Tea Leaf",{
expansion="mists",
description="Green Tea Leaf can be gathered from The Jade Forest.",
meta={goldtype="route",skillreq={herbalism=525},levelreq=85},
items={72234},
maps={"The Jade Forest"},
mopready=true,
},[[
step
map The Jade Forest/0
path follow smart; loop on; ants curved
path	48.49,39.61	49.74,37.75	50.52,36.40	51.37,36.01	52.22,35.17
path	53.55,33.51	54.90,32.64	55.27,34.18	54.31,35.81	53.75,38.63
path	53.48,40.44	53.29,43.45	53.30,45.60	53.01,47.88	52.68,50.13
path	51.79,52.71	51.09,54.22	50.64,55.73	50.88,57.78	51.52,60.10
path	51.63,63.24	53.21,64.39	54.17,66.55	55.53,68.51	55.74,70.37
path	56.57,71.12	57.65,70.57	58.64,69.52	59.60,69.57	60.32,71.16
path	61.46,71.96	61.52,73.58	61.52,75.48	61.82,76.86	63.90,77.73
path	64.58,79.11	65.10,81.92	66.09,84.47	65.75,88.24	64.42,89.42
path	63.29,92.12	61.86,93.67	61.05,93.19	60.44,92.39	59.88,91.63
path	58.02,93.00	56.18,92.82	55.67,91.96	56.77,90.59	58.70,90.09
path	57.59,86.95	56.68,86.40	55.41,85.78	55.08,84.92	54.87,81.04
path	54.44,78.82	53.87,79.21	53.77,81.23	52.96,82.40	52.73,84.26
path	52.06,86.07	51.42,86.38	50.89,88.14	48.57,90.26	47.65,91.06
path	45.98,91.67	43.99,91.54	43.55,88.83	43.26,83.99	42.97,82.29
path	43.91,80.49	45.51,79.24	46.76,80.35	48.51,80.69	49.77,79.86
path	50.69,78.74	50.46,76.22	50.49,73.91	50.65,71.37	50.25,68.97
path	48.75,67.48	46.90,65.96	44.72,65.10	41.78,63.76	40.23,64.16
path	38.69,65.76	36.95,66.10	36.15,64.87	36.57,62.40	35.77,62.05
path	34.41,62.61	33.47,61.06	33.30,59.40	34.65,58.93	35.62,56.72
path	37.02,56.25	38.57,55.79	39.13,54.07	38.68,53.30	36.89,52.69
path	34.73,52.60	33.24,52.56	31.48,52.90	30.20,52.19	30.34,50.38
path	30.78,47.94	30.06,46.05	30.31,44.19	30.86,41.47	31.42,38.92
path	31.70,35.31	30.81,32.07	30.08,30.56	29.88,28.75	28.39,29.65
path	27.17,30.13	26.14,28.92	25.98,26.87	26.75,25.87	27.77,26.47
path	28.75,25.65	29.79,23.64	30.92,21.94	31.00,20.17	30.80,17.33
path	31.27,14.86	32.51,12.96	34.36,12.77	36.23,11.04	37.80,9.97
path	39.55,10.57	41.69,11.40	43.19,13.53	43.42,15.06	44.22,15.92
path	44.38,17.70	45.23,18.51	46.87,18.08	48.54,18.08	49.88,18.66
path	49.71,20.73	48.88,24.22	47.98,26.68	47.54,28.08	47.20,30.13
path	47.17,32.69	47.14,35.25	46.96,37.10
click Green Tea Leaf##202751+
|tip Gather Green Tea Leaf along the path.
collect Green Tea Leaf##72234 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Rain Poppy",{
expansion="mists",
description="Rain Poppy can be gathered from The Jade Forest.",
meta={goldtype="route",skillreq={herbalism=525},levelreq=85},
items={72237},
maps={"The Jade Forest"},
mopready=true,
},[[
step
map The Jade Forest/0
path follow smart; loop off; ants curved
path	59.08,79.29	58.99,79.42	56.92,80.52	56.30,77.68	54.63,77.83
path	53.13,78.12	52.10,78.42	50.31,78.10	48.46,77.34	47.03,75.51
path	46.26,73.97	46.20,71.22	46.85,67.95	46.83,65.29	47.52,63.68
path	48.45,62.66	49.64,61.95	49.74,60.76	49.07,58.84	48.34,58.17
path	46.96,57.78	46.28,58.64	45.47,60.01	45.85,61.80	43.88,64.08
path	42.90,61.71	42.49,60.07	42.42,57.97	42.21,56.02	41.37,54.60
path	40.49,54.19	39.46,53.36	38.77,52.41	37.91,50.75	37.26,49.60
path	36.17,48.09	35.02,47.21	34.00,46.73	32.76,46.15	31.03,45.77
path	29.35,44.98	27.61,44.04	26.72,43.41	25.63,42.59	24.95,41.72
path	24.11,39.80	23.58,38.85	23.51,37.42	24.56,36.60	24.85,34.19
path	25.70,32.83	25.93,30.41	25.19,28.93	23.76,27.10
click Rain Poppy##209353+
|tip Gather Rain Poppy along the path.
|tip They generally spawn along the edge of the water.
collect Rain Poppy##72237 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Silkweed",{
expansion="mists",
description="Silkweed can be gathered from Valley of the Four Winds.",
meta={goldtype="route",skillreq={herbalism=525},levelreq=86},
items={72235},
maps={"Valley of the Four Winds"},
mopready=true,
},[[
step
map Valley of the Four Winds/0
path follow smart; loop on; ants curved
path	88.58,27.82	87.65,32.05	85.38,35.46	83.66,36.99	82.74,37.10
path	81.81,39.61	79.78,40.76	77.74,42.37	76.94,45.17	75.11,47.48
path	73.96,52.78	73.52,55.41	71.51,58.79	68.83,62.28	66.95,65.10
path	65.06,67.79	62.07,71.16	59.92,72.58	57.05,73.85	54.34,73.13
path	50.56,71.31	47.71,70.95	44.07,72.46	41.27,73.60	37.35,75.22
path	34.26,77.98	32.03,75.46	30.69,71.38	30.53,66.91	30.42,59.61
path	29.95,55.97	31.23,54.34	31.68,50.15	34.41,47.80	34.19,43.20
path	35.76,39.97	35.07,36.21	36.49,32.61	38.25,30.51	41.21,32.90
path	43.42,34.39	45.27,35.32	46.79,32.20	47.65,28.82	50.11,26.83
path	53.59,27.68	53.86,31.45	54.96,35.54	56.22,40.75	58.17,43.56
path	59.83,43.48	59.66,39.93	58.74,35.73	58.03,31.62	57.21,27.00
path	59.46,26.70	62.06,29.28	64.18,32.03	70.79,26.74	73.67,24.74
path	76.64,24.39	79.09,23.01	82.41,21.45	84.23,24.82
click Silkweed##209350+
|tip Gather Silkweed along the path.
collect Silkweed##72235 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Snow Lily",{
expansion="mists",
description="Snow Lily can be gathered from Kun-Lai Summit.",
meta={goldtype="route",skillreq={herbalism=525},levelreq=87},
items={79010},
maps={"Kun-Lai Summit"},
mopready=true,
},[[
step
map Kun-Lai Summit/0
path follow smart; loop on; ants curved
path	39.29,82.16	37.27,80.09	37.75,78.06	37.59,76.19	38.63,75.18
path	38.61,72.75	36.39,72.41	35.64,72.14	35.74,69.42	37.24,67.72
path	37.62,63.93	37.96,61.14	38.66,59.93	37.03,58.20	35.01,58.01
path	33.88,56.85	33.54,55.02	33.61,53.38	34.84,51.60	35.72,51.47
path	36.86,50.56	38.71,50.38	40.30,51.01	42.55,50.34	43.25,47.88
path	42.06,46.69	40.63,47.03	39.65,44.95	38.85,42.25	38.41,40.44
path	37.89,38.62	37.35,37.87	39.50,37.48	41.45,38.83	41.75,35.51
path	43.31,37.27	44.80,37.80	44.68,41.01	44.23,43.99	45.62,45.28
path	45.37,47.41	46.52,49.19	46.58,51.79	47.11,54.69	48.73,54.06
path	50.34,52.79	51.07,50.67	51.84,48.01	52.91,45.84	53.98,43.35
path	54.91,42.35	56.28,42.69	57.13,44.59	56.42,47.03	57.39,49.03
path	58.82,51.28	59.91,53.83	58.78,54.61	58.43,56.67	57.22,59.29
path	55.88,61.23	54.44,61.95	52.91,60.86	52.41,62.65	51.50,63.63
path	48.60,64.86	46.31,61.58	44.47,62.38	43.84,65.06	43.34,70.11
path	42.99,73.53	41.49,74.58	40.23,77.23	39.66,79.57
click Snow Lily##209351+
|tip Gather Snow Lily along the path.
|tip Enter caves for better results.
collect Snow Lily##79010 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Ghost Iron",{
expansion="mists",
description="Ghost Iron can be gathered from Krasarang Wilds.",
meta={goldtype="route",skillreq={mining=525},levelreq=86},
items={72092},
maps={"Krasarang Wilds"},
mopready=true,
},[[
step
map Krasarang Wilds/0
path follow smart; loop on; ants curved
path	74.53,5.54	72.12,8.18	70.82,10.73	70.71,13.73	69.89,17.75
path	68.43,18.24	67.22,18.25	63.68,22.21	61.29,23.15	58.91,24.49
map Valley of the Four Winds/0
path	60.49,77.81
map Krasarang Wilds/0
path	53.03,27.27	50.00,28.59	48.04,28.08	45.11,27.13	42.79,27.35
path	40.00,28.31	36.50,30.12	32.20,32.68	30.18,36.83	30.21,39.68
path	27.10,42.82	24.82,43.91	22.84,45.59	21.89,48.24	19.88,51.50
path	16.69,54.83	13.86,54.52	11.78,53.17	9.90,52.59	9.38,54.81
path	11.33,57.59	14.85,59.60	19.21,62.30	20.63,62.62	22.89,59.69
path	24.91,58.33	27.88,57.37	30.00,58.47	32.75,58.77	35.55,57.23
path	37.67,56.60	39.02,56.72	41.64,59.48	44.77,60.07	49.79,45.20
path	50.82,40.19	51.87,36.67	53.59,38.00	56.21,39.64	58.66,39.78
path	60.81,38.95	63.84,37.33	66.77,35.71	68.96,33.56	70.66,30.39
path	71.72,28.19	73.62,26.47	75.22,29.07	75.28,33.09	76.50,35.92
path	77.98,35.36	78.00,30.74	77.31,26.44	77.76,20.40	78.86,18.07
path	80.63,17.48	82.70,17.96	85.01,17.02	84.99,13.71	83.50,9.21
path	81.52,7.70	78.72,7.35
click Ghost Iron Deposit##209311+
click Rich Ghost Iron Deposit##209328+
|tip Gather Ghost Iron along the path.
collect Ghost Iron Ore##72092 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Kyparite",{
expansion="mists",
description="Kyparite can be gathered from the Dread Wastes.",
meta={goldtype="route",skillreq={mining=525},levelreq=89},
items={72093},
maps={"Dread Wastes"},
mopready=true,
},[[
step
map Dread Wastes/0
path follow smart; loop on; ants curved
path	57.49,14.06	55.81,17.08	54.38,19.53	52.23,20.51	50.71,21.37
path	49.81,24.40	49.49,26.69	46.99,26.44	45.03,25.92	43.76,28.11
path	43.89,30.86	45.60,33.15	48.31,36.52	47.25,38.99	46.27,41.47
path	47.27,43.08	49.19,44.88	50.85,44.37	52.17,43.10	54.43,45.83
path	56.22,47.60	58.85,46.44	60.98,48.04	63.10,48.13	65.50,49.59
path	67.62,48.97	67.26,45.82	67.05,42.57	68.26,39.41	70.14,37.17
path	71.46,33.55	71.77,30.02	70.53,24.75	69.50,21.19	68.67,17.19
path	67.71,13.20	64.79,12.60	62.17,13.69
click Kyparite Deposit##209312+
click Rich Kyparite Deposit##209329+
|tip Gather Kyparite along the path.
|tip Kyparite is a rare spawning deposit, so you may need to collect others to get them to spawn.
collect Kyparite Ore##72093 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Trillium",{
expansion="mists",
description="Trillium can be gathered from Townlong Steppes.",
meta={goldtype="route",skillreq={mining=525},levelreq=88},
items={{72103},{72094}},
maps={"Townlong Steppes"},
mopready=true,
},[[
step
map Townlong Steppes/0
path follow smart; loop on; ants curved
path	71.03,55.16	71.68,51.25	71.70,47.07	70.09,44.05	68.31,41.61
path	66.29,39.66	65.40,36.71	63.40,38.51	63.12,41.82	62.27,44.37
path	60.95,46.39	59.26,48.65	56.91,50.19	54.59,51.06	52.89,53.47
path	51.83,56.88	51.29,59.09	52.09,62.79	54.11,64.81	56.18,64.09
path	58.65,62.12	61.30,60.33	63.04,56.48	63.72,53.53	63.90,49.70
path	64.55,47.04	65.84,45.99	66.00,49.34	66.35,52.47	68.25,56.29
path	68.18,59.96	68.95,63.69	70.36,65.99	71.35,68.53	70.12,71.51
path	68.79,73.42	70.35,77.13	71.04,78.04	73.95,78.15	76.78,76.13
path	78.74,77.15	79.20,81.71	80.39,84.58	82.24,85.58	83.76,80.93
path	85.27,78.24	86.78,75.73	86.37,71.85
map Kun-Lai Summit/0
path	41.96,89.53	40.08,87.36
map Townlong Steppes/0
path	81.19,65.81
map Kun-Lai Summit/0
path	37.72,84.20	35.57,83.97	34.14,82.84	32.47,80.63
map Townlong Steppes/0
path	73.30,58.00
click Trillium Vein##209313+
click Rich Trillium Vein##209330+
|tip Gather Trillium along the path.
|tip They spawn in place of Ghost Iron Deposits, so mine any you see.
|tip These are a rare spawning node.
collect White Trillium Ore##72103 |n
collect Black Trillium Ore##72094 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Exotic Leather",{
expansion="mists",
description="Exotic Leather can be gathered from Dread Wastes.",
meta={goldtype="route",skillreq={skinning=500},levelreq=89},
items={72120},
maps={"Dread Wastes"},
mopready=true,
},[[
step
map Dread Wastes/0
path follow smart; loop on; ants curved
path	27.20,26.02	28.03,27.66	27.51,30.24	27.02,33.43	27.11,37.22
path	28.12,42.95	30.91,51.75	28.10,50.11	26.30,47.31	26.13,43.41
path	25.42,38.43	25.61,34.62	24.31,28.18
Kill enemies around this area
collect Exotic Leather##72120 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\General Farming Guides\\Spirit of Harmony",{
expansion="mists",
description="Eternal shadow can be gathered from Kun-Lai Summit.",
meta={goldtype="route",levelreq=87},
items={{89112},{76061}},
maps={"Kun-Lai Summit"},
mopready=true,
},[[
step
Enter the cave |goto Kun-Lai Summit/0 59.14,52.83 < 10
kill Mischievous Snow Sprite##59693+
|tip Run over Suspicious Snow Piles to spawn more Mischievous Snow Sprites.
|tip They are all over the cave.
collect Mote of Harmony##89112 |n |goto Kun-Lai Summit/0 59.00,51.20
|tip Combine 10 Motes of Harmony into one Spirit of Harmony
'|confirm
]])
