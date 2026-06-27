-- Bundled QuestCore guide
if not QuestCore then return end

QuestCore:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Midnight Alchemy (1-100)",{
description="This guide will walk you through leveling your Midnight Alchemy profession from 1-100.",
startlevel=78.00,
},[[
step
_NOTE:_
Approximate Materials Needed For 1-50
|tip Sunglass Vial: 340
|tip Tranquility Bloom: 268
|tip Argentleaf: 4
|tip Sanguithorn: 3
|tip Mana Lily: 3
|tip Oil of Heartwood: 20
|tip Mote of Light: 12
|tip Mote of Wild Magic: 4
|tip Mote of Primal Energy: 4
|tip These totals are approximate.
|tip These materials will get you to approximately 50 skill level. |only if default
|tip These materials will get you to approximately 52 skill level. |only if KulTiran
|tip These materials will get you to approximately 55 skill level. |only if Goblin
Click Here to Continue |confirm
step
talk Camberon##243357
Train Alchemy |skillmax Alchemy,300 |goto Silvermoon City M/0 47.04,51.97
step
talk Camberon##243357
Train Midnight Alchemy |skillmax Midnight Alchemy,100 |goto Silvermoon City M/0 47.04,51.97
step
talk Melaris##243359
buy 340 Sunglass Vial##240991 |goto Silvermoon City M/0 47.05,51.66
step
collect 36 Tranquility Bloom##236761, Tranquility Bloom##236767 |usebank
|tip Normal or High quality.
|tip Farm them with Herbalism or purchase them from the auction house.
step
create Silvermoon Health Potion##1230866,Midnight Alchemy,7 |goto Silvermoon City M/0 47.02,51.87 |only if default
create Silvermoon Health Potion##1230866,Midnight Alchemy,9 |goto Silvermoon City M/0 47.02,51.87 |only if KulTiran
create Silvermoon Health Potion##1230866,Midnight Alchemy,12 |goto Silvermoon City M/0 47.02,51.87 |only if Goblin
step
talk Melaris##243359
buy 20 Oil of Heartwood##247811 |goto Silvermoon City M/0 47.05,51.66 |usebank
step
create Recycle Potions##1233129,Midnight Alchemy,20 |goto Silvermoon City M/0 47.02,51.87 |only if default
create Recycle Potions##1233129,Midnight Alchemy,22 |goto Silvermoon City M/0 47.02,51.87 |only if KulTiran
create Recycle Potions##1233129,Midnight Alchemy,25 |goto Silvermoon City M/0 47.02,51.87 |only if Goblin
|tip Use the potions you already created or any others you prefer.
|tip If you do not reach the required skill for this step with the materials you have, skip it and proceed with the next recipe.
step
clicknpc Camberon's Cauldron##247420
learn Primal Philosopher's Stone##1230861 |goto Silvermoon City M/0 47.12,52.08
step
clicknpc Camberon's Cauldron##247420
learn Lightfused Mana Potion##1230865 |goto Silvermoon City M/0 47.12,52.08
step
talk Camberon##243357
learn Enlightenment Tonic##1230886 |goto Silvermoon City M/0 47.04,51.97
step
talk Camberon##243357
learn Entropic Extract##1230854 |goto Silvermoon City M/0 47.04,51.97
step
talk Camberon##243357
learn Mote of Wild Magic##1230887 |goto Silvermoon City M/0 47.04,51.97
step
talk Camberon##243357
learn Composite Flora##1230855 |goto Silvermoon City M/0 47.04,51.97
step
talk Camberon##243357
learn Refreshing Serum##1230868 |goto Silvermoon City M/0 47.04,51.97
step
collect 28 Tranquility Bloom##236761, Tranquility Bloom##236767 |usebank
|tip Normal or High quality.
|tip Farm them with Herbalism or purchase them from the auction house.
step
collect 3 Sanguithorn##236770, Sanguithorn##236771 |usebank
|tip Normal or High quality.
|tip Farm them with Herbalism or purchase them from the auction house.
step
collect 3 Mana Lily##236778, Mana Lily##236779 |usebank
|tip Normal or High quality.
|tip Farm them with Herbalism or purchase them from the auction house.
step
collect 4 Argentleaf##236776, Argentleaf##236777 |usebank
|tip Normal or High quality.
|tip Farm them with Herbalism or purchase them from the auction house.
step
collect 3 Stabilized Derivate##242651
|tip You should have these from reclaiming potions.
step
collect 12 Mote of Light##236949 |usebank
step
collect 4 Mote of Wild Magic##236951 |usebank
step
collect 4 Mote of Primal Energy##236950 |usebank
step
craft Refreshing Serum##1230868,Midnight Alchemy
firstcraft Refreshing Serum##1230868 |goto Silvermoon City M/0 47.02,51.87
step
craft Lightfused Mana Potion##1230865,Midnight Alchemy
firstcraft Lightfused Mana Potion##1230865 |goto Silvermoon City M/0 47.02,51.87
step
craft Primal Philosopher's Stone##1230861,Midnight Alchemy
firstcraft Primal Philosopher's Stone##1230861 |goto Silvermoon City M/0 47.02,51.87
step
craft Transmute: Mote of Wild Magic##1230887,Midnight Alchemy
firstcraft Transmute: Mote of Wild Magic##1230887 |goto Silvermoon City M/0 47.02,51.87
step
craft Composite Flora##1230855,Midnight Alchemy
firstcraft Composite Flora##1230855 |goto Silvermoon City M/0 47.02,51.87
step
craft Enlightenment Tonic##1230886,Midnight Alchemy
firstcraft Enlightenment Tonic##1230886 |goto Silvermoon City M/0 47.02,51.87
step
craft Entropic Extract##1230854,Midnight Alchemy
firstcraft Entropic Extract##1230854 |goto Silvermoon City M/0 47.02,51.87
step
collect 24 Tranquility Bloom##236761, Tranquility Bloom##236767 |usebank
|tip Normal or High quality.
|tip Farm them with Herbalism or purchase them from the auction house.
step
craft Entropic Extract##1230854+
reachskill Midnight Alchemy,32 |goto Silvermoon City M/0 47.02,51.87 |only if default
reachskill Midnight Alchemy,34 |goto Silvermoon City M/0 47.02,51.87 |only if KulTiran
reachskill Midnight Alchemy,37 |goto Silvermoon City M/0 47.02,51.87 |only if Goblin
|tip If you do not reach the required skill for this step with the materials you have, skip it and proceed with the next recipe.
step
collect 180 Tranquility Bloom##236761, Tranquility Bloom##236767 |usebank
|tip Normal or High quality.
|tip Farm them with Herbalism or purchase them from the auction house.
step
create Silvermoon Health Potion##1230866,Midnight Alchemy,50 |goto Silvermoon City M/0 47.02,51.87 |only if default
create Silvermoon Health Potion##1230866,Midnight Alchemy,52 |goto Silvermoon City M/0 47.02,51.87 |only if KulTiran
create Silvermoon Health Potion##1230866,Midnight Alchemy,55 |goto Silvermoon City M/0 47.02,51.87 |only if Goblin
step
reachskill Midnight Alchemy,100 |goto Silvermoon City M/0 47.02,51.87 |only if default
reachskill Midnight Alchemy,102 |goto Silvermoon City M/0 47.02,51.87 |only if KulTiran
reachskill Midnight Alchemy,105 |goto Silvermoon City M/0 47.02,51.87 |only if Goblin
|tip From this point, your choices vary based on your personal preferences.
|tip Depending on your specialization, you can craft personal items or work orders.
]])
QuestCore:RegisterGuide("Profession Guides\\Alchemy\\Midnight Alchemy Knowledge Treasures",{
description="This guide will walk you through collecting all Alchemy Knowledge Treasures.",
startlevel=68.00,
condition_end=function() return completedallq(89117,89115,83843,89114,89116,89113,89112,89118) end,
},[[
step
talk Camberon##243357
Train Alchemy |skillmax Alchemy,300 |goto Silvermoon City M/0 47.04,51.97
step
talk Camberon##243357
Train Midnight Alchemy |skillmax Midnight Alchemy,100 |goto Silvermoon City M/0 47.04,51.97
step
click Pristine Potion##525963
collect Pristine Potion##238538 |goto Silvermoon City M/0 47.75,51.68 |q 89117 |future
step
use the Pristine Potion##238538
Study the Pristine Potion |complete itemcount(238538) == 0
step
click Freshly Plucked Peacebloom##525965
collect Freshly Plucked Peacebloom##238536 |goto Silvermoon City M/0 49.10,75.85 |q 89115 |future
step
use the Freshly Plucked Peacebloom##238536
Study the Freshly Plucked Peacebloom |complete itemcount(238536) == 0
step
click Vial of Zul'Aman Oddities##525966
collect Vial of Zul'Aman Oddities##238535 |goto Zul Aman M/0 40.39,51.17 |q 89114 |future
step
use the Vial of Zul'Aman Oddities##238535
Study the Vial of Zul'Aman Oddities |complete itemcount(238535) == 0
step
click Measured Ladle##525964
|tip You need to phase Atal'Aman by completing the Zul'Aman leveling guide to progress the primary story.
collect Measured Ladle##238537 |goto Atal Aman M/1 49.09,23.17 |q 89116 |future
step
use the Measured Ladle##238537
Study the Measured Ladle |complete itemcount(238537) == 0
step
click Vial of Rootlands Oddities##525967
|tip Inside the building.
collect Vial of Rootlands Oddities##238534 |goto Harandar/0 34.77,24.69 |q 89113 |future
step
use the Vial of Rootlands Oddities##238534
Study the Vial of Rootlands Oddities |complete itemcount(238534) == 0
step
click Vial of Voidstorm Oddities
collect Vial of Voidstorm Oddities##238533 |goto Slayers Rise/0 41.96,40.62 |q 89112 |future
step
use the Vial of Voidstorm Oddities##238533
Study the Vial of Voidstorm Oddities |complete itemcount(238533) == 0
step
click Failed Experiment
collect Failed Experiment##238539 |goto Voidstorm/0 32.79,43.29 |q 89118 |future
step
use the Failed Experiment##238539
Study the Failed Experiment |complete itemcount(238539) == 0
]])
QuestCore:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Midnight Blacksmithing 1-100",{
description="This guide will walk you through leveling your Midnight Blacksmithing profession from 1-100.",
startlevel=78.00,
},[[
step
Approximate bill of materials:
|tip Refulgent Copper Ore: 125 or 625 if smelting your own Refulgent Copper Ingots.
|tip Umbral Tin Ore: 6
|tip Brilliant Silver Ore: 306
|tip Duskshrouded Stone: 13
|tip Petrified Root: 6
|tip Luminant Flux: 307
|tip These totals are approximate.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to approximately 70 skill level. |only if default
|tip These materials will get you to approximately 72 skill level. |only if KulTiran
|tip These materials will get you to approximately 75 skill level. |only if DarkIronDwarf
|tip These materials will get you to approximately 80 skill level. |only if LightforgedDraenei
Click Here to Continue |confirm
step
talk Bemarrin##241450
Train Blacksmithing |skillmax Blacksmithing,300 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
Train Midnight Blacksmithing |skillmax Midnight Blacksmithing,100 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Refulgent Copper Ingot##1230761 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Refulgent Whetstone##1230758 |goto Silvermoon City M/0 43.65,51.78
step
talk Eriden##241451
buy 307 Luminant Flux##243060 |goto Silvermoon City M/0 43.64,51.47
|tip Save these, you will use them for several steps later.
step
collect 125 Refulgent Copper Ore##237359, Refulgent Copper Ore##237361 |usebank
|tip Normal or High quality.
|tip Farm them with Mining or purchase them from the auction house.
|tip {y}Important:{} You will need at least 100 Refulgent Copper Ingots so purchase/farm 500 extra ore if that is cheaper than ingots from the auction house.
step
create Refulgent Copper Ingot##1230761,Midnight Blacksmithing,15 |goto Silvermoon City M/0 43.62,51.74 |only if default
create Refulgent Copper Ingot##1230761,Midnight Blacksmithing,17 |goto Silvermoon City M/0 43.62,51.74 |only if KulTiran
create Refulgent Copper Ingot##1230761,Midnight Blacksmithing,20 |goto Silvermoon City M/0 43.62,51.74 |only if DarkIronDwarf
create Refulgent Copper Ingot##1230761,Midnight Blacksmithing,25 |goto Silvermoon City M/0 43.62,51.74 |only if LightforgedDraenei
|tip You will use these later.
|tip If you purchased additional ore to smelt yourself, make all 136 now.
step
collect 12 Refulgent Copper Ingot##238197, Refulgent Copper Ingot##238198 |usebank
|tip Normal or High quality.
|tip Smelt them with Mining or purchase them from the auction house.
step
collect 2 Petrified Root##251285 |usebank
|tip Purchase them from the auction house.
step
collect 4 Duskshrouded Stone##242788, Duskshrouded Stone##242789 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
craft Refulgent Copper Ingot##1230761,Midnight Blacksmithing
firstcraft Refulgent Copper Ingot##1230761 |goto Silvermoon City M/0 43.62,51.74
step
craft Refulgent Whetstone##1230758,Midnight Blacksmithing
firstcraft Refulgent Whetstone##1230758 |goto Silvermoon City M/0 43.62,51.74
step
talk Bemarrin##241450
learn Blood-Tempered Greaves##1229629 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Refulgent Repair Hammer##1230764 |goto Silvermoon City M/0 43.65,51.78
step
talk Eriden##241451
buy 3 Luminant Flux##243060 |goto Silvermoon City M/0 43.64,51.47
step
collect 3 Refulgent Copper Ingot##238197, Refulgent Copper Ingot##238198 |usebank
|tip Normal or High quality.
|tip Smelt them with Mining or purchase them from the auction house.
step
collect 1 Duskshrouded Stone##242788, Duskshrouded Stone##242789 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
craft Blood-Tempered Greaves##1229629,Midnight Blacksmithing
firstcraft Blood-Tempered Greaves##1229629 |goto Silvermoon City M/0 43.62,51.74
step
craft Refulgent Repair Hammer##1230764,Midnight Blacksmithing
firstcraft Refulgent Repair Hammer##1230764 |goto Silvermoon City M/0 43.62,51.74
step
talk Bemarrin##241450
learn Blood-Tempered Chestplate##1229628 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Thalassian Pickaxe##1229609 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Thalassian Sickle##1229610 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Thalassian Skinning Knife##1229608 |goto Silvermoon City M/0 43.65,51.78
step
talk Eriden##241451
buy 10 Luminant Flux##243060 |goto Silvermoon City M/0 43.64,51.47
step
collect 21 Refulgent Copper Ingot##238197, Refulgent Copper Ingot##238198 |usebank
|tip Normal or High quality.
|tip Smelt them with Mining or purchase them from the auction house.
step
craft Blood-Tempered Chestplate##1229628,Midnight Blacksmithing
firstcraft Blood-Tempered Chestplate##1229628 |goto Silvermoon City M/0 43.62,51.74
step
craft Thalassian Pickaxe##1229609,Midnight Blacksmithing
firstcraft Thalassian Pickaxe##1229609 |goto Silvermoon City M/0 43.62,51.74
step
craft Thalassian Sickle##1229610,Midnight Blacksmithing
firstcraft Thalassian Sickle##1229610 |goto Silvermoon City M/0 43.62,51.74
step
craft Thalassian Skinning Knife##1229608,Midnight Blacksmithing
firstcraft Thalassian Skinning Knife##1229608 |goto Silvermoon City M/0 43.62,51.74
step
talk Bemarrin##241450
learn Gloaming Alloy##1230762 |goto Silvermoon City M/0 43.65,51.78
step
talk Eriden##241451
buy 4 Luminant Flux##243060 |goto Silvermoon City M/0 43.64,51.47
step
collect 3 Refulgent Copper Ingot##238197, Refulgent Copper Ingot##238198 |usebank
|tip Normal or High quality.
|tip Smelt them with Mining or purchase them from the auction house.
step
collect 6 Umbral Tin Ore##237362, Umbral Tin Ore##237363 |usebank
|tip Normal or High quality.
|tip Farm them with Mining or purchase them from the auction house.
step
craft Gloaming Alloy##1230762,Midnight Blacksmithing
firstcraft Gloaming Alloy##1230762 |goto Silvermoon City M/0 43.62,51.74
step
talk Bemarrin##241450
learn Blood-Tempered Bracers##1229623 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Blood-Tempered Greatbelt##1229627 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Dawnforged Edge##1229619 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Dawnforged Ritual Knife##1229620 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Primalforged Heavy Axe##1229614 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Thalassian Blacksmith's Hammer##1229606 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Thalassian Leatherworker's Knife##1229607 |goto Silvermoon City M/0 43.65,51.78
step
talk Eriden##241451
buy 12 Luminant Flux##243060 |goto Silvermoon City M/0 43.64,51.47
step
collect 26 Refulgent Copper Ingot##238197, Refulgent Copper Ingot##238198 |usebank
|tip Normal or High quality.
|tip Smelt them with Mining or purchase them from the auction house.
step
craft Blood-Tempered Bracers##1229623,Midnight Blacksmithing
firstcraft Blood-Tempered Bracers##1229623 |goto Silvermoon City M/0 43.62,51.74
step
craft Blood-Tempered Greatbelt##1229627,Midnight Blacksmithing
firstcraft Blood-Tempered Greatbelt##1229627 |goto Silvermoon City M/0 43.62,51.74
step
craft Dawnforged Edge##1229619,Midnight Blacksmithing
firstcraft Dawnforged Edge##1229619 |goto Silvermoon City M/0 43.62,51.74
step
craft Dawnforged Ritual Knife##1229620,Midnight Blacksmithing
firstcraft Dawnforged Ritual Knife##1229620 |goto Silvermoon City M/0 43.62,51.74
step
craft Primalforged Heavy Axe##1229614,Midnight Blacksmithing
firstcraft Primalforged Heavy Axe##1229614 |goto Silvermoon City M/0 43.62,51.74
step
craft Thalassian Blacksmith's Hammer##1229606,Midnight Blacksmithing
firstcraft Thalassian Blacksmith's Hammer##1229606 |goto Silvermoon City M/0 43.62,51.74
step
craft Thalassian Leatherworker's Knife##1229607,Midnight Blacksmithing
firstcraft Thalassian Leatherworker's Knife##1229607 |goto Silvermoon City M/0 43.62,51.74
step
talk Bemarrin##241450
learn Blood-Tempered Basinet##1229625 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Blood-Tempered Bulwark##1229626 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Dawnforged Long Blade##1229618 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Dawnforged Splitter##1229615 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Sterling Alloy##1230763 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Thalassian Blacksmith's Toolbox##1229611 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Thalassian Leatherworker's Toolset##1229612 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Thalassian Needle Set##1229613 |goto Silvermoon City M/0 43.65,51.78
step
talk Eriden##241451
buy 24 Luminant Flux##243060 |goto Silvermoon City M/0 43.64,51.47
step
collect 32 Refulgent Copper Ingot##238197, Refulgent Copper Ingot##238198 |usebank
|tip Normal or High quality.
|tip Smelt them with Mining or purchase them from the auction house.
step
collect 6 Brilliant Silver Ore##237364, Brilliant Silver Ore##237365 |usebank
|tip Normal or High quality.
|tip Farm them with Mining or purchase them from the auction house.
step
craft Blood-Tempered Basinet##1229625,Midnight Blacksmithing
firstcraft Blood-Tempered Basinet##1229625 |goto Silvermoon City M/0 43.62,51.74
step
craft Blood-Tempered Bulwark##1229626,Midnight Blacksmithing
firstcraft Blood-Tempered Bulwark##1229626 |goto Silvermoon City M/0 43.62,51.74
step
craft Dawnforged Long Blade##1229618,Midnight Blacksmithing
firstcraft Dawnforged Long Blade##1229618 |goto Silvermoon City M/0 43.62,51.74
step
craft Dawnforged Splitter##1229615,Midnight Blacksmithing
firstcraft Dawnforged Splitter##1229615 |goto Silvermoon City M/0 43.62,51.74
step
craft Sterling Alloy##1230763,Midnight Blacksmithing
firstcraft Sterling Alloy##1230763 |goto Silvermoon City M/0 43.62,51.74
step
craft Thalassian Blacksmith's Toolbox##1229611,Midnight Blacksmithing
firstcraft Thalassian Blacksmith's Toolbox##1229611 |goto Silvermoon City M/0 43.62,51.74
step
craft Thalassian Leatherworker's Toolset##1229612,Midnight Blacksmithing
firstcraft Thalassian Leatherworker's Toolset##1229612 |goto Silvermoon City M/0 43.62,51.74
step
craft Thalassian Needle Set##1229613,Midnight Blacksmithing
firstcraft Thalassian Needle Set##1229613 |goto Silvermoon City M/0 43.62,51.74
step
talk Bemarrin##241450
learn Blood-Tempered Gauntlets##1229621 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Blood-Tempered Pauldrons##1229622 |goto Silvermoon City M/0 43.65,51.78
step
talk Eriden##241451
buy 3 Luminant Flux##243060 |goto Silvermoon City M/0 43.64,51.47
step
collect 5 Refulgent Copper Ingot##238197, Refulgent Copper Ingot##238198 |usebank
|tip Normal or High quality.
|tip Smelt them with Mining or purchase them from the auction house.
step
craft Blood-Tempered Gauntlets##1229621,Midnight Blacksmithing
firstcraft Blood-Tempered Gauntlets##1229621 |goto Silvermoon City M/0 43.62,51.74
step
craft Blood-Tempered Pauldrons##1229622,Midnight Blacksmithing
firstcraft Blood-Tempered Pauldrons##1229622 |goto Silvermoon City M/0 43.62,51.74
step
talk Bemarrin##241450
learn Blood-Tempered Leggings##1229624 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Dawnforged War Mace##1229616 |goto Silvermoon City M/0 43.65,51.78
step
talk Eriden##241451
buy 3 Luminant Flux##243060 |goto Silvermoon City M/0 43.64,51.47
step
collect 7 Refulgent Copper Ingot##238197, Refulgent Copper Ingot##238198 |usebank
|tip Normal or High quality.
|tip Smelt them with Mining or purchase them from the auction house.
step
craft Blood-Tempered Leggings##1229624,Midnight Blacksmithing
firstcraft Blood-Tempered Leggings##1229624 |goto Silvermoon City M/0 43.62,51.74
step
craft Dawnforged War Mace##1229616,Midnight Blacksmithing
firstcraft Dawnforged War Mace##1229616 |goto Silvermoon City M/0 43.62,51.74
step
talk Bemarrin##241450
learn Primalforged Knuckles##1229617 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
learn Refulgent Weightstone##1230759 |goto Silvermoon City M/0 43.65,51.78
step
talk Eriden##241451
buy 16 Luminant Flux##243060 |goto Silvermoon City M/0 43.64,51.47
step
collect 15 Refulgent Copper Ingot##238197, Refulgent Copper Ingot##238198 |usebank
|tip Normal or High quality.
|tip Smelt them with Mining or purchase them from the auction house.
step
collect 2 Petrified Root##251285 |usebank
|tip Purchase them from the auction house.
step
collect 4 Duskshrouded Stone##242788, Duskshrouded Stone##242789 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
craft Primalforged Knuckles##1229617,Midnight Blacksmithing
firstcraft Primalforged Knuckles##1229617 |goto Silvermoon City M/0 43.62,51.74
step
craft Refulgent Weightstone##1230759,Midnight Blacksmithing
firstcraft Refulgent Weightstone##1230759 |goto Silvermoon City M/0 43.62,51.74
step
talk Bemarrin##241450
learn Refulgent Razorstone##1230760 |goto Silvermoon City M/0 43.65,51.78
step
talk Eriden##241451
buy 15 Luminant Flux##243060 |goto Silvermoon City M/0 43.64,51.47
step
collect 12 Refulgent Copper Ingot##238197, Refulgent Copper Ingot##238198 |usebank
|tip Normal or High quality.
|tip Smelt them with Mining or purchase them from the auction house.
step
collect 2 Petrified Root##251285 |usebank
|tip Purchase them from the auction house.
step
collect 4 Duskshrouded Stone##242788, Duskshrouded Stone##242789 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
craft Refulgent Razorstone##1230760,Midnight Blacksmithing
firstcraft Refulgent Razorstone##1230760 |goto Silvermoon City M/0 43.62,51.74
step
talk Eriden##241451
buy 200 Luminant Flux##243060 |goto Silvermoon City M/0 43.64,51.47
step
collect 150 Refulgent Copper Ingot##238197, Refulgent Copper Ingot##238198 |usebank
|tip Normal or High quality.
|tip Smelt them with Mining or purchase them from the auction house.
step
collect 300 Brilliant Silver Ore##237364, Brilliant Silver Ore##237365 |usebank
|tip Normal or High quality.
|tip Farm them with Mining or purchase them from the auction house.
step
create Sterling Alloy##1230763,Midnight Blacksmithing,70 |goto Silvermoon City M/0 43.62,51.74 |only if default
create Sterling Alloy##1230763,Midnight Blacksmithing,72 |goto Silvermoon City M/0 43.62,51.74 |only if KulTiran
create Sterling Alloy##1230763,Midnight Blacksmithing,75 |goto Silvermoon City M/0 43.62,51.74 |only if DarkIronDwarf
create Sterling Alloy##1230763,Midnight Blacksmithing,80 |goto Silvermoon City M/0 43.62,51.74 |only if LightforgedDraenei
step
Reach Skill Level 100 in Midnight Blacksmithing |skill Midnight Blacksmithing,100 |or |only if default
Reach Skill Level 102 in Midnight Blacksmithing |skill Midnight Blacksmithing,102 |or |only if KulTiran
Reach Skill Level 105 in Midnight Blacksmithing |skill Midnight Blacksmithing,105 |or |only if DarkIronDwarf
Reach Skill Level 110 in Midnight Blacksmithing |skill Midnight Blacksmithing,110 |or |only if LightforgedDraenei
|tip From this point, it becomes very difficult to continue gaining points as soulbound materials are required.
|tip Your best path is the Crafting Order system to craft items for other players with provided materials.
|tip This makes it much cheaper to craft one of each recipe for the first craft bonus.
]])
QuestCore:RegisterGuide("Profession Guides\\Blacksmithing\\Midnight Blacksmithing Knowledge Treasures",{
description="This guide will walk you through collecting all Blacksmithing Knowledge Treasures.",
startlevel=68.00,
condition_end=function() return completedallq(89183,89184,89177,89180,89178,89179,89182,89181) end,
},[[
step
talk Bemarrin##241450
Train Blacksmithing |skillmax Blacksmithing,300 |goto Silvermoon City M/0 43.65,51.78
step
talk Bemarrin##241450
Train Midnight Blacksmithing |skillmax Midnight Blacksmithing,100 |goto Silvermoon City M/0 43.65,51.78
step
click Sin'dorei Master's Forgemace##525955
|tip Inside the building.
collect Sin'dorei Master's Forgemace##238546 |goto Silvermoon City M/0 49.17,61.34 |q 89183 |future
step
use the Sin'dorei Master's Forgemace##238546
Study the Sin'dorei Master's Forgemace |complete itemcount(238546) == 0
step
click Silvermoon Blacksmith's Hammer##525954
collect Silvermoon Blacksmith's Hammer##238547 |goto Silvermoon City M/0 48.53,74.39 |q 89184 |future
step
use the Silvermoon Blacksmith's Hammer##238547
Study the Silvermoon Blacksmith's Hammer |complete itemcount(238547) == 0
step
click Deconstructed Forge Techniques##525961
|tip Inside the building.
collect Deconstructed Forge Techniques##238540 |goto Silvermoon City M/0 26.98,60.29 |q 89177 |future
step
use the Deconstructed Forge Techniques##238540
Study the Deconstructed Forge Techniques |complete itemcount(238540) == 0
step
click Metalworking Cheat Sheet##525958
|tip Inside the building.
collect Metalworking Cheat Sheet##238543 |goto Eversong Woods M/0 56.84,40.77 |q 89180 |future
step
use the Metalworking Cheat Sheet##238543
Study the Metalworking Cheat Sheet |complete itemcount(238543) == 0
step
click Silvermoon Smithing Kit##525960
collect Silvermoon Smithing Kit##238541 |goto Eversong Woods M/0 48.37,75.83 |q 89178 |future
step
use the Silvermoon Smithing Kit##238541
Study the Silvermoon Smithing Kit |complete itemcount(238541) == 0
step
click Carefully Racked Spear##525959
|tip Inside the building.
|tip You need to phase Atal'Aman by completing the Zul'Aman leveling guide to progress the primary story.
collect Carefully Racked Spear##238542 |goto Atal Aman M/1 33.14,65.81 |q 89179 |future
step
use the Carefully Racked Spear##238542
Study the Carefully Racked Spear |complete itemcount(238542) == 0
step
click Rutaani Floratender's Sword##525956
|tip On top of the mushroom.
collect Rutaani Floratender's Sword##238545 |goto Harandar/0 66.34,50.84 |q 89182 |future
step
use the Rutaani Floratender's Sword##238545
Study the Rutaani Floratender's Sword |complete itemcount(238545) == 0
step
click Voidstorm Defense Spear##525957
collect Voidstorm Defense Spear##238544 |goto Slayers Rise/0 30.51,68.99 |q 89181 |future
step
use the Voidstorm Defense Spear##238544
Study the Voidstorm Defense Spear |complete itemcount(238544) == 0
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Leveling Guides\\Midnight Cooking 1-100",{
description="This guide will walk you through leveling your Midnight Cooking profession from 1-100.",
startlevel=78.00,
},[[
step
talk Sylann##257913
|tip Inside the building.
Train Cooking |skillmax Cooking,300 |goto Silvermoon City M/0 56.36,69.82
step
talk Sylann##257913
|tip Inside the building.
Train Midnight Cooking |skillmax Midnight Cooking,100 |goto Silvermoon City M/0 56.36,69.82
step
talk Sylann##257913
|tip Inside the building.
learn Spiced Biscuits##1226200 |goto Silvermoon City M/0 56.36,69.82
step
talk Quelis##257914
|tip Inside the building.
buy 250 A Big Ol' Stick of Butter##242643 |goto Silvermoon City M/0 56.44,69.92
buy 750 Pouch of Spices##242646 |goto Silvermoon City M/0 56.44,69.92
|tip You will level from 1-100 with just these materials.
step
create Spiced Biscuits##1226200,Midnight Cooking,35 |goto Silvermoon City M/0 56.36,69.82 |only if default
create Spiced Biscuits##1226200,Midnight Cooking,50 |goto Silvermoon City M/0 56.36,69.82 |only if Pandaren
|tip {y}Important:{} Create all 250 Spiced Biscuits using the vendor materials.
step
talk Sylann##257913
|tip Inside the building.
learn Hearty Food##1226167 |goto Silvermoon City M/0 56.36,69.82
step
create Hearty Food##1226167,Midnight Cooking,100 |goto Silvermoon City M/0 56.36,69.82 |only if default
create Hearty Food##1226167,Midnight Cooking,115 |goto Silvermoon City M/0 56.36,69.82 |only if Pandaren
|tip Use Hearty Food on the Spiced Biscuits you made until you reach 100.
|tip If you come up short, buy more materials from the vendor.
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Leveling Guides\\Midnight Enchanting 1-100",{
description="This guide will walk you through leveling your Midnight Enchanting profession from 1-100.",
startlevel=78.00,
},[[
step
Approximate bill of materials:
|tip Eversinging Dust: 445
|tip Radiant Shard: 24
|tip Mote of Light: 10
|tip Mote of Wild Magic: 10
|tip Mote of Primal Energy: 8
|tip Mote of Pure Void: 2
|tip These totals are approximate.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to approximately 62 skill level. |only if default
|tip These materials will get you to approximately 64 skill level. |only if KulTiran
|tip These materials will get you to approximately 77 skill level. |only if BloodElf
Click Here to Continue |confirm
step
talk Dolothos##243349
Train Enchanting |skillmax Enchanting,300 |goto Silvermoon City M/0 48.00,53.84
step
talk Dolothos##243349
Train Midnight Enchanting |skillmax Midnight Enchanting,100 |goto Silvermoon City M/0 48.00,53.84
step
talk Lyna##243350
buy 30 Refulgent Copper Rod##244174 |goto Silvermoon City M/0 47.92,53.44
|tip You need around 30 pieces of gear to disenchant for 1-25.
|tip You can use those instead of making Runed Refulgent Copper Rods to disenchant.
step
collect 150 Eversinging Dust##243599, Eversinging Dust##243600 |usebank
|tip Normal or High quality.
|tip Disenchant items for them with Enchanting or purchase them from the auction house.
|tip You need around 30 pieces of gear to disenchant for 1-25.
|tip You can use those instead of making Runed Refulgent Copper Rods to disenchant.
step
cast Disenchant##1280952
create Runed Refulgent Copper Rod##1236486,Midnight Enchanting,25 |goto Silvermoon City M/0 48.00,53.84 |only if default
create Runed Refulgent Copper Rod##1236486,Midnight Enchanting,27 |goto Silvermoon City M/0 48.00,53.84 |only if KulTiran
create Runed Refulgent Copper Rod##1236486,Midnight Enchanting,40 |goto Silvermoon City M/0 48.00,53.84 |only if BloodElf
|tip {y}Important:{y} Disenchant the Runed Refulgent Copper Rods or gear.
|tip You need around 30 pieces of gear to disenchant for 1-25.
|tip You can use those instead of making Runed Refulgent Copper Rods to disenchant.
|tip If you come up a point or two short, craft Enchant Helm - Rune of Avoidance and/or Thalassian Phoenix Oil for First Craft Bonuses.
step
talk Dolothos##243349
learn Enchant Ring - Thalassian Versatility##1236087 |goto Silvermoon City M/0 48.00,53.84
step
talk Dolothos##243349
learn Enchant Shoulders - Nature's Grace##1236075 |goto Silvermoon City M/0 48.00,53.84
step
talk Dolothos##243349
learn Enchant Helm - Rune of Avoidance##1236083 |goto Silvermoon City M/0 48.00,53.84
step
talk Dolothos##243349
learn Enchant Weapon - Berserker's Rage##1236067 |goto Silvermoon City M/0 48.00,53.84
step
talk Dolothos##243349
learn Thalassian Phoenix Oil##1236491 |goto Silvermoon City M/0 48.00,53.84
step
talk Dolothos##243349
learn Enchant Ring - Nature's Wrath##1236073 |goto Silvermoon City M/0 48.00,53.84
step
talk Dolothos##243349
learn Illusory Adornment - Blooming Light##1236098 |goto Silvermoon City M/0 48.00,53.84
step
talk Melaris##243359
buy 1 Sunglass Vial##240991 |goto Silvermoon City M/0 47.04,51.66
step
collect 92 Eversinging Dust##243599, Eversinging Dust##243600 |usebank
|tip Normal or High quality.
|tip Disenchant items for them with Enchanting or purchase them from the auction house.
step
collect 3 Radiant Shard##243602, Radiant Shard##243603 |usebank
|tip Normal or High quality.
|tip Disenchant items for them with Enchanting or purchase them from the auction house.
step
collect 6 Mote of Light##236949 |usebank
step
craft Enchant Helm - Rune of Avoidance##1236083,Midnight Enchanting
firstcraft Enchant Helm - Rune of Avoidance##1236083 |goto Silvermoon City M/0 48.00,53.84
step
craft Thalassian Phoenix Oil##1236491,Midnight Enchanting
firstcraft Thalassian Phoenix Oil##1236491 |goto Silvermoon City M/0 48.00,53.84
step
craft Enchant Ring - Nature's Wrath##1236073,Midnight Enchanting
firstcraft Enchant Ring - Nature's Wrath##1236073 |goto Silvermoon City M/0 48.00,53.84
step
craft Illusory Adornment - Blooming Light##1236098,Midnight Enchanting
firstcraft Illusory Adornment - Blooming Light##1236098 |goto Silvermoon City M/0 48.00,53.84
step
cast Disenchant##1280952
create Enchant Ring - Nature's Wrath##1236073,Midnight Enchanting,38 |goto Silvermoon City M/0 48.00,53.84 |only if default
create Enchant Ring - Nature's Wrath##1236073,Midnight Enchanting,40 |goto Silvermoon City M/0 48.00,53.84 |only if KulTiran
create Enchant Ring - Nature's Wrath##1236073,Midnight Enchanting,53 |goto Silvermoon City M/0 48.00,53.84 |only if BloodElf
|tip Craft 13-14 of these.
|tip Alternatively, you can craft Illusory Adornment - Blooming Light if that is cheaper.
step
talk Dolothos##243349
learn Enchant Shoulders - Flight of the Eagle##1236061 |goto Silvermoon City M/0 48.00,53.84
step
talk Dolothos##243349
learn Enchant Helm - Hex of Leeching##1236055 |goto Silvermoon City M/0 48.00,53.84
step
collect 30 Eversinging Dust##243599, Eversinging Dust##243600 |usebank
|tip Normal or High quality.
|tip Disenchant items for them with Enchanting or purchase them from the auction house.
step
collect 6 Radiant Shard##243602, Radiant Shard##243603 |usebank
|tip Normal or High quality.
|tip Disenchant items for them with Enchanting or purchase them from the auction house.
step
craft Enchant Shoulders - Flight of the Eagle##1236061,Midnight Enchanting
firstcraft Enchant Shoulders - Flight of the Eagle##1236061 |goto Silvermoon City M/0 48.00,53.84
step
craft Enchant Helm - Hex of Leeching##1236055,Midnight Enchanting
firstcraft Enchant Helm - Hex of Leeching##1236055 |goto Silvermoon City M/0 48.00,53.84
step
talk Dolothos##243349
learn Enchant Weapon - Arcane Mastery##1236097 |goto Silvermoon City M/0 48.00,53.84
step
talk Dolothos##243349
learn Thalassian Spellweaver's Wand##1236489 |goto Silvermoon City M/0 48.00,53.84
step
collect 45 Eversinging Dust##243599, Eversinging Dust##243600 |usebank
|tip Normal or High quality.
|tip Disenchant items for them with Enchanting or purchase them from the auction house.
step
collect 9 Radiant Shard##243602, Radiant Shard##243603 |usebank
|tip Normal or High quality.
|tip Disenchant items for them with Enchanting or purchase them from the auction house.
step
cast Disenchant##1280952
create Thalassian Spellweaver's Wand##1236489,Midnight Enchanting,52 |goto Silvermoon City M/0 48.00,53.84 |only if default
create Thalassian Spellweaver's Wand##1236489,Midnight Enchanting,54 |goto Silvermoon City M/0 48.00,53.84 |only if KulTiran
create Thalassian Spellweaver's Wand##1236489,Midnight Enchanting,67 |goto Silvermoon City M/0 48.00,53.84 |only if BloodElf
step
talk Dolothos##243349
learn Enchant Ring - Amani Mastery##1236058 |goto Silvermoon City M/0 48.00,53.84
step
talk Dolothos##243349
learn Enchant Helm - Blessing of Speed##1236070 |goto Silvermoon City M/0 48.00,53.84
step
talk Dolothos##243349
learn Enchant Shoulders - Thalassian Recovery##1236090 |goto Silvermoon City M/0 48.00,53.84
step
collect 35 Eversinging Dust##243599, Eversinging Dust##243600 |usebank
|tip Normal or High quality.
|tip Disenchant items for them with Enchanting or purchase them from the auction house.
step
collect 6 Radiant Shard##243602, Radiant Shard##243603 |usebank
|tip Normal or High quality.
|tip Disenchant items for them with Enchanting or purchase them from the auction house.
step
craft Enchant Ring - Amani Mastery##1236058,Midnight Enchanting
firstcraft Enchant Ring - Amani Mastery##1236058 |goto Silvermoon City M/0 48.00,53.84
step
craft Enchant Helm - Blessing of Speed##1236070,Midnight Enchanting
firstcraft Enchant Helm - Blessing of Speed##1236070 |goto Silvermoon City M/0 48.00,53.84
step
craft Enchant Shoulders - Thalassian Recovery##1236090,Midnight Enchanting
firstcraft Enchant Shoulders - Thalassian Recovery##1236090 |goto Silvermoon City M/0 48.00,53.84
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Blood Elf##1236461 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Night Elf##1236475 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Dwarf##1236466 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Earthen##1236594 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Undead##1236481 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Human##1236470 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Orc##1236477 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Draenei##1236465 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Tauren##1236479 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Nightborne##1236476 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Void Elf##1236482 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Vulpera##1236483 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Worgen##1236484 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Kul Tiran##1236471 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Zandalari Troll##1236485 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Highmountain Tauren##1236469 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Lightforged Draenei##1236472 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Dark Iron Dwarf##1236463 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Pandaren##1236478 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Troll##1236480 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Gnome##1236467 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Goblin##1236468 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Mag'har Orc##1236473 |goto Silvermoon City M/0 39.54,51.00
step
talk Jennara Sunglow##254051
|tip In the top floor of the building.
learn Gleeful Glamour - Mechagnome##1236474 |goto Silvermoon City M/0 39.54,51.00
step
collect 48 Eversinging Dust##243599, Eversinging Dust##243600 |usebank
|tip Normal or High quality.
|tip Disenchant items for them with Enchanting or purchase them from the auction house.
step
collect 4 Mote of Light##236949 |usebank
step
collect 10 Mote of Wild Magic##236951 |usebank
step
collect 8 Mote of Primal Energy##236950 |usebank
step
collect 2 Mote of Pure Void##236952 |usebank
step
craft Gleeful Glamour - Blood Elf##1236461,Midnight Enchanting
firstcraft Gleeful Glamour - Blood Elf##1236461 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Night Elf##1236475,Midnight Enchanting
firstcraft Gleeful Glamour - Night Elf##1236475 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Dwarf##1236466,Midnight Enchanting
firstcraft Gleeful Glamour - Dwarf##1236466 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Earthen##1236594,Midnight Enchanting
firstcraft Gleeful Glamour - Earthen##1236594 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Undead##1236481,Midnight Enchanting
firstcraft Gleeful Glamour - Undead##1236481 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Human##1236470,Midnight Enchanting
firstcraft Gleeful Glamour - Human##1236470 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Orc##1236477,Midnight Enchanting
firstcraft Gleeful Glamour - Orc##1236477 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Draenei##1236465,Midnight Enchanting
firstcraft Gleeful Glamour - Draenei##1236465 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Tauren##1236479,Midnight Enchanting
firstcraft Gleeful Glamour - Tauren##1236479 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Nightborne##1236476,Midnight Enchanting
firstcraft Gleeful Glamour - Nightborne##1236476 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Void Elf##1236482,Midnight Enchanting
firstcraft Gleeful Glamour - Void Elf##1236482 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Vulpera##1236483,Midnight Enchanting
firstcraft Gleeful Glamour - Vulpera##1236483 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Worgen##1236484,Midnight Enchanting
firstcraft Gleeful Glamour - Worgen##1236484 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Kul Tiran##1236471,Midnight Enchanting
firstcraft Gleeful Glamour - Kul Tiran##1236471 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Zandalari Troll##1236485,Midnight Enchanting
firstcraft Gleeful Glamour - Zandalari Troll##1236485 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Highmountain Tauren##1236469,Midnight Enchanting
firstcraft Gleeful Glamour - Highmountain Tauren##1236469 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Lightforged Draenei##1236472,Midnight Enchanting
firstcraft Gleeful Glamour - Lightforged Draenei##1236472 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Dark Iron Dwarf##1236463,Midnight Enchanting
firstcraft Gleeful Glamour - Dark Iron Dwarf##1236463 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Pandaren##1236478,Midnight Enchanting
firstcraft Gleeful Glamour - Pandaren##1236478 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Troll##1236480,Midnight Enchanting
firstcraft Gleeful Glamour - Troll##1236480 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Gnome##1236467,Midnight Enchanting
firstcraft Gleeful Glamour - Gnome##1236467 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Goblin##1236468,Midnight Enchanting
firstcraft Gleeful Glamour - Goblin##1236468 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Mag'har Orc##1236473,Midnight Enchanting
firstcraft Gleeful Glamour - Mag'har Orc##1236473 |goto Silvermoon City M/0 48.00,53.84
step
craft Gleeful Glamour - Mechagnome##1236474,Midnight Enchanting
firstcraft Gleeful Glamour - Mechagnome##1236474 |goto Silvermoon City M/0 48.00,53.84
step
talk Dolothos##243349
learn Enchant Weapon - Jan'alai's Precision##1236066 |goto Silvermoon City M/0 48.00,53.84
step
talk Dolothos##243349
learn Enchant Weapon - Worldsoul Aegis##1236080 |goto Silvermoon City M/0 48.00,53.84
step
collect 45 Eversinging Dust##243599, Eversinging Dust##243600 |usebank
|tip Normal or High quality.
|tip Disenchant items for them with Enchanting or purchase them from the auction house.
step
cast Disenchant##1280952
create Enchant Ring - Amani Mastery##1236058,Midnight Enchanting,62 |goto Silvermoon City M/0 48.00,53.84 |only if default
create Enchant Ring - Amani Mastery##1236058,Midnight Enchanting,64 |goto Silvermoon City M/0 48.00,53.84 |only if KulTiran
create Enchant Ring - Amani Mastery##1236058,Midnight Enchanting,77 |goto Silvermoon City M/0 48.00,53.84 |only if BloodElf
step
Reach Skill Level 100 in Midnight Enchanting |skill Midnight Enchanting,100 |or |only if default
Reach Skill Level 102 in Midnight Enchanting |skill Midnight Enchanting,102 |or |only if KulTiran
Reach Skill Level 115 in Midnight Enchanting |skill Midnight Enchanting,115 |or |only if BloodElf
|tip From this point, it becomes very difficult to continue gaining points cheaply.
|tip Your best path is the Crafting Order system to craft items for other players with provided materials.
|tip This makes it much cheaper to craft one of each recipe for the first craft bonus.
|tip Oil of Dawn and Smuggler's Enchanted Edge are somehwat cheaper if you can get the formula.
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Midnight Enchanting Knowledge Treasures",{
description="This guide will walk you through collecting all Enchanting Knowledge Treasures.",
startlevel=68.00,
condition_end=function() return completedallq(89107,89103,89106,89100,89105,89104,89102) end,
},[[
step
click Sin'dorei Enchanting Rod##525946
collect Sin'dorei Enchanting Rod##238555 |goto Eversong Woods M/0 63.49,32.59 |q 89107 |future
step
use the Sin'dorei Enchanting Rod##238555
Study the Sin'dorei Enchanting Rod |complete itemcount(238555) == 0
step
click Everblazing Sunmote##525950
collect Everblazing Sunmote##238551 |goto Eversong Woods M/0 60.75,53.01 |q 89103 |future
step
use the Everblazing Sunmote##238551
Study the Everblazing Sunmote |complete itemcount(238551) == 0
step
click Enchanted Amani Mask##525953
|tip You need to phase Atal'Aman by completing the Zul'Aman leveling guide to progress the primary story.
collect Enchanted Amani Mask##238548 |goto Atal Aman M/1 48.77,22.55 |q 89100 |future
step
use the Enchanted Amani Mask##238548
Study the Enchanted Amani Mask |complete itemcount(238548) == 0
step
click Loa-Blessed Dust##525947
collect Loa-Blessed Dust##238554 |goto Zul Aman M/0 40.40,51.16 |q 89106 |future
step
use the Loa-Blessed Dust##238554
Study the Loa-Blessed Dust |complete itemcount(238554) == 0
step
click Primal Essence Orb##525948
|tip On top of the mushroom.
collect Primal Essence Orb##238553 |goto Harandar/0 65.73,50.24 |q 89105 |future
step
use the Primal Essence Orb##238553
Study the Primal Essence Orb |complete itemcount(238553) == 0
step
click Entropic Shard##525949
|tip You need to phase Atal'Aman by completing the Zul'Aman leveling guide to progress the primary story.
collect Entropic Shard##238552 |goto Harandar/0 37.75,65.22 |q 89104 |future
step
use the Entropic Shard##238552
Study the Entropic Shard |complete itemcount(238552) == 0
step
click Pure Void Crystal##525951
collect Pure Void Crystal##238550 |goto Voidstorm/0 35.46,58.82 |q 89102 |future
step
use the Pure Void Crystal##238550
Study the Pure Void Crystal |complete itemcount(238550) == 0
]])
QuestCore:RegisterGuide("Profession Guides\\Engineering\\Leveling Guides\\Midnight Engineering 1-100",{
description="This guide will walk you through leveling your Midnight Engineering profession from 1-100.",
startlevel=78.00,
},[[
step
Approximate bill of materials:
|tip Refulgent Copper Ingot or Bright Linen Bolt or Powder Pigment: 135
|tip Refulgent Copper Ore: 145
|tip Umbral Tin Ore: 155
|tip Mote of Light: 1
|tip Mote of Primal Energy: 1
|tip Mote of Wild Magic: 1
|tip Mote of Pure Void: 1
|tip These totals are approximate.
|tip Due to the random nature of learning recipes through Scouring we cannot accurately predict which recipes you can make.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to approximately 45 skill level.
Click Here to Continue |confirm
step
talk Danwe##241452
Train Engineering |skillmax Engineering,300 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
Train Midnight Engineering |skillmax Midnight Engineering,100 |goto Silvermoon City M/0 43.53,54.10
step
talk Yatheon##241453
buy 21 Malleable Wireframe##253302 |goto Silvermoon City M/0 43.47,53.74
buy 35 Pile of Junk##253303 |goto Silvermoon City M/0 43.47,53.74
step
collect 135 Refulgent Copper Ingot##238197, Refulgent Copper Ingot##238198 |usebank
|tip Smelt them with Mining or purchase them from the auction house.
_Or_
collect 135 Bright Linen Bolt##239700, Bright Linen Bolt##239701 |usebank
_Or_
collect 135 Powder Pigment##245807, Powder Pigment##245808 |usebank
|tip Mill them with Inscription or purchase them from the auction house.
|tip Normal or High quality.
|tip You you 135 of one of these items to use Recycling on later.
|tip Use what you have or whatever is cheapest.
step
create Song Gear##1229755,Midnight Engineering,8 total |goto Silvermoon City M/0 43.53,54.10
step
create Recycling##1229930,Midnight Engineering,16 |goto Silvermoon City M/0 43.53,54.10 |only if default
create Recycling##1229930,Midnight Engineering,18 |goto Silvermoon City M/0 43.53,54.10 |only if KulTiran
create Recycling##1229930,Midnight Engineering,31 |goto Silvermoon City M/0 43.53,54.10 |only if Goblin
|tip Recycle 35 of the 135 items from the 3 choices you had.
step
talk Danwe##241452
learn Evercore Shade##1229863 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Perfected Cogwheel##1229856 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Flux Cogwheel##1229859 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Evercore Vision Guard##1229865 |goto Silvermoon City M/0 43.53,54.10
step
collect 2 Evercore##243581, Evercore##243582 |usebank
|tip You obtained these from Recycling earlier.
step
craft Evercore Shade##1229863,Midnight Engineering
firstcraft Evercore Shade##1229863 |goto Silvermoon City M/0 43.53,54.10
step
craft Evercore Vision Guard##1229865,Midnight Engineering
firstcraft Evercore Vision Guard##1229865 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Evercore Dome Dinger##1282455 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Evercore Reconnaissance##1229864 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Evercore Zoomshroud##1229862 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Greased Cogwheel##1229857 |goto Silvermoon City M/0 43.53,54.10
step
collect 3 Evercore##243581, Evercore##243582 |usebank
|tip You obtained these from Recycling earlier.
step
talk Yatheon##241453
buy 3 Pile of Junk##253303 |goto Silvermoon City M/0 43.47,53.74
step
craft Evercore Dome Dinger##1282455,Midnight Engineering
firstcraft Evercore Dome Dinger##1282455 |goto Silvermoon City M/0 43.53,54.10
step
craft Evercore Zoomshroud##1229862,Midnight Engineering
firstcraft Evercore Zoomshroud##1229862 |goto Silvermoon City M/0 43.53,54.10
step
craft Evercore Reconnaissance##1229864,Midnight Engineering
firstcraft Evercore Reconnaissance##1229864 |goto Silvermoon City M/0 43.53,54.10
step
Learn Recycling as your first specialization
|tip The cheapest recipes to level with require 10 points in the Recycling specialization.
confirm
step
talk Danwe##241452
learn Consistent Cogwheel##1229858 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Soul Sprocket##1229853 |goto Silvermoon City M/0 43.53,54.10
step
talk Yatheon##241453
buy 10 Malleable Wireframe##253302 |goto Silvermoon City M/0 43.47,53.74
buy 20 Pile of Junk##253303 |goto Silvermoon City M/0 43.47,53.74
step
collect 50 Refulgent Copper Ore##237359, Refulgent Copper Ore##237361 |usebank
|tip Normal or High quality.
|tip Farm them with Mining or purchase them from the auction house.
step
collect 100 Umbral Tin Ore##237362, Umbral Tin Ore##237363 |usebank
|tip Normal or High quality.
|tip Farm them with Mining or purchase them from the auction house.
step
collect 1 Mote of Pure Void##236952 |usebank
step
collect 1 Mote of Light##236949 |usebank
step
collect 1 Mote of Pure Void##236952 |usebank
step
collect 1 Mote of Light##236949 |usebank
step
collect 8 Song Gear##243574, Song Gear##243575 |usebank
|tip You created these in a previous step.
step
create Soul Sprocket##1229853,Midnight Engineering,10 total |goto Silvermoon City M/0 43.53,54.10
|tip Save these, you will need them for the following steps.
step
collect 4 Soul Sprocket##243576, Soul Sprocket##243576 |usebank
|tip You created these in a previous step.
step
craft Perfected Cogwheel##1229856,Midnight Engineering
firstcraft Perfected Cogwheel##1229856 |goto Silvermoon City M/0 43.53,54.10
step
craft Flux Cogwheel##1229859,Midnight Engineering
firstcraft Flux Cogwheel##1229859 |goto Silvermoon City M/0 43.53,54.10
step
craft Greased Cogwheel##1229857,Midnight Engineering
firstcraft Greased Cogwheel##1229857 |goto Silvermoon City M/0 43.53,54.10
step
craft Consistent Cogwheel##1229858,Midnight Engineering
firstcraft Consistent Cogwheel##1229858 |goto Silvermoon City M/0 43.53,54.10
step
Put 10 points into the Recycling specialization and pick the Resourcefulness sub-spec
confirm
step
craft Recycling##1229930,Midnight Engineering
|tip Recycle the remaining 100 items from the 135 you collected.
confirm |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Evercore Binding##1229867 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Evercore Chainguards##1229868 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Evercore Gear Weight##1229869 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Evercore Greaseplates##1229938 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Evercore Stichwraps##1229936 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Evercore Swiftfeet##1229935 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Evercore Turbochains##1229937 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Evercore Wrist Latch##1229866 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Farstrider Clampers##1229898 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Farstrider Fabric Cutters##1229900 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Farstrider Hardhat##1229904 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Farstrider Hobbyist Rod##1229895 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Farstrider Rock Satchel##1229899 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Junker's Junk Visor##1229901 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
learn Junker's Multitool##1229896 |goto Silvermoon City M/0 43.53,54.10
step
talk Yatheon##241453
buy 12 Pile of Junk##253303 |goto Silvermoon City M/0 43.47,53.74
step
collect 14 Evercore##243581, Evercore##243582 |usebank
|tip You obtained these from Recycling earlier.
step
collect 6 Soul Sprocket##243576, Soul Sprocket##243576 |usebank
|tip You created these in a previous step.
step
craft Evercore Binding##1229867,Midnight Engineering
firstcraft Evercore Binding##1229867 |goto Silvermoon City M/0 43.53,54.10
step
craft Evercore Chainguards##1229868,Midnight Engineering
firstcraft Evercore Chainguards##1229868 |goto Silvermoon City M/0 43.53,54.10
step
craft Evercore Gear Weight##1229869,Midnight Engineering
firstcraft Evercore Gear Weight##1229869 |goto Silvermoon City M/0 43.53,54.10
step
craft Evercore Greaseplates##1229938,Midnight Engineering
firstcraft Evercore Greaseplates##1229938 |goto Silvermoon City M/0 43.53,54.10
step
craft Evercore Stichwraps##1229936,Midnight Engineering
firstcraft Evercore Stichwraps##1229936 |goto Silvermoon City M/0 43.53,54.10
step
craft Evercore Swiftfeet##1229935,Midnight Engineering
firstcraft Evercore Swiftfeet##1229935 |goto Silvermoon City M/0 43.53,54.10
step
craft Evercore Turbochains##1229937,Midnight Engineering
firstcraft Evercore Turbochains##1229937 |goto Silvermoon City M/0 43.53,54.10
step
craft Evercore Wrist Latch##1229866,Midnight Engineering
firstcraft Evercore Wrist Latch##1229866 |goto Silvermoon City M/0 43.53,54.10
step
craft Farstrider Clampers##1229898,Midnight Engineering
firstcraft Farstrider Clampers##1229898 |goto Silvermoon City M/0 43.53,54.10
step
craft Farstrider Fabric Cutters##1229900,Midnight Engineering
firstcraft Farstrider Fabric Cutters##1229900 |goto Silvermoon City M/0 43.53,54.10
step
craft Farstrider Hardhat##1229904,Midnight Engineering
firstcraft Farstrider Hardhat##1229904 |goto Silvermoon City M/0 43.53,54.10
step
craft Farstrider Hobbyist Rod##1229895,Midnight Engineering
firstcraft Farstrider Hobbyist Rod##1229895 |goto Silvermoon City M/0 43.53,54.10
step
craft Farstrider Rock Satchel##1229899,Midnight Engineering
firstcraft Farstrider Rock Satchel##1229899 |goto Silvermoon City M/0 43.53,54.10
step
craft Junker's Multitool##1229896,Midnight Engineering
firstcraft Junker's Multitool##1229896 |goto Silvermoon City M/0 43.53,54.10
step
Reach Skill Level 80 in Midnight Engineering |skill Midnight Engineering,80 |or |only if default
Reach Skill Level 82 in Midnight Engineering |skill Midnight Engineering,82 |or |only if KulTiran
Reach Skill Level 95 in Midnight Engineering |skill Midnight Engineering,95 |or |only if Goblin
|tip From this point, continue using Recycling until you discover a Quel'dorei recipe.
|tip Make the recipe you discover about 60 times to reach 80, at which point it will go gray.
step
Reach Skill Level 100 in Midnight Engineering |skill Midnight Engineering,100 |or |only if default
Reach Skill Level 102 in Midnight Engineering |skill Midnight Engineering,102 |or |only if KulTiran
Reach Skill Level 110 in Midnight Engineering |skill Midnight Engineering,115 |or |only if Goblin
|tip From this point, only housing decor items dicovered through Recycling or rare equipment can take you to max level.
|tip Your best path is the Crafting Order system to craft items for other players with provided materials.
|tip This makes it much cheaper to craft one of each recipe for the first craft bonus.
]])
QuestCore:RegisterGuide("Profession Guides\\Engineering\\Midnight Engineering Knowledge Treasures",{
description="This guide will walk you through collecting all Engineering Knowledge Treasures.",
startlevel=68.00,
condition_end=function() return completedallq(89139,89133,89135,89138,89140,89136,89137,89134) end,
},[[
step
talk Danwe##241452
Train Engineering |skillmax Engineering,300 |goto Silvermoon City M/0 43.53,54.10
step
talk Danwe##241452
Train Midnight Engineering |skillmax Midnight Engineering,100 |goto Silvermoon City M/0 43.53,54.10
step
click What To Do When Nothing Works##525939
collect What To Do When Nothing Works##238562 |goto Silvermoon City M/0 51.21,57.25 |q 89139 |future
step
use the What To Do When Nothing Works##238562
Study the What To Do When Nothing Works |complete itemcount(238562) == 0
step
click One Engineer's Junk##525945
|tip Inside the building.
collect One Engineer's Junk##238556 |goto Silvermoon City M/0 51.33,74.45 |q 89133 |future
step
use the One Engineer's Junk##238556
Study the One Engineer's Junk |complete itemcount(238556) == 0
step
click Manual of Mistakes and Mishaps##525943
|tip Downstairs inside the building.
collect Manual of Mistakes and Mishaps##238558 |goto Eversong Woods M/0 39.57,45.80 |q 89135 |future
step
use the Manual of Mistakes and Mishaps##238558
Study the Manual of Mistakes and Mishaps |complete itemcount(238558) == 0
step
click Offline Helper Bot##525940
|tip You need to phase Atal'Aman by completing the Zul'Aman leveling guide to progress the primary story.
collect Offline Helper Bot##238561 |goto Atal Aman M/1 65.15,34.75 |q 89138 |future
step
use the Offline Helper Bot##238561
Study the Offline Helper Bot |complete itemcount(238561) == 0
step
click Handy Wrench##525938
collect Handy Wrench##238563 |goto Zul Aman M/0 34.21,87.80 |q 89140 |future
step
use the Handy Wrench##238563
Study the Handy Wrench |complete itemcount(238563) == 0
step
click Expeditious Pylon##525942
|tip On top of the mushroom.
collect Expeditious Pylon##238559 |goto Harandar/0 68.00,49.81 |q 89136 |future
step
use the Expeditious Pylon##238559
Study the Expeditious Pylon |complete itemcount(238559) == 0
step
click Ethereal Stormwrench##525941
collect Ethereal Stormwrench##238560 |goto Slayers Rise/0 54.13,51.00 |q 89137 |future
step
use the Ethereal Stormwrench##238560
Study the Ethereal Stormwrench |complete itemcount(238560) == 0
step
click Miniaturized Transport Skiff##525944
collect Miniaturized Transport Skiff##238557 |goto Slayers Rise/0 28.93,39.00 |q 89134 |future
step
use the Miniaturized Transport Skiff##238557
Study the Miniaturized Transport Skiff |complete itemcount(238557) == 0
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Midnight Fishing 1-100",{
description="This guide will walk you through leveling your Midnight Fishing profession from 1-100.",
startlevel=78.00,
},[[
step
talk Drathen##253468
Train Fishing |skillmax Fishing,300 |goto Silvermoon City M/0 44.83,60.37
step
talk Drathen##253468
Train Midnight Fishing |skillmax Midnight Fishing,100 |goto Silvermoon City M/0 44.83,60.37
step
Fish in the open water
|tip Eversong Woods and Silvermoon City will be best for 1-150.
|tip From 150-225, Zul'Aman, Eversong Woods, or Silvermoon City.
|tip From 225-300, Harandar or any of the previous zones.
|tip Skill level doesn't matter when fishing in pools, but it's much slower to level that way.
Reach Skill 300 in Midnight Fishing |skill Midnight Fishing,300
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Arcane Wyrmfish",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Eversong Woods M","Harandar"},
items={238371},
},[[
step
cast Fishing##1239033
collect Arcane Wyrmfish##238371 |n
|tip You can best catch this from open waters in Eversong Woods and Harandar.
|tip Bubbling Bloom, Sunwell Swarm, and Blossoming Torrent pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Gore Guppy",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Zul Aman M"},
items={238382},
},[[
step
cast Fishing##1239033
collect Gore Guppy##238382 |n
|tip You can best catch this from open waters in Zul'Aman.
|tip Hunter Surge and Surface Ripple pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Lynxfish",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Eversong Woods M","Zul Aman M"},
items={238366},
},[[
step
cast Fishing##1239033
collect Lynxfish##238366 |n
|tip You can best catch this from open waters in Eversong Woods and Zul'Aman.
|tip Bubbling Bloom, Sunwell Swarm, and Surface Ripple pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Root Crab",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Zul Aman M","Harandar"},
items={238367},
},[[
step
cast Fishing##1239033
collect Root Crab##238367 |n
|tip You can best catch this from open waters in Zul'Aman and Harandar.
|tip Obscured School and Surface Ripple pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Sin'dorei Swarmer",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Eversong Woods M","Zul Aman M"},
items={238365},
},[[
step
cast Fishing##1239033
collect Sin'dorei Swarmer##238365 |n
|tip You can best catch this from open waters in Eversong Woods and Zul'Aman.
|tip Bubbling Bloom, Sunwell Swarm, and Surface Ripple pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Blood Hunter",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Zul Aman M","Voidstorm"},
items={238377},
},[[
step
cast Fishing##1239033
collect Blood Hunter##238377 |n
|tip You can best catch this from open waters in Zul'Aman and Voidstorm.
|tip Surface Ripple, Hunter Surge, Viscous Void, and Oceanic Vortex pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Bloomtail Minnow",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Harandar"},
items={238369},
},[[
step
cast Fishing##1239033
collect Bloomtail Minnow##238369 |n
|tip You can best catch this from open waters in Harandar.
|tip Lashing Waves pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Fungalskin Pike",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Zul Aman M","Harandar"},
items={238375},
},[[
step
cast Fishing##1239033
collect Fungalskin Pike##238375 |n
|tip You can best catch this from open waters in Zul'Aman and Harandar.
|tip Obscured School and Surface Ripple pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Restored Songfish",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Eversong Woods M","Harandar"},
items={238372},
},[[
step
cast Fishing##1239033
collect Restored Songfish##238372 |n
|tip You can best catch this from open waters in Eversong Woods and Harandar.
|tip Bloom Swarm, Bubbling Bloom, Sunwell Swarm, and Blossoming Torrent pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Shimmer Spinefish",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Eversong Woods M","Harandar"},
items={238370},
},[[
step
cast Fishing##1239033
collect Shimmer Spinefish##238370 |n
|tip You can best catch this from open waters in Eversong Woods and Harandar.
|tip Bloom Swarm, Bubbling Bloom, Sunwell Swarm, and Blossoming Torrent pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Shimmersiren",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Voidstorm"},
items={238378},
},[[
step
cast Fishing##1239033
collect Shimmersiren##238378 |n
|tip You can best catch this from open waters in Voidstorm.
|tip Viscous Void and Oceanic Vortex pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Sunwell Fish",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Eversong Woods M"},
items={238384},
},[[
step
cast Fishing##1239033
collect Sunwell Fish##238384 |n
|tip You can best catch this from open waters in Eversong Woods.
|tip Sunwell Swarm and Blossoming Torrent pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Tender Lumifin",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Harandar"},
items={238374},
},[[
step
cast Fishing##1239033
collect Tender Lumifin##238374 |n
|tip You can best catch this from open waters in Harandar.
|tip Blossoming Torrent pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Eversong Trout",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Eversong Woods M"},
items={238383},
},[[
step
cast Fishing##1239033
collect Eversong Trout##238383 |n
|tip You can best catch this from open waters in Eversong Woods.
|tip Sunwell Swarm and Bubbling Bloom pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Hollow Grouper",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Voidstorm"},
items={238381},
},[[
step
cast Fishing##1239033
collect Hollow Grouper##238381 |n
|tip You can best catch this from open waters in Voidstorm.
|tip Viscous Void and Oceanic Vortex pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Lucky Loa",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Zul Aman M"},
items={238376},
},[[
step
cast Fishing##1239033
collect Lucky Loa##238376 |n
|tip You can best catch this from open waters in Zul'Aman.
|tip Obscured School and Surface Ripple pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Null Voidfish",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Voidstorm"},
items={238380},
},[[
step
cast Fishing##1239033
collect Null Voidfish##238380 |n
|tip You can best catch this from open waters in Voidstorm.
|tip Viscous Void and Oceanic Vortex pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Ominous Octopus",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Voidstorm"},
items={238373},
},[[
step
cast Fishing##1239033
collect Ominous Octopus##238373 |n
|tip You can best catch this from open waters in Voidstorm.
|tip Viscous Void and Oceanic Vortex pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Twisted Tetra",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Zul Aman M","Harandar"},
items={238368},
},[[
step
cast Fishing##1239033
collect Twisted Tetra##238368 |n
|tip You can best catch this from open waters in Zul'Aman and Harandar.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Warping Wise",{
meta={goldtype="route",skillreq={midnight_fishing=1},levelreq={80}},
maps={"Voidstorm"},
items={238379},
},[[
step
cast Fishing##1239033
collect Warping Wise##238379 |n
|tip You can best catch this from open waters in Voidstorm.
|tip Viscous Void and Oceanic Vortex pools drop them as well.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Midnight Herbalism 1-100",{
description="This guide will walk you through leveling your Midnight Herbalism profession from 1-100.",
startlevel=78.00,
},[[
step
talk Botanist Nathera##243355
|tip Inside the building.
Train Herbalism |skillmax Herbalism,300 |goto Silvermoon City M/0 48.30,51.41
step
talk Botanist Nathera##243355
|tip Inside the building.
Train Midnight Herbalism |skillmax Midnight Herbalism,100 |goto Silvermoon City M/0 48.30,51.41
step
Reach Skill Level 100 in Midnight Herbalism |skill Midnight Herbalism,100 |only if default
Reach Skill Level 102 in Midnight Herbalism |skill Midnight Herbalism,102 |only if KulTiran
Reach Skill Level 105 in Midnight Herbalism |skill Midnight Herbalism,105 |only if Haranir
Reach Skill Level 115 in Midnight Herbalism |skill Midnight Herbalism,115 |only if Tauren
|tip Load any Herbalism farming guide you choose and farm for points.
|tip Deftness increases your gathering speed.
|tip Finesse gives you extra materials from nodes.
|tip Perception gives you an increased chance find bonus Nocturnal Lotus.
|tip Deftness makes farming easier in mob-heavy areas.
|tip Infused nodes have visual effects around them and drop additional materials, but inflict a negative effect on you.
|tip From 1-30, everything gives points.
|tip From 30-60, Tranquility Bloom goes gray at 30 and remaining herbs grant skill to 60.
|tip From 60-100 only Lush and Infused nodes grant skill points.
|tip Infused Wild nodes spawn an enemy that can sometimes be difficult to kill.
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Midnight Herbalism Knowledge Treasures",{
description="This guide will walk you through collecting all Herbalism Knowledge Treasures.",
startlevel=68.00,
condition_end=function() return completedallq(89160,89158,89155,89162,89159,89157,89156) end,
},[[
step
talk Botanist Nathera##243355
|tip Inside the building.
Train Herbalism |skillmax Herbalism,300 |goto Silvermoon City M/0 48.30,51.41
step
talk Botanist Nathera##243355
|tip Inside the building.
Train Midnight Herbalism |skillmax Midnight Herbalism,100 |goto Silvermoon City M/0 48.30,51.41
step
click Simple Leaf Pruners##525972
collect Simple Leaf Pruners##238470 |goto Silvermoon City M/0 49.00,75.93 |q 89160 |future
step
use the Simple Leaf Pruners##238470
Study the Simple Leaf Pruners |complete itemcount(238470) == 0
step
click A Spade##525974
collect A Spade##238472 |goto Eversong Woods M/0 64.25,30.46 |q 89158 |future
step
use A Spade##238472
Study A Spade |complete itemcount(238472) == 0
step
click Planting Shovel##525977
collect Planting Shovel##238475 |goto Harandar/0 51.11,55.71 |q 89155 |future
step
use the Planting Shovel##238475
Study the Planting Shovel |complete itemcount(238475) == 0
step
click Bloomed Bud##525970
collect Bloomed Bud##238468 |goto Harandar/0 38.32,67.04 |q 89162 |future
step
use the Bloomed Bud##238468
Study the Bloomed Bud |complete itemcount(238468) == 0
step
click Lightbloom Root##525973
collect Lightbloom Root##238471 |goto Harandar/0 36.66,25.06 |q 89159 |future
step
use the Lightbloom Root##238471
Study the Lightbloom Root |complete itemcount(238471) == 0
step
click Harvester's Sickle##525975
collect Harvester's Sickle##238473 |goto Harandar/0 76.13,51.05 |q 89157 |future
step
use the Harvester's Sickle##238473
Study the Harvester's Sickle |complete itemcount(238473) == 0
step
click Peculiar Lotus##525976
collect Peculiar Lotus##238474 |goto Voidstorm/0 34.68,56.96 |q 89156 |future
step
use the Peculiar Lotus##238474
Study the Peculiar Lotus |complete itemcount(238474) == 0
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Sanguithorn (Eversong Woods)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Eversong Woods M"},
items={236770,236771},
},[[
step
map Eversong Woods M/0
path follow smart; loop on; ants curved; dist 40
path	48.10,38.10	45.99,38.38	43.06,35.25	39.83,34.46	37.21,39.14
path	36.32,45.15	36.10,48.67	39.50,51.88	42.30,54.02	45.33,55.11
path	46.56,56.23	46.70,58.21	43.83,60.69	40.69,61.86	39.08,63.22
path	39.23,68.48	41.14,77.33	42.47,82.37	42.92,86.23	44.12,86.07
path	45.66,83.73	47.46,81.67	49.03,80.60	50.96,80.67	52.96,83.08
path	53.78,84.65	55.38,81.52	55.82,79.23	55.76,77.57	56.92,74.14
path	58.20,71.87	60.34,68.36	62.81,63.35	60.83,62.29	58.03,62.67
path	56.10,62.84	53.80,62.57	53.03,61.49	53.37,59.64	55.00,58.02
path	57.63,56.78	60.44,55.32	61.75,53.60	63.81,50.35	62.62,47.62
path	61.18,45.19	60.13,44.12	57.27,43.71	53.78,42.42	50.70,42.56
path	47.96,41.39
click Sanguithorn##516934+
|tip They share a spawn with other herb nodes.
collect Sanguithorn##236770 |n
collect Sanguithorn##236771 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Sanguithorn (Zul Aman)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Zul Aman M"},
items={236770,236771},
},[[
step
map Zul Aman M/0
path follow smart; loop on; ants curved; dist 30
path	44.83,37.00	47.65,36.09	48.66,38.64	46.59,40.82	44.96,43.15
path	47.40,44.66	48.37,48.09	47.33,51.97	47.66,57.54	48.39,59.13
path	49.27,60.91	51.59,63.15	52.80,66.30	54.80,69.10	56.82,72.64
path	57.81,75.60	58.90,79.29	59.08,82.18	56.35,82.22	52.95,80.98
path	51.67,80.90	49.53,81.84	47.82,84.60	46.34,88.27	45.39,90.03
path	43.25,90.31	40.91,90.09	39.78,88.47	39.87,86.40	40.84,83.95
path	42.19,82.54	43.01,80.49	43.03,79.68	41.31,79.41	39.30,79.62
path	37.78,80.05	36.36,80.49	33.95,81.79	32.32,83.03	30.68,83.15
path	29.92,82.41	29.36,80.96	29.13,79.14	28.96,78.25	28.03,77.78
path	26.35,78.76	24.21,79.54	22.88,78.45	22.44,76.22	22.91,73.12
path	23.38,69.93	23.40,66.25	25.19,68.07	26.63,70.28	28.21,71.91
path	30.83,72.00	32.47,70.28	34.07,69.64	37.74,70.41	39.04,70.25
path	40.75,65.30	41.76,60.84	42.15,56.64	42.96,51.52	42.64,47.84
path	42.75,44.57	42.74,41.11	42.07,39.61	41.72,38.71	42.78,37.75
path	43.80,37.46
click Sanguithorn##516934+
|tip They share a spawn with other herb nodes.
collect Sanguithorn##236770 |n
collect Sanguithorn##236771 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Sanguithorn (Harandar)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Harandar"},
items={236770,236771},
},[[
step
map Harandar/0
path follow smart; loop on; ants curved; dist 30
path	55.76,52.35	56.06,46.70	56.52,41.15	59.31,39.35	62.47,37.60
path	63.74,35.06	65.82,35.10	67.71,37.60	69.04,39.84	70.41,40.91
path	71.48,37.91	72.05,32.76	69.55,27.93	66.76,25.00	65.07,23.33
path	63.14,24.77	61.27,26.39	59.90,29.12	58.66,30.90	56.04,33.23
path	55.01,34.29	53.17,37.74	49.99,40.69	47.96,42.78	45.06,44.43
path	41.59,46.55	39.79,49.52	39.68,56.51	41.60,59.38	43.03,62.28
path	44.11,65.93	44.42,69.19	46.02,70.30	48.25,70.42	48.33,72.22
path	48.98,77.22	49.92,79.03	51.74,79.28	52.78,78.35	53.33,76.76
path	52.59,73.99	51.35,71.35	51.37,68.91	52.85,65.19	54.73,61.62
path	55.45,58.56
click Sanguithorn##516934+
|tip They share a spawn with other herb nodes.
collect Sanguithorn##236770 |n
collect Sanguithorn##236771 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Sanguithorn (Voidstorm)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Voidstorm"},
items={236770,236771},
},[[
step
map Voidstorm/0
path follow smart; loop on; ants curved; dist 30
path	52.28,70.22	53.93,71.81	54.48,76.89	55.06,78.53	56.21,81.97
path	57.49,83.51	60.49,86.09	62.13,86.20	62.82,84.48	62.89,82.01
path	62.48,79.19	61.20,73.79	59.94,68.54	60.41,63.95	61.51,62.03
path	64.46,59.16	65.05,56.62	64.24,55.85	60.66,57.80	57.08,58.18
path	56.83,55.95	58.07,52.72	58.10,49.26	57.77,47.29	56.44,45.81
path	54.93,45.19	52.56,45.40	51.37,47.01	49.15,51.10	48.18,53.07
path	45.92,57.04	44.21,58.93	42.61,59.07	41.78,58.56	40.96,57.00
path	39.92,52.52	39.57,47.76	39.41,45.04	38.44,41.36	36.89,41.57
path	35.80,43.86	34.12,48.88	32.70,52.31	32.19,56.87	32.68,60.24
path	34.15,64.91	34.97,69.26	35.00,73.03	34.40,75.49	34.82,77.39
path	36.33,78.42	37.83,79.24	40.50,80.86	43.39,82.31	47.05,84.13
path	48.22,84.28	49.01,82.06	49.04,79.99	48.62,78.18	48.56,73.51
path	49.38,71.53	51.58,70.37
click Sanguithorn##516934+
|tip They share a spawn with other herb nodes.
collect Sanguithorn##236770 |n
collect Sanguithorn##236771 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Azeroot (Eversong Woods)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Eversong Woods M"},
items={236774,236775},
},[[
step
map Eversong Woods M/0
path follow smart; loop on; ants curved; dist 40
path	48.10,38.10	45.99,38.38	43.06,35.25	39.83,34.46	37.21,39.14
path	36.32,45.15	36.10,48.67	39.50,51.88	42.30,54.02	45.33,55.11
path	46.56,56.23	46.70,58.21	43.83,60.69	40.69,61.86	39.08,63.22
path	39.23,68.48	41.14,77.33	42.47,82.37	42.92,86.23	44.12,86.07
path	45.66,83.73	47.46,81.67	49.03,80.60	50.96,80.67	52.96,83.08
path	53.78,84.65	55.38,81.52	55.82,79.23	55.76,77.57	56.92,74.14
path	58.20,71.87	60.34,68.36	62.81,63.35	60.83,62.29	58.03,62.67
path	56.10,62.84	53.80,62.57	53.03,61.49	53.37,59.64	55.00,58.02
path	57.63,56.78	60.44,55.32	61.75,53.60	63.81,50.35	62.62,47.62
path	61.18,45.19	60.13,44.12	57.27,43.71	53.78,42.42	50.70,42.56
path	47.96,41.39
click Azeroot##516935+
|tip They share a spawn with other herb nodes.
collect Azeroot##236774 |n
collect Azeroot##236775 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Azeroot (Zul Aman)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Zul Aman M"},
items={236774,236775},
},[[
step
map Zul Aman M/0
path follow smart; loop on; ants curved; dist 30
path	44.83,37.00	47.65,36.09	48.66,38.64	46.59,40.82	44.96,43.15
path	47.40,44.66	48.37,48.09	47.33,51.97	47.66,57.54	48.39,59.13
path	49.27,60.91	51.59,63.15	52.80,66.30	54.80,69.10	56.82,72.64
path	57.81,75.60	58.90,79.29	59.08,82.18	56.35,82.22	52.95,80.98
path	51.67,80.90	49.53,81.84	47.82,84.60	46.34,88.27	45.39,90.03
path	43.25,90.31	40.91,90.09	39.78,88.47	39.87,86.40	40.84,83.95
path	42.19,82.54	43.01,80.49	43.03,79.68	41.31,79.41	39.30,79.62
path	37.78,80.05	36.36,80.49	33.95,81.79	32.32,83.03	30.68,83.15
path	29.92,82.41	29.36,80.96	29.13,79.14	28.96,78.25	28.03,77.78
path	26.35,78.76	24.21,79.54	22.88,78.45	22.44,76.22	22.91,73.12
path	23.38,69.93	23.40,66.25	25.19,68.07	26.63,70.28	28.21,71.91
path	30.83,72.00	32.47,70.28	34.07,69.64	37.74,70.41	39.04,70.25
path	40.75,65.30	41.76,60.84	42.15,56.64	42.96,51.52	42.64,47.84
path	42.75,44.57	42.74,41.11	42.07,39.61	41.72,38.71	42.78,37.75
path	43.80,37.46
click Azeroot##516935+
|tip They share a spawn with other herb nodes.
collect Azeroot##236774 |n
collect Azeroot##236775 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Azeroot (Harandar)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Harandar"},
items={236774,236775},
},[[
step
map Harandar/0
path follow smart; loop on; ants curved; dist 30
path	55.76,52.35	56.06,46.70	56.52,41.15	59.31,39.35	62.47,37.60
path	63.74,35.06	65.82,35.10	67.71,37.60	69.04,39.84	70.41,40.91
path	71.48,37.91	72.05,32.76	69.55,27.93	66.76,25.00	65.07,23.33
path	63.14,24.77	61.27,26.39	59.90,29.12	58.66,30.90	56.04,33.23
path	55.01,34.29	53.17,37.74	49.99,40.69	47.96,42.78	45.06,44.43
path	41.59,46.55	39.79,49.52	39.68,56.51	41.60,59.38	43.03,62.28
path	44.11,65.93	44.42,69.19	46.02,70.30	48.25,70.42	48.33,72.22
path	48.98,77.22	49.92,79.03	51.74,79.28	52.78,78.35	53.33,76.76
path	52.59,73.99	51.35,71.35	51.37,68.91	52.85,65.19	54.73,61.62
path	55.45,58.56
click Azeroot##516935+
|tip They share a spawn with other herb nodes.
collect Azeroot##236774 |n
collect Azeroot##236775 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Azeroot (Voidstorm)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Voidstorm"},
items={236774,236775},
},[[
step
map Voidstorm/0
path follow smart; loop on; ants curved; dist 30
path	52.28,70.22	53.93,71.81	54.48,76.89	55.06,78.53	56.21,81.97
path	57.49,83.51	60.49,86.09	62.13,86.20	62.82,84.48	62.89,82.01
path	62.48,79.19	61.20,73.79	59.94,68.54	60.41,63.95	61.51,62.03
path	64.46,59.16	65.05,56.62	64.24,55.85	60.66,57.80	57.08,58.18
path	56.83,55.95	58.07,52.72	58.10,49.26	57.77,47.29	56.44,45.81
path	54.93,45.19	52.56,45.40	51.37,47.01	49.15,51.10	48.18,53.07
path	45.92,57.04	44.21,58.93	42.61,59.07	41.78,58.56	40.96,57.00
path	39.92,52.52	39.57,47.76	39.41,45.04	38.44,41.36	36.89,41.57
path	35.80,43.86	34.12,48.88	32.70,52.31	32.19,56.87	32.68,60.24
path	34.15,64.91	34.97,69.26	35.00,73.03	34.40,75.49	34.82,77.39
path	36.33,78.42	37.83,79.24	40.50,80.86	43.39,82.31	47.05,84.13
path	48.22,84.28	49.01,82.06	49.04,79.99	48.62,78.18	48.56,73.51
path	49.38,71.53	51.58,70.37
click Azeroot##516935+
|tip They share a spawn with other herb nodes.
collect Azeroot##236774 |n
collect Azeroot##236775 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Mana Lily (Eversong Woods)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Eversong Woods M"},
items={236778,236779},
},[[
step
map Eversong Woods M/0
path follow smart; loop on; ants curved; dist 40
path	48.10,38.10	45.99,38.38	43.06,35.25	39.83,34.46	37.21,39.14
path	36.32,45.15	36.10,48.67	39.50,51.88	42.30,54.02	45.33,55.11
path	46.56,56.23	46.70,58.21	43.83,60.69	40.69,61.86	39.08,63.22
path	39.23,68.48	41.14,77.33	42.47,82.37	42.92,86.23	44.12,86.07
path	45.66,83.73	47.46,81.67	49.03,80.60	50.96,80.67	52.96,83.08
path	53.78,84.65	55.38,81.52	55.82,79.23	55.76,77.57	56.92,74.14
path	58.20,71.87	60.34,68.36	62.81,63.35	60.83,62.29	58.03,62.67
path	56.10,62.84	53.80,62.57	53.03,61.49	53.37,59.64	55.00,58.02
path	57.63,56.78	60.44,55.32	61.75,53.60	63.81,50.35	62.62,47.62
path	61.18,45.19	60.13,44.12	57.27,43.71	53.78,42.42	50.70,42.56
path	47.96,41.39
click Mana Lily##516937+
|tip They share a spawn with other herb nodes.
collect Mana Lily##236778 |n
collect Mana Lily##236779 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Mana Lily (Zul Aman)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Zul Aman M"},
items={236778,236779},
},[[
step
map Zul Aman M/0
path follow smart; loop on; ants curved; dist 30
path	44.83,37.00	47.65,36.09	48.66,38.64	46.59,40.82	44.96,43.15
path	47.40,44.66	48.37,48.09	47.33,51.97	47.66,57.54	48.39,59.13
path	49.27,60.91	51.59,63.15	52.80,66.30	54.80,69.10	56.82,72.64
path	57.81,75.60	58.90,79.29	59.08,82.18	56.35,82.22	52.95,80.98
path	51.67,80.90	49.53,81.84	47.82,84.60	46.34,88.27	45.39,90.03
path	43.25,90.31	40.91,90.09	39.78,88.47	39.87,86.40	40.84,83.95
path	42.19,82.54	43.01,80.49	43.03,79.68	41.31,79.41	39.30,79.62
path	37.78,80.05	36.36,80.49	33.95,81.79	32.32,83.03	30.68,83.15
path	29.92,82.41	29.36,80.96	29.13,79.14	28.96,78.25	28.03,77.78
path	26.35,78.76	24.21,79.54	22.88,78.45	22.44,76.22	22.91,73.12
path	23.38,69.93	23.40,66.25	25.19,68.07	26.63,70.28	28.21,71.91
path	30.83,72.00	32.47,70.28	34.07,69.64	37.74,70.41	39.04,70.25
path	40.75,65.30	41.76,60.84	42.15,56.64	42.96,51.52	42.64,47.84
path	42.75,44.57	42.74,41.11	42.07,39.61	41.72,38.71	42.78,37.75
path	43.80,37.46
click Mana Lily##516937+
|tip They share a spawn with other herb nodes.
collect Mana Lily##236778 |n
collect Mana Lily##236779 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Mana Lily (Harandar)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Harandar"},
items={236778,236779},
},[[
step
map Harandar/0
path follow smart; loop on; ants curved; dist 30
path	55.76,52.35	56.06,46.70	56.52,41.15	59.31,39.35	62.47,37.60
path	63.74,35.06	65.82,35.10	67.71,37.60	69.04,39.84	70.41,40.91
path	71.48,37.91	72.05,32.76	69.55,27.93	66.76,25.00	65.07,23.33
path	63.14,24.77	61.27,26.39	59.90,29.12	58.66,30.90	56.04,33.23
path	55.01,34.29	53.17,37.74	49.99,40.69	47.96,42.78	45.06,44.43
path	41.59,46.55	39.79,49.52	39.68,56.51	41.60,59.38	43.03,62.28
path	44.11,65.93	44.42,69.19	46.02,70.30	48.25,70.42	48.33,72.22
path	48.98,77.22	49.92,79.03	51.74,79.28	52.78,78.35	53.33,76.76
path	52.59,73.99	51.35,71.35	51.37,68.91	52.85,65.19	54.73,61.62
path	55.45,58.56
click Mana Lily##516937+
|tip They share a spawn with other herb nodes.
collect Mana Lily##236778 |n
collect Mana Lily##236779 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Mana Lily (Voidstorm)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Voidstorm"},
items={236778,236779},
},[[
step
map Voidstorm/0
path follow smart; loop on; ants curved; dist 30
path	52.28,70.22	53.93,71.81	54.48,76.89	55.06,78.53	56.21,81.97
path	57.49,83.51	60.49,86.09	62.13,86.20	62.82,84.48	62.89,82.01
path	62.48,79.19	61.20,73.79	59.94,68.54	60.41,63.95	61.51,62.03
path	64.46,59.16	65.05,56.62	64.24,55.85	60.66,57.80	57.08,58.18
path	56.83,55.95	58.07,52.72	58.10,49.26	57.77,47.29	56.44,45.81
path	54.93,45.19	52.56,45.40	51.37,47.01	49.15,51.10	48.18,53.07
path	45.92,57.04	44.21,58.93	42.61,59.07	41.78,58.56	40.96,57.00
path	39.92,52.52	39.57,47.76	39.41,45.04	38.44,41.36	36.89,41.57
path	35.80,43.86	34.12,48.88	32.70,52.31	32.19,56.87	32.68,60.24
path	34.15,64.91	34.97,69.26	35.00,73.03	34.40,75.49	34.82,77.39
path	36.33,78.42	37.83,79.24	40.50,80.86	43.39,82.31	47.05,84.13
path	48.22,84.28	49.01,82.06	49.04,79.99	48.62,78.18	48.56,73.51
path	49.38,71.53	51.58,70.37
click Mana Lily##516937+
|tip They share a spawn with other herb nodes.
collect Mana Lily##236778 |n
collect Mana Lily##236779 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Tranquility Bloom (Eversong Woods)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Eversong Woods M"},
items={236761,236767},
},[[
step
map Eversong Woods M/0
path follow smart; loop on; ants curved; dist 40
path	48.10,38.10	45.99,38.38	43.06,35.25	39.83,34.46	37.21,39.14
path	36.32,45.15	36.10,48.67	39.50,51.88	42.30,54.02	45.33,55.11
path	46.56,56.23	46.70,58.21	43.83,60.69	40.69,61.86	39.08,63.22
path	39.23,68.48	41.14,77.33	42.47,82.37	42.92,86.23	44.12,86.07
path	45.66,83.73	47.46,81.67	49.03,80.60	50.96,80.67	52.96,83.08
path	53.78,84.65	55.38,81.52	55.82,79.23	55.76,77.57	56.92,74.14
path	58.20,71.87	60.34,68.36	62.81,63.35	60.83,62.29	58.03,62.67
path	56.10,62.84	53.80,62.57	53.03,61.49	53.37,59.64	55.00,58.02
path	57.63,56.78	60.44,55.32	61.75,53.60	63.81,50.35	62.62,47.62
path	61.18,45.19	60.13,44.12	57.27,43.71	53.78,42.42	50.70,42.56
path	47.96,41.39
click Tranquility Bloom##516932+
|tip They share a spawn with other herb nodes.
collect Tranquility Bloom##236761 |n
collect Tranquility Bloom##236767 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Tranquility Bloom (Zul Aman)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Zul Aman M"},
items={236761,236767},
},[[
step
map Zul Aman M/0
path follow smart; loop on; ants curved; dist 30
path	44.83,37.00	47.65,36.09	48.66,38.64	46.59,40.82	44.96,43.15
path	47.40,44.66	48.37,48.09	47.33,51.97	47.66,57.54	48.39,59.13
path	49.27,60.91	51.59,63.15	52.80,66.30	54.80,69.10	56.82,72.64
path	57.81,75.60	58.90,79.29	59.08,82.18	56.35,82.22	52.95,80.98
path	51.67,80.90	49.53,81.84	47.82,84.60	46.34,88.27	45.39,90.03
path	43.25,90.31	40.91,90.09	39.78,88.47	39.87,86.40	40.84,83.95
path	42.19,82.54	43.01,80.49	43.03,79.68	41.31,79.41	39.30,79.62
path	37.78,80.05	36.36,80.49	33.95,81.79	32.32,83.03	30.68,83.15
path	29.92,82.41	29.36,80.96	29.13,79.14	28.96,78.25	28.03,77.78
path	26.35,78.76	24.21,79.54	22.88,78.45	22.44,76.22	22.91,73.12
path	23.38,69.93	23.40,66.25	25.19,68.07	26.63,70.28	28.21,71.91
path	30.83,72.00	32.47,70.28	34.07,69.64	37.74,70.41	39.04,70.25
path	40.75,65.30	41.76,60.84	42.15,56.64	42.96,51.52	42.64,47.84
path	42.75,44.57	42.74,41.11	42.07,39.61	41.72,38.71	42.78,37.75
path	43.80,37.46
click Tranquility Bloom##516932+
|tip They share a spawn with other herb nodes.
collect Tranquility Bloom##236761 |n
collect Tranquility Bloom##236767 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Tranquility Bloom (Harandar)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Harandar"},
items={236761,236767},
},[[
step
map Harandar/0
path follow smart; loop on; ants curved; dist 30
path	55.76,52.35	56.06,46.70	56.52,41.15	59.31,39.35	62.47,37.60
path	63.74,35.06	65.82,35.10	67.71,37.60	69.04,39.84	70.41,40.91
path	71.48,37.91	72.05,32.76	69.55,27.93	66.76,25.00	65.07,23.33
path	63.14,24.77	61.27,26.39	59.90,29.12	58.66,30.90	56.04,33.23
path	55.01,34.29	53.17,37.74	49.99,40.69	47.96,42.78	45.06,44.43
path	41.59,46.55	39.79,49.52	39.68,56.51	41.60,59.38	43.03,62.28
path	44.11,65.93	44.42,69.19	46.02,70.30	48.25,70.42	48.33,72.22
path	48.98,77.22	49.92,79.03	51.74,79.28	52.78,78.35	53.33,76.76
path	52.59,73.99	51.35,71.35	51.37,68.91	52.85,65.19	54.73,61.62
path	55.45,58.56
click Tranquility Bloom##516932+
|tip They share a spawn with other herb nodes.
collect Tranquility Bloom##236761 |n
collect Tranquility Bloom##236767 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Tranquility Bloom (Voidstorm)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Voidstorm"},
items={236761,236767},
},[[
step
map Voidstorm/0
path follow smart; loop on; ants curved; dist 30
path	52.28,70.22	53.93,71.81	54.48,76.89	55.06,78.53	56.21,81.97
path	57.49,83.51	60.49,86.09	62.13,86.20	62.82,84.48	62.89,82.01
path	62.48,79.19	61.20,73.79	59.94,68.54	60.41,63.95	61.51,62.03
path	64.46,59.16	65.05,56.62	64.24,55.85	60.66,57.80	57.08,58.18
path	56.83,55.95	58.07,52.72	58.10,49.26	57.77,47.29	56.44,45.81
path	54.93,45.19	52.56,45.40	51.37,47.01	49.15,51.10	48.18,53.07
path	45.92,57.04	44.21,58.93	42.61,59.07	41.78,58.56	40.96,57.00
path	39.92,52.52	39.57,47.76	39.41,45.04	38.44,41.36	36.89,41.57
path	35.80,43.86	34.12,48.88	32.70,52.31	32.19,56.87	32.68,60.24
path	34.15,64.91	34.97,69.26	35.00,73.03	34.40,75.49	34.82,77.39
path	36.33,78.42	37.83,79.24	40.50,80.86	43.39,82.31	47.05,84.13
path	48.22,84.28	49.01,82.06	49.04,79.99	48.62,78.18	48.56,73.51
path	49.38,71.53	51.58,70.37
click Tranquility Bloom##516932+
|tip They share a spawn with other herb nodes.
collect Tranquility Bloom##236761 |n
collect Tranquility Bloom##236767 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Argentleaf (Eversong Woods)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Eversong Woods M"},
items={236776,236777},
},[[
step
map Eversong Woods M/0
path follow smart; loop on; ants curved; dist 40
path	48.10,38.10	45.99,38.38	43.06,35.25	39.83,34.46	37.21,39.14
path	36.32,45.15	36.10,48.67	39.50,51.88	42.30,54.02	45.33,55.11
path	46.56,56.23	46.70,58.21	43.83,60.69	40.69,61.86	39.08,63.22
path	39.23,68.48	41.14,77.33	42.47,82.37	42.92,86.23	44.12,86.07
path	45.66,83.73	47.46,81.67	49.03,80.60	50.96,80.67	52.96,83.08
path	53.78,84.65	55.38,81.52	55.82,79.23	55.76,77.57	56.92,74.14
path	58.20,71.87	60.34,68.36	62.81,63.35	60.83,62.29	58.03,62.67
path	56.10,62.84	53.80,62.57	53.03,61.49	53.37,59.64	55.00,58.02
path	57.63,56.78	60.44,55.32	61.75,53.60	63.81,50.35	62.62,47.62
path	61.18,45.19	60.13,44.12	57.27,43.71	53.78,42.42	50.70,42.56
path	47.96,41.39
click Argentleaf##516936+
|tip They share a spawn with other herb nodes.
collect Argentleaf##236776 |n
collect Argentleaf##236777 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Argentleaf (Zul Aman)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Zul Aman M"},
items={236776,236777},
},[[
step
map Zul Aman M/0
path follow smart; loop on; ants curved; dist 30
path	44.83,37.00	47.65,36.09	48.66,38.64	46.59,40.82	44.96,43.15
path	47.40,44.66	48.37,48.09	47.33,51.97	47.66,57.54	48.39,59.13
path	49.27,60.91	51.59,63.15	52.80,66.30	54.80,69.10	56.82,72.64
path	57.81,75.60	58.90,79.29	59.08,82.18	56.35,82.22	52.95,80.98
path	51.67,80.90	49.53,81.84	47.82,84.60	46.34,88.27	45.39,90.03
path	43.25,90.31	40.91,90.09	39.78,88.47	39.87,86.40	40.84,83.95
path	42.19,82.54	43.01,80.49	43.03,79.68	41.31,79.41	39.30,79.62
path	37.78,80.05	36.36,80.49	33.95,81.79	32.32,83.03	30.68,83.15
path	29.92,82.41	29.36,80.96	29.13,79.14	28.96,78.25	28.03,77.78
path	26.35,78.76	24.21,79.54	22.88,78.45	22.44,76.22	22.91,73.12
path	23.38,69.93	23.40,66.25	25.19,68.07	26.63,70.28	28.21,71.91
path	30.83,72.00	32.47,70.28	34.07,69.64	37.74,70.41	39.04,70.25
path	40.75,65.30	41.76,60.84	42.15,56.64	42.96,51.52	42.64,47.84
path	42.75,44.57	42.74,41.11	42.07,39.61	41.72,38.71	42.78,37.75
path	43.80,37.46
click Argentleaf##516936+
|tip They share a spawn with other herb nodes.
collect Argentleaf##236776 |n
collect Argentleaf##236777 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Argentleaf (Harandar)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Harandar"},
items={236776,236777},
},[[
step
map Harandar/0
path follow smart; loop on; ants curved; dist 30
path	55.76,52.35	56.06,46.70	56.52,41.15	59.31,39.35	62.47,37.60
path	63.74,35.06	65.82,35.10	67.71,37.60	69.04,39.84	70.41,40.91
path	71.48,37.91	72.05,32.76	69.55,27.93	66.76,25.00	65.07,23.33
path	63.14,24.77	61.27,26.39	59.90,29.12	58.66,30.90	56.04,33.23
path	55.01,34.29	53.17,37.74	49.99,40.69	47.96,42.78	45.06,44.43
path	41.59,46.55	39.79,49.52	39.68,56.51	41.60,59.38	43.03,62.28
path	44.11,65.93	44.42,69.19	46.02,70.30	48.25,70.42	48.33,72.22
path	48.98,77.22	49.92,79.03	51.74,79.28	52.78,78.35	53.33,76.76
path	52.59,73.99	51.35,71.35	51.37,68.91	52.85,65.19	54.73,61.62
path	55.45,58.56
click Argentleaf##516936+
|tip They share a spawn with other herb nodes.
collect Argentleaf##236776 |n
collect Argentleaf##236777 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Argentleaf (Voidstorm)",{
meta={goldtype="route",skillreq={midnight_herbalism=1},levelreq={80}},
maps={"Voidstorm"},
items={236776,236777},
},[[
step
map Voidstorm/0
path follow smart; loop on; ants curved; dist 30
path	52.28,70.22	53.93,71.81	54.48,76.89	55.06,78.53	56.21,81.97
path	57.49,83.51	60.49,86.09	62.13,86.20	62.82,84.48	62.89,82.01
path	62.48,79.19	61.20,73.79	59.94,68.54	60.41,63.95	61.51,62.03
path	64.46,59.16	65.05,56.62	64.24,55.85	60.66,57.80	57.08,58.18
path	56.83,55.95	58.07,52.72	58.10,49.26	57.77,47.29	56.44,45.81
path	54.93,45.19	52.56,45.40	51.37,47.01	49.15,51.10	48.18,53.07
path	45.92,57.04	44.21,58.93	42.61,59.07	41.78,58.56	40.96,57.00
path	39.92,52.52	39.57,47.76	39.41,45.04	38.44,41.36	36.89,41.57
path	35.80,43.86	34.12,48.88	32.70,52.31	32.19,56.87	32.68,60.24
path	34.15,64.91	34.97,69.26	35.00,73.03	34.40,75.49	34.82,77.39
path	36.33,78.42	37.83,79.24	40.50,80.86	43.39,82.31	47.05,84.13
path	48.22,84.28	49.01,82.06	49.04,79.99	48.62,78.18	48.56,73.51
path	49.38,71.53	51.58,70.37
click Argentleaf##516936+
|tip They share a spawn with other herb nodes.
collect Argentleaf##236776 |n
collect Argentleaf##236777 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Inscription\\Leveling Guides\\Midnight Inscription 1-100",{
description="This guide will walk you through leveling your Midnight Inscription profession from 1-100.",
startlevel=78.00,
},[[
step
Approximate bill of materials:
Tranquility Bloom: 280
Argentleaf: 80
Mana Lily: 80
Sanguithorn: 80
Azeroot: 65
Duskshrouded Stone: 2
Petrified Root: 2
Mote of Primal Energy: 4
Mote of Pure Void: 5
Mote of Light: 2
Mote of Wild Magic: 7
|tip These totals are approximate. Due to the nature of Milling you may need more or less.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to approximately 50 skill level. |only if default
|tip These materials will get you to approximately 52 skill level. |only if KulTiran
|tip These materials will get you to approximately 65 skill level. |only if Nightborne
Click Here to Continue |confirm
step
talk Zantasia##243553
Train Inscription |skillmax Inscription,300 |goto Silvermoon City M/0 46.91,51.62
step
talk Zantasia##243553
Train Midnight Inscription |skillmax Midnight Inscription,100 |goto Silvermoon City M/0 46.91,51.62
step
collect 280 Tranquility Bloom##236761, Tranquility Bloom##236767 |usebank
|tip Normal or High quality.
|tip Farm them with Herbalism or purchase them from the auction house.
step
collect 80 Sanguithorn##236770, Sanguithorn##236771 |usebank
|tip Normal or High quality.
|tip Farm them with Herbalism or purchase them from the auction house.
step
collect 80 Mana Lily##236778, Mana Lily##236779 |usebank
|tip Normal or High quality.
|tip Farm them with Herbalism or purchase them from the auction house.
step
collect 80 Argentleaf##236776, Argentleaf##236777 |usebank
|tip Normal or High quality.
|tip Farm them with Herbalism or purchase them from the auction house.
step
cast Midnight Milling##1269575
|tip Mill the Tranquility Bloom, Argentleaf, Mana Lily, and Sanguithorn.
|tip {y}Important:{} Mill all of the herbs even after this step completes.
Reach Skill Level 20 in Midnight Inscription |skill Midnight Inscription,20 |goto Silvermoon City M/0 46.91,51.62 |only if default
Reach Skill Level 22 in Midnight Inscription |skill Midnight Inscription,22 |goto Silvermoon City M/0 46.91,51.62 |only if KulTiran
Reach Skill Level 35 in Midnight Inscription |skill Midnight Inscription,35 |goto Silvermoon City M/0 46.91,51.62 |only if Nightborne
step
talk Zantasia##243553
learn Sienna Ink##1230016 |goto Silvermoon City M/0 46.91,51.62
step
talk Zantasia##243553
learn Munsell Ink##1230017 |goto Silvermoon City M/0 46.91,51.62
step
talk Lelorian##243555
buy 72 Thalassian Songwater##245882 |goto Silvermoon City M/0 46.66,51.21
step
collect 110 Sanguithorn Pigment##245864, Sanguithorn Pigment##245865 |usebank
|tip Normal or High quality.
|tip Mill them with Inscription or purchase them from the auction house.
|tip You should have these from Milling.
|tip If you come up short, mill or purchase what you need.
step
collect 120 Argentleaf Pigment##245803, Argentleaf Pigment##245804 |usebank
|tip Normal or High quality.
|tip Mill them with Inscription or purchase them from the auction house.
|tip You should have these from Milling.
|tip If you come up short, mill or purchase what you need.
step
collect 115 Mana Lily Pigment##245866, Mana Lily Pigment##245867 |usebank
|tip Normal or High quality.
|tip Mill them with Inscription or purchase them from the auction house.
|tip You should have these from Milling.
|tip If you come up short, mill or purchase what you need.
step
collect 460 Powder Pigment##245807, Powder Pigment##245808 |usebank
|tip Normal or High quality.
|tip Mill them with Inscription or purchase them from the auction house.
|tip You should have these from Milling.
|tip If you come up short, mill or purchase what you need.
step
create Munsell Ink##1230017,Midnight Inscription,11 total |goto Silvermoon City M/0 46.91,51.62 |only if default
create Munsell Ink##1230017,Midnight Inscription,11 total |goto Silvermoon City M/0 46.91,51.62 |only if KulTiran
create Munsell Ink##1230017,Midnight Inscription,11 total |goto Silvermoon City M/0 46.91,51.62 |only if Nightborne
|tip Save these inks for later steps.
step
create Sienna Ink##1230016,Midnight Inscription,12 total |goto Silvermoon City M/0 46.91,51.62 |only if default
create Sienna Ink##1230016,Midnight Inscription,12 total |goto Silvermoon City M/0 46.91,51.62 |only if KulTiran
create Sienna Ink##1230016,Midnight Inscription,12 total |goto Silvermoon City M/0 46.91,51.62 |only if Nightborne
|tip Save these inks for later steps.
step
create Sienna Ink##1230016,Midnight Inscription,30 |goto Silvermoon City M/0 46.91,51.62 |only if default
create Sienna Ink##1230016,Midnight Inscription,32 |goto Silvermoon City M/0 46.91,51.62 |only if KulTiran
create Sienna Ink##1230016,Midnight Inscription,45 |goto Silvermoon City M/0 46.91,51.62 |only if Nightborne
|tip You should already have this skill level from making ink.
step
Learn the Calm Hands specialization
|tip This will allow you to make Thalassian Treatise on Inscription to level with later.
confirm
step
talk Zantasia##243553
learn Faunatender's Baton##1230055 |goto Silvermoon City M/0 46.91,51.62
step
talk Zantasia##243553
learn Floratender's Crutch##1230056 |goto Silvermoon City M/0 46.91,51.62
step
talk Zantasia##243553
learn Rootwarden's Lamp##1230057 |goto Silvermoon City M/0 46.91,51.62
step
talk Zantasia##243553
learn Soul Cipher##1230019 |goto Silvermoon City M/0 46.91,51.62
step
talk Lelorian##243555
buy 3 Thalassian Songwater##245882 |goto Silvermoon City M/0 46.66,51.21
step
collect 24 Azeroot##236774, Azeroot##236775 |usebank
|tip Normal or High quality.
|tip Farm them with Herbalism or purchase them from the auction house.
step
collect 2 Duskshrouded Stone##242788, Duskshrouded Stone##242789 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 2 Munsell Ink##245801, Munsell Ink##245802 |usebank
|tip You should have these from a previous step.
step
collect 2 Sienna Ink##245805, Sienna Ink##245806 |usebank
|tip You should have these from a previous step.
step
collect 2 Mote of Pure Void##236952 |usebank
step
collect 2 Mote of Light##236949 |usebank
step
collect 2 Mote of Pure Void##236952 |usebank
step
collect 2 Mote of Light##236949 |usebank
step
craft Faunatender's Baton##1230055,Midnight Inscription
firstcraft Faunatender's Baton##1230055 |goto Silvermoon City M/0 46.91,51.62
step
craft Floratender's Crutch##1230056,Midnight Inscription
firstcraft Floratender's Crutch##1230056 |goto Silvermoon City M/0 46.91,51.62
step
craft Rootwarden's Lamp##1230057,Midnight Inscription
firstcraft Rootwarden's Lamp##1230057 |goto Silvermoon City M/0 46.91,51.62
step
craft Soul Cipher##1230019,Midnight Inscription
firstcraft Soul Cipher##1230019 |goto Silvermoon City M/0 46.91,51.62
step
create Soul Cipher##1230019,Midnight Inscription,2 total |goto Silvermoon City M/0 46.91,51.62
|tip Save both of these for later steps.
step
talk Zantasia##243553
learn Codified Azeroot##1230018 |goto Silvermoon City M/0 46.91,51.62
step
talk Zantasia##243553
learn Faunatender's Trust##1230058 |goto Silvermoon City M/0 46.91,51.62
step
talk Zantasia##243553
learn Hobbyist Alchemist's Mixing Rod##1230021 |goto Silvermoon City M/0 46.91,51.62
step
talk Zantasia##243553
learn Hobbyist Rolling Pin##1230020 |goto Silvermoon City M/0 46.91,51.62
step
talk Zantasia##243553
learn Hobbyist Scribe's Quill##1230022 |goto Silvermoon City M/0 46.91,51.62
step
talk Zantasia##243553
learn Thalassian Missive of the Aurora##1230042 |goto Silvermoon City M/0 46.91,51.62
step
talk Zantasia##243553
learn Thalassian Missive of the Feverflare##1230041 |goto Silvermoon City M/0 46.91,51.62
step
talk Zantasia##243553
learn Thalassian Missive of the Fireflash##1230040 |goto Silvermoon City M/0 46.91,51.62
step
talk Zantasia##243553
learn Thalassian Missive of the Harmonious##1230039 |goto Silvermoon City M/0 46.91,51.62
step
collect 1 Soul Cipher##245766, Soul Cipher##245767 |usebank
|tip Normal or High quality.
|tip You should have this from a previous step.
step
collect 41 Azeroot##236774, Azeroot##236775 |usebank
|tip Normal or High quality.
|tip Farm them with Herbalism or purchase them from the auction house.
step
collect 9 Munsell Ink##245801, Munsell Ink##245802 |usebank
|tip You should have these from a previous step.
step
collect 11 Sienna Ink##245805, Sienna Ink##245806 |usebank
|tip You should have these from a previous step.
step
collect 4 Mote of Primal Energy##236950 |usebank
step
collect 1 Mote of Wild Magic##236951 |usebank
step
collect 1 Mote of Pure Void##236952 |usebank
step
craft Codified Azeroot##1230018,Midnight Inscription
firstcraft Codified Azeroot##1230018 |goto Silvermoon City M/0 46.91,51.62
step
craft Faunatender's Trust##1230058,Midnight Inscription
firstcraft Faunatender's Trust##1230058 |goto Silvermoon City M/0 46.91,51.62
step
craft Hobbyist Alchemist's Mixing Rod##1230021,Midnight Inscription
firstcraft Hobbyist Alchemist's Mixing Rod##1230021 |goto Silvermoon City M/0 46.91,51.62
step
craft Hobbyist Rolling Pin##1230020,Midnight Inscription
firstcraft Hobbyist Rolling Pin##1230020 |goto Silvermoon City M/0 46.91,51.62
step
craft Hobbyist Scribe's Quill##1230022,Midnight Inscription
firstcraft Hobbyist Scribe's Quill##1230022 |goto Silvermoon City M/0 46.91,51.62
step
craft Thalassian Missive of the Aurora##1230042,Midnight Inscription
firstcraft Thalassian Missive of the Aurora##1230042 |goto Silvermoon City M/0 46.91,51.62
step
craft Thalassian Missive of the Feverflare##1230041,Midnight Inscription
firstcraft Thalassian Missive of the Feverflare##1230041 |goto Silvermoon City M/0 46.91,51.62
step
craft Thalassian Missive of the Fireflash##1230040,Midnight Inscription
firstcraft Thalassian Missive of the Fireflash##1230040 |goto Silvermoon City M/0 46.91,51.62
step
craft Thalassian Missive of the Harmonious##1230039,Midnight Inscription
firstcraft Thalassian Missive of the Harmonious##1230039 |goto Silvermoon City M/0 46.91,51.62
step
Equip the Hobbyist Scribe's Quill you created
confirm
step
create Thalassian Treatise on Inscription##1230032,Midnight Inscription,45 |goto Silvermoon City M/0 46.91,51.62 |only if default
create Thalassian Treatise on Inscription##1230032,Midnight Inscription,47 |goto Silvermoon City M/0 46.91,51.62 |only if KulTiran
create Thalassian Treatise on Inscription##1230032,Midnight Inscription,60 |goto Silvermoon City M/0 46.91,51.62 |only if Nightborne
|tip If you get unlucky with points, create these to reach 45.
|tip Each one costs 3 Lexicologist's Vellum, 1 Munsell Ink, 1 Sienna Ink, and 1 Mote of Wild Magic.
step
talk Zantasia##243553
learn Thalassian Missive of the Peerless##1230038 |goto Silvermoon City M/0 46.91,51.62
step
talk Zantasia##243553
learn Thalassian Missive of the Quickblade##1230037 |goto Silvermoon City M/0 46.91,51.62
step
talk Lelorian##243555
buy 9 Lexicologist's Vellum##245881 |goto Silvermoon City M/0 46.66,51.21
step
collect 7 Munsell Ink##245801, Munsell Ink##245802 |usebank
|tip You should have these from a previous step.
step
collect 7 Sienna Ink##245805, Sienna Ink##245806 |usebank
|tip You should have these from a previous step.
step
collect 2 Mote of Pure Void##236952 |usebank
step
collect 3 Mote of Wild Magic##236951 |usebank
step
craft Thalassian Missive of the Peerless##1230038,Midnight Inscription
firstcraft Thalassian Missive of the Peerless##1230038 |goto Silvermoon City M/0 46.91,51.62
step
craft Thalassian Missive of the Quickblade##1230037,Midnight Inscription
firstcraft Thalassian Missive of the Quickblade##1230037 |goto Silvermoon City M/0 46.91,51.62
step
create Thalassian Treatise on Inscription##1230032,Midnight Inscription,50 |goto Silvermoon City M/0 46.91,51.62 |only if default
create Thalassian Treatise on Inscription##1230032,Midnight Inscription,52 |goto Silvermoon City M/0 46.91,51.62 |only if KulTiran
create Thalassian Treatise on Inscription##1230032,Midnight Inscription,65 |goto Silvermoon City M/0 46.91,51.62 |only if Nightborne
step
talk Zantasia##243553
learn Thalassian Missive of the Peerless##1230038 |goto Silvermoon City M/0 46.91,51.62
step
collect 2 Petrified Root##251285 |usebank
|tip Purchase them from the auction house.
step
collect 1 Soul Cipher##245766, Soul Cipher##245767 |usebank
|tip Normal or High quality.
|tip You should have this from a previous step.
step
craft Thalassian Missive of the Peerless##1230038,Midnight Inscription
firstcraft Thalassian Missive of the Peerless##1230038 |goto Silvermoon City M/0 46.91,51.62
step
Reach Skill Level 100 in Midnight Inscription |skill Midnight Inscription,100 |or |only if default
Reach Skill Level 102 in Midnight Inscription |skill Midnight Inscription,102 |or |only if KulTiran
Reach Skill Level 115 in Midnight Inscription |skill Midnight Inscription,115 |or |only if Nightborne
|tip From this point, keep making Thalassian Treatise on Inscription and discovering other Treatises.
|tip First Craft each one and make what you prefer to earn remaining points.
|tip Your best path is the Crafting Order system to craft items for other players with provided materials.
]])
QuestCore:RegisterGuide("Profession Guides\\Inscription\\Midnight Inscription Knowledge Treasures",{
description="This guide will walk you through collecting all Inscription Knowledge Treasures.",
startlevel=68.00,
condition_end=function() return completedallq(89073,89074,89069,89068,89070,89071,89067) end,
},[[
step
talk Zantasia##243553
Train Inscription |skillmax Inscription,300 |goto Silvermoon City M/0 46.91,51.62
step
talk Zantasia##243553
Train Midnight Inscription |skillmax Midnight Inscription,100 |goto Silvermoon City M/0 46.91,51.62
step
click Songwriter's Pen##525931
collect Songwriter's Pen##238578 |goto Silvermoon City M/0 47.59,50.39 |q 89073 |future
step
use the Songwriter's Pen##238578
Study the Songwriter's Pen |complete itemcount(238578) == 0
step
click Songwriter's Quill##525930
|tip Inside the building on the bottom floor.
collect Songwriter's Quill##238579 |goto Eversong Woods M/0 40.35,61.23 |q 89074 |future
step
use the Songwriter's Quill##238579
Study the Songwriter's Quill |complete itemcount(238579) == 0
step
click Spare Ink##525935
collect Spare Ink##238574 |goto Eversong Woods M/0 48.31,75.54 |q 89069 |future
step
use the Spare Ink##238574
Study the Spare Ink |complete itemcount(238574) == 0
step
Enter the cave |goto Zul Aman M/0 40.52,49.87 < 10 |walk
click Leather-Bound Techniques##525936
|tip Inside the cave.
collect Leather-Bound Techniques##238573 |goto Zul Aman M/0 40.48,49.36 |q 89068 |future
step
use the Leather-Bound Techniques##238573
Study the Leather-Bound Techniques |complete itemcount(238573) == 0
step
click Intrepid Explorer's Marker##525934
|tip Up on the roots above.
collect Intrepid Explorer's Marker##238575 |goto Harandar/0 52.43,52.61 |q 89070 |future
step
use the Intrepid Explorer's Marker##238575
Study the Intrepid Explorer's Marker |complete itemcount(238575) == 0
step
click Leftover Sanguithorn Pigment##525933
|tip A tiny bottle on the table.
collect Leftover Sanguithorn Pigment##238576 |goto Harandar/0 52.75,49.98 |q 89071 |future
step
use the Leftover Sanguithorn Pigment##238576
Study the Leftover Sanguithorn Pigment |complete itemcount(238576) == 0
step
click Void-Touched Quill##525937
|tip Inside the building.
collect Void-Touched Quill##238572 |goto Slayers Rise/0 60.69,84.26 |q 89067 |future
step
use the Void-Touched Quill##238572
Study the Void-Touched Quill |complete itemcount(238572) == 0
]])
QuestCore:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Midnight Jewelcrafting 1-100",{
description="This guide will walk you through leveling your Midnight Jewelcrafting profession from 1-100.",
startlevel=78.00,
},[[
step
Approximate bill of materials:
|tip Refulgent Copper Ore: 65
|tip Umbral Tin Ore: 5
|tip Ambivalent Amber: 35
|tip Stunning Sapphire: 15
|tip These totals are approximate.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to approximately 65 skill level. |only if default
|tip These materials will get you to approximately 67 skill level. |goto Silvermoon City M/0 48.18,55.08 |only if KulTiran
|tip These materials will get you to approximately 80 skill level. |goto Silvermoon City M/0 48.18,55.08 |only if Nightborne
Click Here to Continue |confirm
step
talk Amin##243345
Train Jewelcrafting |skillmax Jewelcrafting,300 |goto Silvermoon City M/0 48.18,55.08
step
talk Amin##243345
Train Midnight Jewelcrafting |skillmax Midnight Jewelcrafting,100 |goto Silvermoon City M/0 48.18,55.08
step
cast Midnight Prospecting##1231127
|tip Prospect all 60 Refulgent Copper Ore.
|tip {y}Important:{} Make sure you save 5 Refulgent Copper Ore ore later.
Reach Skill Level 10 in Midnight Jewelcrafting |skill Midnight Jewelcrafting,10 |only if default
Reach Skill Level 12 in Midnight Jewelcrafting |skill Midnight Jewelcrafting,12 |only if KulTiran
Reach Skill Level 25 in Midnight Jewelcrafting |skill Midnight Jewelcrafting,25 |only if Draenei
step
talk Zantasia##243553
learn Sunglass Vial##1230476 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Deadly Garnet##1230463 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Masterful Amethyst##1230456 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Quick Peridot##1230437 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Sin'dorei Lens##1230475 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Versatile Lapis##1230449 |goto Silvermoon City M/0 48.18,55.08
step
collect 8 Glimmering Gemdust##242620, Glimmering Gemdust##242621 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 17 Crystalline Glass##242786, Crystalline Glass##242787 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Duskshrouded Stone##242788, Duskshrouded Stone##242789 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Sanguine Garnet##242553, Sanguine Garnet##242723 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Tenebrous Amethyst##242606, Tenebrous Amethyst##242721 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Harandar Peridot##242607, Harandar Peridot##242720 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Amani Lapis##242554, Amani Lapis##242722 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
create Sin'dorei Lens##1230475,Midnight Jewelcrafting,4 total |goto Silvermoon City M/0 48.18,55.08
|tip Save these for later steps.
step
craft Sunglass Vial##1230476,Midnight Jewelcrafting
firstcraft Sunglass Vial##1230476 |goto Silvermoon City M/0 48.18,55.08
step
craft Deadly Garnet##1230463,Midnight Jewelcrafting
firstcraft Deadly Garnet##1230463 |goto Silvermoon City M/0 48.18,55.08
step
craft Masterful Amethyst##1230456,Midnight Jewelcrafting
firstcraft Masterful Amethyst##1230456 |goto Silvermoon City M/0 48.18,55.08
step
craft Quick Peridot##1230437,Midnight Jewelcrafting
firstcraft Quick Peridot##1230437 |goto Silvermoon City M/0 48.18,55.08
step
craft Versatile Lapis##1230449,Midnight Jewelcrafting
firstcraft Versatile Lapis##1230449 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Deadly Lapis##1230447 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Deadly Peridot##1230439 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Silvermoon Loupes##1230492 |goto Silvermoon City M/0 48.18,55.08
step
collect 3 Glimmering Gemdust##242620, Glimmering Gemdust##242621 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Sin'dorei Lens##240972, Sin'dorei Lens##240973 |usebank
|tip Normal or High quality.
|tip You created these in a previous step.
step
collect 1 Amani Lapis##242554, Amani Lapis##242722 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Harandar Peridot##242607, Harandar Peridot##242720 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
craft Deadly Lapis##1230447,Midnight Jewelcrafting
firstcraft Deadly Lapis##1230447 |goto Silvermoon City M/0 48.18,55.08
step
craft Deadly Peridot##1230439,Midnight Jewelcrafting
firstcraft Deadly Peridot##1230439 |goto Silvermoon City M/0 48.18,55.08
step
craft Silvermoon Loupes##1230492,Midnight Jewelcrafting
firstcraft Silvermoon Loupes##1230492 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Deadly Amethyst##1230455 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Gleaming Copper Band##1230489 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Masterful Lapis##1230448 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Masterful Peridot##1230440 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Quick Garnet##1230462 |goto Silvermoon City M/0 48.18,55.08
step
collect 5 Refulgent Copper Ore##237359, Refulgent Copper Ore##237361 |usebank
|tip Normal or High quality.
|tip Farm them with Mining or purchase them from the auction house.
step
collect 1 Duskshrouded Stone##242788, Duskshrouded Stone##242789 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Tenebrous Amethyst##242606, Tenebrous Amethyst##242721 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Amani Lapis##242554, Amani Lapis##242722 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Harandar Peridot##242607, Harandar Peridot##242720 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Sanguine Garnet##242553, Sanguine Garnet##242723 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 4 Glimmering Gemdust##242620, Glimmering Gemdust##242621 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
craft Deadly Amethyst##1230455,Midnight Jewelcrafting
firstcraft Deadly Amethyst##1230455 |goto Silvermoon City M/0 48.18,55.08
step
craft Gleaming Copper Band##1230489,Midnight Jewelcrafting
firstcraft Gleaming Copper Band##1230489 |goto Silvermoon City M/0 48.18,55.08
step
craft Masterful Lapis##1230448,Midnight Jewelcrafting
firstcraft Masterful Lapis##1230448 |goto Silvermoon City M/0 48.18,55.08
step
craft Masterful Peridot##1230440,Midnight Jewelcrafting
firstcraft Masterful Peridot##1230440 |goto Silvermoon City M/0 48.18,55.08
step
craft Quick Garnet##1230462,Midnight Jewelcrafting
firstcraft Quick Garnet##1230462 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Masterful Garnet##1230464 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Quick Amethyst##1230454 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Quick Lapis##1230446 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Silvermoon Focusing Shard##1230491 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Versatile Peridot##1230441 |goto Silvermoon City M/0 48.18,55.08
step
collect 2 Sanguine Garnet##242553, Sanguine Garnet##242723 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Tenebrous Amethyst##242606, Tenebrous Amethyst##242721 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Amani Lapis##242554, Amani Lapis##242722 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Harandar Peridot##242607, Harandar Peridot##242720 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Duskshrouded Stone##242788, Duskshrouded Stone##242789 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 3 Crystalline Glass##242786, Crystalline Glass##242787 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 4 Glimmering Gemdust##242620, Glimmering Gemdust##242621 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
craft Masterful Garnet##1230464,Midnight Jewelcrafting
firstcraft Masterful Garnet##1230464 |goto Silvermoon City M/0 48.18,55.08
step
craft Quick Amethyst##1230454,Midnight Jewelcrafting
firstcraft Quick Amethyst##1230454 |goto Silvermoon City M/0 48.18,55.08
step
craft Quick Lapis##1230446,Midnight Jewelcrafting
firstcraft Quick Lapis##1230446 |goto Silvermoon City M/0 48.18,55.08
step
craft Silvermoon Focusing Shard##1230491,Midnight Jewelcrafting
firstcraft Silvermoon Focusing Shard##1230491 |goto Silvermoon City M/0 48.18,55.08
step
craft Versatile Peridot##1230441,Midnight Jewelcrafting
firstcraft Versatile Peridot##1230441 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Nocturnal Charm##1230490 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Versatile Amethyst##1230457 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Versatile Garnet##1230465 |goto Silvermoon City M/0 48.18,55.08
step
collect 1 Sanguine Garnet##242553, Sanguine Garnet##242723 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Tenebrous Amethyst##242606, Tenebrous Amethyst##242721 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Duskshrouded Stone##242788, Duskshrouded Stone##242789 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 5 Umbral Tin Ore##237362, Umbral Tin Ore##237363 |usebank
|tip Normal or High quality.
|tip Farm them with Mining or purchase them from the auction house.
step
craft Nocturnal Charm##1230490,Midnight Jewelcrafting
firstcraft Nocturnal Charm##1230490 |goto Silvermoon City M/0 48.18,55.08
step
craft Versatile Amethyst##1230457,Midnight Jewelcrafting
firstcraft Versatile Amethyst##1230457 |goto Silvermoon City M/0 48.18,55.08
step
craft Versatile Garnet##1230465,Midnight Jewelcrafting
firstcraft Versatile Garnet##1230465 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Fantastic Font Focuser##1230493 |goto Silvermoon City M/0 48.18,55.08
step
collect 1 Sin'dorei Lens##240972, Sin'dorei Lens##240973 |usebank
|tip Normal or High quality.
|tip You created these in a previous step.
step
collect 2 Duskshrouded Stone##242788, Duskshrouded Stone##242789 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
craft Fantastic Font Focuser##1230493,Midnight Jewelcrafting
firstcraft Fantastic Font Focuser##1230493 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Kaleidoscopic Prism##1230474 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Monologuer's Chalice##1230499 |goto Silvermoon City M/0 48.18,55.08
step
collect 1 Flawless Sanguine Garnet##242613, Flawless Sanguine Garnet##242724 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Flawless Tenebrous Amethyst##242611, Flawless Tenebrous Amethyst##242725 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Flawless Harandar Peridot##242610, Flawless Harandar Peridot##242726 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Flawless Amani Lapis##242612, Flawless Amani Lapis##242727 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 2 Crystalline Glass##242786, Crystalline Glass##242787 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 10 Glimmering Gemdust##242620, Glimmering Gemdust##242621 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
craft Kaleidoscopic Prism##1230474,Midnight Jewelcrafting
firstcraft Kaleidoscopic Prism##1230474 |goto Silvermoon City M/0 48.18,55.08
step
craft Monologuer's Chalice##1230499,Midnight Jewelcrafting
firstcraft Monologuer's Chalice##1230499 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Bold Biographer's Bifocals##1230494 |goto Silvermoon City M/0 48.18,55.08
step
collect 2 Sin'dorei Lens##240972, Sin'dorei Lens##240973 |usebank
|tip Normal or High quality.
|tip You created these in a previous step.
step
collect 1 Duskshrouded Stone##242788, Duskshrouded Stone##242789 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
craft Bold Biographer's Bifocals##1230494,Midnight Jewelcrafting
firstcraft Bold Biographer's Bifocals##1230494 |goto Silvermoon City M/0 48.18,55.08
step
create Monologuer's Chalice##1230499,Midnight Jewelcrafting,50 |goto Silvermoon City M/0 48.18,55.08 |only if default
create Monologuer's Chalice##1230499,Midnight Jewelcrafting,52 |goto Silvermoon City M/0 48.18,55.08 |only if KulTiran
create Monologuer's Chalice##1230499,Midnight Jewelcrafting,65 |goto Silvermoon City M/0 48.18,55.08 |only if Nightborne
|tip If you come up short of 50, make these until you reach it.
step
talk Zantasia##243553
learn Flawless Deadly Garnet##1230467 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Flawless Masterful Amethyst##1230460 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Flawless Quick Peridot##1230442 |goto Silvermoon City M/0 48.18,55.08
step
talk Zantasia##243553
learn Flawless Versatile Lapis##1230453 |goto Silvermoon City M/0 48.18,55.08
step
collect 1 Flawless Sanguine Garnet##242613, Flawless Sanguine Garnet##242724 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Flawless Tenebrous Amethyst##242611, Flawless Tenebrous Amethyst##242725 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Flawless Harandar Peridot##242610, Flawless Harandar Peridot##242726 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 1 Flawless Amani Lapis##242612, Flawless Amani Lapis##242727 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 20 Glimmering Gemdust##242620, Glimmering Gemdust##242621 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
collect 4 Petrified Root##251285 |usebank
|tip Purchase them from the auction house.
step
collect 3 Mote of Pure Void##236952 |usebank
step
collect 3 Mote of Wild Magic##236951 |usebank
step
collect 3 Mote of Primal Energy##236950 |usebank
step
collect 3 Mote of Light##236949 |usebank
step
craft Flawless Deadly Garnet##1230467,Midnight Jewelcrafting
firstcraft Flawless Deadly Garnet##1230467 |goto Silvermoon City M/0 48.18,55.08
step
craft Flawless Masterful Amethyst##1230460,Midnight Jewelcrafting
firstcraft Flawless Masterful Amethyst##1230460 |goto Silvermoon City M/0 48.18,55.08
step
craft Flawless Quick Peridot##1230442,Midnight Jewelcrafting
firstcraft Flawless Quick Peridot##1230442 |goto Silvermoon City M/0 48.18,55.08
step
craft Flawless Versatile Lapis##1230453,Midnight Jewelcrafting
firstcraft Flawless Versatile Lapis##1230453 |goto Silvermoon City M/0 48.18,55.08
step
collect 60 Crystalline Glass##242786, Crystalline Glass##242787 |usebank
|tip Normal or High quality.
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
step
create Monologuer's Chalice##1230499,Midnight Jewelcrafting,65 |goto Silvermoon City M/0 48.18,55.08 |only if default
create Monologuer's Chalice##1230499,Midnight Jewelcrafting,67 |goto Silvermoon City M/0 48.18,55.08 |only if KulTiran
create Monologuer's Chalice##1230499,Midnight Jewelcrafting,80 |goto Silvermoon City M/0 48.18,55.08 |only if Nightborne
|tip Create this cheap recipe until it turns gray.
step
Reach Skill Level 100 in Midnight Jewelcrafting |skill Midnight Jewelcrafting,100 |only if default
Reach Skill Level 102 in Midnight Jewelcrafting |skill Midnight Jewelcrafting,102 |only if KulTiran
Reach Skill Level 115 in Midnight Jewelcrafting |skill Midnight Jewelcrafting,115 |only if Draenei
|tip From this point, it becomes very difficult to continue gaining points quickly and cheaply.
|tip Your best path is the Crafting Order system to craft items for other players with provided materials.
|tip Focus on First Craft bonuses.
]])
QuestCore:RegisterGuide("Profession Guides\\Jewelcrafting\\Midnight Jewelcrafting Knowledge Treasures",{
description="This guide will walk you through collecting all Jewelcrafting Knowledge Treasures.",
startlevel=68.00,
condition_end=function() return completedallq(89122,89127,89124,89129,89125,89123,89128,89126) end,
},[[
step
talk Amin##243345
Train Jewelcrafting |skillmax Jewelcrafting,300 |goto Silvermoon City M/0 48.18,55.08
step
talk Amin##243345
Train Midnight Jewelcrafting |skillmax Midnight Jewelcrafting,100 |goto Silvermoon City M/0 48.18,55.08
step
Enter the building |goto Silvermoon City M/0 50.71,57.52 < 5 |walk
click Sin'dorei Masterwork Chisel##525929
|tip Inside the building.
collect Sin'dorei Masterwork Chisel##238580 |goto Silvermoon City M/0 50.51,56.58 |q 89122 |future
step
use the Sin'dorei Masterwork Chisel##238580
Study the Sin'dorei Masterwork Chisel |complete itemcount(238580) == 0
step
click Vintage Soul Gem##525924
collect Vintage Soul Gem##238585 |goto Silvermoon City M/0 55.44,47.82 |q 89127 |future
step
use the Vintage Soul Gem##238585
Study the Vintage Soul Gem |complete itemcount(238585) == 0
step
click Dual-Function Magnifiers##525927
|tip Inside the building.
collect Dual-Function Magnifiers##238582 |goto Silvermoon City M/0 28.63,46.39 |q 89124 |future
step
use the Dual-Function Magnifiers##238582
Study the Dual-Function Magnifiers |complete itemcount(238582) == 0
step
click Sin'dorei Gem Faceters##525922
collect Sin'dorei Gem Faceters##238587 |goto Eversong Woods M/0 39.64,38.82 |q 89129 |future
step
use the Sin'dorei Gem Faceters##238587
Study the Sin'dorei Gem Faceters |complete itemcount(238587) == 0
step
click Poorly Rounded Vial##525926
|tip Bottom floor of the building.
collect Poorly Rounded Vial##238583 |goto Eversong Woods M/0 56.63,40.88 |q 89125 |future
step
use the Poorly Rounded Vial##238583
Study the Poorly Rounded Vial |complete itemcount(238583) == 0
step
click Speculative Voidstorm Crystal##525928
|tip Inside the building.
collect Speculative Voidstorm Crystal##238581 |goto Slayers Rise/0 30.48,69.03 |q 89123 |future
step
use the Speculative Voidstorm Crystal##238581
Study the Speculative Voidstorm Crystal |complete itemcount(238581) == 0
step
click Ethereal Gem Pliers##525923
|tip Inside the building.
collect Ethereal Gem Pliers##238586 |goto Slayers Rise/0 54.19,51.04 |q 89128 |future
step
use the Ethereal Gem Pliers##238586
Study the Ethereal Gem Pliers |complete itemcount(238586) == 0
step
click Shattered Glass##525925
collect Shattered Glass##238584 |goto Slayers Rise/0 62.77,53.47 |q 89126 |future
step
use the Shattered Glass##238584
Study the Shattered Glass |complete itemcount(238584) == 0
]])
QuestCore:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Midnight Leatherworking 1-100",{
description="This guide will walk you through leveling your Midnight Leatherworking profession from 1-100.",
startlevel=78.00,
},[[
step
Approximate bill of materials:
Void-Tempered Leather: 690
Void-Tempered Scales: 610
Void-Tempered Hide: 3
Void-Tempered Plating: 2
Peerless Plumage: 4
Carving Canine: 3
Fantastic Fur: 4
Tranquility Bloom: 10
Mote of Light: 4
Mote of Pure Void: 1
Silverleaf Thread: 75
|tip These totals are approximate.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to approximately 50 skill level. |only if default
|tip These materials will get you to approximately 52 skill level. |only if KulTiran
Click Here to Continue |confirm
step
talk Talmar##243500
Train Leatherworking |skillmax Leatherworking,300 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
Train Midnight Leatherworking |skillmax Midnight Leatherworking,100 |goto Silvermoon City M/0 43.14,55.74
step
talk Zaralda##243531
buy 75 Silverleaf Thread##251665 |goto Silvermoon City M/0 43.05,55.99
step
collect 30 Void-Tempered Leather##238511, Void-Tempered Leather##238512 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 30 Void-Tempered Scales##238513, Void-Tempered Scales##238514 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
craft Smuggler's Leather Wristbands##1237506,Midnight Leatherworking
firstcraft Smuggler's Leather Wristbands##1237506 |goto Silvermoon City M/0 43.14,55.74
step
craft Scout's Scaled Bracers##1237535,Midnight Leatherworking
firstcraft Scout's Scaled Bracers##1237535 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Scout's Scaled Boots##1237529 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Skinner's Cap##1237569 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Smuggler's Leather Footpads##1237500 |goto Silvermoon City M/0 43.14,55.74
step
talk Zaralda##243531
buy 10 Silverleaf Thread##251665 |goto Silvermoon City M/0 43.05,55.99
step
collect 75 Void-Tempered Leather##238511, Void-Tempered Leather##238512 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 55 Void-Tempered Scales##238513, Void-Tempered Scales##238514 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
craft Scout's Scaled Boots##1237529,Midnight Leatherworking
firstcraft Scout's Scaled Boots##1237529 |goto Silvermoon City M/0 43.14,55.74
step
craft Skinner's Cap##1237569,Midnight Leatherworking
firstcraft Skinner's Cap##1237569 |goto Silvermoon City M/0 43.14,55.74
step
craft Smuggler's Leather Footpads##1237500,Midnight Leatherworking
firstcraft Smuggler's Leather Footpads##1237500 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Eversong Botanist's Satchel##1237557 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Scout's Scaled Vest##1237528 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Smuggler's Leather Tunic##1237499 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Thalassian Scout Armor Kit##1237546 |goto Silvermoon City M/0 43.14,55.74
step
talk Zaralda##243531
buy 15 Silverleaf Thread##251665 |goto Silvermoon City M/0 43.05,55.99
step
collect 110 Void-Tempered Leather##238511, Void-Tempered Leather##238512 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 110 Void-Tempered Scales##238513, Void-Tempered Scales##238514 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 10 Tranquility Bloom##236761, Tranquility Bloom##236767 |usebank
|tip Normal or High quality.
|tip Farm them with Herbalism or purchase them from the auction house.
step
collect 1 Peerless Plumage##238522 |usebank
|tip Normal or High quality.
|tip Skin them from feathered creatures with Skinning or purchase them from the auction house.
step
craft Eversong Botanist's Satchel##1237557,Midnight Leatherworking
firstcraft Eversong Botanist's Satchel##1237557 |goto Silvermoon City M/0 43.14,55.74
step
craft Scout's Scaled Vest##1237528,Midnight Leatherworking
firstcraft Scout's Scaled Vest##1237528 |goto Silvermoon City M/0 43.14,55.74
step
craft Smuggler's Leather Tunic##1237499,Midnight Leatherworking
firstcraft Smuggler's Leather Tunic##1237499 |goto Silvermoon City M/0 43.14,55.74
step
craft Thalassian Scout Armor Kit##1237546,Midnight Leatherworking
firstcraft Thalassian Scout Armor Kit##1237546 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Skinner's Backpack##1237566 |goto Silvermoon City M/0 43.14,55.74
step
talk Zaralda##243531
buy 10 Silverleaf Thread##251665 |goto Silvermoon City M/0 43.05,55.99
step
collect 40 Void-Tempered Leather##238511, Void-Tempered Leather##238512 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 20 Void-Tempered Scales##238513, Void-Tempered Scales##238514 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
craft Skinner's Backpack##1237566,Midnight Leatherworking
firstcraft Skinner's Backpack##1237566 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Scout's Polished Wrap##1237534 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Smuggler's Reinforced Binding##1237505 |goto Silvermoon City M/0 43.14,55.74
step
collect 45 Void-Tempered Leather##238511, Void-Tempered Leather##238512 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 45 Void-Tempered Scales##238513, Void-Tempered Scales##238514 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
craft Scout's Polished Wrap##1237534,Midnight Leatherworking
firstcraft Scout's Polished Wrap##1237534 |goto Silvermoon City M/0 43.14,55.74
step
craft Smuggler's Reinforced Binding##1237505,Midnight Leatherworking
firstcraft Smuggler's Reinforced Binding##1237505 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Hideworker's Cover##1237563 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Scalewoven Hide##1237572 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Scout's Polished Gauntlets##1237530 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Silvermoon Weapon Wrap##1237575 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Sin'dorei Armor Banding##1237574 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Smuggler's Reinforced Gloves##1237501 |goto Silvermoon City M/0 43.14,55.74
step
talk Zaralda##243531
buy 10 Silverleaf Thread##251665 |goto Silvermoon City M/0 43.05,55.99
step
collect 80 Void-Tempered Leather##238511, Void-Tempered Leather##238512 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 80 Void-Tempered Scales##238513, Void-Tempered Scales##238514 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 2 Void-Tempered Hide##238518, Void-Tempered Hide##238519 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 2 Void-Tempered Plating##238520, Void-Tempered Plating##238521 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 4 Mote of Light##236949 |usebank
step
collect 2 Peerless Plumage##238522 |usebank
|tip Normal or High quality.
|tip Skin them from feathered creatures with Skinning or purchase them from the auction house.
step
collect 1 Carving Canine##238523 |usebank
|tip Normal or High quality.
|tip Skin them from fanged creatures with Skinning or purchase them from the auction house.
step
collect 1 Fantastic Fur##238525 |usebank
|tip Normal or High quality.
|tip Skin them from furred creatures with Skinning or purchase them from the auction house.
step
craft Hideworker's Cover##1237563,Midnight Leatherworking
firstcraft Hideworker's Cover##1237563 |goto Silvermoon City M/0 43.14,55.74
step
craft Scalewoven Hide##1237572,Midnight Leatherworking
firstcraft Scalewoven Hide##1237572 |goto Silvermoon City M/0 43.14,55.74
step
craft Scout's Polished Gauntlets##1237530,Midnight Leatherworking
firstcraft Scout's Polished Gauntlets##1237530 |goto Silvermoon City M/0 43.14,55.74
step
craft Silvermoon Weapon Wrap##1237575,Midnight Leatherworking
firstcraft Silvermoon Weapon Wrap##1237575 |goto Silvermoon City M/0 43.14,55.74
step
craft Sin'dorei Armor Banding##1237574,Midnight Leatherworking
firstcraft Sin'dorei Armor Banding##1237574 |goto Silvermoon City M/0 43.14,55.74
step
craft Smuggler's Reinforced Gloves##1237501,Midnight Leatherworking
firstcraft Smuggler's Reinforced Gloves##1237501 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Apprentice Jeweler's Apron##1237560 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Tinker's Handguard##1237554 |goto Silvermoon City M/0 43.14,55.74
step
talk Zaralda##243531
buy 10 Silverleaf Thread##251665 |goto Silvermoon City M/0 43.05,55.99
step
collect 80 Void-Tempered Leather##238511, Void-Tempered Leather##238512 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 50 Void-Tempered Scales##238513, Void-Tempered Scales##238514 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
craft Apprentice Jeweler's Apron##1237560,Midnight Leatherworking
firstcraft Apprentice Jeweler's Apron##1237560 |goto Silvermoon City M/0 43.14,55.74
step
craft Tinker's Handguard##1237554,Midnight Leatherworking
firstcraft Tinker's Handguard##1237554 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Apprentice Smith's Apron##1237551 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Chemist's Cap##1237548 |goto Silvermoon City M/0 43.14,55.74
step
talk Zaralda##243531
buy 20 Silverleaf Thread##251665 |goto Silvermoon City M/0 43.05,55.99
step
collect 40 Void-Tempered Leather##238511, Void-Tempered Leather##238512 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 30 Void-Tempered Scales##238513, Void-Tempered Scales##238514 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 1 Void-Tempered Hide##238518, Void-Tempered Hide##238519 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
craft Apprentice Smith's Apron##1237551,Midnight Leatherworking
firstcraft Apprentice Smith's Apron##1237551 |goto Silvermoon City M/0 43.14,55.74
step
craft Chemist's Cap##1237548,Midnight Leatherworking
firstcraft Chemist's Cap##1237548 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Scout's Polished Spaulders##1237533 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Smuggler's Reinforced Shoulderguards##1237504 |goto Silvermoon City M/0 43.14,55.74
step
collect 60 Void-Tempered Leather##238511, Void-Tempered Leather##238512 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 60 Void-Tempered Scales##238513, Void-Tempered Scales##238514 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 2 Carving Canine##238523 |usebank
|tip Normal or High quality.
|tip Skin them from fanged creatures with Skinning or purchase them from the auction house.
step
craft Scout's Polished Spaulders##1237533,Midnight Leatherworking
firstcraft Scout's Polished Spaulders##1237533 |goto Silvermoon City M/0 43.14,55.74
step
craft Smuggler's Reinforced Shoulderguards##1237504,Midnight Leatherworking
firstcraft Smuggler's Reinforced Shoulderguards##1237504 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Scout's Polished Legguards##1237532 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Smuggler's Reinforced Pants##1237503 |goto Silvermoon City M/0 43.14,55.74
step
collect 60 Void-Tempered Leather##238511, Void-Tempered Leather##238512 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 60 Void-Tempered Scales##238513, Void-Tempered Scales##238514 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 2 Carving Canine##238523 |usebank
|tip Normal or High quality.
|tip Skin them from fanged creatures with Skinning or purchase them from the auction house.
step
craft Scout's Polished Legguards##1237532,Midnight Leatherworking
firstcraft Scout's Polished Legguards##1237532 |goto Silvermoon City M/0 43.14,55.74
step
craft Smuggler's Reinforced Pants##1237503,Midnight Leatherworking
firstcraft Smuggler's Reinforced Pants##1237503 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Scout's Polished Skullcap##1237531 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Smuggler's Reinforced Hood##1237502 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
learn Void-touched Drums##1237547 |goto Silvermoon City M/0 43.14,55.74
step
collect 70 Void-Tempered Leather##238511, Void-Tempered Leather##238512 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 70 Void-Tempered Scales##238513, Void-Tempered Scales##238514 |usebank
|tip Normal or High quality.
|tip Skin them from mobs with Jewelcrafting or purchase them from the auction house.
step
collect 1 Peerless Plumage##238522 |usebank
|tip Normal or High quality.
|tip Skin them from feathered creatures with Skinning or purchase them from the auction house.
step
collect 1 Fantastic Fur##238525 |usebank
|tip Normal or High quality.
|tip Skin them from furred creatures with Skinning or purchase them from the auction house.
step
collect 1 Mote of Pure Void##236952 |usebank
step
craft Scout's Polished Skullcap##1237531,Midnight Leatherworking
firstcraft Scout's Polished Skullcap##1237531 |goto Silvermoon City M/0 43.14,55.74
step
craft Smuggler's Reinforced Hood##1237502,Midnight Leatherworking
firstcraft Smuggler's Reinforced Hood##1237502 |goto Silvermoon City M/0 43.14,55.74
step
craft Void-touched Drums##1237547,Midnight Leatherworking
firstcraft Void-touched Drums##1237547 |goto Silvermoon City M/0 43.14,55.74
step
Reach Skill Level 100 in Midnight Leatherworking |skill Midnight Leatherworking,100 |or |only if default
Reach Skill Level 102 in Midnight Leatherworking |skill Midnight Leatherworking,102 |or |only if KulTiran
|tip From this point, it becomes very difficult to continue gaining points efficiently.
|tip Your best path is the Crafting Order system to craft items for other players with provided materials.
|tip This makes it much cheaper to craft one of each recipe for the first craft bonus.
|tip Focus on First Craft bonuses.
]])
QuestCore:RegisterGuide("Profession Guides\\Leatherworking\\Midnight Leatherworking Knowledge Treasures",{
description="This guide will walk you through collecting all Leatherworking Knowledge Treasures.",
startlevel=68.00,
condition_end=function() return completedallq(89096,89092,89089,89091,89094,89095,89090,89093) end,
},[[
step
talk Talmar##243500
Train Leatherworking |skillmax Leatherworking,300 |goto Silvermoon City M/0 43.14,55.74
step
talk Talmar##243500
Train Midnight Leatherworking |skillmax Midnight Leatherworking,100 |goto Silvermoon City M/0 43.14,55.74
step
click Artisan's Considered Order##525914
collect Artisan's Considered Order##238595 |goto Silvermoon City M/0 44.76,56.27 |q 89096 |future
step
use the Artisan's Considered Order##238595
Study the Artisan's Considered Order |complete itemcount(238595) == 0
step
click Bundle of Tanner's Trinkets##525918
|tip You need to phase Atal'Aman by completing the Zul'Aman leveling guide to progress the primary story.
collect Bundle of Tanner's Trinkets##238591 |goto Atal Aman M/1 45.30,45.59 |q 89092 |future
step
use the Bundle of Tanner's Trinkets##238591
Study the Bundle of Tanner's Trinkets |complete itemcount(238591) == 0
step
Enter the cave |goto Zul Aman M/0 33.44,78.82 < 5 |walk
click Amani Leatherworker's Tool##525921
|tip Inside the cave.
collect Amani Leatherworker's Tool##238588 |goto Zul Aman M/0 33.08,78.91 |q 89089 |future
step
use the Amani Leatherworker's Tool##238588
Study the Amani Leatherworker's Tool |complete itemcount(238588) == 0
step
Enter the building |goto Zul Aman M/0 30.93,84.10 < 5 |walk
click Prestigiously Racked Hide##525919
|tip Inside the building.
collect Prestigiously Racked Hide##238590 |goto Zul Aman M/0 30.75,83.99 |q 89091 |future
step
use the Prestigiously Racked Hide##238590
Study the Prestigiously Racked Hide |complete itemcount(238590) == 0
step
click Haranir Leatherworking Mallet##525916
collect Haranir Leatherworking Mallet##238593 |goto Harandar/0 51.69,51.32 |q 89094 |future
step
use the Haranir Leatherworking Mallet##238593
Study the Haranir Leatherworking Mallet |complete itemcount(238593) == 0
step
click Haranir Leatherworking Knife##525915
collect Haranir Leatherworking Knife##238594 |goto Harandar/0 36.10,25.17 |q 89095 |future
step
use the Haranir Leatherworking Knife##238594
Study the Haranir Leatherworking Knife |complete itemcount(238594) == 0
step
click Ethereal Leatherworking Knife##525920
collect Ethereal Leatherworking Knife##238589 |goto Voidstorm/0 34.72,56.92 |q 89090 |future
step
use the Ethereal Leatherworking Knife##238589
Study the Ethereal Leatherworking Knife |complete itemcount(238589) == 0
step
click Patterns: Beyond the Void##525917
|tip Inside the building.
collect Patterns: Beyond the Void##238592 |goto Slayers Rise/0 53.74,51.68 |q 89093 |future
step
use the Patterns: Beyond the Void##238592
Study the Patterns: Beyond the Void |complete itemcount(238592) == 0
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Midnight Mining 1-100",{
description="This guide will walk you through leveling your Midnight Mining profession from 1-100.",
startlevel=78.00,
},[[
step
talk Belil##241455
|tip Inside the building.
Train Mining |skillmax Mining,300 |goto Silvermoon City M/0 42.59,52.85
step
talk Belil##241455
|tip Inside the building.
Train Midnight Mining |skillmax Midnight Mining,100 |goto Silvermoon City M/0 42.59,52.85
step
Reach Skill Level 100 in Midnight Mining |skill Midnight Mining,100 |only if default
Reach Skill Level 102 in Midnight Mining |skill Midnight Mining,102 |only if KulTiran
Reach Skill Level 115 in Midnight Mining |skill Midnight Mining,115 |only if HighmountainTauren
|tip Load any Mining farming guide you choose and farm for points.
|tip Deftness increases your gathering speed.
|tip Finesse gives you extra materials from nodes.
|tip Perception gives you an increased chance find bonus Dazzling Thorium.
|tip Deftness makes farming easier in mob-heavy areas.
|tip Infused deposits have visual effects around them and drop additional materials, but inflict a negative effect on you.
|tip From 1-30, everything gives points.
|tip From 30-100, base deposits go gray at 60 and rich deposits and seams skill up to 100.
|tip Infused Wild deposits spawn an enemy that can sometimes be difficult to kill.
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Midnight Mining Knowledge Treasures",{
description="This guide will walk you through collecting all Mining Knowledge Treasures.",
startlevel=68.00,
condition_end=function() return completedallq(89147,89149,89145,89151,89150,89144,89148,89146) end,
},[[
step
talk Belil##241455
|tip Inside the building.
Train Mining |skillmax Mining,300 |goto Silvermoon City M/0 42.59,52.85
step
talk Belil##241455
|tip Inside the building.
Train Midnight Mining |skillmax Midnight Mining,100 |goto Silvermoon City M/0 42.59,52.85
step
click Solid Ore Punchers##525910
collect Solid Ore Punchers##238599 |goto Eversong Woods M/0 37.98,45.37 |q 89147 |future
step
use the Solid Ore Punchers##238599
Study the Solid Ore Punchers |complete itemcount(238599) == 0
step
click Amani Expert's Chisel##525908
|tip You need to phase Atal'Aman by completing the Zul'Aman leveling guide to progress the primary story.
collect Amani Expert's Chisel##238601 |goto Atal Aman M/1 33.29,65.91 |q 89149 |future
step
use the Amani Expert's Chisel##238601
Study the Amani Expert's Chisel |complete itemcount(238601) == 0
step
click Spelunker's Lucky Charm##525912
collect Spelunker's Lucky Charm##238597 |goto Zul Aman M/0 41.99,46.52 |q 89145 |future
step
use the Spelunker's Lucky Charm##238597
Study the Spelunker's Lucky Charm |complete itemcount(238597) == 0
step
click Spare Expedition Torch##525906
collect Spare Expedition Torch##238603 |goto Harandar/0 38.84,65.86 |q 89151 |future
step
use the Spare Expedition Torch##238603
Study the Spare Expedition Torch |complete itemcount(238603) == 0
step
click Star Metal Deposit##525907
collect Star Metal Deposit##238602 |goto Voidstorm/0 41.84,38.21 |q 89150 |future
step
use the Star Metal Deposit##238602
Study the Star Metal Deposit |complete itemcount(238602) == 0
step
click Miner's Guide to Voidstorm##525913
|tip Inside the building.
collect Miner's Guide to Voidstorm##238596 |goto Slayers Rise/0 30.48,69.08 |q 89144 |future
step
use the Miner's Guide to Voidstorm##238596
Study the Miner's Guide to Voidstorm |complete itemcount(238596) == 0
step
click Glimmering Void Pearl##525909
collect Glimmering Void Pearl##238600 |goto Slayers Rise/0 28.75,38.56 |q 89148 |future
step
use the Glimmering Void Pearl##238600
Study the Glimmering Void Pearl |complete itemcount(238600) == 0
step
click Lost Voidstorm Satchel##525911
|tip Inside the building.
collect Lost Voidstorm Satchel##238598 |goto Slayers Rise/0 54.23,51.59 |q 89146 |future
step
use the Lost Voidstorm Satchel##238598
Study the Lost Voidstorm Satchel |complete itemcount(238598) == 0
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Refulgent Copper Ore (Eversong Woods)",{
meta={goldtype="route",skillreq={midnight_mining=1},levelreq={80}},
maps={"Eversong Woods M"},
items={237359,237361},
},[[
step
map Eversong Woods M/0
path follow smart; loop on; ants curved; dist 40
path	48.10,38.10	45.99,38.38	43.06,35.25	39.83,34.46	37.21,39.14
path	36.32,45.15	36.10,48.67	39.50,51.88	42.30,54.02	45.33,55.11
path	46.56,56.23	46.70,58.21	43.83,60.69	40.69,61.86	39.08,63.22
path	39.23,68.48	41.14,77.33	42.47,82.37	42.92,86.23	44.12,86.07
path	45.66,83.73	47.46,81.67	49.03,80.60	50.96,80.67	52.96,83.08
path	53.78,84.65	55.38,81.52	55.82,79.23	55.76,77.57	56.92,74.14
path	58.20,71.87	60.34,68.36	62.81,63.35	60.83,62.29	58.03,62.67
path	56.10,62.84	53.80,62.57	53.03,61.49	53.37,59.64	55.00,58.02
path	57.63,56.78	60.44,55.32	61.75,53.60	63.81,50.35	62.62,47.62
path	61.18,45.19	60.13,44.12	57.27,43.71	53.78,42.42	50.70,42.56
path	47.96,41.39
click Refulgent Copper##523281+
|tip They share a spawn with other ore nodes.
collect Refulgent Copper Ore##237359 |n
collect Refulgent Copper Ore##237361 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Refulgent Copper Ore (Zul Aman)",{
meta={goldtype="route",skillreq={midnight_mining=1},levelreq={80}},
maps={"Zul Aman M"},
items={237359,237361},
},[[
step
map Zul Aman M/0
path follow smart; loop on; ants curved; dist 30
path	44.83,37.00	47.65,36.09	48.66,38.64	46.59,40.82	44.96,43.15
path	47.40,44.66	48.37,48.09	47.33,51.97	47.66,57.54	48.39,59.13
path	49.27,60.91	51.59,63.15	52.80,66.30	54.80,69.10	56.82,72.64
path	57.81,75.60	58.90,79.29	59.08,82.18	56.35,82.22	52.95,80.98
path	51.67,80.90	49.53,81.84	47.82,84.60	46.34,88.27	45.39,90.03
path	43.25,90.31	40.91,90.09	39.78,88.47	39.87,86.40	40.84,83.95
path	42.19,82.54	43.01,80.49	43.03,79.68	41.31,79.41	39.30,79.62
path	37.78,80.05	36.36,80.49	33.95,81.79	32.32,83.03	30.68,83.15
path	29.92,82.41	29.36,80.96	29.13,79.14	28.96,78.25	28.03,77.78
path	26.35,78.76	24.21,79.54	22.88,78.45	22.44,76.22	22.91,73.12
path	23.38,69.93	23.40,66.25	25.19,68.07	26.63,70.28	28.21,71.91
path	30.83,72.00	32.47,70.28	34.07,69.64	37.74,70.41	39.04,70.25
path	40.75,65.30	41.76,60.84	42.15,56.64	42.96,51.52	42.64,47.84
path	42.75,44.57	42.74,41.11	42.07,39.61	41.72,38.71	42.78,37.75
path	43.80,37.46
click Refulgent Copper##523281+
|tip They share a spawn with other ore nodes.
collect Refulgent Copper Ore##237359 |n
collect Refulgent Copper Ore##237361 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Refulgent Copper Ore (Harandar)",{
meta={goldtype="route",skillreq={midnight_mining=1},levelreq={80}},
maps={"Harandar"},
items={237359,237361},
},[[
step
map Harandar/0
path follow smart; loop on; ants curved; dist 30
path	55.68,52.14	57.26,50.32	58.97,50.16	60.92,51.29	61.29,54.04
path	61.40,57.53	62.66,59.03	64.24,59.53	66.16,61.19	67.90,64.15
path	69.99,65.99	70.37,66.29	71.52,66.91	72.91,66.90	73.96,64.62
path	74.53,62.93	73.31,60.93	72.79,59.85	72.75,58.04	73.62,54.03
path	74.19,52.81	74.12,51.18	72.95,49.72	71.73,49.17	69.59,49.06
path	67.24,48.51	65.33,48.16	66.13,46.09	67.54,43.59	67.95,41.55
path	70.03,40.03	71.59,38.02	72.13,33.42	72.42,29.70	72.57,27.56
path	72.11,24.90	69.86,20.90	68.36,21.03	66.07,23.34	64.80,24.90
path	63.68,24.24	61.65,19.90	61.01,18.51	60.24,21.60	60.47,24.55
path	60.62,25.25	61.02,27.78	61.36,30.37	60.81,32.78	59.59,35.44
path	58.19,37.19	56.05,38.29	54.50,39.62	51.15,40.48	49.76,42.26
path	48.80,44.48	48.24,47.13	47.91,48.22	45.80,48.00	42.25,47.23
path	38.01,46.84	35.48,44.95	35.00,47.09	36.03,48.11	37.52,50.47
path	38.28,53.71	37.61,56.19	34.29,58.58	32.54,59.04	30.80,59.66
path	29.68,61.02	27.99,63.07	27.37,65.15	27.15,70.31	25.18,74.14
path	24.83,76.23	27.19,77.72	29.69,77.88	30.51,78.89	29.76,80.30
path	27.33,82.85	25.88,84.58	26.49,88.14	28.41,90.86	29.80,91.81
path	30.82,92.14	33.00,92.48	35.32,91.22	36.80,88.97	38.24,85.72
path	38.66,82.69	36.81,78.52	34.58,76.49	34.50,72.84	35.59,70.17
path	38.98,67.81	42.44,68.74	44.86,73.06	48.87,75.48	50.71,77.69
path	52.88,76.36	52.77,73.37	52.77,67.81	54.44,61.69	54.77,55.39
path	54.65,55.24
click Refulgent Copper##523281+
|tip They share a spawn with other ore nodes.
collect Refulgent Copper Ore##237359 |n
collect Refulgent Copper Ore##237361 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Refulgent Copper Ore (Voidstorm)",{
meta={goldtype="route",skillreq={midnight_mining=1},levelreq={80}},
maps={"Voidstorm"},
items={237359,237361},
},[[
step
map Voidstorm/0
path follow smart; loop on; ants curved; dist 30
path	52.28,70.22	53.93,71.81	54.48,76.89	55.06,78.53	56.21,81.97
path	57.49,83.51	60.49,86.09	62.13,86.20	62.82,84.48	62.89,82.01
path	62.48,79.19	61.20,73.79	59.94,68.54	60.41,63.95	61.51,62.03
path	64.46,59.16	65.05,56.62	64.24,55.85	60.66,57.80	57.08,58.18
path	56.83,55.95	58.07,52.72	58.10,49.26	57.77,47.29	56.44,45.81
path	54.93,45.19	52.56,45.40	51.37,47.01	49.15,51.10	48.18,53.07
path	45.92,57.04	44.21,58.93	42.61,59.07	41.78,58.56	40.96,57.00
path	39.92,52.52	39.57,47.76	39.41,45.04	38.44,41.36	36.89,41.57
path	35.80,43.86	34.12,48.88	32.70,52.31	32.19,56.87	32.68,60.24
path	34.15,64.91	34.97,69.26	35.00,73.03	34.40,75.49	34.82,77.39
path	36.33,78.42	37.83,79.24	40.50,80.86	43.39,82.31	47.05,84.13
path	48.22,84.28	49.01,82.06	49.04,79.99	48.62,78.18	48.56,73.51
path	49.38,71.53	51.58,70.37
click Refulgent Copper##523281+
|tip They share a spawn with other ore nodes.
collect Refulgent Copper Ore##237359 |n
collect Refulgent Copper Ore##237361 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Umbral Tin Ore (Eversong Woods)",{
meta={goldtype="route",skillreq={midnight_mining=1},levelreq={80}},
maps={"Eversong Woods M"},
items={237362,237363},
},[[
step
map Eversong Woods M/0
path follow smart; loop on; ants curved; dist 40
path	48.10,38.10	45.99,38.38	43.06,35.25	39.83,34.46	37.21,39.14
path	36.32,45.15	36.10,48.67	39.50,51.88	42.30,54.02	45.33,55.11
path	46.56,56.23	46.70,58.21	43.83,60.69	40.69,61.86	39.08,63.22
path	39.23,68.48	41.14,77.33	42.47,82.37	42.92,86.23	44.12,86.07
path	45.66,83.73	47.46,81.67	49.03,80.60	50.96,80.67	52.96,83.08
path	53.78,84.65	55.38,81.52	55.82,79.23	55.76,77.57	56.92,74.14
path	58.20,71.87	60.34,68.36	62.81,63.35	60.83,62.29	58.03,62.67
path	56.10,62.84	53.80,62.57	53.03,61.49	53.37,59.64	55.00,58.02
path	57.63,56.78	60.44,55.32	61.75,53.60	63.81,50.35	62.62,47.62
path	61.18,45.19	60.13,44.12	57.27,43.71	53.78,42.42	50.70,42.56
path	47.96,41.39
click Umbral Tin##523288+
|tip They share a spawn with other ore nodes.
collect Umbral Tin Ore##237362 |n
collect Umbral Tin Ore##237363 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Umbral Tin Ore (Zul Aman)",{
meta={goldtype="route",skillreq={midnight_mining=1},levelreq={80}},
maps={"Zul Aman M"},
items={237362,237363},
},[[
step
map Zul Aman M/0
path follow smart; loop on; ants curved; dist 30
path	44.83,37.00	47.65,36.09	48.66,38.64	46.59,40.82	44.96,43.15
path	47.40,44.66	48.37,48.09	47.33,51.97	47.66,57.54	48.39,59.13
path	49.27,60.91	51.59,63.15	52.80,66.30	54.80,69.10	56.82,72.64
path	57.81,75.60	58.90,79.29	59.08,82.18	56.35,82.22	52.95,80.98
path	51.67,80.90	49.53,81.84	47.82,84.60	46.34,88.27	45.39,90.03
path	43.25,90.31	40.91,90.09	39.78,88.47	39.87,86.40	40.84,83.95
path	42.19,82.54	43.01,80.49	43.03,79.68	41.31,79.41	39.30,79.62
path	37.78,80.05	36.36,80.49	33.95,81.79	32.32,83.03	30.68,83.15
path	29.92,82.41	29.36,80.96	29.13,79.14	28.96,78.25	28.03,77.78
path	26.35,78.76	24.21,79.54	22.88,78.45	22.44,76.22	22.91,73.12
path	23.38,69.93	23.40,66.25	25.19,68.07	26.63,70.28	28.21,71.91
path	30.83,72.00	32.47,70.28	34.07,69.64	37.74,70.41	39.04,70.25
path	40.75,65.30	41.76,60.84	42.15,56.64	42.96,51.52	42.64,47.84
path	42.75,44.57	42.74,41.11	42.07,39.61	41.72,38.71	42.78,37.75
path	43.80,37.46
click Umbral Tin##523288+
|tip They share a spawn with other ore nodes.
collect Umbral Tin Ore##237362 |n
collect Umbral Tin Ore##237363 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Umbral Tin Ore (Harandar)",{
meta={goldtype="route",skillreq={midnight_mining=1},levelreq={80}},
maps={"Harandar"},
items={237362,237363},
},[[
step
map Harandar/0
path follow smart; loop on; ants curved; dist 30
path	55.68,52.14	57.26,50.32	58.97,50.16	60.92,51.29	61.29,54.04
path	61.40,57.53	62.66,59.03	64.24,59.53	66.16,61.19	67.90,64.15
path	69.99,65.99	70.37,66.29	71.52,66.91	72.91,66.90	73.96,64.62
path	74.53,62.93	73.31,60.93	72.79,59.85	72.75,58.04	73.62,54.03
path	74.19,52.81	74.12,51.18	72.95,49.72	71.73,49.17	69.59,49.06
path	67.24,48.51	65.33,48.16	66.13,46.09	67.54,43.59	67.95,41.55
path	70.03,40.03	71.59,38.02	72.13,33.42	72.42,29.70	72.57,27.56
path	72.11,24.90	69.86,20.90	68.36,21.03	66.07,23.34	64.80,24.90
path	63.68,24.24	61.65,19.90	61.01,18.51	60.24,21.60	60.47,24.55
path	60.62,25.25	61.02,27.78	61.36,30.37	60.81,32.78	59.59,35.44
path	58.19,37.19	56.05,38.29	54.50,39.62	51.15,40.48	49.76,42.26
path	48.80,44.48	48.24,47.13	47.91,48.22	45.80,48.00	42.25,47.23
path	38.01,46.84	35.48,44.95	35.00,47.09	36.03,48.11	37.52,50.47
path	38.28,53.71	37.61,56.19	34.29,58.58	32.54,59.04	30.80,59.66
path	29.68,61.02	27.99,63.07	27.37,65.15	27.15,70.31	25.18,74.14
path	24.83,76.23	27.19,77.72	29.69,77.88	30.51,78.89	29.76,80.30
path	27.33,82.85	25.88,84.58	26.49,88.14	28.41,90.86	29.80,91.81
path	30.82,92.14	33.00,92.48	35.32,91.22	36.80,88.97	38.24,85.72
path	38.66,82.69	36.81,78.52	34.58,76.49	34.50,72.84	35.59,70.17
path	38.98,67.81	42.44,68.74	44.86,73.06	48.87,75.48	50.71,77.69
path	52.88,76.36	52.77,73.37	52.77,67.81	54.44,61.69	54.77,55.39
path	54.65,55.24
click Umbral Tin##523288+
|tip They share a spawn with other ore nodes.
collect Umbral Tin Ore##237362 |n
collect Umbral Tin Ore##237363 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Umbral Tin Ore (Voidstorm)",{
meta={goldtype="route",skillreq={midnight_mining=1},levelreq={80}},
maps={"Voidstorm"},
items={237362,237363},
},[[
step
map Voidstorm/0
path follow smart; loop on; ants curved; dist 30
path	52.28,70.22	53.93,71.81	54.48,76.89	55.06,78.53	56.21,81.97
path	57.49,83.51	60.49,86.09	62.13,86.20	62.82,84.48	62.89,82.01
path	62.48,79.19	61.20,73.79	59.94,68.54	60.41,63.95	61.51,62.03
path	64.46,59.16	65.05,56.62	64.24,55.85	60.66,57.80	57.08,58.18
path	56.83,55.95	58.07,52.72	58.10,49.26	57.77,47.29	56.44,45.81
path	54.93,45.19	52.56,45.40	51.37,47.01	49.15,51.10	48.18,53.07
path	45.92,57.04	44.21,58.93	42.61,59.07	41.78,58.56	40.96,57.00
path	39.92,52.52	39.57,47.76	39.41,45.04	38.44,41.36	36.89,41.57
path	35.80,43.86	34.12,48.88	32.70,52.31	32.19,56.87	32.68,60.24
path	34.15,64.91	34.97,69.26	35.00,73.03	34.40,75.49	34.82,77.39
path	36.33,78.42	37.83,79.24	40.50,80.86	43.39,82.31	47.05,84.13
path	48.22,84.28	49.01,82.06	49.04,79.99	48.62,78.18	48.56,73.51
path	49.38,71.53	51.58,70.37
click Umbral Tin##523288+
|tip They share a spawn with other ore nodes.
collect Umbral Tin Ore##237362 |n
collect Umbral Tin Ore##237363 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Brilliant Silver Ore (Eversong Woods)",{
meta={goldtype="route",skillreq={midnight_mining=1},levelreq={80}},
maps={"Eversong Woods M"},
items={237364,237365},
},[[
step
map Eversong Woods M/0
path follow smart; loop on; ants curved; dist 40
path	48.10,38.10	45.99,38.38	43.06,35.25	39.83,34.46	37.21,39.14
path	36.32,45.15	36.10,48.67	39.50,51.88	42.30,54.02	45.33,55.11
path	46.56,56.23	46.70,58.21	43.83,60.69	40.69,61.86	39.08,63.22
path	39.23,68.48	41.14,77.33	42.47,82.37	42.92,86.23	44.12,86.07
path	45.66,83.73	47.46,81.67	49.03,80.60	50.96,80.67	52.96,83.08
path	53.78,84.65	55.38,81.52	55.82,79.23	55.76,77.57	56.92,74.14
path	58.20,71.87	60.34,68.36	62.81,63.35	60.83,62.29	58.03,62.67
path	56.10,62.84	53.80,62.57	53.03,61.49	53.37,59.64	55.00,58.02
path	57.63,56.78	60.44,55.32	61.75,53.60	63.81,50.35	62.62,47.62
path	61.18,45.19	60.13,44.12	57.27,43.71	53.78,42.42	50.70,42.56
path	47.96,41.39
click Brilliant Silver##523295+
|tip They share a spawn with other ore nodes.
collect Brilliant Silver Ore##237364 |n
collect Brilliant Silver Ore##237365 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Brilliant Silver Ore (Zul Aman)",{
meta={goldtype="route",skillreq={midnight_mining=1},levelreq={80}},
maps={"Zul Aman M"},
items={237364,237365},
},[[
step
map Zul Aman M/0
path follow smart; loop on; ants curved; dist 30
path	44.83,37.00	47.65,36.09	48.66,38.64	46.59,40.82	44.96,43.15
path	47.40,44.66	48.37,48.09	47.33,51.97	47.66,57.54	48.39,59.13
path	49.27,60.91	51.59,63.15	52.80,66.30	54.80,69.10	56.82,72.64
path	57.81,75.60	58.90,79.29	59.08,82.18	56.35,82.22	52.95,80.98
path	51.67,80.90	49.53,81.84	47.82,84.60	46.34,88.27	45.39,90.03
path	43.25,90.31	40.91,90.09	39.78,88.47	39.87,86.40	40.84,83.95
path	42.19,82.54	43.01,80.49	43.03,79.68	41.31,79.41	39.30,79.62
path	37.78,80.05	36.36,80.49	33.95,81.79	32.32,83.03	30.68,83.15
path	29.92,82.41	29.36,80.96	29.13,79.14	28.96,78.25	28.03,77.78
path	26.35,78.76	24.21,79.54	22.88,78.45	22.44,76.22	22.91,73.12
path	23.38,69.93	23.40,66.25	25.19,68.07	26.63,70.28	28.21,71.91
path	30.83,72.00	32.47,70.28	34.07,69.64	37.74,70.41	39.04,70.25
path	40.75,65.30	41.76,60.84	42.15,56.64	42.96,51.52	42.64,47.84
path	42.75,44.57	42.74,41.11	42.07,39.61	41.72,38.71	42.78,37.75
path	43.80,37.46
click Brilliant Silver##523295+
|tip They share a spawn with other ore nodes.
collect Brilliant Silver Ore##237364 |n
collect Brilliant Silver Ore##237365 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Brilliant Silver Ore (Harandar)",{
meta={goldtype="route",skillreq={midnight_mining=1},levelreq={80}},
maps={"Harandar"},
items={237364,237365},
},[[
step
map Harandar/0
path follow smart; loop on; ants curved; dist 30
path	55.68,52.14	57.26,50.32	58.97,50.16	60.92,51.29	61.29,54.04
path	61.40,57.53	62.66,59.03	64.24,59.53	66.16,61.19	67.90,64.15
path	69.99,65.99	70.37,66.29	71.52,66.91	72.91,66.90	73.96,64.62
path	74.53,62.93	73.31,60.93	72.79,59.85	72.75,58.04	73.62,54.03
path	74.19,52.81	74.12,51.18	72.95,49.72	71.73,49.17	69.59,49.06
path	67.24,48.51	65.33,48.16	66.13,46.09	67.54,43.59	67.95,41.55
path	70.03,40.03	71.59,38.02	72.13,33.42	72.42,29.70	72.57,27.56
path	72.11,24.90	69.86,20.90	68.36,21.03	66.07,23.34	64.80,24.90
path	63.68,24.24	61.65,19.90	61.01,18.51	60.24,21.60	60.47,24.55
path	60.62,25.25	61.02,27.78	61.36,30.37	60.81,32.78	59.59,35.44
path	58.19,37.19	56.05,38.29	54.50,39.62	51.15,40.48	49.76,42.26
path	48.80,44.48	48.24,47.13	47.91,48.22	45.80,48.00	42.25,47.23
path	38.01,46.84	35.48,44.95	35.00,47.09	36.03,48.11	37.52,50.47
path	38.28,53.71	37.61,56.19	34.29,58.58	32.54,59.04	30.80,59.66
path	29.68,61.02	27.99,63.07	27.37,65.15	27.15,70.31	25.18,74.14
path	24.83,76.23	27.19,77.72	29.69,77.88	30.51,78.89	29.76,80.30
path	27.33,82.85	25.88,84.58	26.49,88.14	28.41,90.86	29.80,91.81
path	30.82,92.14	33.00,92.48	35.32,91.22	36.80,88.97	38.24,85.72
path	38.66,82.69	36.81,78.52	34.58,76.49	34.50,72.84	35.59,70.17
path	38.98,67.81	42.44,68.74	44.86,73.06	48.87,75.48	50.71,77.69
path	52.88,76.36	52.77,73.37	52.77,67.81	54.44,61.69	54.77,55.39
path	54.65,55.24
click Brilliant Silver##523295+
|tip They share a spawn with other ore nodes.
collect Brilliant Silver Ore##237364 |n
collect Brilliant Silver Ore##237365 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Brilliant Silver Ore (Voidstorm)",{
meta={goldtype="route",skillreq={midnight_mining=1},levelreq={80}},
maps={"Voidstorm"},
items={237364,237365},
},[[
step
map Voidstorm/0
path follow smart; loop on; ants curved; dist 30
path	52.28,70.22	53.93,71.81	54.48,76.89	55.06,78.53	56.21,81.97
path	57.49,83.51	60.49,86.09	62.13,86.20	62.82,84.48	62.89,82.01
path	62.48,79.19	61.20,73.79	59.94,68.54	60.41,63.95	61.51,62.03
path	64.46,59.16	65.05,56.62	64.24,55.85	60.66,57.80	57.08,58.18
path	56.83,55.95	58.07,52.72	58.10,49.26	57.77,47.29	56.44,45.81
path	54.93,45.19	52.56,45.40	51.37,47.01	49.15,51.10	48.18,53.07
path	45.92,57.04	44.21,58.93	42.61,59.07	41.78,58.56	40.96,57.00
path	39.92,52.52	39.57,47.76	39.41,45.04	38.44,41.36	36.89,41.57
path	35.80,43.86	34.12,48.88	32.70,52.31	32.19,56.87	32.68,60.24
path	34.15,64.91	34.97,69.26	35.00,73.03	34.40,75.49	34.82,77.39
path	36.33,78.42	37.83,79.24	40.50,80.86	43.39,82.31	47.05,84.13
path	48.22,84.28	49.01,82.06	49.04,79.99	48.62,78.18	48.56,73.51
path	49.38,71.53	51.58,70.37
click Brilliant Silver##523295+
|tip They share a spawn with other ore nodes.
collect Brilliant Silver Ore##237364 |n
collect Brilliant Silver Ore##237365 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Midnight Skinning 1-100",{
description="This guide will walk you through leveling your Midnight Skinning profession from 1-100.",
startlevel=78.00,
},[[
step
Approximate bill of materials:
|tip These totals are approximate. You can inverse the Stormcharged Leather and Gloom Chitin amounts depending on prices on your server.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to approximately 50 skill level.
Click Here to Continue |confirm
step
talk Tyn##243527
Train Skinning |skillmax Skinning,300 |goto Silvermoon City M/0 43.21,55.57
step
talk Tyn##243527
Train Midnight Skinning |skillmax Midnight Skinning,100 |goto Silvermoon City M/0 43.21,55.57
step
Reach Skill Level 100 in Midnight Skinning |skill Midnight Skinning,100 |only if default
Reach Skill Level 102 in Midnight Skinning |skill Midnight Skinning,102 |only if KulTiran
Reach Skill Level 115 in Midnight Skinning |skill Midnight Skinning,115 |only if Worgen
|tip Load any Skinning farming guide you choose and farm for points.
|tip Make sure tracking for High Value Beasts is enabled on your minimap in case you encounter one.
|tip Skinning High Value Beasts gives additional materials.
|tip Using Finesse tools will give you additional materials.
|tip Perception gives you a chance to get a second rare material if one drops.
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Midnight Skinning Knowledge Treasures",{
description="This guide will walk you through collecting all Skinning Knowledge Treasures.",
startlevel=68.00,
condition_end=function() return completedallq(89171,89173,89167,89172,89170,89168,89166,89169) end,
},[[
step
talk Tyn##243527
Train Skinning |skillmax Skinning,300 |goto Silvermoon City M/0 43.21,55.57
step
talk Tyn##243527
Train Midnight Skinning |skillmax Midnight Skinning,100 |goto Silvermoon City M/0 43.21,55.57
step
click Sin'dorei Tanning Oil##525892
collect Sin'dorei Tanning Oil##238633 |goto Silvermoon City M/0 43.15,55.63 |q 89171 |future
step
use the Sin'dorei Tanning Oil##238633
Study the Sin'dorei Tanning Oil |complete itemcount(238633) == 0
step
click Thalassian Skinning Knife##525890
collect Thalassian Skinning Knife##238635 |goto Eversong Woods M/0 48.40,76.25 |q 89173 |future
step
use the Thalassian Skinning Knife##238635
Study the Thalassian Skinning Knife |complete itemcount(238635) == 0
step
click Cadre Skinning Knife##525896
|tip You need to phase Atal'Aman by completing the Zul'Aman leveling guide to progress the primary story.
collect Cadre Skinning Knife##238629 |goto Atal Aman M/1 44.91,45.20 |q 89167 |future
step
use the Cadre Skinning Knife##238629
Study the Cadre Skinning Knife |complete itemcount(238629) == 0
step
Enter the cave |goto Zul Aman M/0 33.45,78.82 < 5 |walk
click Amani Skinning Knife##525891
|tip Inside the cave.
collect Amani Skinning Knife##238634 |goto Zul Aman M/0 33.08,79.07 |q 89172 |future
step
use the Amani Skinning Knife##238634
Study the Amani Skinning Knife |complete itemcount(238634) == 0
step
click Amani Tanning Oil##525893
collect Amani Tanning Oil##238632 |goto Zul Aman M/0 40.39,36.01 |q 89170 |future
step
use the Amani Tanning Oil##238632
Study the Amani Tanning Oil |complete itemcount(238632) == 0
step
Enter the cave |goto Harandar/0 69.87,50.25 < 5 |walk
click Primal Hide##525895
|tip Inside the cave.
collect Primal Hide##238630 |goto Harandar/0 69.52,49.17 |q 89168 |future
step
use the Primal Hide##238630
Study the Primal Hide |complete itemcount(238630) == 0
step
click Lightbloom Afflicted Hide##525897
collect Lightbloom Afflicted Hide##238628 |goto Harandar/0 76.09,51.08 |q 89166 |future
step
use the Lightbloom Afflicted Hide##238628
Study the Lightbloom Afflicted Hide |complete itemcount(238628) == 0
step
click Voidstorm Leather Sample##525894
collect Voidstorm Leather Sample##238631 |goto Slayers Rise/0 45.49,42.41 |q 89169 |future
step
use the Voidstorm Leather Sample##238631
Study the Voidstorm Leather Sample |complete itemcount(238631) == 0
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Void-Tempered Leather (Eversong Woods)",{
meta={goldtype="route",skillreq={midnight_skinning=1},levelreq={80}},
maps={"Eversong Woods M"},
items={238511,238512},
},[[
step
map Eversong Woods M/0
path follow smart; loop on; ants curved; dist 30
path	45.48,65.33	45.32,64.08	44.28,63.57	42.20,64.33	39.81,65.39
path	38.87,66.34	38.95,67.46	39.63,69.71	39.75,72.57	40.59,75.28
path	41.26,76.46	41.61,78.64	42.00,79.49	42.84,79.75	43.58,79.25
path	44.26,78.36	44.50,76.88	44.49,75.19	44.53,73.48	45.11,71.22
path	45.86,68.68
Kill enemies
collect Void-Tempered Leather##238511 |n
collect Void-Tempered Leather##238512 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Void-Tempered Scales (Zul'Aman)",{
meta={goldtype="route",skillreq={midnight_skinning=1},levelreq={80}},
maps={"Zul Aman M"},
items={238513,238514},
},[[
step
map Zul Aman M/0
path follow smart; loop on; ants curved; dist 30
path	52.27,22.15	51.97,21.14	52.61,20.28	53.60,20.41	53.60,20.41
path	53.63,21.25	54.59,21.69	55.27,21.65	55.66,22.40	55.16,23.21
path	53.63,23.11	52.96,22.89
kill Cinderscale Amazard##236169, Cinderdig Amazard##236168
collect Void-Tempered Scales##238513 |n
collect Void-Tempered Scales##238514 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Midnight Tailoring 1-100",{
description="This guide will walk you through leveling your Midnight Tailoring profession from 1-100.",
startlevel=78.00,
},[[
step
Approximate bill of materials:
|tip Bright Linen: 66
|tip Eversinging Dust: 14
|tip Silverleaf Thread: 371
|tip Embroidery Floss: 12
|tip These totals are approximate.
|tip You are encouraged to make each recipe at least once and utilize the Crafting Order system, which will vary the materials needed.
|tip These materials will get you to approximately 50 skill level.
Click Here to Continue |confirm
step
talk Galana##243352
Train Tailoring |skillmax Tailoring,300 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
Train Midnight Tailoring |skillmax Midnight Tailoring,100 |goto Silvermoon City M/0 48.19,54.00
step
talk Deynna##243353
buy 371 Silverleaf Thread##251665 |goto Silvermoon City M/0 48.23,54.31
buy 12 Embroidery Floss##251691 |goto Silvermoon City M/0 48.23,54.31
step
collect 66 Bright Linen##236963, Bright Linen##236965 |usebank
|tip Normal or High quality.
|tip Loot them from Humanoid mobs or purchase them from the auction house.
step
create Bright Linen Bolt##1228939,Midnight Tailoring,66 total |goto Silvermoon City M/0 48.19,54.00
|tip Turn all 66 Bright Linen into bolts and save them for later steps.
step
talk Galana##243352
learn Courtly Wrists##1228954 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
learn Courtly Belt##1228953 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
learn Courtly Cloak##1228958 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
learn Courtly Gloves##1228952 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
learn Courtly Slippers##1228957 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
learn Courtly Pants##1228956 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
learn Bright Linen Alchemy Apron##1228968 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
learn Bright Linen Enchanting Hat##1228970 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
learn Bright Linen Fishing Hat##1228971 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
learn Bright Linen Herbalism Hat##1228972 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
learn Bright Linen Tailoring Robe##1228973 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
learn Chef's Bright Linen Cooking Chapeau##1228969 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
learn Courtly Helm##1228951 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
learn Imbued Bright Linen Bolt##1228940 |goto Silvermoon City M/0 48.19,54.00
step
talk Deynna##243353
buy 98 Silverleaf Thread##251665 |goto Silvermoon City M/0 48.23,54.31
buy 8 Embroidery Floss##251691 |goto Silvermoon City M/0 48.23,54.31
step
collect 17 Bright Linen Bolt##239700, Bright Linen Bolt##239701 |usebank
|tip Normal or High quality.
|tip You created these in a previous step.
step
create Imbued Bright Linen Bolt##1228940,Midnight Tailoring,14 total |goto Silvermoon City M/0 48.19,54.00
|tip Turn all 66 Bright Linen into bolts and save them for later steps.
step
collect 12 Eversinging Dust##243599, Eversinging Dust##243600 |usebank
|tip Normal or High quality.
|tip Disenchant items for them with Enchanting or purchase them from the auction house.
step
collect 12 Imbued Bright Linen Bolt##239702, Imbued Bright Linen Bolt##239703 |usebank
|tip Normal or High quality.
|tip You created these in a previous step.
step
craft Courtly Wrists##1228954,Midnight Tailoring
firstcraft Courtly Wrists##1228954 |goto Silvermoon City M/0 48.19,54.00
step
craft Courtly Belt##1228953,Midnight Tailoring
firstcraft Courtly Belt##1228953 |goto Silvermoon City M/0 48.19,54.00
step
craft Courtly Cloak##1228958,Midnight Tailoring
firstcraft Courtly Cloak##1228958 |goto Silvermoon City M/0 48.19,54.00
step
craft Courtly Gloves##1228952,Midnight Tailoring
firstcraft Courtly Gloves##1228952 |goto Silvermoon City M/0 48.19,54.00
step
craft Courtly Slippers##1228957,Midnight Tailoring
firstcraft Courtly Slippers##1228957 |goto Silvermoon City M/0 48.19,54.00
step
craft Courtly Pants##1228956,Midnight Tailoring
firstcraft Courtly Pants##1228956 |goto Silvermoon City M/0 48.19,54.00
step
craft Bright Linen Alchemy Apron##1228968,Midnight Tailoring
firstcraft Bright Linen Alchemy Apron##1228968 |goto Silvermoon City M/0 48.19,54.00
step
craft Bright Linen Enchanting Hat##1228970,Midnight Tailoring
firstcraft Bright Linen Enchanting Hat##1228970 |goto Silvermoon City M/0 48.19,54.00
step
craft Bright Linen Fishing Hat##1228971,Midnight Tailoring
firstcraft Bright Linen Fishing Hat##1228971 |goto Silvermoon City M/0 48.19,54.00
step
craft Bright Linen Herbalism Hat##1228972,Midnight Tailoring
firstcraft Bright Linen Herbalism Hat##1228972 |goto Silvermoon City M/0 48.19,54.00
step
craft Bright Linen Tailoring Robe##1228973,Midnight Tailoring
firstcraft Bright Linen Tailoring Robe##1228973 |goto Silvermoon City M/0 48.19,54.00
step
craft Chef's Bright Linen Cooking Chapeau##1228969,Midnight Tailoring
firstcraft Chef's Bright Linen Cooking Chapeau##1228969 |goto Silvermoon City M/0 48.19,54.00
step
craft Courtly Helm##1228951,Midnight Tailoring
firstcraft Courtly Helm##1228951 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
learn Courtly Robes##1228955 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
learn Courtly Shoulders##1228959 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
learn Bright Linen Reagent Satchel##1228978 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
learn Bright Linen Spellthread##1228976 |goto Silvermoon City M/0 48.19,54.00
step
talk Deynna##243353
buy 9 Silverleaf Thread##251665 |goto Silvermoon City M/0 48.23,54.31
buy 4 Embroidery Floss##251691 |goto Silvermoon City M/0 48.23,54.31
step
collect 12 Bright Linen Bolt##239700, Bright Linen Bolt##239701 |usebank
|tip Normal or High quality.
|tip You created these in a previous step.
step
collect 2 Imbued Bright Linen Bolt##239702, Imbued Bright Linen Bolt##239703 |usebank
|tip Normal or High quality.
|tip You created these in a previous step.
step
collect 8 Fantastic Fur##238525 |usebank
|tip Normal or High quality.
|tip Skin them from furred creatures with Skinning or purchase them from the auction house.
step
collect 2 Eversinging Dust##243599, Eversinging Dust##243600 |usebank
|tip Normal or High quality.
|tip Disenchant items for them with Enchanting or purchase them from the auction house.
step
craft Courtly Robes##1228955,Midnight Tailoring
firstcraft Courtly Robes##1228955 |goto Silvermoon City M/0 48.19,54.00
step
craft Courtly Shoulders##1228959,Midnight Tailoring
firstcraft Courtly Shoulders##1228959 |goto Silvermoon City M/0 48.19,54.00
step
craft Bright Linen Reagent Satchel##1228978,Midnight Tailoring
firstcraft Bright Linen Reagent Satchel##1228978 |goto Silvermoon City M/0 48.19,54.00
step
craft Bright Linen Spellthread##1228976,Midnight Tailoring
firstcraft Bright Linen Spellthread##1228976 |goto Silvermoon City M/0 48.19,54.00
step
create Courtly Shoulders##1228959,Midnight Tailoring,50 |goto Silvermoon City M/0 48.19,54.00 |only if default
create Courtly Shoulders##1228959,Midnight Tailoring,52 |goto Silvermoon City M/0 48.19,54.00 |only if KulTiran
|tip Make a few more if you didn't hit 50.
step
Reach Skill Level 100 in Midnight Tailoring |skill Midnight Tailoring,100 |only if default
Reach Skill Level 102 in Midnight Tailoring |skill Midnight Tailoring,102 |only if KulTiran
|tip From this point, it becomes very difficult to continue gaining points efficiently.
|tip Your best path is slowly with Patron Orders and daily cooldowns.
|tip Focus on First Craft bonuses.
|tip If you want to rush, 50-65 you can make Bright Linen Spellthread.
|tip 65-90 you can make Sunfire Silk Lining or Arcanoweave Lining.
|tip 90-100 you can make Elegant Artisan's Cooking Hat.
]])
QuestCore:RegisterGuide("Profession Guides\\Tailoring\\Midnight Tailoring Knowledge Treasures",{
description="This guide will walk you through collecting all Tailoring Knowledge Treasures.",
startlevel=68.00,
condition_end=function() return completedallq(89079,89084,89080,89085,89081,89078,89083,89082) end,
},[[
step
talk Galana##243352
Train Tailoring |skillmax Tailoring,300 |goto Silvermoon City M/0 48.19,54.00
step
talk Galana##243352
Train Midnight Tailoring |skillmax Midnight Tailoring,100 |goto Silvermoon City M/0 48.19,54.00
step
click A Really Nice Curtain##525904
|tip Upstairs inside the building.
collect A Really Nice Curtain##238613 |goto Silvermoon City M/0 35.73,61.25 |q 89079 |future
step
use the A Really Nice Curtain##238613
Study the A Really Nice Curtain |complete itemcount(238613) == 0
step
click Particularly Enchanting Tablecloth##525899
|tip Inside the building.
collect Particularly Enchanting Tablecloth##238618 |goto Silvermoon City M/0 31.78,68.27 |q 89084 |future
step
use the Particularly Enchanting Tablecloth##238618
Study the Particularly Enchanting Tablecloth |complete itemcount(238618) == 0
step
click Sin'dorei Outfitter's Ruler##525903
|tip Top floor of the building.
collect Sin'dorei Outfitter's Ruler##238614 |goto Eversong Woods M/0 46.35,34.86 |q 89080 |future
step
use the Sin'dorei Outfitter's Ruler##238614
Study the Sin'dorei Outfitter's Ruler |complete itemcount(238614) == 0
step
Enter the cave |goto Zul Aman M/0 40.52,49.85 < 10 |walk
click Artisan's Cover Comb##525898
|tip Inside the cave.
collect Artisan's Cover Comb##238619 |goto Zul Aman M/0 40.53,49.37 |q 89085 |future
step
use the Artisan's Cover Comb##238619
Study the Artisan's Cover Comb |complete itemcount(238619) == 0
step
click Wooden Weaving Sword##525902
collect Wooden Weaving Sword##238615 |goto Harandar/0 69.77,51.05 |q 89081 |future
step
use the Wooden Weaving Sword##238615
Study the Wooden Weaving Sword |complete itemcount(238615) == 0
step
click A Child's Stuffy##525905
|tip Inside the building.
collect A Child's Stuffy##238612 |goto Harandar/0 70.56,50.90 |q 89078 |future
step
use the A Child's Stuffy##238612
Study the A Child's Stuffy |complete itemcount(238612) == 0
step
click Satin Throw Pillow##525900
|tip Inside the building.
collect Satin Throw Pillow##238617 |goto Slayers Rise/0 61.39,85.12 |q 89083 |future
step
use the Satin Throw Pillow##238617
Study the Satin Throw Pillow |complete itemcount(238617) == 0
step
click Book of Sin'dorei Stitches##525901
|tip Inside the building.
collect Book of Sin'dorei Stitches##238616 |goto Slayers Rise/0 62.01,83.52 |q 89082 |future
step
use the Book of Sin'dorei Stitches##238616
Study the Book of Sin'dorei Stitches |complete itemcount(238616) == 0
]])
