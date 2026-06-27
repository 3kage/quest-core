-- QuestCore bundled guide (mists)
if not QuestCore then return end
if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Pets & Mounts\\Battle Pets\\Aquatic Pets\\Aqua Strider",{
expansion="mists",
patch='50500',
source='Drop',
author="QuestCore",
description="This guide will teach you how to acquire the Aqua Strider battle pet.",
keywords={"Drop","Aquatic"},
pet=836,
mopready=true,
},[[
step
label "HOLLOW_REED_BEGIN"
kill Nalash Verdantis##50776
|tip He is a jinyu with a staff standing on the island here.
|tip Respawn time is about an hour.
|tip You may have to kill him more than once to obtain the pet item drop.
collect Hollow Reed##86563 |goto Dread Wastes/0 64.25,58.46 |next "H_HOLLOW_REED_END" |or
Click Here to Complete a Celestial Challenge daily to earn currency for a chance to acquire this Battle Pet |confirm |next "H_SATCHEL_OF_CELESTIAL_CHANCE"  |only if level == 90 and _G.GetAverageItemLevel()>=435
|tip Spam-killing Nalash Verdantis may be the surest method to obtain this battle pet, but you can also obtain this pet and other mounts and pets by completing Celestial Challenge daily quests. |only if level == 90 and _G.GetAverageItemLevel()>=435
'|complete haspet(836) |next "HOLLOW_REED_END" |or
step
label "H_SATCHEL_OF_CELESTIAL_CHANCE"
ding 90 |or
'|complete haspet(836) |or
step
Reach item level 435 |complete _G.GetAverageItemLevel()>=435 |or
'|complete haspet(836) |or
step
talk Challenger Wuli##63994
|tip He is underneath the main outdoor platform at the shrine.
Accept a Celestial Challenge Daily Quest |complete haveq(91702,91706,91704,91710,91718,91714,91708,91712,91716) or completedq(91702,91706,91704,91710,91718,91714,91708,91712,91716) |goto Vale of Eternal Blossoms/0 61.08,20.80 |or
'|complete haspet(836) |or
step
Press _I_ and Queue for a {y}Random Mists of Pandaria Celestial{} Dungeon
|tip Run random Celestial Dungeons until your quest is completed.
|tip You will have to complete 3 or 4 Celestial Challenge daily quests to acquire enough August Stone Fragments to purchase a Satchel of Celestial Chance.
Complete the Celestial Challenge Daily Quest |n
earn 10 August Stone Fragment##3350
Click Here to Return to the Beginning of the {b}Satchels of Celestial Chance{} Guide |confirm |next "H_SATCHEL_OF_CELESTIAL_CHANCE"
|tip
Click Here to Return to the Beginning of the Guide |confirm |next "H_HOLLOW_REED_BEGIN"
step
talk Avatar of the August Celestials##248108
|tip This vendor is upstairs, inside the building, on the lefthand balcony in the Shrine of Two Moons.
|tip He looks like a ghostly cloud serpent.
buy Satchel of Celestial Chance##248666 |goto goto Shrine of Two Moons/2 42.60,45.59v
step
use Satchel of Celestial Chance##248666
|tip You may have to purchase more than one satchel to acquire the pet.
collect Hollow Reed##86563 |next "H_HOLLOW_REED_END"
Click Here to Return to the Beginning of the Guide |confirm |next "H_HOLLOW_REED_BEGIN"
step
label "H_HOLLOW_REED_END"
use Hollow Reed##86563
learnpet Aqua Strider##836
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Aquatic Pets\\Fishy",{
expansion="mists",
patch='50100',
source='Quest',
description="This guide will teach you how to acquire the Fishy battle pet.",
pet=847,
mopready=true,
},[[
step
talk Chief Kah Kah##56336
accept What's in a Name Name?##31239 |goto The Jade Forest/0 28.00,47.20
step
kill 7 Riverstride Jinyu##56289+ |q 31239/1 |goto The Jade Forest/0 28.80,46.00
step
talk Chief Kah Kah##56336
turnin What's in a Name Name##31239 |goto The Jade Forest/0 28.00,47.20
step
use Fishy##84105
learnpet Fishy##847
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Beast Pets\\Sumprush Rodent",{
expansion="mists",
patch='51000',
source='PetBattle',
description="This guide will teach you how to acquire the Sumprush Rodent battle pet.",
pet=1128,
mopready=true,
},[[
step
collect 2000 Lion's Landing Commision##91838 |next "buy"
Click here to farm |confirm
step
kill Shieldwall Footman##67304+, Dwarven Mortar Team Engineer##67545+, Shieldwall Rifleman##67297+, Shieldwall Vindicator##67296+, Thane Stonehearth##67636
collect Lion's Landing Commission##91838 |goto Krasarang Wilds/0 81.60,25.30
step
label "buy"
talk Ongrom Black Tooth##67751
buy Rodent Crate##92527 |goto Krasarang Wilds/0 10.80,53.40
step
use Rodent Crate##92527
You will need to search for a Sumprush Rodent around the area.
learnpet Sumprush Rodent##1128 |goto Krasarang Wilds/0 10.80,53.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Air Spirit",{
expansion="mists",
patch='51000',
source='Quest',
description="This guide will teach you how to acquire the Pandaren Air Spirit battle pet.",
pet=1125,
mopready=true,
},[[
step
This pet is only obtainable after defeating all of the pet battle master trainers
confirm
step
talk Gentle San##64582
accept Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.90,23.60
only if not completedq(32428)
step
talk Thundering Pandaren Spirit##68465
Challenge him to a pet battle.
Defeat Thundering Pandaren Spirit |q 32428/2 |goto Kun-Lai Summit/0 65.00,93.90
only if not completedq(32428)
step
talk Burning Pandaren Spirit##68463
Challenge him to a pet battle.
Defeat Burning Pandaren Spirit |q 32428/1 |goto Townlong Steppes/0 57.00,42.20
only if not completedq(32428)
step
talk Flowing Pandaren Spirit##68462
Challenge him to a pet battle.
Defeat Flowing Pandaren Spirit |q 32428/4 |goto Dread Wastes/0 61.20,87.60
only if not completedq(32428)
step
talk Whispering Pandaren Spirit##68464
Challenge him to a pet battle.
Defeat Whispering Pandaren Spirit |q 32428/3 |goto The Jade Forest/0 28.80,36.00
only if not completedq(32428)
step
talk Gentle San##64582
turnin Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.90,23.60
|tip You can complete further daily quests to get the other pets.
only if not completedq(32428)
step
You can now obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
confirm
only if completedq(32428)
step
talk Whispering Pandaren Spirit##68464
accept Whispering Pandaren Spirit##32440 |goto The Jade Forest/0 28.80,36.00
step
talk Whispering Pandaren Spirit##68464
Challenge him to a pet battle and defeat him. |q 32440/1 |goto The Jade Forest/0 28.80,36.00
step
talk Whispering Pandaren Spirit##68464
turnin Whispering Pandaren Spirit##32440 |goto The Jade Forest/0 28.80,36.00
step
use Pandaren Spirit Pet Supplies##93148
collect 1 Pandaren Air Spirit##92799
|tip You may have to complete this daily more than once to obtain the pet.
step
use Pandaren Air Spirit##92799
learnpet Pandaren Air Spirit##1125
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Earth Spirit",{
expansion="mists",
patch='51000',
source='Quest',
description="This guide will teach you how to acquire the Pandaren Earth Spirit battle pet.",
pet=1126,
mopready=true,
},[[
step
This pet is only obtainable after defeating all of the pet battle master trainers
confirm
step
talk Gentle San##64582
accept Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.90,23.60
only if not completedq(32428)
step
talk Thundering Pandaren Spirit##68465
Challenge him to a pet battle.
Defeat Thundering Pandaren Spirit |q 32428/2 |goto Kun-Lai Summit/0 65.00,93.90
only if not completedq(32428)
step
talk Burning Pandaren Spirit##68463
Challenge him to a pet battle.
Defeat Burning Pandaren Spirit |q 32428/1 |goto Townlong Steppes/0 57.00,42.20
only if not completedq(32428)
step
talk Flowing Pandaren Spirit##68462
Challenge him to a pet battle.
Defeat Flowing Pandaren Spirit |q 32428/4 |goto Dread Wastes/0 61.20,87.60
only if not completedq(32428)
step
talk Whispering Pandaren Spirit##68464
Challenge him to a pet battle.
Defeat Whispering Pandaren Spirit |q 32428/3 |goto The Jade Forest/0 28.80,36.00
only if not completedq(32428)
step
talk Gentle San##64582
turnin Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.90,23.60
|tip You can complete further daily quests to get the other pets.
only if not completedq(32428)
step
|tip You can now obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
confirm
only if completedq(32428)
step
talk Thundering Pandaren Spirit##68465
accept Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 65.00,93.90
step
talk Thundering Pandaren Spirit##68465
Challenge him to a pet battle and defeat him. |q 32441/1 |goto Kun-Lai Summit/0 65.00,93.90
step
talk Thundering Pandaren Spirit##68465
turnin Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 65.00,93.90
step
use Pandaren Spirit Pet Supplies##93149
collect 1 Pandaren Earth Spirit##92800
|tip You may have to complete this daily more than once to obtain the pet.
step
use Pandaren Earth Spirit##92800
learnpet Pandaren Earth Spirit##1126
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Fire Spirit",{
expansion="mists",
patch='51000',
source='Quest',
description="This guide will teach you how to acquire the Pandaren Fire Spirit battle pet.",
pet=1124,
mopready=true,
},[[
step
This pet is only obtainable after defeating all of the pet battle master trainers
confirm
step
talk Gentle San##64582
accept Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.90,23.60
only if not completedq(32428)
step
talk Thundering Pandaren Spirit##68465
Challenge him to a pet battle.
Defeat Thundering Pandaren Spirit |q 32428/2 |goto Kun-Lai Summit/0 65.00,93.90
only if not completedq(32428)
step
talk Burning Pandaren Spirit##68463
Challenge him to a pet battle.
Defeat Burning Pandaren Spirit |q 32428/1 |goto Townlong Steppes/0 57.00,42.20
only if not completedq(32428)
step
talk Flowing Pandaren Spirit##68462
Challenge him to a pet battle.
Defeat Flowing Pandaren Spirit |q 32428/4 |goto Dread Wastes/0 61.20,87.60
only if not completedq(32428)
step
talk Whispering Pandaren Spirit##68464
Challenge him to a pet battle.
Defeat Whispering Pandaren Spirit |q 32428/3 |goto The Jade Forest/0 28.80,36.00
only if not completedq(32428)
step
talk Gentle San##64582
turnin Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.90,23.60
|tip You can complete further daily quests to get the other pets.
only if not completedq(32428)
step
|tip You can obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
confirm
only if completedq(32428)
step
talk Burning Pandaren Spirit##68463
accept Burning Pandaren Spirit##32434 |goto Townlong Steppes/0 57.00,42.20
step
talk Burning Pandaren Spirit##68463
Challenge him to a pet battle and defeat him. |q 32434/1 |goto Townlong Steppes/0 57.00,42.20
step
talk Burning Pandaren Spirit##68463
turnin Burning Pandaren Spirit##32434 |goto Townlong Steppes/0 57.00,42.20
step
use Pandaren Spirit Pet Supplies##93146
collect 1 Pandaren Fire Spirit##92798
|tip You may have to complete this daily more than once to obtain the pet.
step
use Pandaren Fire Spirit##92798
learnpet Pandaren Fire Spirit##1124
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Pandaren Water Spirit",{
expansion="mists",
patch='50400',
source='Quest',
description="This guide will teach you how to acquire the Pandaren Water Spirit battle pet.",
pet=868,
mopready=true,
},[[
step
This pet is only obtainable after defeating all of the pet battle master trainers
confirm
step
talk Gentle San##64582
accept Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.90,23.60
only if not completedq(32428)
step
talk Thundering Pandaren Spirit##68465
Challenge him to a pet battle.
Defeat Thundering Pandaren Spirit |q 32428/2 |goto Kun-Lai Summit/0 65.00,93.90
only if not completedq(32428)
step
talk Burning Pandaren Spirit##68463
Challenge him to a pet battle.
Defeat Burning Pandaren Spirit |q 32428/1 |goto Townlong Steppes/0 57.00,42.20
only if not completedq(32428)
step
talk Flowing Pandaren Spirit##68462
Challenge him to a pet battle.
Defeat Flowing Pandaren Spirit |q 32428/4 |goto Dread Wastes/0 61.20,87.60
only if not completedq(32428)
step
talk Whispering Pandaren Spirit##68464
Challenge him to a pet battle.
Defeat Whispering Pandaren Spirit |q 32428/3 |goto The Jade Forest/0 28.80,36.00
only if not completedq(32428)
step
talk Gentle San##64582
turnin Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.90,23.60
|tip You can complete further daily quests to get the other pets.
only if not completedq(32428)
step
|tip You can now obtain this pet by completing the daily quest given by Whispering Pandaren Spirit.
confirm
only if completedq(32428)
step
talk Flowing Pandaren Spirit##68462
accept Flowing Pandaren Spirit##32439 |goto Dread Wastes/0 61.20,87.60
step
talk Flowing Pandaren Spirit##68462
Challenge him to a pet battle and defeat him. |q 32439/1 |goto Dread Wastes/0 61.20,87.60
step
talk Flowing Pandaren Spirit##68462
turnin Flowing Pandaren Spirit##32439 |goto Dread Wastes/0 61.20,87.60
step
use Pandaren Spirit Pet Supplies##93147
collect 1 Pandaren Water Spirit##90173
|tip You may have to complete this daily more than once to obtain the pet.
step
use Pandaren Water Spirit##90173
learnpet Pandaren Water Spirit##868
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Elemental Pets\\Sapphire Cub",{
expansion="mists",
patch='50100',
source='Profession',
description="This guide will teach you how to acquire the Sapphire Cub battle pet.",
pet=846,
mopready=true,
},[[
step
You can obtain this pet from a level 600 Jewelcrafter |only if skill("Jewelcrafting") == 0
Reach level 600 Inscription |complete skill ("Jewelcrafting") == 600 |only if skill("Jewelcrafting") >= 1 |or
|tip You obtain this jewelcrafting design from the Golden Lotus Daily Quest reward or by opening a Serpent's Heart. |only if hasprof("Pandaria Jewelcrafting",1,75)
|tip Please open your Jewelcrafting Profession Interface. |only if skill("Jewelcrafting") <= 599
Click Here to Open the "Golden Lotus Dailies" Guide |confirm |loadguide "Daily Guides\\Mists of Pandaria Dailies\\The Golden Lotus Dailies" |only if hasprof("Pandaria Jewelcrafting",1,75)
|tip You can also purchase the pet from the auction house.
collect Sapphire Cub##82775 |or
'|complete haspet(846) |or
step
use Sapphire Cub##82775
learnpet Sapphire Cub##846
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Chi-ji Kite",{
expansion="mists",
patch='50300',
source='Profession',
description="This guide will teach you how to acquire the Chi-ji Kite battle pet.",
pet=849,
mopready=true,
},[[
step
You can obtain this pet from a level 600 scribe |only if skill("Inscription") == 0
Reach level 600 Inscription |complete skill ("Inscription") == 600 |only if skill("Inscription") <= 599 |or
|tip Use the Inscription Leveling guide to achieve this. |only if skill("Inscription") <= 599
Click Here to Load the Inscription Leveling guide |confirm |loadguide "Profession Guides\\Inscription\\Leveling Guides\\Inscription (1-600)" |only if skill("Inscription") >= 1
|tip You can also purchase it from the auction house. |only if skill("Inscription") == 0
|confirm |or
'|complete haspet(849) or skill("Inscription") == 600
step
talk Nerog##46716
learn Chi-Ji Kite##127009 |goto Orgrimmar/0 55.10,55.90 |or
'|complete haspet(849) |or
only if skill("Inscription") == 600
step
Collect about 15 Green Tea leaf and/or Silkweed for milling
|tip Zoom your minimap all the way out and track herbs.
|tip Follow the path and gather 4 stacks of 5 Green Tea Leaves or Silkweed herbs from yellow nodes on your minimap.
map Valley of the Four Winds/0
path 81.40,21.50	76.40,29.20	68.20,33.30
path 70.60,41.80	65.10,60.10	57.60,65.60
path 50.80,58.60	48.00,65.90	46.90,61.30
path 42.50,58.30	33.60,62.10	28.10,72.70
path 25.70,78.40	18.50,51.00	15.40,53.90
path 12.80,44.70	14.30,41.20	14.80,35.80
path 19.60,34.40	24.00,42.20	25.00,50.20
path 30.10,55.70	35.80,54.80	41.50,48.90
confirm |or
'|complete haspet(849) |or
only if skill("Inscription") == 600
step
cast Milling##51005
|tip Cast it on the herbs you collected.
collect 4 Shadow Pigment##79251 |or
'|complete haspet(849) |or
only if skill("Inscription") == 600
step
talk Moraka##46718
buy 1 Light Parchment##39354 |goto Orgrimmar/0 55.40,55.90 |or
'|complete haspet(849) |or
only if skill("Inscription") == 600
step
create 1 Chi-ji Kite##89368 |or
'|complete itemcount(89368) == 1 |or
'|complete haspet(849) |or
step
use Chi-ji Kite##89368
learnpet Chi-ji Kite##66104
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Jade Crane Chick",{
expansion="mists",
patch='50100',
source='Vendor',
description="This guide will teach you how to acquire the Jade Crane Chick battle pet.",
pet=792,
mopready=true,
},[[
step
Only a Pandaren can Purchase this Pet from the Vendor
|tip Anyone can purchase this pet from the auction house.
confirm |or
'|complete haspet(792) |or
'|only if not raceclass("Pandaren")
step
talk Varzok##63626
buy Jade Crane Chick##88148 |goto Orgrimmar/0 52.50,59.20 |or
'|complete haspet(792) |or
step
use Jade Crane Chick##88148
learnpet Jade Crane Chick##792
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Flying Pets\\Yu'lon Kite",{
expansion="mists",
patch='50300',
source='Profession',
description="This guide will teach you how to acquire the Yu'lon Kite battle pet.",
pet=850,
mopready=true,
},[[
step
You can obtain this pet from a level 600 scribe |only if skill("Inscription") == 0
Reach level 600 Inscription |complete skill ("Inscription") == 600 |only if skill("Inscription") <= 599 |or
|tip Use the Inscription Leveling guide to achieve this. |only if skill("Inscription") <= 599
Click Here to Load the Inscription Leveling guide |confirm |loadguide "Profession Guides\\Inscription\\Leveling Guides\\Inscription (1-600)" |only if skill("Inscription") <= 599
|tip You can also purchase it from the auction house. |only if skill("Inscription") == 0
|confirm |only if skill("Inscription") == 0 |or
'|complete haspet(850) or skill("Inscription") == 600
step
talk Nerog##46716
learn Yu'lon Kite##127007 |goto Orgrimmar/0 55.10,55.90 |or
'|complete haspet(850) |or
only if skill("Inscription") == 600
step
Collect herbs to mill
|tip Open your map to see the path.
|tip Zoom your minimap all the way out and track herbs.
|tip Follow the path and gather about 4 stacks of 5 Green Tea Leaves or Silkweed herbs from yellow nodes on your minimap.
map Valley of the Four Winds/0
path 81.40,21.50	76.40,29.20	68.20,33.30
path 70.60,41.80	65.10,60.10	57.60,65.60
path 50.80,58.60	48.00,65.90	46.90,61.30
path 42.50,58.30	33.60,62.10	28.10,72.70
path 25.70,78.40	18.50,51.00	15.40,53.90
path 12.80,44.70	14.30,41.20	14.80,35.80
path 19.60,34.40	24.00,42.20	25.00,50.20
path 30.10,55.70	 35.80,54.80	41.50,48.90
confirm |or
'|complete haspet(850) |or
only if skill("Inscription") == 600
step
cast Milling##51005
|tip Cast it on the herbs you collected.
collect 4 Shadow Pigment##79251 |or
'|complete haspet(850) |or
only if skill("Inscription") == 600
step
talk Moraka##46718
buy 1 Light Parchment##39354 |goto Orgrimmar/0 55.40,55.90 |or
'|complete haspet(850) |or
only if skill("Inscription") == 600
step
create 1 Yu'lon Kite##89367 |only if skill("Inscription") == 600 |or
buy 1 Yu'lon Kite##89367 |only if skill("Inscription") == 0 |or
|tip You can get this from a scribe or purchase from the auction house. |only if skill("Inscription") == 0
'|complete itemcount(89367) == 1 |or
'|complete haspet(850) |or
step
use Yu'lon Kite##89367
|tip Obtain this from a scribe or buy it from the auction house. |only if itemcount(89367) <= 0
learnpet Yu'lon Kite##850
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Mountain Panda",{
expansion="mists",
patch='52000',
source='Quest',
description="This guide will teach you how to acquire the Mountain Panda battle pet.",
pet=1198,
mopready=true,
},[[
step
Click Here to complete the _Battle Pet Questline_. |confirm |next |only if not completedq(31951)
Click Here to complete the _Beasts of Fable_. |confirm |next "beasts" |only if completedq(31951) and not completedq(32603)
Click Here to complete the dailies |confirm |next "reset" |only if completedq(31951) and completedq(32603)
|tip In order to attain this pet, you will need to completed the Battle Pet Quest line as well as the Beasts of Fable quest.
step
talk Varzok##63626
|tip Up on the plateau near the Undercity zeppelin tower.
Select _"Interested in catching some rare pets?"_ |gossip 130217
Train _Battle Pet Training_
learnspell Revive Battle Pets##125439
accept Learning the Ropes##31588 |goto Orgrimmar/1 52.56,59.27
only if not completedq(31588)
step
talk Varzok##63626
learnspell Revive Battle Pets##125439 |goto Orgrimmar/1 52.56,59.27
step
clicknpc Dung Beetle##62115
|tip It could also be a Spiny Lizard.
Win a Pet Battle |q 31588/1 |goto Orgrimmar/1 49.96,57.40
|tip Open your Pet Journal with "Shift+P" and assign pets to your battle slots if you can't start the battle.
step
talk Varzok##63626
turnin Learning the Ropes##31588 |goto Orgrimmar/1 52.56,59.27
accept On The Mend##31589 |goto Orgrimmar/1 52.56,59.27
step
talk Murog##47764
Tell him: _"I'd like to heal and revive my battle pets."_
Heal your Battle Pets |q 31589/1 |goto Orgrimmar/1 62.10,35.30
step
talk Varzok##63626
turnin On The Mend##31589 |goto Orgrimmar/1 52.56,59.27
accept Level Up!##31827 |goto Orgrimmar/1 52.56,59.27
step
clicknpc Dung Beetle##62115
|tip It could also be a Spiny Lizard.
Raise a Battle Pet to level 3 |q 31827/1 |goto Orgrimmar/1 49.96,57.40
step
_Click the quest completion box that appears_
accept Varzok##32009
step
talk Varzok##63626
turnin Varzok##32009 |goto Orgrimmar/1 52.50,59.30
step
talk Varzok##63626
turnin Level Up!##31827 |goto Orgrimmar/1 52.50,59.30
accept Zunta, The Pet Tamer##31812 |goto Orgrimmar/1 52.50,59.30
accept Got one!##31590 |goto Orgrimmar/1 52.50,59.30
step
clicknpc Dung Beetle##62115
|tip It could also be a Spiny Lizard.
|tip When it reaches 35% health or lower, use your Trap ability to capture it.
Catch a Pet |q 31590/1 |goto Orgrimmar/1 49.96,57.40
step
talk Varzok##63626
turnin Got one!##31590 |goto Orgrimmar/1 52.50,59.30
step
talk Zunta##66126
Defeat Zunta |q 31812/1 |goto Durotar/0 43.86,28.86
|tip Zunta's pet team consists of level 2 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Zunta##66126
turnin Zunta, The Pet Tamer##31812 |goto Durotar/0 43.86,28.86
accept Dagra the Fierce##31813 |goto Durotar/0 43.86,28.86
step
talk Dagra the Fierce##66135
Defeat Dagra the Fierce |q 31813/1 |goto The Barrens/0 58.61,53.04
|tip Dagra's pet team consists of level 3 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat her in battle pet combat.
step
talk Dagra the Fierce##66135
turnin Dagra the Fierce##31813 |goto The Barrens/0 58.61,53.04
accept Analynn##31814 |goto The Barrens/0 58.61,53.04
step
talk Analynn##66136
Defeat Analynn |q 31814/1 |goto Ashenvale/0 20.20,29.55
|tip Analynn's pet team consists of level 5 Aquatic, Critter, and Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat her in battle pet combat.
step
talk Analynn##66136
turnin Analynn##31814 |goto Ashenvale/0 20.20,29.55
accept Zonya the Sadist##31815 |goto Ashenvale/0 20.20,29.55
step
talk Zonya the Sadist##66137
Defeat Zonya the Sadist |q 31815/1 |goto Stonetalon Mountains/0 59.65,71.58
|tip Zonya's pet team consists of level 7 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat her in battle pet combat.
step
talk Zonya the Sadist##66137
turnin Zonya the Sadist##31815 |goto Stonetalon Mountains/0 59.65,71.58
accept Merda Stronghoof##31817 |goto Stonetalon Mountains/0 59.65,71.58
step
talk Merda Stronghoof##66372
Defeat Merda Stronghoof |q 31817/1 |goto Desolace/0 57.11,45.69
|tip Merda's pet team consists of level 9 Aquatic, Elemental, and Critter battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat her in battle pet combat.
step
talk Merda Stronghoof##66372
turnin Merda Stronghoof##31817 |goto Desolace/0 57.11,45.69
accept Cassandra Kaboom##31870 |goto Desolace/0 57.11,45.69
step
talk Cassandra Kaboom##66422
Defeat Cassandra Kaboom |q 31870/1 |goto Southern Barrens/0 39.59,79.14
|tip Cassandra's pet team consists of level 11 Mechanical battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Defeat her in battle pet combat.
step
talk Cassandra Kaboom##66422
turnin Cassandra Kaboom##31870 |goto Southern Barrens/0 39.59,79.14
accept A Tamer's Homecoming##31918 |goto Southern Barrens/0 39.59,79.14
step
talk Varzok##63626
turnin A Tamer's Homecoming##31918 |goto Orgrimmar/1 52.56,59.27
accept Battle Pet Tamers: Kalimdor##31891 |goto Orgrimmar/1 52.56,59.27
step
talk Traitor Gluk##66352
Defeat Traitor Gluk |q 31891/1 |goto Feralas/0 59.74,49.65
|tip Gluk's pet team consists of level 13 Dragonkin, Beast, and Critter battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Grazzle the Great ##66436
Defeat Grazzle the Great  |q 31891/2 |goto Dustwallow Marsh/0 53.85,74.88
|tip Grazzle's pet team consists of level 14 Dragonkin battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Kela Grimtotem##66452
Defeat Kela Grimtotem |q 31891/3 |goto Thousand Needles/0 31.87,32.94
|tip Kela's pet team consists of level 15 Critter and Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Zoltan##66442
Defeat Zoltan |q 31891/4 |goto Felwood/0 39.95,56.57
|tip Zoltan's pet team consists of level 16 Mechanical and Magic battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Elena Flutterfly##66412
Defeat Elena Flutterfly |q 31891/5 |goto Moonglade/0 46.14,60.26
|tip Elena's pet team consists of level 17 Dragonkin, Magic, and Flying battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat her in battle pet combat.
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Kalimdor##31891 |goto Moonglade/0 46.14,60.26
accept Grand Master Trixxy##31897 |goto Moonglade/0 46.14,60.26
step
talk Stone Cold Trixxy##66466
Defeat Stone Cold Trixxy |q 31897/1 |goto Winterspring/0 65.63,64.52
|tip Trixxy's pet team consists of level 19 Dragonkin, Beast, and Flying battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat her in battle pet combat.
step
talk Stone Cold Trixxy##66466
turnin Grand Master Trixxy##31897 |goto Winterspring/0 65.63,64.52
accept The Returning Champion##31977 |goto Winterspring/0 65.63,64.52 |only if not completedq(31977) and not completedq(31976)
step
talk Varzok##63626
turnin The Returning Champion##31977 |goto Orgrimmar/1 52.56,59.27
|only if not completedq(31977) and not completedq(31976)
step
talk Varzok##63626
accept Battle Pet Tamers: Eastern Kingdoms##31902 |goto Orgrimmar/1 52.56,59.27
step
talk David Kosse##66478
Defeat David Kosse |q 31902/1 |goto The Hinterlands/0 62.98,54.59
|tip David's pet team consists of level 13 Critter, Beast, and Magic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Deiza Plaguehorn##66512
Defeat Deiza Plaguehorn |q 31902/2 |goto Eastern Plaguelands/0 66.96,52.42
|tip Deiza's pet team consists of level 14 Beast and Undead battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat her in battle pet combat.
step
talk Kortas Darkhammer##66515
Defeat Kortas Darkhammer |q 31902/3 |goto Searing Gorge/0 35.31,27.75
|tip Kortas' pet team consists of level 15 Dragonkin battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Everessa##66518
Defeat Everessa |q 31902/4 |goto Swamp of Sorrows/0 76.81,41.50
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Durin Darkhammer##66520
Defeat Durin Darkhammer |q 31902/5 |goto Burning Steppes/0 25.54,47.50
|tip Durin's pet team consists of level 17 Flying, Critter, and Elemental battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Eastern Kingdoms##31902 |goto Burning Steppes/0 66.96,52.42
step
talk Varzok##63626
accept Battle Pet Tamers: Outland##31921 |goto Orgrimmar/1 52.56,59.27
step
talk Nicki Tinytech##66550
accept Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30 |only if completedq(31920)
Defeat Nicki Tinytech |q 31921/1 |goto Hellfire Peninsula/0 64.31,49.30
|tip Nicki's pet team consists of level 20 Mechanical battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Defeat her in battle pet combat.
step
talk Nicki Tinytech##66550
turnin Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30
|only if completedq(31920)
step
talk Ras'an##66551
accept Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52 |only if completedq(31920)
Defeat Ras'an |q 31921/2 |goto Zangarmarsh/0 17.24,50.52
|tip Ras'an's pet team consists of level 21 Flying, Magic, and Humanoid battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Undead battle pets are strong against Humanoid battle pets.
|tip Defeat him in battle pet combat.
step
talk Ras'an##66551
turnin Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52
|only if completedq(31920)
step
talk Narrok##66552
accept Narrok##31924 |goto Nagrand/0 60.97,49.42 |only if completedq(31920)
Defeat Narrok |q 31921/3 |goto Nagrand/0 60.97,49.42
|tip Narrok's pet team consists of level 22 Aquatic, Critter, and Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Narrok##66552
turnin Narrok##31924 |goto Nagrand/0 60.97,49.42
|only if completedq(31920)
step
talk Morulu The Elder##66553
accept Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05 |only if completedq(31920)
Defeat Morulu The Elder |q 31921/4 |goto Shattrath City/0 58.76,70.05
|tip Morulu's pet team consists of level 23 Aquatic battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Morulu The Elder##66553
turnin Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05
|only if completedq(31920)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Outland##31921 |goto Shattrath City/0 58.76,70.05
accept Grand Master Antari##31920 |goto Shattrath City/0 58.76,70.05 |only if not completedq(31920)
step
talk Bloodknight Antari##66557
Defeat Bloodknight Antari |q 31920/1 |goto Shadowmoon Valley/0 30.51,41.77
|tip Analynn's pet team consists of level 24 Magic, Elemental, and Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Bloodknight Antari##66557
turnin Grand Master Antari##31920 |goto Shadowmoon Valley/0 30.51,41.77
accept Exceeding Expectations##31982 |goto Shadowmoon Valley/0 30.51,41.77 |only if not completedq(31981) and not completedq(31982)
step
talk Varzok##63626
turnin Exceeding Expectations##31982 |goto Orgrimmar/1 52.56,59.27
|only if not completedq(31981) and not completedq(31982)
step
talk Varzok##63626
accept Battle Pet Tamers: Northrend##31929 |goto Orgrimmar/1 52.56,59.27
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97 |only if completedq(31928)
Defeat Nearly Headless Jacob |q 31929/2 |goto Crystalsong Forest/0 50.14,58.97
|tip Jacob's pet team consists of level 25 Undead battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat him in battle pet combat.
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97
|only if completedq(31928)
step
talk Okrut Dragonwaste##66638
accept Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05 |only if completedq(31928)
Defeat Okrut Dragonwaste |q 31929/3 |goto Dragonblight/0 59.02,77.05
|tip Okrut's pet team consists of level 25 Dragonkin and Undead battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat him in battle pet combat.
step
talk Okrut Dragonwaste##66638
turnin Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05
|only if completedq(31928)
step
talk Beegle Blastfuse##66635
accept Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88 |only if completedq(31928)
Defeat Beegle Blastfuse |q 31929/1 |goto Howling Fjord/0 28.61,33.88
|tip Beegle's pet team consists of level 25 Flying and Aquatic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Beegle Blastfuse##66635
turnin Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88
|only if completedq(31928)
step
talk Gutretch##66639
accept Gutretch##31934 |goto Zul'Drak/0 13.22,66.79 |only if completedq(31928)
Defeat Gutretch |q 31929/4 |goto Zul'Drak/0 13.22,66.79
|tip Gutretch's pet team consists of level 25 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Gutretch##66639
turnin Gutretch##31934 |goto Zul'Drak/0 13.22,66.79
|only if completedq(31928)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Northrend##31929 |goto Zul'Drak/0 59.02,77.05
accept Grand Master Payne##31928 |goto Zul'Drak/0 59.02,77.05 |only if not completedq(31928)
step
talk Major Payne##66675
Defeat Major Payne |q 31928/1 |goto Icecrown/0 77.39,19.56
|tip Payne's pet team consists of level 25 Beast, Mechanical, and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Major Payne##66675
turnin Grand Master Payne##31928 |goto Icecrown/0 77.39,19.56
accept A Brief Reprieve##31984 |goto Icecrown/0 77.39,19.56 |only if not completedq(31929) and not completedq(31927)
step
talk Varzok##63626
turnin A Brief Reprieve##31984 |goto Orgrimmar/1 52.56,59.27
|only if not completedq(31929) and not completedq(31927)
step
talk Varzok##63626
accept Battle Pet Tamers: Cataclysm##31967 |goto Orgrimmar/1 52.56,59.27
step
talk Brok##66819
accept Brok##31972 |goto Mount Hyjal/0 61.37,32.71 |only if completedq(31970)
Defeat Brok |q 31967/1 |goto Mount Hyjal/0 61.37,32.71
|tip Brok's pet team consists of level 25 Magic, Beast, and Critter battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Brok##66819
turnin Brok##31972 |goto Mount Hyjal/0 61.37,32.71
|only if completedq(31970)
step
talk Bordin Steadyfist##66815
accept Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05 |only if completedq(31970)
Defeat Bordin Steadyfist |q 31967/2 |goto Deepholm/0 49.87,57.05
|tip Bordin's pet team consists of level 25 Elemental and Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Bordin Steadyfist##66815
turnin Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05
|only if completedq(31970)
step
talk Goz Banefury##66822
accept Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80 |only if completedq(31970)
Defeat Goz Banefury |q 31967/3 |goto Twilight Highlands/0 56.59,56.80
|tip Goz's pet team consists of level 25 Elemental, Magic, and Beast battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Goz Banefury##66822
turnin Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80
|only if completedq(31970)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Cataclysm##31967 |goto Twilight Highlands/0 56.59,56.80
accept Grand Master Obalis##31970 |goto Twilight Highlands/0 56.59,56.80 |only if not completedq(31970)
step
talk Obalis##66824
Defeat Obalis |q 31970/1 |goto Uldum/0 56.56,41.98
|tip Payne's pet team consists of level 25 Beast, Flying, and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Obalis##66824
turnin Grand Master Obalis##31970 |goto Uldum/0 56.56,41.98
accept The Triumphant Return##31986 |goto Uldum/0 56.56,41.98 |only if not completedq(31985) and not completedq(31986)
step
talk Varzok##63626
turnin The Triumphant Return##31986 |goto Orgrimmar/1 52.56,59.27
|only if not completedq(31985) and not completedq(31986)
step
talk Varzok##63626
accept Battle Pet Tamers: Pandaria##31952 |goto Orgrimmar/1 52.56,59.27
step
talk Hyuna of the Shrines##66730
accept Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17 |only if completedq(31951)
Defeat Hyuna of the Shrines |q 31952/1 |goto The Jade Forest/0 47.96,54.17
|tip Hyuna's pet team consists of level 25 Dragonkin and Magic battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat her in battle pet combat.
step
talk Hyuna of the Shrines##66730
turnin Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17
|only if completedq(31951)
step
talk Farmer Nishi##66734
accept Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68 |only if completedq(31951)
Defeat Farmer Nishi |q 31952/2 |goto Valley of the Four Winds/0 46.07,43.68
|tip Nishi's pet team consists of level 25 Beast and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat her in battle pet combat.
step
talk Farmer Nishi##66734
turnin Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68
|only if completedq(31951)
step
talk Mo'ruk##66733
accept Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91 |only if completedq(31951)
Defeat Mo'ruk |q 31952/3 |goto Krasarang Wilds/0 62.23,45.91
|tip Mo'ruk's pet team consists of level 25 Beast, Flying, and Aquatic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Mo'ruk##66733
turnin Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91
|only if completedq(31951)
step
talk Wastewalker Shu##66739
accept Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56 |only if completedq(31951)
Defeat Wastewalker Shu |q 31952/6 |goto Dread Wastes/0 55.11,37.56
|tip Shu's pet team consists of level 25 Beast, Aquatic, and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Wastewalker Shu##66739
turnin Grand Master Shu##31957 |goto Krasarang Wilds/0 55.11,37.56
|only if completedq(31951)
step
talk Seeker Zusshi##66918
accept Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21 |only if completedq(31951)
Defeat Seeker Zusshi |q 31952/5 |goto Townlong Steppes/0 36.32,52.21
|tip Zusshi's pet team consists of level 25 Aquatic, Critter, and Elemental battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Seeker Zusshi##66918
turnin Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21
|only if completedq(31951)
step
talk Courageous Yon##66738
accept Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63 |only if completedq(31951)
Defeat Courageous Yon |q 31952/4 |goto Kun-Lai Summit/0 35.84,73.63
|tip Yon's pet team consists of level 25 Beast, Critter, and Flying battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat him in battle pet combat.
step
talk Courageous Yon##66738
turnin Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63
|only if completedq(31951)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Pandaria##31952 |goto Kun-Lai Summit/0 35.84,73.63
accept Grand Master Aki##31951 |goto Kun-Lai Summit/0 35.84,73.63 |only if not completedq(31951)
step
talk Aki the Chosen##66741
Defeat Aki the Chosen |q 31951/1 |goto Vale of Eternal Blossoms/0 31.27,74.09
|tip Aki's pet team consists of level 25 Aquatic, Critter, and Dragonkin battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Aki the Chosen##66741
turnin Grand Master Aki##31951 |goto Vale of Eternal Blossoms/0 31.27,74.09
step
label "beasts"
talk Gentle San##64582
accept Beasts of Fable##32603 |goto Vale of Eternal Blossoms/0 60.80,23.70
step
label "dailies"
_No-No_
This enemy is aquatic
It is strong against undead and weak to flying attacks
I would suggest that you use flying pets against this enemy
Defeat No-No |q 32603/3 |goto Vale of Eternal Blossoms/0 11.00,70.90
step
_Lucky Yi_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using beast pets against this enemy
Defeat Lucky Yi |q 32603/5 |goto Valley of the Four Winds/0 40.50,43.70
step
_Greyhoof_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Defeat Greyhoof |q 32603/4 |goto Valley of the Four Winds/0 25.30,78.50
step
_Xi'a_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Xi'a |q 32603/10 |goto Krasarang Wilds/0 36.30,37.30
step
_Gorespine_
This enemy is a beast
Is is strong against Critters and weak to Mechanical attacks
I would suggest using Mechanical pets against this enemy
Defeat Gorespine |q 32603/2 |goto Dread Wastes/0 26.10,50.20
step
_Ti'un the Wanderer_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Ti'un the Wanderer |q 32603/6 |goto Townlong Steppes/0 72.30,79.80
step
_Kafi_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Defeat Kafi |q 32603/7 |goto Kun-Lai Summit/0 35.20,56.20
step
_Dos-Ryga_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Dos-Ryga |q 32603/8 |goto Kun-Lai Summit/0 67.90,84.70
step
_Ka'wi_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using a team of mechanical pets against this enemy
Defeat Ka'wi the Gorger |q 32603/1 |goto The Jade Forest/0 48.40,71.00
step
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using beast pets against this enemy
Defeat Nitun |q 32603/9 |goto The Jade Forest/0 57.00,29.10
step
talk Gentle San##64582
turnin Beasts of Fable##32603 |goto Vale of Eternal Blossoms/0 60.80,23.70
step
label "reset"
talk Gentle San##64582
accept Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms/0 60.80,23.70
accept Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms/0 60.80,23.70
accept Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms/0 60.80,23.70
accept Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.80,23.70 |only if not completedq(32428)
step
_No-No_
This enemy is aquatic
It is strong against undead and weak to flying attacks
I would suggest that you use flying pets against this enemy
No-No defeated |q 32869/2 |goto Vale of Eternal Blossoms/0 11.00,70.90
step
_Lucky Yi_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using beast pets against this enemy
Lucky Yi defeated |q 32868/2 |goto Valley of the Four Winds/0 40.50,43.70
step
_Greyhoof_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Greyhoof defeated |q 32868/1 |goto Valley of the Four Winds/0 25.30,78.50
step
_Skitterer Xi'a_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Xi'a defeated |q 32868/3 |goto Krasarang Wilds/0 36.30,37.30
step
_Flowing Pandaren Spirit_
This enemy uses aquatic and elemental pets
They are strong against undead and mechanical and weak to flying and aquatic pets
I would suggest using flying and aquatic pets against this enemy
Flowing Pandaren Spirit defeated |q 32428/4 |goto Dread Wastes/0 61.10,87.50
|only if haveq(32428)
step
talk Flowing Pandaren Spirit##68462
accept Flowing Pandaren Spirit##32439 |goto Dread Wastes/0 61.10,87.50
|only if completedq(32428)
step
_Flowing Pandaren Spirit_
This enemy uses aquatic and elemental pets
They are strong against undead and mechanical and weak to flying and aquatic pets
I would suggest using flying and aquatic pets against this enemy
Flowing Pandaren Spirit defeated |q 32439/1 |goto Dread Wastes/0 61.10,87.50
|only if haveq(32439)
step
talk Flowing Pandaren Spirit##68462
turnin Flowing Pandaren Spirit##32439 |goto Dread Wastes/0 61.10,87.50
|only if haveq(32439)
step
_Gorespine_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Gorespine defeated |q 32869/1 |goto Dread Wastes/0 26.10,50.20
step
_Ti'un the Wanderer_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Ti'un the Wanderer defeated |q 32869/3 |goto Townlong Steppes/0 72.30,79.80
step
_Burning Pandaren Spirit_
This enemy uses a dragonkin, flying and elemental pet
They are strong against flying, beast, and mechanical pets, respectively
They are weak against humanoid, magic, and aquatic pets, respectively
I would suggest using a humanoid, magic, and aquatic pet against this enemy
Burning Pandaren Spirit defeated |q 32428/1 |goto Townlong Steppes/0 57.10,42.10
|only if haveq(32428)
step
talk Burning Pandaren Spirit##68463
accept Burning Pandaren Spirit##32434 |goto Townlong Steppes/0 57.10,42.10
|only if completedq(32428)
step
_Burning Pandaren Spirit_
This enemy uses a dragonkin, flying and elemental pet
They are strong against flying, beast, and mechanical pets, respectively
They are weak against humanoid, magic, and aquatic pets, respectively
I would suggest using a humanoid, magic, and aquatic pet against this enemy
Burning Pandaren Spirit defeated |q 32434/1 |goto Townlong Steppes/0 57.10,42.10
|only if haveq(32434)
step
talk Burning Pandaren Spirit##68463
turnin Burning Pandaren Spirit##32434 |goto Townlong Steppes/0 57.10,42.10
|only if haveq(32434)
step
_Kafi_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Kafi defeated |q 32604/2 |goto Kun-Lai Summit/0 35.20,56.20
step
_Thundering Pandaren Spirit_
This enemy uses a beast, elemental, and magic pet
They are strong against humanoids, mechanical, and aquatic pets, respectively
They are weak against mechanical, aquatic, and dragonkin pets, respectively
I would suggest using a mechanical, aquatic, and dragonkin pet against this enemy
Thundering Pandaren Spirit defeated |q 32428/2 |goto Kun-Lai Summit/0 64.90,93.80
|only if haveq(32428)
step
talk Thundering Pandaren Spirit##68465
accept Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 64.90,93.80
|only if completedq(32428)
step
_Thundering Pandaren Spirit_
This enemy uses a beast, elemental, and magic pet
They are strong against humanoids, mechanical, and aquatic pets, respectively
They are weak against mechanical, aquatic, and dragonkin pets, respectively
I would suggest using a mechanical, aquatic, and dragonkin pet against this enemy
Thundering Pandaren Spirit defeated |q 32441/1 |goto Kun-Lai Summit/0 64.90,93.80
|only if haveq(32441)
step
talk Thundering Pandaren Spirit##68465
turnin Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 64.90,93.80
|only if haveq(32441)
step
_Dos-Ryga_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Dos-Ryga defeated |q 32604/3 |goto Kun-Lai Summit/0 67.90,84.70
step
_Whispering Pandaren Spirit_
This enemy uses a flying, elemental, and dragonkin pet
They are strong against beast, mechanical, and flying pets, respectively
They are weak against magic, aquatic, and humanoid pets, respectively
I would suggest using a magic, aquatic, and humanoid pet against this enemy
Whispering Pandaren Spirit defeated |q 32428/3 |goto The Jade Forest/0 28.90,36
|only if haveq(32428)
step
talk Whispering Pandaren Spirit##68464
accept Whispering Pandaren Spirit##32440 |goto The Jade Forest/0 28.90,36
|only if completedq(32428)
step
_Whispering Pandaren Spirit_
This enemy uses a flying, elemental, and dragonkin pet
They are strong against beast, mechanical, and flying pets, respectively
They are weak against magic, aquatic, and humanoid pets, respectively
I would suggest using a magic, aquatic, and humanoid pet against this enemy
Whispering Pandaren Spirit defeated |q 32440/1 |goto The Jade Forest/0 28.90,36
|only if haveq(32440)
step
talk Whispering Pandaren Spirit##68464
turnin Whispering Pandaren Spirit##32440 |goto The Jade Forest/0 28.90,36
|only if haveq(32440)
step
_Ka'wi the Gorger_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using a team of mechanical pets against this enemy
Ka'wi the Gorger defeated |q 32604/1 |goto The Jade Forest/0 48.40,71.00
step
_Nitun_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using beast pets against this enemy
Nitun defeated |q 32604/4 |goto The Jade Forest/0 57.00,29.10
step
talk Gentle San##64582
turnin Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms/0 60.80,23.70
turnin Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms/0 60.80,23.70
turnin Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms/0 60.80,23.70
turnin Pandaren Spirit Tamer##32428 |only if not completedq(32428) |goto Vale of Eternal Blossoms/0 60.80,23.70
step
Click the Fabled Pandaren Pet Supplies. |use Fabled Pandaren Pet Supplies##94207
collect Mountain Panda##94210 |next
If you didn't get the pet, click here to go back to the start of the dailies. |confirm |next "reset"
step
use Mountain Panda##94210
learnpet Mountain Panda##1198
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Red Panda",{
expansion="mists",
patch='52000',
source='Quest',
description="This guide will teach you how to acquire the Red Panda battle pet.",
pet=1176,
mopready=true,
},[[
step
Click here to proceed to the Battle Pet Questline. |confirm
Click here to proceed to the Fabled Beast hunt. |confirm |next "fable"
|tip In order to attain this pet, you will need to complete the Battle Pet Questline and defeating 10 Fabled beasts.
talk Varzok##63626
accept Learning the Ropes##31588 |goto Orgrimmar/1 52.56,59.27
step
talk Varzok##63626
Learn the Battle Pet Training ability |learnspell Revive Battle Pets##125439 |goto Orgrimmar/1 52.56,59.27
step
clicknpc Dung Beetle##62115
|tip It could also be a Spiny Lizard.
Win a Pet Battle |q 31588/1 |goto Orgrimmar/1 49.96,57.40
|tip Open your Pet Journal with "Shift+P" and assign pets to your battle slots if you can't start the battle.
step
talk Varzok##63626
turnin Learning the Ropes##31588 |goto Orgrimmar/1 52.56,59.27
accept On The Mend##31589 |goto Orgrimmar/1 52.56,59.27
step
talk Murog##47764
Tell him: _"I'd like to heal and revive my battle pets."_
Heal your Battle Pets |q 31589/1 |goto Orgrimmar/1 62.10,35.30
step
talk Varzok##63626
turnin On The Mend##31589 |goto Orgrimmar/1 52.56,59.27
accept Level Up!##31827 |goto Orgrimmar/1 52.56,59.27
step
clicknpc Dung Beetle##62115
|tip It could also be a Spiny Lizard.
Raise a Battle Pet to level 3 |q 31827/1 |goto Orgrimmar/1 49.96,57.40
step
_Click the quest completion box that appears_
accept Varzok##32009
step
talk Varzok##63626
turnin Varzok##32009 |goto Orgrimmar/0 52.50,59.30
step
talk Varzok##63626
turnin Level Up!##31827 |goto Orgrimmar/0 52.50,59.30
accept Zunta, The Pet Tamer##31812 |goto Orgrimmar/0 52.50,59.30
accept Got one!##31590 |goto Orgrimmar/0 52.50,59.30
step
clicknpc Dung Beetle##62115
|tip It could also be a Spiny Lizard.
|tip When it reaches 35% health or lower, use your Trap ability to capture it.
Catch a Pet |q 31590/1 |goto 49.96,57.40
step
talk Varzok##63626
turnin Got one!##31590 |goto Orgrimmar/0 52.50,59.30
step
talk Zunta##66126
Defeat Zunta |q 31812/1 |goto Durotar/0 43.86,28.86
|tip Zunta's pet team consists of level 2 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Zunta##66126
turnin Zunta, The Pet Tamer##31812 |goto Durotar/0 43.86,28.86
accept Dagra the Fierce##31813 |goto Durotar/0 43.86,28.86
step
talk Dagra the Fierce##66135
Defeat Dagra the Fierce |q 31813/1 |goto The Barrens/0 58.61,53.04
|tip Dagra's pet team consists of level 3 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat her in battle pet combat.
step
talk Dagra the Fierce##66135
turnin Dagra the Fierce##31813 |goto The Barrens/0 58.61,53.04
accept Analynn##31814 |goto The Barrens/0 58.61,53.04
step
talk Analynn##66136
Defeat Analynn |q 31814/1 |goto Ashenvale/0 20.20,29.55
|tip Analynn's pet team consists of level 5 Aquatic, Critter, and Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat her in battle pet combat.
step
talk Analynn##66136
turnin Analynn##31814 |goto Ashenvale/0 20.20,29.55
accept Zonya the Sadist##31815 |goto Ashenvale/0 20.20,29.55
step
talk Zonya the Sadist##66137
Defeat Zonya the Sadist |q 31815/1 |goto Stonetalon Mountains/0 59.65,71.58
|tip Zonya's pet team consists of level 7 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat her in battle pet combat.
step
talk Zonya the Sadist##66137
turnin Zonya the Sadist##31815 |goto Stonetalon Mountains/0 59.65,71.58
accept Merda Stronghoof##31817 |goto Stonetalon Mountains/0 59.65,71.58
step
talk Merda Stronghoof##66372
Defeat Merda Stronghoof |q 31817/1 |goto Desolace/0 57.11,45.69
|tip Merda's pet team consists of level 9 Aquatic, Elemental, and Critter battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat her in battle pet combat.
step
talk Merda Stronghoof##66372
turnin Merda Stronghoof##31817 |goto Desolace/0 57.11,45.69
accept Cassandra Kaboom##31870 |goto Desolace/0 57.11,45.69
step
talk Cassandra Kaboom##66422
Defeat Cassandra Kaboom |q 31870/1 |goto Southern Barrens/0 39.59,79.14
|tip Cassandra's pet team consists of level 11 Mechanical battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Defeat her in battle pet combat.
step
talk Cassandra Kaboom##66422
turnin Cassandra Kaboom##31870 |goto Southern Barrens/0 39.59,79.14
accept A Tamer's Homecoming##31918 |goto Southern Barrens/0 39.59,79.14
step
talk Varzok##63626
turnin A Tamer's Homecoming##31918 |goto Orgrimmar/1 52.56,59.27
accept Battle Pet Tamers: Kalimdor##31891 |goto Orgrimmar/1 52.56,59.27
step
talk Traitor Gluk##66352
Defeat Traitor Gluk |q 31891/1 |goto Feralas/0 59.74,49.65
|tip Gluk's pet team consists of level 13 Dragonkin, Beast, and Critter battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Grazzle the Great ##66436
Defeat Grazzle the Great  |q 31891/2 |goto Dustwallow Marsh/0 53.85,74.88
|tip Grazzle's pet team consists of level 14 Dragonkin battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Kela Grimtotem##66452
Defeat Kela Grimtotem |q 31891/3 |goto Thousand Needles/0 31.87,32.94
|tip Kela's pet team consists of level 15 Critter and Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Zoltan##66442
Defeat Zoltan |q 31891/4 |goto Felwood/0 39.95,56.57
|tip Zoltan's pet team consists of level 16 Mechanical and Magic battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Elena Flutterfly##66412
Defeat Elena Flutterfly |q 31891/5 |goto Moonglade/0 46.14,60.26
|tip Elena's pet team consists of level 17 Dragonkin, Magic, and Flying battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat her in battle pet combat.
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Kalimdor##31891 |goto Moonglade/0 46.14,60.26
accept Grand Master Trixxy##31897 |goto Moonglade/0 46.14,60.26
step
talk Stone Cold Trixxy##66466
Defeat Stone Cold Trixxy |q 31897/1 |goto Winterspring/0 65.63,64.52
|tip Trixxy's pet team consists of level 19 Dragonkin, Beast, and Flying battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat her in battle pet combat.
step
talk Stone Cold Trixxy##66466
turnin Grand Master Trixxy##31897 |goto Winterspring/0 65.63,64.52
accept The Returning Champion##31977 |goto Winterspring/0 65.63,64.52 |only if not completedq(31977) and not completedq(31976)
step
talk Varzok##63626
turnin The Returning Champion##31977 |goto Orgrimmar/1 52.56,59.27
|only if not completedq(31977) and not completedq(31976)
step
talk Varzok##63626
accept Battle Pet Tamers: Eastern Kingdoms##31902 |goto Orgrimmar/1 52.56,59.27
step
talk David Kosse##66478
Defeat David Kosse |q 31902/1 |goto The Hinterlands/0 62.98,54.59
|tip David's pet team consists of level 13 Critter, Beast, and Magic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Deiza Plaguehorn##66512
Defeat Deiza Plaguehorn |q 31902/2 |goto Eastern Plaguelands/0 66.96,52.42
|tip Deiza's pet team consists of level 14 Beast and Undead battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat her in battle pet combat.
step
talk Kortas Darkhammer##66515
Defeat Kortas Darkhammer |q 31902/3 |goto Searing Gorge/0 35.31,27.75
|tip Kortas' pet team consists of level 15 Dragonkin battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Everessa##66518
Defeat Everessa |q 31902/4 |goto Swamp of Sorrows/0 76.81,41.50
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Durin Darkhammer##66520
Defeat Durin Darkhammer |q 31902/5 |goto Burning Steppes/0 25.54,47.50
|tip Durin's pet team consists of level 17 Flying, Critter, and Elemental battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Eastern Kingdoms##31902 |goto Burning Steppes/0 66.96,52.42
step
talk Varzok##63626
accept Battle Pet Tamers: Outland##31921 |goto Orgrimmar/1 52.56,59.27
step
talk Nicki Tinytech##66550
accept Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30 |only if completedq(31920)
Defeat Nicki Tinytech |q 31921/1 |goto Hellfire Peninsula/0 64.31,49.30
|tip Nicki's pet team consists of level 20 Mechanical battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Defeat her in battle pet combat.
step
talk Nicki Tinytech##66550
turnin Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30
|only if completedq(31920)
step
talk Ras'an##66551
accept Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52 |only if completedq(31920)
Defeat Ras'an |q 31921/2 |goto Zangarmarsh/0 17.24,50.52
|tip Ras'an's pet team consists of level 21 Flying, Magic, and Humanoid battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Undead battle pets are strong against Humanoid battle pets.
|tip Defeat him in battle pet combat.
step
talk Ras'an##66551
turnin Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52
|only if completedq(31920)
step
talk Narrok##66552
accept Narrok##31924 |goto Nagrand/0 60.97,49.42 |only if completedq(31920)
Defeat Narrok |q 31921/3 |goto Nagrand/0 60.97,49.42
|tip Narrok's pet team consists of level 22 Aquatic, Critter, and Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Narrok##66552
turnin Narrok##31924 |goto Nagrand/0 60.97,49.42
|only if completedq(31920)
step
talk Morulu The Elder##66553
accept Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05 |only if completedq(31920)
Defeat Morulu The Elder |q 31921/4 |goto Shattrath City/0 58.76,70.05
|tip Morulu's pet team consists of level 23 Aquatic battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Morulu The Elder##66553
turnin Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05
|only if completedq(31920)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Outland##31921 |goto Shattrath City/0 58.76,70.05
accept Grand Master Antari##31920 |goto Shattrath City/0 58.76,70.05 |only if not completedq(31920)
step
talk Bloodknight Antari##66557
Defeat Bloodknight Antari |q 31920/1 |goto Shadowmoon Valley/0 30.51,41.77
|tip Analynn's pet team consists of level 24 Magic, Elemental, and Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Bloodknight Antari##66557
turnin Grand Master Antari##31920 |goto Shadowmoon Valley/0 30.51,41.77
accept Exceeding Expectations##31982 |goto Shadowmoon Valley/0 30.51,41.77 |only if not completedq(31981) and not completedq(31982)
step
talk Varzok##63626
turnin Exceeding Expectations##31982 |goto Orgrimmar/1 52.56,59.27
|only if not completedq(31981) and not completedq(31982)
step
talk Varzok##63626
accept Battle Pet Tamers: Northrend##31929 |goto Orgrimmar/1 52.56,59.27
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97 |only if completedq(31928)
Defeat Nearly Headless Jacob |q 31929/2 |goto Crystalsong Forest/0 50.14,58.97
|tip Jacob's pet team consists of level 25 Undead battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat him in battle pet combat.
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97
|only if completedq(31928)
step
talk Okrut Dragonwaste##66638
accept Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05 |only if completedq(31928)
Defeat Okrut Dragonwaste |q 31929/3 |goto Dragonblight/0 59.02,77.05
|tip Okrut's pet team consists of level 25 Dragonkin and Undead battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat him in battle pet combat.
step
talk Okrut Dragonwaste##66638
turnin Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05
|only if completedq(31928)
step
talk Beegle Blastfuse##66635
accept Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88 |only if completedq(31928)
Defeat Beegle Blastfuse |q 31929/1 |goto Howling Fjord/0 28.61,33.88
|tip Beegle's pet team consists of level 25 Flying and Aquatic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Beegle Blastfuse##66635
turnin Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88
|only if completedq(31928)
step
talk Gutretch##66639
accept Gutretch##31934 |goto Zul'Drak/0 13.22,66.79 |only if completedq(31928)
Defeat Gutretch |q 31929/4 |goto Zul'Drak/0 13.22,66.79
|tip Gutretch's pet team consists of level 25 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Gutretch##66639
turnin Gutretch##31934 |goto Zul'Drak/0 13.22,66.79
|only if completedq(31928)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Northrend##31929 |goto Zul'Drak/0 59.02,77.05
accept Grand Master Payne##31928 |goto Zul'Drak/0 59.02,77.05 |only if not completedq(31928)
step
talk Major Payne##66675
Defeat Major Payne |q 31928/1 |goto Icecrown/0 77.39,19.56
|tip Payne's pet team consists of level 25 Beast, Mechanical, and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Major Payne##66675
turnin Grand Master Payne##31928 |goto Icecrown/0 77.39,19.56
accept A Brief Reprieve##31984 |goto Icecrown/0 77.39,19.56 |only if not completedq(31929) and not completedq(31927)
step
talk Varzok##63626
turnin A Brief Reprieve##31984 |goto Orgrimmar/1 52.56,59.27
|only if not completedq(31929) and not completedq(31927)
step
talk Varzok##63626
accept Battle Pet Tamers: Cataclysm##31967 |goto Orgrimmar/1 52.56,59.27
step
talk Brok##66819
accept Brok##31972 |goto Mount Hyjal/0 61.37,32.71 |only if completedq(31970)
Defeat Brok |q 31967/1 |goto Mount Hyjal/0 61.37,32.71
|tip Brok's pet team consists of level 25 Magic, Beast, and Critter battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Brok##66819
turnin Brok##31972 |goto Mount Hyjal/0 61.37,32.71
|only if completedq(31970)
step
talk Bordin Steadyfist##66815
accept Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05 |only if completedq(31970)
Defeat Bordin Steadyfist |q 31967/2 |goto Deepholm/0 49.87,57.05
|tip Bordin's pet team consists of level 25 Elemental and Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Bordin Steadyfist##66815
turnin Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05
|only if completedq(31970)
step
talk Goz Banefury##66822
accept Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80 |only if completedq(31970)
Defeat Goz Banefury |q 31967/3 |goto Twilight Highlands/0 56.59,56.80
|tip Goz's pet team consists of level 25 Elemental, Magic, and Beast battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Goz Banefury##66822
turnin Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80
|only if completedq(31970)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Cataclysm##31967 |goto Twilight Highlands/0 56.59,56.80
accept Grand Master Obalis##31970 |goto Twilight Highlands/0 56.59,56.80 |only if not completedq(31970)
step
talk Obalis##66824
Defeat Obalis |q 31970/1 |goto Uldum/0 56.56,41.98
|tip Payne's pet team consists of level 25 Beast, Flying, and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Obalis##66824
turnin Grand Master Obalis##31970 |goto Uldum/0 56.56,41.98
accept The Triumphant Return##31986 |goto Uldum/0 56.56,41.98 |only if not completedq(31985) and not completedq(31986)
step
talk Varzok##63626
turnin The Triumphant Return##31986 |goto Orgrimmar/1 52.56,59.27
|only if not completedq(31985) and not completedq(31986)
step
talk Varzok##63626
accept Battle Pet Tamers: Pandaria##31952 |goto Orgrimmar/1 52.56,59.27
step
talk Hyuna of the Shrines##66730
accept Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17 |only if completedq(31951)
Defeat Hyuna of the Shrines |q 31952/1 |goto The Jade Forest/0 47.96,54.17
|tip Hyuna's pet team consists of level 25 Dragonkin and Magic battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat her in battle pet combat.
step
talk Hyuna of the Shrines##66730
turnin Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17
|only if completedq(31951)
step
talk Farmer Nishi##66734
accept Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68 |only if completedq(31951)
Defeat Farmer Nishi |q 31952/2 |goto Valley of the Four Winds/0 46.07,43.68
|tip Nishi's pet team consists of level 25 Beast and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat her in battle pet combat.
step
talk Farmer Nishi##66734
turnin Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68
|only if completedq(31951)
step
talk Mo'ruk##66733
accept Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91 |only if completedq(31951)
Defeat Mo'ruk |q 31952/3 |goto Krasarang Wilds/0 62.23,45.91
|tip Mo'ruk's pet team consists of level 25 Beast, Flying, and Aquatic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Mo'ruk##66733
turnin Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91
|only if completedq(31951)
step
talk Wastewalker Shu##66739
accept Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56 |only if completedq(31951)
Defeat Wastewalker Shu |q 31952/6 |goto Dread Wastes/0 55.11,37.56
|tip Shu's pet team consists of level 25 Beast, Aquatic, and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Wastewalker Shu##66739
turnin Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56
|only if completedq(31951)
step
talk Seeker Zusshi##66918
accept Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21 |only if completedq(31951)
Defeat Seeker Zusshi |q 31952/5 |goto Townlong Steppes/0 36.32,52.21
|tip Zusshi's pet team consists of level 25 Aquatic, Critter, and Elemental battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Seeker Zusshi##66918
turnin Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21
|only if completedq(31951)
step
talk Courageous Yon##66738
accept Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63 |only if completedq(31951)
Defeat Courageous Yon |q 31952/4 |goto 35.84,73.63
|tip Yon's pet team consists of level 25 Beast, Critter, and Flying battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat him in battle pet combat.
step
talk Courageous Yon##66738
turnin Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63
|only if completedq(31951)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Pandaria##31952 |goto Kun-Lai Summit/0 35.84,73.63
accept Grand Master Aki##31951 |goto Kun-Lai Summit/0 35.84,73.63 |only if not completedq(31951)
step
talk Aki the Chosen##66741
Defeat Aki the Chosen |q 31951/1 |goto Vale of Eternal Blossoms/0 31.27,74.09
|tip Aki's pet team consists of level 25 Aquatic, Critter, and Dragonkin battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Aki the Chosen##66741
turnin Grand Master Aki##31951 |goto Vale of Eternal Blossoms/0 31.27,74.09
step
talk Gentle San##64582
accept Beasts of Fable##32603 |goto Vale of Eternal Blossoms/0 60.80,23.70
step
label "dailies"
_No-No_
This enemy is aquatic
It is strong against undead and weak to flying attacks
I would suggest that you use flying pets against this enemy
Defeat No-No |q 32603/3 |goto Vale of Eternal Blossoms/0 11.00,70.90
step
_Lucky Yi_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using beast pets against this enemy
Defeat Lucky Yi |q 32603/5 |goto Valley of the Four Winds/0 40.50,43.70
step
_Greyhoof_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Defeat Greyhoof |q 32603/4 |goto Valley of the Four Winds/0 25.30,78.50
step
_Xi'a_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Xi'a |q 32603/10 |goto Krasarang Wilds/0 36.30,37.30
step
_Gorespine_
This enemy is a beast
Is is strong against Critters and weak to Mechanical attacks
I would suggest using Mechanical pets against this enemy
Defeat Gorespine |q 32603/2 |goto Dread Wastes/0 26.10,50.20
step
_Ti'un the Wanderer_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Ti'un the Wanderer |q 32603/6 |goto Townlong Steppes/0 72.30,79.80
step
_Kafi_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Defeat Kafi |q 32603/7 |goto Kun-Lai Summit/0 35.20,56.20
step
_Dos-Ryga_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Dos-Ryga |q 32603/8 |goto Kun-Lai Summit/0 67.90,84.70
step
_Ka'wi_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using a team of mechanical pets against this enemy
Defeat Ka'wi the Gorger |q 32603/1 |goto The Jade Forest/0 48.40,71.00
step
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using beast pets against this enemy
Defeat Nitun |q 32603/9 |goto The Jade Forest/0 57.00,29.10
step
talk Gentle San##64582
turnin Beasts of Fable##32603 |goto Vale of Eternal Blossoms/0 60.80,23.70
step
use Red Panda##94025
learnpet Red Panda##1176
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Snowy Panda",{
expansion="mists",
patch='52000',
source='Quest',
description="This guide will teach you how to acquire the Snowy Panda battle pet.",
pet=1197,
mopready=true,
},[[
step
Click here to be routed to  the _Battle Pet Questline_. |confirm
Click here if you've completed the Battle Pet Questline and want to start the _Beasts of Fable_. |confirm |next "beasts"
Click here if you've completed both the Battle Pet Questline as well as the Beasts of Fable quests. |confirm |next "reset"
|tip In order to attain this pet, you will need to completed the Battle Pet Quest line as well as the Beasts of Fable quest.
talk Varzok##63626
accept Learning the Ropes##31588 |goto Orgrimmar/1 52.56,59.27
step
talk Varzok##63626
Learn the Battle Pet Training ability |learnspell Revive Battle Pets##125439 |goto Orgrimmar/1 52.56,59.27
step
clicknpc Dung Beetle##62115
|tip It could also be a Spiny Lizard.
Win a Pet Battle |q 31588/1 |goto Orgrimmar/1 49.96,57.40
|tip Open your Pet Journal with "Shift+P" and assign pets to your battle slots if you can't start the battle.
step
talk Varzok##63626
turnin Learning the Ropes##31588 |goto Orgrimmar/1 52.56,59.27
accept On The Mend##31589 |goto Orgrimmar/1 52.56,59.27
step
talk Murog##47764
Tell him: _"I'd like to heal and revive my battle pets."_
Heal your Battle Pets |q 31589/1 |goto Orgrimmar/1 62.10,35.30
step
talk Varzok##63626
turnin On The Mend##31589 |goto Orgrimmar/1 52.56,59.27
accept Level Up!##31827 |goto Orgrimmar/1 52.56,59.27
step
clicknpc Dung Beetle##62115
|tip It could also be a Spiny Lizard.
Raise a Battle Pet to level 3 |q 31827/1 |goto Orgrimmar/1 49.96,57.40
step
_Click the quest completion box that appears_
accept Varzok##32009
step
talk Varzok##63626
turnin Varzok##32009 |goto Orgrimmar/1 52.50,59.30
step
talk Varzok##63626
turnin Level Up!##31827 |goto Orgrimmar/1 52.50,59.30
accept Zunta, The Pet Tamer##31812 |goto Orgrimmar/1 52.50,59.30
accept Got one!##31590 |goto Orgrimmar/1 52.50,59.30
step
clicknpc Dung Beetle##62115
|tip It could also be a Spiny Lizard.
|tip When it reaches 35% health or lower, use your Trap ability to capture it.
Catch a Pet |q 31590/1 |goto Orgrimmar/1 49.96,57.40
step
talk Varzok##63626
turnin Got one!##31590 |goto Orgrimmar/1  52.50,59.30
step
talk Zunta##66126
Defeat Zunta |q 31812/1 |goto Durotar/0 43.86,28.86
|tip Zunta's pet team consists of level 2 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Zunta##66126
turnin Zunta, The Pet Tamer##31812 |goto Durotar/0 43.86,28.86
accept Dagra the Fierce##31813 |goto Durotar/0 43.86,28.86
step
talk Dagra the Fierce##66135
Defeat Dagra the Fierce |q 31813/1 |goto The Barrens/0 58.61,53.04
|tip Dagra's pet team consists of level 3 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat her in battle pet combat.
step
talk Dagra the Fierce##66135
turnin Dagra the Fierce##31813 |goto The Barrens/0 58.61,53.04
accept Analynn##31814 |goto The Barrens/0 58.61,53.04
step
talk Analynn##66136
Defeat Analynn |q 31814/1 |goto Ashenvale/0 20.20,29.55
|tip Analynn's pet team consists of level 5 Aquatic, Critter, and Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat her in battle pet combat.
step
talk Analynn##66136
turnin Analynn##31814 |goto Ashenvale/0 20.20,29.55
accept Zonya the Sadist##31815 |goto Ashenvale/0 20.20,29.55
step
talk Zonya the Sadist##66137
Defeat Zonya the Sadist |q 31815/1 |goto Stonetalon Mountains/0 59.65,71.58
|tip Zonya's pet team consists of level 7 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat her in battle pet combat.
step
talk Zonya the Sadist##66137
turnin Zonya the Sadist##31815 |goto Stonetalon Mountains/0 59.65,71.58
accept Merda Stronghoof##31817 |goto Stonetalon Mountains/0 59.65,71.58
step
talk Merda Stronghoof##66372
Defeat Merda Stronghoof |q 31817/1 |goto Desolace/0 57.11,45.69
|tip Merda's pet team consists of level 9 Aquatic, Elemental, and Critter battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat her in battle pet combat.
step
talk Merda Stronghoof##66372
turnin Merda Stronghoof##31817 |goto Desolace/0 57.11,45.69
accept Cassandra Kaboom##31870 |goto Desolace/0 57.11,45.69
step
talk Cassandra Kaboom##66422
Defeat Cassandra Kaboom |q 31870/1 |goto Southern Barrens/0 39.59,79.14
|tip Cassandra's pet team consists of level 11 Mechanical battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Defeat her in battle pet combat.
step
talk Cassandra Kaboom##66422
turnin Cassandra Kaboom##31870 |goto Southern Barrens/0 39.59,79.14
accept A Tamer's Homecoming##31918 |goto Southern Barrens/0 39.59,79.14
step
talk Varzok##63626
turnin A Tamer's Homecoming##31918 |goto Orgrimmar/1 52.56,59.27
accept Battle Pet Tamers: Kalimdor##31891 |goto 52.56,59.27
step
talk Traitor Gluk##66352
Defeat Traitor Gluk |q 31891/1 |goto Feralas/0 59.74,49.65
|tip Gluk's pet team consists of level 13 Dragonkin, Beast, and Critter battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Grazzle the Great ##66436
Defeat Grazzle the Great  |q 31891/2 |goto Dustwallow Marsh/0 53.85,74.88
|tip Grazzle's pet team consists of level 14 Dragonkin battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Kela Grimtotem##66452
Defeat Kela Grimtotem |q 31891/3 |goto Thousand Needles/0 31.87,32.94
|tip Kela's pet team consists of level 15 Critter and Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Zoltan##66442
Defeat Zoltan |q 31891/4 |goto Felwood/0 39.95,56.57
|tip Zoltan's pet team consists of level 16 Mechanical and Magic battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Elena Flutterfly##66412
Defeat Elena Flutterfly |q 31891/5 |goto Moonglade/0 46.14,60.26
|tip Elena's pet team consists of level 17 Dragonkin, Magic, and Flying battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat her in battle pet combat.
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Kalimdor##31891 |goto Moonglade/0 46.14,60.26
accept Grand Master Trixxy##31897 |goto Moonglade/0 46.14,60.26
step
talk Stone Cold Trixxy##66466
Defeat Stone Cold Trixxy |q 31897/1 |goto Winterspring/0 65.63,64.52
|tip Trixxy's pet team consists of level 19 Dragonkin, Beast, and Flying battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat her in battle pet combat.
step
talk Stone Cold Trixxy##66466
turnin Grand Master Trixxy##31897 |goto Winterspring/0 65.63,64.52
accept The Returning Champion##31977 |goto Winterspring/0 65.63,64.52 |only if not completedq(31977) and not completedq(31976)
step
talk Varzok##63626
turnin The Returning Champion##31977 |goto Orgrimmar/1 52.56,59.27
|only if not completedq(31977) and not completedq(31976)
step
talk Varzok##63626
accept Battle Pet Tamers: Eastern Kingdoms##31902 |goto Orgrimmar/1 52.56,59.27
step
talk David Kosse##66478
Defeat David Kosse |q 31902/1 |goto The Hinterlands/0 62.98,54.59
|tip David's pet team consists of level 13 Critter, Beast, and Magic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Deiza Plaguehorn##66512
Defeat Deiza Plaguehorn |q 31902/2 |goto Eastern Plaguelands/0 66.96,52.42
|tip Deiza's pet team consists of level 14 Beast and Undead battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat her in battle pet combat.
step
talk Kortas Darkhammer##66515
Defeat Kortas Darkhammer |q 31902/3 |goto Searing Gorge/0 35.31,27.75
|tip Kortas' pet team consists of level 15 Dragonkin battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Everessa##66518
Defeat Everessa |q 31902/4 |goto Swamp of Sorrows/0 76.81,41.50
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Durin Darkhammer##66520
Defeat Durin Darkhammer |q 31902/5 |goto Burning Steppes/0 25.54,47.50
|tip Durin's pet team consists of level 17 Flying, Critter, and Elemental battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Eastern Kingdoms##31902 |goto Burning Steppes/0 66.96,52.42
step
talk Varzok##63626
accept Battle Pet Tamers: Outland##31921 |goto Orgrimmar/1 52.56,59.27
step
talk Nicki Tinytech##66550
accept Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30 |only if completedq(31920)
Defeat Nicki Tinytech |q 31921/1 |goto Hellfire Peninsula/0 64.31,49.30
|tip Nicki's pet team consists of level 20 Mechanical battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Defeat her in battle pet combat.
step
talk Nicki Tinytech##66550
turnin Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30
|only if completedq(31920)
step
talk Ras'an##66551
accept Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52 |only if completedq(31920)
Defeat Ras'an |q 31921/2 |goto Zangarmarsh/0 17.24,50.52
|tip Ras'an's pet team consists of level 21 Flying, Magic, and Humanoid battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Undead battle pets are strong against Humanoid battle pets.
|tip Defeat him in battle pet combat.
step
talk Ras'an##66551
turnin Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52
|only if completedq(31920)
step
talk Narrok##66552
accept Narrok##31924 |goto Nagrand/0 60.97,49.42 |only if completedq(31920)
Defeat Narrok |q 31921/3 |goto Nagrand/0 60.97,49.42
|tip Narrok's pet team consists of level 22 Aquatic, Critter, and Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Narrok##66552
turnin Narrok##31924 |goto Nagrand/0 60.97,49.42
|only if completedq(31920)
step
talk Morulu The Elder##66553
accept Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05 |only if completedq(31920)
Defeat Morulu The Elder |q 31921/4 |goto Shattrath City/0 58.76,70.05
|tip Morulu's pet team consists of level 23 Aquatic battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Morulu The Elder##66553
turnin Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05
|only if completedq(31920)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Outland##31921 |goto Shattrath City/0 58.76,70.05
accept Grand Master Antari##31920 |goto Shattrath City/0 58.76,70.05 |only if not completedq(31920)
step
talk Bloodknight Antari##66557
Defeat Bloodknight Antari |q 31920/1 |goto Shadowmoon Valley/0 30.51,41.77
|tip Analynn's pet team consists of level 24 Magic, Elemental, and Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Bloodknight Antari##66557
turnin Grand Master Antari##31920 |goto Shadowmoon Valley/0 30.51,41.77
accept Exceeding Expectations##31982 |goto Shadowmoon Valley/0 30.51,41.77 |only if not completedq(31981) and not completedq(31982)
step
talk Varzok##63626
turnin Exceeding Expectations##31982 |goto Orgrimmar/1 52.56,59.27
|only if not completedq(31981) and not completedq(31982)
step
talk Varzok##63626
accept Battle Pet Tamers: Northrend##31929 |goto Orgrimmar/1 52.56,59.27
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97 |only if completedq(31928)
Defeat Nearly Headless Jacob |q 31929/2 |goto Crystalsong Forest/0 50.14,58.97
|tip Jacob's pet team consists of level 25 Undead battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat him in battle pet combat.
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97
|only if completedq(31928)
step
talk Okrut Dragonwaste##66638
accept Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05 |only if completedq(31928)
Defeat Okrut Dragonwaste |q 31929/3 |goto Dragonblight/0 59.02,77.05
|tip Okrut's pet team consists of level 25 Dragonkin and Undead battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat him in battle pet combat.
step
talk Okrut Dragonwaste##66638
turnin Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05
|only if completedq(31928)
step
talk Beegle Blastfuse##66635
accept Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88 |only if completedq(31928)
Defeat Beegle Blastfuse |q 31929/1 |goto Howling Fjord/0 28.61,33.88
|tip Beegle's pet team consists of level 25 Flying and Aquatic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Beegle Blastfuse##66635
turnin Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88
|only if completedq(31928)
step
talk Gutretch##66639
accept Gutretch##31934 |goto Zul'Drak/0 13.22,66.79 |only if completedq(31928)
Defeat Gutretch |q 31929/4 |goto Zul'Drak/0 13.22,66.79
|tip Gutretch's pet team consists of level 25 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Gutretch##66639
turnin Gutretch##31934 |goto Zul'Drak/0 13.22,66.79
|only if completedq(31928)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Northrend##31929 |goto Zul'Drak/0 59.02,77.05
accept Grand Master Payne##31928 |goto Zul'Drak/0 59.02,77.05 |only if not completedq(31928)
step
talk Major Payne##66675
Defeat Major Payne |q 31928/1 |goto Icecrown/0 77.39,19.56
|tip Payne's pet team consists of level 25 Beast, Mechanical, and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Major Payne##66675
turnin Grand Master Payne##31928 |goto Icecrown/0 77.39,19.56
accept A Brief Reprieve##31984 |goto Icecrown/0 77.39,19.56 |only if not completedq(31929) and not completedq(31927)
step
talk Varzok##63626
turnin A Brief Reprieve##31984 |goto Orgrimmar/1 52.56,59.27
|only if not completedq(31929) and not completedq(31927)
step
talk Varzok##63626
accept Battle Pet Tamers: Cataclysm##31967 |goto Orgrimmar/1 52.56,59.27
step
talk Brok##66819
accept Brok##31972 |goto Mount Hyjal/0 61.37,32.71 |only if completedq(31970)
Defeat Brok |q 31967/1 |goto Mount Hyjal/0 61.37,32.71
|tip Brok's pet team consists of level 25 Magic, Beast, and Critter battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Brok##66819
turnin Brok##31972 |goto Mount Hyjal/0 61.37,32.71
|only if completedq(31970)
step
talk Bordin Steadyfist##66815
accept Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05 |only if completedq(31970)
Defeat Bordin Steadyfist |q 31967/2 |goto Deepholm/0 49.87,57.05
|tip Bordin's pet team consists of level 25 Elemental and Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Bordin Steadyfist##66815
turnin Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05
|only if completedq(31970)
step
talk Goz Banefury##66822
accept Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80 |only if completedq(31970)
Defeat Goz Banefury |q 31967/3 |goto Twilight Highlands/0 56.59,56.80
|tip Goz's pet team consists of level 25 Elemental, Magic, and Beast battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Goz Banefury##66822
turnin Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80
|only if completedq(31970)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Cataclysm##31967 |goto Twilight Highlands/0 56.59,56.80
accept Grand Master Obalis##31970 |goto Twilight Highlands/0 56.59,56.80 |only if not completedq(31970)
step
talk Obalis##66824
Defeat Obalis |q 31970/1 |goto Uldum/0 56.56,41.98
|tip Payne's pet team consists of level 25 Beast, Flying, and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Obalis##66824
turnin Grand Master Obalis##31970 |goto Uldum/0 56.56,41.98
accept The Triumphant Return##31986 |goto Uldum/0 56.56,41.98 |only if not completedq(31985) and not completedq(31986)
step
talk Varzok##63626
turnin The Triumphant Return##31986 |goto Orgrimmar/1 52.56,59.27
|only if not completedq(31985) and not completedq(31986)
step
talk Varzok##63626
accept Battle Pet Tamers: Pandaria##31952 |goto Orgrimmar/1 52.56,59.27
step
talk Hyuna of the Shrines##66730
accept Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17 |only if completedq(31951)
Defeat Hyuna of the Shrines |q 31952/1 |goto The Jade Forest/0 47.96,54.17
|tip Hyuna's pet team consists of level 25 Dragonkin and Magic battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat her in battle pet combat.
step
talk Hyuna of the Shrines##66730
turnin Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17
|only if completedq(31951)
step
talk Farmer Nishi##66734
accept Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68 |only if completedq(31951)
Defeat Farmer Nishi |q 31952/2 |goto Valley of the Four Winds/0 46.07,43.68
|tip Nishi's pet team consists of level 25 Beast and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat her in battle pet combat.
step
talk Farmer Nishi##66734
turnin Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68
|only if completedq(31951)
step
talk Mo'ruk##66733
accept Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91 |only if completedq(31951)
Defeat Mo'ruk |q 31952/3 |goto Krasarang Wilds/0 62.23,45.91
|tip Mo'ruk's pet team consists of level 25 Beast, Flying, and Aquatic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Mo'ruk##66733
turnin Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91
|only if completedq(31951)
step
talk Wastewalker Shu##66739
accept Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56 |only if completedq(31951)
Defeat Wastewalker Shu |q 31952/6 |goto Dread Wastes/0 55.11,37.56
|tip Shu's pet team consists of level 25 Beast, Aquatic, and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Wastewalker Shu##66739
turnin Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56
|only if completedq(31951)
step
talk Seeker Zusshi##66918
accept Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21 |only if completedq(31951)
Defeat Seeker Zusshi |q 31952/5 |goto Townlong Steppes/0 36.32,52.21
|tip Zusshi's pet team consists of level 25 Aquatic, Critter, and Elemental battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Seeker Zusshi##66918
turnin Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21
|only if completedq(31951)
step
talk Courageous Yon##66738
accept Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63 |only if completedq(31951)
Defeat Courageous Yon |q 31952/4 |goto Kun-Lai Summit/0 35.84,73.63
|tip Yon's pet team consists of level 25 Beast, Critter, and Flying battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat him in battle pet combat.
step
talk Courageous Yon##66738
turnin Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63
|only if completedq(31951)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Pandaria##31952 |goto Kun-Lai Summit/0 35.84,73.63
accept Grand Master Aki##31951 |goto Kun-Lai Summit/0 35.84,73.63 |only if not completedq(31951)
step
talk Aki the Chosen##66741
Defeat Aki the Chosen |q 31951/1 |goto Vale of Eternal Blossoms/0 31.27,74.09
|tip Aki's pet team consists of level 25 Aquatic, Critter, and Dragonkin battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Aki the Chosen##66741
turnin Grand Master Aki##31951 |goto Vale of Eternal Blossoms/0 31.27,74.09
step
talk Gentle San##64582
accept Beasts of Fable##32603 |goto Vale of Eternal Blossoms/0 60.80,23.70
step
label "dailies"
_No-No_
This enemy is aquatic
It is strong against undead and weak to flying attacks
I would suggest that you use flying pets against this enemy
Defeat No-No |q 32603/3 |goto Vale of Eternal Blossoms/0 11.00,70.90
step
_Lucky Yi_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using beast pets against this enemy
Defeat Lucky Yi |q 32603/5 |goto Valley of the Four Winds/0 40.50,43.70
step
_Greyhoof_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Defeat Greyhoof |q 32603/4 |goto Valley of the Four Winds/0 25.30,78.50
step
_Xi'a_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Xi'a |q 32603/10 |goto Krasarang Wilds/0 36.30,37.30
step
_Gorespine_
This enemy is a beast
Is is strong against Critters and weak to Mechanical attacks
I would suggest using Mechanical pets against this enemy
Defeat Gorespine |q 32603/2 |goto Dread Wastes/0 26.10,50.20
step
_Ti'un the Wanderer_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Ti'un the Wanderer |q 32603/6 |goto Townlong Steppes/0 72.30,79.80
step
_Kafi_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Defeat Kafi |q 32603/7 |goto Kun-Lai Summit/0 35.20,56.20
step
_Dos-Ryga_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Dos-Ryga |q 32603/8 |goto Kun-Lai Summit/0 67.90,84.70
step
_Ka'wi_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using a team of mechanical pets against this enemy
Defeat Ka'wi the Gorger |q 32603/1 |goto The Jade Forest/0 48.40,71.00
step
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using beast pets against this enemy
Defeat Nitun |q 32603/9 |goto The Jade Forest/0 57.00,29.10
step
talk Gentle San##64582
turnin Beasts of Fable##32603 |goto Vale of Eternal Blossoms/0 60.80,23.70
step
label "reset"
talk Gentle San##64582
accept Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms/0 60.80,23.70
accept Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms/0 60.80,23.70
accept Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms/0 60.80,23.70
accept Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.80,23.70 |only if not completedq(32428)
step
_No-No_
This enemy is aquatic
It is strong against undead and weak to flying attacks
I would suggest that you use flying pets against this enemy
No-No defeated |q 32869/2 |goto Vale of Eternal Blossoms/0 11.00,70.90
step
_Lucky Yi_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using beast pets against this enemy
Lucky Yi defeated |q 32868/2 |goto Valley of the Four Winds/0 40.50,43.70
step
_Greyhoof_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Greyhoof defeated |q 32868/1 |goto Valley of the Four Winds/0 25.30,78.50
step
_Skitterer Xi'a_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Xi'a defeated |q 32868/3 |goto Krasarang Wilds/0 36.30,37.30
step
_Flowing Pandaren Spirit_
This enemy uses aquatic and elemental pets
They are strong against undead and mechanical and weak to flying and aquatic pets
I would suggest using flying and aquatic pets against this enemy
Flowing Pandaren Spirit defeated |q 32428/4 |goto Dread Wastes/0 61.10,87.50
|only if haveq(32428)
step
talk Flowing Pandaren Spirit##68462
accept Flowing Pandaren Spirit##32439 |goto Dread Wastes/0 61.10,87.50
|only if completedq(32428)
step
_Flowing Pandaren Spirit_
This enemy uses aquatic and elemental pets
They are strong against undead and mechanical and weak to flying and aquatic pets
I would suggest using flying and aquatic pets against this enemy
Flowing Pandaren Spirit defeated |q 32439/1 |goto Dread Wastes/0 61.10,87.50
|only if haveq(32439)
step
talk Flowing Pandaren Spirit##68462
turnin Flowing Pandaren Spirit##32439 |goto Dread Wastes/0 61.10,87.50
|only if haveq(32439)
step
_Gorespine_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Gorespine defeated |q 32869/1 |goto Dread Wastes/0 26.10,50.20
step
_Ti'un the Wanderer_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Ti'un the Wanderer defeated |q 32869/3 |goto Townlong Steppes/0 72.30,79.80
step
_Burning Pandaren Spirit_
This enemy uses a dragonkin, flying and elemental pet
They are strong against flying, beast, and mechanical pets, respectively
They are weak against humanoid, magic, and aquatic pets, respectively
I would suggest using a humanoid, magic, and aquatic pet against this enemy
Burning Pandaren Spirit defeated |q 32428/1 |goto Townlong Steppes/0 57.10,42.10
|only if haveq(32428)
step
talk Burning Pandaren Spirit##68463
accept Burning Pandaren Spirit##32434 |goto Townlong Steppes/0 57.10,42.10
|only if completedq(32428)
step
_Burning Pandaren Spirit_
This enemy uses a dragonkin, flying and elemental pet
They are strong against flying, beast, and mechanical pets, respectively
They are weak against humanoid, magic, and aquatic pets, respectively
I would suggest using a humanoid, magic, and aquatic pet against this enemy
Burning Pandaren Spirit defeated |q 32434/1 |goto Townlong Steppes/0 57.10,42.10
|only if haveq(32434)
step
talk Burning Pandaren Spirit##68463
turnin Burning Pandaren Spirit##32434 |goto Townlong Steppes/0 57.10,42.10
|only if haveq(32434)
step
_Kafi_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Kafi defeated |q 32604/2 |goto Kun-Lai Summit/0 35.20,56.20
step
_Thundering Pandaren Spirit_
This enemy uses a beast, elemental, and magic pet
They are strong against humanoids, mechanical, and aquatic pets, respectively
They are weak against mechanical, aquatic, and dragonkin pets, respectively
I would suggest using a mechanical, aquatic, and dragonkin pet against this enemy
Thundering Pandaren Spirit defeated |q 32428/2 |goto Kun-Lai Summit/0 64.90,93.80
|only if haveq(32428)
step
talk Thundering Pandaren Spirit##68465
accept Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 64.90,93.80
|only if completedq(32428)
step
_Thundering Pandaren Spirit_
This enemy uses a beast, elemental, and magic pet
They are strong against humanoids, mechanical, and aquatic pets, respectively
They are weak against mechanical, aquatic, and dragonkin pets, respectively
I would suggest using a mechanical, aquatic, and dragonkin pet against this enemy
Thundering Pandaren Spirit defeated |q 32441/1 |goto Kun-Lai Summit/0 64.90,93.80
|only if haveq(32441)
step
talk Thundering Pandaren Spirit##68465
turnin Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 64.90,93.80
|only if haveq(32441)
step
_Dos-Ryga_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Dos-Ryga defeated |q 32604/3 |goto Kun-Lai Summit/0 67.90,84.70
step
_Whispering Pandaren Spirit_
This enemy uses a flying, elemental, and dragonkin pet
They are strong against beast, mechanical, and flying pets, respectively
They are weak against magic, aquatic, and humanoid pets, respectively
I would suggest using a magic, aquatic, and humanoid pet against this enemy
Whispering Pandaren Spirit defeated |q 32428/3 |goto The Jade Forest/0 28.90,36
|only if haveq(32428)
step
talk Whispering Pandaren Spirit##68464
accept Whispering Pandaren Spirit##32440 |goto The Jade Forest/0 28.90,36
|only if completedq(32428)
step
_Whispering Pandaren Spirit_
This enemy uses a flying, elemental, and dragonkin pet
They are strong against beast, mechanical, and flying pets, respectively
They are weak against magic, aquatic, and humanoid pets, respectively
I would suggest using a magic, aquatic, and humanoid pet against this enemy
Whispering Pandaren Spirit defeated |q 32440/1 |goto The Jade Forest/0 28.90,36
|only if haveq(32440)
step
talk Whispering Pandaren Spirit##68464
turnin Whispering Pandaren Spirit##32440 |goto The Jade Forest/0 28.90,36
|only if haveq(32440)
step
_Ka'wi the Gorger_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using a team of mechanical pets against this enemy
Ka'wi the Gorger defeated |q 32604/1 |goto The Jade Forest/0 48.40,71.00
step
_Nitun_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using beast pets against this enemy
Nitun defeated |q 32604/4 |goto The Jade Forest/0 57.00,29.10
step
talk Gentle San##64582
turnin Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms/0 60.80,23.70
turnin Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms/0 60.80,23.70
turnin Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms/0 60.80,23.70
turnin Pandaren Spirit Tamer##32428 |only if not completedq(32428) |goto Vale of Eternal Blossoms/0 60.80,23.70
step
use Fabled Pandaren Pet Supplies##94207
collect Snowy Panda##94209 |next
If you didn't get the pet, click here to go back to the start of the dailies. |confirm |next "reset"
step
use Snowy Panda##94209
learnpet Snowy Panda##1197
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Humanoid Pets\\Sunfur Panda",{
expansion="mists",
patch='52000',
source='Quest',
description="This guide will walk you through obtaining the Humanoid pet: Sunfur Panda",
pet=1196,
mopready=true,
},[[
step
Click here to be routed to  the _Battle Pet Questline_. |confirm
Click here if you've completed the Battle Pet Questline and want to start the _Beasts of Fable_. |confirm |next "beasts"
Click here if you've completed both the Battle Pet Questline as well as the Beasts of Fable quests. |confirm |next "reset"
|tip In order to attain this pet, you will need to completed the Battle Pet Quest line as well as the Beasts of Fable quest.
talk Varzok##63626
accept Learning the Ropes##31588 |goto Orgrimmar/1 52.56,59.27
step
talk Varzok##63626
learnspell Revive Battle Pets##125439 |goto Orgrimmar/1 52.56,59.27
step
clicknpc Dung Beetle##62115
|tip It could also be a Spiny Lizard.
Win a Pet Battle |q 31588/1 |goto Orgrimmar/1 49.96,57.40
|tip Open your Pet Journal with "Shift+P" and assign pets to your battle slots if you can't start the battle.
step
talk Varzok##63626
turnin Learning the Ropes##31588 |goto Orgrimmar/1 52.56,59.27
accept On The Mend##31589 |goto Orgrimmar/1 52.56,59.27
step
talk Murog##47764
Tell him: _"I'd like to heal and revive my battle pets."_
Heal your Battle Pets |q 31589/1 |goto Orgrimmar/1 62.10,35.30
step
talk Varzok##63626
turnin On The Mend##31589 |goto Orgrimmar/1 52.56,59.27
accept Level Up!##31827 |goto Orgrimmar/1 52.56,59.27
step
clicknpc Dung Beetle##62115
|tip It could also be a Spiny Lizard.
Raise a Battle Pet to level 3 |q 31827/1 |goto Orgrimmar/1 49.96,57.40
step
_Click the quest completion box that appears_
accept Varzok##32009
step
talk Varzok##63626
turnin Varzok##32009 |goto Orgrimmar/1 52.50,59.30
step
talk Varzok##63626
turnin Level Up!##31827 |goto Orgrimmar/1 52.50,59.30
accept Zunta, The Pet Tamer##31812 |goto Orgrimmar/1 52.50,59.30
accept Got one!##31590 |goto Orgrimmar/1 52.50,59.30
step
clicknpc Dung Beetle##62115
|tip It could also be a Spiny Lizard.
|tip When it reaches 35% health or lower, use your Trap ability to capture it.
Catch a Pet |q 31590/1 |goto Orgrimmar/1 49.96,57.40
step
talk Varzok##63626
turnin Got one!##31590 |goto Orgrimmar/1 52.50,59.30
step
talk Zunta##66126
Defeat Zunta |q 31812/1 |goto Durotar/0 43.85,28.86
|tip Zunta's pet team consists of level 2 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Zunta##66126
turnin Zunta, The Pet Tamer##31812 |goto Durotar/0 43.85,28.86
accept Dagra the Fierce##31813 |goto Durotar/0 43.85,28.86
step
talk Dagra the Fierce##66135
Defeat Dagra the Fierce |q 31813/1 |goto The Barrens/0 58.61,53.04
|tip Dagra's pet team consists of level 3 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat her in battle pet combat.
step
talk Dagra the Fierce##66135
turnin Dagra the Fierce##31813 |goto The Barrens/0 58.61,53.04
accept Analynn##31814 |goto The Barrens/0 58.61,53.04
step
talk Analynn##66136
Defeat Analynn |q 31814/1 |goto Ashenvale/0 20.20,29.55
|tip Analynn's pet team consists of level 5 Aquatic, Critter, and Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat her in battle pet combat.
step
talk Analynn##66136
turnin Analynn##31814 |goto Ashenvale/0 20.20,29.55
accept Zonya the Sadist##31815 |goto Ashenvale/0 20.20,29.55
step
talk Zonya the Sadist##66137
Defeat Zonya the Sadist |q 31815/1 |goto Stonetalon Mountains/0 59.65,71.58
|tip Zonya's pet team consists of level 7 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat her in battle pet combat.
step
talk Zonya the Sadist##66137
turnin Zonya the Sadist##31815 |goto Stonetalon Mountains/0 59.65,71.58
accept Merda Stronghoof##31817 |goto Stonetalon Mountains/0 59.65,71.58
step
talk Merda Stronghoof##66372
Defeat Merda Stronghoof |q 31817/1 |goto Desolace/0 57.11,45.69
|tip Merda's pet team consists of level 9 Aquatic, Elemental, and Critter battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat her in battle pet combat.
step
talk Merda Stronghoof##66372
turnin Merda Stronghoof##31817 |goto Desolace/0 57.11,45.69
accept Cassandra Kaboom##31870 |goto Desolace/0 57.11,45.69
step
talk Cassandra Kaboom##66422
Defeat Cassandra Kaboom |q 31870/1 |goto Southern Barrens/0 39.59,79.14
|tip Cassandra's pet team consists of level 11 Mechanical battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Defeat her in battle pet combat.
step
talk Cassandra Kaboom##66422
turnin Cassandra Kaboom##31870 |goto Southern Barrens/0 39.59,79.14
accept A Tamer's Homecoming##31918 |goto Southern Barrens/0 39.59,79.14
step
talk Varzok##63626
turnin A Tamer's Homecoming##31918 |goto Orgrimmar/1 52.56,59.27
accept Battle Pet Tamers: Kalimdor##31891 |goto Orgrimmar/1 52.56,59.27
step
talk Traitor Gluk##66352
Defeat Traitor Gluk |q 31891/1 |goto Feralas/0 59.74,49.65
|tip Gluk's pet team consists of level 13 Dragonkin, Beast, and Critter battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Grazzle the Great ##66436
Defeat Grazzle the Great  |q 31891/2 |goto Dustwallow Marsh/0 53.85,74.88
|tip Grazzle's pet team consists of level 14 Dragonkin battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Kela Grimtotem##66452
Defeat Kela Grimtotem |q 31891/3 |goto Thousand Needles/0 31.87,32.94
|tip Kela's pet team consists of level 15 Critter and Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Zoltan##66442
Defeat Zoltan |q 31891/4 |goto Felwood/0 39.95,56.57
|tip Zoltan's pet team consists of level 16 Mechanical and Magic battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Elena Flutterfly##66412
Defeat Elena Flutterfly |q 31891/5 |goto Moonglade/0 46.14,60.26
|tip Elena's pet team consists of level 17 Dragonkin, Magic, and Flying battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat her in battle pet combat.
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Kalimdor##31891 |goto Moonglade/0 46.14,60.26
accept Grand Master Trixxy##31897 |goto Moonglade/0 46.14,60.26
step
talk Stone Cold Trixxy##66466
Defeat Stone Cold Trixxy |q 31897/1 |goto Winterspring/0 65.63,64.52
|tip Trixxy's pet team consists of level 19 Dragonkin, Beast, and Flying battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat her in battle pet combat.
step
talk Stone Cold Trixxy##66466
turnin Grand Master Trixxy##31897 |goto Winterspring/0 65.63,64.52
accept The Returning Champion##31977 |goto Winterspring/0 65.63,64.52 |only if not completedq(31977) and not completedq(31976)
step
talk Varzok##63626
turnin The Returning Champion##31977 |goto Orgrimmar/1 52.56,59.27
|only if not completedq(31977) and not completedq(31976)
step
talk Varzok##63626
accept Battle Pet Tamers: Eastern Kingdoms##31902 |goto Orgrimmar/1 52.56,59.27
step
talk David Kosse##66478
Defeat David Kosse |q 31902/1 |goto The Hinterlands/0 62.98,54.59
|tip David's pet team consists of level 13 Critter, Beast, and Magic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat him in battle pet combat.
step
talk Deiza Plaguehorn##66512
Defeat Deiza Plaguehorn |q 31902/2 |goto Eastern Plaguelands/0 66.96,52.42
|tip Deiza's pet team consists of level 14 Beast and Undead battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat her in battle pet combat.
step
talk Kortas Darkhammer##66515
Defeat Kortas Darkhammer |q 31902/3 |goto Searing Gorge/0 35.31,27.75
|tip Kortas' pet team consists of level 15 Dragonkin battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Everessa##66518
Defeat Everessa |q 31902/4 |goto Swamp of Sorrows/0 76.81,41.50
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat her in battle pet combat.
step
talk Durin Darkhammer##66520
Defeat Durin Darkhammer |q 31902/5 |goto Burning Steppes/0 25.54,47.50
|tip Durin's pet team consists of level 17 Flying, Critter, and Elemental battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Eastern Kingdoms##31902 |goto Burning Steppes/0 66.96,52.42
step
talk Varzok##63626
accept Battle Pet Tamers: Outland##31921 |goto Orgrimmar/1 52.56,59.27
step
talk Nicki Tinytech##66550
accept Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30 |only if completedq(31920)
Defeat Nicki Tinytech |q 31921/1 |goto Hellfire Peninsula/0 64.31,49.30
|tip Nicki's pet team consists of level 20 Mechanical battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Defeat her in battle pet combat.
step
talk Nicki Tinytech##66550
turnin Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30
|only if completedq(31920)
step
talk Ras'an##66551
accept Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52 |only if completedq(31920)
Defeat Ras'an |q 31921/2 |goto Zangarmarsh/0 17.24,50.52
|tip Ras'an's pet team consists of level 21 Flying, Magic, and Humanoid battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Undead battle pets are strong against Humanoid battle pets.
|tip Defeat him in battle pet combat.
step
talk Ras'an##66551
turnin Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52
|only if completedq(31920)
step
talk Narrok##66552
accept Narrok##31924 |goto Nagrand/0 60.97,49.42 |only if completedq(31920)
Defeat Narrok |q 31921/3 |goto Nagrand/0 60.97,49.42
|tip Narrok's pet team consists of level 22 Aquatic, Critter, and Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Narrok##66552
turnin Narrok##31924 |goto Nagrand/0 60.97,49.42
|only if completedq(31920)
step
talk Morulu The Elder##66553
accept Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05 |only if completedq(31920)
Defeat Morulu The Elder |q 31921/4 |goto Shattrath City/0 58.76,70.05
|tip Morulu's pet team consists of level 23 Aquatic battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Morulu The Elder##66553
turnin Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05
|only if completedq(31920)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Outland##31921 |goto Shattrath City/0 58.76,70.05
accept Grand Master Antari##31920 |goto Shattrath City/0 58.76,70.05 |only if not completedq(31920)
step
talk Bloodknight Antari##66557
Defeat Bloodknight Antari |q 31920/1 |goto Shadowmoon Valley/0 30.51,41.77
|tip Analynn's pet team consists of level 24 Magic, Elemental, and Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Bloodknight Antari##66557
turnin Grand Master Antari##31920 |goto Shadowmoon Valley/0 30.51,41.77
accept Exceeding Expectations##31982 |goto Shadowmoon Valley/0 30.51,41.77 |only if not completedq(31981) and not completedq(31982)
step
talk Varzok##63626
turnin Exceeding Expectations##31982 |goto Orgrimmar/1 52.56,59.27
|only if not completedq(31981) and not completedq(31982)
step
talk Varzok##63626
accept Battle Pet Tamers: Northrend##31929 |goto Orgrimmar/1 52.56,59.27
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97 |only if completedq(31928)
Defeat Nearly Headless Jacob |q 31929/2 |goto Crystalsong Forest/0 50.14,58.97
|tip Jacob's pet team consists of level 25 Undead battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat him in battle pet combat.
step
talk Nearly Headless Jacob##66636
accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97
|only if completedq(31928)
step
talk Okrut Dragonwaste##66638
accept Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05 |only if completedq(31928)
Defeat Okrut Dragonwaste |q 31929/3 |goto Dragonblight/0 59.02,77.05
|tip Okrut's pet team consists of level 25 Dragonkin and Undead battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Critter battle pets are strong against Undead battle pets.
|tip Defeat him in battle pet combat.
step
talk Okrut Dragonwaste##66638
turnin Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05
|only if completedq(31928)
step
talk Beegle Blastfuse##66635
accept Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88 |only if completedq(31928)
Defeat Beegle Blastfuse |q 31929/1 |goto Howling Fjord/0 28.61,33.88
|tip Beegle's pet team consists of level 25 Flying and Aquatic battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Beegle Blastfuse##66635
turnin Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88
|only if completedq(31928)
step
talk Gutretch##66639
accept Gutretch##31934 |goto Zul'Drak/0 13.22,66.79 |only if completedq(31928)
Defeat Gutretch |q 31929/4 |goto Zul'Drak/0 13.22,66.79
|tip Gutretch's pet team consists of level 25 Beast and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Gutretch##66639
turnin Gutretch##31934 |goto Zul'Drak/0 13.22,66.79
|only if completedq(31928)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Northrend##31929 |goto Zul'Drak/0 59.02,77.05
accept Grand Master Payne##31928 |goto Zul'Drak/0 59.02,77.05 |only if not completedq(31928)
step
talk Major Payne##66675
Defeat Major Payne |q 31928/1 |goto Icecrown/0 77.39,19.56
|tip Payne's pet team consists of level 25 Beast, Mechanical, and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Elemental battle pets are strong against Mechanical battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Major Payne##66675
turnin Grand Master Payne##31928 |goto Icecrown/0 77.39,19.56
accept A Brief Reprieve##31984 |goto Icecrown/0 77.39,19.56 |only if not completedq(31929) and not completedq(31927)
step
talk Varzok##63626
turnin A Brief Reprieve##31984 |goto Orgrimmar/1 52.56,59.27
|only if not completedq(31929) and not completedq(31927)
step
talk Varzok##63626
accept Battle Pet Tamers: Cataclysm##31967 |goto Orgrimmar/1 52.56,59.27
step
talk Brok##66819
accept Brok##31972 |goto Mount Hyjal/0 61.37,32.71 |only if completedq(31970)
Defeat Brok |q 31967/1 |goto Mount Hyjal/0 61.37,32.71
|tip Brok's pet team consists of level 25 Magic, Beast, and Critter battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Brok##66819
turnin Brok##31972 |goto Mount Hyjal/0 61.37,32.71
|only if completedq(31970)
step
talk Bordin Steadyfist##66815
accept Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05 |only if completedq(31970)
Defeat Bordin Steadyfist |q 31967/2 |goto Deepholm/0 49.87,57.05
|tip Bordin's pet team consists of level 25 Elemental and Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Bordin Steadyfist##66815
turnin Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05
|only if completedq(31970)
step
talk Goz Banefury##66822
accept Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80 |only if completedq(31970)
Defeat Goz Banefury |q 31967/3 |goto Twilight Highlands/0 56.59,56.80
|tip Goz's pet team consists of level 25 Elemental, Magic, and Beast battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Defeat him in battle pet combat.
step
talk Goz Banefury##66822
turnin Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80
|only if completedq(31970)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Cataclysm##31967 |goto Twilight Highlands/0 56.59,56.80
accept Grand Master Obalis##31970 |goto Twilight Highlands/0 56.59,56.80 |only if not completedq(31970)
step
talk Obalis##66824
Defeat Obalis |q 31970/1 |goto Uldum/0 56.56,41.98
|tip Payne's pet team consists of level 25 Beast, Flying, and Critter battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Defeat him in battle pet combat.
step
talk Obalis##66824
turnin Grand Master Obalis##31970 |goto Uldum/0 56.56,41.98
accept The Triumphant Return##31986 |goto Uldum/0 56.56,41.98 |only if not completedq(31985) and not completedq(31986)
step
talk Varzok##63626
turnin The Triumphant Return##31986 |goto Orgrimmar/1 52.56,59.27
|only if not completedq(31985) and not completedq(31986)
step
talk Varzok##63626
accept Battle Pet Tamers: Pandaria##31952 |goto Orgrimmar/1 52.56,59.27
step
talk Hyuna of the Shrines##66730
accept Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17 |only if completedq(31951)
Defeat Hyuna of the Shrines |q 31952/1 |goto The Jade Forest/0 47.96,54.17
|tip Hyuna's pet team consists of level 25 Dragonkin and Magic battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Dragonkin battle pets are strong against Magic battle pets.
|tip Defeat her in battle pet combat.
step
talk Hyuna of the Shrines##66730
turnin Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17
|only if completedq(31951)
step
talk Farmer Nishi##66734
accept Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68 |only if completedq(31951)
Defeat Farmer Nishi |q 31952/2 |goto Valley of the Four Winds/0 46.07,43.68
|tip Nishi's pet team consists of level 25 Beast and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat her in battle pet combat.
step
talk Farmer Nishi##66734
turnin Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68
|only if completedq(31951)
step
talk Mo'ruk##66733
accept Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91 |only if completedq(31951)
Defeat Mo'ruk |q 31952/3 |goto Krasarang Wilds/0 62.23,45.91
|tip Mo'ruk's pet team consists of level 25 Beast, Flying, and Aquatic battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Defeat him in battle pet combat.
step
talk Mo'ruk##66733
turnin Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91
|only if completedq(31951)
step
talk Wastewalker Shu##66739
accept Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56 |only if completedq(31951)
Defeat Wastewalker Shu |q 31952/6 |goto Dread Wastes/0 55.11,37.56
|tip Shu's pet team consists of level 25 Beast, Aquatic, and Elemental battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Wastewalker Shu##66739
turnin Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56
|only if completedq(31951)
step
talk Seeker Zusshi##66918
accept Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21 |only if completedq(31951)
Defeat Seeker Zusshi |q 31952/5 |goto Townlong Steppes/0 36.32,52.21
|tip Zusshi's pet team consists of level 25 Aquatic, Critter, and Elemental battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Aquatic battle pets are strong against Elemental battle pets.
|tip Defeat him in battle pet combat.
step
talk Seeker Zusshi##66918
turnin Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21
|only if completedq(31951)
step
talk Courageous Yon##66738
accept Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63 |only if completedq(31951)
Defeat Courageous Yon |q 31952/4 |goto Kun-Lai Summit/0 35.84,73.63
|tip Yon's pet team consists of level 25 Beast, Critter, and Flying battle pets.
|tip Mechanical battle pets are strong against Beast battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Magic battle pets are strong against Flying battle pets.
|tip Defeat him in battle pet combat.
step
talk Courageous Yon##66738
turnin Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63
|only if completedq(31951)
step
_Click the quest completion box that appears_
turnin Battle Pet Tamers: Pandaria##31952 |goto Kun-Lai Summit/0 35.84,73.63
accept Grand Master Aki##31951 |goto Kun-Lai Summit/0 35.84,73.63 |only if not completedq(31951)
step
talk Aki the Chosen##66741
Defeat Aki the Chosen |q 31951/1 |goto Vale of Eternal Blossoms/0 31.27,74.09
|tip Aki's pet team consists of level 25 Aquatic, Critter, and Dragonkin battle pets.
|tip Flying battle pets are strong against Aquatic battle pets.
|tip Beast battle pets are strong against Critter battle pets.
|tip Humanoid battle pets are strong against Dragonkin battle pets.
|tip Defeat him in battle pet combat.
step
talk Aki the Chosen##66741
turnin Grand Master Aki##31951 |goto Vale of Eternal Blossoms/0 31.27,74.09
step
talk Gentle San##64582
accept Beasts of Fable##32603 |goto Vale of Eternal Blossoms/0 60.80,23.70
step
label "dailies"
_No-No_
This enemy is aquatic
It is strong against undead and weak to flying attacks
I would suggest that you use flying pets against this enemy
Defeat No-No |q 32603/3 |goto Vale of Eternal Blossoms/0 11.00,70.90
step
_Lucky Yi_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using beast pets against this enemy
Defeat Lucky Yi |q 32603/5 |goto Valley of the Four Winds/0 40.50,43.70
step
_Greyhoof_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Defeat Greyhoof |q 32603/4 |goto Valley of the Four Winds/0 25.30,78.50
step
_Xi'a_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Xi'a |q 32603/10 |goto Krasarang Wilds/0 36.30,37.30
step
_Gorespine_
This enemy is a beast
Is is strong against Critters and weak to Mechanical attacks
I would suggest using Mechanical pets against this enemy
Defeat Gorespine |q 32603/2 |goto Dread Wastes/0 26.10,50.20
step
_Ti'un the Wanderer_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Ti'un the Wanderer |q 32603/6 |goto Townlong Steppes/0 72.30,79.80
step
_Kafi_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Defeat Kafi |q 32603/7 |goto Kun-Lai Summit/0 35.20,56.20
step
_Dos-Ryga_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Defeat Dos-Ryga |q 32603/8 |goto Kun-Lai Summit/0 67.90,84.70
step
_Ka'wi_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using a team of mechanical pets against this enemy
Defeat Ka'wi the Gorger |q 32603/1 |goto The Jade Forest/0 48.40,71.00
step
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using beast pets against this enemy
Defeat Nitun |q 32603/9 |goto The Jade Forest/0 57.00,29.10
step
talk Gentle San##64582
turnin Beasts of Fable##32603 |goto Vale of Eternal Blossoms/0 60.80,23.70
step
talk Gentle San##64582
accept Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms/0 60.80,23.70
accept Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms/0 60.80,23.70
accept Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms/0 60.80,23.70
accept Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms/0 60.80,23.70 |only if not completedq(32428)
step
_No-No_
This enemy is aquatic
It is strong against undead and weak to flying attacks
I would suggest that you use flying pets against this enemy
No-No defeated |q 32869/2 |goto Vale of Eternal Blossoms/0 11.00,70.90
step
_Lucky Yi_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using beast pets against this enemy
Lucky Yi defeated |q 32868/2 |goto Valley of the Four Winds/0 40.50,43.70
step
_Greyhoof_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Greyhoof defeated |q 32868/1 |goto Valley of the Four Winds/0 25.30,78.50
step
_Skitterer Xi'a_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Xi'a defeated |q 32868/3 |goto Krasarang Wilds/0 36.30,37.30
step
_Flowing Pandaren Spirit_
This enemy uses aquatic and elemental pets
They are strong against undead and mechanical and weak to flying and aquatic pets
I would suggest using flying and aquatic pets against this enemy
Flowing Pandaren Spirit defeated |q 32428/4 |goto Dread Wastes/0 61.10,87.50
|only if haveq(32428)
step
talk Flowing Pandaren Spirit##68462
accept Flowing Pandaren Spirit##32439 |goto Dread Wastes/0 61.10,87.50
|only if completedq(32428)
step
_Flowing Pandaren Spirit_
This enemy uses aquatic and elemental pets
They are strong against undead and mechanical and weak to flying and aquatic pets
I would suggest using flying and aquatic pets against this enemy
Flowing Pandaren Spirit defeated |q 32439/1 |goto Dread Wastes/0 61.10,87.50
|only if haveq(32439)
step
talk Flowing Pandaren Spirit##68462
turnin Flowing Pandaren Spirit##32439 |goto Dread Wastes/0 61.10,87.50
|only if haveq(32439)
step
_Gorespine_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Gorespine defeated |q 32869/1 |goto Dread Wastes/0 26.10,50.20
step
_Ti'un the Wanderer_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Ti'un the Wanderer defeated |q 32869/3 |goto Townlong Steppes/0 72.30,79.80
step
_Burning Pandaren Spirit_
This enemy uses a dragonkin, flying and elemental pet
They are strong against flying, beast, and mechanical pets, respectively
They are weak against humanoid, magic, and aquatic pets, respectively
I would suggest using a humanoid, magic, and aquatic pet against this enemy
Burning Pandaren Spirit defeated |q 32428/1 |goto Townlong Steppes/0 57.10,42.10
|only if haveq(32428)
step
talk Burning Pandaren Spirit##68463
accept Burning Pandaren Spirit##32434 |goto Townlong Steppes/0 57.10,42.10
|only if completedq(32428)
step
_Burning Pandaren Spirit_
This enemy uses a dragonkin, flying and elemental pet
They are strong against flying, beast, and mechanical pets, respectively
They are weak against humanoid, magic, and aquatic pets, respectively
I would suggest using a humanoid, magic, and aquatic pet against this enemy
Burning Pandaren Spirit defeated |q 32434/1 |goto Townlong Steppes/0 57.10,42.10
|only if haveq(32434)
step
talk Burning Pandaren Spirit##68463
turnin Burning Pandaren Spirit##32434 |goto Townlong Steppes/0 57.10,42.10
|only if haveq(32434)
step
_Kafi_
This enemy is a beast
It is strong against humanoids and weak against mechanical pets
I would suggest using a team of mechanical pets against this enemy
Kafi defeated |q 32604/2 |goto Kun-Lai Summit/0 35.20,56.20
step
_Thundering Pandaren Spirit_
This enemy uses a beast, elemental, and magic pet
They are strong against humanoids, mechanical, and aquatic pets, respectively
They are weak against mechanical, aquatic, and dragonkin pets, respectively
I would suggest using a mechanical, aquatic, and dragonkin pet against this enemy
Thundering Pandaren Spirit defeated |q 32428/2 |goto Kun-Lai Summit/0 64.90,93.80
|only if haveq(32428)
step
talk Thundering Pandaren Spirit##68465
accept Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 64.90,93.80
|only if completedq(32428)
step
_Thundering Pandaren Spirit_
This enemy uses a beast, elemental, and magic pet
They are strong against humanoids, mechanical, and aquatic pets, respectively
They are weak against mechanical, aquatic, and dragonkin pets, respectively
I would suggest using a mechanical, aquatic, and dragonkin pet against this enemy
Thundering Pandaren Spirit defeated |q 32441/1 |goto Kun-Lai Summit/0 64.90,93.80
|only if haveq(32441)
step
talk Thundering Pandaren Spirit##68465
turnin Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit/0 64.90,93.80
|only if haveq(32441)
step
_Dos-Ryga_
This enemy is aquatic
It is strong against undead and weak to flying pets
I would suggest using flying pets against this enemy
Dos-Ryga defeated |q 32604/3 |goto Kun-Lai Summit/0 67.90,84.70
step
_Whispering Pandaren Spirit_
This enemy uses a flying, elemental, and dragonkin pet
They are strong against beast, mechanical, and flying pets, respectively
They are weak against magic, aquatic, and humanoid pets, respectively
I would suggest using a magic, aquatic, and humanoid pet against this enemy
Whispering Pandaren Spirit defeated |q 32428/3 |goto The Jade Forest/0 28.90,36
|only if haveq(32428)
step
talk Whispering Pandaren Spirit##68464
accept Whispering Pandaren Spirit##32440 |goto The Jade Forest/0 28.90,36
|only if completedq(32428)
step
_Whispering Pandaren Spirit_
This enemy uses a flying, elemental, and dragonkin pet
They are strong against beast, mechanical, and flying pets, respectively
They are weak against magic, aquatic, and humanoid pets, respectively
I would suggest using a magic, aquatic, and humanoid pet against this enemy
Whispering Pandaren Spirit defeated |q 32440/1 |goto The Jade Forest/0 28.90,36
|only if haveq(32440)
step
talk Whispering Pandaren Spirit##68464
turnin Whispering Pandaren Spirit##32440 |goto The Jade Forest/0 28.90,36
|only if haveq(32440)
step
_Ka'wi the Gorger_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using a team of mechanical pets against this enemy
Ka'wi the Gorger defeated |q 32604/1 |goto The Jade Forest/0 48.40,71.00
step
_Nitun_
This enemy is a critter
Is is strong against Elementals and weak to beast attacks
I would suggest using beast pets against this enemy
Nitun defeated |q 32604/4 |goto The Jade Forest/0 57.00,29.10
step
talk Gentle San##64582
turnin Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms/0 60.80,23.70
turnin Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms/0 60.80,23.70
turnin Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms/0 60.80,23.70
turnin Pandaren Spirit Tamer##32428 |only if not completedq(32428) |goto Vale of Eternal Blossoms/0 60.80,23.70
step
use Fabled Pandaren Pet Supplies##94208
collect Sunfur Panda##94208 |next
If you didn't get the pet, click here to go back to the start of the dailies. |confirm |next "reset"
step
use Sunfur Panda##94208
learnpet Sunfur Panda pet##69891
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Battle Pets\\Magic Pets\\Jade Owl",{
expansion="mists",
patch='50300',
source='Profession',
description="This guide will walk you through obtaining the Magic pet: Jade Owl",
pet=845,
mopready=true,
},[[
step
Click here to gather and create the pet yourself |confirm |next "create"
Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
|tip This pet requires you to either have Pandaria Jewelcrafting trained, or purchase it from the Auction House.
step
label "create"
|tip You must complete Dailies for the Golden Lotus to get the recipe for this pet.
confirm
step
map Vale of Eternal Blossoms
path	54.60,23.70	52.80,23.10	47.00,18.70
path	42.60,15.00	41.80,17.80	36.90,18.00
path	35.50,21.30	35.00,28.70	35.60,34.50
path	42.20,29.10	45.40,29.60	47.90,26.50
path	50.80,31.50	53.60,28.60
Follow the path, mining any node you see.
Use your _Prospecting_ skill on any 5 ore you gather. |cast Prospecting##31252
collect 3 Wild Jade##76139
step
create 1 Jade Owl##82774
|next "done"
step
label "buy"
talk Auctioneer Drezmit##44866
buy 1 Jade Owl##82774 |goto Orgrimmar 54.10,73.40
step
label "done"
learnpet Jade Owl##845 |use Jade Owl##82774
]])
