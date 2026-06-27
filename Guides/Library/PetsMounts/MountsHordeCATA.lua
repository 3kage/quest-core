-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Paladin\\Sunwalker Kodo",{
keywords={"paladin","sunwalker","kodo","ground","mount"},
mounts={69820},
patch='unknown',
mounttype='unknown',
model={30366},
description="This guide will help you acquire the Sunwalker Kodo (Paladin only) mount.",
},[[
step
This mount is only available to Tauren Paladins
|only if not Paladin
step
To obtain this mount you must level a Tauren Paladin to level 10
|tip Once your character is level 10, this mount will be rewarded automatically.
Learn the "Sunwalker Kodo" Mount |learnmount Sunwalker Kodo##69820
|only Paladin
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Paladin\\Great Sunwalker Kodo",{
keywords={"paladin","Great","sunwalker","kodo","ground","mount"},
mounts={69826},
patch='unknown',
mounttype='unknown',
model={30501},
description="This guide will help you acquire the Great Sunwalker Kodo (Paladin only) mount.",
},[[
step
This mount is only available to Tauren Paladins
|only if not Paladin
step
To obtain this mount you must level a Tauren Paladin to level 20
|tip Once your character is level 20, this mount will be rewarded automatically.
learnmount Great Sunwalker Kodo##69826
|only Paladin
step
_Congratulations!_
You are now the proud owner of a Great Sunwalker Kodo.
|only Paladin
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Paladin\\Thalassian Warhorse",{
keywords={"paladin","Thalassian","Warhorse","ground","mount"},
mounts={34769},
patch='20003',
mounttype='unknown',
model={19296},
description="This guide will help you acquire the Thalassian Warhorse (Paladin only) mount.",
},[[
step
This mount is only available to Blood Elf Paladins
|only if not Paladin
step
To obtain this mount you must level a Blood Elf Paladin to level 10
|tip Once your character is level 10, this mount will be rewarded automatically.
learnmount Thalassian Warhorse##34769
|only Paladin
step
_Congratulations!_
You are now the proud owner of a Thalassian Warhorse.
|only Paladin
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Paladin\\Thalassian Charger",{
keywords={"paladin","Thalassian","Charger","ground","mount"},
mounts={73630},
patch='unknown',
mounttype='unknown',
model={31368},
description="This guide will help you acquire the Thalassian Charger (Paladin only) mount.",
},[[
step
This mount is only available to Blood Elf Paladins
|only if not Paladin
step
To obtain this mount you must level a Blood Elf Paladin to level 20
|tip Once your character is level 20, this mount will be rewarded automatically.
learnmount Thalassian Charger##73630
|only Paladin
step
_Congratulations!_
You are now the proud owner of a Thalassian Charger.
|only Paladin
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Warlock\\Felsteed",{
keywords={"warlock","Felsteed","ground","mount"},
mounts={5784},
patch='20003',
mounttype='unknown',
model={2346},
description="This guide will help you acquire the Felsteed (Warlock only) mount.",
},[[
step
This mount is only available to Warlocks
|only if not Warlock
step
To obtain this mount you must level a Warlock to level 10
|tip Once your character is level 10, this mount will be rewarded automatically.
learnmount Felsteed##5784
|only Warlock
step
_Congratulations!_
You are now the proud owner of a Felsteed.
|only Warlock
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Warlock\\Dreadsteed",{
keywords={"warlock","Dreadsteed","ground","mount"},
mounts={23161},
patch='20001',
mounttype='unknown',
model={14554},
description="This guide will help you acquire the Dreadsteed (Warlock only) mount.",
},[[
step
This mount is only available to Warlocks
confirm
|only if not Warlock
step
To obtain this mount you must level a Warlock to level 20
|tip Once your character is level 20 this mount will be rewarded automatically.
learnmount Dreadsteed##23161
confirm
|only Warlock
step
_Congratulations!_
You are now the proud owner of a Dreadsteed.
|only Warlock
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Argent Tournament Mounts\\Mounts\\Argent Warhorse",{
keywords={"argent","warhorse","charger","tournament","ground","mount"},
mounts={67466},
patch='30305',
mounttype='Ground',
model={28918},
description="This guide will help you acquire the Argent Warhorse and Argent Charger (Paladin only) mounts.",
},[[
step
Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds_ and _The Sunreavers pre-quests_ and _dailies_.
_Earn_ the title _"Crusader"_ |achieve 2816
|tip To do this you must become a Champion and have exalted reputation for all of the factions of the Horde.
earn 100 Champion's Seal##241 |only if default
earn 200 Champion's Seal##241 |only Paladin
step
talk Dame Evniki Kapsalis##34885
buy 1 Argent Charger##47179 |goto Icecrown,69.40,23.20 |only Paladin
buy 1 Argent Warhorse##47180 |goto Icecrown,69.40,23.20
step
learnmount Argent Charger##66906 |use Argent Charger##47179 |only Paladin
learnmount Argent Warhorse##67466 |use Argent Warhorse##47180
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Argent Tournament Mounts\\Mounts\\Darkspear Trolls",{
keywords={"swift","purple","raptor","darkspear","ground","mount","argent","tournament"},
mounts={63635,65644},
patch='30103',
mounttype='Ground',
model={29261},
description="This guide will help you acquire the Darkspear Raptor and Swift Purple Raptor mounts",
},[[
step
In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
You cannot complete this section if you are a Troll.
Become a _Champion of Sen'jin_ |achieve 2784
earn 105 Champion's Seal##241
confirm always
step
talk Zul'tore##33372
accept Valiant Of Sen'jin##13708 |goto Icecrown,76.00,24.50
turnin Valiant Of Sen'jin##13708 |goto Icecrown,76.00,24.50
accept The Valiant's Charge##13719 |goto Icecrown,76.00,24.50
step
talk Zul'tore##33372
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13768 |goto Icecrown 76.00,24.50 |or
accept A Worthy Weapon##13769 |goto Icecrown 76.00,24.50 |or
accept The Edge Of Winter##13770 |goto Icecrown 76.00,24.50 |or
step
talk Shadow Hunter Mezil-kree##33540
accept A Valiant's Field Training##13771 |goto Icecrown 76.00,24.60
step
talk Gahju##33545
accept The Grand Melee##13772 |goto Icecrown 75.90,24.40
accept At The Enemy's Gates##13857 |goto Icecrown 75.90,24.40
step
Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
Tell her you are glad to help
collect Ashwood Brand##44981 |q 13768/1 |goto Grizzly Hills,61.20,50.30
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13769 |goto Icecrown,69.10,76.20
step
Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13769/1 |goto Dragonblight,93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13770 |goto Crystalsong Forest,54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13770/1 |goto Howling Fjord,42.20,19.70
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13857 |goto Icecrown,48.90,71.40
step
kill 15 Boneguard Footman |q 13857/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13857/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13857/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13857 |goto Icecrown 49.10,71.40
step
kill 10 Converted Hero##32255 |q 13771/1 |goto Icecrown 44.30,54.20
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Darkspear Raptor |invehicle |q 13772 |goto Icecrown 75.60,23.80
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13772/1 |goto Icecrown 75.30,26.00
step
talk Zul'tore##33372
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13768 |goto Icecrown 76.00,24.50
turnin A Worthy Weapon##13769 |goto Icecrown 76.00,24.50
turnin The Edge Of Winter##13770 |goto Icecrown 76.00,24.50
step
talk Shadow Hunter Mezil-kree##33540
turnin A Valiant's Field Training##13771 |goto Icecrown 76.00,24.60
step
talk Gahju##33545
turnin The Grand Melee##13772 |goto Icecrown 75.90,24.40
turnin At The Enemy's Gates##13857 |goto Icecrown 75.90,24.40
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13719/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Zul'tore##33372
turnin The Valiant's Charge##13719 |goto Icecrown 76.00,24.50
accept The Valiant's Challenge##13727 |goto Icecrown 76.00,24.50
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Darkspear Raptor |invehicle |q 13727 |goto Icecrown 72.00,22.50
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13727/1 |goto Icecrown 68.60,21.00
step
talk Zul'tore##33372
turnin The Valiant's Challenge##13727 |goto Icecrown 76.00,24.50
step
Become a Champion of Sen'jin |achieve 2784
earn 105 Champion's Seal##241+
If you don't meet both of these requirements go back and repeat this section.
step
talk Samamba##33554
buy 1 Darkspear Raptor##45593 |goto Icecrown,76.00,24.40
buy 1 Swift Purple Raptor##46743 |goto Icecrown,76.00,24.40
step
learnmount Darkspear Raptor##63635 |use Darkspear Raptor##45593
learnmount Swift Purple Raptor##65644 |use Swift Purple Raptor##46743
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Argent Tournament Mounts\\Mounts\\Orgrimmar",{
keywords={"swift","burgundy","wolf","orgrimmar","ground","mount","argent","tournament"},
mounts={63640,65646},
patch='30103',
mounttype='Ground',
model={29879},
description="This guide will help you acquire the Swift Burgundy Wolf and Orgrimmar Wolf mounts.",
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
You cannot complete this section if you are an Orc.
Become a _Champion of Orgrimmar_ |achieve 2783
earn 105 Champion's Seal##241
confirm always
step
talk Mokra the Skullcrusher##33361
accept Valiant Of Orgrimmar##13707 |goto Icecrown,76.50,24.60
turnin Valiant Of Orgrimmar##13707 |goto Icecrown,76.50,24.60
accept The Valiant's Charge##13697 |goto Icecrown,76.50,24.60
step
talk Mokra the Skullcrusher##33361
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13762 |goto Icecrown 76.50,24.60 |or
accept A Worthy Weapon##13763 |goto Icecrown 76.50,24.60 |or
accept The Edge Of Winter##13764 |goto Icecrown 76.50,24.60 |or
step
talk Akinos##33405
accept A Valiant's Field Training##13765 |goto Icecrown 76.50,24.50
step
talk Morah Worgsister##33544
accept The Grand Melee##13767 |goto Icecrown 76.40,24.60
accept At The Enemy's Gates##13856 |goto Icecrown 76.40,24.60
step
Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13762/1 |goto Grizzly Hills,61.20,50.30
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13763 |goto Icecrown,69.10,76.20
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13763/1 |goto Dragonblight,93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13764 |goto Crystalsong Forest,54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13764/1 |goto Howling Fjord,42.20,19.70
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13856 |goto Icecrown,48.90,71.40
step
kill 15 Boneguard Footman |q 13856/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13856/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13856/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area.  Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13856 |goto Icecrown 49.10,71.40
step
kill 10 Converted Hero##32255 |q 13765/1 |goto Icecrown 44.30,54.20
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Orgrimmar Wolf |invehicle |q 13767 |goto Icecrown 75.50,24.00
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13767/1 |goto Icecrown 75.30,26.00
step
talk Mokra the Skullcrusher##33361
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13762 |goto Icecrown 76.50,24.60
turnin A Worthy Weapon##13763 |goto Icecrown 76.50,24.60
turnin The Edge Of Winter##13764 |goto Icecrown 76.50,24.60
step
talk Akinos##33405
turnin A Valiant's Field Training##13765 |goto Icecrown 76.50,24.50
step
talk Morah Worgsister##33544
turnin The Grand Melee##13767 |goto Icecrown 76.40,24.60
turnin At The Enemy's Gates##13856 |goto Icecrown 76.40,24.60
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13697/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Mokra the Skullcrusher##33361
turnin The Valiant's Charge##13697 |goto Icecrown 76.50,24.60
accept The Valiant's Challenge##13726 |goto Icecrown 76.50,24.60
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Orgrimmar Wolf |invehicle |q 13726 |goto Icecrown 72.20,22.50
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13726/1 |goto Icecrown 68.60,21.00
step
talk Mokra the Skullcrusher##33361
turnin The Valiant's Challenge##13726 |goto Icecrown 76.50,24.60
step
Become a Champion of Orgrimmar |achieve 2783
earn 105 Champion's Seal##241+
If you don't meet both of these requirements go back and repeat this section.
step
talk Freka Bloodaxe##33553
buy 1 Orgrimmar Wolf##45595 |goto Icecrown,76.40,24.20
buy 1 Swift Burgundy Wolf##46749 |goto Icecrown,76.40,24.20
step
learnmount Orgrimmar Wolf##63640 |use Orgrimmar Wolf##45595
learnmount Swift Burgundy Wolf##65646 |use Swift Burgundy Wolf##46749
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Argent Tournament Mounts\\Mounts\\Silvermoon City",{
keywords={"swift","red","hawkstrider","silvermoon","ground","mount","argent","tournament"},
mounts={63642,65639},
patch='30103',
mounttype='Ground',
model={29262},
description="This guide will help you acquire the Swift Red Hawkstrider and Silvermoon Hawkstrider mounts.",
},[[
step
In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.
You cannot complete this section if you are a Blood Elf.
Become a _Champion of Silvermoon City_ |achieve 2785
earn 105 Champion's Seal##241
confirm always
step
talk Eressea Dawnsinger##33379
accept Valiant Of Silvermoon##13711 |goto Icecrown,76.50,23.90
turnin Valiant Of Silvermoon##13711 |goto Icecrown,76.50,23.90
accept The Valiant's Charge##13722 |goto Icecrown,76.50,23.90
step
talk Eressea Dawnsinger##33379
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13783 |goto Icecrown 76.50,23.90 |or
accept A Worthy Weapon##13784 |goto Icecrown 76.50,23.90 |or
accept The Edge Of Winter##13785 |goto Icecrown 76.50,23.90 |or
step
talk Kethiel Sunlance##33538
accept A Valiant's Field Training##13786 |goto Icecrown 76.40,23.80
step
talk Aneera Thuron##33548
accept The Grand Melee##13787 |goto Icecrown 76.50,23.90
accept At The Enemy's Gates##13859 |goto Icecrown 76.50,23.90
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
Tell her you are glad to help
collect Ashwood Brand##44981 |q 13783/1 |goto Grizzly Hills,61.20,50.30
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13784 |goto Icecrown,69.10,76.20
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13784/1 |goto Dragonblight,93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13785 |goto Crystalsong Forest,54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13785/1 |goto Howling Fjord,42.20,19.70
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13859 |goto Icecrown,48.90,71.40
step
kill 15 Boneguard Footman |q 13859/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13859/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13859/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13859 |goto Icecrown 49.10,71.40
step
kill 10 Converted Hero##32255 |q 13786/1 |goto Icecrown 44.30,54.20
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Silvermoon Hawkstrider |invehicle |q 13787 |goto Icecrown 75.50,24.10
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13787/1 |goto Icecrown 75.30,26.00
step
talk Eressea Dawnsinger##33379
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13783 |goto Icecrown 76.50,23.90
turnin A Worthy Weapon##13784 |goto Icecrown 76.50,23.90
turnin The Edge Of Winter##13785 |goto Icecrown 76.50,23.90
step
talk Kethiel Sunlance##33538
turnin A Valiant's Field Training##13786 |goto Icecrown 76.40,23.80
step
talk Aneera Thuron##33548
turnin The Grand Melee##13787 |goto Icecrown 76.50,23.90
turnin At The Enemy's Gates##13859 |goto Icecrown 76.50,23.90
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13722/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Eressea Dawnsinger##33379
turnin The Valiant's Charge##13722 |goto Icecrown 76.50,23.90
accept The Valiant's Challenge##13731 |goto Icecrown 76.50,23.90
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Silvermoon Hawkstrider |invehicle |q 13731 |goto Icecrown 72.20,22.40
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13731/1 |goto Icecrown 68.60,21.00
step
talk Eressea Dawnsinger##33379
turnin The Valiant's Challenge##13731 |goto Icecrown 76.50,23.90
step
Become a Champion of Silvermoon City |achieve 2785
earn 105 Champion's Seal##241+
If you don't meet both of these requirements go back and repeat this section.
step
talk Trellis Morningsun##33557
buy 1 Silvermoon Hawkstrider##45596 |goto Icecrown,76.20,23.80
buy 1 Swift Red Hawkstrider##46751 |goto Icecrown,76.20,23.80
step
learnmount Silvermoon Hawkstrider##63642 |use Silvermoon Hawkstrider##45596
learnmount Swift Red Hawkstrider##65639 |use Swift Red Hawkstrider##46751
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Argent Tournament Mounts\\Mounts\\Sunreaver Hawkstrider",{
keywords={"sunreaver","hawkstrider","argent","tournament","ground","mount"},
mounts={66091},
patch='40300',
mounttype='Ground',
model={28889},
description="This guide will help you acquire the Sunreaver Hawkstrider mount.",
},[[
step
Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds_ and _The Sunreavers pre-quests_ and _dailies_.
_Exalted_ with _The Sunreavers_ |complete rep("The Sunreavers")>=Exalted
earn 100 Champion's Seal##241
Click here to proceed to Sunreaver Pre-Quests. |confirm
step
talk Vasarin Redmorn##34772
buy 1 Sunreaver Hawkstrider##46816 |goto Icecrown,76.20,24.00
step
learnmount Sunreaver Hawkstrider##66091 |use Sunreaver Hawkstrider##46816
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Argent Tournament Mounts\\Mounts\\Thunder Bluff",{
keywords={"thunder","bluff","great","golden","kodo","argent","tournament","ground","mount"},
mounts={63641,65641},
patch='30103',
mounttype='Ground',
model={29259},
description="This guide will help you acquire the Great Golden Kodo and Thunder Bluff Kodo mounts.",
},[[
step
In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
You cannot complete this section if you are a Tauren.
Become a _Champion of Thunder Bluff_ |achieve 2786
earn 105 Champion's Seal##241
confirm always
step
talk Runok Wildmane##33403
accept Valiant Of Thunder Bluff##13709 |goto Icecrown,76.20,24.60
turnin Valiant Of Thunder Bluff##13709 |goto Icecrown,76.20,24.60
accept The Valiant's Charge##13720 |goto Icecrown,76.20,24.60
step
talk Runok Wildmane##33403
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13773 |goto Icecrown 76.20,24.60 |or
accept A Worthy Weapon##13774 |goto Icecrown 76.20,24.60 |or
accept The Edge Of Winter##13775 |goto Icecrown 76.20,24.60 |or
step
talk Dern Ragetotem##33539
accept A Valiant's Field Training##13776 |goto Icecrown 76.30,24.70
step
talk Anka Clawhoof##33549
accept The Grand Melee##13777 |goto Icecrown 76.10,24.60
accept At The Enemy's Gates##13858 |goto Icecrown 76.10,24.60
step
Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
Tell her you are glad to help
collect Ashwood Brand##44981 |q 13773/1 |goto Grizzly Hills,61.20,50.30
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13774 |goto Icecrown,69.10,76.20
step
Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13774/1 |goto Dragonblight,93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13775 |goto Crystalsong Forest,54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13775/1 |goto Howling Fjord,42.20,19.70
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13858 |goto Icecrown,48.90,71.40
step
kill 15 Boneguard Footman |q 13858/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13858/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13858/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13858 |goto Icecrown 49.10,71.40
step
kill 10 Converted Hero##32255 |q 13776/1 |goto Icecrown 44.30,54.20
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Thunder Bluff Kodo |invehicle |q 13777 |goto Icecrown 75.50,24.30
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13777/1 |goto Icecrown 75.30,26.00
step
talk Runok Wildmane##33403
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13773 |goto Icecrown 76.20,24.60
turnin A Worthy Weapon##13774 |goto Icecrown 76.20,24.60
turnin The Edge Of Winter##13775 |goto Icecrown 76.20,24.60
step
talk Dern Ragetotem##33539
turnin A Valiant's Field Training##13776 |goto Icecrown 76.30,24.70
step
talk Anka Clawhoof##33549
turnin The Grand Melee##13777 |goto Icecrown 76.10,24.60
turnin At The Enemy's Gates##13858 |goto Icecrown 76.10,24.60
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13720/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Runok Wildmane##33403
turnin The Valiant's Charge##13720 |goto Icecrown 76.20,24.60
accept The Valiant's Challenge##13728 |goto Icecrown 76.20,24.60
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Thunder Bluff Kodo |invehicle |q 13728 |goto Icecrown 71.90,22.40
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13728/1 |goto Icecrown 68.60,21.00
step
talk Runok Wildmane##33403
turnin The Valiant's Challenge##13728 |goto Icecrown 76.20,24.60
step
Become a Champion of Thunder Bluff |achieve 2786
earn 105 Champion's Seal##241+
If you don't meet both of these requirements go back and repeat this section.
step
talk Doru Thunderhorn##33556
buy 1 Thunder Bluff Kodo##45592 |goto Icecrown,76.20,24.40
buy 1 Great Golden Kodo##46750 |goto Icecrown,76.20,24.40
step
learnmount Thunder Bluff Kodo##63641 |use Thunder Bluff Kodo##45592
learnmount Great Golden Kodo##65641 |use Great Golden Kodo##46750
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Argent Tournament Mounts\\Mounts\\Undercity",{
keywords={"argent","tournament","white","skeletal","warhorse","forsaken","ground","mount"},
mounts={63643,65645},
patch='30103',
mounttype='Ground',
model={29257},
description="This guide will help you acquire the White Skeletal Warhorse and Forsaken Warhorse mounts.",
},[[
step
In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
You cannot complete this section if you are an Undead.
Become a _Champion of Undercity_ |achieve 2787
earn 105 Champion's Seal##241
confirm always
step
talk Deathstalker Visceri##33373
accept Valiant Of Undercity##13710 |goto Icecrown,76.50,24.20
turnin Valiant Of Undercity##13710 |goto Icecrown,76.50,24.20
accept The Valiant's Charge##13721 |goto Icecrown,76.50,24.20
step
talk Deathstalker Visceri##33373
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13778 |goto Icecrown 76.50,24.20 |or
accept A Worthy Weapon##13779 |goto Icecrown 76.50,24.20 |or
accept The Edge Of Winter##13780 |goto Icecrown 76.50,24.20 |or
step
talk Sarah Chalke##33541
accept A Valiant's Field Training##13781 |goto Icecrown 76.60,24.10
step
talk Handler Dretch##33547
accept The Grand Melee##13782 |goto Icecrown 76.50,24.30
accept At The Enemy's Gates##13860 |goto Icecrown 76.50,24.30
step
Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
Tell her you're glad to help
collect Ashwood Brand##44981 |q 13778/1 |goto Grizzly Hills,61.20,50.30
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13779 |goto Icecrown,69.10,76.20
step
Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13779/1 |goto Dragonblight,93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13780 |goto Crystalsong Forest,54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13780/1 |goto Howling Fjord,42.20,19.70
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13860 |goto Icecrown,48.90,71.40
step
kill 15 Boneguard Footman |q 13860/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13860/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13860/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13860 |goto Icecrown 49.10,71.40
step
kill 10 Converted Hero##32255 |q 13781/1 |goto Icecrown 44.30,54.20
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Forsaken Warhorse |invehicle |q 13782 |goto Icecrown 75.60,23.90
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13782/1 |goto Icecrown 75.30,26.00
step
talk Deathstalker Visceri##33373
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13778 |goto Icecrown 76.50,24.20
turnin A Worthy Weapon##13779 |goto Icecrown 76.50,24.20
turnin The Edge Of Winter##13780 |goto Icecrown 76.50,24.20
step
talk Sarah Chalke##33541
turnin A Valiant's Field Training##13781 |goto Icecrown 76.60,24.10
step
talk Handler Dretch##33547
turnin The Grand Melee##13782 |goto Icecrown 76.50,24.30
turnin At The Enemy's Gates##13860 |goto Icecrown 76.50,24.30
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13721/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Deathstalker Visceri##33373
turnin The Valiant's Charge##13721 |goto Icecrown 76.50,24.20
accept The Valiant's Challenge##13729 |goto Icecrown 76.50,24.20
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Forsaken Warhorse |invehicle |q 13729 |goto Icecrown 72.10,22.40
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13729/1 |goto Icecrown 68.60,21.00
step
talk Deathstalker Visceri##33373
turnin The Valiant's Challenge##13729 |goto Icecrown 76.50,24.20
step
Become a Champion of Undercity |achieve 2787
earn 105 Champion's Seal##241+
If you don't meet both of these requirements go back and repeat this section.
step
talk Eliza Killian##33555
buy 1 Forsaken Warhorse##45597 |goto Icecrown,76.40,24.00
buy 1 White Skeletal Warhorse##46746 |goto Icecrown,76.40,24.00
step
learnmount Forsaken Warhorse##63643 |use Forsaken Warhorse##45597
learnmount White Skeletal Warhorse##65645 |use White Skeletal Warhorse##46746
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dailies Mounts\\Darkmoon Faire Mounts",{
keywords={"darkmoon","dancing","bear","swift","forest","strider","ground","mount"},
mounts={103081},
patch='43000',
mounttype='Ground',
model={39060},
description="This guide will help you acquire the Darkmoon Dancing Bear and Swift Forest Strider mounts.",
},[[
step
This mount requires Darkmoon Island to be accessible.
Click here for the Darkmoon Quests. |next "Events Guides\\Darkmoon Faire\\Darkmoon Faire Quests" |confirm |only if QC.guidesets["DailiesACATA"]
Click here for the Darkmoon Daily Quests. |next "Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies" |confirm |only if QC.guidesets["DailiesACATA"]
confirm
step
Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.00,52.90,1 |c
step
Complete daily quests on Darkmoon Island until you have 360 Darkmoon Prize Tickets
earn 360 Darkmoon Prize Ticket##515
step
talk Lhara##14846
buy Darkmoon Dancing Bear##73766 |goto Darkmoon Island 48.60,69.80
buy Swift Forest Strider##72140 |goto Darkmoon Island 48.60,69.80
step
learnmount Darkmoon Dancing Bear##103081 |use Darkmoon Dancing Bear##73766
learnmount Swift Forest Strider##102346 |use Swift Forest Strider##72140
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dailies Mounts\\Venomhide Ravasaur",{
keywords={"venomhide","ravasaur","ground","mount"},
mounts={64659},
patch='30100',
mounttype='Ground',
model={29102},
description="This guide will help you acquire the Venomhide Ravasaur mount.",
},[[
step
This mount will take _20 days_ to earn.
confirm
step
talk Mor'vek##11701
accept Toxic Tolerance##13850 |goto Un'Goro Crater,71.40,74.10
step
kill Venomhide Ravasaur##6508+
Splashed with Venomhide blood |q 13850/1 |goto Un'Goro Crater,71.20,51.50
|tip If you're a high level take off most, if not all, of your gear and punch the Venomhide Ravasaurs to get the debuff. This quest will take a while...
step
talk Mor'vek##11701
turnin Toxic Tolerance##13850 |goto Un'Goro Crater,71.40,74.10
accept Venomhide Eggs##13887 |goto Un'Goro Crater,71.40,74.10
step
click Venomhide Ravasaur Egg##3851+
collect 4 Venomhide Ravasaur Egg##46364 |q 13887/1 |goto Un'Goro Crater,63.80,62.70
step
talk Mor'vek##11701
turnin Venomhide Eggs##13887 |goto Un'Goro Crater,71.40,74.10
accept They Grow Up So Fast##13906 |goto Un'Goro Crater,71.40,74.10
step
label "dailies"
Go to _Un'Goro Crater_ |goto Un'Goro Crater |noway |c
step
use Venomhide Hatchling##46362
Complete one of these dailies _everyday_ for _20 days_:
talk Venomhide Hatchling##34320
accept Hungry, Hungry Hatchling##13889 |or
accept Gorishi Grub##13903 |or
accept Poached, Scrambled, or Raw?##13904 |or
accept Searing Roc Feathers##13905 |or
step
kill Young Diemetradon##9162+, Diemetradon##9163+, Pterrordax##9166+
collect 15 Fresh Dinosaur Meat##46367 |n
use Venomhide Hatchling##46362
Use the Fresh Dinosaur Meat in your bags |use Fresh Dinosaur Meat##46367
Fresh Dinosaur Meat fed to Venomhide Hatchling |q 13889/1 |goto Un'Goro Crater,58.00,70.70
|only if haveq(13889)
step
kill Gorishi Wasp##6551+,Gorishi Worker##6552+,Gorishi Worker##6553+,Gorisi Stinger##6554+,Gorishi Tunneler##6555+
collect 10 Silithid Meat##46380 |n
use Venomhide Hatchling##46362
Use the _Silithid Meat_ in your bags |use Silithid Meat##46380
Silithid Meat fed to Venomhide Hatchling |q 13903/1 |goto Un'Goro Crater 49.80,80.10
|only if haveq(13903)
step
click Silithid Egg##195037
collect 12 Silithid Egg##46382 |n
use Venomhide Hatchling##46362
Use the Silithid Egg in your bags |use Silithid Egg##46382
Silithid Egg fed to Venomhide Hatchling |q 13904/1 |goto Tanaris,35.20,46.40
|only if haveq(13904)
step
kill Searing Roc##5430+
Kill Searing Roc mobs here.
If you run out of mobs, you can find more here [41.50,63.00]
collect 5 Searing Roc Plumage##46381 |q 13905/1 |goto Tanaris,41,62.60
|only if haveq(13905)
step
use Venomhide Hatchling##46362
talk Venomhide Hatchling##34320
turnin Hungry, Hungry Hatchling##13889
turnin Gorishi Grub##13903
turnin Poached, Scrambled, or Raw?##13904
turnin Searing Roc Feathers##13905
_Click here_ to return to the _beginning_ of the _daily quests_ |confirm |next "dailies"
collect 20 Venomhide Baby Tooth##47196 |q 13906/1
step
You can either buy these items from the Auction House or farm them:
collect 20 Runecloth##14047
collect 20 Rugged Leather##8170
step
talk Mor'vek##11701
turnin They Grow Up So Fast##13906 |goto Un'Goro Crater,71.40,74.10
collect 1 Whistle of the Venomhide Ravasaur##46102 |goto Un'Goro Crater,71.40,74.10
step
learnmount Venomhide Ravasaur##64659 |use Whistle of the Venomhide Ravasaur##46102
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dailies Mounts\\White Polar Bear",{
keywords={"white","polar","bear","ground","mount"},
mounts={54753},
patch='30001',
mounttype='Ground',
model={28428},
description="This guide will help you acquire the White Polar Bear mount.",
},[[
step
This mount _requires_ you to have _The Sons of Hodir_ pre-quests completed. |next
Click here to be routed tot he Sons of Hodir Prequests and Dailies. |next "Reputation Guides\\Wrath of the Lich King Reputations\\The Sons of Hodir" |confirm |only if QC.guidesets["DailiesACATA"]
confirm
step
label "dailies"
talk Gretta the Arbiter##29796
accept Back to the Pit##13424 |goto The Storm Peaks,50.90,65.60 |or
accept Defending Your Title##13423 |goto The Storm Peaks,50.90,65.60 |or
accept Maintaining Discipline##13422 |goto The Storm Peaks,50.90,65.60 |or
accept The Aberrations Must Die##13425 |goto The Storm Peaks,50.90,65.60 |or
stickystart "victorychallenge"
step
Use the Reins of the Warbear Matriarch in your bags |use Reins of the Warbear Matriarch##42499
Use the _abilities_ on your _hotbar_ to kill the _Hyldsmeet Warbears_
kill 6 Hyldsmeet Warbear##30174 |q 13424/1 |goto The Storm Peaks 49.40,67.60
|only if haveq(13424)
step
label "victorychallenge"
talk Victorious Challenger##30012
_Challenge_ them to a fight
kill 6 Victorious Challenger##30012 |q 13423/1 |goto The Storm Peaks 48.20,70.10
|only if haveq(13423)
step
kill Valkyrion Apirant##29569
collect Vial of Frost Oil##41612 |n
Use the _Vial of Frost Oils_ to destroy the _Plauged Proto-Drake Eggs_ |use Vial of Frost Oil##41612
Destroy Plagued Proto-Drake Egg |q 13425/1 |goto The Storm Peaks 25.00,60.00
|only if haveq(13425)
step
Use your _Disciplining Rod_ on the _Exhausted Vrykuls_ |use Disciplining Rod##42837
|tip They are located all throughout this mine
Exhausted Vrykul Disciplined |q 13422/1 |goto The Storm Peaks 46.50,68.30
|only if haveq(13422)
step
talk Gretta the Arbiter##29796
turnin Back to the Pit##13424 |goto The Storm Peaks,50.90,65.60
turnin Defending Your Title##13423 |goto The Storm Peaks,50.90,65.60
turnin Maintaining Discipline##13422 |goto The Storm Peaks,50.90,65.60
turnin The Arberrations Must Die##13425 |goto The Storm Peaks,50.90,65.60
collect 1 Hyldinr Spoils##44751 |goto The Storm Peaks,50.90,65.60
step
use Hyldinr Spoils##44751
collect 1 Reins of the White Polar Bear##43962
|tip This has a 2% drop rate from these bags. Do these dailies every day to have a higher chance of obtaining it!
_Click here_ to return to the _beginning_ of the _daily quests_ |next "dailies" |confirm
step
learnmount White Polar Bear##54753 |use Reins of the White Polar Bear##43962
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dropped Mounts\\Grey Riding Camel",{
keywords={"grey","riding","camel","ground","mount"},
mounts={88750},
patch='unknown',
mounttype='Ground',
model={35135},
description="This guide will help you acquire the Grey Riding Camel mount.",
},[[
step
talk Zidormi##162419
Time Travel to Old Uldum |complete QC.InPhase("Old Uldum") |goto Uldum New/0 56.02,35.14
|only if not QC.InPhase("Old Uldum")
label "start"
step
Begin the Search
|tip This mount drops off a rare spawn called Dormus the Camel-Hoarder.
|tip You get to him by clicking the Mysterious Camel Figurines around Uldum.
|tip They have a chance to teleport you to his area and you get a debuff giving you 20 minutes to kill him.
|tip Check all the waypoints in each step for a chance to find the Camel Figurine.
Click Here to Continue |confirm
step
Next to this table in the inn.
confirm |goto Uldum/0 22.00,64.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
Under the this tent, next to some boxes.
confirm |goto Uldum/0 22.20,64.00
_
If you found the correct figurine, click here |confirm |next "camel"
step
In between the wagon and the stone rock.
confirm |goto Uldum/0 24.20,59.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Behind this wagon.
confirm |goto Uldum/0 24.60,60.00
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this tall wooden post.
confirm |goto Uldum/0 25.40,65.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to the boxes with nets over them.
confirm |goto Uldum/0 25.60,65.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this wagon with the back down.
confirm |goto Uldum/0 26.20,64.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this light colored log in the sand.
confirm |goto Uldum/0 26.20,65.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to the stairs at this wall.
confirm |goto Uldum/0 28.60,63.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to the corner of this wall.
confirm |goto Uldum/0 30.20,62.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this tall and wide pillar.
confirm |goto Uldum/0 30.40,60.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
At the bottom of these stairs.
confirm |goto Uldum/0 30.80,67.40
_
If you found the correct figurine, click here |confirm |next "camel"
step
At the top of these stairs, next to the stone ramp and pillar.
confirm |goto Uldum/0 31.00,66.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this pillar, near the stairs going down.
confirm |goto Uldum/0 31.60,69.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this tall wide pillar.
confirm |goto Uldum/0 33.00,59.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
At the top of these stairs.
confirm |goto Uldum/0 33.00,67.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
On this platform in the water.
confirm |goto Uldum/0 33.00,71.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this door and small stairway.
confirm |goto Uldum/0 33.20,62.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this pillar and ledge.
confirm |goto Uldum/0 37.00,64.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
At the bottom of these stairs.
confirm |goto Uldum/0 38.20,60.40
_
If you found the correct figurine, click here |confirm |next "camel"
step
At the edge of this small cliff.
confirm |goto Uldum/0 38.60,54.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this bench.
confirm |goto Uldum/0 47.20,76.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
At the top of these stairs.
confirm |goto Uldum/0 49.00,75.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this tree.
confirm |goto Uldum/0 49.20,75.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to these carts with items inside.
confirm |goto Uldum/0 50.20,73.40
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to these tables with weapons on them.
confirm |goto Uldum/0 50.40,73.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to these tables with weapons on them.
confirm |goto Uldum/0 50.40,72.40
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to these tables with weapons on them.
confirm |goto Uldum/0 50.60,72.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to these wagons and this table with weapons.
confirm |goto Uldum/0 51.00,79.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to these square stones.
confirm |goto Uldum/0 51.80,70.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Inside this room, check all 4 corners.
confirm |goto Uldum/0 73.40,73.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Look around both sets of stairs here.
confirm |goto Uldum/0 70.00,58.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this little stone house.
confirm |goto Uldum/0 72.00,44.00
_
If you found the correct figurine, click here |confirm |next "camel"
step
In this corner with piles of sand.
confirm |goto Uldum/0 64.60,30.40
_
If you found the correct figurine, click here |confirm |next "camel"
step
On the edge of this tile in a star formation.
confirm |goto Uldum/0 52.40,28.00
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this pillar and rocks on the ground.
confirm |goto Uldum/0 52.20,27.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this tropical tree.
confirm |goto Uldum/0 50.60,31.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this buried pillar.
confirm |goto Uldum/0 45.20,15.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this tent with a bonfire nearby.
confirm |goto Uldum/0 34.20,21.40
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this wall.
confirm |goto Uldum/0 34.20,19.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this group of tents.
confirm |goto Uldum/0 33.80,25.40
_
If you found the correct figurine, click here |confirm |next "camel"
step
On top of this pillar.
confirm |goto Uldum/0 33.20,28.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
In this rubble, next to the building.
confirm |goto Uldum/0 33.20,28.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
In between these two trees with shrubbery.
confirm |goto Uldum/0 29.80,25.00
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this Rock and Tree.
confirm |goto Uldum/0 29.80,20.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this group of trees.
confirm |goto Uldum/0 51.80,49.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
In this middle area of these houses.
confirm |goto Uldum/0 52.00,51.00
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this small building.
confirm |goto Uldum/0 51.40,51.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
At the bottom of this ramp.
confirm |goto Uldum/0 50.60,50.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this group of trees, on this cliff.
confirm |goto Uldum/0 48.00,46.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to these group of trees.
confirm |goto Uldum/0 46.20,44.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this rock formation.
confirm |goto Uldum/0 40.80,49.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
In the middle of this rubble.
confirm |goto Uldum/0 40.20,43.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this very little doorway with a triangle on it.
confirm |goto Uldum/0 40.00,44.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this large pillar and wall with birds on it.
confirm |goto Uldum/0 40.00,38.60
_
If you found the correct figurine, click here |confirm |next "camel"
step
At the bottom of these stairs.
confirm |goto Uldum/0 32.60,47.80
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to the Pile of bones and this small cliff.
confirm |goto Uldum/0 32.00,45.00
_
If you found the correct figurine, click here |confirm |next "camel"
step
Next to this wagon with items inside it.
confirm |goto Uldum/0 25.40,51.20
_
If you found the correct figurine, click here |confirm |next "camel"
step
If you still have not found the figurine, click here to start over. Remember, this has a low chance of spawning.
confirm |next "start"
step
label "camel"
kill Dormus the Camel-Hoarder |n
collect 1 Reins of the Grey Riding Camel##63046 |n
_
learnmount Grey Riding Camel##88750 |use Reins of the Grey Riding Camel##63046
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dungeon Mounts\\Amani Battle Bear",{
keywords={"amani","battle","bear","ground","mount"},
mounts={98204},
patch='unknown',
mounttype='Ground',
model={38261},
description="This guide will help you acquire the Amani Battle Bear mount.",
},[[
step
|goto Ghostlands 82.00,64.30 |n
Enter the swirling portal to Zul'Aman. |goto Zul'Aman |noway|c
step
label "start"
In order to get the Amani Battle Bear you will need to save all 4 sacrifices in the time you are given.
In order to do this kill the bosses in the following order: Akil'zon, Nalorakk, Jan'alai, and finally Halazzi.
Both Akil'zon and Nalorakk grant you 5 minutes of extra time to complete your task, this means you have 25 minutes at most to kill all 4 bosses.
|confirm
step
Once Halazzi has died free Kasha from her cage and wait for her to blow up pots around the room, the final pot will hold Kasha's bag.
|confirm
step
click Kasha's Bag##186672
collect 1 Amani Battle Bear##69747
|tip As long as you saved all 4 sacrifices this is a guaranteed drop.
step
learnmount Amani Battle Bear##98204 |use Amani Battle Bear##69747
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dungeon Mounts\\Raven Lord",{
keywords={"raven","lord","ground","mount"},
mounts={41252},
patch='30008',
mounttype='Ground',
model={21427},
description="This guide will help you acquire the Raven Lord mount.",
},[[
step
|goto Terokkar Forest,44.90,65.60 |n
Enter _Heroic Sethekk Halls_ here |goto Sethekk Halls |noway |c
|tip To change an instance to heroic mode: right click your portait and hover over "Dungeon Difficulty", click on 5 Player (Heroic). You should see the entrance portal change into a giant skull.
step
Traverse through Sethekk Halls
|goto Sethekk Halls,48.70,95.00 |n
Go up the stairs here |goto Sethekk Halls,48.70,95.00,0.50 |noway |c
step
kill Anzu##23035
collect 1 Reins of the Raven Lord##32768 |goto Sethekk Halls 32.10,54.80
step
|use Reins of the Raven Lord##32768
Learn the "Raven Lord" Mount |learnmount Raven Lord##41252
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dungeon Mounts\\Rivendare's Deathcharger",{
keywords={"rivendare's","deathcharger","skeletal","warhorse","ground","mount"},
mounts={17481},
patch='30003',
mounttype='Ground',
model={16937},
description="This guide will help you acquire the Rivendare's Deathcharger mount.",
},[[
step
|goto Eastern Plaguelands,43.40,19.50 |n
_Click_ on this _gate_, then, run in further to enter _Stratholme_ |goto Stratholme |noway |c
step
_Traverse_ though the _Stratholme_ instance
|goto Stratholme,37.10,19.90
|tip To get to this point you must kill all the bosses and all of the mobs inside the buildings behind the bosses to get to the Slaughterhouse.
kill Lord Aurius Rivendare##45412
collect 1 Deathcharger's Reins##13335
|tip This has a .8% drop rate, do this everyday to have a higher chance of obtaining it!
|tip If you want, you can go outside the instance and reset it. To reset an instance, right click your portrait and click "Reset all instances". You can then kill this boss again for another chance at the mount.
step
learnmount Rivendare's Deathcharger##17481 |use Deathcharger's Reins##13335
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dungeon Mounts\\Swift White Hawkstrider",{
keywords={"swift","white","hawkstrider","ground","mount"},
mounts={46628},
patch='20400',
mounttype='Ground',
model={19483},
description="This guide will help you acquire the Swift White Hawkstrider mount.",
},[[
step
|goto Isle of Quel'Danas,61.10,30.80 |n
Enter _Heroic Magisters' Terrace_ here |goto Magisters' Terrace |noway |c
|tip To change an instance to heroic mode: right click your portait and hover over "Dungeon Difficulty", click on 5 Player (Heroic). You should see the entrance portal change into a giant skull.
step
Traverse through Magisters' Terrace
|goto Magisters' Terrace,84.30,46.00 |n
Go down the ramp here |goto Magisters' Terrace,84.30,46.00,0.50 |noway |c
step
kill Kael'thas Sunstrider##24664
collect 1 Reins of the Swift White Hawkstrider##35513 |goto Magisters' Terrace 6.90,51.00
|tip This has a 4% drop rate, do this everyday to have a higher chance of obtaining it!
step
learnmount Swift White Hawkstrider##46628 |use Reins of the Swift White Hawkstrider##35513
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dungeon Mounts\\Swift Zulian Panther and Armored Razzashi Raptor",{
keywords={"swift","zulian","panther","armored","razzashi","raptor","ground","mount"},
mounts={96499,96491},
patch='unknown',
mounttype='Ground',
model={37799},
description="This guide will help you acquire the Swift Zulian Panther and Armored Razzashi Raptor mount.",
},[[
step
label "start0"
You can either use the Dungeon Finder or get a group of friends to complete Heroic Difficulty Zul'Gurub.
Click here for the Swift Zulian Panther |next "panther0" |confirm
Click here for the Armored Razzashi Raptor |next "raptor0" |confirm
step
label "panther0"
Traverse Zul'Gurub and kill High Priestess Kilnara
collect 1 Swift Zulian Panther##68824 |tip This has an incredibly low chance of dropping. (Less than 1%)
Click here to return to the beginning |next "start0" |confirm
Click here if you have both mounts |next "end0" |confirm
step
label "raptor0"
Traverse Zul'Gurub and kill Bloodlord Mandokir
collect 1 Armored Razzashi Raptor##68823
|tip This has an incredibly low chance of dropping. (Less than 1%)
Click here to return to the beginning |next "start0" |confirm
Click here if you have both mounts |next "end0" |confirm
step
label "end0"
learnmount Swift Zulian Panther##96499 |use Swift Zulian Panther##68824
learnmount Armored Razzashi Raptor##96491 |use Armored Razzashi Raptor##68823
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Dungeon Mounts\\Wooly Mammoth",{
keywords={"wooly","mammoth","ground","mount"},
mounts={59793},
patch='30003',
mounttype='Ground',
model={26424},
description="This guide will help you acquire the Wooly Mammoth mount.",
},[[
step
talk Mei Francis##32216
buy Reins of the Wooly Mammoth##44231 |goto Dalaran/1 58.11,42.09 |or
'|complete hasmount(59793) |or
step
use the Reins of the Wooly Mammoth##44231
Learn the "Wooly Mammoth" Mount |learnmount Wooly Mammoth##59793
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Event Mounts\\Brewfest\\Brewfest Rams",{
keywords={"brewfest","ram","swift","ground","mount"},
mounts={24368},
patch='40304',
mounttype='unknown',
model={22350},
description="This guide will help you acquire the Swift Brewfest Ram mount.",
},[[
step
This pet can only be obtained during the Brewfest event
It can be purchased for 100g
confirm
step
talk Driz Tumblequick##24510
buy Swift Brewfest Ram##33977 |goto Durotar 42.60,17.60
buy Brewfest Ram##33976 |goto Durotar 42.60,17.60
step
learnmount Swift Brewfest Ram##24368 |use Swift Brewfest Ram##33977
learnmount Brewfest Ram##23588 |use Swift Brewfest Ram##33976
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Event Mounts\\Brewfest\\Great Brewfest Kodo",{
keywords={"great","brewfest","kodo","ground","mount"},
mounts={49379},
patch='20403',
mounttype='Ground',
model={24757},
description="This guide will help you acquire the Swift Brewfest Kodo mount.",
},[[
step
This pet can only be obtained during the Brewfest event
Use the _Dungeon Finder_ to go to the _World Event Dungeon - Coren Direbrew_ |goto Blackrock Depths |noway |c
step
kill Coren Direwbrew##23872
collect 1 Keg-Shaped Treasure Chest##54535
|tip This will appear in your bags once you kill Coren Direbrew and can only be won once a day
use Keg-Shaped Treasure Chest##54535
collect 1 Great Brewfest Kodo##37828
|tip This mount has a low chance of dropping. (4%)
step
learnmount Great Brewfest Kodo##49379 |use Great Brewfest Kodo##37828
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Event Mounts\\Darkmoon Faire\\Moonfang",{
keywords={"moonfang","darkmoon","faire","ground","mount"},
display="49249",
mounts={145133},
patch='54000',
mounttype='unknown',
description="This guide will help you acquire the Shimmering Moonstone mount.",
},[[
step
You can only obtain this mount when the Darkmoon Faire is in town.
This pet drops from a _Rare Spawn_ on the Darkmoon Island. You will have to kill the mobs around the spawn point if _Moonfang_ isn't already there.
confirm
step
kill Moonfang##71992+
collect Shimmering Moonstone##101675 |goto Darkmoon Island/0 40.00,45.50
step
Use the _Shimmering Moonstone_ in your bags |use Shimmering Moonstone##101675
learnmount Moonfang##145133
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Event Mounts\\Love is in the Air\\Swift Lovebird",{
keywords={"swift","lovebird","tallstrider","ground","mount"},
mounts={102350},
patch='43000',
mounttype='Ground',
model={1961},
description="This guide will help you acquire the Swift Lovebird mount.",
},[[
step
This pet can only be obtained during the Love is in the Air event
It can be purchased for 270 Love Tokens
|tip See Love is in the Air Events guide
confirm
step
talk Lovely Merchant##37674
buy Swift Lovebird##72146 |goto Orgrimmar 53.10,77.00
step
learnmount Swift Lovebird##102350 |use Swift Lovebird##72146
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Event Mounts\\Noblegarden\\Swift Springstrider",{
keywords={"swift","springstrider","tallstrider","ground","mount"},
mounts={102349},
patch='43000',
mounttype='Ground',
model={1221},
description="This guide will help you acquire the Swift Springstrider mount.",
},[[
step
Thie pet can only be obtained during the Noblegarden event
It can be purchased for 500 Noblegarden Chocolate or found in a Brightly Colored Egg |tip See Noblegarden Events guide
confirm
step
talk Noblegarden Merchant##32837
buy 1 Swift Springstrider##72145 |goto Mulgore 47.10,59.90
step
learnmount Swift Springstrider##102349 |use Swift Springstrider##72145
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Hawkstrider Mounts",{
keywords={"swift","green","pink","purple","black","blue","red","hawkstrider","ground","mount"},
mounts={35025,33660,35027,35022,35020,35018,34795},
patch='30202',
mounttype='Ground',
model={19482},
description="This guide will help you acquire the Swift Green Hawkstrider, Swift Pink Hawkstrider, Swift Purple Hawkstrider, Black Hawkstrider, Blue Hawkstrider, Purple Hawkstrider, and Red Hawkstrider mounts.",
},[[
step
#include main_rep_mount,rep="Silvermoon City",tabard="SCTabard"
only Orc,Troll,Undead,Tauren,Goblin
step
talk Winaestra##16264
buy 1 Swift Green Hawkstrider##29223 |goto 61.00,54.60
buy 1 Swift Pink Hawkstrider##28936 |goto 61.00,54.60
buy 1 Swift Purple Hawkstrider##29224 |goto 61.00,54.60
buy 1 Black Hawkstrider##29221 |goto 61.00,54.60
buy 1 Blue Hawkstrider##29220 |goto 61.00,54.60
buy 1 Purple Hawkstrider##29222 |goto 61.00,54.60
buy 1 Red Hawkstrider##28927 |goto 61.00,54.60
step
learnmount Swift Green Hawkstrider##35025 |use Swift Green Hawstrider##29223
learnmount Swift Pink Hawkstrider##33660 |use  Swift Pink Hawkstrider##28936
learnmount Swift Purple Hawkstrider##35027 |use  Swift Purple Hawstrider##29224
learnmount Black Hawkstrider##35022 |use Black Hawkstrider##29221
learnmount Blue Hawkstrider##35020 |use Blue Hawkstrider##29220
learnmount Purple Hawkstrider##35018 |use Purple Hawkstrider##29222
learnmount Red Hawkstrider##34795 |use Red Hawkstrider##28927
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Kodo Mounts",{
keywords={"great","brown","gray","white","kodo","ground","mount"},
mounts={64657,18989,23247,23249,23248,18990},
patch='60204',
mounttype='Ground',
model={14349},
description="This guide will help you acquire the Great Brown Kodo, Great Gray Kodo, Great White Kodo, Brown Kodo, Gray Kodo, and White Kodo mounts.",
},[[
step
#include main_rep_mount,rep="Thunder Bluff",tabard="TBTabard"
only BloodElf,Goblin,Undead,Troll,Orc,Pandaren
step
talk Harb Clawhoof##3685
buy 1 Great Brown Kodo##18794 |goto Mulgore,47.60,58.00
buy 1 Great Gray Kodo##18795 |goto Mulgore,47.60,58.00
buy 1 Great White Kodo##18793 |goto Mulgore,47.60,58.00
buy 1 Brown Kodo##15290 |goto Mulgore,47.60,58.00
buy 1 Gray Kodo##15277 |goto Mulgore,47.60,58.00
buy 1 White Kodo##46100 |goto Mulgore,47.60,58.00
step
learnmount Great Brown Kodo##23249 |use Great Brown Kodo##18794
learnmount Great Gray Kodo##23248 |use Great Gray Kodo##18795
learnmount Great White Kodo##23247 |use Great White Kodo##18793
learnmount Brown Kodo##18990 |use Brown Kodo##15290
learnmount Gray Kodo##18989 |use Gray Kodo##15290
learnmount White Kodo##64657 |use White Kodo##46100
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Raptor Mounts",{
keywords={"swift","blue","olive","orange","emerald","turqoise","violet","raptor","ground","mount"},
mounts={10799,10796,8395,23243,23242,23241},
patch='40300',
mounttype='Ground',
model={14344},
description="This guide will help you acquire the Swift Blue Raptor, Swift Olive Raptor, Swift Orange Raptor, Emerald Raptor, Turqoise Raptor, and Violet Raptor mounts.",
},[[
step
#include main_rep_mount,rep="Darkspear Trolls",tabard="DSTabard"
only BloodElf,Goblin,Undead,Tauren,Orc
step
Go to Durotar |goto Durotar |noway |c
step
talk Zjolnir##7952
buy 1 Swift Blue Raptor##18788 |goto Durotar 55.20,75.60
buy 1 Swift Olive Raptor##18789 |goto Durotar 55.20,75.60
buy 1 Swift Orange Raptor##18789 |goto Durotar 55.20,75.60
buy 1 Whistle of the Emerald Raptor##8588 |goto Durotar 55.20,75.60
buy 1 Whistle of the Turqoise##8591 |goto Durotar 55.20,75.60
buy 1 Whistle of the Violet Raptor##8592 |goto Durotar 55.20,75.60
step
learnmount Swift Blue Raptor##23241 |use Swift Blue Raptor##18788
learnmount Swift Olive Raptor##23242 |use Swift Olive Raptor##18789
learnmount Swift Orange Raptor##23243 |use Swift Orange Raptor##18789
learnmount Emerald Raptor##8395 |use Whistle of the Emerald Raptor##8588
learnmount Turqoise Raptor##10796 |use Whistle of the Turqoise Raptor##8591
learnmount Violet Raptor##10799 |use Whistle of the Violet Raptor##8592
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Skeletal Horse Mounts",{
keywords={"warhorse","horse","skeletal","green","ochre","purple","black","blue","brown","red","ground","mount"},
mounts={17465,66846,23246,64977,17463,17464,17462},
patch='unknown',
mounttype='Ground',
model={10720},
description="This guide will help you acquire the Green Skeletal Warhorse, Ochre Skeletal Warhorse, Purple Skeletal Warhorse, Black Skeletal Horse, Blue Skeletal Horse, Brown Skeletal Horse, and Red Skeletal Horse mounts.",
},[[
step
#include main_rep_mount,rep="Undercity",tabard="UCTabard"
only BloodElf,Troll,Orc,Tauren,Goblin
step
talk Zachariah Post##4731
buy 1 Green Skeletal Warhose##13334 |goto 61.80,51.80
buy 1 Ochre Skeletal Warhorse##47101 |goto 61.80,51.80
buy 1 Purple Skeletal Warhorse##18791 |goto 61.80,51.80
buy 1 Black Skeletal Horse##46308 |goto 61.80,51.80
buy 1 Blue Skeletal Horse##13332 |goto 61.80,51.80
buy 1 Brown Skeletal Horse##13333 |goto 61.80,51.80
buy 1 Red Skeletal Horse##13331 |goto 61.80,51.80
step
learnmount Green Skeletal Warhorse##17465 |use Green Skeletal Warhose##13334
learnmount Ochre Skeletal Warhorse##66846 |use Orche Skeletal Warhorse##47101
learnmount Purple Skeletal Warhorse##23246 |use Purple Skeletal Warhorse##18791
learnmount Black Skeletal Horse##64977 |use Black Skeletal Horse##46308
learnmount Blue Skeletal Horse##17463 |use Blue Skeletal Horse##13332
learnmount Brown Skeletal Horse##17464 |use Brown Skeletal Horse##13333
learnmount Red Skeletal Horses##17462 |use Red Skeletal Horse##13331
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Trike Mounts",{
keywords={"goblin","trike","turbo","turbo-trike","ground","mount"},
mounts={87091,87090},
patch='unknown',
mounttype='Ground',
model={35250},
description="This guide will help you acquire the Goblin Trike and Goblin Turbo-Trike mounts.",
},[[
step
#include main_rep_mount,rep="Bilgewater Cartel",tabard="BilgeTabard"
only BloodElf,Troll,Undead,Tauren,Orc
step
talk Kall Worthaton##48510
buy 1 Goblin Trike Key##62461 |goto Orgrimmar,36.10,86.40
buy 1 Goblin Turbo-Trike Key##62462 |goto Orgrimmar,36.10,86.40
step
learnmount Goblin Trike##87090 |use Goblin Trike Key##62461
learnmount Goblin Turbo-Trike##87091 |use Goblin Turbo-Trike Key##62462
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Faction Mounts\\Wolf Mounts",{
keywords={"wolf","swift","timber","gray","brown","black","dire","ground","mount"},
mounts={23250,23252,23251,64658,6654,6653,580},
patch='unknown',
mounttype='Ground',
model={30047},
description="This guide will help you acquire the Swift Timber Wolf, Swift Gray Wolf, Swift Brown Wolf, Brown Wolf, Black WOlf, Dire Wolf, and Timber Wolf mounts.",
},[[
step
#include main_rep_mount,rep="Orgrimmar",tabard="OrgTabard"
only BloodElf,Troll,Undead,Tauren,Goblin
step
talk Ogunaro Wolfrunner##3362
buy 1 Horn of the Swift Timber Wolf##18797 |goto Orgrimmar,61.20,34.00
buy 1 Horn of the Swift Gray Wolf##18798 |goto Orgrimmar,61.20,34.00
buy 1 Horn of the Swift Brown Wolf##18796 |goto Orgrimmar,61.20,34.00
buy 1 Horn of the Brown Wolf##5668 |goto Orgrimmar,61.20,34.00
buy 1 Horn of the Black Wolf##46099 |goto Orgrimmar,61.20,34.00
buy 1 Horn of the Dire Wolf##5665 |goto Orgrimmar,61.20,34.00
buy 1 Horn of the Timber Wolf##1132 |goto Orgrimmar,61.20,34.00
step
learnmount Swift Timber Wolf##23251 |use Horn of the Swift Timber Wolf##18797
learnmount Swift Gray Wolf##23252 |use Horn of the Swift Gray Wolf##18798
learnmount Swift Brown Wolf##23250 |use Horn of the Swift Brown Wolf##18796
learnmount Brown Wolf##6654 |use Horn of the Brown Wolf##5668
learnmount Black Wolf##64658 |use Horn of the Black Wolf##46099
learnmount Dire Wolf##6653 |use Horn of the Dire Wolf##5665
learnmount Timber Wolf##580 |use Horn of the Timber Wolf##1132
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Bear",{
keywords={"black","war","bear","ground","mount"},
mounts={60119},
patch='30002',
mounttype='Ground',
model={27819},
description="This guide will help you acquire the Black War Bear mount.",
},[[
step
Earn the _"For the Horde"_ achievement |achieve 619
|tip This mount is a reward for completing the "For the Horde!" achievement.
step
collect 1 Black War Bear##44224 |n
|tip When you complete the achievement check your in-game mailbox for the mount.
learnmount Black War Bear##60119 |use Black War Bear##44224
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Kodo",{
keywords={"black","war","kodo","ground","mount"},
mounts={22718},
patch='60001',
mounttype='Ground',
model={19027},
description="This guide will help you acquire the Black War Kodo mount.",
},[[
step
This mount costs Marks of Honor
|tip Marks of Honor have a chance to come from any form of PvP, except for non-specific open world PvP.
|tip Complete any battlegrounds, rated battlegrounds, rated arenas, PvP world quests, and world PvP areas such as Ashran.
collect 15 Mark of Honor##137642
|tip Marks of Honor are bind on account and shared between your characters.
step
talk Raider Bork##12796
buy 1 Black War Kodo##29466 |n |goto Orgrimmar,41.80,73.60
learnmount Black War Kodo##22718 |use Black War Kodo##29466
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Mammoth",{
keywords={"black","war","mammoth","ground","mount"},
mounts={59788},
patch='30008',
mounttype='Ground',
model={25450},
description="This guide will help you acquire the Black War Mammoth mount.",
},[[
step
This mount costs Marks of Honor
|tip Marks of Honor have a chance to come from any form of PvP, except for non-specific open world PvP.
|tip Complete any battlegrounds, rated battlegrounds, rated arenas, PvP world quests, and world PvP areas such as Ashran.
collect 15 Mark of Honor##137642
|tip Marks of Honor are bind on account and shared between your characters.
step
talk Stone Guard Mukar##32296
buy 1 Reins of the Black War Mammoth##44077 |n |goto Wintergrasp 51.60,17.60
|tip You cannot buy this mount unless your faction controls Wintergrasp.
learnmount Black War Mammoth##59788 |use Reins of the Black War Mammoth##44077
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Raptor",{
keywords={"black","war","raptor","ground","mount"},
mounts={22721},
patch='30008',
mounttype='Ground',
model={14388},
description="This guide will help you acquire the Black War Raptor mount.",
},[[
step
This mount costs Marks of Honor
|tip Marks of Honor have a chance to come from any form of PvP, except for non-specific open world PvP.
|tip Complete any battlegrounds, rated battlegrounds, rated arenas, PvP world quests, and world PvP areas such as Ashran.
collect 15 Mark of Honor##137642
|tip Marks of Honor are bind on account and shared between your characters.
step
talk Raider Bork##12796
buy 1 Whistle of the Black War Raptor##29472 |n |goto Orgrimmar,41.80,73.60
learnmount Black War Raptor##22721 |use Whistle of the Black War Raptor##29472
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Black War Wolf",{
keywords={"black","war","wolf","ground","mount"},
mounts={22724},
patch='40100',
mounttype='Ground',
model={21241},
description="This guide will help you acquire the Black War Wolf mount.",
},[[
step
This mount costs Marks of Honor
|tip Marks of Honor have a chance to come from any form of PvP, except for non-specific open world PvP.
|tip Complete any battlegrounds, rated battlegrounds, rated arenas, PvP world quests, and world PvP areas such as Ashran.
collect 15 Mark of Honor##137642
|tip Marks of Honor are bind on account and shared between your characters.
step
talk Raider Bork##12796
buy 1 Horn of the Black War Wolf##29469 |n |goto Orgrimmar,41.80,73.60
learnmount Black War Wolf##22724 |use Horn of the Black War Wolf##29469
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Dark War Talbuk",{
keywords={"dark","war","talbuk","ground","mount"},
mounts={34790},
patch='50300',
mounttype='Ground',
model={19303},
description="This guide will help you acquire the Dark War Talbuk mount.",
},[[
step
In order to obtain these mounts you must participate in PvP at Halaa in Nagrand
confirm
step
talk Chief Researcher Amereldine##18816
accept Oshu'gun Crystal Powder##10075 |goto Nagrand/0 41.20,44.20
turnin Oshu'gun Crystal Powder##10075 |goto Nagrand/0 41.20,44.20
collect 20 Halaa Research Token##26044 |goto Nagrand/0 41.20,44.20
|tip Gather Oshu'Gun Crystal Powder Samples from any hostile mob in Nagrand. You will need 200 total but can only have 100 at a time.
|tip When you get 100 Samples complete the quest "Oshu'gun Crystal Powder" until you have 20 Halaa Research Tokens.
step
collect 100 Halaa Battle Token##26045 |goto Nagrand/0 42.40,43.91
|tip In order to obtain Halaa Battle Tokens, you will need to defeat enemy players within or around Halaa.
step
talk Coreiel##21474
buy 1 Reins of the Dark War Talbuk##29228 |n |goto Nagrand/0 42.80,42.60
learnmount Dark War Talbuk##34790 |use Reins of the Dark War Talbuk##29228
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Dark Riding Talbuk",{
keywords={"dark","riding","talbuk","ground","mount"},
mounts={39316},
patch='50300',
mounttype='Ground',
model={21074},
description="This guide will help you acquire the Dark War Talbuk and Dark Riding Talbuk mounts.",
},[[
step
In order to obtain these mounts you must participate in PvP at Halaa in Nagrand
confirm
step
|tip Gather Oshu'Gun Crystal Powder Samples from any hostile mob in Nagrand. You will need 150 total but can only have 100 at a time.
|tip When you get 100 Samples complete the quest "Oshu'gun Crystal Powder" until you have 15 Halaa Research Tokens.
confirm
step
talk Chief Researcher Amereldine##18816
accept Oshu'gun Crystal Powder##10075 |goto Nagrand/0 41.20,44.20
turnin Oshu'gun Crystal Powder##10075 |goto Nagrand/0 41.20,44.20
collect 15 Halaa Research Token##26044 |goto Nagrand/0 41.20,44.20
step
collect 70 Halaa Battle Token##26045 |goto Nagrand/0 42.40,43.91
|tip In order to obtain Halaa Battle Tokens you will need to defeat enemy players within or around Halaa.
step
talk Coreiel##21474
buy 1 Reins of the Dark Riding Talbuk##28915 |n |goto Nagrand/0 42.80,42.60
learnmount Dark Riding Talbuk##39316 |use Reins of the Dark Riding Talbuk##28915
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Frostwolf Howler",{
keywords={"frostwolf","wolf","howler","ground","mount"},
mounts={23509},
patch='20300',
mounttype='Ground',
model={14776},
description="This guide will help you acquire the Frostwolf Howler mount.",
},[[
step
This mount costs Marks of Honor
|tip Marks of Honor have a chance to come from any form of PvP, except for non-specific open world PvP.
|tip Complete any battlegrounds, rated battlegrounds, rated arenas, PvP world quests, and world PvP areas such as Ashran.
collect 15 Mark of Honor##137642
|tip Marks of Honor are bind on account and shared between your characters.
step
talk Jorek Ironside##13219
buy 1 Horn of the Frostwolf Howler##19029 |n |goto Hillsbrad Foothills,58.00,33.60
learnmount Frostwolf Howler##23509 |use Frostwolf Howler##19029
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Red Skeletal Warhorse",{
keywords={"red","skeletal","warhorse","ground","mount"},
mounts={22722},
patch='40100',
mounttype='Ground',
model={10719},
description="This guide will help you acquire the Red Skeletal Warhorse mount.",
},[[
step
This mount costs Marks of Honor
|tip Marks of Honor have a chance to come from any form of PvP, except for non-specific open world PvP.
|tip Complete any battlegrounds, rated battlegrounds, rated arenas, PvP world quests, and world PvP areas such as Ashran.
collect 15 Mark of Honor##137642
|tip Marks of Honor are bind on account and shared between your characters.
step
talk Raider Bork##12796
buy 1 Red Skeletal Warhorse##29470 |n |goto Orgrimmar,41.80,73.60
learnmount Red Skeletal Warhorse##22722 |use Red Skeletal Warhorse##29470
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Player vs. Player Mounts\\Swift Warstrider",{
keywords={"swift","warstrider","war","strider","ground","mount"},
mounts={35028},
patch='20202',
mounttype='Ground',
model={20675},
description="This guide will help you acquire the Swift Warstrider mount.",
},[[
step
This mount costs Marks of Honor
|tip Marks of Honor have a chance to come from any form of PvP, except for non-specific open world PvP.
|tip Complete any battlegrounds, rated battlegrounds, rated arenas, PvP world quests, and world PvP areas such as Ashran.
collect 15 Mark of Honor##137642
|tip Marks of Honor are bind on account and shared between your characters.
step
talk Raider Bork##12796
buy 1 Swift Warstrider##34129 |n |goto Orgrimmar,41.80,73.60
learnmount Swift Warstrider##35028 |use Swift Warstrider##34129
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Profession Mounts\\Archaeology\\Fossilized Raptor",{
keywords={"fossilized","raptor","archaeology","ground","mount"},
mounts={84751},
patch='unknown',
mounttype='Ground',
model={34410},
description="This guide will help you acquire the Fossilized Raptor mount.",
},[[
step
This mount is a rare _Archaeology "Fossil"_ solve
talk Belloc Brightblade##47571 |goto Orgrimmar,49.10,70.50 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
confirm |only if default
step
Open your _world map_, find dig sites in _Kalimdor_ and _Eastern Kingdoms_, and go to them
|tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 3 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
You're looking for a _rare artifact_ in the _"Fossil"_ tab called _"Fossilized Raptor"_. Solve this Archaeology puzzle
collect 1 Fossilized Raptor##60954
step
learnmount Fossilized Raptor##84751 |use Fossilized Raptor##60954
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Profession Mounts\\Archaeology\\Ultramarine Qiraji Battle Tank",{
keywords={"silithid","bug","ground","mount"},
mounts={92155},
patch='unknown',
mounttype='Ground',
model={15678},
description="This guide will help you acquire the Ultramarine Qiraji Battle Tank mount.",
},[[
step
This mount is a _rare Archaeology "Tol'vir"_ solve
talk Belloc Brightblade##47571 |goto Orgrimmar,49.10,70.50 |only if skillmax("Archaeology")<1
skillmax Archaeology,75 |only if skillmax("Archaeology")<1
skill Archaeology,450
step
Open your _world map_, find dig sites in _Kalimdor_ and go to them
|tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 3 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
You're looking for a _rare artifact_ in the _"Tol'vir"_ tab called _"Scepter of Azj'Aqir"_. _Solve_ this Archaeology puzzle
|tip This is a very rare Archaeology solve. You might be doing archeology for a while.
collect 1 Scepter of Azj'Aqir##64883
step
learnmount Ultramarine Qiraji Battle Tank##92155 |use Scepter of Azj'Aqir##64883
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Profession Mounts\\Engineering\\Mechano-Hog",{
keywords={"chopper","motorcycle","mechano","mechano-hog","hog","engineering","ground","mount"},
mounts={55531},
patch='30001',
mounttype='Ground',
model={25871},
description="This guide will help you acquire the Mechano-Hog mount.",
},[[
step
Routing to the proper section. |next "engineer" |only if skill("Engineering")>=450
Routing to the proper section. |next "levelengineer" |only if skill("Engineering")<450 and skill("Engineering")>1
Routing to the proper section. |next "auctionhouse" |only if skill("Engineering")<1
step
label "levelengineer"
You will need at least _12500 gold_ to obtain this _mount_ |tip This will cost more gold if you do not farm for the required materials
Click here to proceed to the _Engineering_ guide. |next "Profession Guides\\Engineering\\Leveling Guides\\Northrend Engineering 1-75" |confirm |only if QC.guidesets["ProfessionsH"]
skill Northrend Engineering,75
Click here if you do not wish to make this mount yourself |confirm |next "auctionhouse"
step
label "engineer"
This will require you to be _exalted_ with _Horde Expedition_
_Exalted_ with _Horde Expedition_ |complete rep("Horde Expedition")>=Exalted |next |only if default
Click here if you do not wish to make this mount yourself |confirm |next "auctionhouse"
step
talk Gara Skullcrush##32565
buy 1 Schematic: Mechano-Hog##44502 |goto Borean Tundra,41.40,53.60
step
learn Mechano-Hog##60866 |use Schematic: Mechano-Hog##44502
step
label "auctionhouse"
You can either _buy_ these _items_ from the _Auction House_ or _farm_ them:
collect 12 Titansteel Bar##37663
collect 40 Handful of Cobalt Bolts##39681
collect 2 Arctic Fur##44128
step
map Sholazar Basin
path	20.50,63.50	21.00,74.50	29.00,86.00
path	40.00,88.50	45.90,87.80	59.00,87.00
path	59.70,81.30	63.00,67.10	53.30,62.20
path	47.20,73.00	39.30,75.50	33.50,75.90
path	35.80,67.60	35.20,54.70	34.30,48.00
path	35.40,37.50	29.70,38.40	23.00,49.40
path	20.80,56.30
Follow the proved path and mine around the nodes.
collect 792 Titanium Ore##36910
Save all Crystallize Fire, Earth and Shadow that you get.
collect 10 Crystallized Fire##37702 |n
collect 10 Crystallized Earth##37701 |n
collect 10 Crystallized Shadow##37703 |n
collect 12 Eternal Fire##36860 |n
collect 12 Eternal Earth##35624 |n
collect 12 Eternal Shadow##35627 |n
step
map Zul'Drak
path	31.90,39.20	41.50,41.60	47.60,40.10
path	54.70,37.00	56.10,47.90	59.20,60.00
path	60.20,74.80	54.90,74.50	45.30,76.50
path	45.00,84.90	37.20,78.80	28.30,69.50
path	23.60,50.80
collect 40 Cobalt Ore##36909
Save all Crystallize Fire, Earth and Shadow that you get.
collect 10 Crystallized Fire##37702 |n
collect 10 Crystallized Earth##37701 |n
collect 10 Crystallized Shadow##37703 |n
collect 12 Eternal Fire##36860 |n
collect 12 Eternal Earth##35624 |n
collect 12 Eternal Shadow##35627 |n
step
kill Deathbringer Revenant
collect 10 Crystallized Shadow##37703 |n |use Crystallized Shadow##37703
|tip Collect and use Crystallized Shadow.
collect 12 Eternal Shadow##35627 |goto Dragonblight 74.60,23.00
step
create Titanium Bar##55211,Mining,36 total |goto Stormwind City/0 63.00,37.00
step
create Cobalt Bar##49252,Mining,40 total
step
create Handful of Cobalt Bolts##56349,Engineering,20 total
step
Have an _Engineer friend_, or find an _Engineer_, to _purchase_ these _items_ from _Roxi Ramrocket_ in _K3, The Storm Peaks_: |only if skill("Engineering")<450
Purchase these _items_ from _Roxi Ramrocket_ in _K3, The Storm Peaks_: |only if skill("Engineering")>=450
talk Roxi Ramrocket##31247
buy 8 Goblin-Machined Piston##44501 |goto The Storm Peaks,40.60,84.80 |only if skill("Engineering")>=450
buy 1 Salvaged Iron Golem Parts##44499 |goto The Storm Peaks,40.60,84.80 |only if skill("Engineering")>=450
buy 1 Elementium-Plated Exhaust Pipe##44500 |goto The Storm Peaks,40.60,84.80 |only if skill("Engineering")>=450
collect 8 Goblin-Machined Piston##44501 |goto The Storm Peaks,40.60,84.80 |only if skill("Engineering")<450
collect 1 Salvaged Iron Golem Parts##44499 |goto The Storm Peaks,40.60,84.80 |only if skill("Engineering")<450
collect 1 Elementium-Plated Exhaust Pipe##44500 |goto The Storm Peaks,40.60,84.80 |only if skill("Engineering")<450
|tip Remember these items cost 12500 gold all together
step
Have the _Engineer_ create the _Mechano-Hog_ for you |only if skill("Engineering")<450
create Mechano-Hog##60866,Engineering,1 total |only if skill("Engineering")>=450
collect 1 Mechano-Hog##41508
step
learnmount Mechano-Hog##55531 |use Mechano-Hog##41508 |tip Get to the Choppa!
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Raid Mounts\\Flametalon of Alysrazor",{
keywords={"Flametalon","of","Alysrazor","mount","ground"},
mounts={101542},
patch='42000',
mounttype='Ground',
model={38783},
description="This guide will help you acquire the Pureblood Fire Hawk.",
},[[
step
This mount is drops of the boss Alysrazor within the Firelands raid.
|tip Kill the trash and the boss will come out.
kill Alysrazor##52530
collect 1 Flametalon of Alysrazor##71665 |goto Firelands/1 63.10,49.30
step
learnmount Flametalon of Alysrazor##101542 |use Flametalon of Alysrazor##71665
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Raid Mounts\\Fiery Warhorse",{
keywords={"fiery","warhorse","horse","karazhan","ground","mount"},
mounts={36702},
patch='30300',
mounttype='Ground',
model={19640},
description="This guide will help you acquire the Fiery Warhorse mount.",
},[[
step
This will _require_ you to be in a _raid group_.
To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
You can easily aquire this mount with _2-3 other level 30+_ people in your group
confirm
step
goto Deadwind Pass,47.00,74.80 |n
Enter _Karazhan_ here |goto Karazhan |noway |c
step
_Traverse_ through _Karazhan_
|tip Make sure you kill every mob here, as they will attack you if they're are not dead and you engage Attumen
kill Attumen the Huntsman##16152
collect 1 Fiery Warhorse's Reins##30480 |goto Karazhan,45.70,83.30
|tip This has a .9% drop rate, be sure to come back here every week to have a better chance of obtaining it!
step
learnmount Fiery Warhorse##36702 |use Fiery Warhorse's Reins##30480
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Raid Mounts\\Grand Black War Mammoth",{
keywords={"grand","black","war","mammoth","vault","archavon","ground","mount"},
mounts={61467},
patch='30003',
mounttype='Ground',
model={27241},
description="This guide will help you acquire the Grand Black War Mammoth mount.",
},[[
step
This will _require_ you to be in a _raid group_.
To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
You can easily aquire this mount with _5-6 other level 30+_ people in your group
You cannot obtain this mount unless your faction owns Wintergrasp.
confirm
step
_Traverse_ through _Vault of Archavon_
kill Archavon the Stone Watcher##31125
kill Toravon the Ice Watcher##38433
kill Emalon the Storm Watcher##33993
kill Koralon the Flame Watcher##35013
collect 1 Reins of the Grand Black War Mammoth##44083 |goto Vault of Archavon 50.00,39.20
|tip This has an extremely low drop rate off each boss (Less than 1%)
step
learnmount Grand Black War Mammoth##61467 |use Reins of the Grand Black War Mammoth##44083
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Raid Mounts\\Qiraji Mounts",{
keywords={"blue","green","red","yellow","qiraji","resonating","crystal","battle","tank","ahn'qiraj","fallen","kingdom","ground","mount"},
mounts={25953,26056,26054,26055},
patch='30300',
mounttype='Ground',
model={15681},
description="This guide will help you acquire the Blue Qiraji Battle Tank, Green Qiraji Battle Tank, Red Qiraji Battle Tank, and Yellow Qiraji Battle Tank mounts.",
},[[
step
This will _require_ you to be in a _raid group_.
To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
You can easily aquire these mounts with _2-3 other level 25+_ people in your group
confirm
step
goto Ahn'Qiraj: The Fallen Kingdom,46.90,7.70 |n
Enter _Temple of Ahn'Qiraj_ here |goto Ahn'Qiraj |noway |c
step
Traverse through Temple of Ahn'Qiraj
Kill any and all mobs in the instance
collect 1 Blue Qiraji Resonating Crystal##21218
collect 1 Green Qiraji Resonating Crystal##21323
collect 1 Red Qiraji Resonating Crystal##21321 |tip Why? Because It's Red!
collect 1 Yellow Qiraji Resonating Crystal##21324
step
learnmount Blue Qiraji Battle Tank##25953 |use Blue Qiraji Resonating Crystal##21218
learnmount Green Qiraji Battle Tank##26056 |use Green Qiraji Resonating Crystal##21323
learnmount Red Qiraji Battle Tank##26054 |use Red Qiraji Resonating Crystal##21321
learnmount Yellow Qiraji Battle Tank##26055 |use Yellow Qiraji Resonating Crystal##21324
|tip You cannot use these outside of this raid instance, but these count towards your mount count
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Camel Mounts",{
keywords={"camel","brown","riding","tan","ramkahen","exalted","ground","mount"},
mounts={88748,88749},
patch='unknown',
mounttype='Ground',
model={37492},
description="This guide will help you acquire the Brown Riding Camel and Tan Riding Camel mounts.",
},[[
step
#include main_rep_mount,rep="Ramkahen",tabard="RamkahenTabard"
Click here to refer to the Ramkahen reputation guide. |next "Reputation Guides\\Cataclysm Reputations\\Ramkahen" |only if QC.guidesets["ReputationsH"]
|tip This will take you through the quests and any available daily.
step
talk Blacksmith Abasi##48617
buy 1 Reins of the Brown Riding Camel##63044 |goto Uldum,54.00,33.30
buy 1 Reins of the Tan Riding Camel##63045 |goto Uldum,54.00,33.30
step
learnmount Brown Riding Camel##88748 |use Reins of the Brown Riding Camel##63044
learnmount Tan Riding Camel##88749 |use Reins of the Tan Riding Camel##63045
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Ice Mammoth and Grand Ice Mammoth",{
keywords={"grand","ice","mammoth","the","sons","of","hodir","exalted","ground","mount"},
achieveid={2082,2083},
patch='30008',
mounts={61469},
patch='30003',
mounttype='Ground',
model={27239},
description="This guide will help you acquire the Ice Mammoth and Grand Ice Mammoth mounts.",
},[[
step
Proceeding to Prequests next step |next |only if rep('The Sons of Hodir')<=Friendly
Proceeding to Honored Dailies |next "Daily2" |only if rep('The Sons of Hodir')==Honored
Proceeding to Revered Dailies |next "Daily3" |only if rep('The Sons of Hodir')==Revered
Proceeding to Exalted Mounts |next "BuyMount" |only if rep('The Sons of Hodir')==Exalted
step
#include "Hodir_Quests"
#include "Hodir_Dailies"
step
label "BuyMount"
talk Lillehoff##32540
buy 1 Reins of the Ice Mammoth##44080 |goto The Storm Peaks 66.00,61.40
buy 1 Reins of the Grand Ice Mammoth##43961 |goto The Storm Peaks 66.00,61.40
step
learnmount Ice Mammoth##59799 |use Reins of the Ice Mammoth##43958
learnmount Grand Ice Mammoth##61470 |use Reins of the Grand Ice Mammoth##43961
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Kor'kron Annihilator",{
keywords={"korkron","kor'kron","annihilator","ground","mount","guid","exalted"},
mounts={93644},
patch='unknown',
mounttype='Ground',
model={37138},
description="This guide will help you acquire the Kor'kron Annihilator mount.",
},[[
step
#include "misc_rep_mount",rep="Guild"
Your _guild_ needs to be _level 25_
_Guild Level 25_ |achieve 5492
step
talk Goram##46572
buy 1 Reins of the Kor'kron Annihilator##67107 |goto Orgrimmar,48.38,75.79
step
learnmount Kor'kron Annihilator##93644 |use Reins of the Kor'kron Annihilator##67107
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Spectral Wolf",{
keywords={"spectral","wolf","exalted","hellscream's","reach","hellscreams","tol","barad","ground","mount"},
mounts={92232},
patch='unknown',
mounttype='Ground',
model={37159},
description="This guide will help you acquire the Spectral Wolf mount.",
},[[
step
label "menu"
This will require that you be exalted with the Hellscream's Reach.
earn 165 Tol Barad Commendation##391
_Exalted_ with Hellscream's Reach |complete rep("Hellscream's Reach")==Exalted
Click here to move on to the dailies. |confirm |next
Spectral Wolf costs 165 Tol Barad Commendations.
|next "exalted"
step
#include "dailies_rep_mount",rep="Hellscream's Reach"
earn 165 Tol Barad Commendation##391
|tip This is for the Wolf
|next "exalted" |only if rep("Hellscream's Reach")==Exalted
Click to use the Dailies Guide |confirm
Click here to purchase your mount |confirm |only if _G.select(2,_G.GetCurrencyInfo(391))>165
step
label "hellscream"
You will only be able to accept a total of 6 quests in the following guide steps.
confirm
step
talk 3rd Officer Kronkar##48360
accept A Sticky Task##28684 |goto Tol Barad Peninsula,55.20,81.30
accept Boosting Morale##28680 |goto Tol Barad Peninsula,55.20,81.30
accept Captain P. Harris##28678 |goto Tol Barad Peninsula,55.20,81.30
accept Rattling Their Cages##28679 |goto Tol Barad Peninsula,55.20,81.30
accept Shark Tank##28681 |goto Tol Barad Peninsula,55.20,81.30
accept Thinning the Brood##28683 |goto Tol Barad Peninsula,55.20,81.30
step
talk Commander Larmash##48358
accept Claiming The Keep##28682 |goto Tol Barad Peninsula 53.50,80.60
accept Leave No Weapon Behind##28685 |goto Tol Barad Peninsula 53.50,80.60
accept Not The Friendliest Town##28686 |goto Tol Barad Peninsula 53.50,80.60
accept Teach A Man To Fish.... Or Steal##28687 |goto Tol Barad Peninsula 53.50,80.60
accept Walk A Mile In Their Shoes##28721 |goto Tol Barad Peninsula 53.50,80.60
step
talk Captain Prug##48363
accept Finish The Job##28693 |goto Tol Barad Peninsula 54.90,79.30
accept First Lieutenant Connor##28691 |goto Tol Barad Peninsula 54.90,79.30
accept Magnets, How Do They Work?##28692 |goto Tol Barad Peninsula 54.90,79.30
accept Salvaging the Remains##28690 |goto Tol Barad Peninsula 54.90,79.30
accept The Forgotten##28689 |goto Tol Barad Peninsula 54.90,79.30
step
talk Private Sarlosk##48361
accept Bomb's Away!##28696 |goto Tol Barad Peninsula 55.80,78.50
accept Cannonball!##28698 |goto Tol Barad Peninsula 55.80,78.50
accept Ghostbuster##28697 |goto Tol Barad Peninsula 55.80,78.50
accept Taking the Overlook Back##28700 |goto Tol Barad Peninsula 55.80,78.50
accept WANTED: Foreman Wellson##28695 |goto Tol Barad Peninsula 55.80,78.50
accept Watch Out For Splinters!##28694 |goto Tol Barad Peninsula 55.80,78.50
step
Follow the path up |goto Tol Barad Peninsula 74.30,42.80,0.50 |c
stickystart "largoghost"
step
kill Commander Largo |q 28700/1 |goto Tol Barad Peninsula 78.60,42.00
|tip He's at the top of the tower.
step
label "largoghost"
kill Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+, Cursed Stallion##46645+
Slay 14 Largo's Overlook Ghosts |q 28697/1 |goto Tol Barad Peninsula 78.20,49.00
Click Stacks of Cannonballs
|tip They look like piles of cannonballs shaped like pyramids on the ground around this area.
collect 4 Stack of Cannonballs##62818 |q 28698/1 |goto Tol Barad Peninsula 78.20,49.00
step
Click Strings of Fish
|tip They look like small fish hanging from simple wooden structures on the docks around this area.
collect 22 Rustberg Seabass##63047 |q 28687/1 |goto Tol Barad Peninsula 69.30,23.10
step
kill Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
kill 14 Rustberg Village Residents |q 28686/1 |goto Tol Barad Peninsula 67.60,37.10
step
kill 12 Darkwood Lurker |q 28683/1 |goto Tol Barad Peninsula 54.20,47.00
kill Darkwood Broodmother##46507+
collect 4 Sticky Silk Gland##62803 |q 28684/1 |goto Tol Barad Peninsula 54.20,47.00
step
kill Captain P. Harris |q 28678/1 |goto Tol Barad Peninsula 47.90,8.10
|tip He's walking around on this broken boat.
step
kill Tank |q 28681/1 |goto Tol Barad Peninsula 49.40,19.80
|tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help.
Click Barrels of Southsea Rum
|tip They look like barrels underwater around this area.
collect 6 Barrel of Southsea Rum##62810 |q 28680/1 |goto Tol Barad Peninsula 49.40,19.80
step
kill 8 Shipwrecked Sailor |q 28679/1 |goto Tol Barad Peninsula 49.00,29.40
step
kill Keep Lord Farson |q 28682/1 |goto Tol Barad Peninsula 36.10,27.30
|tip He's upstairs in the fort.
step
talk Farson Hold Prisoner##48308
Tell you're here to help him escape
Escort the Farson Prisoner |q 28721/1 |goto Tol Barad Peninsula 37.80,29.10
|tip Follow the Farson Hold Prisoner and protect him.
step
Click Racks of Rifles
|tip They look like wooden stands with guns on them around this area.
collect 12 Rusty Rifle##62921 |q 28685/1 |goto Tol Barad Peninsula 41.20,35.80
step
kill Foreman Wellson |q 28695/1 |goto Tol Barad Peninsula 27.20,47.70
step
Click a Cannon |tip They look like black cannons on this small dock.
Shoot the boats
Destroy 10 Wellson Supply Boats |q 28696/1 |goto Tol Barad Peninsula 22.20,36.30
step
kill Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
collect 15 Shipyard Lumber##62811 |q 28694/1 |goto Tol Barad Peninsula 30.10,43.90
step
kill 5 Restless Soldier |q 28693/1 |goto Tol Barad Peninsula 40.20,57.90
Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
Click Siege Scraps
|tip They look like metal objects on the ground that appear after your use your Magnatized Scrap Collector.
collect 7 Siege Engine Scrap##52285 |q 28692/1 |goto Tol Barad Peninsula 40.20,57.90
stickystart "cursesoul"
step
kill First Lieutenant Connor |q 28691/1 |goto Tol Barad Peninsula 38.40,77.60
|tip He's a big skeleton that walks around this area, so you may need to search for him.
step
label "cursesoul"
kill Wandering Soul##46586+, Forgotten Ghoul##46569+
collect 9 Cursed Femur##62808 |q 28690/1 |goto Tol Barad Peninsula 38.10,71.50
Click Forgotten Soldier's Tombstones
|tip They look like taller and slimmer gravestones around this area.
Release 6 Tortured Souls |q 28689/1 |goto Tol Barad Peninsula 38.10,71.50
step
talk 3rd Officer Kronkar##48360
turnin A Sticky Task##28684 |goto Tol Barad Peninsula 55.20,81.30
turnin Boosting Morale##28680 |goto Tol Barad Peninsula 55.20,81.30
turnin Captain P. Harris##28678 |goto Tol Barad Peninsula 55.20,81.30
turnin Rattling Their Cages##28679 |goto Tol Barad Peninsula 55.20,81.30
turnin Shark Tank##28681 |goto Tol Barad Peninsula 55.20,81.30
turnin Thinning the Brood##28683 |goto Tol Barad Peninsula 55.20,81.30
step
talk Commander Larmash##48358
turnin Claiming The Keep##28682 |goto Tol Barad Peninsula 53.50,80.60
turnin Leave No Weapon Behind##28685 |goto Tol Barad Peninsula 53.50,80.60
turnin Not The Friendliest Town##28686 |goto Tol Barad Peninsula 53.50,80.60
turnin Teach A Man To Fish.... Or Steal##28687 |goto Tol Barad Peninsula 53.50,80.60
turnin Walk A Mile In Their Shoes##28721 |goto Tol Barad Peninsula 53.50,80.60
step
talk Captain Prug##48363
turnin Finish The Job##28693 |goto Tol Barad Peninsula 54.90,79.30
turnin First Lieutenant Connor##28691 |goto Tol Barad Peninsula 54.90,79.30
turnin Magnets, How Do They Work?##28692 |goto Tol Barad Peninsula 54.90,79.30
turnin Salvaging the Remains##28690 |goto Tol Barad Peninsula 54.90,79.30
turnin The Forgotten##28689 |goto Tol Barad Peninsula 54.90,79.30
step
talk Private Sarlosk##48361
turnin Bomb's Away!##28696 |goto Tol Barad Peninsula 55.80,78.50
turnin Cannonball!##28698 |goto Tol Barad Peninsula 55.80,78.50
turnin Ghostbuster##28697 |goto Tol Barad Peninsula 55.80,78.50
turnin Taking the Overlook Back##28700 |goto Tol Barad Peninsula 55.80,78.50
turnin WANTED: Foreman Wellson##28695 |goto Tol Barad Peninsula 55.80,78.50
turnin Watch Out For Splinters!##28694 |goto Tol Barad Peninsula 55.80,78.50
|next "menu" |only if rep("Hellscreams' Reach")<=Revered
|next "exalted" |only if rep("Hellscreams' Reach")<=Exalted
step
label "baradin"
These daily quests will only be available if the Horde faction currently controls Tol Barad.
confirm
step
You will only be able to accept a total of 6 quests in the following guide steps.
confirm
step
talk Commander Zanoth##48069
accept A Huge Problem##28657 |goto Tol Barad,50.90,49.70
accept Swamp Bait##28658 |goto Tol Barad,50.90,49.70
accept The Leftovers##28659 |goto Tol Barad,50.90,49.70
step
talk Drillmaster Razgoth##48070
accept D-Block##28663 |goto Tol Barad 51.50,49.70
accept Svarnos##28664 |goto Tol Barad 51.50,49.70
accept Cursed Shackles##28665 |goto Tol Barad 51.50,49.70
step
talk Private Garnoth##48071
accept Clearing the Depths##28660 |goto Tol Barad 51.50,49.70
accept Learning From The Past##28662 |goto Tol Barad 51.50,49.70
accept The Imprisoned Archmage##28661 |goto Tol Barad 51.50,49.70
step
talk Staff Sergeant Lazgar##48062
accept Food From Below##28670 |goto Tol Barad 51.50,49.70
accept Prison Revolt##28668 |goto Tol Barad 51.50,49.70
accept The Warden##28669 |goto Tol Barad 51.50,49.70
stickystart "curseshackle"
step
Enter the underground jail |goto Tol Barad 42.70,39.10 < 5 |walk
kill Svarnos##47544+
collect Svarnos' Cursed Collar##63143 |q 28664/1 |goto Tol Barad 48.30,30.70
step
label "curseshackle"
kill Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+
Slay 10 Demons |q 28663/1 |goto Tol Barad 44.40,30.50
Click Cursed Shackles
|tip They look like gray metal ball and chains laying on the ground all around this area.
collect 8 Cursed Shackles##63149 |q 28665/1 |goto Tol Barad 44.40,30.50
step
kill Baradin Crocolisk##47591+
collect 8 Crocolisk Hide##63103 |q 28658/1 |goto Tol Barad 42.10,41.80
step
Enter the underground jail |goto Tol Barad 44.00,69.20 < 5 |walk
kill Warden Silva##48036
collect Warden's Keys##63309 |q 28669/1 |goto Tol Barad 37.50,71.70
step
kill Imprisoned Worker##47550+, Exiled Mage##47552+
Slay 10 Prisoners |q 28668/1 |goto Tol Barad 40.90,78.20
Click Crates of Cellblock Rations
|tip They look like slim square wooden boxes on the ground around this area.
collect 12 Cellblock Ration##63315 |q 28670/1 |goto Tol Barad 40.90,78.20
step
Enter the underground jail |goto Tol Barad 60.80,50.10 < 5 |walk
kill Archmage Galus##47537
collect Archmage Galus' Staff##63033 |q 28661/1 |goto Tol Barad 56.80,54.80
step
kill Captive Spirit##47531+, Ghastly Convict##47590+
Slay 9 Ghosts |q 28660/1 |goto Tol Barad 51.40,49.50
Click Dusty Prison Journals
|tip They are books laying on the ground around this area.
collect 4 Dusty Prison Journal##63034 |q 28662/1 |goto Tol Barad 51.40,49.50
step
kill Alliance Mage Infantry##47598+, Alliance Hunter Infantry##47595+, Alliance Paladin Infantry##47600+, Alliance Warrior Infantry##47599+
kill 12 Alliance Infantry |q 28659/1 |goto Tol Barad,35.80,67.80
step
kill Problim |q 28657/1 |goto Tol Barad 52.80,36.70
|tip He's a tall ogre that walks along the road that surrounds Baradin Hold, so you may need to search for him.  He's elite, and the quest is a group quest, so you may need help killing him.
step
talk Commander Zanoth##48069
turnin A Huge Problem##28657 |goto Tol Barad 50.90,49.70
turnin Swamp Bait##28658 |goto Tol Barad 50.90,49.70
turnin The Leftovers##28659 |goto Tol Barad 50.90,49.70
step
talk Drillmaster Razgoth##48070
turnin D-Block##28663 |goto Tol Barad 51.50,49.70
turnin Svarnos##28664 |goto Tol Barad 51.50,49.70
turnin Cursed Shackles##28665 |goto Tol Barad 51.50,49.70
step
talk Private Garnoth##48071
turnin Clearing the Depths##28660 |goto Tol Barad 51.50,49.70
turnin Learning From The Past##28662 |goto Tol Barad 51.50,49.70
turnin The Imprisoned Archmage##28661 |goto Tol Barad 51.50,49.70
step
talk Staff Sergeant Lazgar##48062
turnin Food From Below##28670 |goto Tol Barad 51.50,49.70
turnin Prison Revolt##28668 |goto Tol Barad 51.50,49.70
turnin The Warden##28669 |goto Tol Barad 51.50,49.70
|next "menu" |only if rep("Hellscreams' Reach")<=Revered
|next "exalted" |only if rep("Hellscreams' Reach")<=Exalted
step
label "exalted"
talk Pogg##48531
earn 165 Tol Barad Commendation##391 |goto Tol Barad Peninsula,54.60,81.00
Click here if you need more tokens. |next "menu" |confirm
buy 1 Reins of the Spectral Wolf##64999 |goto Tol Barad Peninsula,54.60,81.00
step
learnmount Spectral Wolf##92232 |use Reins of the Spectral Wolf##64999
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Reputation Mounts\\Talbuk Mounts",{
keywords={"talbuk","cobalt","war","silver","riding","tan","white","the","mag'har","maghar","exalted","ground","mount"},
mounts={39315,34896,39317,34898,39318,34899,39319,34897},
patch='40200',
mounttype='Ground',
model={19377},
description="This guide will help you acquire the Cobalt Riding Talbuk, Cobalt War Talbuk, Silver Riding Talbuk, Silver War Talbuk, Tan Riding Talbuk, Tan War Talbuk, White Riding Talbuk, and White War Talbuk mounts.",
},[[
step
label "a"
#include "misc_rep_mount",rep="The Mag'har"
Click here to continue to earn reputation with the Mag'har |confirm always |only if rep("The Mag'har")<=Revered
|next "quest" |only if rep("The Mag'har")<=Revered and not completedq(10011)
|next "bead_grind" |only if rep("The Mag'har")<=Revered and completedq(10011)
|next "exalted" |only if rep("The Mag'har")==Exalted
step
label "quest"
talk Nazgrel##3230
accept The Assassin##9400 |goto Hellfire Peninsula,55,36
step
Go to this spot
Find Krun Spinebreaker |q 9400/1 |goto Hellfire Peninsula 33.60,43.50
step
Click the Fel Orc Corpse
|tip It's a corpse laying halfway up the hill.
turnin The Assassin##9400 |goto Hellfire Peninsula 33.60,43.50
accept A Strange Weapon##9401 |goto Hellfire Peninsula 33.60,43.50
step
talk Nazgrel##3230
turnin A Strange Weapon##9401 |goto Hellfire Peninsula 55,36
accept The Warchief's Mandate##9405 |goto Hellfire Peninsula 55,36
step
talk Far Seer Regulkut##16574
turnin The Warchief's Mandate##9405 |goto Hellfire Peninsula 54.20,37.90
accept A Spirit Guide##9410 |goto Hellfire Peninsula 54.20,37.90
step
Use your Ancestral Spirit Wolf Totem next to the Fel Orc Corpse |use Ancestral Spirit Wolf Totem##23669 |goto Hellfire Peninsula 33.60,43.50
|tip It's a corpse laying halfway up the hill.
Follow the spirit wolf
|tip Stay close to the wolf and follow it until it stops, or you will not be able to turn in the quest.
Follow the wolf to this spot |goto Hellfire Peninsula 32,27.80,0.50 |c
step
talk Gorkan Bloodfist##16845
turnin A Spirit Guide##9410 |goto Hellfire Peninsula 32,27.80
accept The Mag'har##9406 |goto Hellfire Peninsula 32,27.80
step
talk Nazgrel##3230
turnin The Mag'har##9406 |goto Hellfire Peninsula 55,36
step
talk Shado 'Fitz' Farstrider##18200
accept Windroc Mastery (1)##9854 |goto Nagrand,71.60,40.50
talk Hemet Nesingwary##18180
accept Clefthoof Mastery (1)##9789 |goto Nagrand,71.60,40.50
talk Harold Lane##18218
accept Talbuk Mastery (1)##9857 |goto Nagrand,71.60,40.50
step
kill 12 Talbuk Stag##17130+ |q 9857/1 |goto Nagrand 72.20,38.40
You can find more Talbuk Stags at [70.80,46.40]
step
kill 12 Windroc##17128+ |q 9854/1 |goto Nagrand 66.50,39.50
step
kill 12 Clefthoof##18205+ |q 9789/1 |goto Nagrand 64,45.10
kill Wild Elekk##18334
collect 3 Pair of Ivory Tusks##25463 |q 9914 |goto Nagrand 64,45.10 |future
kill Dust Howlers##17158
collect Howling Wind##24504 |n
Use the Howling Wind in your bags |use Howling Wind##24504
accept The Howling Wind##9861
You can find more Clefthoofs, Elekks, and Dust Howlers at [70.80,46.40]
step
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery (1)##9854 |goto Nagrand 71.60,40.50
accept Windroc Mastery (2)##9855 |goto Nagrand 71.60,40.50
talk Hemet Nesingwary##18180
turnin Clefthoof Mastery (1)##9789 |goto Nagrand 71.60,40.50
accept Clefthoof Mastery (2)##9850 |goto Nagrand 71.60,40.50
talk Harold Lane##18218
turnin Talbuk Mastery (1)##9857 |goto Nagrand 71.60,40.50
accept Talbuk Mastery (2)##9858 |goto Nagrand 71.60,40.50
step
talk Gursha##18808
fpath Garadar |goto Nagrand 57.20,35.20
step
talk Matron Drakia##18302
accept Missing Mag'hari Procession##9944 |goto Nagrand 57.10,34.90
step
talk Matron Tikkit##18913
home Garadar |goto Nagrand 56.60,34.60
step
talk Captain Kroghan##18090
turnin Reinforcements for Garadar##9797 |goto Nagrand 55.40,37.40
step
talk Jorin Deadeye##18106
accept The Impotent Leader##9888 |goto Nagrand 55.50,37.60
step
talk Warden Bullrok##18407
accept Proving Your Strength##10479 |goto Nagrand 55.80,38
click the Garadar Bulletin Board##182392
accept Wanted: Giselda the Crone##9935 |goto Nagrand 55.80,38
accept Wanted: Zorbo the Advisor##9939 |goto Nagrand 55.80,38
step
talk Elementalist Yal'hah##18234
accept The Throne of the Elements##9870 |goto Nagrand 55,39
step
talk Farseer Kurkush##18066
accept Vile Idolatry##9863 |goto Nagrand 54.70,39.70
talk Farseer Corhuk##18067
accept The Missing War Party##9864 |goto Nagrand 54.70,39.70
talk Farseer Margadesh##18068
accept Murkblood Leaders...##9867 |goto Nagrand 54.70,39.70
step
talk Consortium Recruiter##18335
accept The Consortium Needs You!##9913 |goto Nagrand 51.90,34.80
step
talk Elementalist Morgh##18074
turnin The Howling Wind##9861 |goto Nagrand 60.50,22.40
accept Murkblood Corrupters##9862 |goto Nagrand 60.50,22.40
talk Elementalist Sharvak##18072
turnin The Throne of the Elements##9870 |goto Nagrand 60.50,22.40
talk Elementalist Lo'ap##18073
accept A Rare Bean##9800 |goto Nagrand 60.50,22.40
accept Muck Diving##9815 |goto Nagrand 60.50,22.40
talk Elementalist Untrag##18071
accept The Underneath##9818 |goto Nagrand 60.50,22.40
step
talk Gordawg##18099
|tip He may not be in this spot, he wanders around the Throne of Elements area.
turnin The Underneath##9818 |goto Nagrand 61.80,24.40
accept The Tortured Earth##9819 |goto Nagrand 61.80,24.40
step
kill 12 Talbuk Thorngrazer##17131+ |q 9858/1 |goto Nagrand 52.10,25.60
click the Dung piles
|tip The Dung piles looks like green piles of swirled poop.
collect 8 Digested Caracoli##24419 |q 9800/1 |goto Nagrand 52.10,25.60
step
kill 12 Clefthoof Bull##17132+ |q 9850/1 |goto Nagrand 51.60,30.80
You can find more Clefthoof Bulls at [49.70,35.60]
stickystart "warbeads"
step
kill Zorbo the Advisor##18413 |q 9939/1 |goto Nagrand 46.50,18.20
|tip Inside the cave at the top of the hill.
step
label "warbeads"
kill 5 Warmaul Shaman##18064+ |q 9939/2 |goto Nagrand 48.30,21.50
kill 5 Warmaul Reaver##17138+ |q 9939/3 |goto Nagrand 48.30,21.50
collect 10 Obsidian Warbeads##25433 |q 10479/1 |goto Nagrand 48.30,21.50
step
talk Saurfang the Younger##18229
turnin The Missing War Party##9864 |goto Nagrand 32.40,36.10
accept Once Were Warriors##9865 |goto Nagrand 32.40,36.10
talk Elder Yorley##18414
turnin Missing Mag'hari Procession##9944 |goto Nagrand 32.40,36.10
accept War on the Warmaul##9945 |goto Nagrand 32.40,36.10
talk Elder Ungriz##18415
accept Finding the Survivors##9948 |goto Nagrand 32.40,36.10
step
The path up to 'War on the Warmaul' and 'Finding the Survivors' starts here |goto Nagrand 29.20,31.60 < 5 |only if walking
kill 8 Warmaul Brute##18065+ |q 9945/1 |goto Nagrand 23.40,29.20
kill 8 Warmaul Warlock##18037+ |q 9945/2 |goto Nagrand 23.40,29.20
collect Warmaul Prison Key##25604 |n
click the yellow cages around this area
Free 5 Mag'har Prisoners |q 9948/1 |goto Nagrand 23.40,29.20
step
talk Elder Yorley##18414
turnin War on the Warmaul##9945 |goto Nagrand 32.40,36.10
talk Elder Ungriz##18415
turnin Finding the Survivors##9948 |goto Nagrand 32.40,36.10
step
kill Muck Spawn##17154+
collect 5 Muck-ridden Core##24469 |q 9815/1 |goto Nagrand 41.50,40.90
stickystart "murkidol"
step
kill Ortor of Murkblood##18204
|tip He's standing inside the big building here.
collect Head of Ortor of Murkblood##24543 |q 9867/1 |goto Nagrand 30.90,42.30
step
label "murkidol"
kill 20 Murkblood Scavenger##18207+ |q 9865/1 |goto Nagrand 32,39.10
kill 10 Murkblood Raider##18203+ |q 9865/2 |goto Nagrand 32,39.10
kill 5 Murkblood Putrifier##18202+ |q 9862/1 |goto Nagrand 32,39.10
collect 10 Murkblood Idol##24542 |q 9863/1 |goto Nagrand 32,39.10
step
kill Ortor of Murkblood##18204
|tip He's standing inside the big building here.
collect Head of Ortor of Murkblood##24543 |q 9867/1 |goto Nagrand 30.90,42.30
step
talk Saurfang the Younger##18229
turnin Once Were Warriors##9865 |goto Nagrand 32.40,36.10
accept He Will Walk The Earth...##9866 |goto Nagrand 32.40,36.10
step
talk Zerid##18276
accept Gava'xi##9900 |goto Nagrand 30.80,58.10
accept Matters of Security##9925 |goto Nagrand 30.80,58.10
step
talk Gezhe##18265
turnin The Consortium Needs You!##9913 |goto Nagrand 31.40,57.80
accept Stealing from Thieves##9882 |goto Nagrand 31.40,57.80
step
talk Shadrek##18333
accept A Head Full of Ivory##9914 |goto Nagrand 31.80,56.80
turnin A Head Full of Ivory##9914 |goto Nagrand 31.80,56.80
step
click the Oshu'gun Crystal Fragments on the ground.
|tip They are the green and white crystals on the ground.
kill Vir'aani Raider##17149
collect 10 Oshu'gun Crystal Fragment##25416 |q 9882/1 |goto Nagrand 33.40,62.40
step
kill 8 Voidspawn##17981+ |q 9925/1 |goto Nagrand 30.60,67.50
step
kill Gava'xi##18298 |q 9900/1 |goto Nagrand 42.40,73.50
|tip He spawns at the peak of a small hill at this location, sometimes he spawns at the base of the hill though, so keep an eye out.  He walks around all around this area, near this hill, so you may need to search for him.
step
kill 12 Ravenous Windroc##18220+ |q 9855/1 |goto Nagrand 48.40,61.50
step
talk Zerid##18276
turnin Gava'xi##9900 |goto Nagrand 30.80,58.10
turnin Matters of Security##9925 |goto Nagrand 30.80,58.10
step
talk Gezhe##18265
turnin Stealing from Thieves##9882 |goto Nagrand 31.40,57.80
step
talk Wazat##19035
accept I Must Have Them!##10109 |goto Nagrand 61.70,67.10
step
kill 10 Tortured Earth Spirit##17156+ |q 9819/1 |goto Nagrand 65.40,70.80
step
kill Dust Howler##17158+
collect 3 Air Elemental Gas##27807 |q 10109/1 |goto Nagrand 69.40,56.90
You can find more Dust Howlers at [65.50,46.90]
step
talk Wazat##19035
turnin I Must Have Them!##10109 |goto Nagrand 61.70,67.10
step
talk Kilrath##18273
turnin The Impotent Leader##9888 |goto Terokkar Forest,19.80,60.90
accept Don't Kill the Fat One##9889 |goto Terokkar Forest,19.80,60.90
step
kill 10 Boulderfist Invader##18260+ |q 9889/1 |goto Terokkar Forest 20,63.10
step
Fight Unkor the Ruthless until he submits |q 9889/2 |goto Terokkar Forest 20,63.10
talk Unkor the Ruthless##18262
turnin Don't Kill the Fat One##9889 |goto Terokkar Forest 20,63.10
accept Success!##9890 |goto Terokkar Forest 20,63.10
step
talk Kilrath##18273
turnin Success!##9890 |goto Terokkar Forest 19.80,60.90
accept Because Kilrath is a Coward##9891 |goto Terokkar Forest 19.80,60.90
step
talk Jorin Deadeye##18106
turnin Because Kilrath is a Coward##9891 |goto Nagrand,55.50,37.60
accept Message in a Battle##9906 |goto Nagrand,55.50,37.60
step
talk Warden Bullrok##18407
turnin Proving Your Strength##10479 |goto Nagrand 55.80,38
turnin Wanted: Zorbo the Advisor##9939 |goto Nagrand 55.80,38
step
talk Elkay'gan the Mystic##18300
accept Standards and Practices##9910 |goto Nagrand 55.50,37.60
step
talk Farseer Kurkush##18066
turnin Vile Idolatry##9863 |goto Nagrand 54.70,39.70
talk Farseer Corhuk##18067
turnin He Will Walk The Earth...##9866 |goto Nagrand 54.70,39.70
talk Farseer Margadesh##18068
turnin Murkblood Leaders...##9867 |goto Nagrand 54.70,39.70
step
talk Gordawg##18099
turnin The Tortured Earth##9819 |goto Nagrand 61.80,24.40
accept Eating Damnation##9821 |goto Nagrand 61.80,24.40
|tip He may not be in this spot, he wanders around the Throne of Elements area.
step
talk Elementalist Lo'ap##18073
turnin A Rare Bean##9800 |goto Nagrand 60.50,22.40
accept Agitated Spirits of Skysong##9804 |goto Nagrand 60.50,22.40
turnin Muck Diving##9815 |goto Nagrand 60.50,22.40
talk Elementalist Morgh##18074
turnin Murkblood Corrupters##9862 |goto Nagrand 60.50,22.40
step
kill 8 Lake Spirit##17153+ |q 9804/1 |goto Nagrand 59.70,27.30
step
talk Elementalist Lo'ap##18073
turnin Agitated Spirits of Skysong##9804 |goto Nagrand 60.50,22.40
accept Blessing of Incineratus##9805 |goto Nagrand 60.50,22.40
step
kill Enraged Crusher##18062+
|tip You can find them all along this cliffside.
collect 10 Enraged Crusher Core##24473 |q 9821/1 |goto Nagrand 52,20.20
step
talk Gordawg##18099
|tip He may not be in this spot, he wanders around the Throne of Elements area.
turnin Eating Damnation##9821 |goto Nagrand 61.80,24.40
accept Shattering the Veil##9849 |goto Nagrand 61.80,24.40
step
talk Harold Lane##18218
turnin Talbuk Mastery (2)##9858 |goto Nagrand 71.60,40.50
talk Hemet Nesingwary##18180
turnin Clefthoof Mastery (2)##9850 |goto Nagrand 71.60,40.50
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery (2)##9855 |goto Nagrand 71.60,40.50
step
Go inside the hut
Use the Living Fire in your bags |use Living Fire##24467
Destroy the Western Hut |q 9805/2 |goto Nagrand 70.80,51.20
step
Go inside the hut
Use the Living Fire in your bags |use Living Fire##24467
Destroy the Large Hut |q 9805/1 |goto Nagrand 72.40,50.30
step
Go inside the hut
Use the Living Fire in your bags |use Living Fire##24467
Destroy the Eastern Hut |q 9805/4 |goto Nagrand 72.80,54.70
step
Go inside the hut
Use the Living Fire in your bags |use Living Fire##24467
Destroy the Southern Hut |q 9805/3 |goto Nagrand 71.20,53.20
step
talk Elementalist Lo'ap##18073
turnin Blessing of Incineratus##9805 |goto Nagrand 60.50,22.40
accept The Spirit Polluted##9810 |goto Nagrand 60.50,22.40
stickystart "bouldercrush"
step
Use your Mag'har Battle Standard next to the bonfire |use Mag'har Battle Standard##25458
Place the First Battle Standard |q 9910/1 |goto Nagrand 72.10,69.90
step
Use your Mag'har Battle Standard next to the bonfire |use Mag'har Battle Standard##25458
|tip Up the hill on the middle ledge, overlooking the camp.
Place the Second Battle Standard |q 9910/2 |goto Nagrand 74.70,69.80
step
Use your Mag'har Battle Standard next to the bonfire |use Mag'har Battle Standard##25458
|tip All the way up the hill.
Place the Third Battle Standard |q 9910/3 |goto Nagrand 75.80,68.40
step
label "bouldercrush"
kill 8 Boulderfist Mystic##17135+ |q 9906/1 |goto Nagrand 72.90,69.80
kill 8 Boulderfist Crusher##17134+ |q 9906/2 |goto Nagrand 72.90,69.80
step
talk Jorin Deadeye##18106
turnin Message in a Battle##9906 |goto Nagrand 55.50,37.60
accept An Audacious Advance##9907 |goto Nagrand 55.50,37.60
step
talk Elkay'gan the Mystic##18300
turnin Standards and Practices##9910 |goto Nagrand 55.50,37.60
accept Bleeding Hollow Supply Crates##9916 |goto Nagrand 55.50,37.60
step
kill 10 Boulderfist Warrior##17136+ |q 9907/1 |goto Nagrand 40.80,31.50
kill 10 Boulderfist Mage##17137+ |q 9907/2 |goto Nagrand 40.80,31.50
click the Bleeding Hollow Supply Crates
collect 10 Bleeding Hollow Supply Crate##25460 |q 9916/1 |goto Nagrand 40.80,31.50
|tip They look like wooden boxes with a red symbol on the side of them.  There are a lot of them inside the cave.
step
kill 8 Lake Surger##17155+ |q 9810/2 |goto Nagrand 33.80,48.90
step
kill Watoosun's Polluted Essence##18145 |q 9810/1 |goto Nagrand 33.10,50.80 |tip He's underwater.
step
Use Gordawg's Boulder on Shattered Rumblers |use Gordawg's Boulder##24501
Kill the Minions of Gurok that spawn from their corpses
kill 30 Minion of Gurok##18181+ |q 9849/1 |goto Nagrand 27.90,77.60
step
talk Elkay'gan the Mystic##18300
turnin Bleeding Hollow Supply Crates##9916 |goto Nagrand 55.50,37.60
step
talk Jorin Deadeye##18106
turnin An Audacious Advance##9907 |goto Nagrand 55.50,37.60
accept Diplomatic Measures##10107 |goto Nagrand 55.50,37.60
step
The path up to Lantresor of the Blade starts here |goto Nagrand 73.80,68.10 < 5 |only if walking
talk Lantresor of the Blade##18261
Listen to his story
Hear the story of the Blademaster |q 10107/1 |goto Nagrand 73.80,62.60
turnin Diplomatic Measures##10107 |goto Nagrand 73.80,62.60
accept Armaments for Deception##9928 |goto Nagrand 73.80,62.60
accept Ruthless Cunning##9927 |goto Nagrand 73.80,62.60
stickystart "kilsorrow"
step
kill Giselda the Crone##18391 |q 9935/1 |goto Nagrand 71.10,82.40
|tip Inside the big circle building, in the middle.
step
label "kilsorrow"
click the Kil'sorrow Armaments##182355
|tip They look like skinny, square, tan boxes on the ground with a red axe logo on them.
collect 10 Kil'sorrow Armaments##25554 |q 9928/1 |goto Nagrand 71.40,79.40
kill Kil'sorrow Deathsworn##17148, Kil'sorrow Cultist##17147, Kil'sorrow Spellbinder##17146
Kill 10 Kil'sorrow Agents |q 9935/2 |goto Nagrand 71.40,79.40
Use your Warmaul Ogre Banner on their corpses |use Warmaul Ogre Banner##25552
Plant 10 Warmaul Ogre Banners |q 9927/1 |goto Nagrand 71.40,79.40
step
talk Lantresor of the Blade##18261
turnin Armaments for Deception##9928 |goto Nagrand 73.80,62.60
turnin Ruthless Cunning##9927 |goto Nagrand 73.80,62.60
accept Returning the Favor##9931 |goto Nagrand 73.80,62.60
accept Body of Evidence##9932 |goto Nagrand 73.80,62.60
step
talk Warden Bullrok##18407
turnin Wanted: Giselda the Crone##9935 |goto Nagrand 55.80,38
step
talk Gordawg##18099
turnin Shattering the Veil##9849 |goto Nagrand 61.80,24.40
step
talk Elementalist Lo'ap##18073
turnin The Spirit Polluted##9810 |goto Nagrand 60.50,22.40
step
kill Warmaul Shaman##18064+, Warmaul Reaver##17138+
Use your Kil'sorrow Banner on their copses |use Kil'sorrow Banner##25555
Plant 10 Kil'sorrow Banners |q 9931/1 |goto Nagrand 46.50,24.30
Use the Damp Woolen Blanket on the Blazing Warmaul Pyre |use Damp Woolen Blanket##25658
|tip It looks like a big burning bonfire.
Defend the 2 ogres that spawn until they finish placing corpses around
Plant the Kil'sorrow Bodies |q 9932/1 |goto Nagrand 46.50,24.30
step
talk Lantresor of the Blade##18261
turnin Returning the Favor##9931 |goto Nagrand 73.80,62.60
turnin Body of Evidence##9932 |goto Nagrand 73.80,62.60
accept Message to Garadar##9934 |goto Nagrand 73.80,62.60
step
talk Garrosh##18063
turnin Message to Garadar##9934 |goto Nagrand 55.50,37.60
step
talk Warden Bullrok##18407
accept Wanted: Durn the Hungerer##9937 |goto Nagrand,55.80,38.00
step
talk Matron Celestine##18301
accept He Called Himself Altruis...##9983 |goto Nagrand 55.20,36.10
step
The next few quests are meant to be _group quests_. If you are not high level, you may need at least _3 people_ for these quests.
Click here to proceed |confirm always
step
map Nagrand
path follow loose;loop;ants curved
path	46.70,63.70	40.80,63.50	37.40,62.10
path	34.00,62.70	31.70,65.40	30.50,71.30
path	32.00,75.90	35.50,78.50	39.80,78.70
path	42.40,75.50	46.00,70.20
Follow the path around this are to look for _Durn the Hungerer_
kill Durn the Hungerer |q 9937/1
step
talk Altruis the Sufferer##18417
turnin He Called Himself Altruis...##9983 |goto Nagrand 27.30,43.10
accept Survey the Land##9991 |goto Nagrand 27.30,43.10
|tip You will fly around on a drake to view The Twilight Ridge.
turnin Survey the Land##9991 |goto Nagrand 27.30,43.10
accept Buying Time##9999 |goto Nagrand 27.30,43.10
step
kill 2 Felguard Legionnaire |q 9999/1 |goto Nagrand 24.50,37.90
kill 3 Mo'arg Engineer |q 9999/2 |goto Nagrand 24.50,37.90
kill 8 Gan'arg Tinkerer |q 9999/3 |goto Nagrand 24.50,37.90
step
talk Altruis the Sufferer##18417
turnin Buying Time##9999 |goto Nagrand 27.30,43.10
accept The Master Planner##10001 |goto Nagrand 27.30,43.10
step
kill Mo'arg Master Planner##18567
collect The Master Planner's Blueprints##25751 |q 10001/1 |goto Nagrand,17.50,50.30
You can also find the Mater Planner around [23.30,35.40]
step
talk Altruis the Sufferer##18417
turnin The Master Planner##10001 |goto Nagrand 27.30,43.10
accept Patience and Understanding##10004 |goto Nagrand 27.30,43.10
step
talk Elder Yorley##18414
accept Cho'war the Pillager##9946 |goto Nagrand 32.30,36.20
step
Follow the path up and around
kill Cho'war the Pillager##18423
collect Head of Cho'war##25590 |q 9946/1 |goto Nagrand,25.80,13.80
step
Leave the Cave here |goto Nagrand 27.20,18.70 < 5 |walk
talk Elder Yorley##18414
turnin Cho'war the Pillager##9946 |goto Nagrand 32.30,36.20
step
talk Warden Bullrok##18407
turnin Wanted: Durn the Hungerer##9937 |goto Nagrand,55.80,38.00
step
talk Sal'salabim##18584
Tell him "Altruis sent me. He said that you could help me."
|tip He will immediately start attacking you!
Persuad Sal'salabim |q 10004/1 |goto Shattrath City,77.30,34.90
step
talk Sal'salabim##18584
turnin Patience and Understanding##10004 |goto Shattrath City,77.30,34.90
accept Crackin' Some Skulls##10009 |goto Shattrath City,77.30,34.90
step
talk Raliq the Drunk##18585
Tell him you are here to collect a dept, pay up or you're going to have to hurt him.
|tip He will immediately start attacking you!
Collect Raliq's Debt |q 10009/1 |goto Shattrath City 75.00,31.50
step
talk Coosh'coosh##18586
Tell him you are here to collect a dept, pay up or you're going to have to hurt him.
|tip He will immediately start attacking you!
Collect Coosh'coosh's Debt |q 10009/2 |goto Zangarmarsh,80.90,91.10
step
talk Floon##18588
Tell him you are here to collect a dept, pay up or you're going to have to hurt him.
|tip He will immediately start attacking you!
Collect Floon's Debt |q 10009/3 |goto Terokkar Forest,27.20,58.10
step
talk Sal'salabim##18584
turnin Crackin' Some Skulls##10009 |goto Shattrath City 77.30,34.90
accept It's Just That Easy?##10010 |goto Shattrath City 77.30,34.90
step
talk Altruis the Sufferer##18417
turnin It's Just That Easy?##10010 |goto Nagrand,27.30,43.10
accept Forge Camp: Annihilated##10011 |goto Nagrand,27.30,43.10
step
kill Demos Overseer of Hate##18535
collect Fel Cannon Activator##25770 |n
Use the Fel Cannon Activator in your bags |use Fel Cannon Activator##25770
Destroy Forge Camp: Hate |q 10011/1 |goto Nagrand,25.00,36.10
step
kill Xirkos Overseer of Fear##18536
collect Fel Cannon Activator##25771 |n
Use the Fel Cannon Activator in your bags |use Fel Cannon Activator##25771
Destoy Forge Camp: Fear |q 10011/2 |goto Nagrand 19.60,51.10
step
talk Altruis the Sufferer##18417
turnin Forge Camp: Annihilated##10011 |goto Nagrand 27.30,43.10
step
Once you have completed the above quests, you will have to grind your way to exalted.
Click to proceed. |confirm always
step
label "bead_grind"
kill Warmaul Reaver##17138+, Warmaul Shaman##18064+ |goto Nagrand,48.90,22.70
collect Obsidian Warbeads##25433 |n
If you are fresh into revered, you will need 420 beads to get 21,000 reputation points.
Collect beads in sets of 10.
Click here when you're ready to turn in. |confirm
step
label "turn_in"
talk Warden Bullrok##18407
accept More Warbeads##10478 |goto Nagrand,55.80,37.90 |repeatable
Click here to go back to farming. |next "bead_grind" |confirm always |only if rep("The Mag'har")<=Revered
Reach Exalted with The Mag'har! |complete rep("The Mag'har")>=Exalted |next "exalted"
confirm |only if rep("The Mag'har")==Exalted
|next "a" |only if rep("The Mag'ha")<=Revered
step
label "exalted"
talk Provisioner Nasela##20241
buy 1 Reins of the Cobalt Riding Talbuk##31829 |goto Nagrand,53.40,36.80
buy 1 Reins of the Cobalt War Talbuk##29102 |goto Nagrand,53.40,36.80
buy 1 Reins of the Silver Riding Talbuk##31831 |goto Nagrand,53.40,36.80
buy 1 Reins of the Silver War Talbuk##29104 |goto Nagrand,53.40,36.80
buy 1 Reins of the Tan Riding Talbuk##31833 |goto Nagrand,53.40,36.80
buy 1 Reins of the Tan War Talbuk##29105 |goto Nagrand,53.40,36.80
buy 1 Reins of the White Riding Talbuk##31835 |goto Nagrand,53.40,36.80
buy 1 Reins of the White War Talbuk##29103 |goto Nagrand,53.40,36.80
step
learnmount Cobalt Riding Talbuk##39315 |use Reins of the Cobalt Riding Talbuk##31829
learnmount Cobalt War Talbuk##34896 |use Reins of the Cobalt War Talbuk##29102
learnmount Silver Riding Talbuk##39317 |use Reins of the Silver Riding Talbuk##31831
learnmount Silver War Talbuk##34898 |use Reins of the Silver War Talbuk##29104
learnmount Tan Riding Talbuk##39318 |use Reins of the Tan Riding Talbuk##31833
learnmount Tan War Talbuk##34899 |use Reins of the Tan War Talbuk##29105
learnmount White Riding Talbuk##39319 |use Reins of the White Riding Talbuk##31835
learnmount White War Talbuk##34897 |use Reins of the White War Talbuk##29103
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Trading Card Mounts\\Big Battle Bear",{
keywords={"trading","card","game","big","battle","bear","ground","mount"},
mounts={51412},
patch='20403',
mounttype='Ground',
model={25335},
description="This guide will help you acquire the Big Battle Bear mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Trading Card Mounts\\Magic Rooster",{
keywords={"trading","card","game","magic","rooster","ground","mount"},
mounts={65917},
patch='30103',
mounttype='Ground',
model={29344},
description="This guide will help you acquire the Magic Rooster mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Trading Card Mounts\\Riding Turtle",{
keywords={"trading","card","game","riding","turtle","ground","mount"},
mounts={30174},
patch='20400',
mounttype='Aquatic',
model={17158},
description="This guide will help you acquire the Riding Turtle mount.",
},[[
step
This mount can be obtained by redeeming codes from the World of Warcraft trading card game.
confirm
step
It can also be obtained by fishing up a Frostdeep Minnow and killing Frostdeep Cavedwellers.
Use your fishing skill here |cast fishing##131474 |goto Frostwall/0 35.40,73.60
collect Frostdeep Minnow##112633
|tip This item can only be fished up if you have a level 3 fishing shack.
|tip This item has a small chance to be collected from every fishing cast.
use Frostdeep Minnow##112633
kill Frostdeep Cavedweller##81171
collect Riding Turtle##23720
|tip The Riding Turtle has an even lower chance to drop off of every Frostdeep Cavedweller.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Trading Card Mounts\\Savage Raptor",{
keywords={"trading","card","game","savage","raptor","ground","mount"},
mounts={97581},
patch='unknown',
mounttype='Ground',
model={38048},
description="This guide will help you acquire the Savage Raptor mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Trading Card Mounts\\Spectral Tigers",{
keywords={"trading","card","game","spectral","tiger","ground","mount"},
mounts={42777},
patch='20403',
mounttype='Ground',
model={21974},
description="This guide will help you acquire the Spectral Tiger mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Trading Card Mounts\\Swift Shorestrider",{
keywords={"trading","card","game","swift","shorestrider","tallstrider","ground","mount"},
mounts={101573},
patch='43000',
mounttype='Ground',
model={17011},
description="This guide will help you acquire the Swift Shorestrider mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Trading Card Mounts\\White Riding Camel",{
keywords={"trading","card","game","white","riding","camel","ground","mount"},
mounts={102488},
patch='43000',
mounttype='Ground',
model={35899},
description="This guide will help you acquire the White Riding Camel mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Trading Card Mounts\\Wooly White Rhino",{
keywords={"trading","card","game","wooly","white","rhino","ground","mount"},
mounts={74918},
patch='unknown',
mounttype='Ground',
model={31721},
description="This guide will help you acquire the Wooly White Rhino mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Amani War Bear",{
keywords={"amani","war","bear","zul","aman","zul'aman"},
mounts={43688},
patch='30100',
mounttype='Ground',
model={22464},
description="This mount has been removed from the game.",
},[[
step
The Amani War Bear was the reward for completing the timed event in the original version of Zul'Aman
This mount was retired from service in patch 3.0
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Arctic Wolf",{
keywords={"arctic","wolf"},
mounts={16081},
patch='50200',
mounttype='Ground',
model={1166},
description="This mount has been removed from the game.",
},[[
step
The Arctic Wolf was one of the original level 60 epic mounts
This mount was retired from service in patch 1.4
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Black Qiraji Battle Tank",{
keywords={"black","qiraji","battle","tank","bug"},
mounts={26656},
patch='30008',
mounttype='Ground',
model={15676},
description="This mount has been removed from the game.",
},[[
step
The Black Qiraji Battle Tank was awarded to anyone who rang the gong within 10 hours on each server to complete the questline required to open the Temple of An'Qiraj
This mount was retired from service in patch 4.0.6
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Brewfest Ram",{
keywords={"brewfest","brew","fest","ram"},
mounts={43899},
patch='30300',
mounttype='Ground',
model={22265},
description="This mount has been removed from the game.",
},[[
step
The Brewfest Ram was the original reward for the 2007 Brewfest in-game event.
This mount is only available if you completed the Brewfest event in 2007, in which case it can be purchased from the mount vendor in Amberstill Ranch.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Crusader's Black Warhorse",{
keywords={"crusaders","crusader's","black","war","horse","warhorse"},
mounts={68188},
patch='30200',
mounttype='Ground',
model={29938},
description="This mount has been removed from the game.",
},[[
step
The Crusader's Black Warhorse was the reward for completing the achievement "A Tribute to Immortality"
This mount was retired from service in patch 4.0.3 along with the tribute chest in Trial of the Grand Crusader
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Green Kodo",{
keywords={"green","kodo"},
mounts={18991},
patch='50408',
mounttype='Ground',
model={12245},
description="This mount has been removed from the game.",
},[[
step
The Green Kodo was one of the original level 60 epic mounts
This mount was retired from service in patch 1.4
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Ivory Raptor",{
keywords={"ivory","raptor"},
mounts={17450},
patch='40100',
mounttype='Ground',
model={6471},
description="This mount has been removed from the game.",
},[[
step
The Ivory Raptor was one of the original level 60 epic mounts
This mount was retired from service in patch 1.4
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Mottled Red Raptor",{
keywords={"mottled","red","raptor"},
mounts={16084},
patch='30100',
mounttype='Ground',
model={6469},
description="This mount has been removed from the game.",
},[[
step
The Mottled Red Raptor was one of the original level 60 epic mounts
This mount was retired from service in patch 1.4
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Red Wolf",{
keywords={"red","wolf"},
mounts={16080},
patch='40100',
mounttype='Ground',
model={2326},
description="This mount has been removed from the game.",
},[[
step
The Red Wolf was one of the original level 60 epic mounts
This mount was retired from service in patch 1.4
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Swift Horde Wolf",{
keywords={"swift","horde","wolf"},
mounts={68056},
patch='30200',
mounttype='Ground',
model={29283},
description="This mount has been removed from the game.",
},[[
step
The Swift Horde Wolf dropped from the Argent Crusader Tribute Chest in Trial of the Grand Crusader (10H) with all 50 attempts left
This mount was retired from service in patch 4.0.3 along with the Tribute Chest in Trial of the Grand Crusader
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Swift Razzashi Raptor",{
keywords={"swift","razzashi","raptor"},
mounts={24242},
patch='40300',
mounttype='Ground',
model={15289},
description="This mount has been removed from the game.",
},[[
step
The Swift Razzashi Raptor dropped from the original Zul'Gurub 10 man raid instance
This mount was removed from the drop table when the Cataclsym expansion released and Zul'Gurub was remade.
|tip This mount will sometimes be on the BMAH to bid on.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Swift Zulian Tiger",{
keywords={"swift","zulian","tigar"},
mounts={24252},
patch='30300',
mounttype='Ground',
model={15290},
description="This mount has been removed from the game.",
},[[
step
The Swift Zulian Tiger dropped from the original Zul'Gurub 10 man raid instance
This mount was removed from the drop table when the Cataclsym expansion released and Zul'Gurub was remade.
|tip This mount will sometimes be on the BMAH to bid on.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Unavailable Mounts\\Teal Kodo",{
keywords={"teal","kodo"},
mounts={18992},
patch='50408',
mounttype='Ground',
model={12242},
description="This mount has been removed from the game.",
},[[
step
The Teal Kodo was one of the original level 60 epic mounts
This mount was retired from service in patch 1.4
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Armored Brown Bear",{
keywords={"armored","brown","bear","ground","mount"},
mounts={60116},
patch='40001',
mounttype='Ground',
model={27821},
description="This guide will help you acquire the Armored Brown Bear mount.",
},[[
step
talk Mei Francis##32216
buy Reins of the Armored Brown Bear##44226 |goto Dalaran/1 58.11,42.09 |or
'|complete hasmount(60116) |or
step
use the Reins of the Armored Brown Bear##44226
Learn the "Armored Brown Bear" Mount |learnmount Armored Brown Bear##60116
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Vendor Mounts\\Traveler's Tundra Mammoth",{
keywords={"traveler's","tundra","mammoth","vendor","mount","ground"},
mounts={61447},
patch='30002',
mounttype='Ground',
model={25451},
description="This guide will help you acquire the Traveler's Tundra Mammoth mount.",
},[[
step
talk Mei Francis##32216
buy Reins of the Traveler's Tundra Mammoth##44235 |goto Dalaran/1 58.11,42.09 |or
'|complete hasmount(61425) |or
step
use Reins of the Traveler's Tundra Mammoth##44235
Learn the "Traveler's Tundra Mammoth" Mount |learnmount Traveler's Tundra Mammoth##61425
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Albino Drake",{
keywords={"albino","drake","flying","mount"},
mounts={60025},
patch='30002',
mounttype='Flying',
model={6372},
description="This guide will help you acquire the Albino Drake mount.",
},[[
step
Obtain _50 mounts_, you can use our guide to achieve these |achieve 2143
Check your _mailbox_ for your _prize_!
collect 1 Reins of the Albino Drake##44178
step
learnmount Albino Drake##60025 |use Reins of the Albino Drake##44178
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Bloodbathed Frostbrood Vanquisher",{
keywords={"bloodbathed","frostbrood","vanquisher","flying","mount"},
mounts={72808},
patch='30302',
mounttype='Flying',
model={31156},
description="This guide will help you acquire the Bloodbathed Frostbrood Vanquisher mount.",
},[[
step
This mount is a reward for completing the _"Glory of the Icecrown Raider (10 player)"_ achievement.
When you complete the achievement check your in-game mailbox for the mount
collect Reins of the Bloodbathed Frostbrood Vanquisher##51954
step
learnmount Bloodbathed Frostbrood Vanquisher##72808 |use Reins of the Bloodbathed Frostbrood Vanquisher##51954
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Corrupted Fire Hawk",{
keywords={"corrupted","fire","hawk","firehawk","flying","mount"},
mounts={97560},
patch='unknown',
mounttype='Flying',
model={38046},
description="This guide will help you acquire the Corrupted Fire Hawk mount.",
},[[
step
This mount is a reward for completing the _"Glory of the Firelands Raider"_ achievement.
When you complete the achievement check your in-game mailbox for the mount
collect Corrupted Egg of Millagazor##69230
step
learnmount Corrupted Fire Hawk##97560 |use Corrupted Egg of Millagazor##69230
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Drake of the East Wind",{
keywords={"drake","of","the","east","wind","flying","mount"},
mounts={88335},
patch='unknown',
mounttype='Flying',
model={35757},
description="This guide will help you acquire the Drake of the East Wind mount.",
},[[
step
This achievement requires that you complete 24 achievements based off of Cataclysm Heroic Raids.
confirm
step
_Heroic: Magmaw and Parasite Evening_
For Parasite Evening, you will need to defeat Magmaw without anyone getting infected with a parasite.
In order to do this, you will need a lot of ranged DPS.
Magmaw will cast _Pillar of Flame_, which will mark the ground with a large red circle.
Move out of it as quickly as you can, as the Parasites will spawn out of it.
If a parasite touches you, you will become infected and fail the achievement.
_You will need to range AoE the Lava Parasites down._
Slow effects will help you kite them around.
kill Magmaw##41570
achieve 4853/1 |goto Blackwing Descent/1 25.00,54.40
achieve 4853/13 |goto Blackwing Descent/1 25.00,54.40
step
_Heroic: Omnotron Defense System and Achieve-a-tron_
For this achievement, there will 4 enemies each with their own ability that you will have to avoid.
_Electron's_ ability is _Static Shock_.
When he reaches 50 energy, he will begin to cast _Unstable Shield_.
_YOU MUST STOP DPS_ at this time, make sure there are no DoTs or pets even.
_Toxitron_ will use an ability called _Poison Protocol_.
He will spawn 3 _Poison Bombs_ that target 3 random raid members.
People who aren't selected will need to DPS the 3 Bombs down before they reach their target.
_Arcanotron will use an ability called _Arcane Annihilator_
You _WILL_ need 2 interrupters for this part. He casts Arcane Annihilator more often than a single person can interrupt.
A shaman with _Reverberation_ as a talent will be able to solo interrupt.
_Magmatron_ will use an ability called _Acquiring Target_ which will be aimed at a random raid member.
For this, you will want the raid group spread out as much as possible.
The person who is the target is allowed to be hit by the flame, _NO ONE ELSE_.
kill Magmatron##42178, Toxitron##42180, Electron##42179, Arcanotron##42166
achieve 4853/2 |goto Blackwing Descent/1 67.60,56.60
achieve 4853/14 |goto Blackwing Descent/1 67.60,56.60
step
_Heroic: Maloriak and Aberrant Behavior_
The _Abberations_ spawn during the _Red Vail_ phase.
You will need to gather 12 _Abberations_ and kill them within 10 seconds.
If you're a high level, an easier way to handle this achievement is to just force him to 20% health, forcing all 18 Abberations to spawn.
Otherwise it will be a lengthy process.
kill Maloriak##41378
achieve 4853/3 |goto Blackwing Descent/2 70.60,69.80
achieve 4853/17 |goto Blackwing Descent/2 70.60,69.80
step
_Heroic: Atramedes and Silence is Golden_
In order to earn this achievement, a raid member's sound bar _must not_ go over 50%.
Hitting the gongs will help him take more damage, though they should be saved for _Searing Flame_.
The faster you end this fight the better. Basically, avoid _ALL_ his AoE attacks.
kill Atramedes##41442
achieve 4853/4 |goto Blackwing Descent/2 48.00,21.40
achieve 4853/15 |goto Blackwing Descent/2 48.00,21.40
step
_Heroic: Chimaeron and Full of Sound and Fury_
You will need hard hitting DPS for this achievement, as well as at least one healer.
Regardless of your level, you will absolutely need to release the _Bile-O-Tron 800_ at the back of the room otherwise you will wipe.
kill Chimaeron##43296
achieve 4853/5 |goto Blackwing Descent/2 22.20,68.80
achieve 4853/16 |goto Blackwing Descent/2 22.20,68.80
step
_Heroic: Nefarian and Keeping it in the Family_
For this achievement, you will need heavy dps.
Kill Onyxia before the 3rd Crackle.
There will be a phase where platforms raise and you will need to kill adds.
Quickly kill the adds, then burn Nefarion down to 50%.
You will need to kill him to get the achievement.
kill Nefarian##41376
achieve 4853/6 |goto Blackwing Descent/2 48.00,70.80
achieve 4853/18 |goto Blackwing Descent/2 48.00,70.80
step
_Heroic: Halfus Wyrmbreaker and The Only Escape_
In order to earn this achievement, you will need to kill 2 drakes 10 seconds apart.
Kill one of the 3 drakes, then dps two down to 10% health.
Dps one down then quickly do the other, then pop all cooldowns to take Halfus down.
kill Halfus Wyrmbreaker##44600
achieve 4853/7 |goto The Bastion of Twilight/1 55.80,16.20
achieve 4853/19 |goto The Bastion of Twilight/1 55.80,16.20
step
Heroic: Valiona and Theralion and Double Dragon_
This achievement takes place during the Airborne phase of the fight.
Two abilities that will take you into the Twilight Realm are _Valiona's Deep Breath_ and _Theralion's Dazzling Destruction_.
When you are in the Twilight Realm, kill 6 Twilight Fiends.
They spawn every 15 seconds.
After 6, dps the boss down for the achievement.
kill Valiona##45992, Theralion##45993
achieve 4853/8 |goto The Bastion of Twilight/1 53.60,77.60
achieve 4853/20 |goto The Bastion of Twilight/1 53.60,77.60
step
_Heroic: Ascendant Council and Elementary_
The achievement Elementary takes place during stage 3 of the fight.
You must defeat the _Elemental Monstrosity_ while only creating a single Liquid Ice.
Once the four Council members have reached 25% health, stage 3 starts.
To earn this achievement, tank the Elementium Monstronsity where he spawns and _DO NO MOVE HIM_.
He will use an ability called _Cryogenic Aura_ that will cause a circle of ice to appear.
If you move him, more than one will appear.
DPS him down as fast as you can.
kill Feludius##43687, Ignacious##43686, Arion##43688, Terrastra##43689
achieve 4853/9 |goto The Bastion of Twilight/2 41.40,44.60
achieve 4853/21 |goto The Bastion of Twilight/2 41.40,44.60
step
_Heroic: Cho'gall and The Abyss Will Gaze Back Into You_
This achievement requires that you defeat Cho'gall without a raid member gaining more than 30% Corrupted Blood.
Basically, you will need to avoid being hit be _ANY_ ability during the encounter.
To avoid stacking corruption, interrupt _Depravity_ at all costs when an _Adherent_ starts to cast it.
Range AoE _Blood of the Old Gods_, which spawn from the spell _Fester Blood_ cast by Cho'gall. They must be dealt with quickly.
When phase 2 starts, you will need to dps down tentacles while maintaining powerful dps on Cho'gall.
kill Cho'gall##43324
achieve 4853/10 |goto The Bastion of Twilight/2 74.60,76.20
achieve 4853/22 |goto The Bastion of Twilight/2 74.60,76.20
step
Heroic: Conclave of Wind and Stay Chill_
For this achievement, you will need to defeat the Conclave of Wind with 7 stacks of Wind Chill.
This achievement is fairly simple with a full group.
Have a tank and healer at [Throne of the Four Winds 48.00,26.60].
Have the rest out the group spread out at the coordinates below:
Anshal is at [Throne of the Four Winds 31.80,50.60]
Rohash is at [Throne of the Four Winds 63.80,50.00]
Kill Anshal and Rohash as quickly as possible.
Converge with the Tank and hearler at Nezir.
Watch for your stacks of _Wind Chill_ to reach 7, and DPS the boss down hard.
kill Nezir##45871, Anshal##45870, Rohash##45872
achieve 4853/11
achieve 4853/23
step
Heroic: Al'akir and Four Play_
For this achievement, you will need to kill Al'Akir while he is affected by Feedback.
There are 3 stages to the fight.
During _Stage 2_, Stormlings will spawn.
You will need to keep one alive for phase 3.
DPS Al'akir down as low as possible without killing him.
Kill the Stormling, then Al'akir for the achievement.
kill Al'Akir##46753
achieve 4853/12 |goto The Bastion of Twilight/2 47.20,50.80
achieve 4853/24 |goto The Bastion of Twilight/2 47.20,50.80
step
When you complete the achievement check your in-game mailbox for the mount
collect Reins of the Drake of the East Wind##62901
step
learnmount Drake of the East Wind##88335 |use Reins of the Drake of the East Wind##62901
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Flameward Hippogryph",{
keywords={"flameward","hippogryph","flying","mount"},
mounts={97359},
patch='unknown',
mounttype='Flying',
model={38018},
description="This guide will help you acquire the Flameward Hippogryph mount.",
},[[
step
This _mount requires_ you to have the achievement _"The Molten Front Offensive"_ completed
Use the _Firelands Dailies section_ of this guide to _complete_ each _The Molten Front Offensive achievements_
The Molten Front Offensive |achieve 5866
step
Check your _mailbox_ for your _prize_!
collect 1 Flameward Hippogryph##69213
step
learnmount Flameward Hippogryph##97359 |use Flameward Hippogryph##69213
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Green Proto Drake",{
keywords={"green","proto","drake","proto-drake","the","oracles","exalted","flying","mount"},
mounts={61294},
patch='30002',
mounttype='Flying',
model={28053},
description="This guide will help you acquire the Green Proto-Drake mount.",
},[[
step
Routing to the proper section. |next |only if not completedq(12579)
Routing to the proper section. |next "Buy_it" |only if rep("The Oracles")>=Revered
step
label "Pre Quests"
#include "Oracles_Dailies"
step
You will need to be Revered with _The Oracles_ in order to obtain the Mysterious Egg.
Refer to our Dailies and Reputation guides in order to earn rep.
Click here for the Oracle Reputation section. |next "Reputation Guides\\Wrath of the Lich King Reputations\\The Oracles" |confirm |only if QC.guidesets["ReputationsH"]
step
label "Buy_it"
talk Geen##31910
buy Mysterious Egg##39878 |goto Sholazar Basin 54.60,56.20
step
You will have to wait a week for the egg to hatch
Click the Cracked Egg in your bags |use Cracked Egg##39883
collect Reins of the Green Proto-Drake##44707
step
learnmount Green Proto-Drake##61294 |use Reins of the Green Proto-Drake##44707
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Icebound Frostbrood Vanquisher",{
keywords={"icebound","frostbrood","vanquisher","flying","mount"},
mounts={72807},
patch='30300',
mounttype='Flying',
model={31154},
description="This guide will help you acquire the Icebound Frostbrood Vanquisher mount.",
},[[
step
This mount is a reward for completing the _"Glory of the Icecrown Raider (25 player)"_ achievement.
When you complete the achievement check your in-game mailbox for the mount
collect Reins of the Icebound Frostbrood Vanquisher##51955
step
learnmount Icebound Frostbrood Vanquisher##72807 |use Reins of the Icebound Frostbrood Vanquisher##51955
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Ironbound Proto-Drake",{
keywords={"ironbound","proto-drake","proto","drake","flying","mount"},
mounts={63956},
patch='30100',
mounttype='Flying',
model={28953},
description="This guide will help you acquire the Ironbound Proto-Drake mount.",
},[[
step
kill Flame Leviathan##33113
Click here to load the "Orbit-uary" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Orbit-uary"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Orbit-uary_ achievement |achieve 12401/1 |goto Ulduar/1 49,40
step
kill Ignis the Furnace Master##33118
Click here to load the "Stokin' the Furnace" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Stokin' the Furnace"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Stokin' the Furnace_ achievement |achieve 12401/2 |goto Ulduar/1 37.50,26.50
step
kill Razorscale##33186
Click here to load the "Iron Dwarf, Medium Rare" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Iron Dwarf, Medium Rare"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Iron Dwarf, Medium Rare_ achievement |achieve 12401/3 |goto Ulduar/1 54.10,26.30
step
kill XT-002 Deconstructor##33293
Click here to load the "Heartbreaker" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Heartbreaker"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Heartbreaker_ achievement |achieve 12401/4 |goto Ulduar/1 48.50,13.90
step
Kill the Assembly of Iron
Click here to load the "I Choose You, Steelbreaker" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Choose You, Steelbreaker"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _I Choose You, Steelbreaker_ achievement |achieve 12401/5 |goto Ulduar/2 15,56
step
kill Kologarn##32930
Click here to load the "Disarmed" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Disarmed"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Disarmed_ achievement |achieve 12401/6 |goto Ulduar/2 37.30,14.00
step
kill Auriaya##33515
Click here to load the "Crazy Cat Lady" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Crazy Cat Lady"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Crazy Cat Lady_ achievement |achieve 12401/7 |goto Ulduar/3 52.90,74.15
step
kill Hodir##32845
Click here to load the "I Could Say That This Cache Was Rare" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Could Say That This Cache Was Rare"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _I Could Say That This Cache Was Rare_ achievement |achieve 12401/8 |goto Ulduar/3 66.00,63.70
step
kill Thorim##32865
Click here to load the "Lose Your Illusion" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Lose Your Illusion"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Lose Your Illusion_ achievement |achieve 12401/9 |goto Ulduar/3 70.32,48.82
step
kill Freya##32906
Click here to load the "Knock, Knock, Knock on Wood" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Knock, Knock, Knock on Wood"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Knock, Knock, Knock on Wood_ achievement |achieve 12401/10 |goto Ulduar/3 53,23
step
kill Mimiron##33350
Click here to load the "Firefighter" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Firefighter"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Firefighter_ achievement |achieve 12401/11 |goto Ulduar/5 43.60,41.10
step
kill General Vezax##33271
Click here to load the "I Love the Smell of Saronite in the Morning" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Love the Smell of Saronite in the Morning"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _I Love the Smell of Saronite in the Morning_ achievement |achieve 12401/12 |goto Ulduar/4 52.60,57.10
step
kill Yogg-Saron##33288
Click here to load the "One Light in the Darkness" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\One Light in the Darkness"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _One Light in the Darkness_ achievement |achieve 12401/13 |goto Ulduar/4 68,40.80
step
Go to any mail box.
collect Reins of the Ironbound Proto-Drake##45801
step
learnmount Ironbound Proto-Drake##63956 |use Reins of the Ironbound Proto-Drake##45801
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Red Dragonhawk",{
keywords={"red","dragonhawk","flying","mount"},
mounts={61997},
patch='30800',
mounttype='Flying',
model={23515},
description="This guide will help you acquire the Red Dragonhawk mount.",
},[[
step
Obtain _100 mounts_ you can use our guide to achieve this |achieve 2537
Check your _mailbox_ for your _prize_!
collect 1 Red Dragonhawk##44842
step
learnmount Red Dragonhawk##61997 |use Red Dragonhawk##44842
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Red Proto-Drake",{
keywords={"red","proto-drake","flying","mount"},
mounts={59961},
patch='30002',
mounttype='Flying',
model={28044},
description="This guide will help you acquire the Red Proto-Drake mount.",
},[[
step
In order to earn this achievement, you will need complete 38 parts to the achievement _Glory to the Hero_.
These parts take place in _Heroic Wrath of the Lich King Dungeons_, so keep in mind that all parts in this guide will take place in _HEROIC MODE ONLY_.
confirm
step
_On The Rocks_
In order to earn this achievement, you will need at least one other party member.
Prince Keleseth will cast _Frost Tomb_ on one of the party members.
_DO NOT BREAK THEM OUT!_ It will cause you to fail the achievement.
kill Prince Keleseth##23953
achieve 2136/1 |goto Utgarde Keep/1 30.60,65.60
step
_Split Personality_
In order to earn this achievement, you will need to kill Grand magus Telestra's Mirror Images within 5 seconds of killing the first.
The easiest way to do this will be to lower the Image's health to 10%.
Once all 3 are at 10%, kill them all.
kill Grand Magus Telestra##26731
achieve 2136/2 |goto The Nexus/1 27.60,41.60
step
_Chaos Theory_
In order to earn this achievement, you will need to defeat Anomalus without destroying any _Chaotic Rifts_.
At 75%, 50% and 25% he will enter a _Rift Phase_, each lasting about 25 seconds.
The easiest way to do this is to kite him around, spreading out each rift by at least 20 yards.
achieve 2136/4
step
_Intense Cold_
kill Keristrasza##26723
For this achievement, you will need someone who can dispel, or escape movement impairing effects.
She will cast _Crystal Chains_, which binds you to the ground for 10 seconds.
In order to earn this achievement, you will need to be moving around every 3 seconds to avoid _Intense Cold_ from stacking.
achieve 2136/3 |goto The Nexus/1 37.00,68.40
step
_Watch Him Die_
To earn this achievement, you will need to kill Krik'thir the Gatewatcher before you kill _Watcher Silthik, Watcher Narjil and Watcher Gashra_.
The watchers cannot be CC'd, but they can  be stunned.
achieve 2136/5 |goto Azjol-Nerub/3 48.60,45.60
step
_Hadronox Denied_
kill Hadronox##28921
This achievement can be tricky. You will have to kill _Hadronox_ before he comes up the tunnel.
There are several ways to do this.
If you're a rogue, you can aggro an enemy in the main chamber and vanish, which will reset the boss.
Have the group move to the bottom of the tunnel, but not jump.
After a bit Hadronox will respawn.
OR
You could just run down the tunnel, kill all of the adds then him.
achieve 2136/6 |goto Azjol-Nerub/2 40.40,30.60
step
_Gotta Go!_
For this achievement, you will need to maximize your dps on the boss.
When he reaches 75%, 50% and 25% health, he will use an ability called _Submerge_ which will clear any status affect he's currently under and become immune to damage.
At this point adds will spawn, just kill them as fast as you can.
kill Anub'arak##29120
achieve 2136/7 |goto Azjol-Nerub/1 61.80,48.60
step
_Respect Your Elders_
In order to earn this achievement, you will need to kill Nadox without killing Ahn'kahet Guardians that spawn.
When the Guardian does spawn, have a DPS pull it to [Ahn'kahet: The Old Kingdom/1 74.60,37.80] and continue to kill Nadox.
kill Elder Nadox##29309
achieve 2136/9 |goto Ahn'kahet: The Old Kingdom/1 69.80,27.60
step
_Volunteer Work_
kill Jedoga Shadowseeker##29310
In order to get this achievement, you simply have to not kill any Twilight Volunteers.
Letting a Twilight Volunteer sacrifice himself for Jedoga will dramatically increase her damage output.
If possible, disarm her to mitigate damage.
achieve 2136/10 |goto Ahn'kahet: The Old Kingdom/1 49.20,71.80
step
_Volazj's Quick Demise_
For this achievemnt you will need heavy AoE damage for the Insanity phase.
_Insanity_ is cast randomly throughout the fight. It will cause mirror images of each party member to spawn
You must kill all of the mirror images, then help each player kill their set before being able to attack Volazj again.
Once the phase is over you'll be back to dpsing Volazj down.
If you're a warrior, you willbe able to spell reflect _Mind Flay_ and _Shadow Bolt Volley_ for instant damage.
kill Herald Volazj##29311
achieve 2136/8 |goto Ahn'kahet: The Old Kingdom/1 23.60,50.60
step
_Consumption Junction_
In order to earn this achievement, you must prevent Trollgore from gaining 10 stacks of Consume.
He will use the _Consume_ ability every 10 seconds.
Moving out of his line of sight will prevent him from gaining a stack of consume.
He will gain 1 stack of consumer per party member that he can see.
a good strategy is to have the tank fight him at the top of the stairs, and the dps at the bottom.
DPS for 10 seconds, then move behind the stairwell on the left to LoS.
kill Trollgore##26630
achieve 2136/11 |goto Drak'Tharon Keep/1 56.80,20.40
step
_Oh Novos!_
kill Novos the Summoner##26631
For this achievement, you must not allow any of his undead minions to reach the main area.
Basically, have a DPS camp out at [79.60,46.90] near the top of the steps.
Who ever is designated to do so must pick up the undead as the spawn.
Use AoE to pick them up, because if you miss one you fail the achievement.
achieve 2136/13 |goto Drak'Tharon Keep/1 71.00,47.60
step
_Better Off Dread_
In order to earn this achievement, you must kill 6 raptors whil fighting King Dred.
_Kill the Raptors before you kill King Dred!_
kill King Dred##27483
achieve 2136/12 |goto Drak'Tharon Keep/1 63.20,87.40
step
_Defenseless_
This achievement requires that you don't let the prison seal be damaged.
In order to do this, you must pick up all adds before they reach the entrance to the instance and kill them.
Failing to pick up an add immidiately will cost the the achievements for this dungeon.
Click here to proceed to the rest of the achievements. |confirm
achieve 2136/14
step
_Dehydration_
For this achievement, you will need to defeat _Ichor Globule_ before the reach the boss.
The Ichor Globule spawn after you destroy the 35 charges of _Protective Bubble_.
There will be 3 phases where this happens.
The easiest way to take care of this is to hit the Activation Crystals found randomly throughout the room.
Activation Crystals can be found at the provided locations below:
[The Violet Hold/1 55.30,79.80]
[The Violet Hold/1 46.90,39.20]
[The Violet Hold/1 30.70,74.70]
kill Ichoron##29313
Click here if this boss wasn't available. |confirm
achieve 2136/16
step
_A Void Dance_
For this achievement, you simply have to defeat _Zuramat the Obliterator_ without defeating the void sentries he summons.
To avoid taking damage from the sentries, simply kite him around the room.
Click here if this boss wasn't available. |confirm
achieve 2136/17
step
_Lockdown!_
This achievement requires that you kill all the bosses inside of Violet Hold.
This will take several runs.
confirm
achieve 1865/1
achieve 1865/2
achieve 1865/3
achieve 1865/4
achieve 1865/5
achieve 1865/6
achieve 2136/15
step
achieve 2136/14
Click here if you did not earn the achievement. |confirm
step
_Snakes, Why'd It Have To Be Snakes?_
For this achievement, you will need to defeat Slad'ran without getting snake wrapped.
Pull the boss himself to the bottom of the stairwell at [Gundrak/1 58.20,35.90].
Have all ranged DPS and the Healer stand at the top of the stairwell.
DPS any snake that comes towards the group. The faster you damage him the more snakes spawn.
kill Slad'ran##29304
achieve 2136/21
step
_Less-rabi_
In order to get this achievmeent, you must defeat Moorabi while preventing him from transforming into a mammoth at any point during the fight.
To do this, you will need dedicated interrupts.
Each time he attempts to cast _Transformation_ unsuccesfully, the cast time required to do it will be shorter.
To avoid having to interrupt a lot, you should have high dps for this fight.
kill Moorabi##29305
achieve 2136/20 |goto Gundrak/1 38.80,49.00
step
_What the Eck?_
For this achievement, you must defeat Gal'darah in Heroic difficulty while under the effects of _Eck Residue_
Eck the Ferocious uses an ability called _Eck Spit_ which will give you the debuff.
_You need to be in front of Eck in order to get the debuff!_
kill Eck the Ferocious##29932 |goto Gundrak/1 25.60,69.20
confirm
step
_What the Eck?_
Kill Gal'darah while you have the _Eck Spit_ debuff to complete this achievement.
Note that you shouldn't dps the boss too fast or you could miss the achievement.
kill Gal'darah
achieve 2136/18 |goto Gundrak/1 46.50,27
step
_Share the Love_
For this achievement, you absolutely requires you to have 5 party  memebrs.
To earn it, you will need 5 party members to be impaled during the fight.
This achievement is a bit tricky to earn, as  Moorabi randomly casts the spell on a group member, meaning it can take a while before he gets everyone at least once.
Just slow dps on him until you earn the achievement. This fight is more heal intensive than anything else.
kill Gal'darah##29306
achieve 2136/19 |goto Gundrak/1 46.40,27.60
step
_Good Grief_
This achievement requires that you defeat the Maiden of Grief in a minute.
You will need to be on the lookout for _Shock of Sorrow_.
When she begins casting, move into the _Storm of Grief_, which is the big black circle on the ground.
It will cancel the effects of Shock of Sorrow so that you can continue DPSing.
kill Maiden of Grief##27975
achieve 2136/22 |goto Halls of Stone 50.00,86.60
step
_Brann Spankin' New_
In order to earn this achievement, you will need to complete the Brann Bronzebeard event without Brann taking damage.
In order to do this, have the group stand at the entrance to the room.
Simply AoE any mob that spawns at least once to take the attention off of Brann.
achieve 2136/23 |goto Halls of Stone 84.90,76.10
step
_Abuse the Ooze_
For this achievement, you will need to kill 5 Iron Sludges during the fight with Sjonnir the Ironshaper.
In order to start, you will need to DPS him down to 50% of his health.
_You must not take him any lower!_ No dots, no DPS at this point.
If you are able to handle the extra adds, allow more than 2 sludges to converge at the center of the room.
After 2 slimes meet, _Iron Sludge_ will spawn. Kill 5 of them, then defeat Sjonnir for the achievement.
kill Sjonnir the Ironshaper##27978
achieve 2136/24 |goto Halls of Stone 49.80,14.20
step
_Lightning Struck_
Defeat General Bjarngrim while he is under the affects of _Temporary Electrical Charge_.
To do this achievement, you will have to engage him _AFTER_ he stops at one of 3 platforms listed below to gain the _Temporary Electrical Charge_ buff.
Once he does that, you will need to engage him asap.
Kill his guards and them him.
[Halls of Lightning/1 43.20,37.00]
[Halls of Lightning/1 54.40,52.40]
[Halls of Lightning/1 54.50,72.00]
kill General Bjarngrim##28586
achieve 2136/26
step
_Shatter Resistant_
In order to get this achievement, you basically have to defeat Volkhan before he shatters more than 4 Brittle Golems.
This achievement is fairly easy and straight forward, just dps the boss down as fast as you can, ignoring the adds that spawn.
kill Volkhan##28587
achieve 2136/27 |goto Halls of Lightning/2 40.20,19.40
step
_Timely Death_
For this achievement, you will n eed to defeat Loken in 2 minutes or less.
This achievement is simple, simply avoid the _Lightning Nova_ that he casts.
kill Loken##28923
achieve 2136/25 |goto Halls of Lightning/2 19.20,52.00
step
_Zombiefest!_
This achievement is tricky to pull off.
There are only 85 to 90 zombies in the first area before entering the building.
In order to have them spawn after _Salramm the Fleshcrafter_, pull to [The Culling of Stratholme/2 54.60,36.60]
After killing him, make sure you don't leave the building. Wait for Arthas to come to you. _DO NOT KILL_ any zombies spawning back in the first area.
Proceed through the instance as normal, killing the 3rd boss.
For this achievement, you will need to gather _ALL_ zombies in the first area, along with 20 or more from the area after the 3rd boss.
Once you have them all gathered, kill them as quickly as possible. _You do not have to pull the packs together._
You can track this achievement in game to see how much time you've got left.
achieve 2136/29
step
_The Culling of Time_
This achievement requires that you defeat the _Infinite Corruptor_ in the Culling of Stratholme.
When you start the instance, a timer will start.
When that timer ends, you fail the achievement.
You will need to fight up to the last boss before the timer runs out.
kill Infinite Corruptor##32273
achieve 2136/28 |goto The Culling of Stratholme/2 51.60,41.60
step
_The Incredible Hulk_
For this achievement, you will need to have _Svala Sorrow Grave_ kill a _Scourge Hulk_.
Before engaging Svala, pull a Scourge Hulk, which can be found at this spot or [Utgarde Pinnacle/1 24.00,69.30].
Beat the Hulk down to 10k Health.
Now, engage Svala. If you are soloing, take her to the top of the steps, to [Utgarde Pinnacle/2 39.90,68.80]. This will give you time for the Scourge Hulk to walk to you and not know you out of range of the sword while stunned.
If you are in a group, just have the tank pull the abomination to the alter. When the sword lands, it will either kill the Hulk, or massively damage it, leaving a dot that will kill him afterwards.
kill Svala Sorrowgrave##26668, Scourge Hulk##26555
achieve 2136/30 |goto Utgarde Pinnacle/1 35.80,85.60
step
_Lodi Dodi We Loves the Skadi_
This achievement requires that you defeat Skadi the Ruthelss within 3 minutes of starting his gauntlet event.
The event starts as soon as you arrive at [Utgarde Pinnacle/2 68.10,69.10].
Run to [Utgarde Pinnacle/2 68.00,35.70].
Kill all enemies that you have gathered, picking up 3 harpoons.
When the message _Skadi is now in range of the harpoons_ appears, click theharpoon launchers to bring him down.
Dps him as fast as you can and the achievement is yours.
kill Skadi the Ruthless##26693
achieve 2136/31
Following the above directions will net you the _My Girl Loves to Skadi All the Time_ achievement as well, which is to kill Grauf in one passing.
achieve 2136/32
step
_King's Bane_
This can be a difficult achievement to attain.
It requires that you don't trigger _Bane_ during the King Ymiron encounter.
During the fight, you will see Ymiron cast _Bane_.
It is important to _STOP ALL DPS_ when this happens. The buff lasts for 5 seconds.
You can use _Spellsteal_ and Warlock pets can _Devour Magic_ to get rid of it. It can be dispelled.
kill King Ymiron##26861
achieve 2136/33 |goto Utgarde Pinnacle/2 40.60,53.40
step
_Experienced Drake Rider_
For this, it will take at least 3 days to complete.
Defeat Eregos using all 3 of the drake mounts provided inside of the instance.
Here is your progress.
achieve 1871/1
achieve 1871/2
achieve 1871/3
achieve 2136/34
confirm
step
_Ruby Void, Emerald Void and Amber Void_
It is possible to earn all 3 of these achievements in one run.
For melee users, it might be a little tougher, but if you run around the top platform, Eregos will eventually drop down to melee range.
Alternatively, you can fly around until he is low enough for you to melee.
achieve 2136/36
achieve 2136/37
achieve 2136/38
step
_Make It Count_
This achievement requires that you defeat Ley-Guardian Eregos within 20 minutes of defeating Drakos the Interrogator.
This will basically mean a speed run for the instance.
achieve 2136/35
step
When you complete the achievement check your in-game mailbox for the mount
collect Reins of the Red Proto-Drake##44160
step
learnmount Red Proto-Drake##59961 |use Reins of the Red Proto-Drake##44160
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Rusted Proto-Drake",{
keywords={"rusted","proto-drake","proto","drake","flying","mount"},
mounts={63963},
patch='30100',
mounttype='Flying',
model={28954},
description="This guide will help you acquire the Rusted Proto-Drake mount.",
},[[
step
kill Flame Leviathan##33113
Click here to load the "Orbit-uary" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Orbit-uary"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Orbit-uary_ achievement |achieve 12401/1 |goto Ulduar/1 49,40
step
kill Ignis the Furnace Master##33118
Click here to load the "Stokin' the Furnace" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Stokin' the Furnace"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Stokin' the Furnace_ achievement |achieve 12401/2 |goto Ulduar/1 37.50,26.50
step
kill Razorscale##33186
Click here to load the "Iron Dwarf, Medium Rare" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Iron Dwarf, Medium Rare"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Iron Dwarf, Medium Rare_ achievement |achieve 12401/3 |goto Ulduar/1 54.10,26.30
step
kill XT-002 Deconstructor##33293
Click here to load the "Heartbreaker" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Heartbreaker"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Heartbreaker_ achievement |achieve 12401/4 |goto Ulduar/1 48.50,13.90
step
Kill the Assembly of Iron
Click here to load the "I Choose You, Steelbreaker" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Choose You, Steelbreaker"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _I Choose You, Steelbreaker_ achievement |achieve 12401/5 |goto Ulduar/2 15,56
step
kill Kologarn##32930
Click here to load the "Disarmed" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Disarmed"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Disarmed_ achievement |achieve 12401/6 |goto Ulduar/2 37.30,14.00
step
kill Auriaya##33515
Click here to load the "Crazy Cat Lady" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Crazy Cat Lady"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Crazy Cat Lady_ achievement |achieve 12401/7 |goto Ulduar/3 52.90,74.15
step
kill Hodir##32845
Click here to load the "I Could Say That This Cache Was Rare" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Could Say That This Cache Was Rare"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _I Could Say That This Cache Was Rare_ achievement |achieve 12401/8 |goto Ulduar/3 66.00,63.70
step
kill Thorim##32865
Click here to load the "Lose Your Illusion" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Lose Your Illusion"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Lose Your Illusion_ achievement |achieve 12401/9 |goto Ulduar/3 70.32,48.82
step
kill Freya##32906
Click here to load the "Knock, Knock, Knock on Wood" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Knock, Knock, Knock on Wood"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Knock, Knock, Knock on Wood_ achievement |achieve 12401/10 |goto Ulduar/3 53,23
step
kill Mimiron##33350
Click here to load the "Firefighter" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\Firefighter"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Firefighter_ achievement |achieve 12401/11 |goto Ulduar/5 43.60,41.10
step
kill General Vezax##33271
Click here to load the "I Love the Smell of Saronite in the Morning" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\I Love the Smell of Saronite in the Morning"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _I Love the Smell of Saronite in the Morning_ achievement |achieve 12401/12 |goto Ulduar/4 52.60,57.10
step
kill Yogg-Saron##33288
Click here to load the "One Light in the Darkness" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Northrend Raids\\One Light in the Darkness"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _One Light in the Darkness_ achievement |achieve 12401/13 |goto Ulduar/4 68,40.80
step
Go to any mail box.
collect Reins of the Rusted Proto-Drake##45802
step
learnmount Rusted Proto-Drake##63963 |use Reins of the Rusted Proto-Drake##45802
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Twilight Harbinger",{
keywords={"twilight","harbinger","flying","mount"},
mounts={107844},
patch='43000',
mounttype='Flying',
model={39562},
description="This guide will help you acquire the Twilight Harbinger mount.",
},[[
step
This mount is a reward for completing the _"Glory of the Dragon Soul Raider"_ achievement.
When you complete the achievement check your in-game mailbox for the mount
collect Reins of the Twilight Harbinger##77068
step
learnmount Twilight Harbinger##107844 |use Reins of the Twilight Harbinger##77068
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Violet Proto-Drake",{
keywords={"violet","proto-drake","proto","drake","flying","mount"},
model={28043},
description="This guide will help you acquire the Violet Proto-Drake mount.",
mounts={60024},
},[[
step
This achievement is earned by completing all of the _Seasonal Events_ that happen over the course of a year.
Here is your progress on the achievement:
To Honor One's Elders |achieve 2144/1
Fool For Love |achieve 2144/2
Noble Gardener |achieve 2144/3
For the Children |achieve 2144/4
The Flame Keeper |achieve 2144/5
Brewmaster |achieve 2144/6
Hallowed Be Thy Name |achieve 2144/7
Merrymaker |achieve 2144/8
|next "a" |only if default
confirm
step
_Lunar Festival_
Click here for the base questline. |next "Events Guides\\Lunar Festival\\Lunar Festival Main Questline" |confirm
Click here for the _Elders_ portion of the event. |next "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" |confirm
Click here for the _Event Achievement_ portion. |next "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" |confirm
If this event is currently unavailable, click here to continue. |confirm
|only if not achieved(2144/1)
step
_Love is in the Air_
Click here for the base questline. |next "Events Guides\\Love is in the Air\\Love is in the Air Main Questline" |confirm
Click here for the Dailies portion of the event. |next "Events Guides\\Love is in the Air\\Love is in the Air Dailies" |confirm
If this event is currently unavailable, click here to continue. |confirm
|only if not achieved(2144/2)
step
_Noblegarden_
Click here to cover the Quests for this event. |next "Events Guides\\Noblegarden\\Noblegarden Quests" |confirm
Click here to cover the Dailies for this event. |next "Events Guides\\Noblegarden\\Noblegarden Dailies" |confirm
If this event is currently unavailable, click here to continue. |confirm
|only if not achieved(2144/3)
step
_Children's Week_
Click here for the _Stormwind Quests_ portion. |next "Events Guides\\Children's Week\\Children's Week Orgrimmar Quests" |confirm
Click here for the _Shattrath Quests_ portion. |next "Events Guides\\Children's Week\\Children's Week Shattrath Quests" |confirm
Click here for the _Oracle Quests_ portion. You can only do This _OR_ the Wolvar version. |next "Events Guides\\Children's Week\\Children's Week Dalaran Oracles Quests" |confirm
Click here for the _Oracle Quests_ portion. You can only do This _OR_ the Oracle version. |next "Events Guides\\Children's Week\\Children's Week Dalaran Wolvar Quests" |confirm
Click here for the _Event Achievement_ portion. |next "Events Guides\\Children's Week\\Achievements\\For the Children" |confirm
If this event is currently unavailable, click here to continue. |confirm
|only if not achieved(2144/4)
step
_Midsummer Festival_
Click here for the _Quest_ portion. |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Quests" |confirm
Click here the _Event Achievement_ portion. |next "Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\Midsummer Achievement Guide" |confirm
If this event is currently unavailable, click here to continue. |confirm
|only if not achieved(2144/5)
step
_Brewfest_
Click here for the _quest_ portion. |next "Events Guides\\Brewfest\\Brewfest Quests" |confirm
Click here for the _daily_ portion. |next "Events Guides\\Brewfest\\Brewfest Dailies" |confirm
If this event is currently unavailable, click here to continue. |confirm
|only if not achieved(2144/6)
step
_Hallow's End_
Click here for the _Achievement Portion_ of the event. |next "Events Guides\\Hallow's End\\Achievements\\Hallowed Be Thy Name" |confirm
If this event is currently unavailable, click here to continue. |confirm
|only if not achieved(2144/7)
step
_Merrymaker_
Click here for the _Quest Portion_ of the event. |next "Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Quests" |confirm
Click here for the _Achievement Portion_ of the event. |next "Events Guides\\Feast of Winter Veil\\Achievements\\Merrymaker" |confirm
If this event is currently unavailable, click here to continue. |confirm
|only if not achieved(2144/8)
step
label "a"
Check your _mailbox_ for your mount.
collect 1 Violet Proto-Drake##44177
step
Congratulations, you have earned the Violet Proto-Drake.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Achievement Mounts\\Volcanic Stone Drake",{
keywords={"volcanic","stone","drake","flying","mount"},
mounts={88331},
patch='unknown',
mounttype='Flying',
model={35551},
description="This guide will help you acquire the Volcanic Stone Drake mount.",
},[[
step
In order to earn this achievement, you will need complete 28 parts to the achievement _Glory to the Cataclysm Hero_.
These parts take place in _Heroic Cataclysm Dungeons_, so keep in mind that all parts in this guide will take place in _HEROIC MODE ONLY_.
confirm
step
_Crushing Bones and Cracking Skulls_
kill Rom'ogg Bonecrusher##39665
kill Angered Earth##50376
While fighting _Rom'ogg Bonecrusher_, you will need to look out for an ability called _Quake_.
After he uses _Quake_, he will spawn an _Angered Earth_ per player in the instance.
_Do not kill_ them!
At _66% and 33% Health_, he will use an ability called _Chains of Woe_.
Destroy the chains and leave the radius of the attack, _but keep the angered earth in the affected area_.
You must kill 10 Angered Earth with The Skullcracker.
achieve 4845/2 |goto Blackrock Caverns/1 50.00,70.20
step
_Arrested Development_
kill Corla Herald of Twilight##39679
Before fighting Corla, clear this entire room of trash. You will be using the space to drag away one Evolved Zealot.
She will have 3 Zealots with her before engaging.
You will still want to block two of the beams hitting the zealots after engaging her.
Once one evolves, drag it to the opposite end of the room, that way it won't have the haste aura that she gives.
Repeat this for the other two, then kill her.
achieve 4845/3 |goto Blackrock Caverns/2 28.60,16.60
step
_Too Hot to Handle_
kill Karsh Steelbender##39698
Save all your damage cooldowns for the last part of the fight.
Do the fight normally until Karsh reaches 200,000 Health.
At this point, _Stop all DPS!_
Have the tank or whoever has aggro drag him through the _Molten Metal_ at the center of the room until he has 15  stacks of _Superheated Quicksilver Armor_.
You will have 17 seconds to kill him after.
achieve 4845/4 |goto Blackrock Caverns/2 46.60,64.80
step
_Ascendant Descending_
kill Ascendant Lord Obsidius##39705
At the start of the fight, he will spawn 3 Shadows.
_All of these shadows need to be kited!_
Being hit by the shadows will give you a stack of _Crepuscular Veil_.
In order to earn this achievement, you will need to defeat Ascendant Lord Obsidius without getting 4 stacks of Crespuscular Veil.
achieve 4845/5 |goto Blackrock Caverns/2 69.60,53.40
step
_Old Faithful_
The easiest way to attain this achievement is to have some form of _Crowd Control_ (Sheep Excluded).
DPS the Naz'tar Tempest Witch down to 50% health, CC it, then have the party stand on top of it.
Once you see the cursor on the ground indicating that a Geyser is about to hit, move and let it kill the mob.
kill Lady Naz'jar##40640
achieve 4845/6 |goto Throne of the Tides/2 50.60,21.40
step
_Prince of Tides_
kill Ozumat##44566
15 seconds after the event starts, an _Unyielding Behemoth_ will spawn.
You _MUST NOT_ kill this behemoth, so mark it with whatever you want and let your group know not to kill it.
Otherwise, proceed with the event as normal.
Once you defeat the Faceless Sappers at phase 2, you must kill the Unyielding Behemoth before the boss.
achieve 4845/7 |goto Throne of the Tides/2 32.60,22.60
step
_Rotten to the Core_
This achievement requires that you kill 60 disciples within a 10 second time frame.
You will need high AoE DPS.
Simply pull them, bunch them together, then blow them up.
achieve 4845/8 |goto The Stonecore 55.60,38.60
step
_No Static at All_
kill Asaad##43875
In order to get this achievement, you must avoid being hit by _Static Cling._
To avoid being hit by this, simply jump right before the cast is finished.
An easy way to check for the boss casting this, set him as your focus and have enemy casting shown on portraits.
He will continue to cast this spell as long as he is alive, so faster dps is best.
achieve 4845/9 |goto The Vortex Pinnacle 29.80,39.60
step
_Extra Credit Bonus Stage_
This achievement requires you to collect 5 _Golden Orbs_ in Vortex Pinnacle.
Check the provided coordinates for orbs:
[The Vortex Pinnacle/1 63.50,35.50]
[The Vortex Pinnacle/1 51.60,47.10]
[The Vortex Pinnacle/1 58.20,70.50]
[The Vortex Pinnacle/1 56.40,70.60]
This is only obtainable through the second boss using the tornados to jump up. [The Vortex Pinnacle/1 50.20,82.90]
This is only obtainable through the second boss using the tornados to jump up. [The Vortex Pinnacle/1 51.10,80.20]
[The Vortex Pinnacle/1 33.20,67.30]
[The Vortex Pinnacle/1 33.20,69.90]
[The Vortex Pinnacle/1 33.50,48.80]
achieve 4845/10
step
_Acrocalypse Now_
kill Augh##49045, Lockmaw##43614
For this achievement, you will likely need heavy  heals.
DPS the enemies slowly, as you will need 5 waves of adds to spawn.
_DO NOT KILL_ any of the crocalisk adds that spawn as it will ruin the achievement.
Once the 5th group has spawned, there will be 20 Frenzied Crocolisks to kill.
Use your AoE to kill them. _Note that you will only have 10 seconds to kill them all!_
achieve 4845/12
step
_Kill It With Fire!_
kill High Prophet Barim##43612
DPS him down to 50% and enter the shadow zone.
Once there, Soul Fragments will spawn.
Let 3 of them spawn, then drag them through the fires left behind by the Dark Hatchling, turning them into Burning Souls.
Kill the 3 burning souls, then finish the boss off.
achieve 4845/11
step
_Headed South_
kill Siamat##44819
For this achievement, you will need to gather 3 _Servant of Siamat_ as them spawn.
You must not kill them yet.
Continue fighting the boss down to 75% health.
Once at this point, gather your group up, and kill one of the servants.
You will get a buff.
Continue the fight until the buff starts to wear off.
At this point, you will kill both of the other servants, causing the bosses shield to fall off.
You should have 3 stacks of the needed buff, and it will be time to kill the boss.
It will be a DPS race at this point.
achieve 4845/13 |goto The Vortex Pinnacle 40.00,56.00
step
_I Hate That Song_
kill Temple Guardian Anhuur##39425
At 66% and 33% health, he will enter phase 2.
During Phase 2 you have to pull a level that is in the pit on the right and left side of the boss platform.
Have a player drop down on one side to pull aggro of the snakes at the bottom.
Have a second player drop shortly after, pulling the level.
Meanwhile, have the first player run to the other switch, aggroing the snakes over there.
Have another player hit that switch.
Note that it is _EXTREMELY IMPORTANT_ to have a character who can interrupt.
Have that class stay up top with the boss and as soon as the levers are pulled, interrupt his channeling.
You will have to do this twice
achieve 4845/14 |goto Halls of Origination/1 57.60,63.00
step
_Straw That Broke the Camel's Back_
clicknpc Camel##39443
There are more camels around [Halls of Origination/2 34.80,58.80]
For this achievement you simply have to kill the boss while mounted atop a camel.
Avoid spikes that erupt from the ground and you will easily get this achievement.
Earthrager Ptah is located here [Halls of Origination/2 43.60,49.60]
achieve 4845/15 |goto Halls of Origination/2 35.80,38.60
step
_Faster Than the Speed of Light_
[Halls of Origination/1 49.60,32.60]
[Halls of Origination/1 62.60,32.60]
[Halls of Origination/1 62.90,21.50]
[Halls of Origination/1 48.80,21.50]
The above coordinates are to the 4 bosses you need to kill within 5 minutes.
The timer starts as soon as you enter the Vault of Lights.
achieve 4845/17
step
_Sun of a...._
For this achievement, you will need interrupt abilities.
The most useful ones for this fight are _Counterspell, Shield Bash and Spell Lock_, which will lock him out of using focus for 8 seconds each.
The goal is to get him to 50% health with 40 Focus or higher.
If he below 40 focus, reset and try again.
achieve 4845/16 |goto Halls of Origination/3 47.00,21.00
step
_Umbrage for Umbriss_
For this boss, you will want to crowd control the _Malignant Trogg_ that spawns at the start of the fight before it gets near anyone.
Kill the other 3 troggs and proceed with the fight as normal.
Fight Umbriss down to 15% health then stop dps.
Kill the Malignant Trogg, then kill Umbriss. _You will have 20 seconds_.
kill General Umbriss##39625
achieve 4845/18
step
_Ready for Raiding_
During the fight, there will be a "Wheel of Flames" that appears on the ground underneath the boss.
Simply run along with it, or out of range of it.
_DO NOT_ try and jump over it.
kill Glubtok##47162
achieve 4845/19 |goto The Deadmines/1 36.80,61.60
step
_Rat Pack_
kill Helix Gearbreaker##47296
This achievement takes place during stage one of the fight.
_Do not_ kill the Lumbering Oaf yet.
He will use an ability called _Oaf Smash_ on a random player, which will cause 4 _Helix' Crew_ goblins to spawn on top of the log.
Kill the 4 of them, then wait for the Lumbering Oaf to use _Oaf Smash_ again.
Repeat this process 5 times.
achieve 4845/20 |goto The Deadmines/1 50.20,88.40
step
_Prototype Prodigy_
This achievement requires that the prototype provided for the fight barely gets damaged.
Keep the Prototype away from the boss at all costs!
When the first _Molten Slag_ spawns, use this combination to kill it: _1-1-2_
For the rest of the Molten Slag spawns, use a _2-1-1_ rotation.
kill Foe Reaper 5000##43778
achieve 4845/21 |goto The Deadmines/2 9.60,82.00
step
_It's Frost Damage_
For this achievement, you will need to fight Ripsnarl down to 75%,50% or 25%.
At this point, he will enter a phase where _Vapors_ spawn.
Take a sing Vapor away from the group and tank it to the side. _Be sure not to kill it!_
The Goal is to get the vapor to grow and cast _Coalesce_.
Once it starts casting the spell, run into the cabin to avoid any damage from _Coalesce_.
achieve 4845/22 |goto The Deadmines/2 63.60,39.60
step
_I'm on a Diet_
After Ripsnarl is defeated, enter the cabin start to "Captain" Cookie event.
In order to get this achievement, you _must not_ click any food that has a green aura around it.
achieve 4845/23
step
_Vigorous Vancleef Vindicator_
Once the event with Vanessa Vancleef is started, you will be tied up above a lava cauldron.
There will be four valves you have to click before you are released.
At this point, you will have _5 Minutes_ to reach Vanessa Vancleef again.
Follow the path provided. At each point there will be an event where you  have to kill all enemies.
The first coordinate has two events that take place.
Upon reaching Vanessa, you will gain the achievement granted you get there in time.
map The Deadmines/2
path	12.40,72.40	29.30,50.20	41.00,49.00
path	50.40,18.40	51.80,44.40	60.70,42.20
achieve 4845/24
step
_Pardon Denied_
During the fight, Ashbury will cast an ability called _Asphyxiate_.
Immidiately after, he will cast a spell called _Stay of Execution_.
_Stay of Execution MUST_ be interrupted in order to earn this achievement.
kill Baron Ashbury##46962
achieve 4845/25 |goto Shadowfang Keep/1 67.70,72.90
step
_To the Ground!_
kill Commander Springvale##4278
In order to earn this achievement, you must prevent _Wailing Guardsmen_ and _Tormented Officers_ from casting _Unholy Empowerement_ on Springvale.
When you see them casting, interrupt, or you won't get the achievement.
Kill the boss without the adds casting the spell.
achieve 4845/26 |goto Shadowfang Keep/1 28.20,61.30
step
_Bullet Time_
Pull Godfrey to the provided coordinates and have the tank face away from the steps.
Have ranged dps and heals stand at the top of the stairs.
Godfrey will summon a pack of Bloodthirsty Ghouls, then immidiately cast _Pistol Barrage_.
The object of the achievement is to kill 12 Ghouls with the _Pistol Barrage_ ability.
kill Lord Godfrey##46964
achieve 4845/27 |goto Shadowfang Keep/6 73.80,51.30
step
After Erudax uses channel _Shadow Gale_ 2 _Faceless Corruptors_ will spawn at [85.40,59.40]
You will need to kill them as fast as you can.
Once they enter the room and reach the eggs they will start to hatch them, causing you to fail this achievement.
achieve 4845/28 |goto Grim Batol 86.20,82.80
step
achieve 4845
step
Go to any mailbox.
collect Reins of the Volcanic Stone Drake##62900
step
learnmount Volcanic Stone Drake##88331 |use Reins of the Volcanic Stone Drake##62900
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Argent Tournament Mounts\\Argent Hippogryph",{
keywords={"argent","tournament","hippogryph","flying","mount"},
mounts={63844},
patch='30103',
mounttype='Flying',
model={31714},
description="This guide will help you acquire the Argent Hippogryph mount.",
},[[
step
Use the _Icecrown Dailies_ section of this guide to complete the _Argent Tournament Grounds pre-quests_ and _dailies_.
earn 150 Champion's Seal##241
step
talk Freka Bloodaxe##33553 |goto Icecrown,76.40,24.20 |only Orc,Goblin
talk Doru Thunderhorn##33556 |goto Icecrown,76.20,24.40 |only Tauren
talk Eliza Killian##33555  |goto Icecrown,76.40,24.00|only Undead
talk Samamba##33554 |goto Icecrown,76.00,24.40 |only Troll
talk Trellis Morningsun##33557 |goto Icecrown,76.20,23.80 |only BloodElf
buy 1 Argent Hippogryph##45725
step
learnmount Argent Hippogryph##63844 |use Argent Hippogryph##45725
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Argent Tournament Mounts\\Sunreaver Dragonhawk",{
keywords={"sunreaver","dragonhawk","argent","tournament","flying","mount","exalted","the","sunreavers"},
mounts={66088},
patch='60001',
mounttype='Flying',
model={29696},
description="This guide will help you acquire the Sunreaver Dragonhawk mount.",
},[[
step
Use the _Icecrown Dailies_ section of this guide to complete the _Argent_ _Tournament_ _Grounds_ and _The Sunreavers pre-quests_ and _dailies_.
_Exalted_ with _The Sunreavers_ |complete rep("The Sunreavers")>=Exalted
earn 150 Champion's Seal##241
|tip This mount is Horde-only. You can earn the Silver Covenant Hippogryph for the Alliance version.
step
talk Vasarin Redmorn##34772
buy 1 Sunreaver Dragonhawk##46814 |goto Icecrown,76.20,24.00
step
learnmount Sunreaver Dragonhawk##66088 |use Sunreaver Dragonhawk##46814
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Celestial Steed",{
keywords={"blizzard","store","celestial","steed","flying","mount"},
mounts={75614},
patch='unknown',
mounttype='Flying',
model={31958},
description="This guide will help you acquire the Celestial Steed mount.",
},[[
step
This mount can be purchased for $25.00 from the official _Blizzard Store_.
After purchasing, check your in-game mailbox.
collect Celestial Steed##54811
step
learnmount Celestial Steed##75614 |use Celestial Steed##54811
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Heart of the Aspects",{
keywords={"blizzard","store","heart","of","the","aspects","flying","mount"},
mounts={110051},
patch='43000',
mounttype='Flying',
model={40029},
description="This guide will help you acquire the Heart of the Aspects mount.",
},[[
step
This mount can be purchased for $25.00 from the official _Blizzard Store_.
After purchasing, check your in-game mailbox.
collect Heart of the Aspects##78924
step
learnmount Heart of the Aspects##110051 |use Heart of the Aspects##78924
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Iron Skyreaver",{
keywords={"blizzard","store","iron","sky","reaver","flying","mount"},
mounts={153489},
patch='54200',
mounttype='Flying',
model={53038},
description="This guide will help you acquire the Iron Skyreaver mount.",
},[[
step
This mount can be purchased for $25.00 from the official _Blizzard Store_.
After purchasing, check your in-game mailbox.
collect Iron Skyreaver##107951
step
learnmount Iron Skyreaver##153489 |use Iron Skyreaver##107951
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Swift Windsteed",{
keywords={"blizzard","store","swift","wind","steed","flying","mount"},
mounts={110051},
patch='43000',
mounttype='Flying',
model={46729},
description="This guide will help you acquire the Swift Windsteed mount.",
},[[
step
This mount can be purchased for $25.00 from the official _Blizzard Store_.
After purchasing, check your in-game mailbox.
collect Swift Windsteed##78924
step
learnmount Swift Windsteed##134573 |use Swift Windsteed##92724
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Winged Guardian",{
keywords={"blizzard","store","winged","guardian","flying","mount"},
mounts={98727},
patch='unknown',
mounttype='Flying',
model={38260},
description="This guide will help you acquire the Winged Guardian mount.",
},[[
step
This mount can be purchased for $25.00 from the official _Blizzard Store_.
After purchasing, check your in-game mailbox.
collect Winged Guardian##69846
step
learnmount Winged Guardian##98727 |use Winged Guardian##69846
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Phosphorescent Stone Drake",{
keywords={"phosphorescent","stone","drake","aeonaxx","flying","mount"},
mounts={88718},
patch='unknown',
mounttype='Flying',
model={35740},
description="This guide will help you acquire the Phosphorescent Stone Drake mount.",
},[[
step
Follow the Path to Find Aeonaxx at One of the Spawn Points
map Deepholm/0
path	49.12,55.60	50.50,63.50	55.05,54.11
path	53.72,39.71	42.00,43.60	43.00,50.79
kill Aeonaxx##50062
|tip After a few seconds, Aeonaxx's name will turn red and become hostile. You have a limited time to kill him before he overwhelms you. Every few seconds he will spawn young drake adds to attack you, these should be killed.
collect 1 Reins of the Phosphorescent Stone Drake##63042 |or
'|complete hasmount(88718) |or
step
|use Reins of the Phosphorescent Stone Drake##63042
Learn the "Phosphorescent Stone Drake" Mount |learnmount Phosphorescent Stone Drake##88718
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dropped Mounts\\Time-Lost Proto Drake",{
keywords={"time","lost","proto","drake","flying","mount"},
mounts={60002},
patch='30002',
mounttype='Flying',
model={26711},
description="This guide will help you acquire the Time-Lost Proto-Drake mount.",
},[[
step
map The Storm Peaks
path follow loose;loop;ants straight
path	28.00,38.20	49.80,30.20	45.20,59.60
path	50.40,70.00	40.40,65.20	45.20,83.40
path	38.20,83.80	35.80,65.20	30.00,67.80
path	26.00,61.40
kill Time-Lost Proto Drake##32491 |tip This mob is an extremely rare spawn, so you may be searching for a while.
collect 1 Reins of the Time-Lost Proto-Drake##44168
step
learnmount Time-Lost Proto Drake##60002 |use Reins of the Time-Lost Proto-Drake##44168
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dungeon Mounts\\Blue Drake",{
keywords={"blue","drake","cache","of","eregos","flying","mount"},
mounts={59568},
patch='30008',
mounttype='Flying',
model={25256},
description="This guide will help you acquire the Blue Drake mount.",
},[[
step
kill Ley-Guardian Eregos##27656
|tip You must use the LFG tool and complete this on Heroic difficulty.
|tip You will have to fight all bosses up until this point.
click Cache of Eregos##193603
collect Cache of the Ley-Guardian##52676 |goto The Oculus/4 75.30,26.40
Open up the Cache of the Ley-Guardian in your bags |use Cache of the Ley-Guardian##52676
|tip This has a very low chance of dropping the mount. (About 1.40%)
collect 1 Reins of the Blue Drake##43953 |n
learnmount Blue Drake##59568 |use Reins of the Blue Drake##43953 |goto The Oculus/4 75.30,26.40
step
Congratulations!
You have collected the _Blue Drake_ mount
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dungeon Mounts\\Blue Proto Drake", {
keywords={"blue","proto","drake","skadi","the","ruthless","flying","mount"},
mounts={59996},
patch='30002',
mounttype='Flying',
model={28041},
description="This guide will help you acquire the Blue Proto-Drake mount.",
},[[
step
goto Howling Fjord,57.30,46.60 |n
Enter _Heroic Utgarde Pinnacle_ here |goto Utgarde Pinnacle |noway |c
|tip To change an instance to heroic mode: right click your portait and hover over "Dungeon Difficulty", click on 5 Player (Heroic). You should see the entrance portal change into a giant skull.
step
kill Skadi the Ruthless##26693
collect 1 Reins of the Blue Protodrake##44151 |goto Utgarde Pinnacle,68.30,35.50
|tip This has a 1.20% drop rate, do this everyday to have a higher chance of obtaining it!
step
learnmount Blue Protodrake##59996 |use Reins of the Blue Protodrake##44151
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dungeon Mounts\\Bronze Drake", {
keywords={"bronze","drake","flying","mount"},
mounts={59569},
patch='30002',
mounttype='Flying',
model={27812},
description="This guide will help you acquire the Bronze Drake mount.",
},[[
step
step
Enter "The Culling of Stratholme" Dungeon |goto Tanaris/18 57.10,82.55 < 20 |c |or
|tip Down inside the Caverns of Time.
|tip You must do the Heroic version.
'|complete hasmount(59569) |or
step
kill Infinite Corruptor##32273
|tip He is down the Market Row road, past the place where you fight Mal'Ganis.
|tip You have a timer of 24 minutes to complete the event.
|tip You must do the Heroic version to get the mount.
|tip Use "The Culling of Stratholme" dungeon guide to accomplish this.
collect 1 Reins of the Bronze Drake##43951 |or
'|complete hasmount(59569) |or
step
use the Reins of the Bronze Drake##43951
Learn the "Bronze Drake" Mount |learnmount Bronze Drake##59569
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dungeon Mounts\\Drake of the North Wind",{
keywords={"drake","of","the","north","wind","flying","mount"},
mounts={88742},
patch='unknown',
mounttype='Flying',
model={35755},
description="This guide will help you acquire the Drake of the North Wind mount.",
},[[
step
Use the _dungeon finder_ to take you to _The Vortex Pinnacle_
|tip It is much easier to obtain this mount with friends that will let you have it
Go to The Vortex Pinnacle |goto Uldum/0 76.69,84.33 < 100 |c |or
|tip It is within a floating platform in the sky.
'|complete hasmount(88742) |or
step
_Traverse_ through _The Vortex Pinnacle_ instance
kill Altairus##43873
collect 1 Reins of the Drake of the North Wind##63040 |goto The Vortex Pinnacle/1 52.20,80.20 |or
|tip This has a .8% drop rate, do this everyday to have a higher chance of obtaining it!
'|complete hasmount(88742) |or
step
|use Reins of the Drake of the North Wind##63040
Learn the "Drake of the North Wind" Mount |learnmount Drake of the North Wind##88742
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Dungeon Mounts\\Vitreous Stone Drake",{
keywords={"vitreous","stone","drake","slabhide","flying","mount"},
mounts={88746},
patch='unknown',
mounttype='Flying',
model={35751},
description="This guide will help you acquire the Vitreous Stone Drake mount.",
},[[
step
Use the _dungeon finder_ to take you to _The Stonecore_
|tip It is much easier to obtain this mount with friends that will let you have it
Go to _The Stonecore_ |goto The Stonecore |noway |c
step
_Traverse_ through _The Stonecore_ instance
kill Slabhide##43214
collect 1 Reins of the Vitreous Stone Drake##63043 |goto The Stonecore,36.60,45.80
|tip This has a .8% drop rate, do this everyday to have a higher chance of obtaining it!
step
learnmount Vitreous Stone Drake##88746 |use Reins of the Vitreous Stone Drake##63043
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Event Mounts\\Love is in the Air\\X-45 Heartbreaker",{
keywords={"big","love","rocket","love","is","in","the","air","flying","mount"},
mounts={38207},
patch='unknown',
mounttype='unknown',
model={30989},
description="This guide will help you acquire the X-45 Heartbreaker mount.",
},[[
step
This requires the _Love is in the Air_ event
|tip You must be at least level 10 to obtain this mount.
Use the _Dungeon Finder_ to go to the _World Event Dungeon - Hummel_ |goto Shadowfang Keep |noway |c
step
kill Apothecary Hummel##36296
collect Heart-Shaped Box##54537
|tip This will appear in your bags once you kill Apothecary Hummel and can only be won once a day
use Heart-Shaped Box##54537
collect X-45 Heartbreaker##50250
|tip This mount has an insanely low chance of dropping. (0.03%)
step
learnmount X-45 Heartbreaker##71342 |use X-45 Heartbreaker##50250
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Event Mounts\\Hallow's End\\Headless Horseman's Mount",{
condition_suggested=function() return isevent("Hallow's End") end,
keywords={"Flying","Mount","Hallow's","End","Event"},
mounts={48025},
patch='30002',
mounttype='Flying',
model={25159},
description="This mount has a very low chance to drop from the Headless Horseman during the Hallow's End event.",
},[[
step
label "Start"
Wait for the Hallow's End Event to Start |complete isevent("Hallow's End")
|tip Hallow's End runs from October 18th to November 1st.
step
Enter "The Headless Horseman" Dungeon |goto Scarlet Monastery |noway |c
|tip Use the Dungeon Finder tool to queue for "The Headless Horseman."
step
kill Headless Horseman##23682
collect 1 Loot-Filled Pumpkin##117392
|tip This will appear in your bags after killing the Headless Horseman.
|tip It can only be looted once per day.
step
use the Loot-Filled Pumpkin##54516
collect The Horseman's Reins##37012 |next "Mount_Dropped" |or
|tip The mount has a very low chance to drop.
'|complete itemcount(54516) == 0 |next "Mount_Did_Not_Drop" |or
step
label "Mount_Did_Not_Drop"
You can try again tomorrow for another chance
|tip The mount has a very low chance to drop.
Click Here to Start Again |confirm |next "Start"
step
label "Mount_Dropped"
use The Horseman's Reins##37012
learnmount Headless Horseman's Mount##48025
step
_Congratulations!_
You Collected the "Headless Horseman's Mount."
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Event Mounts\\Hallow's End\\Magic Broom",{
description="This mount can be purchased from Chub in Tirisfal Glades for 150 Tricky Treats.",
condition_suggested=function() return isevent("Hallow's End") end,
keywords={"Flying","Mount","Hallow's","End","Event"},
mounts={47977},
patch='40100',
mounttype='unknown',
model={21939},
},[[
step
Wait for the Hallow's End Event to Start |complete isevent("Hallow's End")
|tip Hallow's End runs from October 18th to November 1st.
step
collect 150 Tricky Treat##33226
|tip These can be obtained from the various candy bucket quests around WoW zones.
|tip Use the "Tricks and Treats" guide to find their locations.
step
talk Warchief's Herald##49750
accept Battle for Azeroth: Mission Statement##51443 |goto Orgrimmar/1 49.39,76.57
|tip This quest is required to unlock access to Zidormi in Tirisfal Glades.
step
Speak to Warchief Sylvanas Windrunner in Orgrimmar |q 51443/1 |goto Orgrimmar/1 48.61,71.98
|tip Inside the building.
step
Watch the dialogue
|tip Inside the building.
Meet Your Team |q 51443/2 |goto Orgrimmar/1 54.44,78.43
step
talk Nathanos Blightcaller##135205
|tip Inside the building.
turnin Battle for Azeroth: Mission Statement##51443 |goto Orgrimmar/1 54.44,78.43
step
talk Zidormi##141488
Select _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |complete QC.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80
step
talk Chub##53757
buy 1 Magic Broom##37011 |goto Tirisfal Glades/0 62.18,66.44
step
use the Magic Broom##37011
learnmount Magic Broom##47977
step
_Congratulations!_
You Collected the "Magic Broom" Mount.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Obsidian Nightwing",{
keywords={"recruit","a","friend","recruit-a-friend","flying","mount"},
model={42498},
mounts={121820},
patch='43400',
mounttype='Flying',
description="This guide will help you acquire the Obsidian Nightwing mount.",
},[[
step
This mount is one of the 8 rewards available for completing the requirements of Blizzards Recruit a Friend program
|tip Check out the Blizzard website to see all details on the Recruit a Friend program.
collect 1 Heart of the Nightwing##83086
step
learnmount Obsidian Nightwing##121820 |use Heart of the Nightwing##83086
step
_Congratulations!_
You collected the _Obsidian Nightwing_ mount
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\X-53 Touring Rocket",{
keywords={"x","53","touring","rocket","recruit","a","friend","recruit-a-friend","flying","mount"},
mounts={75973},
patch='unknown',
mounttype='Flying',
model={31992},
description="This guide will help you acquire the X-53 Touring Rocket mount.",
},[[
step
This mount is one of the 8 rewards available for completing the requirements of Blizzards Recruit a Friend program
|tip Check out the Blizzard website to see all details on the Recruit a Friend program.
collect X-53 Touring Rocket##54860
step
learnmount X-53 Touring Rocket##75973 |use X-53 Touring Rocket##54860
step
_Congratulations!_
You collected the _X-53 Touring Rocket_ mount
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Swift Zhevra",{
keywords={"swift","zhevra","recruit","a","friend","recruit-a-friend","ground","mount"},
mounts={49322},
patch='20403',
mounttype='Ground',
model={24745},
description="This guide will help you acquire the Swift Zhevra mount.",
},[[
step
This mount is one of the 8 rewards available for completing the requirements of Blizzard's Recruit a Friend program
|tip Check out the Blizzard website to see all details on the Recruit a Friend program.
collect Swift Zhevra##37719
step
learnmount Swift Zhevra##49322 |use Swift Zhevra##37719
step
_Congratulations!_
You collected the _Swift Zhevra_ mount
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Emerald Hippogryph",{
keywords={"emerald","hippogryph","recruit","a","friend","recruit-a-friend","flying","mount"},
mounts={149801},
patch='54100',
mounttype='Flying',
model={51993},
description="This guide will help you acquire the Emerald Hippogryph mount.",
},[[
step
This mount is one of the 8 rewards available for completing the requirements of Blizzard's Recruit a Friend program
|tip Check out the Blizzard website to see all details on the Recruit a Friend program.
collect Emerald Hippogryph##106246
step
learnmount Emerald Hippogryph##149801 |use Emerald Hippogryph##106246
step
_Congratulations!_
You collected the _Emerald Hippogryph_ mount
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Engineering\\Flying Machine",{
keywords={"engineering","flying","mount"},
mounts={44153},
patch='20300',
mounttype='Flying',
model={22719},
description="This guide will help you acquire the Flying Machine mount.",
},[[
step
If you are an Engineer and wish to learn to craft this mount, click HERE |next "BUILD_IT"
|tip
If you just want to collect the materials needed to craft this mount, click HERE |next "OBTAIN_STUFF"
|tip
If you want to purchase this mount from the auction house, click HERE |next "AUCTION_HOUSE_TRIP"
|tip You must know Outland Engineering to learn this mount.
step
label "BUILD_IT"
If allied with the {b}Aldor{}, click below:
talk Technician Mihila##33677
|tip Inside the building up on the Aldor platform.
Select _"Train me."_ |gossip 35102
learn Flying Machine##44155 |goto Shattrath City/0 37.75,31.80
|tip
If allied with the {r}Scryers{}, click below:
talk Engineer Sinbei##33634
|tip Inside the building up on the Scryer platform.
Select _"Train me."_ |gossip 35102
learn Flying Machine##44155 |goto Shattrath City/0 43.83,65.18
|tip
If you haven't chosen a faction yet, then both the above trainers may train you.
step
label "OBTAIN_STUFF"
You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
collect 2 Fel Iron Casing##23782
collect 20 Elemental Blasting Powder##23781
collect 20 Handful of Fel Iron Bolts##23783
|next "a" |only if default
Click here to farm these materials. |confirm
step
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
collect 52 Fel Iron Ore##23424
collect 5 Mote of Fire##22574
collect 10 Mote of Earth##22573
step
label "a"
talk Kithas##3346
buy 8 Star Wood##11291 |goto Orgrimmar 53.30,48.90
step
create Flying Machine##44155,Engineering,1 total
collect Flying Machine##34060 |next "END_AND_GET_FLYING"
step
label "AUCTION_HOUSE_TRIP"
Purchase the {b}Flying Machine{} item from the auction house.
collect Flying Machine##34060
step
label "END_AND_GET_FLYING"
use Flying Machine##34060
learnmount Flying Machine##44153
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Engineering\\Turbo-Charged Flying Machine",{
keywords={"turbo","charged","flying","machine","engineering","mount"},
mounts={44151},
patch='20300',
mounttype='Flying',
model={22720},
description="This guide will help you acquire the Turbo-Charged Flying Machine mount.",
},[[
step
Use the _Engineering profession_ section of this guide to _level_ to _375 Engineering_ skill. |only if skill("Engineering")>1 and skill("Engineering")<425
Use the _Engineering profession_ section of this guide to _level_ to _375 Engineering_ skill. |only if skill("Engineering")<1
talk Roxxik##11017
learn Turbo-Charged Flying Machine##44157 |goto Orgrimmar/1 56.90,56.50
step
You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
collect 4 Adamantite Frame##23784
collect 8 Khorium Power Core##23786
collect 8 Felsteel Stabilizer##23787
|next "a" |only if default
Click here if you wish to farm this yourself. |confirm
step
map Nagrand
path	72.70,64.70	74.30,60.50	69.10,48.60
path	72.30,43.10	66.10,32.30	57.70,30.80
path	59.50,27.30	49.30,24.10	47.10,20.20
path	39.60,20.40	28.20,12.10	25.70,16.50
path	26.80,23.60	30.90,21.90	27.90,25.30
path	27.50,32.10	23.20,27.80	7.10,39.90
path	25.20,61.10	31.90,81.90	41.80,81.80
path	43.50,73.70	57.40,78.30	43.00,62.20
path	32.20,60.30	29.20,54.10	34.00,52.60
path	29.70,45.70	34.10,44.30	35.50,47.30
path	38.80,36.90	45.50,43.90	42.40,50.90
path	48.00,57.50	51.50,55.60	60.50,56.90
path	56.70,64.00	70.10,83.30	69.80,72.50
collect 32 Adamantite Ore##23425
collect 16 Khorium Ore##23426
collect 80 Mote of Fire##22574
collect 60 Fel Iron Ore##23424
collect 40 Eternium Ore##23427
step
label "a"
talk Griftah##19227
buy 1 Hula Girl Doll##34249 |goto Shattrath City 65.60,68.80
step
create Turbo-Charged Flying Machine##44157,Engineering,1 total
collect 1 Turbo-Charged Flying Machine##34061
step
learnmount Turbo-Charged Flying Machine##44151 |use Turbo-Charged Flying Machine##34061
_Warning!_ If you _drop Engineering_ you _will not_ be able to _use this mount anymore_!
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Tailoring\\Flying Carpet",{
keywords={"tailoring","flying","carpet","mount","flying"},
mounts={61451},
patch='30008',
mounttype='Flying',
model={28060},
description="This guide will help you acquire the Flying Carpet mount.",
},[[
step
Click here to use the _Tailoring profession_ section of this guide to _level_ to _300 Tailoring_ skill. |only if  skill("Tailoring")<300
talk Magar##3363
learn Flying Carpet##60969 |goto Orgrimmar/1 60.70,59.10
step
You can either _buy_ this _item from_ the _Auction House_ or _farm_ this:
collect 6 Bolt of Netherweave##21840 |next "golden"
Click here to farm this ingredient |confirm |next "farm_netherweave"
step
label "farm_netherweave"
kill Sunfury Magister##18855+, Sunfury Astromancer##19643+, Sunfury Captain##19453+, Sunfury Bloodwarder##18853+, Sunfury Geologist##19779+, Sunfury Warp-Master##18857+
collect 30 Netherweave Cloth##21877 |n
create 6 Bolt of Netherweave##21840,Tailoring,6 total |goto Netherstorm,26.30,68.10
step
label "golden"
You can either _buy_ this _item from_ the _Auction House_ or _farm_ this:
collect 4 Golden Draenite##23112 |next "arcane"
Click here to farm this ingredient |confirm |next "farm_golden"
step
label "farm_golden"
map Howling Fjord
path 83.00,44.80	78.10,39.40	72.70,38.30
path 71.00,31.80	75.30,22.90	70.20,8.30
path 63.20,13.70
path 61.40,23.60	57.70,18.30	51.40,14.20
path 45.50,13.30	38.10,18.90	31.10,10.90
path 28.90,10.30	21.70,12.80	19.40,23.50
path 24.20,27.40	27.60,22.60	27.30,30.80
path 38.10,29.00	47.60,32.70	53.00,31.90
path 63.50,37.10	65.50,48.70	66.90,62.70
path 64.40,67.80	64.40,72.40	67.90,76.50
path 71.30,73.60	72.50,67.90	77.30,67.20
path 77.20,60.80	74.90,55.30	79.10,50.40
Follow the provided path and gather all materials needed.
collect 4 Golden Draenite##23112
step
label "arcane"
You can either _buy_ this _item from_ the _Auction House_ or _farm_ this:
talk Auctioneer Zilbeena##46639
collect 4 Arcane Dust##22445 |goto Orgrimmar/1 66.30,36.40 |next "a"
Click here to farm Arcane Dust from dungeons. |confirm |only if skill("Enchanting")>=325
step
Kill any enemy inside of the instance, disenchanting any green  item that they might drop.
Note that armors have a higher chance of yielding _Arcane Dust_
collect 4 Arcane Dust##22445 |goto Utgarde Keep 69.30,73.00
|only if skill("Enchanting")>=325
step
label "a"
talk Borya##3364
buy 5 Heavy Silken Thread##8343 |goto Orgrimmar/1 60.70,58.60
step
create Flying Carpet##60969,Tailoring,1 total
collect 1 Flying Carpet##44554 |n
learnmount Flying Carpet##61451 |use Flying Carpet##44554
_Warning!_ If you _drop Tailoring_ you _will not_ be able to _use this mount anymore_!
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Tailoring\\Frosty Flying Carpet",{
keywords={"tailoring","frosty","flying","carpet","mount"},
mounts={75596},
patch='unknown',
mounttype='Flying',
model={31837},
description="This guide will help you acquire the Frost Flying Carpet mount.",
},[[
step
Click here to level your Northrend Tailoring skill if it is not level 50. |next "Profession Guides\\Tailoring\\Leveling Guides\\Northrend Tailoring 1-75" |only if QC.guidesets["ProfessionsA"] |confirm
talk Frozo the Renowned##40160
buy 1 Pattern: Frosty Flying Carpet##54798
learn Frosty Flying Carpet##75597 |use Pattern: Frosty Flying Carpet##54798
step
You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
collect 4 Frozen Orb##43102
collect 1 Moonshroud##41594
collect 1 Spellweave##41595
collect 1 Ebonweave##41593
collect 4 Frozen Orb##43102
Click here to farm these yourself. |confirm
|next "make" |only if default
step
kill Chosen Zealot##32175+
collect 15 Frostweave Cloth##33470 |goto Icecrown 45,77
Farm the elite mobs inside of the Cathedral of Darkness.
step
talk Auctioneer Zilbeena##46639
buy 4 Frozen Orb##43102 |goto Orgrimmar/1 66.30,36.40
buy 2 Eternal Life##35625 |goto Orgrimmar/1 66.30,36.40
buy 2 Eternal Fire##36860 |goto Orgrimmar/1 66.30,36.40
buy 2 Eternal Shadow##35627 |goto Orgrimmar/1 66.30,36.40
buy 6 Infinite Dust##34054 |goto Orgrimmar/1 66.30,36.40
step
label "make"
create Frosty Flying Carpet##75597,Tailoring,1 total
collect 1 Frosty Flying Carpet##54797
step
learnmount Frost Flying Carpet##75596 |use Frosty Flying Carpet##54797
_Warning!_ If you _drop Tailoring_ you _will not_ be able to _use this mount anymore_!
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Profession Mounts\\Tailoring\\Magnificent Flying Carpet",{
keywords={"tailoring","magnificent","flying","carpet","mount"},
mounts={61309},
patch='30002',
mounttype='Flying',
model={28064},
description="This guide will help you acquire the Magnificent Flying Carpet mount.",
},[[
step
Reach Level 27 |ding 27 |or
|tip Reach Level 27 to be able to learn this mount.
'|complete hasmount(61309) |or
step
Learn Tailoring to Craft and Learn this Mount
|tip This mount can only be crafted and learned with the Tailoring Profession.
|tip Use the "Tailoring 1-300" Profession Guide to accomplish this.
Click Here to Open the "Tailoring 1-300" Profession Guide |confirm |loadguide "Profession Guides\\Tailoring\\Leveling Guides\\Tailoring 1-300"
Learn the "Tailoring" Profession |complete hasprof("Tailoring",1,300) |or
'|complete hasmount(61309) |or
step
Level your Northrend Tailoring Profession to Level 50
|tip Use the "Northrend Tailoring 1-75" to accomplish this.
Click Here to Open the "Northrend Tailoring 1-75" Profession Guide |confirm |loadguide "Profession Guides\\Tailoring\\Leveling Guides\\Northrend Tailoring 1-75"
Learn "Northrend Tailoring" Level 50 |complete hasprof("Northrend Tailoring",50,75) |or
'|complete hasmount(61309) |or
step
talk Charles Worth##28699
|tip You must have Northrend Tailoring Level 50 to craft or use this pattern.
learn Magnificent Flying Carpet##60971 |goto Dalaran/1 36.14,33.55 |or
'|complete hasmount(61309) |or
step
Kill Crystalweb Spiders
|tip Inside the cave.
|tip You can also purchase these from the auction house.
collect 4 Iceweb Spider Silk##42253 |goto The Storm Peaks/0 40.40,78.27 |or
'|complete hasmount(61309) |or
step
kill Chosen Zealot##32175+
|tip Inside the building.
|tip You can also purchase these from the auction house.
collect 120 Frostweave Cloth##33470 |goto Icecrown/0 44.37,77.68 |or
'|complete hasmount(61309) |or
step
collect 24 Infinite Dust##34054 |or
|tip You can disenchant Northrend gear and weapons with the Enchanting profession to obtain these, or purchase these from the auction house.
'|complete hasmount(61309) |or
step
collect 4 Monarch Topaz##36930 |or
|tip You can prospect Northrend ores using the Jewelcrafting profession to obtain these, or purchase these from the auction house.
'|complete hasmount(61309) |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 4 Red Dye##2604 |goto Dalaran/1 35.62,34.41 |or
'|complete hasmount(61309) |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 2 Yellow Dye##4341 |goto Dalaran/1 35.62,34.41 |or
'|complete hasmount(61309) |or
step
Create 24 Bolts of Frostweave Cloth
|tip Create these using your Northrend Tailoring Profession.
|tip You can also purchase these from the auction house.
collect 24 Bolt of Frostweave##41510 |or
'|complete hasmount(61309) |or
step
Create 12 Bolts of Imbued Netherweave
|tip You can also purchase these from the auction house.
collect 12 Bolt of Imbued Frosteweave##41511 |or
'|complete hasmount(61309) |or
step
Create Magnificent Flying Carpet |only if hasprof ("Northrend Tailoring",50,75)
collect Magnificent Flying Carpet##44558 |or
'|complete hasmount(61309) |or
step
|use Magnificent Flying Carpet##44558
Learn the "Magnificent Flying Carpet" Mount |learnmount Magnificent Flying Carpet##61309
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Ashes of Al'ar",{
keywords={"mount","ashes","of","al'ar","alar","flying"},
mounts={40192},
patch='20100',
mounttype='Flying',
model={17890},
description="This guide will help you acquire the Ashes of Al'ar mount.",
},[[
step
This mount is dropped by Kael'thas Sunstrider in the Eye raid.
kill Kael'thas Sunstrider##19622
collect 1 Ashes of Al'ar##32458 |goto Tempest Keep 50,15.20
|tip This has a very low drop chance.
step
learnmount Ashes of Al'ar##40192 |use Ashes of Al'ar##32458
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Azure Drake",{
keywords={"azure","drake","mount","flying"},
mounts={59567},
patch='30002',
mounttype='Flying',
model={24743},
description="This guide will help you acquire the Azure Drake mount.",
},[[
step
This mount is foud in Alexstrasza's Gift within The Eye of Eternity raid.
kill Malygos##28859 |n
click Alexstrasza's Gift##193967
collect 1 Reins of the Azure Drake##43952 |goto The Eye of Eternity 38.40,49.80
|tip This has a very low drop chance.
step
learnmount Azure Drake##59567 |use Reins of the Azure Drake##43952
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Black Drake",{
keywords={"black","drake","mount","flying"},
mounts={59650},
patch='30002',
mounttype='Flying',
model={25831},
description="This guide will help you acquire the Black Drake mount.",
},[[
step
This mount is dropped by Sartharion in The Obsidian Sanctum 10-Man raid.
kill Sartharion##28860 |n
collect Reins of the Black Drake##43986 |goto The Obsidian Sanctum/0 52.90,48.00
step
learnmount Black Drake##59650 |use Reins of the Black Drake##43986
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Blazing Drake",{
keywords={"blazing","drake","mount","flying"},
mounts={107842},
patch='43000',
mounttype='Flying',
model={39561},
description="This guide will help you acquire the Blazing Drake mount.",
},[[
step
This mount is found in the Elementium Fragment within the Dragon Soul raid. It can drop from both Heroic and Normal difficulties.
kill Deathwing##56173
click Elementium Fragment##210220
collect 1 Reins of the Blazing Drake##77067 |goto Dragon Soul/7 33.50,79.60
|tip This has a very low drop chance.
step
learnmount Blazing Drake##107842 |use Reins of the Blazing Drake##77067
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Experiment 12-B",{
keywords={"experiment","12","b","12-b","flying","mount"},
mounts={110039},
patch='43000',
mounttype='Flying',
model={39229},
description="This guide will help you acquire the Experiment 12-B mount.",
},[[
step
This mount is found in the Lesser Cache of the Aspects within the Dragon Soul raid.
kill Ultraxion##55294
click Lesser Cache of the Aspects##210221
collect 1 Experiment 12-B##78919 |goto Dragon Soul/1 50.10,57.30
|tip This has a very low drop chance.
step
learnmount Experiment 12-B##110039 |use Experiment 12-B##78919
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Invincible",{
keywords={"invincible","lich","king","mount","flying"},
mounts={72286},
patch='30300',
mounttype='Flying',
model={31248},
description="This guide will help you acquire the Invincible mount.",
},[[
step
This mount is dropped by The Lich King in the Icecrown Citadel raid. It is only dropped on 25 Heroic Difficulty.
kill The Lich King##36597
collect 1 Invincible's Reins##50818 |goto Icecrown Citadel/7 49.80,52.80
|tip This has a very low drop chance.
step
learnmount Invincible##72286 |use Invincible's Reins##50818
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Life-Binder's Handmaiden",{
keywords={"life","binder's","binders","handmaiden","mount","flying"},
mounts={107845},
patch='43000',
mounttype='Flying',
model={39563},
description="This guide will help you acquire the Life-Binder's Handmaiden mount.",
},[[
step
Reach Level 35 |ding 35 |or
|tip This is the minimum level to enter the instance.
|tip It will be much easier to solo this instance at level 50+.
'|complete hasmount(107845) |or
step
Enter the Dragon Soul Raid
|tip Go down the spiral tunnel and enter the first passageway on the right at the bottom.
|tip Set the Raid Difficulty to Heroic.
|tip Open your map to help you locate the raid.
Enter the Heroic Dragon Soul Raid |goto Tanaris/18 61.84,26.61 < 20 |c |or
'|complete hasmount(107845) |or
step
kill Deathwing
|tip You will have to kill all the other bosses in this raid before you can kill Deathwing.
|tip Use the "Dragon Soul" Guide to accomplish this.
Click Here to Open the "Dragon Soul" Raid Guide |confirm |loadguide "Dungeon Guides\\Cataclysm Raids\\Dragon Soul"
step
click Elementium Fragment##210220
collect Life-Binder's Handmaiden##77069 |or
|tip You may have to complete the raid several times to collect the mount.
|tip This raid can be completed once a week.
'|complete hasmount(107845) |or
step
use Life-Binder's Handmaiden##77069
Learn the "Life-Binder's Handmaiden" Mount |learnmount Life-Binder's Handmaiden##107845
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Mimiron's Head",{
keywords={"mimirons","head","mount","flying"},
mounts={63796},
patch='30100',
mounttype='Flying',
model={28890},
description="This guide will help you acquire the Mimiron's Head mount.",
},[[
step
This mount is dropped by Yogg-Saron in the Ulduar raid. It can also drop from Unclaimed Black Market Containers which can be purchased from the Black Market Auction House in Pandaria.
Click here to kill Yogg-Saron |next "raid" |confirm
Click here to buy Black Market Containers |next "bmc" |confirm
step
label "raid"
This mount is dropped by Yogg-Saron in the Ulduar raid.
kill Yogg-Saron##33288 |n
collect 1 Mimiron's Head##45693 |goto Ulduar/4 68,40.80 |next "end"
|tip This has a very low drop chance.
step
label "bmc"
talk Madam Goya##62943
Buy any Unclaimed Black Market Container(s) you wish.
collect 1 Unclaimed Black Market Container##97565 |goto Dalaran L/11 71.25,18.16
step
Open the Black Market Container |use Unclaimed Black Market Container##97565
collect 1 Mimiron's Head##45693 |next "end"
step
label "end"
learnmount Mimiron's Head##63796 |use Mimiron's Head##45693
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Onyxian Drake",{
keywords={"onyxia","onyxian","drake","mount","flying"},
mounts={69395},
patch='30202',
mounttype='Flying',
model={30346},
description="This guide will help you acquire the Onyxian Drake mount.",
},[[
step
This mount is dropped by Onyxia in the Onyxia's Lair raid.
kill Onyxia##10184 |n
collect 1 Reins of the Onyxian Drake##49636 |goto Onyxia's Lair 68.00,31.40
|tip This has a droprate of about 0.30%
step
learnmount Onyxian Drake##69395 |use Reins of the Onyxian Drake##49636
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Pureblood Fire Hawk",{
keywords={"pureblood","pure","blood","fire","hawk","firehawk","mount","flying"},
mounts={97493},
patch='unknown',
mounttype='Flying',
model={38031},
description="This guide will help you acquire the Pureblood Fire Hawk.",
},[[
step
This mount is found in the Cache of the Fire Lord within the Firelands raid.
|tip In order to access the heroic version of this cache, you must have downed all bosses on heroic. Switching between normal and heroic difficulties has been known to cause issues with this boss.
kill Ragnaros##41634
click Cache of the Fire Lord##208967
collect 1 Smoldering Egg of Millagazor##69224 |goto Firelands/3 50.40,15.40
|tip This has a very low drop chance.
step
learnmount Pureblood Fire Hawk##97493 |use Smoldering Egg of Millagazor##69224
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Twilight Drake",{
keywords={"twilight","drake","mount","flying"},
mounts={59571},
patch='30002',
mounttype='Flying',
model={27796},
description="This guide will help you acquire the Twilight Drake mount.",
},[[
step
Enter "The Obsidian Sanctum" Raid |goto Dragonblight/0 60.01,56.89 < 20 |c |or
'|complete hasmount(59571) |or
step
kill Sartharion##28860
|tip Kill him first before killing any of the Twilight Drakes in the raid instance.
|tip When you attack Sartharion, every mob in the instance attacks you.
click the Obsidian Cache
collect Reins of the Twilight Drake##43954 |or
'|complete hasmount(59571) |or
step
|use Reins of the Twilight Drake##43954
Learn the "Twilight Drake" Mount |learnmount Twilight Drake##59571
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Raid Mounts\\Drake of the South Wind",{
keywords={"south","wind","drake","mount","flying"},
mounts={88744},
patch='unknown',
mounttype='Flying',
model={35755},
description="This guide will help you acquire the Drake of the South Wind mount.",
},[[
step
This mount is dropped by Al'Akir in The Throne of the Four Winds on any difficulty.
kill Al'Akir##46753
click Heart of Wind##207894
|tip It's a blue crystal that appears after Al'Akir is killed.
collect Reins of the Drake of the South Wind##63041 |goto Throne of the Four Winds 47.20,44.50
|tip This has a very low drop chance.
step
learnmount Drake of the South Wind##88744 |use Reins of the Drake of the South Wind##63041
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Dark Phoenix",{
keywords={"dark","phoenix","pheonix","mount","guild","exalted","flying"},
mounts={88990},
patch='unknown',
mounttype='Flying',
model={37145},
description="This guide will help you acquire the Dark Phoenix mount.",
},[[
step
#include "misc_rep_mount",rep="Guild"
Your _guild_ needs to have the achievement _"Guild Glory of the Cataclysm Raider"_ completed
_Guild Glory of the Cataclysm Raider_ |achieve 4988
step
talk Goram##46572
buy 1 Reins of the Dark Phoenix##63125 |goto Orgrimmar,48.38,75.79
step
learnmount Dark Phoenix##88990 |use Reins of the Dark Phoenix##63125
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Drake of the West Wind",{
keywords={"drake","of","the","west","wind","mount","tol","barad","baradin's","baradins","warens","exalted","flying"},
mounts={88741},
patch='unknown',
mounttype='Flying',
model={35754},
description="This guide will help you acquire the Drake of the West Wind mount.",
},[[
step
label "menu"
This will require that you be exalted with the Baradin Wardens.
Use this guide to gain reputation with them, as well as earn Hellscream's Reach Commendations.
Drake of the West Wind costs 200 Hellscream's Reach Commendations.
earn 200 Hellscream's Reach Commendation##391 |tip This is for the Drake
Click here if you have 200 Hellscream's Reach Commendations |next "exalted" |only if rep("Hellscream's Reach")==Exalted
|next |only if default
|next "exalted" |only if rep("Baradin's Wardens")==Exalted
step
Click here to move on to the dailies. |confirm
|next |only if default
|next "exalted" |only if rep("Baradin's Wardens")==Exalted
step
label "dailies"
You will only be able to accept a total of 6 quests in the following guide steps.
Click here to continue |confirm
step
Click here to use the Tol Barad, Hellscream Reach Dailies |confirm always |next "hellscream" |or
or
Click here to use the Tol Barad, Baradin Hold Dailies |confirm always |next "baradin" |or
step
label "hellscream"
You will only be able to accept a total of 6 quests in the following guide steps.
confirm
step
talk 3rd Officer Kronkar##48360
accept A Sticky Task##28684 |goto Tol Barad Peninsula,55.20,81.30
accept Boosting Morale##28680 |goto Tol Barad Peninsula,55.20,81.30
accept Captain P. Harris##28678 |goto Tol Barad Peninsula,55.20,81.30
accept Rattling Their Cages##28679 |goto Tol Barad Peninsula,55.20,81.30
accept Shark Tank##28681 |goto Tol Barad Peninsula,55.20,81.30
accept Thinning the Brood##28683 |goto Tol Barad Peninsula,55.20,81.30
step
talk Commander Larmash##48358
accept Claiming The Keep##28682 |goto Tol Barad Peninsula 53.50,80.60
accept Leave No Weapon Behind##28685 |goto Tol Barad Peninsula 53.50,80.60
accept Not The Friendliest Town##28686 |goto Tol Barad Peninsula 53.50,80.60
accept Teach A Man To Fish.... Or Steal##28687 |goto Tol Barad Peninsula 53.50,80.60
accept Walk A Mile In Their Shoes##28721 |goto Tol Barad Peninsula 53.50,80.60
step
talk Captain Prug##48363
accept Finish The Job##28693 |goto Tol Barad Peninsula 54.90,79.30
accept First Lieutenant Connor##28691 |goto Tol Barad Peninsula 54.90,79.30
accept Magnets, How Do They Work?##28692 |goto Tol Barad Peninsula 54.90,79.30
accept Salvaging the Remains##28690 |goto Tol Barad Peninsula 54.90,79.30
accept The Forgotten##28689 |goto Tol Barad Peninsula 54.90,79.30
step
talk Private Sarlosk##48361
accept Bomb's Away!##28696 |goto Tol Barad Peninsula 55.80,78.50
accept Cannonball!##28698 |goto Tol Barad Peninsula 55.80,78.50
accept Ghostbuster##28697 |goto Tol Barad Peninsula 55.80,78.50
accept Taking the Overlook Back##28700 |goto Tol Barad Peninsula 55.80,78.50
accept WANTED: Foreman Wellson##28695 |goto Tol Barad Peninsula 55.80,78.50
accept Watch Out For Splinters!##28694 |goto Tol Barad Peninsula 55.80,78.50
step
Follow the path up |goto Tol Barad Peninsula 74.30,42.80,0.50 |c
stickystart "cannonstack"
step
kill Commander Largo |q 28700/1 |goto Tol Barad Peninsula 78.60,42.00
|tip He's at the top of the tower.
step
label "cannonstack"
kill Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+, Cursed Stallion##46645+
Slay 14 Largo's Overlook Ghosts |q 28697/1 |goto Tol Barad Peninsula 78.20,49.00
Click Stacks of Cannonballs
|tip They look like piles of cannonballs shaped like pyramids on the ground around this area.
collect 4 Stack of Cannonballs##62818 |q 28698/1 |goto Tol Barad Peninsula 78.20,49.00
step
Click Strings of Fish
|tip They look like small fish hanging from simple wooden structures on the docks around this area.
collect 22 Rustberg Seabass##63047 |q 28687/1 |goto Tol Barad Peninsula 69.30,23.10
step
kill Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
kill 14 Rustberg Village Residents |q 28686/1 |goto Tol Barad Peninsula 67.60,37.10
step
kill 12 Darkwood Lurker |q 28683/1 |goto Tol Barad Peninsula 54.20,47.00
kill Darkwood Broodmother##46507+
collect 4 Sticky Silk Gland##62803 |q 28684/1 |goto Tol Barad Peninsula 54.20,47.00
step
kill Captain P. Harris |q 28678/1 |goto Tol Barad Peninsula 47.90,8.10
|tip He's walking around on this broken boat.
step
kill Tank |q 28681/1 |goto Tol Barad Peninsula 49.40,19.80
|tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help.
Click Barrels of Southsea Rum
|tip They look like barrels underwater around this area.
collect 6 Barrel of Southsea Rum##62810 |q 28680/1 |goto Tol Barad Peninsula 49.40,19.80
step
kill 8 Shipwrecked Sailor |q 28679/1 |goto Tol Barad Peninsula 49.00,29.40
step
kill Keep Lord Farson |q 28682/1 |goto Tol Barad Peninsula 36.10,27.30 |tip He's upstairs in the fort.
step
talk Farson Hold Prisoner##48308
Tell you're here to help him escape
Escort the Farson Prisoner |q 28721/1 |goto Tol Barad Peninsula 37.80,29.10 |tip Follow the Farson Hold Prisoner and protect him.
step
Click Racks of Rifles
|tip They look like wooden stands with guns on them around this area.
collect 12 Rusty Rifle##62921 |q 28685/1 |goto Tol Barad Peninsula 41.20,35.80
step
kill Foreman Wellson |q 28695/1 |goto Tol Barad Peninsula 27.20,47.70
step
Click a Cannon
|tip They look like black cannons on this small dock.
Shoot the boats
Destroy 10 Wellson Supply Boats |q 28696/1 |goto Tol Barad Peninsula 22.20,36.30
step
kill Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
collect 15 Shipyard Lumber##62811 |q 28694/1 |goto Tol Barad Peninsula 30.10,43.90
step
kill 5 Restless Soldier |q 28693/1 |goto Tol Barad Peninsula 40.20,57.90
Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
Click Siege Scraps
|tip They look like metal objects on the ground that appear after your use your Magnatized Scrap Collector.
collect 7 Siege Engine Scrap##52285 |q 28692/1 |goto Tol Barad Peninsula 40.20,57.90
stickystart "torturedsoul"
step
kill First Lieutenant Connor |q 28691/1 |goto Tol Barad Peninsula 38.40,77.60
|tip He's a big skeleton that walks around this area, so you may need to search for him.
step
label "torturedsoul"
kill Wandering Soul##46586+, Forgotten Ghoul##46569+
collect 9 Cursed Femur##62808 |q 28690/1 |goto Tol Barad Peninsula 38.10,71.50
Click Forgotten Soldier's Tombstones
|tip They look like taller and slimmer gravestones around this area.
Release 6 Tortured Souls |q 28689/1 |goto Tol Barad Peninsula 38.10,71.50
step
talk 3rd Officer Kronkar##48360
turnin A Sticky Task##28684 |goto Tol Barad Peninsula 55.20,81.30
turnin Boosting Morale##28680 |goto Tol Barad Peninsula 55.20,81.30
turnin Captain P. Harris##28678 |goto Tol Barad Peninsula 55.20,81.30
turnin Rattling Their Cages##28679 |goto Tol Barad Peninsula 55.20,81.30
turnin Shark Tank##28681 |goto Tol Barad Peninsula 55.20,81.30
turnin Thinning the Brood##28683 |goto Tol Barad Peninsula 55.20,81.30
step
talk Commander Larmash##48358
turnin Claiming The Keep##28682 |goto Tol Barad Peninsula 53.50,80.60
turnin Leave No Weapon Behind##28685 |goto Tol Barad Peninsula 53.50,80.60
turnin Not The Friendliest Town##28686 |goto Tol Barad Peninsula 53.50,80.60
turnin Teach A Man To Fish.... Or Steal##28687 |goto Tol Barad Peninsula 53.50,80.60
turnin Walk A Mile In Their Shoes##28721 |goto Tol Barad Peninsula 53.50,80.60
step
talk Captain Prug##48363
turnin Finish The Job##28693 |goto Tol Barad Peninsula 54.90,79.30
turnin First Lieutenant Connor##28691 |goto Tol Barad Peninsula 54.90,79.30
turnin Magnets, How Do They Work?##28692 |goto Tol Barad Peninsula 54.90,79.30
turnin Salvaging the Remains##28690 |goto Tol Barad Peninsula 54.90,79.30
turnin The Forgotten##28689 |goto Tol Barad Peninsula 54.90,79.30
step
talk Private Sarlosk##48361
turnin Bomb's Away!##28696 |goto Tol Barad Peninsula 55.80,78.50
turnin Cannonball!##28698 |goto Tol Barad Peninsula 55.80,78.50
turnin Ghostbuster##28697 |goto Tol Barad Peninsula 55.80,78.50
turnin Taking the Overlook Back##28700 |goto Tol Barad Peninsula 55.80,78.50
turnin WANTED: Foreman Wellson##28695 |goto Tol Barad Peninsula 55.80,78.50
turnin Watch Out For Splinters!##28694 |goto Tol Barad Peninsula 55.80,78.50
|next "menu" |only if rep("Hellscreams' Reach")<=Revered
|next "exalted" |only if rep("Hellscreams' Reach")<=Exalted
step
label "baradin"
These daily quests will only be available if the Horde faction currently controls Tol Barad.
confirm
step
You will only be able to accept a total of 6 quests in the following guide steps.
confirm
step
talk Commander Zanoth##48069
accept A Huge Problem##28657 |goto Tol Barad,50.90,49.70
accept Swamp Bait##28658 |goto Tol Barad,50.90,49.70
accept The Leftovers##28659 |goto Tol Barad,50.90,49.70
step
talk Drillmaster Razgoth##48070
accept D-Block##28663 |goto Tol Barad 51.50,49.70
accept Svarnos##28664 |goto Tol Barad 51.50,49.70
accept Cursed Shackles##28665 |goto Tol Barad 51.50,49.70
step
talk Private Garnoth##48071
accept Clearing the Depths##28660 |goto Tol Barad 51.50,49.70
accept Learning From The Past##28662 |goto Tol Barad 51.50,49.70
accept The Imprisoned Archmage##28661 |goto Tol Barad 51.50,49.70
step
talk Staff Sergeant Lazgar##48062
accept Food From Below##28670 |goto Tol Barad 51.50,49.70
accept Prison Revolt##28668 |goto Tol Barad 51.50,49.70
accept The Warden##28669 |goto Tol Barad 51.50,49.70
stickystart "cursedshackles"
step
Enter the underground jail |goto Tol Barad 42.70,39.10 < 5 |walk
kill Svarnos##47544+
collect Svarnos' Cursed Collar##63143 |q 28664/1 |goto Tol Barad 48.30,30.70
step
label "cursedshackles"
kill Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+
Slay 10 Demons |q 28663/1 |goto Tol Barad 44.40,30.50
Click Cursed Shackles
|tip They look like gray metal ball and chains laying on the ground all around this area.
collect 8 Cursed Shackles##63149 |q 28665/1 |goto Tol Barad 44.40,30.50
step
kill Baradin Crocolisk##47591+
collect 8 Crocolisk Hide##63103 |q 28658/1 |goto Tol Barad 42.10,41.80
step
Enter the underground jail |goto Tol Barad 44.00,69.20 < 5 |walk
kill Warden Silva##48036
collect Warden's Keys##63309 |q 28669/1 |goto Tol Barad 37.50,71.70
step
kill Imprisoned Worker##47550+, Exiled Mage##47552+
Slay 10 Prisoners |q 28668/1 |goto Tol Barad 40.90,78.20
Click Crates of Cellblock Rations
|tip They look like slim square wooden boxes on the ground around this area.
collect 12 Cellblock Ration |q 28670/1 |goto Tol Barad 40.90,78.20
step
Enter the underground jail |goto Tol Barad 60.80,50.10 < 5 |walk
kill Archmage Galus##47537
collect Archmage Galus' Staff##63033 |q 28661/1 |goto Tol Barad 56.80,54.80
step
label "dustyjournal"
kill Captive Spirit##47531+, Ghastly Convict##47590+
Slay 9 Ghosts |q 28660/1 |goto Tol Barad 51.40,49.50
Click Dusty Prison Journals
|tip They are books laying on the ground around this area.
collect 4 Dusty Prison Journal##63034 |q 28662/1 |goto Tol Barad 51.40,49.50
step
kill Alliance Mage Infantry##47598+, Alliance Hunter Infantry##47595+, Alliance Paladin Infantry##47600+, Alliance Warrior Infantry##47599+
kill 12 Alliance Infantry |q 28659/1 |goto Tol Barad,35.80,67.80
step
kill Problim |q 28657/1 |goto Tol Barad 52.80,36.70
|tip He's a tall ogre that walks along the road that surrounds Baradin Hold, so you may need to search for him.  He's elite, and the quest is a group quest, so you may need help killing him.
step
talk Commander Zanoth##48069
turnin A Huge Problem##28657 |goto Tol Barad 50.90,49.70
turnin Swamp Bait##28658 |goto Tol Barad 50.90,49.70
turnin The Leftovers##28659 |goto Tol Barad 50.90,49.70
step
talk Drillmaster Razgoth##48070
turnin D-Block##28663 |goto Tol Barad 51.50,49.70
turnin Svarnos##28664 |goto Tol Barad 51.50,49.70
turnin Cursed Shackles##28665 |goto Tol Barad 51.50,49.70
step
talk Private Garnoth##48071
turnin Clearing the Depths##28660 |goto Tol Barad 51.50,49.70
turnin Learning From The Past##28662 |goto Tol Barad 51.50,49.70
turnin The Imprisoned Archmage##28661 |goto Tol Barad 51.50,49.70
step
talk Staff Sergeant Lazgar##48062
turnin Food From Below##28670 |goto Tol Barad 51.50,49.70
turnin Prison Revolt##28668 |goto Tol Barad 51.50,49.70
turnin The Warden##28669 |goto Tol Barad 51.50,49.70
|next "menu" |only if rep("Hellscreams' Reach")<=Revered
|next "exalted" |only if rep("Hellscreams' Reach")<=Exalted
step
label "exalted"
talk Pogg##48531
buy 1 Reins of the Drake of the West Wind##65356 |goto Tol Barad Peninsula,54.60,81.00
step
learnmount Drake of the West Wind##88741 |use Reins of the Drake of the West Wind##65356
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Netherwing Drakes\\Quests & Dailies",{
keywords={"Azure","netherwing","drake","cobalt","violet","purple","veridan","onyx","mount","flying"},
condition_end=function() return hasmount(41514) and hasmount(41515) and hasmount(41513) and hasmount(41516) and hasmount(41517) and hasmount(41518) end,
model={21524},
description="This guide will help you acquire the Azure Netherwing Drake, Cobalt Netherwing Drake, Violet Netherwing Drake, Purple Netherwing Drake, Veridan Netherwing Drake, and Onyx Netherwing Drake mounts.",
mounts={41516,41514,41515,41513,41517,41518},
},[[
step
talk Mordenai##22113
|tip He a blood elf with a bow that walks around here.
|tip He often runs off the path to kill the flayers.
accept Kindness##10804 |goto Shadowmoon Valley/0 61.37,59.09
You can find him somewhere between:
[59.11,58.71]
[63.19,60.34]
step
kill Rocknail enemies around this area
|tip The Rocknail Flayers will drop Rocknail Flayer Carcasses.
|tip The Rocknail Rippers will drop Rocknail Giblets.
|tip When you've collected 5 Rocknail Giblets, right-click them to turn them into a Rocknail Flayer Carcass.
|tip You can only carry 5 Rocknail Giblets at a time.
|tip Do not destroy any excess Rocknail Giblets until you have turned in the quest.
collect 8 Rocknail Flayer Carcass##31372 |q 10804 |goto Shadowmoon Valley/0 61.31,54.79
step
|use Rocknail Flayer Carcass##31372
Feed 8 Netherwing Drakes |q 10804/1 |goto Shadowmoon Valley/0 60.50,57.70
step
talk Mordenai##22113
turnin Kindness##10804 |goto Shadowmoon Valley/0 61.37,59.09
accept Seek Out Neltharaku##10811 |goto Shadowmoon Valley/0 61.37,59.09
You can find him somewhere between:
[59.11,58.71]
[63.19,60.34]
step
talk Neltharaku##21657
|tip He looks like a large, semi-transparent green drake that flies slowly in the air around this area.
turnin Seek Out Neltharaku##10811 |goto Shadowmoon Valley/0 63.19,60.34
accept Neltharaku's Tale##10814 |goto Shadowmoon Valley/0 63.19,60.34
You can find him somewhere between:
[57.16,55.44]
[63.35,55.97]
[71.46,63.28]
[68.91,61.00]
step
talk Neltharaku##21657
Listen to the Tale of Neltharaku |q 10814/1 |goto Shadowmoon Valley/0 63.19,60.34
turnin Neltharaku's Tale##10814 |goto Shadowmoon Valley/0 63.19,60.34
accept Infiltrating Dragonmaw Fortress##10836 |goto Shadowmoon Valley/0 63.19,60.34
You can find him somewhere between:
[57.16,55.44]
[63.35,55.97]
[71.46,63.28]
[68.91,61.00]
step
kill Dragonmaw Drake-Rider##21719+, Dragonmaw Wrangler##21717+, Dragonmaw Subjugator##21718+
kill 15 Dragonmaw Orc |q 10836/1 |goto Shadowmoon Valley/0 67.86,60.92
step
talk Neltharaku##21657
turnin Infiltrating Dragonmaw Fortress##10836 |goto Shadowmoon Valley/0 63.19,60.34
accept To Netherwing Ledge!##10837 |goto Shadowmoon Valley/0 63.19,60.34
You can find him somewhere between:
[57.16,55.44]
[63.35,55.97]
[71.46,63.28]
[68.91,61.00]
step
Click the Nethervine Crystals
|tip They look like big thorny plants with a small puff of red smoke near the top of them, on the ground around this area.
collect 12 Nethervine Crystal##31504 |q 10837/1 |goto Shadowmoon Valley/0 64.08,80.64
step
talk Neltharaku##21657
turnin To Netherwing Ledge!##10837 |goto Shadowmoon Valley/0 63.19,60.34
accept The Force of Neltharaku##10854 |goto Shadowmoon Valley/0 63.19,60.34
You can find him somewhere between:
[57.16,55.44]
[63.35,55.97]
[71.46,63.28]
[68.91,61.00]
step
use Enchanted Nethervine Crystal##31652
|tip Use it on the Netherwing Drakes inside the camp.
|tip Help the Enslaved Netherwing Drakes kill their Dragonmaw Subjugators after you free them.
Free Enslaved Netherwing Drakes |q 10854/1 |goto Shadowmoon Valley/0 67.20,60.13
step
talk Neltharaku##21657
turnin The Force of Neltharaku##10854 |goto Shadowmoon Valley/0 63.19,60.34
accept Karynaku##10858 |goto Shadowmoon Valley/0 63.19,60.34
You can find him somewhere between:
[57.16,55.44]
[63.35,55.97]
[71.46,63.28]
[68.91,61.00]
step
talk Karynaku##22112
turnin Karynaku##10858 |goto Shadowmoon Valley/0 69.85,61.43
accept Zuluhed the Whacked##10866 |goto Shadowmoon Valley/0 69.85,61.43
step
kill Zuluhed the Whacked
collect Zuluhed's Key##31664 |q 10866/2 |goto Shadowmoon Valley/0 70.89,61.45
step
Click Zuluhed's Chains
|tip It looks like a big metal ball and chain.
Free Karynaku |q 10866/1 |goto Shadowmoon Valley/0 69.83,61.29
step
talk Karynaku##22112
turnin Zuluhed the Whacked##10866 |goto Shadowmoon Valley/0 69.83,61.29
accept Ally of the Netherwing##10870 |goto Shadowmoon Valley/0 69.83,61.29
|tip She will fly you to Mordenai.
step
talk Mordenai##22113
turnin Ally of the Netherwing##10870 |goto Shadowmoon Valley/0 59.32,58.69
accept Blood Oath of the Netherwing##11012 |goto Shadowmoon Valley/0 59.32,58.69
accept In Service of the Illidari##11013 |goto Shadowmoon Valley/0 59.32,58.69
step
talk Overlord Mor'ghor##23139
turnin In Service of the Illidari##11013 |goto Shadowmoon Valley/0 66.22,85.66
accept Enter the Taskmaster##11014 |goto Shadowmoon Valley/0 66.22,85.66
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Enter the Taskmaster##11014 |goto Shadowmoon Valley/0 66.12,86.36
step
talk Yarzill the Merc##23141
accept Your Friend on the Inside##11019 |goto Shadowmoon Valley/0 66.00,86.46
accept The Great Netherwing Egg Hunt##11049 |goto Shadowmoon Valley/0 66.00,86.46
step
Click a Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them.  They spawn in random places, so you will probably need to search for them.  For help finding a Netherwing Egg, use the Netherwing Egg Hunting - Optimized Path section of this guide.
collect 1 Netherwing Egg##32506 |q 11049/1 |goto Shadowmoon Valley/0 68.50,61.20
step
talk Yarzill the Merc##23141
turnin The Great Netherwing Egg Hunt##11049 |goto Shadowmoon Valley/0 66.00,86.46
step
label "Daily"
talk Yarzill the Merc##23141
accept A Slow Death##11020 |goto Shadowmoon Valley/0 66.00,86.46
accept The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley/0 66.00,86.46
You can use the Netherwing Egg Hunting guide to gain reputation as well.
step
talk Taskmaster Varkule Dragonbreath##23140
accept Netherwing Crystals##11015 |goto Shadowmoon Valley/0 66.12,86.36
accept Nethermine Flayer Hide##11016 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11016)
|tip This quest is available if you have the Skinning skill. |only if questpossible(11016)
accept Nethercite Ore##11018 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11018)
|tip This quest is only available if you have the Mining skill. |only if questpossible(11018)
accept Netherdust Pollen##11017 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11017)
|tip This quest is only available if you have the Herbalism skill. |only if questpossible(11017)
step
kill Dragonmaw Transporter##23188+
|tip Kill them when they fly low over these floating rocks.
collect 10 Netherwing Relic##32509 |q 11035/1 |goto Shadowmoon Valley/0 71.42,75.16
step
kill Greater Felfire Diemetradon##21462+, Felboar##21878+
collect 12 Fel Gland##32502 |q 11020 |goto Shadowmoon Valley/0 58.88,41.37
You can find more around:
[57.31,51.87]
[47.06,60.63]
[56.41,70.04]
step
use Yarzill's Mutton##32503
|tip Use it next to the working peons.
Poison 12 Dragonmaw Peon Camps |q 11020/1 |goto Shadowmoon Valley/0 71.98,88.52
step
Click Netherdust Bushes
|tip They look like small green bushes that sparkle.
collect 40 Netherdust Pollen##32468 |q 11017/1 |goto Shadowmoon Valley/0 71.98,88.52
step
Click Nethercite Deposits
|tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
collect 40 Nethercite Ore##32464 |q 11018/1 |goto Shadowmoon Valley/0 71.98,88.52
step
Enter the Mine |goto Shadowmoon Valley/0 65.30,90.03 < 5 |walk
kill Nethermine Flayer##23169+
kill Black Blood of Draenor##23286
kill Nethermine Burster##23285+
collect 30 Netherwing Crystal##32427 |q 11015/1 |goto Shadowmoon Valley/0 68.19,83.71
Skin Nethermine Flayers |only if haveq(11016)
collect 35 Nethermine Flayer Hide##32470 |q 11016/1 |goto Shadowmoon Valley/0 65.06,82.89 |only if haveq(11016)
|tip This quest is only available if you have the Skinning skill. |only if haveq(11016)
step
talk Yarzill the Merc##23141
turnin A Slow Death##11020 |goto Shadowmoon Valley/0 66.00,86.46
turnin The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley/0 66.00,86.46
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Netherwing Crystals##11015 |goto Shadowmoon Valley/0 66.12,86.36
turnin Nethermine Flayer Hide##11016 |goto Shadowmoon Valley/0 66.12,86.36 |only if haveq(11016)
|tip This quest is only available if you have the Skinning skill. |only if haveq(11016)
turnin Nethercite Ore##11018 |goto Shadowmoon Valley/0 66.12,86.36 |only hasprof("Mining",1,300) |only if haveq(11018)
|tip This quest is only available if you have the Mining skill. |only if haveq(11018)
turnin Netherdust Pollen##11017 |goto Shadowmoon Valley/0 66.12,86.36 |only if haveq(11017)
|tip This quest is only available if you have the Herbalism skill. |only if haveq(11017)
step
Click here tomorrow to go back to the first daily |confirm |next "Daily"
Become Friendly with the Netherwing. |complete rep('Netherwing')>=Friendly |next "F_PreQuest"
step
label "F_PreQuest"
talk Taskmaster Varkule Dragonbreath##23140
accept Rise, Overseer!##11053 |goto Shadowmoon Valley/0 66.12,86.36
step
talk Overlord Mor'ghor##23139
turnin Rise, Overseer!##11053 |goto Shadowmoon Valley/0 66.22,85.66
step
talk Taskmaster Varkule Dragonbreath##23140
accept The Netherwing Mines##11075 |goto Shadowmoon Valley/0 66.12,86.36
step
talk Chief Overseer Mudlump##23291
accept Overseeing and You: Making the Right Choices##11054 |goto Shadowmoon Valley/0 66.12,86.36
step
talk Mistress of the Mines##23149
turnin The Netherwing Mines##11075 |goto Shadowmoon Valley/0 65.40,90.20
step
Go inside the mine
talk Ronag the Slave Driver##23166
accept Crazed and Confused##11083 |goto Shadowmoon Valley/0 71.60,87.60
step
kill 1 Crazed Murkblood Foreman |q 11083/1 |goto Shadowmoon Valley/0 73.70,88.10
kill 5 Crazed Murkblood Miner |q 11083/2 |goto Shadowmoon Valley/0 73.70,88.10
step
talk Ronag the Slave Driver##23166
turnin Crazed and Confused##11083 |goto Shadowmoon Valley/0 71.60,87.60
step
kill Black Blood of Draenor##23286+
collect Sludge-covered Object##32724+ |n
Click the Sludge-covered Objects in your bags to open them |use Sludge-covered Object##32724
collect Murkblood Escape Plans##32726 |n
Click the Murkblood Escape Plans in your bags |use Murkblood Escape Plans##32726
accept The Great Murkblood Revolt##11081 |goto Shadowmoon Valley/0 64.80,85.60
step
talk Mistress of the Mines##23149
turnin The Great Murkblood Revolt##11081 |goto Shadowmoon Valley/0 65.40,90.20
accept Seeker of Truth##11082 |goto Shadowmoon Valley/0 65.40,90.20
step
Enter the Mine |goto Shadowmoon Valley/0 65.31,90.02 |walk
talk Murkblood Overseer##23309
|tip Inside the mine.
|tip These will spawn and despawn randomly in a few places.
Tell him you are here for him
Gather Murkblood Information |q 11082/1 |goto Shadowmoon Valley/0 68.30,79.45
collect Hand of the Overseer##32734 |q 11082/2
You can find more around:
[69.33,80.47]
[71.09,80.71]
[72.98,82.18]
[73.88,82.69]
step
talk Mistress of the Mines##23149
turnin Seeker of Truth##11082 |goto Shadowmoon Valley/0 65.40,90.20
step
collect 10 Knothide Leather##21887 |q 11054/1
|tip You can get the 10 Knothide Leather from the Auction House, or by Skinning mobs for the leather.
If you want to get the 10 Knothide Leather by skinning, kill the mobs around Shadowmoon Valley/0 60.40,45.20
step
kill Tyrantus##20931
collect Hardened Hide of Tyrantus##32666 |q 11054/2 |goto Netherstorm/0 46.40,10.80
step
talk Chief Overseer Mudlump##23291
turnin Overseeing and You: Making the Right Choices##11054 |goto Shadowmoon Valley/0 66.80,86.10
step
label "Daily2"
talk Yarzill the Merc##23141
accept A Slow Death##11020 |goto Shadowmoon Valley/0 66.00,86.46
accept The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley/0 66.00,86.46
You can use the Netherwing Egg Hunting guide to gain reputation as well.
step
talk Taskmaster Varkule Dragonbreath##23140
accept Netherwing Crystals##11015 |goto Shadowmoon Valley/0 66.12,86.36
accept Nethermine Flayer Hide##11016 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11016)
|tip This quest is available if you have the Skinning skill. |only if questpossible(11016)
accept Nethercite Ore##11018 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11018)
|tip This quest is only available if you have the Mining skill. |only if questpossible(11018)
accept Netherdust Pollen##11017 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11017)
|tip This quest is only available if you have the Herbalism skill. |only if questpossible(11017)
step
talk Chief Overseer Mudlump##23291
accept The Booterang: A Cure For The Common Worthless Peon##11055 |goto Shadowmoon Valley/0 66.80,86.10
step
kill Dragonmaw Transporter##23188+
|tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
collect 10 Netherwing Relic##32509 |q 11035/1 |goto Shadowmoon Valley/0 72.10,75.20
step
kill Greater Felfire Diemetradon##21462+, Felboar##21878+
collect 12 Fel Gland##32502 |q 11020 |goto Shadowmoon Valley/0 60.40,45.20
step
Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
Poison 12 Dragonmaw Peon Camps |q 11020/1 |goto Shadowmoon Valley/0 73.60,80.00
Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
Discipline 20 Dragonmaw Peons |q 11055/1 |goto Shadowmoon Valley/0 73.60,80.00
step
Click Netherdust Bushes
|tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
collect 40 Netherdust Pollen##32468 |q 11017/1 |goto Shadowmoon Valley/0 62.60,86.20
step
Click Nethercite Deposits
|tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
collect 40 Nethercite Ore##32464 |q 11018/1 |goto Shadowmoon Valley/0 70.00,91.40
step
talk Mistress of the Mines##23149
accept Picking Up the Pieces...##11076 |goto Shadowmoon Valley/0 65.40,90.20
step
Go inside the mine to |goto Shadowmoon Valley/0 65.10,87.50 |walk
talk Dragonmaw Foreman##23376
accept Dragons are the Least of Our Problems##11077
step
Click Nethermine Cargo
|tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
collect 15 Nethermine Cargo##32723 |q 11076/1 |goto Shadowmoon Valley/0 66.90,84.00
step
kill 15 Nethermine Flayer |q 11077/1 |goto Shadowmoon Valley/0 71.50,83.90
kill 5 Nethermine Ravager |q 11077/2 |goto Shadowmoon Valley/0 71.50,83.90
collect 30 Netherwing Crystal##32427 |q 11015/1 |goto Shadowmoon Valley/0 71.50,83.90
Skin Nethermine Flayers |only if haveq(11016)
collect 35 Nethermine Flayer Hide##32470 |q 11016/1 |goto Shadowmoon Valley/0 65.06,82.89 |only if haveq(11016)
|tip This quest is only available if you have the Skinning skill. |only if haveq(11016)
step
talk Dragonmaw Foreman##23376
turnin Dragons are the Least of Our Problems##11077 |goto Shadowmoon Valley/0 65.10,87.50
step
talk Mistress of the Mines##23149
turnin Picking Up the Pieces...##11076 |goto Shadowmoon Valley/0 65.40,90.20
step
talk Yarzill the Merc##23141
turnin A Slow Death##11020 |goto Shadowmoon Valley/0 66.00,86.46
turnin The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley/0 66.00,86.46
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Netherwing Crystals##11015 |goto Shadowmoon Valley/0 66.12,86.36
turnin Nethermine Flayer Hide##11016 |goto Shadowmoon Valley/0 66.12,86.36 |only if haveq(11016)
|tip This quest is only available if you have the Skinning skill. |only if haveq(11016)
turnin Nethercite Ore##11018 |goto Shadowmoon Valley/0 66.12,86.36 |only hasprof("Mining",1,300) |only if haveq(11018)
|tip This quest is only available if you have the Mining skill. |only if haveq(11018)
turnin Netherdust Pollen##11017 |goto Shadowmoon Valley/0 66.12,86.36 |only if haveq(11017)
|tip This quest is only available if you have the Herbalism skill. |only if haveq(11017)
step
talk Chief Overseer Mudlump##23291
turnin The Booterang: A Cure For The Common Worthless Peon##11055 |goto Shadowmoon Valley/0 66.80,86.10
step
Click here tomorrow to go back to the dailies |confirm |next "Daily2"
Become Honored with the Netherwing. |complete rep('Netherwing')>=Honored |next "H_PreQuest"
step
label "H_PreQuest"
talk Taskmaster Varkule Dragonbreath##23140
accept Stand Tall, Captain!##11084 |goto Shadowmoon Valley/0 66.10,86.40
step
talk Overlord Mor'ghor##23139
turnin Stand Tall, Captain!##11084 |goto Shadowmoon Valley/0 66.10,86.40
step
talk Ja'y Nosliw##22433
accept Earning Your Wings...##11063 |goto Shadowmoon Valley/0 65.90,87.20
step
talk Murg "Oldie" Muckjaw##23340
accept Dragonmaw Race: The Ballad of Oldie McOld##11064 |goto Shadowmoon Valley/0 65.20,85.70
Follow Murg "Oldie" Muckjaw as he flies
|tip He will throw pumpkins at you as he flies, and you have to dodge them.  The easiest strategy is to fly sort of far behind him, and above him, so that you are looking down on him as you fly.  Don't let any of the pumpkins hit you and you will win the race.
Defeat Murg "Oldie" Muckjaw |q 11064/1 |goto Shadowmoon Valley/0 65.20,85.70
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: The Ballad of Oldie McOld##11064 |goto Shadowmoon Valley/0 65.90,87.20
step
talk Trope the Filth-Belcher##23342
accept Dragonmaw Race: Trope the Filth-Belcher##11067 |goto Shadowmoon Valley/0 65.20,85.50
Follow Trope the Filth-Belcher as he flies
|tip He will throw green bombs at you as he flies, and you have to dodge them.  The easiest strategy is to fly far behind him, and under him.  Strafe to the sides when he throws the bombs and you can dodge them easily.  Don't let any of the bombs hit you and you will win the race.
Defeat Trope the Filth-Belcher |q 11067/1 |goto Shadowmoon Valley/0 65.20,85.50
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Trope the Filth-Belcher##11067 |goto Shadowmoon Valley/0 65.90,87.20
step
talk Corlok the Vet##23344
accept Dragonmaw Race: Corlok the Vet##11068 |goto Shadowmoon Valley/0 65.20,85.20
Follow Corlok the Vet as he flies
|tip He will throw groups of skulls at you as he flies, and you have to dodge them.  The easiest strategy is to fly close behind him, but above him, while looking down at him.  Strafe to the sides when he throws the skulls and you can dodge them easily.  Don't let any of the skulls hit you and you will win the race.
Defeat Corlok the Vet |q 11068/1 |goto Shadowmoon Valley/0 65.20,85.20
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Corlok the Vet##11068 |goto Shadowmoon Valley/0 65.90,87.20
step
talk Wing Commander Ichman##13437
accept Dragonmaw Race: Wing Commander Ichman##11069 |goto Shadowmoon Valley/0 65.20,85.00
Follow Wing Commander Ichman as he flies
|tip He will throw fireballs at you as he flies, and you have to dodge them.  The easiest strategy is to fly behind him, but far above him, while looking down at him.  Strafe to the sides when he throws the fireballs and you can dodge them easily.  Don't let any of the fireballs hit you and you will win the race.  Also, be careful because he does sharp turns and maneuvers, so it's easy to lose track of him if you aren't careful.
Defeat Wing Commander Ichman |q 11069/1 |goto Shadowmoon Valley/0 65.20,85.00
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Wing Commander Ichman##11069 |goto Shadowmoon Valley/0 65.90,87.20
step
talk Wing Commander Mulverick##13181
accept Dragonmaw Race: Wing Commander Mulverick##11070 |goto Shadowmoon Valley/0 65.20,84.90
step
Follow Wing Commander Mulverick as he flies
|tip He will throw lightning bolts at you as he flies, and you have to dodge them.  The lightning bolts will follow you, unlike the previous race quests, where the objects they throw did not follow you.  The easiest strategy is to fly beside him, while strafing, and almost ahead of him, if you can.  Don't let any of the lightning bolts hit you and you will win the race.
Defeat Wing Commander Mulverick |q 11070/1 |goto Shadowmoon Valley/0 65.20,84.90
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Wing Commander Mulverick##11070 |goto Shadowmoon Valley/0 65.90,87.20
step
talk Captain Skyshatter##23348
accept Dragonmaw Race: Captain Skyshatter##11071 |goto Shadowmoon Valley/0 65.50,85.30
Follow Captain Skyshatter as he flies
|tip Meteors fall all around you as you fly with Captain Skyshatter, and you have to dodge them.  The easiest strategy is to fly beside him, while strafing, and almost ahead of him, if you can.  Stay close to him and the meteors will hit him, as well as you, which will stop him for a second, allowing you to catch up to him, if needed.  You will not get knocked off your mount by the meteors, just stunned for a second, so there's nothing to worry about.
Defeat Captain Skyshatter |q 11071/1 |goto Shadowmoon Valley/0 65.50,85.30
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Captain Skyshatter##11071 |goto Shadowmoon Valley/0 65.90,87.20
step
label "Daily3"
talk Yarzill the Merc##23141
accept A Slow Death##11020 |goto Shadowmoon Valley/0 66.00,86.46
accept The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley/0 66.00,86.46
You can use the Netherwing Egg Hunting guide to gain reputation as well.
step
talk Taskmaster Varkule Dragonbreath##23140
accept Netherwing Crystals##11015 |goto Shadowmoon Valley/0 66.12,86.36
accept Nethermine Flayer Hide##11016 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11016)
|tip This quest is available if you have the Skinning skill. |only if questpossible(11016)
accept Nethercite Ore##11018 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11018)
|tip This quest is only available if you have the Mining skill. |only if questpossible(11018)
accept Netherdust Pollen##11017 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11017)
|tip This quest is only available if you have the Herbalism skill. |only if questpossible(11017)
step
talk Chief Overseer Mudlump##23291
accept The Booterang: A Cure For The Common Worthless Peon##11055 |goto Shadowmoon Valley/0 66.80,86.10
step
talk Overlord Mor'ghor##23139
accept Disrupting the Twilight Portal##11086 |goto Shadowmoon Valley/0 66.20,85.70
step
kill Dragonmaw Transporter##23188+
|tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
collect 10 Netherwing Relic##32509 |q 11035/1 |goto Shadowmoon Valley/0 72.10,75.20
step
kill Greater Felfire Diemetradon##21462+, Felboar##21878+
collect 12 Fel Gland##32502 |q 11020 |goto Shadowmoon Valley/0 60.40,45.20
step
Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
Poison 12 Dragonmaw Peon Camps |q 11020/1 |goto Shadowmoon Valley/0 73.60,80.00
Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
Discipline 20 Dragonmaw Peons |q 11055/1 |goto Shadowmoon Valley/0 73.60,80.00
step
Click Netherdust Bushes
|tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
collect 40 Netherdust Pollen##32468 |q 11017/1 |goto Shadowmoon Valley/0 62.60,86.20
step
Click Nethercite Deposits
|tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
collect 40 Nethercite Ore##32464 |q 11018/1 |goto Shadowmoon Valley/0 70.00,91.40
step
talk Mistress of the Mines##23149
accept Picking Up the Pieces...##11076 |goto Shadowmoon Valley/0 65.40,90.20
step
Go inside the mine
talk Dragonmaw Foreman##23376
accept Dragons are the Least of Our Problems##11077 |goto Shadowmoon Valley/0 65.10,87.50
step
Click Nethermine Cargo
|tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
collect 15 Nethermine Cargo##32723 |q 11076/1 |goto Shadowmoon Valley/0 66.90,84.00
step
kill 15 Nethermine Flayer |q 11077/1 |goto Shadowmoon Valley/0 71.50,83.90
kill 5 Nethermine Ravager |q 11077/2 |goto Shadowmoon Valley/0 71.50,83.90
collect 30 Netherwing Crystal##32427 |q 11015/1 |goto Shadowmoon Valley/0 71.50,83.90
Skin Nethermine Flayers |only if haveq(11016)
collect 35 Nethermine Flayer Hide##32470 |q 11016/1 |goto Shadowmoon Valley/0 65.06,82.89 |only if haveq(11016)
|tip This quest is only available if you have the Skinning skill. |only if haveq(11016)
step
talk Dragonmaw Foreman##23376
turnin Dragons are the Least of Our Problems##11077 |goto Shadowmoon Valley/0 65.10,87.50
step
talk Mistress of the Mines##23149
turnin Picking Up the Pieces...##11076 |goto Shadowmoon Valley/0 65.40,90.20
step
kill Deathshadow Overlord##22393+, Deathshadow Warlock##22363+, Deathshadow Spellbinder##22342+, Deathshadow Archon##22343+, Deathshadow Acolyte##22341+
kill 20 Deathshadow Agent |q 11086/1 |goto Nagrand,12.70,38.90
step
talk Yarzill the Merc##23141
turnin A Slow Death##11020 |goto Shadowmoon Valley/0 66.00,86.46
turnin The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley/0 66.00,86.46
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Netherwing Crystals##11015 |goto Shadowmoon Valley/0 66.12,86.36
turnin Nethermine Flayer Hide##11016 |goto Shadowmoon Valley/0 66.12,86.36 |only if haveq(11016)
|tip This quest is only available if you have the Skinning skill. |only if haveq(11016)
turnin Nethercite Ore##11018 |goto Shadowmoon Valley/0 66.12,86.36 |only hasprof("Mining",1,300) |only if haveq(11018)
|tip This quest is only available if you have the Mining skill. |only if haveq(11018)
turnin Netherdust Pollen##11017 |goto Shadowmoon Valley/0 66.12,86.36 |only if haveq(11017)
|tip This quest is only available if you have the Herbalism skill. |only if haveq(11017)
step
talk Chief Overseer Mudlump##23291
turnin The Booterang: A Cure For The Common Worthless Peon##11055 |goto Shadowmoon Valley/0 66.80,86.10
step
talk Overlord Mor'ghor##23139
turnin Disrupting the Twilight Portal##11086 |goto Shadowmoon Valley/0 66.20,85.70
step
Click here tomorrow to go back to the dailies. |confirm |next "Daily3"
Become Revered with the Netherwing. |complete rep('Netherwing')>=Revered |next "R_PreQuest"
step
label "R_PreQuest"
talk Taskmaster Varkule Dragonbreath##23140
accept Hail, Commander!##11092 |goto Shadowmoon Valley/0 66.12,86.36
step
talk Overlord Mor'ghor##23139
turnin Hail, Commander!##11092 |goto Shadowmoon Valley/0 66.20,85.70
accept Kill Them All!##11094 |goto Shadowmoon Valley/0 66.20,85.70 |only if rep ('The Scryers') >= Friendly
accept Kill Them All!##11099 |goto Shadowmoon Valley/0 66.20,85.70 |only if rep ('The Aldor') >= Friendly
step
kill Arvoar the Rapacious##23267+
|tip He looks like a big Flayer mob that walks in a circle in this spot.
collect Partially Digested Hand##32621 |n
Click the Partially Digested Hand in your bags |use Partially Digested Hand##32621
accept A Job Unfinished...##11041 |goto Shadowmoon Valley/0 74.50,86.30
stickystart "overmineflayer"
step
kill Barash the Den Mother |q 11041/2 |goto Shadowmoon Valley/0 70.20,84.30
|tip She looks like a big yellow Flayer mob that walks in a circle in this spot.
step
label "overmineflayer"
kill 10 Overmine Flayer |q 11041/1 |goto Shadowmoon Valley/0 71.30,85.80
step
talk Overlord Mor'ghor##23139
turnin A Job Unfinished...##11041 |goto Shadowmoon Valley/0 66.20,85.70
step
talk Arcanist Thelis##21955
turnin Kill Them All!##11094 |goto Shadowmoon Valley/0 56.30,59.60
accept Commander Hobb##11095 |goto Shadowmoon Valley/0 56.30,59.60
|only if rep ('The Scryers') >= Friendly
step
talk Commander Hobb##23434
turnin Commander Hobb##11095 |goto Shadowmoon Valley/0 56.50,58.70
|only if rep ('The Scryers') >= Friendly
step
talk Anchorite Ceyla##21402
turnin Kill Them All!##11099 |goto Shadowmoon Valley/0 62.60,28.40
accept Commander Arcus##11100 |goto Shadowmoon Valley/0 62.60,28.40
|only if rep ('The Aldor') >= Friendly
step
talk Commander Arcus##23452
turnin Commander Arcus##11100 |goto Shadowmoon Valley/0 62.40,29.30
|only if rep ('The Aldor') >= Friendly
step
label "Daily4"
talk Yarzill the Merc##23141
accept A Slow Death##11020 |goto Shadowmoon Valley/0 66.00,86.46
accept The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley/0 66.00,86.46
You can use the Netherwing Egg Hunting guide to gain reputation as well.
step
talk Taskmaster Varkule Dragonbreath##23140
accept Netherwing Crystals##11015 |goto Shadowmoon Valley/0 66.12,86.36
accept Nethermine Flayer Hide##11016 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11016)
|tip This quest is available if you have the Skinning skill. |only if questpossible(11016)
accept Nethercite Ore##11018 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11018)
|tip This quest is only available if you have the Mining skill. |only if questpossible(11018)
accept Netherdust Pollen##11017 |goto Shadowmoon Valley/0 66.12,86.36 |only if questpossible(11017)
|tip This quest is only available if you have the Herbalism skill. |only if questpossible(11017)
step
talk Chief Overseer Mudlump##23291
accept The Booterang: A Cure For The Common Worthless Peon##11055 |goto Shadowmoon Valley/0 66.80,86.10
step
talk Overlord Mor'ghor##23139
accept Disrupting the Twilight Portal##11086 |goto Shadowmoon Valley/0 66.20,85.70
step
kill Dragonmaw Transporter##23188+
|tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
collect 10 Netherwing Relic##32509 |q 11035/1 |goto Shadowmoon Valley/0 72.10,75.20
step
talk Commander Hobb##23434
accept The Deadliest Trap Ever Laid##11097 |goto Shadowmoon Valley/0 56.50,58.70
Follow Commander Hobb and help him fight the Dragonmaw Skybreakers
Protect Commander Hobb, he must survive
Defeat the Dragonmaw Forces |q 11097/1 |goto Shadowmoon Valley/0 56.50,58.70
|only if rep ('The Scryers') >= Friendly
step
kill Greater Felfire Diemetradon##21462+, Felboar##21878+
collect 12 Fel Gland##32502 |q 11020 |goto Shadowmoon Valley/0 60.40,45.20
step
talk Commander Arcus##23452
accept The Deadliest Trap Ever Laid##11101 |goto Shadowmoon Valley/0 62.40,29.30
Follow Commander Arcus and help him fight the Dragonmaw Skybreakers
Protect Commander Arcus, he must survive
Defeat the Dragonmaw Forces |q 11101/1 |goto Shadowmoon Valley/0 62.40,29.30
|only if rep ('The Aldor') >= Friendly
step
Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
Poison 12 Dragonmaw Peon Camps |q 11020/1 |goto Shadowmoon Valley/0 73.60,80.00
Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
Discipline 20 Dragonmaw Peons |q 11055/1 |goto Shadowmoon Valley/0 73.60,80.00
step
Click Netherdust Bushes
|tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
collect 40 Netherdust Pollen##32468 |q 11017/1 |goto Shadowmoon Valley/0 62.60,86.20
step
Click Nethercite Deposits
|tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
collect 40 Nethercite Ore##32464 |q 11018/1 |goto Shadowmoon Valley/0 70.00,91.40
step
talk Mistress of the Mines##23149
accept Picking Up the Pieces...##11076 |goto Shadowmoon Valley/0 65.40,90.20
step
Go inside the mine
talk Dragonmaw Foreman##23376
accept Dragons are the Least of Our Problems##11077 |goto Shadowmoon Valley/0 65.10,87.50
step
Click Nethermine Cargo
|tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
collect 15 Nethermine Cargo##32723 |q 11076/1 |goto Shadowmoon Valley/0 66.90,84.00
step
kill 15 Nethermine Flayer |q 11077/1 |goto Shadowmoon Valley/0 71.50,83.90
kill 5 Nethermine Ravager |q 11077/2 |goto Shadowmoon Valley/0 71.50,83.90
collect 30 Netherwing Crystal##32427 |q 11015/1 |goto Shadowmoon Valley/0 71.50,83.90
Skin Nethermine Flayers |only if skill ("Skinning") >= 350
collect 35 Nethermine Flayer Hide##32470 |q 11016/1 |goto Shadowmoon Valley/0 71.50,83.90 |only if skill ("Skinning") >= 350
|tip This quest is only available if you have your Skinning skill to at least 350.
step
talk Dragonmaw Foreman##23376
turnin Dragons are the Least of Our Problems##11077 |goto Shadowmoon Valley/0 65.10,87.50
step
talk Mistress of the Mines##23149
turnin Picking Up the Pieces...##11076 |goto Shadowmoon Valley/0 65.40,90.20
step
kill Deathshadow Overlord##22393+, Deathshadow Warlock##22363+, Deathshadow Spellbinder##22342+, Deathshadow Archon##22343+, Deathshadow Acolyte##22341+
kill 20 Deathshadow Agent |q 11086/1 |goto Nagrand,12.70,38.90
step
talk Yarzill the Merc##23141
turnin A Slow Death##11020 |goto Shadowmoon Valley/0 66.00,86.46
turnin The Not-So-Friendly Skies##11035 |goto Shadowmoon Valley/0 66.00,86.46
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Netherwing Crystals##11015 |goto Shadowmoon Valley/0 66.12,86.36
turnin Nethermine Flayer Hide##11016 |goto Shadowmoon Valley/0 66.12,86.36 |only if haveq(11016)
|tip This quest is only available if you have the Skinning skill. |only if haveq(11016)
turnin Nethercite Ore##11018 |goto Shadowmoon Valley/0 66.12,86.36 |only hasprof("Mining",1,300) |only if haveq(11018)
|tip This quest is only available if you have the Mining skill. |only if haveq(11018)
turnin Netherdust Pollen##11017 |goto Shadowmoon Valley/0 66.12,86.36 |only if haveq(11017)
|tip This quest is only available if you have the Herbalism skill. |only if haveq(11017)
step
talk Chief Overseer Mudlump##23291
turnin The Booterang: A Cure For The Common Worthless Peon##11055 |goto Shadowmoon Valley/0 66.80,86.10
step
talk Overlord Mor'ghor##23139
turnin Disrupting the Twilight Portal##11086 |goto Shadowmoon Valley/0 66.80,86.10
turnin The Deadliest Trap Ever Laid##11097 |goto Shadowmoon Valley/0 66.80,86.10 |only if rep ('The Scryers') >= Friendly
turnin The Deadliest Trap Ever Laid##11101 |goto Shadowmoon Valley/0 66.80,86.10 |only if rep ('The Aldor') >= Friendly
step
Click here tomorrow to go back to the dailies |confirm |next "Daily4"
Become Exalted with the Netherwing. |complete rep('Netherwing')==Exalted |next "E_PreQuest"
step
label "E_PreQuest"
talk Taskmaster Varkule Dragonbreath##23140
accept Bow to the Highlord##11107 |goto Shadowmoon Valley/0 66.12,86.36
step
talk Overlord Mor'ghor##23139
turnin Bow to the Highlord##11107 |goto Shadowmoon Valley/0 66.20,85.70
accept Lord Illidan Stormrage##11108 |goto Shadowmoon Valley/0 66.20,85.70
Watch the cut scene
You will be taken to Shattrath City |goto Shattrath City/0 65.80,18.60,0.50 |noway |c
step
talk Barthamus##23433
turnin Lord Illidan Stormrage##11108 |goto Shattrath City/0 66.60,16.40
step
Look at the netherdrakes sitting around this area.  Pick whichever one you like the best and complete the quest it offers you:
accept Voranaku the Violet Netherwing Drake##11113 |goto Shattrath City/0 66.80,17.60 |or
accept Zoya the Veridian Netherwing Drake##11114 |goto Shattrath City/0 66.80,17.60 |or
accept Suraku the Azure Netherwing Drake##11112 |goto Shattrath City/0 66.80,17.60 |or
accept Onyxien the Onyx Netherwing Drake##11111 |goto Shattrath City/0 66.80,17.60 |or
accept Malfas the Purple Netherwing Drake##11110 |goto Shattrath City/0 66.80,17.60 |or
accept Jorus the Cobalt Netherwing Drake##11109 |goto Shattrath City/0 66.80,17.60 |or
step
talk Drake Dealer Hurlunk##23489
buy 1 Reins of the Azure Netherwing Drake##32858 |goto Shadowmoon Valley/0 65.70,86.00
buy 1 Reins of the Cobalt Netherwing Drake##32859 |goto Shadowmoon Valley/0 65.70,86.00
buy 1 Reins of the Violet Netherwing Drake##32862 |goto Shadowmoon Valley/0 65.70,86.00
buy 1 Reins of the Purple Netherwing Drake##32860 |goto Shadowmoon Valley/0 65.70,86.00
buy 1 Reins of the Veridian Netherwing Drake##32861 |goto Shadowmoon Valley/0 65.70,86.00
buy 1 Reins of the Onyx Netherwing Drake##32857 |goto Shadowmoon Valley/0 65.70,86.00
step
use Reins of the Azure Netherwing Drake##32858
use Reins of the Cobalt Netherwing Drake##32859
use Reins of the Violet Netherwing Drake##32862
use Reins of the Purple Netherwing Drake##32860
use Reins of the Veridian Netherwing Drake##32861
use Reins of the Onyx Netherwing Drake##32857
Learn the "Azure Netherwing Drake" Mount |learnmount Azure Netherwing Drake##41514
Learn the "Cobalt Netherwing Drake" Mount |learnmount Cobalt Netherwing Drake##41515
Learn the "Violet Netherwing Drake" Mount |learnmount Violet Drake##41518
Learn the "Purple Netherwing Drake" Mount |learnmount Purple Netherwing Drake##41516
Learn the "Veridian Netherwing Drake" Mount |learnmount Veridian Netherwing Drake##41517
Learn the "Oynx Netherwing Drake" Mount |learnmount Oynx Netherwing Drake##41513
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Netherwing Drakes\\Netherwing Egg Hunting - Optimized Path",{
keywords={"Azure","netherwing","drake","cobalt","violet","purple","veridan","onyx","mount","flying"},
condition_end=function() return hasmount(41514) and hasmount(41515) and hasmount(41513) and hasmount(41516) and hasmount(41517) and hasmount(41518) end,
model={21524},
description="This guide will help you acquire the Azure Netherwing Drake, Cobalt Netherwing Drake, Violet Netherwing Drake, Purple Netherwing Drake, Veridan Netherwing Drake, and Onyx Netherwing Drake mounts.",
mounts={41516,41514,41515,41513,41517,41518},
},[[
step
label "Begin_Path"
There can be an egg here |goto Shadowmoon Valley,69.40,63.60 < 5 |c
|tip At the top of the stairs inside this tower.
step
There can be an egg here |goto Shadowmoon Valley,70.10,62.00 < 5 |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,71.40,60.70 < 5 |c
|tip Sitting on the middle of this small round table inside this big room on the bottom level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,70.90,62.60 < 5 |c
|tip Sitting on the floor next to this small fire brazier inside this big room on the bottom level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,71.30,62.60 < 5 |c
|tip Sitting on the floor next to the wall inside this big room on the top level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,71.40,60.80 < 5 |c
|tip Sitting on the floor inside this tiny room on the top level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,70.00,60.30 < 5  |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,69.70,58.50 < 5 |c
|tip Sitting on the ground in this pen area amongst the baby netherdrakes.
step
There can be an egg here |goto Shadowmoon Valley,68.10,59.70 < 5 |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,68.30,59.80 < 5 |c
|tip Sitting on the ground in this corner.
step
There can be an egg here |goto Shadowmoon Valley,68.50,61.20 < 5 |c
|tip Sitting on the ground in this stall inside the stable.
step
There can be an egg here |goto Shadowmoon Valley,67.20,61.30 < 5 |c
|tip Sitting in this wooden wagon.
step
There can be an egg here |goto Shadowmoon Valley,67.20,62.30 < 5 |c
|tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
There can be an egg here |goto Shadowmoon Valley,68.90,62.50 < 5 |c
|tip Sitting on the ground inside this half burned down hut.
step
There can be an egg here |goto Shadowmoon Valley,76.00,81.20 < 5 |c
|tip Sitting on the corner edge of this wooden landing dock.
step
There can be an egg here |goto Shadowmoon Valley,75.20,82.30 < 5 |c
|tip Sitting on the ground next to this big bunch of blue crystals.
step
There can be an egg here |goto Shadowmoon Valley,73.70,82.30 < 5 |c
|tip Sitting on top of this small mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,73.00,84.00 < 5 |c
|tip Sitting on the edge of this small cliff, between 2 bunchs of big blue crystals.
step
There can be an egg here |goto Shadowmoon Valley,71.00,81.50 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,68.20,81.70 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,66.20,83.80 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,65.70,84.20 < 5 |c
|tip Sitting at the very tip of this huge crystal.
step
There can be an egg here |goto Shadowmoon Valley,63.30,81.50 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,65.40,76.50 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,63.20,75.60 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,62.20,74.20 < 5 |c
|tip Sitting on this small floating rock.  You have to fly down to it.
step
There can be an egg here |goto Shadowmoon Valley,61.70,73.30 < 5 |c
|tip Sitting on this big floating rock.  You have to fly down to it.
step
There can be an egg here |goto Shadowmoon Valley,63.00,71.60 < 5 |c
|tip Sitting on this big floating rock.  You have to fly up to it.
step
There can be an egg here |goto Shadowmoon Valley,61.30,70.70 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,60.60,73.40 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,59.30,74.10 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,60.00,76.70 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,59.60,78.30 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,61.20,77.30 < 5 |c
|tip Sitting on this big floating rock.  You have to fly up to it.
step
There can be an egg here |goto Shadowmoon Valley,62.20,77.80 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,63.30,81.50 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,63.00,83.70 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,63.50,84.80 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,65.50,84.90 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.
step
talk Yarzill the Merc##23141
Turn in all of the Netherwing Eggs you have collected |collect 0! Netherwing Egg##32506 |goto Shadowmoon Valley 66.00,86.50
step
There can be an egg here |goto Shadowmoon Valley,64.00,86.10 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.  This one is pretty well hidden, so pay close attention to this one or you might pass it up.
step
There can be an egg here |goto Shadowmoon Valley,62.50,84.90 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.
step
There can be an egg here |goto Shadowmoon Valley,60.20,87.10 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,62.10,89.50 < 5 |c
|tip Sitting on this big floating rock.  You have to fly up to it.
step
There can be an egg here |goto Shadowmoon Valley,64.90,90.80 < 5 |c
|tip Sitting on the ground near this bunch of big blue crystals.
step
Go inside the mine
There can be an egg here |goto Shadowmoon Valley,64.80,87.20 < 5 |c
|tip Netherwing Eggs can spawn in various places in this entry hallway in the mines, so look around before moving on.
step
Jump down off the mine cart track here |goto Shadowmoon Valley,68.30,84.00 < 5 |c
step
There can be an egg here |goto Shadowmoon Valley,68.80,86.10 < 5 |c
|tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
There can be an egg here |goto Shadowmoon Valley,72.30,87.30 < 5 |c
|tip Netherwing Eggs can spawn in various places all around this room with the big blue ghost dragon, so make sure to check thoroughly.
step
There can be an egg here |goto Shadowmoon Valley,69.90,85.80 < 5 |c
|tip Go back to the mine cart track and follow the track on the right side.
step
There can be an egg here |goto Shadowmoon Valley,73.60,85.20 < 5 |c
|tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
There can be an egg here |goto Shadowmoon Valley,73.00,89.30 < 5 |c
|tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
There can be an egg here |goto Shadowmoon Valley,73.60,85.20 < 5 |c
|tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
There can be an egg here |goto Shadowmoon Valley,68.50,81.60 < 5 |c
|tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
There can be an egg here |goto Shadowmoon Valley,64.80,83.00 < 5 |c
|tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
Jump over the wooden rail in this spot to get down to the hallway below |goto Shadowmoon Valley,65.20,84.20 < 5 |c
step
Leave the cave |goto Shadowmoon Valley,65.30,90.20 < 5 |c
|tip Make sure to keep an eye out for Netherwing Eggs as you run through the entrance hallway to leave the cave.
step
There can be an egg here |goto Shadowmoon Valley,65.50,94.20 < 5 |c
|tip Sitting on this big floating rock.  You have to fly up to it.
step
There can be an egg here |goto Shadowmoon Valley,68.00,94.90 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,69.60,91.80 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals.
step
There can be an egg here |goto Shadowmoon Valley,70.90,89.20 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,71.40,86.60 < 5 |c
|tip Sitting on the ground next to this bunch of big blue crystals, up on the top of this mountain.
step
There can be an egg here |goto Shadowmoon Valley,72.20,87.10 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,73.40,90.30 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,75.80,91.60 < 5 |c
|tip Sitting on this small floating rock.
step
There can be an egg here |goto Shadowmoon Valley,77.60,92.60 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,77.40,95.70 < 5 |c
|tip Sitting on this big floating rock.
step
There can be an egg here |goto Shadowmoon Valley,77.30,85.90 < 5 |c
|tip Sitting on top of this tall mountain peak.
step
There can be an egg here |goto Shadowmoon Valley,76.50,83.30 < 5 |c
|tip Sitting on the ground inside this netherdrake skeleton's mouth.
step
There can be an egg here |goto Shadowmoon Valley,78.90,83.30 < 5 |c
|tip Sitting right next to this bunch of big blue crystals on the side of this cliff.  You have to fly down to it.
step
There can be an egg here |goto Shadowmoon Valley,78.10,81.20 < 5 |c
|tip Sitting on top of this tall mountain peak.  You have to fly up to it.
step
There can be an egg here |goto Shadowmoon Valley,78.80,79.60 < 5 |c
|tip Sitting at the very tip of this huge crystal.
step
This is the end of the path.
Click here to go back to the beginning of the path. |confirm |next "Begin_Path"
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Red Drake",{
keywords={"red","drake","exalted","the","wyrmrest","accord","mount","flying"},
mounts={59570},
patch='30008',
mounttype='Flying',
model={23522},
description="This guide will help you acquire the Red Drake mount.",
},[[
step
This will require you to be _exalted_ with _The Wyrmrest Accord_
#include "WATabard"
The tabard will only give you reputation if the enemies in your current dungeon are high enough to give you experience.  |only if rep("The Wyrmrest Accord")<Exalted
Click here to earn Reputation via quests and dailies. |next "Reputation Guides\\Wrath of the Lich King Reputations\\The Wyrmrest Accord" |confirm |only if QC.guidesets["ReputationsH"]
_Exalted_ with _The Wyrmrest Accord_ |complete rep("The Wyrmrest Accord")>=Exalted
|next |only if default
|next "exalted" |only if rep("The Wyrmrest Accord")>=Exalted
step
label "exalted"
talk Cielstrasza##32533
buy 1 Reins of the Red Drake##43955 |goto Dragonblight,59.80,53.00
step
use Reins of the Red Drake##43955
Learn the "Red Drake" Mount |learnmount Red Drake##59570
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Reputation Mounts\\Riding Nether Ray\\Skyguard Faction Dailies",{
keywords={"green","red","purple","blue","silver","riding","nether","ray","skyguard","exalted","mount","flying"},
description="This guide will help you acquire the Green Riding Nether Ray, Red Riding Nether Ray, Blue Riding Nether Ray, Purple Riding Nether Ray, and Silver Riding Nether Ray mounts.",
mounts={39803,39798,39801,39800,39802},
},[[
step
Routing to the proper section. |next "dailies" |only if completedq(11073)
Routing to the proper section. |next |only if not completedq(11073)
#include "H_Skyguard_PreQ"
#include "H_Skyguard_Daily"
step
talk Grella##23367
buy Green Riding Nether Ray##32314 |goto Terokkar Forest 64.30,66.20
buy Red Riding Nether Ray##32317 |goto Terokkar Forest 64.30,66.20
buy Blue Riding Nether Ray##32319 |goto Terokkar Forest 64.30,66.20
buy Purple Riding Nether Ray##32316 |goto Terokkar Forest 64.30,66.20
buy Silver Riding Nether Ray##32318 |goto Terokkar Forest 64.30,66.20
step
learnmount Green Riding Nether Ray##39798 |use Green Riding Nether Ray##32314
learnmount Red Riding Nether Ray##39800 |use Red Riding Nether Ray##32317
learnmount Blue Riding Nether Ray##39803 |use Blue Riding Nether Ray##32319
learnmount Purple Riding Nether Ray##39801 |use Purple Riding Nether Ray##32316
learnmount Silver Riding Nether Ray##39802 |use Silver Riding Nether Ray##32318
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Trading Card Mounts\\Amani Dragonhawk",{
keywords={"trading","card","game","amani","dragonhawk","mount","flying"},
mounts={96503},
patch='unknown',
mounttype='Flying',
model={37800},
description="This guide will help you acquire the Amani Dragonhawk mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Trading Card Mounts\\Mottled Drake",{
keywords={"trading","card","game","mottled","drake","mount","flying"},
mounts={93623},
patch='unknown',
mounttype='Flying',
model={37231},
description="This guide will help you acquire the Mottled Drake mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Trading Card Mounts\\Blazing Hippogryph",{
keywords={"blazing","hippogryph","mount","trading","card","game","flying"},
mounts={74856},
patch='unknown',
mounttype='Flying',
model={31803},
description="This guide will help you acquire the Blazing Hippogryph mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Trading Card Mounts\\Corrupted Hippogryph",{
keywords={"trading","card","game","corrupted","hippogryph","mount","flying"},
mounts={102514},
patch='43000',
mounttype='Flying',
model={38972},
description="This guide will help you acquire the Corrupted Hippogryph mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Trading Card Mounts\\X-51 Nether-Rocket",{
keywords={"x","51","X-51","nether","rocket","nether-rocket","trading","card","game","mount","flying"},
mounts={46197},
patch='20400',
mounttype='Flying',
model={23656},
description="This guide will help you acquire the X-51 Nether-Rocket mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Trading Card Mounts\\X-51 Nether-Rocket X-TREME",{
keywords={"x-51","x","51","nether","rocket","nether-rocket","x-treme","treme","trading","card","game","mount","flying"},
mounts={46199},
patch='20400',
mounttype='Flying',
model={23647},
description="This guide will help you acquire the X-51 Nether-Rocket X-TREME mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Trading Card Mounts\\Feldrake",{
keywords={"Feldrake","trading","card","game","mount","flying"},
mounts={113120},
patch='43200',
mounttype='Flying',
model={40568},
description="This guide will help you acquire the Feldrake mount.",
},[[
step
These mounts can only be obtained by redeeming codes from the World of Warcraft trading card game.
You can also buy this from the AH if available.
|tip Usually they are very expensive.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Black Proto-Drake",{
keywords={"black","proto","drake","proto-drake"},
mounts={59976},
patch='30002',
mounttype='Flying',
model={28040},
description="This mount has been removed from the game.",
},[[
step
The Black Proto-Drake was the reward for completing the achievement "Glory of the Raider (25 Player)"
This mount was retired from service in patch 3.1
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Brutal Nether Drake",{
keywords={"brutal","nether","drake","arena"},
mounts={58615},
patch='30002',
mounttype='Flying',
model={27507},
description="This mount has been removed from the game.",
},[[
step
The Brutal Nether Drake was the reward for top ranking arena teams at the conclusion of Arena Season 4
This mount was retired from service at the conclusion of Arena Season 4
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Cataclysmic Gladiator's Twilight Drake",{
keywords={"cataclysmic","gladiators","gladiator's","twilight","drake","arena"},
mounts={124550},
patch='50400',
mounttype='Flying',
model={38757},
description="This mount has been removed from the game.",
},[[
step
The Cataclysmic Gladiator's Twilight Drake was the reward for top ranking arena teams at the conclusion of Arena Season 11
This mount was retired from service at the conclusion of Arena Season 11
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Deadly Gladiator's Frost Wyrm",{
keywords={"deadly","gladiators","gladiator's","frost","wyrm","arena"},
mounts={64927},
patch='30100',
mounttype='Flying',
model={25511},
description="This mount has been removed from the game.",
},[[
step
The Deadly Gladiator's Frost Wyrm was the reward for top ranking arena teams at the conclusion of Arena Season 5
This mount was retired from service at the conclusion of Arena Season 5
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Furious Gladiator's Frost Wyrm",{
keywords={"furious","gladiators","gladiator's","frost","wyrm","arena"},
mounts={65439},
patch='30200',
mounttype='Flying',
model={25593},
description="This mount has been removed from the game.",
},[[
step
The Furious Gladiator's Frost Wyrm was the reward for top ranking arena teams at the conclusion of Arena Season 6
This mount was retired from service at the conclusion of Arena Season 6
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Merciless Nether Drake",{
keywords={"merciless","nether","drake","arena"},
mounts={44744},
patch='20300',
mounttype='Flying',
model={22620},
description="This mount has been removed from the game.",
},[[
step
The Merciless Nether Drake was the reward for top ranking arena teams at the conclusion of Arena Season 2
This mount was retired from service at the conclusion of Arena Season 2
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Relentless Gladiator's Frost Wyrm",{
keywords={"relentless","gladiators","gladiator's","frost","wyrm","arena"},
mounts={67336},
patch='30200',
mounttype='Flying',
model={29794},
description="This mount has been removed from the game.",
},[[
step
The Relentless Gladiator's Frost Wyrm was the reward for top ranking arena teams at the conclusion of Arena Season 7
This mount was retired from service at the conclusion of Arena Season 7
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Ruthless Gladiator's Twilight Drake",{
keywords={"ruthless","gladiators","gladiator's","twilight","drake","arena"},
mounts={101821},
patch='43000',
mounttype='Flying',
model={38755},
description="This mount has been removed from the game.",
},[[
step
The Ruthless Gladiator's Twilight Drake was the reward for top ranking arena teams at the conclusion of Arena Season 10
This mount was retired from service at the conclusion of Arena Season 10
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Spectral Wind Rider",{
keywords={"spectral","wind","rider"},
mounts={107517},
patch='43000',
mounttype='Flying',
model={39547},
description="This mount has been removed from the game.",
},[[
step
The Spectral Wind Rider was the Horde version of the Scroll of Resurrection reward
This mount was retired from service in patch 5.4.7 with the Scroll of Resurrection program
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Swift Nether Drake",{
keywords={"swift","nether","drake","arena"},
mounts={37015},
patch='20100',
mounttype='Flying',
model={20344},
description="This mount has been removed from the game.",
},[[
step
The Swift Nether Drake was the reward for top ranking arena teams at the conclusion of Arena Season 1
This mount was retired from service at the conclusion of Arena Season 1
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Tyrael's Charger",{
keywords={"tyraels","tyrael's","charger","annual","pass"},
mounts={107203},
patch='43000',
mounttype='Flying',
model={39530},
description="This mount has been removed from the game.",
},[[
step
Tyrael's Charger was a reward for subscribing to Blizzard's Annual Pass promotion.
This mount was retired from service in patch 5.4.7
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Vengeful Nether Drake",{
keywords={"vengeful","nether","drake","arena"},
mounts={49193},
patch='20403',
mounttype='Flying',
model={24725},
description="This mount has been removed from the game.",
},[[
step
The Vengeful Nether Drake was the reward for top ranking arena teams at the conclusion of Arena Season 3
This mount was retired from service at the conclusion of Arena Season 3
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Vicious Gladiator's Twilight Drake",{
keywords={"vicious","gladiators","gladiator's","twilight","drake","arena"},
mounts={101282},
patch='42000',
mounttype='Flying',
model={38756},
description="This mount has been removed from the game.",
},[[
step
The Vicious Gladiator's Twilight Drake was the reward for top ranking arena teams at the conclusion of Arena Season 9
This mount was retired from service at the conclusion of Arena Season 9
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Unavailable Mounts\\Wrathful Gladiator's Frost Wyrm",{
keywords={"wrathful","gladiators","gladiator's","frost","wyrm","arena"},
mounts={71810},
patch='30300',
mounttype='Flying',
model={31047},
description="This mount has been removed from the game.",
},[[
step
The Wrathful Gladiator's Frost Wyrm was the reward for top ranking arena teams at the conclusion of Arena Season 8
This mount was retired from service at the conclusion of Arena Season 8
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Armored Blue Wind Rider",{
keywords={"armored","blue","wind","rider","wyvern","flying","mount"},
mounts={61230},
patch='30002',
mounttype='Flying',
model={24045},
description="This guide will help you acquire the Armored Blue Wind Rider mount.",
},[[
step
This _mount_ costs _2000_ gold.
|tip It could be cheaper based on your reputation with the Kirin Tor.
confirm
step
talk Mei Francis##32216
buy 1 Armored Blue Wind Rider##44690 |goto Dalaran,58.10,42.10
step
learnmount Armored Blue Wind Rider##61230 |use Armored Blue Wind Rider##44690
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Sandstone Drake",{
keywords={"vial","of","the","sands","sandstone","drake","mount","flying"},
mounts={93326},
patch='unknown',
mounttype='Flying',
model={35750},
description="This guide will help you acquire the Sandstone Drake flying mount.",
},[[
step
You will _need_ at least _29,000_ gold to obtain this _mount_
confirm
|next "AlchemistVialoftheSandsLearn" |only if skill("Cataclysm Alchemy") >= 75
|next "AHVialoftheSands" |only if skill("Cataclysm Alchemy") < 75
step
label "AlchemistVialoftheSandsLearn"
Since you're an _Alchemist_ you can make this item yourself:
Make sure your Archaeology is at least level 450 |only if skill("Archaeology") < 450
Use your Archaeology skill on the Kalimdor continent at Tol'vir digsites
collect Canopic Jar##64657 |n
Click the Canopic Jars |use Canopic Jar##64657
collect 1 Recipe: Vial of the Sands##67538
Click this line if you don't want to create the Vial of the Sands yourself |confirm |next "AHVialoftheSands"
step
Use your _Recipe: Vial of the Sands_ |use Recipe: Vial of the Sands##67538
learn Vial of the Sands##93328
|next "FarmVialoftheSands" |only if skill("Cataclysm Alchemy") >= 75
step
label "AHVialoftheSands"
talk Auctioneer Drezmit##44866
buy 1 Vial of the Sands##65891 |goto Orgrimmar,54.10,73.30 |next "learn"
Click this line if this isn't on the Auction House or you don't have enough gold to buy it |confirm |next "FarmVialoftheSands"
step
label "FarmVialoftheSands"
talk Auctioneer Drezmit##44866
buy 12 Truegold##58480 |goto Orgrimmar,54.10,73.30
buy 8 Flask of the Winds##58087 |goto Orgrimmar,54.10,73.30
buy 8 Flask of Titanic Strength##58088 |goto Orgrimmar,54.10,73.30
buy 8 Deepstone Oil##56850 |goto Orgrimmar,54.10,73.30
If you don't have enough _gold_ or these items are not on the _Auction House_ you will have to _farm_ for these items.
step
talk Yasmin##49406
buy 8 Sands of Time##65893 |goto Uldum,26.60,7.20
buy 1 Pyrium-Laced Crystalline Vial##65892 |goto Uldum,26.60,7.20
step
create Vial of the Sands##93328,Cataclysm Alchemy,1 total |only if skill("Cataclysm Alchemy") >= 75
Find an _Alchemist_ to make your _Vial of the Sands_
|tip Ask in Trade chat in a major city, you should find someone to help you pretty quickly. |only if default
collect 1 Vial of the Sands##65891
step
label "learn"
learnmount Sandstone Drake##93326 |use Vial of the Sands##65891
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Wind Riders",{
keywords={"wind","rider","wyvern","tawny","swift","blue","green","red","purple","yellow","flying","mount"},
condition_end=function() return hasmount(32243) and hasmount(32245) and hasmount(32244) and hasmount(32296) and hasmount(32246) and hasmount(32297) and hasmount(32295) end,
model={17699,17700,17701,17719,17720,17721,17722,24044},
description="This guide will help you acquire the Swift Red Wind Rider, Swift Green Wind Rider, Swift Purple WInd Rider, Tawny Wind Rider, Blue Wind Rider, and Green Wind Rider mounts.",
},[[
step
talk Drakma##44918
buy 1 Tawny Wind Rider##25474 |goto Orgrimmar,48.00,58.60
buy 1 Blue Wind Rider##25475 |goto Orgrimmar,48.00,58.60
buy 1 Green Wind Rider##25476 |goto Orgrimmar,48.00,58.60
buy 1 Swift Red Wind Rider##25477 |goto Orgrimmar,48.00,58.60
buy 1 Swift Green Wind Rider##25531 |goto Orgrimmar,48.00,58.60
buy 1 Swift Purple Wind Rider##25533 |goto Orgrimmar,48.00,58.60
buy 1 Swift Yellow Wind Rider##25532 |goto Orgrimmar,48.00,58.60
step
learnmount Tawny Wind Rider##32243 |use Tawny Wind Rider##25474
learnmount Blue Wind Rider##32244 |use Blue Wind Rider##25475
learnmount Green Wind Rider##32245 |use Green Wind Rider##25476
learnmount Swift Red Wind Rider##32246 |use Swift Red Wind Rider##25477
learnmount Swift Green Wind Rider##32295 |use Swift Green Wind Rider##25531
learnmount Swift Purple Wind Rider##32297 |use Swift Purple Wind Rider##25533
learnmount Swift Yellow Wind Rider##32296 |use Swift Yellow Wind Rider##25532
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Flying Mounts\\Vendor Mounts\\Winged Steed of the Ebon Blade",{
keywords={"death","knight","winged","steed","of","the","ebon","blade","flying","mount"},
mounts={54729},
patch='30001',
mounttype='Flying',
model={28108},
description="This guide will help you acquire the Winged Steed of the Ebon Blade mount.",
},[[
step
_Only Death Knights_ can buy this mount!
It costs about 1000 gold.
confirm
step
talk Dread Commander Thalanor##29587
buy 1 Winged Steed of the Ebon Blade##40775 |goto Eastern Plaguelands 84,49.80
collect 1 Winged Steed of the Ebon Blade##40775 |goto Eastern Plaguelands 84,49.80
step
learnmount Winged Steed of the Ebon Blade##54729 |use Winged Steed of the Ebon Blade##40775
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Aquatic Mounts\\Sea Turtle",{
keywords={"sea","turtle","aquatic","water","mount"},
mounts={34187},
patch='unknown',
mounttype='unknown',
model={29161},
description="This guide will help you acquire the Sea Turtle mount.",
},[[
step
Acquiring _this mount requires_ you to have _fishing_
confirm
step
_Go to_ either _Twilight Highlands_, _Uldum_, _Tol Barad Peninsula_, _Howling Fjord_, _Borean Tundra_, _Deepholm_, _Grizzly Hills_, _Mount Hyjal_, _Crystalsong Forest_, _Sholazar Basin_, or _Dragonblight_.
Find _any_ and all _schools of fish_ that you can and _fish_ from them. |tip The more you fish, the better chances you have of obtaining this mount. It has an average of .01% drop rate, so you're going to be fishing for a while.
collect 1 Sea Turtle##46109
step
learnmount Sea Turtle##64731 |use Sea Turtle##46109
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Aquatic Mounts\\Subdued Seahorse",{
keywords={"subdued","seahorse","aquatic","water","mount"},
mounts={98718},
patch='unknown',
mounttype='Aquatic',
model={34955},
description="This guide will help you acquire the Subdued Seahorse mount.",
},[[
step
The Following Steps Will Unlock the Portal to Vashj'ir
talk Commander Thorak##41621
|tip Inside the building.
accept Call of Duty##25924 |goto Durotar/0 55.82,12.32 |or
'|complete completedq(25924) |or
step
Wait for the Ship at the Docks
Watch the dialogue
|tip It takes about 3 minutes for the dialogue and ship's journey.
Ride the mercenary ship to Vashj'ir |q 25924/1 |goto Durotar/0 57.69,10.47 |or
'|complete completedq(25924) |or
step
talk Erunak Stonespeaker##41618
turnin Call of Duty##25924 |goto Kelp'thar Forest/0 38.75,31.70 |or
'|complete completedq(25924) |or
step
_Poseidus_ has a 72-120 hour spawn timer.
|tip This is another extremely rare mount but you can realm hop to other servers to increases your chances of finding him spawned.
|tip This mount is also BOE which means it can be sold on the AH.
It is subject to server restarts, meaning it may spawn right after weekly maintenance.
Search for it at the provided locations below: |goto Shimmering Expanse
[Shimmering Expanse 65.40,41.40]
[Shimmering Expanse 38.80,68.80]
[Shimmering Expanse 58.40,82.20]
[Shimmering Expanse 46.00,50.10]
[Abyssal Depths 40.00,74.20]
kill Poseidus
collect Reins of Poseidus##67151
step
|use Reins of Poseidus##67151
Learn the "Subdued Seahorse" Mount |learnmount Subdued Seahorse##98718
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Aquatic Mounts\\Vashj'ir Seahorse",{
keywords={"vashj'ir","seahorse","aquatic","water","mount"},
mounts={75207},
patch='unknown',
mounttype='Aquatic',
model={34956},
description="This guide will help you acquire the Vashj'ir Seahorse mount.",
},[[
step
The Following Steps Will Unlock the Portal to Vashj'ir
talk Commander Thorak##41621
|tip Inside the building.
accept Call of Duty##25924 |goto Durotar/0 55.82,12.32 |or
'|complete completedq(25924) |or
step
Wait for the Ship at the Docks
Watch the dialogue
|tip It takes about 3 minutes for the dialogue and ship's journey.
Ride the mercenary ship to Vashj'ir |q 25924/1 |goto Durotar/0 57.69,10.47 |or
'|complete completedq(25924) |or
step
talk Erunak Stonespeaker##41618
turnin Call of Duty##25924 |goto Kelp'thar Forest/0 38.75,31.70 |or
'|complete completedq(25924) |or
step
talk Erunak Stonespeaker##41618
accept Sea Legs##25929 |goto Kelp'thar Forest/0 38.70,31.70
step
click Saltwater Star##205989
collect 3 Saltwater Starfish##54828 |q 25929/1 |goto Kelp'thar Forest/0 42.10,31.30
click Conch Shell##202560
collect Conch Shell##52504 |q 25929/2 |goto Kelp'thar Forest/0 42.10,31.30
step
talk Erunak Stonespeaker##41618
turnin Sea Legs##25929 |goto Kelp'thar Forest/0 38.70,31.70
accept Pay It Forward##25936 |goto Kelp'thar Forest/0 38.70,31.70
step
Use your Enchanted Conch on Drowning Warriors |use Enchanted Conch##56227
|tip They are swimming above the ground, holding their throats.
Rescue 6 Drowning Warriors |q 25936/1 |goto Kelp'thar Forest/0 42.40,31.40
step
talk Erunak Stonespeaker##41618
turnin Pay It Forward##25936 |goto Kelp'thar Forest/0 38.70,31.70
accept Rest For the Weary##25941 |goto Kelp'thar Forest/0 38.70,31.70
step
talk Legionnaire Nazgrim##41711
turnin Rest For the Weary##25941 |goto Kelp'thar Forest/0 39.00,32.10
accept Buy Us Some Time##25942 |goto Kelp'thar Forest/0 39.00,32.10
accept Traveling on Our Stomachs##25943 |goto Kelp'thar Forest/0 39.00,32.10
step
talk Erunak Stonespeaker##41618
home The Immortal Coil |goto Kelp'thar Forest/0 38.70,31.70
step
kill Zin'jatar Raider##41781+
Slay 8 Zin'jatar Raiders |q 25942/1 |goto Kelp'thar Forest/0 40.90,30.70
kill Splitclaw Skitterer##40685+
collect 10 Succulent Crab Meat##54845 |q 25943/1 |goto Kelp'thar Forest/0 40.90,30.70
step
talk Legionnaire Nazgrim##41711
turnin Buy Us Some Time##25942 |goto Kelp'thar Forest/0 39.00,32.10
turnin Traveling on Our Stomachs##25943 |goto Kelp'thar Forest/0 39.00,32.10
accept Girding Our Loins##25944 |goto Kelp'thar Forest/0 39.00,32.10
step
click Alliance S.E.A.L. Equipment##203395
accept Helm's Deep##25946 |goto Kelp'thar Forest/0 38.90,26.90
step
kill Gilblin Plunderer##41746+
click Orgrimmar Axe##203394
collect 5 Orgrimmar Axe##118400 |q 25944/1 |goto Kelp'thar Forest/0 36.70,28.90
click Orgrimmar Helm##203393
collect 5 Orgrimmar Helm##56244 |q 25944/2 |goto Kelp'thar Forest/0 36.70,28.90
click Orgrimmar Breastplate##203392
collect 5 Orgrimmar Breastplate##56245 |q 25944/3 |goto Kelp'thar Forest/0 36.70,28.90
You can find more Axes, Helms and Breastplates around [36.20,21.00]
step
talk Legionnaire Nazgrim##41711
turnin Girding Our Loins##25944 |goto Kelp'thar Forest/0 39.00,32.10
turnin Helm's Deep##25946 |goto Kelp'thar Forest/0 39.00,32.10
accept Finders, Keepers##25947 |goto Kelp'thar Forest/0 39.00,32.10
step
click Stormwind Locker##203061
collect 5 Stormwind SEAL Equipment##54957 |q 25947/1 |goto Kelp'thar Forest/0 49.60,22.30
step
talk Legionnaire Nazgrim##41711
turnin Finders, Keepers##25947 |goto Kelp'thar Forest/0 39.00,32.10
accept Bring It On!##25948 |goto Kelp'thar Forest/0 39.00,32.10
step
talk Legionnaire Nazgrim##41750
turnin Bring It On!##25948 |goto Kelp'thar Forest/0 38.90,31.60
accept Blood and Thunder!##25949 |goto Kelp'thar Forest/0 38.90,31.60
step
Fight the naga until you get kidnapped
Follow Erunak Stonespeaker after he saves you
Complete the Defense of The Immortal Coil |q 25949/1 |goto Kelp'thar Forest/0 39.90,30.80
step
talk Erunak Stonespeaker##40105
turnin Blood and Thunder!##25949 |goto Kelp'thar Forest/0 46.30,46.90
step
talk Moanah Stormhoof##41248
accept Better Late Than Dead##25477 |goto Kelp'thar Forest/0 46.00,46.90
step
Use Moanah's Baitstick on a Speckled Sea Turtle |use Moanah's Baitstick##54462
Start swimming on the turtle and a shark will come and eat the turtle
Mount the Sea Turtle |q 25477/1 |goto Kelp'thar Forest/0 52.80,48.80
step
talk Moanah Stormhoof##41248
turnin Better Late Than Dead##25477 |goto Kelp'thar Forest/0 46.00,46.90
accept The Abyssal Ride##25371 |goto Kelp'thar Forest/0 46.00,46.90
step
click Braided Rope##202766
Tie off the Seahorse Lure |q 25371/1 |goto Kelp'thar Forest/0 45.40,46.60
step
clicknpc Abyssal Seahorse##40054
Use the abilities on your hotbar when you are told to
|tip You will have to use the corresponding arrow abilities to the arrows that display in the middle of your screen.
Subdue a Vashj'ir Seahorse |q 25371/2 |goto Kelp'thar Forest/0 45.00,46.90
step
talk Moanah Stormhoof##41248
turnin The Abyssal Ride##25371 |goto Kelp'thar Forest/0 46.00,46.90
collect 1 Vashj'ir Seahorse##54465 |goto Kelp'thar Forest/0 46.00,46.90
step
|use Vashj'ir Seahorse##54465
Learn the "Vashj'ir Seahorse" Mount |learnmount Vashj'ir Seahorse##75207
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Crusader Title\\Blood Elf Champion Rank",{
description="This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Blood Elf race. You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.",
mounts={65639,63642},
},[[
step
In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
You cannot complete this section if you are a Blood Elf.
step
talk Eressea Dawnsinger##33379
accept Valiant Of Silvermoon##13711 |goto Icecrown,76.50,23.90
turnin Valiant Of Silvermoon##13711 |goto Icecrown,76.50,23.90
accept The Valiant's Charge##13722 |goto Icecrown,76.50,23.90
step
talk Eressea Dawnsinger##33379
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13783 |goto Icecrown 76.50,23.90 |or
accept A Worthy Weapon##13784 |goto Icecrown 76.50,23.90 |or
accept The Edge Of Winter##13785 |goto Icecrown 76.50,23.90 |or
step
talk Kethiel Sunlance##33538
accept A Valiant's Field Training##13786 |goto Icecrown 76.40,23.80
step
talk Aneera Thuron##33548
accept The Grand Melee##13787 |goto Icecrown 76.50,23.90
accept At The Enemy's Gates##13859 |goto Icecrown 76.50,23.90
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
Tell her you are glad to help
collect Ashwood Brand##44981 |q 13783/1 |goto Grizzly Hills,61.20,50.30
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13784 |goto Icecrown,69.10,76.20
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13784/1 |goto Dragonblight,93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13785 |goto Crystalsong Forest,54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13785/1 |goto Howling Fjord,42.20,19.70
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13859 |goto Icecrown,48.90,71.40
step
kill 15 Boneguard Footman |q 13859/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13859/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13859/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13859 |goto Icecrown 49.10,71.40
step
kill 10 Converted Hero##32255 |q 13786/1 |goto Icecrown 44.30,54.20
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Silvermoon Hawkstrider |invehicle |q 13787 |goto Icecrown 75.50,24.10
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13787/1 |goto Icecrown 75.30,26.00
step
talk Eressea Dawnsinger##33379
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13783 |goto Icecrown 76.50,23.90
turnin A Worthy Weapon##13784 |goto Icecrown 76.50,23.90
turnin The Edge Of Winter##13785 |goto Icecrown 76.50,23.90
step
talk Kethiel Sunlance##33538
turnin A Valiant's Field Training##13786 |goto Icecrown 76.40,23.80
step
talk Aneera Thuron##33548
turnin The Grand Melee##13787 |goto Icecrown 76.50,23.90
turnin At The Enemy's Gates##13859 |goto Icecrown 76.50,23.90
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13722/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Eressea Dawnsinger##33379
turnin The Valiant's Charge##13722 |goto Icecrown 76.50,23.90
accept The Valiant's Challenge##13731 |goto Icecrown 76.50,23.90
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Silvermoon Hawkstrider |invehicle |q 13731 |goto Icecrown 72.20,22.40
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13731/1 |goto Icecrown 68.60,21.00
step
talk Eressea Dawnsinger##33379
turnin The Valiant's Challenge##13731 |goto Icecrown 76.50,23.90
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Crusader Title\\Orc Champion Rank",{
description="This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Orc race. You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section. You cannot complete this section if you are an Orc.",
mounts={65646,63640},
},[[
step
In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
You cannot complete this section if you are an Orc.
step
talk Mokra the Skullcrusher##33361
accept Valiant Of Orgrimmar##13707 |goto Icecrown,76.50,24.60
turnin Valiant Of Orgrimmar##13707 |goto Icecrown,76.50,24.60
accept The Valiant's Charge##13697 |goto Icecrown,76.50,24.60
step
talk Mokra the Skullcrusher##33361
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13762 |goto Icecrown 76.50,24.60 |or
accept A Worthy Weapon##13763 |goto Icecrown 76.50,24.60 |or
accept The Edge Of Winter##13764 |goto Icecrown 76.50,24.60 |or
step
talk Akinos##33405
accept A Valiant's Field Training##13765 |goto Icecrown 76.50,24.50
step
talk Morah Worgsister##33544
accept The Grand Melee##13767 |goto Icecrown 76.40,24.60
accept At The Enemy's Gates##13856 |goto Icecrown 76.40,24.60
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13762/1 |goto Grizzly Hills,61.20,50.30
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13763 |goto Icecrown,69.10,76.20
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13763/1 |goto Dragonblight,93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13764 |goto Crystalsong Forest,54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13764/1 |goto Howling Fjord,42.20,19.70
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13856 |goto Icecrown,48.90,71.40
step
kill 15 Boneguard Footman |q 13856/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13856/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13856/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area.  Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13856 |goto Icecrown 49.10,71.40
step
kill 10 Converted Hero##32255 |q 13765/1 |goto Icecrown 44.30,54.20
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Orgrimmar Wolf |invehicle |q 13767 |goto Icecrown 75.50,24.00
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13767/1 |goto Icecrown 75.30,26.00
step
talk Mokra the Skullcrusher##33361
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13762 |goto Icecrown 76.50,24.60
turnin A Worthy Weapon##13763 |goto Icecrown 76.50,24.60
turnin The Edge Of Winter##13764 |goto Icecrown 76.50,24.60
step
talk Akinos##33405
turnin A Valiant's Field Training##13765 |goto Icecrown 76.50,24.50
step
talk Morah Worgsister##33544
turnin The Grand Melee##13767 |goto Icecrown 76.40,24.60
turnin At The Enemy's Gates##13856 |goto Icecrown 76.40,24.60
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13697/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Mokra the Skullcrusher##33361
turnin The Valiant's Charge##13697 |goto Icecrown 76.50,24.60
accept The Valiant's Challenge##13726 |goto Icecrown 76.50,24.60
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Orgrimmar Wolf |invehicle |q 13726 |goto Icecrown 72.20,22.50
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13726/1 |goto Icecrown 68.60,21.00
step
talk Mokra the Skullcrusher##33361
turnin The Valiant's Challenge##13726 |goto Icecrown 76.50,24.60
step
Congratulations, you are now a Champion of Orgrimmar!
|tip This is the end of the Orc Champion Rank Guide for the Crusader Title.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Crusader Title\\Tauren Champion Rank",{
description="This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Tauren race. You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.",
mounts={63641,65641},
},[[
step
In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
You cannot complete this section if you are a Tauren.
step
talk Runok Wildmane##33403
accept Valiant Of Thunder Bluff##13709 |goto Icecrown,76.20,24.60
turnin Valiant Of Thunder Bluff##13709 |goto Icecrown,76.20,24.60
accept The Valiant's Charge##13720 |goto Icecrown,76.20,24.60
step
talk Runok Wildmane##33403
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13773 |goto Icecrown 76.20,24.60 |or
accept A Worthy Weapon##13774 |goto Icecrown 76.20,24.60 |or
accept The Edge Of Winter##13775 |goto Icecrown 76.20,24.60 |or
step
talk Dern Ragetotem##33539
accept A Valiant's Field Training##13776 |goto Icecrown 76.30,24.70
step
talk Anka Clawhoof##33549
accept The Grand Melee##13777 |goto Icecrown 76.10,24.60
accept At The Enemy's Gates##13858 |goto Icecrown 76.10,24.60
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
Tell her you are glad to help
collect Ashwood Brand##44981 |q 13773/1 |goto Grizzly Hills,61.20,50.30
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13774 |goto Icecrown,69.10,76.20
step
Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13774/1 |goto Dragonblight,93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13775 |goto Crystalsong Forest,54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13775/1 |goto Howling Fjord,42.20,19.70
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13858 |goto Icecrown,48.90,71.40
step
kill 15 Boneguard Footman |q 13858/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13858/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13858/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13858 |goto Icecrown 49.10,71.40
step
kill 10 Converted Hero##32255 |q 13776/1 |goto Icecrown 44.30,54.20
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Thunder Bluff Kodo |invehicle |q 13777 |goto Icecrown 75.50,24.30
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13777/1 |goto Icecrown 75.30,26.00
step
talk Runok Wildmane##33403
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13773 |goto Icecrown 76.20,24.60
turnin A Worthy Weapon##13774 |goto Icecrown 76.20,24.60
turnin The Edge Of Winter##13775 |goto Icecrown 76.20,24.60
step
talk Dern Ragetotem##33539
turnin A Valiant's Field Training##13776 |goto Icecrown 76.30,24.70
step
talk Anka Clawhoof##33549
turnin The Grand Melee##13777 |goto Icecrown 76.10,24.60
turnin At The Enemy's Gates##13858 |goto Icecrown 76.10,24.60
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13720/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Runok Wildmane##33403
turnin The Valiant's Charge##13720 |goto Icecrown 76.20,24.60
accept The Valiant's Challenge##13728 |goto Icecrown 76.20,24.60
step
Equip the Horde Lance in your bags|use Horde Lance##46070
Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13728 |goto Icecrown 71.90,22.40
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13728/1 |goto Icecrown 68.60,21.00
step
talk Runok Wildmane##33403
turnin The Valiant's Challenge##13728 |goto Icecrown 76.20,24.60
step
Congratulations, you are now a Champion of Thunder Bluff!
|tip This is the end of the Tauren Champion Rank Guide for the Crusader Title.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Crusader Title\\Troll Champion Rank",{
description="This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Troll race. You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.",
mounts={63635,65644},
},[[
step
In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
You cannot complete this section if you are a Troll.
step
talk Zul'tore##33372
accept Valiant Of Sen'jin##13708 |goto Icecrown,76.00,24.50
turnin Valiant Of Sen'jin##13708 |goto Icecrown,76.00,24.50
accept The Valiant's Charge##13719 |goto Icecrown,76.00,24.50
step
talk Zul'tore##33372
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13768 |goto Icecrown 76.00,24.50 |or
accept A Worthy Weapon##13769 |goto Icecrown 76.00,24.50 |or
accept The Edge Of Winter##13770 |goto Icecrown 76.00,24.50 |or
step
talk Shadow Hunter Mezil-kree##33540
accept A Valiant's Field Training##13771 |goto Icecrown 76.00,24.60
step
talk Gahju##33545
accept The Grand Melee##13772 |goto Icecrown 75.90,24.40
accept At The Enemy's Gates##13857 |goto Icecrown 75.90,24.40
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
Tell her you are glad to help
collect Ashwood Brand##44981 |q 13768/1 |goto Grizzly Hills,61.20,50.30
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13769 |goto Icecrown,69.10,76.20
step
Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13769/1 |goto Dragonblight,93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13770 |goto Crystalsong Forest,54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13770/1 |goto Howling Fjord,42.20,19.70
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13857 |goto Icecrown,48.90,71.40
step
kill 15 Boneguard Footman |q 13857/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13857/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13857/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13857 |goto Icecrown 49.10,71.40
step
kill 10 Converted Hero##32255 |q 13771/1 |goto Icecrown 44.30,54.20
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Darkspear Raptor |invehicle |q 13772 |goto Icecrown 75.60,23.80
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13772/1 |goto Icecrown 75.30,26.00
step
talk Zul'tore##33372
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13768 |goto Icecrown 76.00,24.50
turnin A Worthy Weapon##13769 |goto Icecrown 76.00,24.50
turnin The Edge Of Winter##13770 |goto Icecrown 76.00,24.50
step
talk Shadow Hunter Mezil-kree##33540
turnin A Valiant's Field Training##13771 |goto Icecrown 76.00,24.60
step
talk Gahju##33545
turnin The Grand Melee##13772 |goto Icecrown 75.90,24.40
turnin At The Enemy's Gates##13857 |goto Icecrown 75.90,24.40
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13719/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Zul'tore##33372
turnin The Valiant's Charge##13719 |goto Icecrown 76.00,24.50
accept The Valiant's Challenge##13727 |goto Icecrown 76.00,24.50
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Darkspear Raptor |invehicle |q 13727 |goto Icecrown 72.00,22.50
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13727/1 |goto Icecrown 68.60,21.00
step
talk Zul'tore##33372
turnin The Valiant's Challenge##13727 |goto Icecrown 76.00,24.50
step
Congratulations, you are now a Champion of Sen'jin!
|tip This is the end of the Troll Champion Rank Guide for the Crusader Title.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Crusader Title\\Undead Champion Rank",{
description="This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Undead race. You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.",
mounts={65645,63643},
},[[
step
In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
You cannot complete this section if you are an Undead.
step
talk Deathstalker Visceri##33373
accept Valiant Of Undercity##13710 |goto Icecrown,76.50,24.20
turnin Valiant Of Undercity##13710 |goto Icecrown,76.50,24.20
accept The Valiant's Charge##13721 |goto Icecrown,76.50,24.20
step
talk Deathstalker Visceri##33373
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13778 |goto Icecrown 76.50,24.20 |or
accept A Worthy Weapon##13779 |goto Icecrown 76.50,24.20 |or
accept The Edge Of Winter##13780 |goto Icecrown 76.50,24.20 |or
step
talk Sarah Chalke##33541
accept A Valiant's Field Training##13781 |goto Icecrown 76.60,24.10
step
talk Handler Dretch##33547
accept The Grand Melee##13782 |goto Icecrown 76.50,24.30
accept At The Enemy's Gates##13860 |goto Icecrown 76.50,24.30
step
Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
Tell her you're glad to help
collect Ashwood Brand##44981 |q 13778/1 |goto Grizzly Hills,61.20,50.30
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13779 |goto Icecrown,69.10,76.20
step
Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13779/1 |goto Dragonblight,93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13780 |goto Crystalsong Forest,54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13780/1 |goto Howling Fjord,42.20,19.70
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13860 |goto Icecrown,48.90,71.40
step
kill 15 Boneguard Footman |q 13860/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13860/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13860/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13860 |goto Icecrown 49.10,71.40
step
kill 10 Converted Hero##32255 |q 13781/1 |goto Icecrown 44.30,54.20
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Forsaken Warhorse |invehicle |q 13782 |goto Icecrown 75.60,23.90
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them |tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13782/1 |goto Icecrown 75.30,26.00
step
talk Deathstalker Visceri##33373
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13778 |goto Icecrown 76.50,24.20
turnin A Worthy Weapon##13779 |goto Icecrown 76.50,24.20
turnin The Edge Of Winter##13780 |goto Icecrown 76.50,24.20
step
talk Sarah Chalke##33541
turnin A Valiant's Field Training##13781 |goto Icecrown 76.60,24.10
step
talk Handler Dretch##33547
turnin The Grand Melee##13782 |goto Icecrown 76.50,24.30
turnin At The Enemy's Gates##13860 |goto Icecrown 76.50,24.30
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13721/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
talk Deathstalker Visceri##33373
turnin The Valiant's Charge##13721 |goto Icecrown 76.50,24.20
accept The Valiant's Challenge##13729 |goto Icecrown 76.50,24.20
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Forsaken Warhorse |invehicle |q 13729 |goto Icecrown 72.10,22.40
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13729/1 |goto Icecrown 68.60,21.00
step
talk Deathstalker Visceri##33373
turnin The Valiant's Challenge##13729 |goto Icecrown 76.50,24.20
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Required Home Cities Reputation\\Darkspear Trolls & Orgrimmar\\Orc",{
description="This guide will help you to get Exalted reputation with the Darkspear Trolls and Orgrimmar factions. You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.",
mounts={63640},
},[[
step
You will not be able to do some of the quests in this section if you are not an Orc.
confirm
step
talk Kaltunk##10176
accept Your Place In The World##25152 |goto Durotar,43.30,68.80
step
talk Gornek##3143
turnin Your Place In The World##25152 |goto Durotar 43.20,68.30
accept Cutting Teeth##25126 |goto Durotar 43.20,68.30
step
kill Mottled Boar##3098+
Slaughter 8 Mottled Boars |q 25126/1 |goto Durotar 43.90,63.90
step
talk Gornek##3143
turnin Cutting Teeth##25126 |goto Durotar 43.20,68.30
accept Invaders in Our Home##25172 |goto Durotar 43.20,68.30
step
kill 7 Northwatch Scout |q 25172/1 |goto Durotar 43.40,72.90
step
talk Gornek##3143
turnin Invaders in Our Home##25172 |goto Durotar 43.20,68.30
accept Sting of the Scorpid##25127 |goto Durotar 43.20,68.30
step
talk Galgar##9796
accept Galgar's Cactus Apple Surprise##25136 |goto Durotar 42.70,67.20
stickystart "scorpapple"
step
talk Hana'zua##3287
accept Sarkoth##25129 |goto Durotar 40.60,62.60
step
kill Sarkoth##3281
collect Sarkoth's Mangled Claw##4905 |q 25129/1 |goto Durotar 40.50,67.30
step
label "scorpapple"
kill Scorpid Worker##3124+
collect 8 Scorpid Worker Tail##4862 |q 25127/1 |goto Durotar 45.70,63.30
Click Cactus Apples
|tip They look like cactuses with red apples on them.
collect 6 Cactus Apple##11583 |q 25136/1 |goto Durotar 45.70,63.30
step
talk Hana'zua##3287
turnin Sarkoth##25129 |goto Durotar 40.60,62.60
accept Back to the Den##25130 |goto Durotar 40.60,62.60
step
talk Gornek##3143
turnin Sting of the Scorpid##25127 |goto Durotar 43.20,68.30
turnin Back to the Den##25130 |goto Durotar 43.20,68.30
step
talk Canaga Earthcaller##5887
accept Call of Earth##1516
only Orc Shaman
step
kill Felstalker##3102+
collect Felstalker Hoof##6640 |q 1516/1 |goto Durotar 45.30,56.10
only Orc Shaman
step
talk Canaga Earthcaller##5887
turnin Call of Earth##1516 |goto Durotar 42.40,69.20
accept Call of Earth##1517 |goto Durotar 42.40,69.20
only Orc Shaman
step
Use the Earth Sapta that was given to you |use Earth Sapta##6635
talk Minor Manifestation of Earth##5891
turnin Call of Earth##1517 |goto Durotar 44.10,76.50
accept Call of Earth##1518 |goto Durotar 44.10,76.50
only Orc Shaman
step
talk Canaga Earthcaller##5887
turnin Call of Earth##1518 |goto Durotar 42.40,69.20
only Orc Shaman
step
talk Canaga Earthcaller##5887
accept Hana'zua##25128 |goto Durotar 42.40,69.20
step
talk Galgar##9796
turnin Galgar's Cactus Apple Surprise##25136 |goto Durotar,42.70,67.20
step
talk Zureetha Fargaze##3145
accept Vile Familiars##25131 |goto Durotar,43.50,67.50
step
talk Foreman Thazz'ril##11378
accept Lazy Peons##25134 |goto Durotar,43.50,67.40
step
Use your Foreman's Blackjack on Lazy Peons along this mountainside |use Foreman's Blackjack##16114
|tip You may have to stand next to them and wait for them to go to sleep, if they are all chopping trees.
Waken 4 Peons |q 25134/1 |goto Durotar,45.60,66.00
step
kill 8 Vile Familiar |q 25131/1 |goto Durotar,45.50,57.90
step
talk Hana'zua##3287
turnin Hana'zua##25128 |goto Durotar 40.60,62.60
step
talk Foreman Thazz'ril##11378
turnin Lazy Peons##25134 |goto Durotar,43.50,67.40
step
talk Zureetha Fargaze##3145
turnin Vile Familiars##25131 |goto Durotar,43.50,67.50
accept Burning Blade Medallion##25132 |goto Durotar,43.50,67.50
step
talk Foreman Thazz'ril##11378
accept Thazz'ril's Pick##25135 |goto Durotar,43.50,67.40
step
Go inside the cave |goto Durotar,45.40,56.40,0.50 |c
stickystart "felstalk"
step
Kill Felstalkers as you walk
Click Thazz'ril's Pick
|tip It's a big mining pick, standing upright, with light shining down on it.
collect Thazz'ril's Pick##16332 |q 25135/1 |goto Durotar,43.70,53.80
step
kill Yarrog Baneshadow##3183
collect Burning Blade Medallion##4859 |q 25132/2 |goto Durotar,42.40,53.50
step
label "felstalk"
kill 7 Felstalker |q 25132/1 |goto Durotar,44.80,54.70
step
talk Foreman Thazz'ril##11378
turnin Thazz'ril's Pick##25135 |goto Durotar,43.50,67.40
step
talk Zureetha Fargaze##3145
turnin Burning Blade Medallion##25132 |goto Durotar,43.50,67.50
accept Report to Sen'jin Village##25133 |goto Durotar,43.50,67.50
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Required Home Cities Reputation\\Darkspear Trolls & Orgrimmar\\Orc & Troll",{
description="This guide will help you to get Exalted reputation with the Darkspear Trolls and Orgrimmar factions. You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.",
mounts={63640,63635},
},[[
step
talk Handler Marnlek##41142
fpath Sen'jin Village |goto Durotar,55.40,73.30
step
talk Master Gadrin##3188
turnin Report to Sen'jin Village##25133 |goto Durotar 56.00,74.70 |only Orc
turnin Sen'jin Village##25073 |goto Durotar 56.00,74.70 |only Troll
accept Breaking the Chain##25167 |goto Durotar 56.00,74.70
step
talk Bom'bay##10578
accept Cleaning Up the Coastline##25170 |goto Durotar 55.70,75.30
stickystart "northlug"
step
kill Surf Crawler##3107+
collect 5 Crawler Mucus##4888 |q 25170/1 |goto Durotar 55.40,79.30
step
label "northlug"
Destroy 3 Northwatch Supply Crates |q 25167/1 |goto Durotar 52.20,81.20
|tip They are huge wooden crates with big red + signs on them, being carried by Northwatch Lugs.
kill 10 Northwatch Lug |q 25167/2 |goto Durotar 52.20,81.20
step
talk Bom'bay##10578
turnin Cleaning Up the Coastline##25170 |goto Durotar 55.70,75.30
accept Never Trust a Big Barb and a Smile##25165 |goto Durotar 55.70,75.30
step
talk Master Gadrin##3188
turnin Breaking the Chain##25167 |goto Durotar 56.00,74.70
accept Purge the Valley##25168 |goto Durotar 56.00,74.70
step
talk Lar Prowltusk##3140
accept The War of Northwatch Aggression##25169 |goto Durotar 55.40,75.10
stickystart "northtroop"
step
Use your Poison Extraction Totem |use Poison Extraction Totem##52505
Fight Clattering Scorpions next to the Poison Extraction Totem
Collect 6 Samples of Scorpid Venom |q 25165/1 |goto Durotar 52.40,74.40
step
Enter the Northwatch Foothold here |goto Durotar,50.80,79.10,0.50 |c
step
Click the Attack Plan: Valley of Trials
|tip It looks like a piece of paper laying on the ground, next to a blue tent.
Burn the Attack Plan: Valley of Trials |q 25169/1 |goto Durotar 49.70,81.60
step
Click the Attack Plan: Sen'jin Village
|tip It looks like a piece of paper laying on a wooden crate, in between 2 white tents.
Burn the Attack Plan: Sen'jin Village |q 25169/2 |goto Durotar 47.90,77.50
step
Click the Attack Plan: Orgrimmar
|tip It looks like a piece of paper laying on the ground, under a bedm in a blue tent.
Burn the Attack Plan: Orgrimmar |q 25169/3 |goto Durotar 46.40,78.80
step
label "northtroop"
kill Northwatch Ranger##39261+, Northwatch Infantryman##39260+
kill 12 Northwatch Troop |q 25168/1 |goto Durotar 49.40,79.30
step
Leave the Northwatch Foothold here |goto Durotar,50.80,79.10,0.50 |c
step
talk Bom'bay##10578
turnin Never Trust a Big Barb and a Smile##25165 |goto Durotar 55.70,75.30
step
talk Lar Prowltusk##3140
turnin The War of Northwatch Aggression##25169 |goto Durotar 55.40,75.10
step
talk Master Gadrin##3188
turnin Purge the Valley##25168 |goto Durotar 56.00,74.70
accept Riding On##25171 |goto Durotar 56.00,74.70
step
talk Raider Jhash##10676 |goto Durotar 55.30,74.70
Ask him if you can catch a ride to Razor Hill
Ride to Razor Hill |goto Durotar,52.50,44.20,0.50 |noway |c |q 25171
step
talk Burok##41140
fpath Razor Hill |goto Durotar 53.10,43.60
step
talk Gar'Thok##3139
turnin Riding On##25171 |goto Durotar 51.90,43.50
accept From Bad to Worse##25173 |goto Durotar 51.90,43.50
step
talk Gail Nozzywig##39423
accept Exploiting the Situation##25176 |goto Durotar 53.10,43.10
step
talk Innkeeper Grosk##6928
home Razor Hill |goto Durotar 51.50,41.60
stickystart "kultreas"
step
Click Kul Tiras Treasures and get Kul Tiras Treasure
|tip They look like wooden chests on the ground around this area.
kill Lieutenant Palliter |q 25173/3 |goto Durotar 59.70,58.30
|tip He's in the top room of the fort.
step
label "kultreas"
kill 6 Northwatch Sharpshooter |q 25173/2 |goto Durotar 58.20,55.40
kill 6 Northwatch Marine |q 25173/1 |goto Durotar 58.20,55.40
Click Kul Tiras Treasures
|tip They look like wooden chests on the ground around this area.
collect 6 Kul Tiras Treasure##52558 |q 25176/1 |goto Durotar 58.20,55.40
step
talk Gar'Thok##3139
turnin From Bad to Worse##25173 |goto Durotar 51.90,43.50
accept Storming the Beaches##25177 |goto Durotar 51.90,43.50
step
talk Gail Nozzywig##39423
turnin Exploiting the Situation##25176 |goto Durotar 53.10,43.10
accept Shipwreck Searching##25178 |goto Durotar 53.10,43.10
step
kill 11 Foaming Sea Elemental |q 25177/1 |goto Durotar 58.00,46.20
Click Gnomish Toolboxes
|tip They look like small metal chests on the ground around this area.
collect 4 Gnomish Tools##4863 |q 25178/1 |goto Durotar 58.00,46.20
talk Injured Razor Hill Grunt##39270
accept Loss Reduction##25179 |goto Durotar 58.00,46.20
talk Injured Razor Hill Grunt##39270
Rescue 4 Injured Razor Hill Grunts |q 25179/1 |goto Durotar 58.00,46.20
step
talk Gail Nozzywig##39423
turnin Shipwreck Searching##25178 |goto Durotar 53.10,43.10
accept Thonk##25227 |goto Durotar 53.10,43.10
step
talk Gar'Thok##3139
turnin Storming the Beaches##25177 |goto Durotar 51.90,43.50
turnin Loss Reduction##25179 |goto Durotar 51.90,43.50
step
talk Orgnil Soulscar##3142
accept The Burning Blade##25232 |goto Durotar 52.20,43.20
step
talk Grimtak##3881
accept Meats to Orgrimmar##6365 |goto Durotar 50.70,42.80
only Troll,Orc
step
talk Burok##41140
turnin Meats to Orgrimmar##6365 |goto Durotar 53.10,43.60
accept Ride to Orgrimmar##6384 |goto Durotar 53.10,43.60
only Troll,Orc
step
talk Innkeeper Gryshka##6929
turnin Ride to Orgrimmar##6384 |goto Orgrimmar,53.60,78.80
accept Doras the Wind Rider Master##6385 |goto Orgrimmar,53.60,78.80
only Troll,Orc
step
talk Doras##3310
turnin Doras the Wind Rider Master##6385 |goto Orgrimmar 49.70,59.20
accept Return to Razor Hill##6386 |goto Orgrimmar 49.70,59.20
only Troll,Orc
step
talk Grimtak##3881
turnin Return to Razor Hill##6386 |goto Durotar,50.70,42.80
only Troll,Orc
step
talk Thonk##39323
turnin Thonk##25227 |goto Durotar 49.60,40.20
accept Lost in the Floods##25187 |goto Durotar 49.60,40.20
step
Use Thonk's Spyglass at the top of the tower |use Thonk's Spyglass##52514
|tip You will need to use Thonk's Spyglass 4 times.
Find Raggaran |q 25187/1 |goto Durotar 49.60,40.20
Find the flooded hut |q 25187/2 |goto Durotar 49.60,40.20
Find Misha |q 25187/3 |goto Durotar 49.60,40.20
Find Zen'Taji |q 25187/4 |goto Durotar 49.60,40.20
step
talk Thonk##39323
turnin Lost in the Floods##25187 |goto Durotar 49.60,40.20
accept Watershed Patrol##25188 |goto Durotar 49.60,40.20
step
talk Misha Tor'kren##3193
accept Lost But Not Forgotten##25193 |goto Durotar 43.40,30.60
step
kill Dreadmaw Toothgnasher##39452
collect 250 Durotar Crocolisk Tooth##60615 |q 25193/1 |goto Durotar 42.90,34.10
step
talk Misha Tor'kren##3193
turnin Lost But Not Forgotten##25193 |goto Durotar 43.40,30.60
Help Misha Tor'kren |q 25188/3 |goto Durotar 43.40,30.60
step
talk Grandmatron Tekla##39325
accept Spirits Be Praised##25189 |goto Durotar 40.60,35.00
Escort Grandmatron Tekla to Raggaran |q 25189/1 |goto Durotar 40.60,35.00
step
talk Raggaran##39326
turnin Spirits Be Praised##25189 |goto Durotar 42.70,49.90
accept Raggaran's Rage##25190 |goto Durotar 42.70,49.90
Help Grandmatron Tekla |q 25188/1 |goto Durotar 42.70,49.90
step
kill 4 Razormane Quilboar |q 25190/1 |goto Durotar 44.10,49.20
kill 4 Razormane Scout |q 25190/2 |goto Durotar 44.10,49.20
step
talk Raggaran##39326
turnin Raggaran's Rage##25190 |goto Durotar 42.70,49.90
accept Raggaran's Fury##25192 |goto Durotar 42.70,49.90
step
kill 5 Razormane Dustrunner |q 25192/1 |goto Durotar 38.10,55.30
kill 5 Razormane Battleguard |q 25192/2 |goto Durotar 38.10,55.30
step
talk Raggaran##39326
turnin Raggaran's Fury##25192 |goto Durotar 42.70,49.90
Help Raggaran |q 25188/2 |goto Durotar 42.70,49.90
step
talk Zen'Taji##39324
accept Unbidden Visitors##25194 |goto Durotar 35.80,41.40
step
Attack Wayward Plainstriders, but don't kill them
|tip You will find them spread out along the coastline.
Return 3 Wayward Plainstriders |q 25194/1 |goto Durotar 35.30,39.60
step
talk Zen'Taji##39324
turnin Unbidden Visitors##25194 |goto Durotar 35.80,41.40
accept That's the End of That Raptor##25195 |goto Durotar 35.80,41.40
step
kill Screamslash |q 25195/1 |goto Durotar 35.40,30.50
|tip He's a blue-ish raptor that walks around this area.
step
talk Zen'Taji##39324
turnin That's the End of That Raptor##25195 |goto Durotar 35.80,41.40
Help Zen'Taji |q 25188/4 |goto Durotar 35.80,41.40
step
talk Thonk##39323
turnin Watershed Patrol##25188 |goto Durotar 49.60,40.20
step
Follow the path to the right of the canyon.  Don't walk into the canyon heading north. |goto Durotar,53.10,40.50,0.50 |c
step
Enter the cave |goto Durotar,52.80,28.90 < 5 |walk
kill Burning Blade Thug##3195+, Burning Blade Neophyte##3196+, Burning Blade Cultist##3199+
collect 6 Burning Blade Spellscroll##52564 |q 25232/1 |goto Durotar 53.10,27.20
step
Leave the cave |goto Durotar,52.80,28.90 < 5 |walk
talk Orgnil Soulscar##3142
turnin The Burning Blade##25232 |goto Durotar 52.20,43.20
accept The Dranosh'ar Blockade##25196 |goto Durotar 52.20,43.20
step
talk Rezlak##3293
accept Winds in the Desert##834 |goto Durotar 46.40,22.90
accept Securing the Lines##835 |goto Durotar 46.40,22.90
step
kill Dustwind Harpy##3115+, Dustwind Pillager##3116+
kill 12 Durotar Harpy |q 835/1 |goto Durotar 49.30,21.70
Click Stolen Supply Sacks
|tip They look like small tan sacks on the ground around this area.
collect 5 Sack of Supplies##4918 |q 834/1 |goto Durotar 49.30,21.70
step
talk Rezlak##3293
turnin Winds in the Desert##834 |goto Durotar 46.40,22.90
turnin Securing the Lines##835 |goto Durotar 46.40,22.90
step
talk Gor the Enforcer##39379
turnin The Dranosh'ar Blockade##25196 |goto Durotar,45.00,14.80
accept Fizzled##25260 |goto Durotar,45.00,14.80
accept Thunder Down Under##25236 |goto Durotar,45.00,14.80
step
talk Shin Stonepillar##39380
accept The Wolf and The Kodo##25205 |goto Durotar,44.90,14.80
step
talk Shin Stonepillar##39380
Ask him to tell you his fable |havebuff Hunting##73841 |q 25205 |goto Durotar,44.90,14.80
step
As the wolf, run to this spot
|tip If you don't see 2 kodos fighting, look around this area to find some, then go stand next to them.
Listen to the shaman's fable |q 25205/1 |goto Durotar,53.00,13.80
step
talk Shin Stonepillar##39380
turnin The Wolf and The Kodo##25205 |goto Durotar,44.90,14.80
step
talk Gor the Enforcer##39379
accept Ignoring the Warnings##25206 |goto Durotar,45.00,14.80
stickystart "warringelem"
step
Click Drowned Thunder Lizards
|tip They are underwater, on the ground.
Remove 8 Drowned Thunder Lizards |q 25236/1 |goto Durotar,39.90,24.40
step
Click Fizzle Darkclaw's corpse
|tip It's floating underwater.
Attempt to remove the orb, then attempt to remove Fizzle's Hand
collect Fizzle's Orb##52580 |q 25260/1 |goto Durotar,42.10,26.70
step
label "warringelem"
kill Teeming Waterguard##39596+, Furious Earthguard##39595+
kill 12 Warring Elemental |q 25206/1 |goto Durotar,38.00,22.30
step
talk Gor the Enforcer##39379
turnin Fizzled##25260 |goto Durotar,45.00,14.80
accept Margoz##25261 |goto Durotar,45.00,14.80
turnin Thunder Down Under##25236 |goto Durotar,45.00,14.80
turnin Ignoring the Warnings##25206 |goto Durotar,45.00,14.80
accept Beyond Durotar##25648 |goto Durotar,45.00,14.80
step
talk Margoz##3208
turnin Margoz##25261 |goto Durotar,56.40,20.00
accept Skull Rock##25262 |goto Durotar,56.40,20.00
step
talk Vek'nag##39604
accept Sent for Help##25256 |goto Durotar,56.30,20.20
step
talk Spiketooth##39590
turnin Sent for Help##25256 |goto Durotar,58.80,23.20
accept Ghislania##25257 |goto Durotar,58.80,23.20
accept Griswold Hanniston##25258 |goto Durotar,58.80,23.20
accept Gaur Icehorn##25259 |goto Durotar,58.80,23.20
step
talk Griswold Hanniston##39353
Challenge him to combat
Defeat Griswold Hanniston |q 25258/1 |goto Durotar,59.00,22.20
step
talk Ghislania##39351
Challenge her to combat
Defeat Ghislania |q 25257/1 |goto Durotar,59.70,22.60
step
talk Gaur Icehorn##39352
Challenge him to combat
Defeat Gaur Icehorn |q 25259/1 |goto Durotar,59.40,23.50
step
talk Spiketooth##39590
turnin Ghislania##25257 |goto Durotar,58.80,23.20
turnin Griswold Hanniston##25258 |goto Durotar,58.80,23.20
turnin Gaur Icehorn##25259 |goto Durotar,58.80,23.20
step
kill Burning Blade Fanatic##3197+, Burning Blade Apprentice##3198+
collect 6 Searing Collar##4871 |q 25262/1 |goto Durotar,55.10,10.00
step
talk Margoz##3208
turnin Skull Rock##25262 |goto Durotar,56.40,20.00
accept Neeru Fireblade##25263 |goto Durotar,56.40,20.00
step
talk Gotura Fourwinds##35068
accept Preserving the Barrens##26642 |goto Orgrimmar,47.60,71.20
step
The path down to Neeru Fireblade starts here |goto Orgrimmar,45.90,66.90,0.50 |c
step
talk Neeru Fireblade##3216
turnin Neeru Fireblade##25263 |goto Orgrimmar 49.90,59.20
accept Ak'Zeloth##25264 |goto Orgrimmar 49.90,59.20
step
talk Takrin Pathseeker##3336
accept Conscript of the Horde##840 |goto Durotar,50.80,43.60
step
talk Kargal Battlescar##3337
turnin Preserving the Barrens##26642 |goto Northern Barrens,67.70,39.40
accept In Defense of Far Watch##871 |goto Northern Barrens,67.70,39.40
turnin Conscript of the Horde##840 |goto Northern Barrens,67.70,39.40
step
talk Halga Bloodeye##34258
accept Plainstrider Menace##844 |goto Northern Barrens,67.40,38.70
step
kill Greater Plainstrider##3244+
collect 7 Plainstrider Beak##5087 |q 844/1 |goto Northern Barrens,67.30,37.00
You can find more Greater Plainstriders at [64.60,41.30]
step
talk Halga Bloodeye##34258
turnin Plainstrider Menace##844 |goto Northern Barrens,67.40,38.70
step
talk Ak'Zeloth##3521
turnin Ak'Zeloth##25264 |goto Northern Barrens,67.80,40.60
step
talk Dorak##34284
accept Through Fire and Flames##13878 |goto Northern Barrens,67.10,45.50
stickystart "razorpluhun"
step
Click Wolf Chains
|tip They look like bone spikes attach to metal chains on the ground inside the burning stable.
Free 3 Wolves |q 13878/1 |goto Northern Barrens,66.60,47.30
step
label "razorpluhun"
kill 8 Razormane Plunderer |q 871/1 |goto Northern Barrens,66.80,49.80
kill 3 Razormane Hunter |q 871/2 |goto Northern Barrens,66.80,49.80
step
talk Dorak##34284
turnin Through Fire and Flames##13878 |goto Northern Barrens,67.10,45.50
step
talk Kargal Battlescar##3337
turnin In Defense of Far Watch##871 |goto Northern Barrens,67.70,39.40
accept The Far Watch Offensive##872 |goto Northern Barrens,67.70,39.40
step
talk Halga Bloodeye##34258
accept Supplies for the Crossroads##5041 |goto Northern Barrens,67.40,38.70
stickystart "xroadsupply"
step
Enter the cave |goto Northern Barrens,66.00,52.50 < 5 |walk
Follow the path in the cave until it dead ends on a small platform.
kill Kreenig Snarlsnout##3438
collect Kreenig Snarlsnout's Tusk##5063 |q 872/3 |goto Northern Barrens,64.30,55.00
step
label "xroadsupply"
kill 5 Razormane Thornweaver |q 872/1 |goto Northern Barrens,64.70,53.20
kill 5 Razormane Defender |q 872/2 |goto Northern Barrens,64.70,53.20
Click Crossroads Supply Crates
|tip They look like wooden crates on the ground inside the cave.
collect 5 Crossroads Supply Crate##12708 |q 5041/1 |goto Northern Barrens,64.70,53.20
step
Leave the cave |goto Northern Barrens,66.00,52.50 < 5 |walk
talk Kargal Battlescar##3337
turnin The Far Watch Offensive##872 |goto Northern Barrens,67.70,39.40
step
talk Halga Bloodeye##34258
turnin Supplies for the Crossroads##5041 |goto Northern Barrens,67.40,38.70
accept Crossroads Caravan Pickup##13949 |goto Northern Barrens,67.40,38.70
step
talk Halga Bloodeye##34258
Tell her you're ready
Click the Lead Caravan Kodo that walks up to ride on it
Use your Shoot ability to kill the quilboars that attack the caravan as you ride the kodo
|tip To kill them very easily, spam the 1 button on your hotbar and the Tab key on your keyboard together.
Escort the Caravan |q 13949/1 |goto Northern Barrens,67.40,38.70
step
talk Kranal Fiss##5907
turnin Crossroads Caravan Pickup##13949 |goto Northern Barrens,56.50,40.40
step
talk Rocco Whipshank##34578
accept Crossroads Caravan Delivery##13975 |goto Northern Barrens,54.60,41.50
step
talk Rocco Whipshank##34578
Tell him to bring it on
Click the Head Caravan Kodo that walks up to ride on it
Use your abilities on your hotbar on the Burning Blade mobs that attack you
|tip It's easier to just manually left click them Burning Blade mobs and spam the 1 button on your hotbar to shoot them all.  Don't bother with the melee attack at all.
Escort the Crossroads Caravan |q 13975/1 |goto Northern Barrens,54.60,41.50
step
talk Thork##3429
turnin Crossroads Caravan Delivery##13975 |goto Northern Barrens,48.70,59.60
step
map Orgrimmar
To continue gaining reputation with the Orgrimmar faction:
You can buy an Orgrimmar Tabard from Stoneguard Nargol in Orgrimmar at [50.00,58.50]
|tip Wear the Orgrimmar Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
To continue gaining reputation with the Darkspear Trolls faction:
You can buy a Darkspear Tabard from Champion Uru'zin in Orgrimmar at [50.00,58.50]
|tip Wear the Darkspear Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Required Home Cities Reputation\\Darkspear Trolls & Orgrimmar\\Troll",{
description="This guide will help you to get Exalted reputation with the Darkspear Trolls and Orgrimmar factions. You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.",
endlevel=5,
mounts={65644,63635},
},[[
step
You will not be able to do some of the quests in this section if you are not a Troll.
confirm
step
talk Jin'thala##37951
accept The Rise of the Darkspear##31159 |goto Echo Isles 42.80,53.41 |only Troll Monk
accept The Rise of the Darkspear##24776 |goto Echo Isles 42.80,53.41 |only Troll Hunter
accept The Rise of the Darkspear##24607 |goto Echo Isles 42.80,53.41 |only Troll Warrior
accept The Rise of the Darkspear##24770 |goto Echo Isles 42.80,53.41 |only Troll Rogue
accept The Rise of the Darkspear##24782 |goto Echo Isles 42.80,53.41 |only Troll Priest
accept The Rise of the Darkspear##24764 |goto Echo Isles 42.80,53.41 |only Troll Druid
accept The Rise of the Darkspear##26272 |goto Echo Isles 42.80,53.41 |only Troll Warlock
accept The Rise of the Darkspear##24750 |goto Echo Isles 42.80,53.41 |only Troll Mage
accept The Rise of the Darkspear##24758 |goto Echo Isles 42.80,53.41 |only Troll Shaman
step
talk Nekali##38242
turnin The Rise of the Darkspear##24758 |goto Echo Isles 49.90,52.71
accept The Basics: Hitting Things##24759 |goto Echo Isles 49.90,52.71
only Troll Shaman
step
talk Soratha##38246
turnin The Rise of the Darkspear##24750 |goto Echo Isles 59.70,52.11
accept The Basics: Hitting Things##24751 |goto Echo Isles 59.70,52.11
only Troll Mage
step
talk Voldreka##42618
turnin The Rise of the Darkspear##26272 |goto Echo Isles 50.00,50.01
accept The Basics: Hitting Things##26273 |goto Echo Isles 50.00,50.01
only Troll Warlock
step
talk Zen'tabra##38243
turnin The Rise of the Darkspear##24764 |goto Echo Isles 58.10,54.11
accept The Basics: Hitting Things##24765 |goto Echo Isles 58.10,54.11
only Troll Druid
step
talk Tunari##38245
turnin The Rise of the Darkspear##24782 |goto Echo Isles 58.10,49.11
accept The Basics: Hitting Things##24783 |goto Echo Isles 58.10,49.11
only Troll Priest
step
talk Legati##38244
turnin The Rise of the Darkspear##24770 |goto Echo Isles 52.90,49.91
accept The Basics: Hitting Things##24771 |goto Echo Isles 52.90,49.91
only Troll Rogue
step
talk Ortezza##38247
turnin The Rise of the Darkspear##24776 |goto Echo Isles 56.40,50.21
accept The Basics: Hitting Things##24777 |goto Echo Isles 56.40,50.21
only Troll Hunter
step
talk Nortet##38037
turnin The Rise of the Darkspear##24607 |goto Echo Isles 52.50,53.71
accept The Basics: Hitting Things##24639 |goto Echo Isles 52.50,53.71
only Troll Warrior
step
talk Zabrax##63310
turnin The Rise of the Darkspear##31159 |goto Echo Isles 52.60,51.80
accept The Basics: Hitting Things##31158 |goto Echo Isles 52.60,51.80
only Troll Monk
step
kill 6 Tiki Target##38038+ |q 24759/1 |goto Echo Isles 52.90,53.21
only Troll Shaman
step
kill 6 Tiki Target##38038+ |q 24771/1 |goto Echo Isles 52.90,53.21
only Troll Rogue
step
kill 6 Tiki Target##38038+ |q 24639/1 |goto Echo Isles 52.90,53.21
only Troll Warrior
step
kill 6 Tiki Target##38038+ |q 26273/1 |goto Echo Isles 52.90,53.21
only Troll Warlock
step
kill 6 Tiki Target##38038+ |q 24751/1 |goto Echo Isles 56.40,50.11
only Troll Mage
step
kill 6 Tiki Target##38038+ |q 24777/1 |goto Echo Isles 56.40,50.11
only Troll Hunter
step
kill 6 Tiki Target##38038+ |q 24765/1 |goto Echo Isles 58.80,54.10
only Troll Druid
step
kill 6 Tiki Target##38038+ |q 24783/1 |goto Echo Isles 56.40,50.11
only Troll Priest
step
kill 6 Tiki Target##38038+ |q 31158/1 |goto Echo Isles 52.70,51.20
only Troll Monk
step
talk Nekali##38242
turnin The Basics: Hitting Things##24759 |goto Echo Isles 49.90,52.71
accept A Rough Start##24761 |goto Echo Isles 49.90,52.71
only Troll Shaman
step
talk Soratha##38246
turnin The Basics: Hitting Things##24751 |goto Echo Isles 59.70,52.11
accept A Rough Start##24753 |goto Echo Isles 59.70,52.11
only Troll Mage
step
talk Voldreka##42618
turnin The Basics: Hitting Things##26273 |goto Echo Isles 50.10,50.01
accept A Rough Start##26275 |goto Echo Isles 50.10,50.01
only Troll Warlock
step
talk Zen'tabra##38243
turnin The Basics: Hitting Things##24765 |goto Echo Isles 58.10,54.11
accept A Rough Start##24767 |goto Echo Isles 58.10,54.11
only Troll Druid
step
talk Tunari##38245
turnin The Basics: Hitting Things##24783 |goto Echo Isles 58.10,49.11
accept A Rough Start##24785 |goto Echo Isles 58.10,49.11
only Troll Priest
step
talk Legati##38244
turnin The Basics: Hitting Things##24771 |goto Echo Isles 52.90,49.91
accept A Rough Start##24773 |goto Echo Isles 52.90,49.91
only Troll Rogue
step
talk Ortezza##38247
turnin The Basics: Hitting Things##24777 |goto Echo Isles 56.40,50.11
accept A Rough Start##24779 |goto Echo Isles 56.40,50.11
only Troll Hunter
step
talk Nortet##38037
turnin The Basics: Hitting Things##24639 |goto Echo Isles 52.60,53.61
accept A Rough Start##24641 |goto Echo Isles 52.60,53.61
only Troll Warrior
step
talk Zabrax##63310
turnin The Basics: Hitting Things##31158 |goto Echo Isles 52.60,51.80
accept A Rough Start##31160 |goto Echo Isles 52.60,51.80
only Troll Monk
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24767/1 |goto Echo Isles 56.70,45.11
only Troll Druid
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24785/1 |goto Echo Isles 56.70,45.11
only Troll Priest
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24753/1 |goto Echo Isles 56.70,45.11
only Troll Mage
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24779/1 |goto Echo Isles 56.70,45.11
only Troll Hunter
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24761/1 |goto Echo Isles 47.90,49.31
only Troll Shaman
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24641/1 |goto Echo Isles 47.90,49.31
only Troll Warrior
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 26275/1 |goto Echo Isles 47.90,49.31
only Troll Warlock
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24773/1 |goto Echo Isles 47.90,49.31
only Troll Rogue
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 31160/1 |goto Echo Isles 46.50,52.90
only Troll Monk
step
talk Nekali##38242
turnin A Rough Start##24761 |goto Echo Isles 50.10,52.81
accept Proving Pit##24762 |goto Echo Isles 50.10,52.81
only Troll Shaman
step
talk Soratha##38246
turnin A Rough Start##24753 |goto Echo Isles 59.70,52.11
accept Proving Pit##24754 |goto Echo Isles 59.70,52.11
only Troll Mage
step
talk Voldreka##42618
turnin A Rough Start##26275 |goto Echo Isles 50.10,50.01
accept Proving Pit##26276 |goto Echo Isles 50.10,50.01
only Troll Warlock
step
talk Zen'tabra##38243
turnin A Rough Start##24767 |goto Echo Isles 58.10,54.11
accept Proving Pit##24768 |goto Echo Isles 58.10,54.11
only Troll Druid
step
talk Tunari##38245
turnin A Rough Start##24785 |goto Echo Isles 58.10,49.11
accept Proving Pit##24786 |goto Echo Isles 58.10,49.11
only Troll Priest
step
talk Legati##38244
turnin A Rough Start##24773 |goto Echo Isles 52.90,49.91
accept Proving Pit##24774 |goto Echo Isles 52.90,49.91
only Troll Rogue
step
talk Ortezza##38247
turnin A Rough Start##24779 |goto Echo Isles 56.40,50.11
accept Proving Pit##24780 |goto Echo Isles 56.40,50.11
only Troll Hunter
step
talk Nortet##38037
turnin A Rough Start##24641 |goto Echo Isles 52.60,53.61
accept Proving Pit##24642 |goto Echo Isles 52.60,53.61
only Troll Warrior
step
talk Zabrax##63310
turnin A Rough Start##31160 |goto Echo Isles 52.60,51.80
accept Proving Pit##31161 |goto Echo Isles 52.60,51.80
only Troll Monk
step
talk Darkspear Jailor##39062
Tell him you are ready to face your challenge |q 26276/1 |goto Echo Isles 57.60,52.71
kill Captive Spitescale Scout##38142+ |q 24754/2 |goto Echo Isles 57.60,52.71
only Troll Mage
step
talk Darkspear Jailor##39062
Tell him you are ready to face your challenge |q 24768/1 |goto Echo Isles 57.60,52.71
kill Captive Spitescale Scout##38142+ |q 24768/2 |goto Echo Isles 57.60,52.71
only Troll Druid
step
talk Darkspear Jailor##39062
Tell him you are ready to face your challenge |q 24786/1 |goto Echo Isles 57.60,52.71
kill Captive Spitescale Scout##38142+ |q 24786/2 |goto Echo Isles 57.60,52.71
only Troll Priest
step
talk Darkspear Jailor##39062
Tell him you are ready to face your challenge |q 24780/1 |goto Echo Isles 57.60,52.71
kill Captive Spitescale Scout##38142+ |q 24780/2 |goto Echo Isles 57.60,52.71
only Troll Hunter
step
talk Darkspear Jailor##39062
Tell him you are ready to face your challenge |q 24774/1 |goto Echo Isles 57.60,52.71
kill Captive Spitescale Scout##38142+ |q 24774/2 |goto Echo Isles 57.60,52.71
only Troll Rogue
step
talk Darkspear Jailor##39062
Tell him you are ready to face your challenge |q 24642/1 |goto Echo Isles 57.60,52.71
kill Captive Spitescale Scout##38142+ |q 24642/2 |goto Echo Isles 57.60,52.71
only Troll Warrior
step
talk Darkspear Jailor##39062
Tell him you are ready to face your challenge |q 26276/1 |goto Echo Isles 57.60,52.71
kill Captive Spitescale Scout##38142+ |q 26276/2 |goto Echo Isles 57.60,52.71
only Troll Warlock
step
talk Darkspear Jailor##39062
Tell him you are ready to face your challenge |q 24762/1 |goto Echo Isles 57.60,52.71
kill Captive Spitescale Scout##38142+ |q 24762/2 |goto Echo Isles 57.60,52.71
only Troll Shaman
step
talk Darkspear Jailor##39062
Tell him you are ready to face your challenge |q 31161/1 |goto Echo Isles 57.60,52.71
kill Captive Spitescale Scout##38142+ |q 31161/2 |goto Echo Isles 57.60,52.71
only Troll Monk
step
talk Nekali##38242
turnin Proving Pit##24762 |goto Echo Isles 50.10,52.81
only Troll Shaman
step
talk Soratha##38246
turnin Proving Pit##24754 |goto Echo Isles 59.70,52.11
accept The Arts of a Mage##24752 |goto Echo Isles 59.70,52.11
only Troll Mage
step
talk Voldreka##42618
turnin Proving Pit##26276 |goto Echo Isles 50.10,50.01
only Troll Warlock
step
talk Zen'tabra##38243
turnin Proving Pit##24768 |goto Echo Isles 58.10,54.11
only Troll Druid
step
talk Tunari##38245
turnin Proving Pit##24786 |goto Echo Isles 58.10,49.11
only Troll Priest
step
talk Legati##38244
turnin Proving Pit##24774 |goto Echo Isles 52.90,49.91
only Troll Rogue
step
talk Ortezza##38247
turnin Proving Pit##24780 |goto Echo Isles 56.40,50.11
only Troll Hunter
step
talk Nortet##38037
turnin Proving Pit##24642 |goto Echo Isles 52.60,53.61
only Troll Warrior
step
talk Zabrax##63310
turnin Proving Pit##31161 |goto Echo Isles 52.00,52.00
only Troll Monk
step
talk Nekali##38242
accept More Than Expected##24763 |goto Echo Isles 50.10,52.81
only Troll Shaman
step
Use Frost Nova on the Training Dummies.
Practice casting Frost Nova 2 times |q 24752/1 |goto Echo Isles 60.90,52.61
only Troll Mage
step
talk Soratha##38246
turnin The Arts of a Mage##24752 |goto Echo Isles 59.70,52.11
accept More Than Expected##24755 |goto Echo Isles 59.70,52.11
only Troll Mage
step
talk Voldreka##42618
accept More Than Expected##26277 |goto Echo Isles 50.10,50.01
only Troll Warlock
step
talk Zen'tabra##38243
accept More Than Expected##24769 |goto Echo Isles 58.10,54.11
only Troll Druid
step
talk Tunari##38245
accept More Than Expected##24787 |goto Echo Isles 58.10,49.11
only Troll Priest
step
talk Legati##38244
accept More Than Expected##24775 |goto Echo Isles 52.90,49.91
only Troll Rogue
step
talk Ortezza##38247
accept More Than Expected##24781 |goto Echo Isles 56.40,50.11
only Troll Hunter
step
talk Nortet##38037
accept More Than Expected##24643 |goto Echo Isles 52.60,53.61
only Troll Warrior
step
talk Zabrax##63310
accept More Than Expected##31163 |goto Echo Isles 52.00,52.00
only Troll Monk
step
talk Vol'jin##38966
turnin More Than Expected##24781 |goto Echo Isles 61.50,65.91 |only Troll Hunter
turnin More Than Expected##24643 |goto Echo Isles 61.50,65.91 |only Troll Warrior
turnin More Than Expected##24775 |goto Echo Isles 61.50,65.91 |only Troll Rogue
turnin More Than Expected##24787 |goto Echo Isles 61.50,65.91 |only Troll Priest
turnin More Than Expected##24769 |goto Echo Isles 61.50,65.91 |only Troll Druid
turnin More Than Expected##26277 |goto Echo Isles 61.50,65.91 |only Troll Warlock
turnin More Than Expected##24755 |goto Echo Isles 61.50,65.91 |only Troll Mage
turnin More Than Expected##24763 |goto Echo Isles 61.50,65.91 |only Troll Shaman
turnin More Than Expected##31163 |goto Echo Isles 61.50,65.91 |only Troll Monk
accept Moraya##25064 |goto Echo Isles 61.50,65.91
step
talk Tora'jin##39007
accept Crab Fishin'##25037 |goto Echo Isles 60.50,62.91
step
kill Pygmy Surf Crawler##39004+
collect 5 Fresh Crawler Meat##52080 |q 25037/1 |goto Echo Isles 66.00,55.81
step
talk Tora'jin##39007
turnin Crab Fishin'##25037 |goto Echo Isles 60.50,62.91
step
talk Moraya##38005
turnin Moraya##25064 |goto Echo Isles 56.80,63.71
accept A Troll's Truest Companion##24622 |goto Echo Isles 56.80,63.71
step
talk Kijara##37969
turnin A Troll's Truest Companion##24622 |goto Echo Isles 45.50,85.21
accept Saving the Young##24623 |goto Echo Isles 45.50,85.21
step
talk Tegashi##37987
accept Mercy for the Lost##24624 |goto Echo Isles 45.70,84.91
accept Consort of the Sea Witch##24625 |goto Echo Isles 45.70,84.91
stickystart "bloodhatch"
step
kill Naj'tess##39072
collect Naj'tess' Orb of Corruption##50018 |q 24625/1 |goto Echo Isles 36.80,69.01
step
label "bloodhatch"
kill 8 Corrupted Bloodtalon##37961+ |q 24624/1 |goto Echo Isles 36.80,69.01
Use your Bloodtalon Whistle near Lost Bloodtalon Hatchlings |use Bloodtalon Whistle##52283
|tip They look like tiny red raptors around this area.
Rescue 12 Bloodtalon Hatchlings |q 24623/1 |goto Echo Isles 36.80,69.01
step
talk Kijara##37969
turnin Saving the Young##24623 |goto Echo Isles 45.50,85.21
step
talk Tegashi##37987
turnin Mercy for the Lost##24624 |goto Echo Isles 45.70,84.91
turnin Consort of the Sea Witch##24625 |goto Echo Isles 45.70,84.91
step
talk Kijara##37969
accept Young and Vicious##24626 |goto Echo Isles 45.50,85.21
step
Use your Bloodtalon Lasso on Swiftclaw |use Bloodtalon Lasso##50053
|tip Swiftclaw is a dark colored raptor that runs really fast around this area, so you may need to search for him.
Capture Swiftclaw |q 24626/1 |goto Echo Isles 42.90,84.61
step
Run to this spot while riding Swiftclaw
Return Swiftclaw to the Raptor Pens |q 24626/2 |goto Echo Isles 52.90,65.31
step
talk Moraya##38005
turnin Young and Vicious##24626 |goto Echo Isles 56.80,63.71
step
talk Tortunga##38440
accept Breaking the Line##25035 |goto Echo Isles 59.00,66.70
step
talk Jornun##38989 |goto Echo Isles 59.00,66.81
Ask him if he has a raptor that can take you there |goto Echo Isles 59.00,23.10 |noway |c |q 25035
step
talk Morakki##38442
turnin Breaking the Line##25035 |goto Echo Isles 59.00,23.11
accept No More Mercy##24812 |goto Echo Isles 59.00,23.11
accept Territorial Fetish##24813 |goto Echo Isles 59.00,23.11
step
kill Spitescale Wavethrasher##38300+, Spitescale Siren##38301+ |q 24812/1 |goto Echo Isles/9 66.30,60.50
Use your Territorial Fetish next to Spitescale Flags |use Territorial Fetish##52065
|tip They look like red penant flags on blue-ish tridents stuck in the ground all around inside this cave.
Place 8 Territorial Fetishes |q 24813/1 |goto Echo Isles/9 66.30,60.50
step
talk Morakki##38442
turnin No More Mercy##24812 |goto Echo Isles 59.00,23.11
turnin Territorial Fetish##24813 |goto Echo Isles 59.00,23.11
accept An Ancient Enemy##24814 |goto Echo Isles 59.00,23.11
step
talk Vol'jin##10540
|tip Follow the path around the island to find him, don't go inside the cave.
Tell him you are ready |q 24814/1 |goto Echo Isles 62.20,18.01
Help Vol'jin fight Zat'jira and click the 3 braziers behind Zar'jira when the message displays on the screen telling you to stamp them out.
kill Zar'jira##38306 |q 24814/2 |goto Echo Isles 62.20,18.01
step
talk Vanira##39027 |goto Echo Isles 60.20,15.81
Ask her to take you back to Darkspear Hold
goto Echo Isles 68.20,87.80 |noway |c
step
talk Vol'jin##10540
turnin An Ancient Enemy##24814 |goto Echo Isles 61.60,65.91
accept Sen'jin Village##25073 |goto Echo Isles 61.60,65.91
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Required Home Cities Reputation\\Undercity\\Undead",{
description="This guide will help you to get Exalted reputation with the Undercity faction. You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.",
mounts={63643},
},[[
step
You will not be able to do some of the quests in this section if you are not an Undead.
confirm
step
talk Agatha##49044
accept Fresh out of the Grave##24959 |goto Tirisfal Glades,29.40,71.00
step
talk Undertaker Mordo##1568
turnin Fresh out of the Grave##24959 |goto Tirisfal Glades 30.10,71.30
accept The Shadow Grave##28608 |goto Tirisfal Glades 30.10,71.30
step
Darnell will spawn and greet you.  Lead him into the crypt.
Click the Thick Embalming Fluid
|tip It looks like a glass ball on the wooden table with green liquid in it.
collect Thick Embalming Fluid##64582 |q 28608/1 |goto Tirisfal Glades 29.70,72.00
Click the Corpse-Stitching Twine
|tip It looks like a spool of red thread on the wooden table.
collect Corpse-Stitching Twine##64581 |q 28608/2 |goto Tirisfal Glades 29.70,72.00
step
talk Undertaker Mordo##1568
turnin The Shadow Grave##28608 |goto Tirisfal Glades 30.10,71.30
accept Those That Couldn't Be Saved##26799 |goto Tirisfal Glades 30.10,71.30
step
talk Caretaker Caice##2307
accept The Wakening##24960 |goto Tirisfal Glades 30.70,71.40
stickystart "mindzomb"
step
talk Valdred Moray##49231
Tell him he died
Speak with Valdred Moray |q 24960/3 |goto Tirisfal Glades 29.40,69.60
step
talk Lilian Voss##38895
Tell her you want to speak with her
Speak with Lilian Voss |q 24960/1 |goto Tirisfal Glades 30.30,69.00
step
talk Marshal Redpath##49230
I'm not here to fight
Speak with Marshal Redpath |q 24960/2 |goto Tirisfal Glades 30.80,69.20
step
label "mindzomb"
kill 6 Mindless Zombie |q 26799/1 |goto Tirisfal Glades 30.20,69.80
step
talk Undertaker Mordo##1568
turnin Those That Couldn't Be Saved##26799 |goto Tirisfal Glades 30.10,71.30
step
talk Caretaker Caice##2307
turnin The Wakening##24960 |goto Tirisfal Glades 30.60,71.40
accept Beyond the Graves##25089 |goto Tirisfal Glades 30.60,71.40
step
talk Deathguard Saltain##1740
turnin Beyond the Graves##25089 |goto Tirisfal Glades 31.60,65.60
accept Recruitment##26800 |goto Tirisfal Glades 31.60,65.60
step
talk Shadow Priest Sarvis##1569
accept Scourge on our Perimeter##26801 |goto Tirisfal Glades 30.80,66.20
step
kill Rattlecage Skeleton##1890+, Wretched Ghoul##1502+
kill 8 Deathknell Scourge |q 26801/1 |goto Tirisfal Glades 32.20,62.70
Click Scarlet Corpses
|tip They look like dead humans laying on the ground around this area.
Gather 6 Scarlet Corpses |q 26800/1 |goto Tirisfal Glades 32.20,62.70
step
talk Deathguard Saltain##1740
turnin Recruitment##26800 |goto Tirisfal Glades 31.60,65.60
step
talk Shadow Priest Sarvis##1569
turnin Scourge on our Perimeter##26801 |goto Tirisfal Glades 30.80,66.20
step
talk Novice Elreth##1661
accept The Truth of the Grave##24961 |goto Tirisfal Glades 30.90,66.00
step
talk Isabella##2124
accept Magic Training##24965 |goto Tirisfal Glades 30.90,66.10
only Scourge Mage
step
talk Isabella##2124
Learn Arcane Missiles |q 24965/2 |goto Tirisfal Glades 30.90,66.10
only Scourge Mage
step
Cast Arcane Missiles ability on the Training Dummies
Practice Arcane Missiles 2 times |q 24965/1 |goto Tirisfal Glades 31.70,66.50
only Scourge Mage
step
talk Isabella##2124
turnin Magic Training##24965 |goto Tirisfal Glades 30.90,66.10
only Scourge Mage
step
talk Lilian Voss##38910
Tell her she's not hideous
Show Lilian her reflection |q 24961/1 |goto Tirisfal Glades 32.70,65.80
She can also be found on the upper level of the building at the same coordinate.
step
talk Novice Elreth##1661
turnin The Truth of the Grave##24961 |goto Tirisfal Glades 30.90,66.00
accept The Executor In the Field##28672 |goto Tirisfal Glades 30.90,66.00
step
talk Executor Arren##1570
turnin The Executor In the Field##28672 |goto Tirisfal Glades 33.00,61.10
accept The Damned##26802 |goto Tirisfal Glades 33.00,61.10
step
kill Young Scavenger##1508+, Ragged Scavenger##1509+
collect 4 Scavenger Paw##3265 |q 26802/1 |goto Tirisfal Glades 34.00,59.30
kill Duskbat##1512+, Mangy Duskbat##1513+
collect 4 Duskbat Wing##3264 |q 26802/2 |goto Tirisfal Glades 34.00,59.30
step
talk Executor Arren##1570
turnin The Damned##26802 |goto Tirisfal Glades 33.00,61.10
accept Night Web's Hollow##24973 |goto Tirisfal Glades 33.00,61.10
step
kill 8 Young Night Web Spider |q 24973/1 |goto Tirisfal Glades 29.70,59.00
step
kill 5 Night Web Spider |q 24973/2 |goto Tirisfal Glades 26.80,59.40
step
talk Executor Arren##1570
turnin Night Web's Hollow##24973 |goto Tirisfal Glades 33.00,61.10
accept Beat Them, Then Eat Them##24970 |goto Tirisfal Glades 33.00,61.10
step
talk Darnell##49425
turnin No Better Than the Zombies##24970 |goto Tirisfal Glades 35.80,62.20
accept Assault on the Rotbrain Encampment##24971 |goto Tirisfal Glades 35.80,62.20
stickystart "rotun"
step
kill Marshal Redpath |q 24971/1 |goto Tirisfal Glades 36.40,68.80
step
label "rotun"
kill 8 Rotbrain Undead |q 24971/2 |goto Tirisfal Glades 37.70,67.30
step
talk Shadow Priest Sarvis##1569
turnin Assault on the Rotbrain Encampment##24971 |goto Tirisfal Glades 30.80,66.20
accept Vital Intelligence##24972 |goto Tirisfal Glades 30.80,66.20
step
talk Deathguard Simmer##1519
turnin Vital Intelligence##24972 |goto Tirisfal Glades 44.80,53.70
accept Reaping the Reapers##24978 |goto Tirisfal Glades 44.80,53.70
step
talk Apothecary Johaan##1518
accept Fields of Grief##24975 |goto Tirisfal Glades 44.60,53.80
step
talk Sedrick Calston##38925
accept Ever So Lonely##24974 |goto Tirisfal Glades 44.80,53.70
step
kill Tirisfal Farmer##1934+, Tirisfal Farmhand##1935+
kill 10 Tirisfal Farmer |q 24978/1 |goto Tirisfal Glades 37.30,50.50
Click Tirisfal Pumpkins
|tip They look like big pumpkins around this area.
collect 10 Tirisfal Pumpkin##2846 |q 24975/1 |goto Tirisfal Glades 37.30,50.50
There will be more Pumpkins and farmers around 35.40,51.40
step
Fight a Vile Fin murloc
Use your Murloc Leash on the Vile Fin murloc when it is weak |use Murloc Leash##52059
|tip You will see a message in your chat box letting you know when the Vile Fin murloc is ready to be captured.  Make sure you capture it before you kill it.
Capture a Vile Fin |q 24974/1 |goto Tirisfal Glades 36.20,44.20
step
talk Deathguard Simmer##1519
turnin Reaping the Reapers##24978 |goto Tirisfal Glades 44.80,53.70
accept The Scarlet Palisade##24980 |goto Tirisfal Glades 44.80,53.70
step
talk Apothecary Johaan##1518
turnin Fields of Grief##24975 |goto Tirisfal Glades 44.60,53.80
accept Variety is the Spice of Death##24976 |goto Tirisfal Glades 44.60,53.80
step
Stand on the bed
Return the Vile Fine |q 24974/2 |goto Tirisfal Glades 44.80,53.70
|tip The murloc has to get close to the bed in order for you to return it to Sedrick Calston.
step
talk Sedrick Calston##38925
turnin Ever So Lonely##24974 |goto Tirisfal Glades 44.80,53.70
step
Click Marrowpetal Stalks
|tip They look like red flowers underwater around this area.
collect 4 Marrowpetal##52067 |q 24976/1 |goto Tirisfal Glades 49.20,55.00
step
Click Xavren's Thorn
|tip They look like tiny plants around this area.
collect 4 Xavren's Thorn##52066 |q 24976/2 |goto Tirisfal Glades 40.00,38.70
step
Click Briny Sea Cucumbers
|tip They look like small yellow and pink grubs underwater around this area.
collect 8 Briny Sea Cucumber##52068 |q 24976/3 |goto Tirisfal Glades 35.30,41.60
stickystart "scarwar"
step
kill Scarlet Warrior##1535+
collect A Scarlet Letter##52079 |n
Click A Scarlet Letter in your bags |use A Scarlet Letter##52079
accept A Scarlet Letter##24979 |goto Tirisfal Glades 32.50,47.40
step
talk Lilian Voss##38999
Tell her you're here to rescue her
Find the Scarlet Prisoner |q 24979/1 |goto Tirisfal Glades 31.70,46.30
step
label "scarwar"
kill 10 Scarlet Warrior |q 24980/1 |goto Tirisfal Glades 32.50,47.40
step
talk Deathguard Simmer##1519
turnin The Scarlet Palisade##24980 |goto Tirisfal Glades 44.80,53.70
turnin A Scarlet Letter##24979 |goto Tirisfal Glades 44.80,53.70
step
talk Apothecary Johaan##1518
turnin Variety is the Spice of Death##24976 |goto Tirisfal Glades 44.60,53.80
accept Johaan's Experiment##24977 |goto Tirisfal Glades 44.60,53.80
step
talk Captured Scarlet Zealot##1931
turnin Johaan's Experiment##24977 |goto Tirisfal Glades 44.70,52.60
step
talk Gordo##10666
accept Gordo's Task##25038 |goto Tirisfal Glades 44.10,53.90
step
Click Gloom Weeds
|tip They look like small purple plants on the ground around this area.  Gather them as you follow the road east.
collect 3 Gloom Weed##12737 |q 25038/1 |goto Tirisfal Glades 47.10,56.50
More can be found at [46.10,60.60]
step
talk Deathguard Dillinger##1496
accept A Putrid Task##25090 |goto Tirisfal Glades 52.50,54.80
accept The New Forsaken##24982 |goto Tirisfal Glades 52.50,54.80
step
kill Ravaged Corpse##1526+, Rotting Dead##1525+
collect 7 Putrid Claw##2855 |q 25090/1 |goto Tirisfal Glades 52.20,56.40
step
talk Deathguard Dillinger##1496
turnin A Putrid Task##25090 |goto Tirisfal Glades 52.50,54.80
step
talk Anette Williams##43124
fpath Brill |goto Tirisfal Glades 58.80,51.90
step
talk Junior Apothecary Holland##10665
turnin Gordo's Task##25038 |goto Tirisfal Glades 60.10,52.70
accept Darkhound Pounding##24990 |goto Tirisfal Glades 60.10,52.70
step
talk Executor Zygand##1515
accept A Thorn in our Side##24981 |goto Tirisfal Glades 60.50,51.90
step
talk Innkeeper Renee##5688
home Brill |goto Tirisfal Glades 60.90,51.50
step
talk Magistrate Sevren##1499
turnin The New Forsaken##24982 |goto Tirisfal Glades 61.00,50.40
accept Forsaken Duties##24983 |goto Tirisfal Glades 61.00,50.40
step
kill Cursed Darkhound##1548+
collect 5 Darkhound Blood##2858 |q 24990/1 |goto Tirisfal Glades 58.80,60.20
A Worgen will appear and give you a quest when you kill a Cursed Darkhound
accept Escaped From Gilneas##24992 |goto Tirisfal Glades 58.80,60.20
More hounds can be found around 53.90,66.70
step
kill 3 Scarlet Zealot |q 24981/1 |goto Tirisfal Glades 53.00,66.10
kill 3 Scarlet Missionary |q 24981/2 |goto Tirisfal Glades 53.00,66.10
collect Urgent Scarlet Memorandum##52077 |q 24981/3 |goto Tirisfal Glades 53.00,66.10
step
talk Executor Zygand##1515
turnin A Thorn in our Side##24981 |goto Tirisfal Glades 60.50,51.90
turnin Escaped From Gilneas##24992 |goto Tirisfal Glades 60.50,51.90
accept Annihilate the Worgen##24993 |goto Tirisfal Glades 60.50,51.90
step
talk Junior Apothecary Holland##10665
turnin Darkhound Pounding##24990 |goto Tirisfal Glades 60.10,52.70
accept Holland's Experiment##24996 |goto Tirisfal Glades 60.10,52.70
step
talk Captured Mountaineer##2211
turnin Holland's Experiment##24996 |goto Tirisfal Glades 60.00,52.90
step
talk Junior Apothecary Holland##10665
accept Garren's Haunt##24991 |goto Tirisfal Glades 59.80,53.20
step
talk Deathguard Morris##1745
accept Supplying Brill##6321 |goto Tirisfal Glades 60.10,52.40
only Scourge
step
talk Anette Williams##43124
turnin Supplying Brill##6321 |goto Tirisfal Glades 58.80,51.90
accept Ride to the Undercity##6323 |goto Tirisfal Glades 58.80,51.90
only Scourge
step
talk Gordon Wendham##4556
turnin Ride to the Undercity##6323 |goto Undercity,61.50,41.80
accept Michael Garrett##6322 |goto Undercity,61.50,41.80
only Scourge
step
talk Michael Garrett##4551
turnin Michael Garrett##6322 |goto Undercity,63.30,48.50
accept Return to Morris##6324 |goto Undercity,63.30,48.50
only Scourge
step
talk Deathguard Morris##1745
turnin Return to Morris##6324 |goto Tirisfal Glades,60.10,52.40
only Scourge
step
kill 5 Worgen Infiltrator |q 24993/1 |goto Tirisfal Glades 60.30,52.00
|tip They walk stealthed around this area. Look for little puffs of dust moving along the ground to spot them easily.
step
talk Executor Zygand##1515
turnin Annihilate the Worgen##24993 |goto Tirisfal Glades 60.50,51.90
step
talk Deathguard Linnea##1495
turnin Forsaken Duties##24983 |goto Tirisfal Glades 65.50,60.30
step
talk Gretchen Dedmar##1521
accept The Chill of Death##24988 |goto Tirisfal Glades 65.20,60.40
step
kill Greater Duskbat##1553+, Vampiric Duskbat##1554+
collect 5 Duskbat Pelt##2876 |q 24988/1 |goto Tirisfal Glades 66.90,54.90
step
talk Gretchen Dedmar##1521
turnin The Chill of Death##24988 |goto Tirisfal Glades 65.20,60.40
step
talk Deathguard Linnea##1495
accept Return to the Magistrate##24989 |goto Tirisfal Glades 65.50,60.20
step
talk Magistrate Sevren##1499
turnin Return to the Magistrate##24989 |goto Tirisfal Glades 61.00,50.40
step
talk Apothecary Jerrod##38977
turnin Garren's Haunt##24991 |goto Tirisfal Glades 61.70,34.60
accept Doom Weed##24994 |goto Tirisfal Glades 61.70,34.60
step
talk Apprentice Crispin##38978
accept Graverobbers##24997 |goto Tirisfal Glades 61.60,34.40
stickystart "embalichor"
step
kill 8 Rot Hide Graverobber |q 24997/1 |goto Tirisfal Glades 56.70,41.40
Click Doom Weeds
|tip They look like small purple plants around this area.
collect 10 Doom Weed##13702 |q 24994/1 |goto Tirisfal Glades 56.70,41.40
step
label "embalichor"
kill Rot Hide Mongrel##1675+, Rot Hide Gnoll##1674+
kill 5 Rot Hide Mongrel |q 24997/2 |goto Tirisfal Glades 59.50,38.80
collect 6 Embalming Ichor##2834 |q 24997/3 |goto Tirisfal Glades 59.50,38.80
step
talk Apothecary Jerrod##38977
turnin Doom Weed##24994 |goto Tirisfal Glades 61.70,34.60
accept Off the Scales##24995 |goto Tirisfal Glades 61.70,34.60
step
talk Apprentice Crispin##38978
turnin Graverobbers##24997 |goto Tirisfal Glades 61.60,34.40
accept Maggot Eye##24998 |goto Tirisfal Glades 61.60,34.40
accept Planting the Seed of Fear##24999 |goto Tirisfal Glades 61.60,34.40
stickystart "vilefin"
step
kill Maggot Eye##1753
collect Maggot Eye's Paw##3635 |q 24998/1 |goto Tirisfal Glades 58.70,30.70
step
label "vilefin"
kill Vile Fin Puddlejumper##1543+, Vile Fin Minor Oracle##1544+
collect 5 Vile Fin Scale##2859 |q 24995/1 |goto Tirisfal Glades 59.80,27.70
Run next to Vile Fin Tadpoles around this area
Frighten 12 Vile Fin Tadpoles |q 24999/1 |goto Tirisfal Glades 59.80,27.70
There are more to frighten around 65.10,28.70
step
talk Apprentice Crispin##38978
turnin Maggot Eye##24998 |goto Tirisfal Glades 61.60,34.40
turnin Planting the Seed of Fear##24999 |goto Tirisfal Glades 61.60,34.40
step
talk Apothecary Jerrod##38977
turnin Off the Scales##24995 |goto Tirisfal Glades 61.70,34.60
accept Head for the Mills##25031 |goto Tirisfal Glades 61.70,34.60
step
The path through the mountains starts here |goto Tirisfal Glades,57.40,29.30 < 5 |only if walking
talk Coleman Farthing##1500
turnin Head for the Mills##25031 |goto Tirisfal Glades 54.60,29.90
accept The Family Crypt##25003 |goto Tirisfal Glades 54.60,29.90
step
kill 8 Wailing Ancestor |q 25003/1 |goto Tirisfal Glades 52.10,29.80
kill 8 Rotting Ancestor |q 25003/2 |goto Tirisfal Glades 52.10,29.80
step
talk Coleman Farthing##1500
turnin The Family Crypt##25003 |goto Tirisfal Glades 54.60,29.90
accept The Mills Overrun##25004 |goto Tirisfal Glades 54.60,29.90
accept Deaths in the Family##25029 |goto Tirisfal Glades 54.60,29.90
stickystart "notchrib"
step
kill Thurman Agamand##1656
collect Thurman's Remains##2830 |q 25029/3 |goto Tirisfal Glades 46.00,30.30
step
kill Gregor Agamand##1654
collect Gregor's Remains##2829 |q 25029/2 |goto Tirisfal Glades 45.60,29.60
step
kill Nissa Agamand##1655
collect Nissa's Remains##2828 |q 25029/1 |goto Tirisfal Glades 49.40,36.00
step
kill Devlin Agamand##1657
collect Devlin's Remains##2831 |q 25029/4 |goto Tirisfal Glades 48.90,34.00
step
label "notchrib"
kill Cracked Skull Soldier##1523+
collect 5 Notched Rib##3162 |q 25004/1 |goto Tirisfal Glades 47.60,32.40
kill Darkeye Bonecaster##1522+
collect 3 Blackened Skull##3163 |q 25004/2 |goto Tirisfal Glades 47.60,32.40
step
talk Coleman Farthing##1500
turnin The Mills Overrun##25004 |goto Tirisfal Glades 54.60,29.90
turnin Deaths in the Family##25029 |goto Tirisfal Glades 54.60,29.90
accept Speak with Sevren##25005 |goto Tirisfal Glades 54.60,29.90
step
talk Magistrate Sevren##1499
turnin Speak with Sevren##25005 |goto Tirisfal Glades 61.00,50.40
accept The Grasp Weakens##25006 |goto Tirisfal Glades 61.00,50.40
step
talk Executor Zygand##1515
accept Warchief's Command: Silverpine Forest!##26964 |goto Tirisfal Glades 60.50,51.90
step
talk Shadow Priestess Malia##39117
Tell her you are ready and follow her upstairs
kill Spirit of Devlin Agamand##38980
Complete the Procedure |q 25006/1 |goto Tirisfal Glades 62.00,53.00
step
talk Magistrate Sevren##1499
turnin The Grasp Weakens##25006 |goto Tirisfal Glades 61.00,50.40
accept East... Always to the East##25007 |goto Tirisfal Glades 61.00,50.40
step
talk Timothy Cunningham##37915
fpath The Bulwark |goto Tirisfal Glades,83.60,69.90
step
talk Apothecary Dithers##11057
accept Grisly Grizzlies##25056 |goto Tirisfal Glades 83.30,69.20
step
talk High Executor Derrington##10837
turnin East... Always to the East##25007 |goto Tirisfal Glades 83.30,69.00
accept At War With The Scarlet Crusade##25009 |goto Tirisfal Glades 83.30,69.00
step
talk Provisioner Elda##46271
home The Bulwark |goto Tirisfal Glades 83.10,72.00
step
kill Plagued Bruin##39049+
collect 5 Plagued Bruin Hide##52270 |q 25056/1 |goto Tirisfal Glades 79.90,67.70
You can find more Plagued Bruins at [76.00,70.70]
step
kill 3 Scarlet Zealot |q 25009/1 |goto Tirisfal Glades 77.50,55.10
kill 4 Scarlet Friar |q 25009/2 |goto Tirisfal Glades 77.50,55.10
step
talk High Executor Derrington##10837
turnin At War With The Scarlet Crusade##25009 |goto Tirisfal Glades 83.30,69.00
accept A Deadly New Ally##25010 |goto Tirisfal Glades 83.30,69.00
step
talk Apothecary Dithers##11057
turnin Grisly Grizzlies##25056 |goto Tirisfal Glades 83.30,69.20
accept A Little Oomph##25013 |goto Tirisfal Glades 83.30,69.20
step
Pass through the mountains here |goto Tirisfal Glades,81.50,57.80,0.50 |c
step
kill Vicious Night Web Spider##1555+
collect 4 Vicious Night Web Spider Venom##2872 |q 25013/1 |goto Tirisfal Glades 84.40,52.10
step
talk Lieutenant Sanders##13158
turnin A Deadly New Ally##25010 |goto Tirisfal Glades 87.50,43.30
accept A Daughter's Embrace##25046 |goto Tirisfal Glades 87.50,43.30
step
Go to the road |goto Tirisfal Glades,81.50,43.00 < 5 |only if walking
The path to A Daughter's Embrace starts here |goto Tirisfal Glades,79.50,39.20 < 5 |only if walking
Watch Lillian Voss kill her father in the tower
Accomplish Lillian's Mission |q 25046/1 |goto Tirisfal Glades 79.50,25.80
step
talk Apothecary Dithers##11057
turnin A Little Oomph##25013 |goto Tirisfal Glades 83.30,69.20
step
talk High Executor Derrington##10837
turnin A Daughter's Embrace##25046 |goto Tirisfal Glades 83.30,69.00
accept To Bigger and Better Things##25011 |goto Tirisfal Glades 83.30,69.00
step
talk Timothy Cunningham##37915
turnin To Bigger and Better Things##25011 |goto Tirisfal Glades 83.60,69.90
accept Take to the Skies##25012 |goto Tirisfal Glades 83.60,69.90
step
talk Timothy Cunningham##37915 |goto Tirisfal Glades 83.60,69.90
Tell him you'll take that flight to Brill now |goto Tirisfal Glades,58.90,51.90,0.50 |noway |c
step
talk Executor Zygand##1515
turnin Take to the Skies##25012 |goto Tirisfal Glades 60.50,51.90
step
talk Grand Executor Mortuus##44615
turnin Warchief's Command: Silverpine Forest!##26964 |goto Silverpine Forest,57.40,10.10
accept The Warchief Cometh##26965 |goto Silverpine Forest,57.40,10.10
Stand by for Warchief Garrosh Hellscream's arrival |q 26965/1 |goto Silverpine Forest,57.40,10.10
step
talk Grand Executor Mortuus##44615
turnin The Warchief Cometh##26965 |goto Silverpine Forest 57.40,10.10
accept The Gilneas Liberation Front##26989 |goto Silverpine Forest 57.40,10.10
step
talk Bat Handler Maggotbreath##44825
fpath Forsaken High Command |goto Silverpine Forest 57.90,8.70
step
talk High Apothecary Shana T'veen##44784
accept Guts and Gore##26995 |goto Silverpine Forest 56.30,8.40
step
talk Apothecary Witherbloom##44778
accept Agony Abounds##26992 |goto Silverpine Forest 56.80,9.20
step
kill 10 Worgen Renegade |q 26989/1 |goto Silverpine Forest 57.00,14.20
kill Ferocious Grizzled Bear##1778+, Worg##1765+
collect 6 "Clean" Beast Guts##60742 |q 26995/1 |goto Silverpine Forest 57.00,14.20
Click Ferocious Doomweeds
|tip They look like small purple and green plants on the ground around this area.
collect 8 Ferocious Doomweed##60741 |q 26992/1 |goto Silverpine Forest 57.00,14.20
More can be found around 60.60,13.50 |goto Silverpine Forest 57.00,14.20
step
talk Grand Executor Mortuus##44615
turnin The Gilneas Liberation Front##26989 |goto Silverpine Forest 57.40,10.10
step
talk High Apothecary Shana T'veen##44784
turnin Guts and Gore##26995 |goto Silverpine Forest 56.30,8.40
step
talk Apothecary Witherbloom##44778
turnin Agony Abounds##26992 |goto Silverpine Forest 56.80,9.20
step
talk High Apothecary Shana T'veen##44784
accept Iterating Upon Success##26998 |goto Silverpine Forest 56.30,8.40
step
talk Bat Handler Maggotbreath##44825
Tell him you need to take a bat to the Dawning Isles
Use the Blight Concoction ability on your hotbar on the murlocs you fly over
kill 50 Vile Fin Murloc |q 26998/2 |goto Silverpine Forest 57.90,8.70
step
talk High Apothecary Shana T'veen##44784
turnin Iterating Upon Success##26998 |goto Silverpine Forest 56.30,8.40
step
talk Deathstalker Commander Belmont##44789
accept Dangerous Intentions##27039 |goto Silverpine Forest 58.10,9.00
step
Click the Abandoned Outhouse
turnin Dangerous Intentions##27039 |goto Silverpine Forest 53.90,13.00
accept Waiting to Exsanguinate##27045 |goto Silverpine Forest 53.90,13.00
step
Click the Armoire
|tip It looks like a tall wooden cabinet upstairs in this house.
Learn of Darius Crowley's Plans |q 27045/1 |goto Silverpine Forest 53.30,12.60
step
talk Deathstalker Commander Belmont##44789
turnin Waiting to Exsanguinate##27045 |goto Silverpine Forest 58.10,9.00
accept Belmont's Report##27056 |goto Silverpine Forest 58.10,9.00
step
talk Lady Sylvanas Windrunner##44365
turnin Belmont's Report##27056 |goto Silverpine Forest 57.40,10.20
accept The Warchief's Fleet##27065 |goto Silverpine Forest 57.40,10.20
step
talk Franny Mertz##50463
fpath Forsaken Rear Guard |goto Silverpine Forest 45.90,21.90
step
talk Admiral Hatchet##44916
turnin The Warchief's Fleet##27065 |goto Silverpine Forest 44.00,21.40
accept Steel Thunder##27069 |goto Silverpine Forest 44.00,21.40
step
talk Warlord Torok##44917
accept Give 'em Hell!##27073 |goto Silverpine Forest 44.00,21.30
step
talk Apothecary Wormcrud##44912
accept Playing Dirty##27082 |goto Silverpine Forest 44.80,20.90
step
talk Commander Hickley##45496
home Forsaken Rear Guard |goto Silverpine Forest 44.40,20.30
step
kill Giant Rabid Bear##1797+, Rabid Worg##1766+
collect 8 Diseased Organ##60793 |q 27082/1 |goto Silverpine Forest 47.40,20.50
More Wolves and Bears can be found around 50.60,17.50
step
talk Apothecary Wormcrud##44912
turnin Playing Dirty##27082 |goto Silverpine Forest 44.80,20.90
accept It's Only Poisonous if You Ingest It##27088 |goto Silverpine Forest 44.80,20.90
step
Use your Mutant Bush Chicken Cage on a Forrest Ettin |use Mutant Bush Chicken Cage##60808
|tip They are two-headed giants that walk around this area.
kill Forest Ettin |q 27088/1 |goto Silverpine Forest 47.00,25.30
step
talk Apothecary Wormcrud##44912
turnin It's Only Poisonous if You Ingest It##27088 |goto Silverpine Forest 44.80,20.90
step
talk Admiral Hatchet##44916
Tell her that you seem to have misplaced your Sea Pup |havebuff Orc Sea Pup##83839 |q 27069 |goto Silverpine Forest 44.00,21.40
step
kill 10 Bloodfang Scavenger |q 27073/1 |goto Silverpine Forest 40.00,26.90
Click Sea Dog Crates
|tip They look like wooden boxes with red symbols on them around this area.
Recover 5 Sea Dog Crates |q 27069/1 |goto Silverpine Forest 40.00,26.90
step
talk Admiral Hatchet##44916
turnin Steel Thunder##27069 |goto Silverpine Forest 44.00,21.40
step
talk Warlord Torok##44917
turnin Give 'em Hell!##27073 |goto Silverpine Forest 44.00,21.30
accept Skitterweb Menace##27095 |goto Silverpine Forest 44.00,21.30
step
talk Admiral Hatchet##44916
accept Lost in the Darkness##27093 |goto Silverpine Forest 44.00,21.40
step
kill Skitterweb Striker##1780+, Skitterweb Lurker##1781+
kill 12 Skitterweb Spider |q 27095/1 |goto Silverpine Forest 38.50,16.00
kill Webbed Victim##44941a+
|tip They look like squirming white cocoons around this area.
Rescue 6 Orc Sea Dogs |q 27093/1 |goto Silverpine Forest 38.50,16.00
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Skitterweb Menace##27095
accept Deeper into Darkness##27094
step
Enter the mine |goto Silverpine Forest,35.60,13.50 < 5 |walk
Follow the path to the back of the mine
kill Skitterweb Matriarch |q 27094/1 |goto Silverpine Forest 36.00,8.80
|tip She's hanging upside down on the ceiling.
step
talk Warlord Torok##44917
turnin Deeper into Darkness##27094 |goto Silverpine Forest 44.00,21.30
step
talk Admiral Hatchet##44916
turnin Lost in the Darkness##27093 |goto Silverpine Forest 44.00,21.40
accept Orcs are in Order##27096 |goto Silverpine Forest 44.00,21.40
step
talk Lady Sylvanas Windrunner##44365
turnin Orcs are in Order##27096 |goto Silverpine Forest 57.40,10.20
accept Rise, Forsaken##27097 |goto Silverpine Forest 57.40,10.20
step
kill Hillsbrad Refugee##44954+
Raise 15 Forsaken |q 27097/1 |goto Silverpine Forest 64.80,22.30
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Rise, Forsaken##27097
accept No Escape##27099
step
Go to the top room of the fortress
Find the Human Leaders |q 27099/1 |goto Silverpine Forest 65.70,24.50
step
talk Lady Sylvanas Windrunner##44365
turnin No Escape##27099 |goto Silverpine Forest 57.40,10.20
accept Lordaeron##27098 |goto Silverpine Forest 57.40,10.20
Accompany Lady Sylvanas Windrunner to the Sepulcher |q 27098/1 |goto Silverpine Forest 57.40,10.20
step
talk Lady Sylvanas Windrunner##44365
turnin Lordaeron##27098 |goto Silverpine Forest 44.90,41.60
accept Honor the Dead##27180 |goto Silverpine Forest 44.90,41.60
step
talk Karos Razok##2226
fpath The Sepulcher |goto Silverpine Forest 45.40,42.50
step
talk Warlord Torok##44917
accept Hair of the Dog##27226 |goto Silverpine Forest 45.80,41.90
step
talk Admiral Hatchet##44916
accept Reinforcements from Fenris##27231 |goto Silverpine Forest 45.80,42.00
step
talk Innkeeper Bates##6739
home The Sepulcher |goto Silverpine Forest 46.40,42.70
step
kill 10 Hillsbrad Worgen |q 27231/1 |goto Silverpine Forest 52.00,33.60
Use your Barrel of Explosive Ale on Orc Sea Dogs |use Barrel of Explosive Ale##60870
|tip They looks like dead orcs on the ground around this area.
Rouse 8 Orc Sea Dogs |q 27226/1 |goto Silverpine Forest 52.00,33.60
step
Click the Horde Communication Panel
|tip It looks like a metal box with handles on it on the wooden dock.
turnin Reinforcements from Fenris##27231 |goto Silverpine Forest 59.20,34.20
accept The Waters Run Red...##27232 |goto Silverpine Forest 59.20,34.20
step
Click a Horde Cannon
|tip They look like silver metal cannons at the end of the wooden dock.
Use your Rocket Blast ability on your hotbar on the worgens swimming in the water
kill 50 Hillsbrad Worgen |q 27232/1 |goto Silverpine Forest 59.90,34.10
step
talk Admiral Hatchet##44916
turnin The Waters Run Red...##27232 |goto Silverpine Forest 45.80,42.00
step
talk Warlord Torok##44917
turnin Hair of the Dog##27226 |goto Silverpine Forest 45.80,41.90
step
kill Bloodfang Stalker##45195
accept Excising the Taint##27181 |goto Silverpine Forest 47.40,46.60
step
kill 10 Bloodfang Stalker |q 27181/1 |goto Silverpine Forest 46.90,49.70
Click Veteran Forsaken Troopers
|tip They look like dead undeads on the ground around this area.
collect 6 Forsaken Insignia##60862 |q 27180/1 |goto Silverpine Forest 46.90,49.70
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Excising the Taint##27181
accept Seek and Destroy##27193
step
kill Caretaker Smithers##45219
|tip He's inside the barn, up on the ledge to your left as you enter the barn.
collect Smithers' Logbook##60867 |q 27193/1 |goto Silverpine Forest 45.90,54.40
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Seek and Destroy##27193
accept Cornered and Crushed!##27194
step
talk Master Forteski##45228
turnin Cornered and Crushed!##27194 |goto Silverpine Forest 55.90,46.40
accept Nowhere to Run##27195 |goto Silverpine Forest 55.90,46.40
Escort Master Forteski through the Deep Elem Mine |q 27195/1 |goto Silverpine Forest 55.90,46.40
step
talk Lady Sylvanas Windrunner##44365
turnin Honor the Dead##27180 |goto Silverpine Forest 44.90,41.60
turnin Nowhere to Run##27195 |goto Silverpine Forest 44.90,41.60
accept To Forsaken Forward Command##27290 |goto Silverpine Forest 44.90,41.60
step
talk Deathstalker Commander Belmont##45312
turnin To Forsaken Forward Command##27290 |goto Ruins of Gilneas,57.50,18.90
accept In Time, All Will Be Revealed##27342 |goto Ruins of Gilneas,57.50,18.90
step
talk Forward Commander Onslaught##45315
accept Losing Ground##27333 |goto Ruins of Gilneas 57.50,18.20
accept The F.C.D.##27345 |goto Ruins of Gilneas 57.50,18.20
step
talk Bat Handler Doomair##45479
fpath Forsaken Forward Command |goto Ruins of Gilneas 57.30,17.70
step
Click the Forsaken Communication Device
|tip It's a metal machine with levers on it sitting on the ground.
collect Forsaken Communication Device##60953 |q 27345/1 |goto Ruins of Gilneas 45.80,22.00
step
kill 12 Worgen Rebel |q 27333/1 |goto Ruins of Gilneas 53.40,19.30
step
talk Forward Commander Onslaught##45315
turnin Losing Ground##27333 |goto Ruins of Gilneas 57.50,18.20
turnin The F.C.D.##27345 |goto Ruins of Gilneas 57.50,18.20
step
Cross the road here |goto Ruins of Gilneas,58.30,22.20,0.50 |c
step
Click Wolfsbane
|tip They looks like small bushy plants with tiny purple flowers on them on the ground around this area.
collect 6 Wolfsbane##60958 |q 27342/1 |goto Ruins of Gilneas 64.00,24.70
step
Cross the road here |goto Ruins of Gilneas,59.20,21.80,0.50 |c
step
talk Deathstalker Commander Belmont##45312
turnin In Time, All Will Be Revealed##27342 |goto Ruins of Gilneas 57.50,18.90
step
talk Forward Commander Onslaught##45315
accept Break in Communications: Dreadwatch Outpost##27349 |goto Ruins of Gilneas 57.50,18.20
step
Go to this spot, but stay off the main road
Investigate Dreadwatch Outpost |q 27349/1 |goto Ruins of Gilneas 52.00,32.10
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Break in Communications: Dreadwatch Outpost##27349
accept Break in Communications: Rutsak's Guard##27350
step
talk Captain Rutsak##45389
turnin Break in Communications: Rutsak's Guard##27350 |goto Ruins of Gilneas 65.60,34.10
accept Vengeance for Our Soldiers##27360 |goto Ruins of Gilneas 65.60,34.10
accept On Whose Orders?##27364 |goto Ruins of Gilneas 65.60,34.10
step
kill Master Sergeant Pietro Zaren##45405
collect Orders from High Command##60977 |q 27364/1 |goto Ruins of Gilneas 58.90,47.50
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin On Whose Orders?##27364
accept What Tomorrow Brings##27401
step
Click the 7th Legion Telescope
|tip It's a huge golden telescope.
Use the 7th Legion Telescope to Scout the Harbor |q 27401/1 |goto Ruins of Gilneas 54.90,44.30
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin What Tomorrow Brings##27401
accept Fall Back!##27405
step
kill 10 7th Legion Submariner |q 27360/1 |goto Ruins of Gilneas 56.70,44.00
step
talk Captain Rutsak##45389
turnin Vengeance for Our Soldiers##27360 |goto Ruins of Gilneas 65.60,34.10
step
talk Deathstalker Commander Belmont##45312
turnin Fall Back!##27405 |goto Ruins of Gilneas 73.00,30.10
accept A Man Named Godfrey##27406 |goto Ruins of Gilneas 73.00,30.10
step
Go to this spot
accept Resistance is Futile##27423 |goto Ruins of Gilneas 73.40,31.20
step
Walk south and southeast along the road:
kill Bloodfang Scout##45481+, Gilnean Warhound##45499+, Worgen Battlemage##45483+
kill 20 Worgen Combatant |q 27423/1 |goto Ruins of Gilneas 75.40,63.10
step
Next to you:
talk Deathstalker Commander Belmont##45474
turnin Resistance is Futile##27423
step
The path down to Lord Godfrey starts here |goto Ruins of Gilneas,81.80,64.80,0.50 |c
step
Click Lord Godfrey
|tip He is laying dead on the beach.
Find Lord Vincent Godfrey's Corpse |q 27406/1 |goto Ruins of Gilneas 79.70,75.70
step
Next to you:
talk Deathstalker Commander Belmont##45474
turnin A Man Named Godfrey##27406
step
talk Deathstalker Commander Belmont##45312
accept The Great Escape##27438 |goto Ruins of Gilneas 79.70,75.70
Escape the Ruins of Gilneas |q 27438/1 |goto Ruins of Gilneas 79.70,75.70
step
talk Lady Sylvanas Windrunner##45525
turnin The Great Escape##27438 |goto Silverpine Forest,51.80,66.10
accept Rise, Godfrey##27472 |goto Silverpine Forest,51.80,66.10
Watch Lord Godfrey be Reborn |q 27472/1 |goto Silverpine Forest,51.80,66.10
step
talk Lady Sylvanas Windrunner##45617
turnin Rise, Godfrey##27472 |goto Silverpine Forest 51.90,65.00
accept Breaking the Barrier##27474 |goto Silverpine Forest 51.90,65.00
step
talk Daschla##45626
accept Unyielding Servitors##27475 |goto Silverpine Forest 51.90,64.70
step
talk Steven Stutzka##46552
fpath The Forsaken Front |goto Silverpine Forest 50.90,63.60
stickystart "servcore"
step
Click the Ambermill Codex
|tip It's a small book floating above the podium inside the town hall building.
collect Ambermill Codex##61306 |q 27474/1 |goto Silverpine Forest 63.50,64.20
step
label "servcore"
kill Elemental Servitor##45711+
collect 6 Servitor Core##61307 |q 27475/1 |goto Silverpine Forest 59.10,64.30
step
talk Daschla##45626
turnin Unyielding Servitors##27475 |goto Silverpine Forest 51.90,64.70
step
talk Lady Sylvanas Windrunner##45617
turnin Breaking the Barrier##27474 |goto Silverpine Forest 51.90,65.00
accept Dalar Dawnweaver##27476 |goto Silverpine Forest 51.90,65.00
step
talk Dalar Dawnweaver##1938
turnin Dalar Dawnweaver##27476 |goto Silverpine Forest 47.10,43.20
accept Relios the Relic Keeper##27478 |goto Silverpine Forest 47.10,43.20
accept Practical Vengeance##27483 |goto Silverpine Forest 47.10,43.20
step
kill Arcane Remnant##45728+
collect Arcane Remnant##61310 |n
Click the Arcane Remnant in your bags |use Arcane Remnant##61310
accept Ley Energies##27480 |goto Hillsbrad Foothills,29.90,37.60
stickystart "dalhuman"
step
Follow the purple path up and out of the crater
kill Relios the Relic Keeper##45734
|tip He walks around the crumbled town, so you may need to search for him.
collect Dalaran Archmage's Signet Ring##61312 |q 27478/1 |goto Hillsbrad Foothills 32.30,44.40
step
label "dalhuman"
kill Dalaran Summoner##2358+, Dalaran Worker##2628+
kill 12 Dalaran Human |q 27483/1 |goto Hillsbrad Foothills 31.60,43.20
step
kill Arcane Remnant##45728+
collect 8 Arcane Remnant##61310 |q 27480/1 |goto Hillsbrad Foothills 30.80,40.90
step
talk Dalar Dawnweaver##1938
turnin Relios the Relic Keeper##27478 |goto Silverpine Forest,47.10,43.20
accept Only One May Enter##27484 |goto Silverpine Forest,47.10,43.20
turnin Practical Vengeance##27483 |goto Silverpine Forest,47.10,43.20
turnin Ley Energies##27480 |goto Silverpine Forest,47.10,43.20
step
talk Lady Sylvanas Windrunner##45617
turnin Only One May Enter##27484 |goto Silverpine Forest 51.90,65.00
accept Transdimensional Warfare: Chapter I##27512 |goto Silverpine Forest 51.90,65.00
step
talk High Warlord Cromush##45631
accept A Wolf in Bear's Clothing##27510 |goto Silverpine Forest 51.70,67.20
step
kill 10 Inconspicuous Bear |q 27510/1 |goto Silverpine Forest 56.10,76.70
There are more Inconspicuous Bears around 55.30,70.60
step
The path up to the Ambermill Dimensional Portal starts here |goto Silverpine Forest,60.40,74.70 < 5 |walk
Click the Ambermill Dimensional Portal
|tip It's a green portal in the very back of the cave you come to.
turnin Transdimensional Warfare: Chapter I##27512 |goto Silverpine Forest 58.10,69.90
accept Transdimensional Warfare: Chapter II##27513 |goto Silverpine Forest 58.10,69.90
step
Click the Ambermill Dimensional Portal
|tip It's a green portal in the very back of the cave you come to.
<Use the Ambermill Dimensional Portal.>
Enter the Transdimensional Shift |havebuff Transdimensional Shift##85361 |q 27513 |goto Silverpine Forest 58.10,69.90
step
All around the Ambermill town:
kill Ambermill Watcher##1888+, Ambermill Magister##1914+, Ambermill Warder##1913+, Ambermill Miner##3578+, Ambermill Brewmaster##3577+, Ambermill Witchalok##1889+
kill 20 Ambermill Mage |q 27513/1 |goto Silverpine Forest 62.50,64.10
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Transdimensional Warfare: Chapter II##27513
accept Transdimensional Warfare: Chapter III##27518
step
kill Archmage Ataeric##2120
|tip He will send minions at you.  Kill the minions while they are close to Archmage Ataeric to release their energy on him.
Destroy the Transdimensional Shield |q 27518/1 |goto Silverpine Forest 56.60,64.40
step
talk Lady Sylvanas Windrunner##45617
turnin Transdimensional Warfare: Chapter III##27518 |goto Silverpine Forest 51.90,65.00
accept Taking the Battlefront##27542 |goto Silverpine Forest 51.90,65.00
step
Next to you:
talk Baron Ashbury##45880
accept Of No Consequence##27547
step
Next to you:
talk Lord Walden##45879
accept Lessons in Fear##27548
step
Next to you:
talk Lord Godfrey##45878
accept Pyrewood's Fall##27550
step
talk High Warlord Cromush##45631
turnin A Wolf in Bear's Clothing##27510 |goto Silverpine Forest 51.70,67.20
stickystart "sevscout"
step
Use your Bundle of Torches in this spot |use Bundle of Torches##61374
Torch the Pyrewood Chapel |q 27550/2 |goto Silverpine Forest 46.60,72.70
step
Use your Bundle of Torches in this spot |use Bundle of Torches##61374
Torch the Pyrewood Inn |q 27550/1 |goto Silverpine Forest 45.20,72.00
step
Use your Bundle of Torches in this spot |use Bundle of Torches##61374
Torch the Pyrewood Town Hall |q 27550/3 |goto Silverpine Forest 44.20,73.20
step
Next to you:
talk Lord Godfrey##45878
turnin Pyrewood's Fall##27550
step
label "sevscout"
All around Pyrewood Village:
kill 12 7th Legion Scout |q 27548/1 |goto Silverpine Forest 45.00,73.50
talk Cowering Troop##45910
|tip They look like Horde mobs standing in place shaking around this area.
Rescue 8 Cowering Trooper |q 27547/1 |goto Silverpine Forest 45.00,73.50
step
Next to you:
talk Baron Ashbury##45880
turnin Of No Consequence##27547
step
Next to you:
talk Lord Walden##45879
turnin Lessons in Fear##27548
accept 7th Legion Battle Plans##27577
step
Next to you:
talk Lord Godfrey##45878
accept Sowing Discord##27580
step
kill General Marstone |q 27580/1 |goto Silverpine Forest 42.40,79.20
step
Next to you:
talk Lord Godfrey##45878
turnin Sowing Discord##27580
step
kill Dwarven Infantry##45855+
collect 7th Legion Battle Plan##61510 |q 27577/1 |goto Silverpine Forest 42.90,81.00
step
Next to you:
talk Lord Walden##45879
turnin 7th Legion Battle Plans##27577
step
Next to you:
talk Lord Godfrey##45878
accept On Her Majesty's Secret Service##27594
step
kill Commander Lorna Crowley##45997
Capture Commander Lorna Crowley |q 27594/1 |goto Silverpine Forest 50.30,88.30
step
talk Lady Sylvanas Windrunner##45617
turnin On Her Majesty's Secret Service##27594 |goto Silverpine Forest 51.90,65.00
accept Cities in Dust##27601 |goto Silverpine Forest 51.90,65.00
step
Follow Lady Sylvanas Windrunner through the battle
Defeat the Alliance!
Fight Lord Walden, Baron Ashbury, and Lord Godfrey until they retreat
Attain Victory: Final and Absolute |q 27601/1
step
talk Lady Sylvanas Windrunner##46124
turnin Cities in Dust##27601 |goto Silverpine Forest 45.30,84.50
accept Empire of Dirt##27746 |goto Silverpine Forest 45.30,84.50
step
map Undercity
To continue gaining reputation with the Undercity faction:
You can buy an Undercity Tabard from Captain Donald Adams in Undercity at [63.50,48.80]
|tip Wear the Undercity Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Required Home Cities Reputation\\Silvermoon City\\Blood Elf",{
description="This guide will help you to get Exalted reputation with the Silvermoon City faction. You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.",
mounts={63642},
},[[
step
You will not be able to do some of the quests in this section if you are not a Blood Elf.
confirm
step
talk Magistrix Erona##15278
accept Reclaiming Sunstrider Isle##8325 |goto Eversong Woods/0 38.00,21.00
step
kill 8 Mana Wyrm |q 8325/1 |goto Eversong Woods/0 36.20,20.50
step
talk Magistrix Erona##15278
turnin Reclaiming Sunstrider Isle##8325 |goto Eversong Woods/0 38.00,21.00
accept Unfortunate Measures##8326 |goto Eversong Woods/0 38.00,21.00
step
talk Well Watcher Solanian##15295
accept Solanian's Belongings##37443 |goto Eversong Woods/0 39.00,20.30
accept The Shrine of Dath'Remar##8345 |goto Eversong Woods/0 39.00,20.30
step
talk Arcanist Ithanas##15296
accept A Fistful of Slivers##8336 |goto Eversong Woods/0 38.30,19.10
only BloodElf
step
talk Arcanist Helion##15297
accept Thirst Unending##8346 |goto Eversong Woods/0 37.20,18.90
only BloodElf
stickystart "springlynx"
step
Use your Arcane Torrent ability on a Mana Wyrm |cast Arcane Torrent
Unleash the Arcane Torrent |q 8346/1 |goto Eversong Woods/0 36.30,20.10
step
label "springlynx"
kill Springpaw Lynx##15372+, Springpaw Cub##15366+
collect 8 Lynx Collar##20797 |q 8326/1 |goto Eversong Woods/0 35.30,22.10
step
Click the Scroll of Scourge Magic
|tip It looks like a scroll laying flat on the ground.
collect Scroll of Scourge Magic##20471 |q 37443/2 |goto Eversong Woods/0 31.30,22.70
kill Feral Tender##15294+
collect 6 Arcane Sliver##20482 |q 8336/1 |goto Eversong Woods/0 31.30,22.70
step
Click the Shrine of Dath'Remar
|tip It looks like a square metal plaque on the wall.
Read the Shrine of Dath'Remar |q 8345/1 |goto Eversong Woods/0 29.60,19.40
step
Click Solanian's Scrying Orb
|tip It looks like a red orb sitting on a golden rod stand.
collect Solanian's Scrying Orb##20470 |q 37443/1 |goto Eversong Woods/0 35.10,28.90
step
Click Solanian's Journal
|tip It looks like a book laying on the ground.
collect Solanian's Journal##20472 |q 37443/3 |goto Eversong Woods/0 37.70,24.90
step
talk Magistrix Erona##15278
turnin Unfortunate Measures##8326 |goto Eversong Woods/0 38.00,21.00
accept Report to Lanthan Perilon##8327 |goto Eversong Woods/0 38.00,21.00
step
talk Well Watcher Solanian##15295
turnin Solanian's Belongings##37443 |goto Eversong Woods/0 39.00,20.30
turnin The Shrine of Dath'Remar##8345 |goto Eversong Woods/0 39.00,20.30
step
talk Arcanist Ithanas##15296
turnin A Fistful of Slivers##8336 |goto Eversong Woods/0 38.30,19.10
only BloodElf
step
talk Arcanist Helion##15297
turnin Thirst Unending##8346 |goto Eversong Woods/0 37.20,18.90
only BloodElf
step
talk Lanthan Perilon##15281
turnin Report to Lanthan Perilon##8327 |goto Eversong Woods/0 35.40,22.50
accept Aggression##8334 |goto Eversong Woods/0 35.40,22.50
step
kill 7 Tender |q 8334/1 |goto Eversong Woods/0 34.70,27.30
kill 7 Feral Tender |q 8334/2 |goto Eversong Woods/0 34.70,27.30
step
talk Lanthan Perilon##15281
turnin Aggression##8334 |goto Eversong Woods/0 35.40,22.50
accept Felendren the Banished##8335 |goto Eversong Woods/0 35.40,22.50
step
kill 8 Arcane Wraith |q 8335/1 |goto Eversong Woods/0 32.20,25.90
kill 2 Tainted Arcane Wraith |q 8335/2 |goto Eversong Woods/0 32.20,25.90
kill Tainted Arcane Wraith##15298+
collect Tainted Arcane Sliver##20483 |n
Click the Tainted Arcane Sliver in your bags |use Tainted Arcane Sliver##20483
accept Tainted Arcane Sliver##8338
step
Follow the ramps all the way to the top to 30.80,27.10 |goto Eversong Woods,30.80,27.10
kill Felendren the Banished##15367
collect Felendren's Head##20799 |q 8335/3
step
talk Lanthan Perilon##15281
turnin Felendren the Banished##8335 |goto Eversong Woods 35.40,22.50
accept Aiding the Outrunners##8347 |goto Eversong Woods 35.40,22.50
step
talk Arcanist Helion##15297
turnin Tainted Arcane Sliver##8338 |goto Eversong Woods 37.20,18.90
step
talk Outrunner Alarion##15301
turnin Aiding the Outrunners##8347 |goto Eversong Woods 40.40,32.20
accept Slain by the Wretched##9704 |goto Eversong Woods 40.40,32.20
step
Click the Slain Outrunner
|tip It's a corpse laying in the middle of the road.
turnin Slain by the Wretched##9704 |goto Eversong Woods 42.00,35.70
accept Package Recovery##9705 |goto Eversong Woods 42.00,35.70
step
talk Outrunner Alarion##15301
turnin Package Recovery##9705 |goto Eversong Woods 40.40,32.20
accept Completing the Delivery##8350 |goto Eversong Woods 40.40,32.20
step
talk Skymaster Skyles##44244
fpath Falconwing Square |goto Eversong Woods 46.20,46.80
step
talk Magister Jaronis##15418
accept Major Malfunction##8472 |goto Eversong Woods 47.30,46.30
step
talk Innkeeper Delaniel##15433
turnin Completing the Delivery##8350 |goto Eversong Woods 48.10,47.70
home Falconwing Square |goto Eversong Woods 48.10,47.70
step
talk Aeldon Sunbrand##15403
accept Unstable Mana Crystals##8463 |goto Eversong Woods 48.20,46
step
Click the Wanted Poster
|tip Standing to the right of the entrance to the big building.
accept Wanted: Thaelis the Hungerer##8468 |goto Eversong Woods 48.20,46.30
stickystart "unstablecry"
step
kill Thaelis the Hungerer##15949
collect Thaelis's Head##21781 |q 8468/1 |goto Eversong Woods 45,37.80
step
label "unstablecry"
Click the Unstable Mana Crystal Crates
|tip They look like small glowing circle objects on the ground around this area.
collect 6 Unstable Mana Crystal##20743 |q 8463/1 |goto Eversong Woods 45.90,43.70
kill Arcane Patroller##15638+
collect 6 Arcane Core##21808 |q 8472/1 |goto Eversong Woods 45.90,43.70
step
talk Sergeant Kan'ren##16924
turnin Wanted: Thaelis the Hungerer##8468 |goto Eversong Woods 47.80,46.60
step
talk Aeldon Sunbrand##15403
turnin Unstable Mana Crystals##8463 |goto Eversong Woods 48.20,46
accept Darnassian Intrusions##9352 |goto Eversong Woods 48.20,46
step
talk Magister Jaronis##15418
turnin Major Malfunction##8472 |goto Eversong Woods 47.30,46.30
accept Delivery to the North Sanctum##8895 |goto Eversong Woods 47.30,46.30
step
talk Ley-Keeper Caidanis##15405
turnin Delivery to the North Sanctum##8895 |goto Eversong Woods 44.60,53.10
accept Malfunction at the West Sanctum##9119 |goto Eversong Woods 44.60,53.10
step
talk Apprentice Ralen##15941
accept Roadside Ambush##9035 |goto Eversong Woods 45.20,56.40
step
talk Apprentice Meledor##15945
turnin Roadside Ambush##9035 |goto Eversong Woods 44.90,61.00
accept Soaked Pages##9062 |goto Eversong Woods 44.90,61.00
step
Click the Soaked Tome
|tip It's a little black book underwater here under the bridge.
collect Antheol's Elemental Grimoire##22414|q 9062/1 |goto Eversong Woods 44.30,62.00
step
talk Apprentice Meledor##15945
turnin Soaked Pages##9062 |goto Eversong Woods 44.90,61.00
accept Taking the Fall##9064 |goto Eversong Woods 44.90,61.00
step
talk Ley-Keeper Velania##15401
turnin Malfunction at the West Sanctum##9119 |goto Eversong Woods 36.70,57.40
accept Arcane Instability##8486 |goto Eversong Woods 36.70,57.40
stickystart "darnscout"
step
kill 5 Manawraith |q 8486/1 |goto Eversong Woods 36.70,57.40
kill 5 Mana Stalker |q 8486/2 |goto Eversong Woods 36.70,57.40
step
label "darnscout"
kill Darnassian Scout##15968+
Defeat an Intruder |q 9352/1 |goto Eversong Woods 33.90,58.40
collect Incriminating Documents##20765 |n
Click the Incriminating Documents in your bags |use Incriminating Documents##20765
accept Incriminating Documents##8482
step
talk Ley-Keeper Velania##15401
turnin Darnassian Intrusions##9352 |goto Eversong Woods 36.70,57.40
turnin Arcane Instability##8486 |goto Eversong Woods 36.70,57.40
step
talk Hathvelion Sungaze##15920
accept Fish Heads, Fish Heads...##8884 |goto Eversong Woods 30.20,58.30
step
kill Grimscale Forager##15670+, Grimscale Seer##15950+
collect 8 Grimscale Murloc Head##21757 |q 8884/1 |goto Eversong Woods 27.30,57.20
step
talk Hathvelion Sungaze##15920
turnin Fish Heads, Fish Heads...##8884 |goto Eversong Woods 30.20,58.30
accept The Ring of Mmmrrrggglll##8885 |goto Eversong Woods 30.20,58.30
step
talk Aeldon Sunbrand##15403
turnin Incriminating Documents##8482 |goto Eversong Woods 48.20,46
accept The Dwarven Spy##8483 |goto Eversong Woods 48.20,46
step
talk Prospector Anvilward##15420
Tell him you need a moment of his time
kill Prospector Anvilward##15420
collect Prospector Anvilward's Head##20764 |q 8483/1 |goto Eversong Woods 44.60,53.10
step
talk Aeldon Sunbrand##15403
turnin The Dwarven Spy##8483 |goto Eversong Woods 48.20,46
accept Fairbreeze Village##9256 |goto Eversong Woods 48.20,46
step
talk Ranger Jaela##15416
accept The Dead Scar##8475 |goto Eversong Woods 50.30,50.80
step
kill 8 Plaguebone Pillager |q 8475/1 |goto Eversong Woods 50.30,52.90
step
talk Ranger Jaela##15416
turnin The Dead Scar##8475 |goto Eversong Woods 50.30,50.80
step
talk Skymistress Gloaming##16192
fpath Silvermoon City |goto Eversong Woods 54.40,50.70
step
talk Instructor Antheol##15970
turnin Taking the Fall##9064 |goto Eversong Woods 55.70,54.50
accept Swift Discipline##9066 |goto Eversong Woods 55.70,54.50
step
Use Antheol's Disciplinary Rod on Apprentice Ralen |use Antheol's Disciplinary Rod##22473
|tip Standing next to a broken down red wagon.
Discipline Apprentice Ralen |q 9066/2 |goto Eversong Woods 45.20,56.40
step
Use Antheol's Disciplinary Rod on Apprentice Meledor |use Antheol's Disciplinary Rod##22473
|tip Standing on the water bank, near the bridge.
Discipline Apprentice Meledor |q 9066/1 |goto Eversong Woods 44.90,61.00
step
talk Velan Brightoak##15417
accept Pelt Collection##8491 |goto Eversong Woods 44.70,69.60
step
talk Skymaster Brightdawn##44036
fpath Fairbreeze Village |goto Eversong Woods 43.90,70.00
step
talk Magistrix Landra Dawnstrider##16210
accept Saltheril's Haven##9395 |goto Eversong Woods 44.00,70.80
accept The Wayward Apprentice##9254 |goto Eversong Woods 44.00,70.80
step
talk Marniel Amberlight##15397
accept Ranger Sareyn##9358 |goto Eversong Woods 43.70,71.20
home Fairbreeze Village |goto Eversong Woods 43.70,71.20
step
talk Ardeyn Riverwind##16397
accept The Scorched Grove##9258 |goto Eversong Woods 43.60,71.20
step
talk Sathiel##16261
accept Goods from Silvermoon City##9130 |goto Eversong Woods 43.70,71.60
only BloodElf
step
talk Ranger Degolien##15939
turnin Fairbreeze Village##9256 |goto Eversong Woods 43.30,70.80
accept Situation at Sunsail Anchorage##8892 |goto Eversong Woods 43.30,70.80
step
talk Skymaster Brightdawn##44036
turnin Goods from Silvermoon City##9130 |goto Eversong Woods 43.90,70.00
accept Fly to Silvermoon City##9133 |goto Eversong Woods 43.90,70.00
only BloodElf
step
talk Instructor Antheol##15970
turnin Swift Discipline##9066 |goto Eversong Woods 55.70,54.50
step
talk Sathren Azuredawn##16191
turnin Fly to Silvermoon City##9133 |goto Silvermoon City,53.90,71.00
accept Skymistress Gloaming##9134 |goto Silvermoon City,53.90,71.00
only BloodElf
step
talk Skymistress Gloaming##16192
turnin Skymistress Gloaming##9134 |goto Eversong Woods,54.40,50.70
accept Return to Sathiel##9135 |goto Eversong Woods,54.40,50.70
only BloodElf
step
talk Sathiel##16261
turnin Return to Sathiel##9135 |goto Eversong Woods 43.70,71.60
only BloodElf
step
kill Springpaw Stalker##15651+
collect 6 Springpaw Pelt##20772 |q 8491/1 |goto Eversong Woods 40.50,65.60
There will be more around [46.30,67.30]
step
talk Lord Saltheril##16144
turnin Saltheril's Haven##9395 |goto Eversong Woods 38.10,73.60
accept The Party Never Ends##9067 |goto Eversong Woods 38.10,73.60
step
talk Velendris Whitemorn##15404
accept Lost Armaments##8480 |goto Eversong Woods 36.40,66.80
step
talk Captain Kelisendra##15921
accept Grimscale Pirates!##8886 |goto Eversong Woods 36.40,66.60
step
kill 5 Wretched Thug |q 8892/1 |goto Eversong Woods 34.10,69.10
kill 5 Wretched Hooligan |q 8892/2 |goto Eversong Woods 34.10,69.10
Click the Weapon Containers
|tip They look like wooden boxes on the ground all around this area and inside the big building.
collect 8 Sin'dorei Armaments##22413 |q 8480/1 |goto Eversong Woods 34.10,69.10
step
kill Grimscale Murloc##15668+, Grimscale Oracle##15669+
collect Captain Kelisendra's Lost Rutters##21776 |n
Click Captain Kelisendra's Lost Rutters in your bags |use Captain Kelisendra's Lost Rutters##21776
accept Captain Kelisendra's Lost Rutters##8887 |goto Eversong Woods 25.90,68.50
Click Captain Kelisendra's Cargo
|tip The Captain Kelisendra's Cargo barrels look like wooden barrels sitting upright next to the murloc huts.
collect 6 Captain Kelisendra's Cargo##21771 |q 8886/1 |goto Eversong Woods 25.90,68.50
kill Mmmrrrggglll##15937
collect Ring of Mmmrrrggglll##21770 |q 8885/1 |goto Eversong Woods 25.90,68.50
Mmmrrrggglll can be found around 24.40,73.20 and patrols along the coast
step
talk Hathvelion Sungaze##15920
turnin The Ring of Mmmrrrggglll##8885 |goto Eversong Woods 30.20,58.30
step
talk Ranger Degolien##15939
turnin Situation at Sunsail Anchorage##8892 |goto Eversong Woods 43.30,70.80
accept Farstrider Retreat##9359 |goto Eversong Woods 43.30,70.80
step
talk Halis Dawnstrider##16444
buy 1 Bundle of Fireworks##22777 |q 9067/3 |goto Eversong Woods 44.10,70.30
step
talk Velan Brightoak##15417
turnin Pelt Collection##8491 |goto Eversong Woods 44.70,69.60
step
talk Velendris Whitemorn##15404
turnin Lost Armaments##8480 |goto Eversong Woods 36.40,66.80
accept Wretched Ringleader##9076 |goto Eversong Woods 36.40,66.80
step
talk Captain Kelisendra##15921
turnin Grimscale Pirates!##8886 |goto Eversong Woods 36.40,66.60
turnin Captain Kelisendra's Lost Rutters##8887 |goto Eversong Woods 36.40,66.60
step
Go all the way to the top of the big building
kill Aldaron the Reckless##16294
collect Aldaron's Head##22487 |q 9076/1 |goto Eversong Woods 32.80,69.60
step
talk Velendris Whitemorn##15404
turnin Wretched Ringleader##9076 |goto Eversong Woods 36.40,66.80
step
talk Larianna Riverwind##15398
turnin The Scorched Grove##9258 |goto Eversong Woods 34.10,80.00
accept A Somber Task##8473 |goto Eversong Woods 34.10,80.00
step
kill Old Whitebark##15409
collect Old Whitebark's Pendant##23228 |goto Eversong Woods 35.00,84.10
Click Old Whitebark's Pendant in your bags |use Old Whitebark's Pendant##23228
accept Old Whitebark's Pendant##8474 |goto Eversong Woods 35.00,84.10
kill 10 Withered Green Keeper |q 8473/1 |goto Eversong Woods 35.00,84.10
step
talk Larianna Riverwind##15398
turnin A Somber Task##8473 |goto Eversong Woods 34.10,80.00
turnin Old Whitebark's Pendant##8474 |goto Eversong Woods 34.10,80.00
accept Whitebark's Memory##10166 |goto Eversong Woods 34.10,80.00
step
Use Old Whitebark's Pendant next to this huge stone with a blue symbol on it |use Old Whitebark's Pendant##28209
Fight Whitebark's Spirit until he surrenders
talk Whitebark's Spirit##19456
turnin Whitebark's Memory##10166 |goto Eversong Woods 37.50,86.30
step
talk Ranger Sareyn##15942
turnin Ranger Sareyn##9358 |goto Eversong Woods 46.90,71.80
accept Defending Fairbreeze Village##9252 |goto Eversong Woods 46.90,71.80
step
kill 4 Rotlimb Marauder |q 9252/1 |goto Eversong Woods 50.20,78.20
kill 4 Darkwraith |q 9252/2 |goto Eversong Woods 50.20,78.20
step
talk Apprentice Mirveda##15402
turnin The Wayward Apprentice##9254 |goto Eversong Woods 54.30,71
accept Corrupted Soil##8487 |goto Eversong Woods 54.30,71
step
Click the Corrupted Soil Samples
|tip They look like green glowing piles of dirt around this area.
collect 8 Tainted Soil Sample##20771 |q 8487/1 |goto Eversong Woods 52.60,70.90
step
talk Apprentice Mirveda##15402
turnin Corrupted Soil##8487 |goto Eversong Woods 54.30,71
Prepare to fight
accept Unexpected Results##8488 |goto Eversong Woods 54.30,71
step
Protect Apprentice Mirveda from the ambushers |q 8488/1 |goto Eversong Woods 54.30,71
step
talk Apprentice Mirveda##15402
turnin Unexpected Results##8488 |goto Eversong Woods 54.30,71
accept Research Notes##9255 |goto Eversong Woods 54.30,71
step
talk Ranger Sareyn##15942
turnin Defending Fairbreeze Village##9252 |goto Eversong Woods 46.90,71.80
accept Runewarden Deryan##9253 |goto Eversong Woods 46.90,71.80
step
talk Magistrix Landra Dawnstrider##16210
turnin Research Notes##9255 |goto Eversong Woods 44.00,70.80
step
talk Vinemaster Suntouched##16442
buy Suntouched Special Reserve##22775 |q 9067/1 |goto Silvermoon City/0 79.50,58.50
step
talk Zalene Firstlight##16443
buy Springpaw Appetizers##22776 |q 9067/2 |goto Eversong Woods/0 60.40,62.50
step
talk Lieutenant Dawnrunner##15399
turnin Farstrider Retreat##9359 |goto Eversong Woods/0 60.30,62.80
accept Amani Encroachment##8476 |goto Eversong Woods/0 60.30,62.80
step
talk Arathel Sunforge##15400
accept The Spearcrafter's Hammer##8477 |goto Eversong Woods/0 59.50,62.60
step
talk Magister Duskwither##15951
accept The Magister's Apprentice##8888 |goto Eversong Woods/0 60.30,61.40
step
talk Apprentice Loralthalis##15924
turnin The Magister's Apprentice##8888 |goto Eversong Woods/0 67.80,56.50
accept Deactivating the Spire##8889 |goto Eversong Woods/0 67.80,56.50
accept Where's Wyllithen?##9394 |goto Eversong Woods/0 67.80,56.50
step
Click the Orb of Translocation |goto Eversong Woods/0 68.90,52.00
It will teleport you up to the building |goto Eversong Woods/0 67.50,52.10,0.30 |noway |c
step
Click the Duskwither Spire Power Sources
|tip The Power Sources are huge green floating crystals in this building.
Deactivate the First Power Source |q 8889/1 |goto Eversong Woods/0 68.90,51.90
step
Click the Duskwither Spire Power Source
|tip The Second Power Source is on the second floor.
Deactivate the Second Power Source |q 8889/2 |goto Eversong Woods/0 68.90,51.90
step
Click Magister Duskwither's Journal
|tip Magister Duskwither's Journal is a blue book sitting on a small stool next to the Second Power Source crystal.
accept Abandoned Investigations##8891 |goto Eversong Woods/0 69.20,52.10
step
Click the Duskwither Spire Power Source
|tip It's a huge green crystal all the way at the top of this building, up a huge staircase.
Deactivate the Third Power Source |q 8889/3 |goto Eversong Woods/0 69.70,53.30
Click the Orb of Translocation
It will teleport you back down |goto Eversong Woods,68.90,52.00,0.10 |noway |c
step
talk Groundskeeper Wyllithen##15969
turnin Where's Wyllithen?##9394 |goto Eversong Woods 68.70,46.90
accept Cleaning up the Grounds##8894 |goto Eversong Woods 68.70,46.90
step
kill 6 Mana Serpent |q 8894/1 |goto Eversong Woods 69.50,48.10
kill 6 Ether Fiend |q 8894/2 |goto Eversong Woods 69.50,48.10
step
talk Groundskeeper Wyllithen##15969
turnin Cleaning up the Grounds##8894 |goto Eversong Woods 68.70,46.90
step
talk Apprentice Loralthalis##15924
turnin Deactivating the Spire##8889 |goto Eversong Woods 67.80,56.50
accept Word from the Spire##8890 |goto Eversong Woods 67.80,56.50
step
talk Magister Duskwither##15951
turnin Word from the Spire##8890 |goto Eversong Woods 60.30,61.40
turnin Abandoned Investigations##8891 |goto Eversong Woods 60.30,61.40
step
kill Spearcrafter Otembe##15408
collect Otembe's Hammer##20759 |q 8477/1 |goto Eversong Woods 70,72.30
step
talk Ven'jashi##15406
accept Zul'Marosh##8479 |goto Eversong Woods 70.50,72.30
step
kill Chieftain Zul'Marosh##15407
collect Chieftain Zul'Marosh's Head##20760 |q 8479/1 |goto Eversong Woods 62.60,79.70
collect Amani Invasion Plans##23249
Click the Amani Invasion Plans in your bags |use Amani Invasion Plans##23249
accept Amani Invasion##9360
step
talk Ven'jashi##15406
turnin Zul'Marosh##8479 |goto Eversong Woods 70.50,72.30
step
kill 5 Amani Berserker |q 8476/1 |goto Eversong Woods 70,72.30
kill 5 Amani Axe Thrower |q 8476/2 |goto Eversong Woods 70,72.30
step
talk Lieutenant Dawnrunner##15399
turnin Amani Encroachment##8476 |goto Eversong Woods 60.30,62.80
turnin Amani Invasion##9360 |goto Eversong Woods 60.30,62.80
accept Warning Fairbreeze Village##9363 |goto Eversong Woods 60.30,62.80
step
talk Arathel Sunforge##15400
turnin The Spearcrafter's Hammer##8477 |goto Eversong Woods 59.50,62.60
step
talk Ranger Degolien##15939
turnin Warning Fairbreeze Village##9363 |goto Eversong Woods 43.30,70.80
step
talk Lord Saltheril##16144
turnin The Party Never Ends##9067 |goto Eversong Woods 38.10,73.60
step
talk Runewarden Deryan##16362
turnin Runewarden Deryan##9253 |goto Eversong Woods 44.20,85.50
accept Powering our Defenses##8490 |goto Eversong Woods 44.20,85.50
step
Use your Infused Crystal next to the huge stone with a big blue symbol on it |use Infused Crystal##22693
Protect the Infused Crystal from the mobs that come for 1 minute
Energize the Runestone |q 8490/1 |goto Eversong Woods 55.40,84.20
step
talk Runewarden Deryan##16362
turnin Powering our Defenses##8490 |goto Eversong Woods 44.20,85.50
step
talk Apothecary Thedra##16196
accept The Fallen Courier##9147 |goto Eversong Woods,49.00,89.00
step
kill Starving Ghostclaw##16347+, Mistbat##16353+
collect 4 Plagued Blood Sample##22570 |q 9147/1 |goto Ghostlands,49.30,12.60
step
talk Apothecary Thedra##16196
turnin The Fallen Courier##9147 |goto Eversong Woods,49.00,89.00
step
talk Courier Dawnstrider##16183
accept Delivery to Tranquillien##9148 |goto Eversong Woods 49.00,89.00
step
talk Arcanist Vandril##16197
turnin Delivery to Tranquillien##9148 |goto Ghostlands,46.30,28.40
accept The Forsaken##9327 |goto Ghostlands,46.30,28.40
step
talk Skymaster Sunwing##16189
fpath Tranquillien |goto Ghostlands 45.40,30.50
step
talk High Executor Mavren##16252
turnin The Forsaken##9327 |goto Ghostlands 44.80,32.50
accept Return to Arcanist Vandril##9758 |goto Ghostlands 44.80,32.50
step
talk Arcanist Vandril##16197
turnin Return to Arcanist Vandril##9758 |goto Ghostlands 46.30,28.40
accept Suncrown Village##9138 |goto Ghostlands 46.30,28.40
step
talk Rathis Tomber##16224
accept Tomber's Supplies##9152 |goto Ghostlands 47.30,28.60
step
talk Innkeeper Kalarin##16542
home Tranquillien |goto Ghostlands 48.90,32.40
step
talk Apothecary Renzithen##16198
accept The Plagued Coast##9149 |goto Ghostlands 47.70,34.90
step
kill 10 Nerubis Guard |q 9138/1 |goto Ghostlands 60.60,14.00
step
talk Arcanist Vandril##16197
turnin Suncrown Village##9138 |goto Ghostlands 46.30,28.40
accept Goldenmist Village##9139 |goto Ghostlands 46.30,28.40
step
Click Rathis Romber's Supplies
|tip It's a wooden crate sitting in a wagon with a purple canopy over it.
collect Rathis Tomber's Supplies##22583 |q 9152/1 |goto Ghostlands 33.60,26.50
step
kill 6 Quel'dorei Ghost |q 9139/1 |goto Ghostlands 27.30,16.20
kill 4 Quel'dorei Writh |q 9139/2 |goto Ghostlands 27.30,16.20
step
kill Withered Grimscale##16403+, Zombified Grimscale##16402+
collect 6 Plagued Murloc Spine##22579 |q 9149/1 |goto Ghostlands 20.50,21.40
step
talk Rathis Tomber##16224
turnin Tomber's Supplies##9152 |goto Ghostlands 47.10,28.30
step
talk Arcanist Vandril##16197
turnin Goldenmist Village##9139 |goto Ghostlands 46.30,28.40
accept Windrunner Village##9140 |goto Ghostlands 46.30,28.40
step
talk Magister Darenis##16199
accept Salvaging the Past##9150 |goto Ghostlands 46.00,32.00
step
talk Ranger Lethvalin##16213
accept Help Ranger Valanna!##9145 |goto Ghostlands 45.50,32.50
step
talk Dame Auriferous##16231
accept Investigate An'daroth##9160 |goto Ghostlands 44.90,32.50
step
talk Deathstalker Maltendis##16251
accept Trouble at the Underlight Mines##9192 |goto Ghostlands 44.80,32.30
step
talk Deathstalker Rathiel##16200
accept Down the Dead Scar##9155 |goto Ghostlands 46.00,33.60
step
talk Apothecary Renzithen##16198
turnin The Plagued Coast##9149 |goto Ghostlands 47.70,34.90
step
talk Master Chef Mouldier##16253
accept Culinary Crunch##9171 |goto Ghostlands 48.40,30.90
stickystart "arcanedevour"
step
kill 10 Risen Hungerer |q 9155/1 |goto Ghostlands 40.50,33.50
kill 10 Gangled Cannibal |q 9155/2 |goto Ghostlands 40.50,33.50
More can be found around 38.30,36.50
step
label "arcanedevour"
kill Arcane Devourer##+, Mana Shifter##+,
collect 8 Crystallized Mana Essence##22580 |q 9150/1 |goto Ghostlands 35.90,32.90
step
kill Spindleweb Spider##16350
collect 5 Crunchy Spider Leg##22644 |q 9171/1 |goto Ghostlands 27.60,31.10
step
The path up to Investigate An'daroth starts here |goto Ghostlands,37.70,19.30,0.50 |c
step
Go to this spot
|tip Get near the intertwined tree lamp in the middle of the camp.
Investigate An'daroth |q 9160/1 |goto Ghostlands 35.40,12.40
kill 12 Sentinel Spy |q 9160/2 |goto Ghostlands 35.40,12.40
step
talk Master Chef Mouldier##16253
turnin Culinary Crunch##9171 |goto Ghostlands 48.00,31.00
step
talk Magister Darenis##16199
turnin Salvaging the Past##9150 |goto Ghostlands 46.00,32.00
step
talk Dame Auriferous##16231
turnin Investigate An'daroth##9160 |goto Ghostlands 44.90,32.50
accept Into Occupied Territory##9163 |goto Ghostlands 44.90,32.50
step
talk Deathstalker Maltendis##16251
accept Troll Juju##9199 |goto Ghostlands 44.70,32.30
step
talk Advisor Valwyn##16289
accept Investigate the Amani Catacombs##9193 |goto Ghostlands 44.80,32.80
step
talk Deathstalker Rathiel##16200
turnin Down the Dead Scar##9155 |goto Ghostlands 46.00,33.60
step
talk Apprentice Shatharia##16293
accept Underlight Ore Samples##9207 |goto Ghostlands 31.40,48.30
step
kill 8 Blackpaw Gnoll |q 9192/1 |goto Ghostlands 29.70,46.90
kill 6 Blackpaw Scavenger |q 9192/2 |goto Ghostlands 29.70,46.90
kill 4 Blackpaw Shaman |q 9192/3 |goto Ghostlands 29.70,46.90
collect 6 Underlight Ore##22634 |q 9207/1 |goto Ghostlands 29.70,46.90
step
kill Phantasmal Seeker##16323+
collect 6 Phantasmal Substance##22566 |q 9140/1 |goto Ghostlands 18.80,46.10
kill Stonewing Slayer##16324+
collect 4 Gargoyle Fragment##22567 |q 9140/2 |goto Ghostlands 18.80,46.10
step
Click the Night Elf Plans: An'daroth
|tip It's a scroll laying flat on a small round table next to a tall purple tent.
collect Night Elf Plans: An'daroth##22590 |q 9163/1 |goto Ghostlands 12.60,26.50
It can also spawn at [13.70,26.80]
step
Click the Night Elf Plans: An'owyn
|tip It's a scroll laying flat on the ground inside a purple tent.
collect Night Elf Plans: An'owyn##22591 |q 9163/2 |goto Ghostlands 12.90,23.90
It can also spawn at [12.50,24.80]
step
Click the Night Elf Plans: Scrying on the Sin'dorei
|tip It's a rolled up scroll laying on a small round table at the top of the boat.
collect Night Elf Plans: Scrying on the Sin'dorei##22592 |q 9163/3 |goto Ghostlands 10.50,22.60
step
talk Arcanist Vandril##16197
turnin Windrunner Village##9140 |goto Ghostlands 46.30,28.40
step
talk Dame Auriferous##16231
turnin Into Occupied Territory##9163 |goto Ghostlands 44.90,32.50
accept Deliver the Plans to An'telas##9166 |goto Ghostlands 44.90,32.50
step
talk Deathstalker Maltendis##16251
turnin Trouble at the Underlight Mines##9192 |goto Ghostlands 44.70,32.30
step
talk High Executor Mavren##16252
accept Retaking Windrunner Spire##9173 |goto Ghostlands 44.80,32.50
step
talk Magistrix Aminel##16205
accept Spinal Dust##9218 |goto Ghostlands 48.90,31.30
accept Rotting Hearts##9216 |goto Ghostlands 48.90,31.30
step
talk Dying Blood Elf##16601
accept Anok'suten##9315 |goto Ghostlands 57.60,14.90
step
kill Anok'suten
|tip He's a big purple insect that walks all around this village.  You may need to search for him. |q 9315/1 |goto Ghostlands 61.30,15.90
step
talk Ranger Valanna##16219
turnin Help Ranger Valanna!##9145 |goto Ghostlands 69.40,15.20
accept Dealing with Zeb'Sora##9143 |goto Ghostlands 69.40,15.20
step
kill Shadowpine Ripper##+, Shadowpine Witch##+
collect 6 Zeb'Sora Troll Ear##22639 |q 9143/1 |goto Ghostlands 74.80,12.30
step
talk Ranger Valanna##16219
turnin Dealing with Zeb'Sora##9143 |goto Ghostlands 69.40,15.20
accept Report to Captain Helios##9146 |goto Ghostlands 69.40,15.20
step
talk Geranis Whitemorn##16201
accept Forgotten Rituals##9157 |goto Ghostlands 72.30,19.10
step
talk Farstrider Sedina##16202
accept Bearers of the Plague##9158 |goto Ghostlands 72.50,32.10
step
talk Farstrider Solanna##16463
accept Attack on Zeb'Tela##9276 |goto Ghostlands 72.30,31.30
step
talk Captain Helios##16220
turnin Report to Captain Helios##9146 |goto Ghostlands 72.40,29.60
accept Shadowpine Weaponry##9214 |goto Ghostlands 72.40,29.60
step
talk Ranger Krenn'an##16462
accept Spirits of the Drowned##9274 |goto Ghostlands 72.20,29.80
step
talk Ranger Vynna##16203
accept The Traitor's Shadow##9161 |goto Ghostlands 72.00,32.60
step
kill 8 Ravening Apparition |q 9274/1 |goto Ghostlands 73.50,21.90
kill 8 Vengeful Apparition |q 9274/2 |goto Ghostlands 73.50,21.90
Click Glistening Mud
|tip They look like piles of dirt underwater all around this area.
collect 8 Wavefront Medallion##22674 |q 9157/1 |goto Ghostlands 73.50,21.90
step
talk Geranis Whitemorn##16201
turnin Forgotten Rituals##9157 |goto Ghostlands 72.30,19.10
accept Vanquishing Aquantion##9174 |goto Ghostlands 72.30,19.10
step
Click the Altar of Tidal Mastery
|tip It looks like stone statue of a serpent lady underwater.
kill Aquantion |q 9174/1 |goto Ghostlands 71.30,15.10
step
talk Geranis Whitemorn##16201
turnin Vanquishing Aquantion##9174 |goto Ghostlands 72.30,19.10
step
Click the Dusty Journal
|tip It looks like an open book laying on the balcony platform of this building.
turnin The Traitor's Shadow##9161 |goto Ghostlands 79.60,17.60
accept Hints of the Past##9162 |goto Ghostlands 79.60,17.60
step
kill 10 Ghostclaw Lynx |q 9158/1 |goto Ghostlands 75.80,28.40
The Ghostclaw Lynx share spawn points with the bats
step
talk Farstrider Sedina##16202
turnin Bearers of the Plague##9158 |goto Ghostlands 72.50,32.10
accept Curbing the Plague##9159 |goto Ghostlands 72.50,32.10
step
talk Ranger Krenn'an##16462
turnin Spirits of the Drowned##9274 |goto Ghostlands 72.20,29.80
step
talk Ranger Vynna##16203
turnin Hints of the Past##9162 |goto Ghostlands 72.00,32.60
accept Report to Magister Kaendris##9172 |goto Ghostlands 72.00,32.60
step
talk Apothecary Venustus##16464
accept A Little Dash of Seasoning##9275 |goto Ghostlands 72.60,31.60
stickystart "shadowshadow"
step
kill 10 Vampiric Mistbat |q 9159/1 |goto Ghostlands 73.90,38.00
step
label "shadowshadow"
kill 8 Shadowpine Shadowcaster |q 9276/1 |goto Ghostlands 78.60,38.10
collect 3 Shadowcaster Mace##23167 |q 9214/2 |goto Ghostlands 78.60,38.10
kill 8 Shadowpine Headhunter |q 9276/2 |goto Ghostlands 78.60,38.10
collect 3 Headhunter Axe##23165 |q 9214/1 |goto Ghostlands 78.60,38.10
step
talk Farstrider Solanna##16463
turnin Attack on Zeb'Tela##9276 |goto Ghostlands 72.30,31.30
accept Assault on Zeb'Nowa##9277 |goto Ghostlands 72.30,31.30
step
talk Arcanist Vandril##16197
turnin Anok'suten##9315 |goto Ghostlands 46.30,28.40
step
kill Risen Stalker##16302+, Risen Hungerer##16301+
collect 10 Rotting Heart##22641 |q 9216/1 |goto Ghostlands 39.20,36.30
There are more undead to kill at [37.80,45.80]
step
kill 8 Spindleweb Lurker |q 9159/2 |goto Ghostlands 29.80,40.90
There will be more around [26.40,53.50]
step
kill 8 Deatholme Acolyte |q 9173/1 |goto Ghostlands 17,59
kill 10 Fallen Ranger |q 9173/2 |goto Ghostlands 17,59
step
kill Deatholme Acolyte##16315+, Fallen Ranger##16314+
collect The Lady's Necklace##22597 |n
Click The Lady's Necklace in your bags |use The Lady's Necklace##22597
accept The Lady's Necklace##9175
step
talk Magistrix Aminel##16205
turnin Rotting Hearts##9216 |goto Ghostlands 48.90,31.30
step
talk Magister Darenis##16199
accept The Sanctum of the Sun##9151 |goto Ghostlands 46.00,31.90
step
talk High Executor Mavren##16252
turnin The Lady's Necklace##9175 |goto Ghostlands 44.80,32.40
turnin Retaking Windrunner Spire##9173 |goto Ghostlands 44.80,32.40
step
The path over to the Sanctum of the Sun starts here |goto Ghostlands,53.10,49.00,0.50 |c
step
talk Magister Kaendris##16239
turnin Report to Magister Kaendris##9172 |goto Ghostlands 55.10,48.80
accept The Twin Ziggurats##9176 |goto Ghostlands 55.10,48.80
step
talk Magister Quallestis##16291
turnin Underlight Ore Samples##9207 |goto Ghostlands 54.90,48.50
step
talk Magister Idonis##16204
turnin The Sanctum of the Sun##9151 |goto Ghostlands 54.90,48.50
accept War on Deatholme##9220 |goto Ghostlands 54.90,48.50
step
Go to |goto Ghostlands 57.10,45.00 |c
step
The path to Magister Sylastor starts here |goto Ghostlands,60.70,42.70 |c
step
talk Magister Sylastor##16237
turnin Deliver the Plans to An'telas##9166 |goto Ghostlands 60.30,35.60
accept Deactivate An'owyn##9169 |goto Ghostlands 60.30,35.60
stickystart "hexstav"
step
kill Sentinel Infiltrator##16333+
collect Crystal Controlling Orb##23191 |goto Ghostlands 57.80,64.90
step
Click the Night Elf Moon Crystal
|tip It's a big white glowing ball sitting on top of a wooden and stone statue.
Deactivate the Night Elf Moon Crystal |q 9169/1 |goto Ghostlands 58.00,65.10
step
Click the Raw Meat Rack
|tip It looks like a wooden rack with bloody meat hanging on it.
Poison the Raw Meat Rack |q 9275/1 |goto Ghostlands 65.10,66.80
step
Click the Smoked Meat Rack
|tip It looks like a metal rack with 2 shelves with red meat sitting on them.
Poison the Smoked Meat Rack |q 9275/2 |goto Ghostlands 63.00,75.00
step
Click the Fresh Fish Rack
|tip It looks like a wooden standing with fish hanging from it inside this big hut.
Poison the Fresh Fish Rack |q 9275/3 |goto Ghostlands 68.30,57.80
step
label "hexstav"
kill 10 Shadowpine Catlord |q 9277/1 |goto Ghostlands 66.90,58.60
collect 3 Catlord Claws##22677 |q 9214/3 |goto Ghostlands 66.90,58.60
kill 10 Shadowpine Hexxer |q 9277/2 |goto Ghostlands 66.90,58.60
collect 3 Hexxer Stave##23166 |q 9214/4 |goto Ghostlands 66.90,58.60
More can be found around 63.50,67.40 |goto Ghostlands 66.90,58.60
step
talk Farstrider Sedina##16202
turnin Curbing the Plague##9159 |goto Ghostlands 72.50,32.10
step
talk Farstrider Solanna##16463
turnin Assault on Zeb'Nowa##9277 |goto Ghostlands 72.30,31.20
step
talk Captain Helios##16220
turnin Shadowpine Weaponry##9214 |goto Ghostlands 72.40,29.60
step
talk Apothecary Venustus##16464
turnin A Little Dash of Seasoning##9275 |goto Ghostlands 72.60,31.60
stickystart "troljuju"
step
The path to the Amani Catacombs starts here |goto Ghostlands,67.70,28.90 < 5 |only if walking
Enter the Amani Catacombs |goto Ghostlands,66.20,28.50 < 5 |walk
Click Mummified Troll Remains and burn them
|tip They look like mummies laying on the ground inside the catacombs.
Go to this spot
Investigate the Amani Catacombs |q 9193/1 |goto Ghostlands 62.90,31.10
step
label "troljuju"
kill Mummified Headhunter##16342+, Shadowpine Oracle##16343+
collect 8 Troll Juju##22633 |q 9199/1 |goto Ghostlands 62.80,31.80
Click Mummified Troll Remains
|tip They look like mummies laying on the ground along the wall of the catacombs.
Burn 10 Mummified Troll Remains |q 9193/2 |goto Ghostlands 62.80,31.80
There are more Mummified Troll Remains in the hallway at [64.90,28.50]
step
talk Ranger Lilatha##16295
accept Escape from the Catacombs##9212 |goto Ghostlands 62.90,32.70
Escort Ranger Lilatha back to Farstrider Enclave |q 9212/1 |goto Ghostlands 62.90,32.70
step
talk Captain Helios##16220
turnin Escape from the Catacombs##9212 |goto Ghostlands 72.40,29.60
step
The path to Magister Sylastor starts here |goto Ghostlands,60.70,42.70 |c
step
talk Magister Sylastor##16237
turnin Deactivate An'owyn##9169 |goto Ghostlands 60.30,35.60
step
talk Deathstalker Maltendis##16251
turnin Troll Juju##9199 |goto Ghostlands 44.70,32.30
step
talk Advisor Valwyn##16289
turnin Investigate the Amani Catacombs##9193 |goto Ghostlands 44.80,32.80
step
Click the Worn Chest
|tip It's a gray chest inside this temple looking building.
collect Stone of Flame##22599 |q 9176/1 |goto Ghostlands 40.40,49.80
step
Click the Dented Chest
|tip It's a gray chest inside this temple looking building.
collect Stone of Light##22598 |q 9176/2 |goto Ghostlands 34.30,47.70
step
kill Dreadbone Sentinel##16305+, Deathcage Sorcerer##16308+
collect 10 Spinal Dust##22642 |q 9218/1 |goto Ghostlands 38.10,58.60
There are more Dreadbone Sentinel and Deathcage Sorcerers south at [36.30,68.80]
step
The path into Deatholme starts here |goto Ghostlands,36.00,71.70 < 5 |walk
kill 6 Nerubis Centurion |q 9220/2 |goto Ghostlands 36.90,76.10
There are a few more around [39.20,79.70]
step
kill 5 Eye of Dar'Khan |q 9220/1 |goto Ghostlands 37.80,81.30
kill 6 Wailer |q 9220/3 |goto Ghostlands 37.80,81.30
step
talk Apprentice Vor'el##16480
accept Clearing the Way##9281 |goto Ghostlands 46.40,56.40
step
kill 10 Greater Spindleweb |q 9281/1 |goto Ghostlands 46.90,60.40
kill 10 Ghostclaw Ravager |q 9281/2 |goto Ghostlands 46.90,60.40
You can find more Greater Spindlewebs and Ghostclaw Ravagers:
Around [56.40,59.90]
Around [42.80,55.80]
Around [41.70,64.90]
step
talk Apprentice Vor'el##16480
turnin Clearing the Way##9281 |goto Ghostlands 46.40,56.40
step
talk Magister Kaendris##16239
turnin The Twin Ziggurats##9176 |goto Ghostlands 55.10,48.80
step
talk Magister Idonis##16204
turnin War on Deatholme##9220 |goto Ghostlands 54.90,48.60
accept Dar'Khan's Lieutenants##9170 |goto Ghostlands 54.90,48.60
step
talk Arcanist Janeda##16240
accept A Restorative Draught##9877 |goto Ghostlands 54.80,48.40
step
talk Apothecary Renzithen##16198
turnin A Restorative Draught##9877 |goto Ghostlands 47.70,34.90
accept Captives at Deatholme##9164 |goto Ghostlands 47.70,34.90
step
talk Magistrix Aminel##16205
turnin Spinal Dust##9218 |goto Ghostlands 48.90,31.30
step
The path into Deatholme starts here |goto Ghostlands,35.80,72.30 < 5 |walk
Go inside the crypt |goto Ghostlands,31.70,73.70 < 5 |walk
kill Jurion the Deceiver |q 9170/3 |goto Ghostlands 32.10,74.30
step
talk Apothecary Enith##16208
<Administer the restorative draught.>
Rescue Apothecary Enith |q 9164/1 |goto Ghostlands 32.10,74.00
step
kill Mirdoran the Fallen |q 9170/1 |goto Ghostlands 37.40,79.30
step
kill Masophet th Black |q 9170/4 |goto Ghostlands 35.80,89.10
step
kill Borgoth the Bloodletter |q 9170/2 |goto Ghostlands 32.70,90.50
step
talk Ranger Vedoran##16209
<Administer the restorative draught.>
Rescue Ranger Vedoran |q 9164/3 |goto Ghostlands 32.80,89.80
step
talk Apprentice Varnis##16206
<Administer the restorative draught.>
Rescue Apprentice Varnis |q 9164/2 |goto Ghostlands 40.80,83.20
step
talk Magister Idonis##16204
turnin Dar'Khan's Lieutenants##9170 |goto Ghostlands 54.90,48.50
step
talk Arcanist Janeda##16240
turnin Captives at Deatholme##9164 |goto Ghostlands 54.80,48.40
step
map Eversong Woods
To continue gaining reputation with the Silvermoon City faction:
You can buy a Silvermoon City Tabard from Magistrix Nizara in Eversong Woods at [54.50,50.90]
|tip Wear the Silvermoon City Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Required Home Cities Reputation\\Thunder Bluff\\Tauren",{
description="This guide will help you to get Exalted reputation with the Thunder Bluff faction. You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.",
mounts={63641},
},[[
step
You will not be able to do some of the quests in this section if you are not a Tauren.
confirm
step
talk Chief Hawkwind##2981
accept The First Step##14449 |goto Mulgore,45.10,75.50
step
talk Grull Hawkwind##2980
turnin The First Step##14449 |goto Mulgore 48.90,78.40
accept Rite of Strength##14452 |goto Mulgore 48.90,78.40
step
kill Bristleback Invader##36943+
kill 8 Bristleback Quilboar |q 14452/1 |goto Mulgore 51.70,79.90
step
talk Grull Hawkwind##2980
turnin Rite of Strength##14452 |goto Mulgore 48.90,78.40
accept Our Tribe, Imprisoned##24852 |goto Mulgore 48.90,78.40
step
Click Quilboar Cages
|tip They look like yellow cages around this area.
Free 4 Braves |q 24852/1 |goto Mulgore 52.00,77.20
step
talk Grull Hawkwind##2980
turnin Our Tribe, Imprisoned##24852 |goto Mulgore 49.00,78.40
accept Go to Adana##14458 |goto Mulgore 49.00,78.40
step
talk Adana Thunderhorn##36694
turnin Go to Adana##14458 |goto Mulgore 46.20,82.70
accept Rite of Courage##14456 |goto Mulgore 46.20,82.70
accept Stop the Thorncallers##14455 |goto Mulgore 46.20,82.70
step
kill 7 Bristleback Thorncaller |q 14455/1 |goto Mulgore 47.80,88.30
kill Bristleback Gun Thief##36708+
collect 7 Stolen Rifle##49535 |q 14456/1 |goto Mulgore 47.80,88.30
step
talk Adana Thunderhorn##36694
turnin Rite of Courage##14456 |goto Mulgore 46.20,82.70
turnin Stop the Thorncallers##14455 |goto Mulgore 46.20,82.70
accept The Battleboars##14459 |goto Mulgore 46.20,82.70
accept Feed of Evil##14461 |goto Mulgore 46.20,82.70
stickystart "armorbattle"
step
Use Adana's Torch next to the tub of meat |use Adana's Torch##49539
|tip It looks like a wooden tub of pink meat.
Burn the First Trough |q 14461/1 |goto Mulgore 44.70,87.80
step
Use Adana's Torch next to the tub of meat |use Adana's Torch##49539
|tip It looks like a wooden tub of pink meat.
Burn the Second Trough |q 14461/2 |goto Mulgore 44.30,88.70
step
label "armorbattle"
Use Adana's Torch next to the tub of meat |use Adana's Torch##49539
|tip It looks like a wooden tub of pink meat.
Burn the Third Trough |q 14461/3 |goto Mulgore 45.30,89.10
kill 10 Armored Battleboar |q 14459/1 |goto Mulgore 45.30,89.10
step
talk Adana Thunderhorn##36694
turnin The Battleboars##14459 |goto Mulgore 46.20,82.70
turnin Feed of Evil##14461 |goto Mulgore 46.20,82.70
accept Rite of Honor##14460 |goto Mulgore 46.20,82.70
step
kill Chief Squealer Thornmantle##36712
collect Mane of Thornmantle##50473 |q 14460/1 |goto Mulgore 41.10,81.40
step
talk Chief Hawkwind##2981
turnin Rite of Honor##14460 |goto Mulgore 45.10,75.50
accept Last Rites, First Rites##24861 |goto Mulgore 45.10,75.50
step
Use your Water Pitcher under the wooden burial stand |use Water Pitcher##50465
Place the Offering |q 24861/1 |goto Mulgore 45.10,75.30
step
talk Chief Hawkwind##2981
turnin Last Rites, First Rites##24861 |goto Mulgore 45.10,75.50
accept Rites of the Earthmother##23733 |goto Mulgore 45.10,75.50
step
The path up to Dyami Windsoar starts here |goto Mulgore,42.50,77.30 < 5 |walk
talk Dyami Windsoar##36803
turnin Rites of the Earthmother##23733 |goto Mulgore 41.20,76.10
accept Rite of the Winds##24215 |goto Mulgore 41.20,76.10
step
Use your Water of Vision in your bags |use Water of Vision##49652
You will fly to Bloodhoof Village |goto Mulgore,47.80,59.90,0.50 |noway |c |q 24215
step
talk Ahmo Thunderhorn##36644
turnin Rite of the Winds##24215 |goto Mulgore 47.70,59.60
accept Sharing the Land##14438 |goto Mulgore 47.70,59.60
step
talk Mull Thunderhorn##2948
accept Poison Water##20440 |goto Mulgore 48.60,59.80
only Tauren
step
talk Harken Windtotem##2947
accept Swoop Hunting##761 |goto Mulgore 48.80,58.80
step
talk Tak##40809
fpath Bloodhoof Village |goto Mulgore 47.40,58.60
step
talk Innkeeper Kauth##6747
home Bloodhoof Village |goto Mulgore 46.80,60.40
step
talk Ahab Wheathoof##23618
accept Kyle's Gone Missing!##11129 |goto Mulgore 48.30,53.10
step
kill Adult Plainstrider##2956+
collect 4 Plainstrider Talon##4759 |q 20440/2 |goto Mulgore 55.30,63.10 |only Tauren
collect 1 Tender Strider Meat##33009 |q 11129 |goto Mulgore 55.30,63.10
kill Swoop##2970+
collect 8 Trophy Swoop Quill##4769 |q 761/1 |goto Mulgore 55.30,63.10
kill Prairie Wolf##2958+ |only Tauren
collect 6 Prairie Wolf Paw##4758 |q 20440/1 |goto Mulgore 55.30,63.10 |only Tauren
step
kill Palemane Skinner##2950+, Palemane Poacher##2951+, Palemane Tanner##2949+
kill 15 Palemane Gnoll |q 14438/1 |goto Mulgore 53.00,71.00
step
talk Ahmo Thunderhorn##36644
turnin Sharing the Land##14438 |goto Mulgore 47.70,59.60
accept The Restless Earth##14491 |goto Mulgore 47.70,59.60
accept Morin Cloudstalker##24459 |goto Mulgore 47.70,59.60
step
talk Ruul Eagletalon##2985
accept Dangers of the Windfury##743 |goto Mulgore 47.50,61.30
step
talk Mull Thunderhorn##2948
turnin Poison Water##20440 |goto Mulgore 48.60,59.80
accept Winterhoof Cleansing##24440 |goto Mulgore 48.60,59.80
only Tauren
step
talk Harken Windtotem##2947
turnin Swoop Hunting##761 |goto Mulgore 48.80,58.80
step
talk Maur Raincaller##3055
accept Mazzranache##26188 |goto Mulgore 47.20,56.70
step
Use Tender Strider Meat on Kyle the Frenzied when Kyle is running nearby |use Tender Strider Meat##33009
|tip Kyle the Frenzied is a white wolf that runs around Bloodhoof Village, so you may need to search for him.
Feed Kyle |q 11129/1 |goto Mulgore 48.60,61.40
step
Use your Winterhoof Cleansing Totem next to the well |use Winterhoof Cleansing Totem##5411
Cleanse the Well |q 24440/1 |goto Mulgore 53.40,65.30
only Tauren
step
talk Morin Cloudstalker##2988
turnin Morin Cloudstalker##24459 |goto Mulgore 57.10,60.40
accept The Ravaged Caravan##749 |goto Mulgore 57.10,60.40
step
kill Windfury Wind Witch##2963+, Windfury Harpy##2962+
collect 8 Windfury Talon##4751 |q 743/1 |goto Mulgore 62.70,69.00
step
talk Ruul Eagletalon##2985
turnin Dangers of the Windfury##743 |goto Mulgore 47.50,61.30
step
talk Mull Thunderhorn##2948
turnin Winterhoof Cleansing##24440 |goto Mulgore 48.60,59.80
accept Thunderhorn Totem##24441 |goto Mulgore 48.60,59.80
only Tauren
step
talk Ahab Wheathoof##23618
turnin Kyle's Gone Missing!##11129 |goto Mulgore 48.30,53.10
step
Click the Sealed Supply Crate
|tip It's a crate sitting on the ground next to a bonfire.
turnin The Ravaged Caravan##749 |goto Mulgore 53.50,48.30
accept The Ravaged Caravan##751 |goto Mulgore 53.50,48.30
step
kill Prairie Stalker##2959+
collect 6 Stalker Claws##4801 |q 24441/1 |goto Mulgore 55.20,48.20
kill Flatland Cougar##3035+
collect Flatland Cougar Femur##4805 |q 26188/1 |goto Mulgore 55.20,48.20
collect 6 Cougar Claws##4802 |q 24441/2 |goto Mulgore 55.20,48.20
You can find more around [57.10,44.90]
step
talk Morin Cloudstalker##2988
turnin The Ravaged Caravan##751 |goto Mulgore 57.10,60.40
accept The Venture Co.##26179 |goto Mulgore 57.10,60.40
accept Supervisor Fizsprocket##26180 |goto Mulgore 57.10,60.40
stickystart "venturwork"
step
The entrance to the mine starts here |goto Mulgore,60.80,47.40 < 5 |walk
kill Supervisor Fizsprocket##3051
collect Fizsprocket's Clipboard##4819 |q 26180/1 |goto Mulgore 61.10,46.50
step
label "venturwork"
Leave the mine |goto Mulgore,60.80,47.40 < 5 |walk
kill 7 Venture Co. Worker |q 26179/1 |goto Mulgore 59.50,50.00
step
talk Morin Cloudstalker##2988
turnin The Venture Co.##26179 |goto Mulgore 57.10,60.40
turnin Supervisor Fizsprocket##26180 |goto Mulgore 57.10,60.40
step
talk Mull Thunderhorn##2948
turnin Thunderhorn Totem##24441 |goto Mulgore 48.60,59.80
accept Thunderhorn Cleansing##24456 |goto Mulgore 48.60,59.80
only Tauren
step
talk Varg Windwhisper##3079
accept A Bundle of Hides##6361 |goto Mulgore 46.10,58.20
only Tauren
step
talk Tak##40809
turnin A Bundle of Hides##6361 |goto Mulgore 47.40,58.60
accept Ride to Thunder Bluff##6362 |goto Mulgore 47.40,58.60
only Tauren
step
talk Ahanu##8359
turnin Ride to Thunder Bluff##6362 |goto Thunder Bluff,45.80,55.90
accept Tal the Wind Rider Master##6363 |goto Thunder Bluff,45.80,55.90
only Tauren
step
talk Tal##2995
turnin Tal the Wind Rider Master##6363 |goto Thunder Bluff 47.00,49.80
accept Return to Varg##6364 |goto Thunder Bluff 47.00,49.80
only Tauren
step
talk Varg Windwhisper##3079
turnin Return to Varg##6364 |goto Mulgore,46.10,58.20
only Tauren
step
talk Maur Raincaller##3055
turnin Mazzranache##26188 |goto Mulgore 47.20,56.70
step
Use your Thunderhorn Cleansing Totem next to the well |use Thunderhorn Cleansing Totem##5415
Clean the Well |q 24456/1 |goto Mulgore 44.80,45.70
only Tauren
step
Use your Drum of Soothed Earth on Agitated Earth Spirits |use Drum of Soothed Earth##49647
|tip They look like rock elementals.
Calm 6 Spirits |q 14491/1 |goto Mulgore 33.50,48.90
step
talk Ahmo Thunderhorn##36644
turnin The Restless Earth##14491 |goto Mulgore 47.70,59.60
step
talk Mull Thunderhorn##2948
turnin Thunderhorn Cleansing##24456 |goto Mulgore 48.60,59.80
accept Rite of Vision##24457 |goto Mulgore 48.60,59.80
only Tauren
step
talk Zarlman Two-Moons##3054
turnin Rite of Vision##24457 |goto Mulgore 47.90,57.10
accept Rite of Vision##20441 |goto Mulgore 47.90,57.10
only Tauren
step
Use your Water of Vision next to the bonfire |goto Mulgore 47.90,57.10 |use Water of Vision##49651
You will run to Camp Sungraze |goto Mulgore,49.40,17.50,0.50 |noway |c |q 20441
only Tauren
step
talk Una Wildmane##37024
turnin Rite of Vision##20441 |goto Mulgore 49.40,17.30
accept Wildmane Totem##24523 |goto Mulgore 49.40,17.30
only Tauren
step
talk Lorekeeper Raintotem##3233
accept Rite of Wisdom##773 |goto Mulgore 49.50,17.10
accept A Sacred Burial##833 |goto Mulgore 49.50,17.10
step
talk Skorn Whitecloud##3052
accept The Hunter's Way##861 |goto Mulgore 49.70,17.20
step
talk Eyahn Eagletalon##2987
accept Preparation for Ceremony##744 |goto Mulgore 49.60,17.60
step
kill Prairie Wolf Alpha##2960+
collect 4 Prairie Alpha Tooth##4803 |q 24523/1 |goto Mulgore 50.10,19.80
kill Flatland Prowler##3566+
collect 4 Flatland Prowler Claw##5203 |q 861/1 |goto Mulgore 50.10,19.80
only Tauren
step
kill Windfury Matriarch##2965+
collect 6 Bronze Feather##4753 |q 744/2 |goto Mulgore 54.90,19.80
kill Windfury Sorceress##2964+
collect 6 Azure Feather##4752 |q 744/1 |goto Mulgore 54.90,19.80
step
talk Ancestral Spirit##2994
turnin Rite of Wisdom##773 |goto Mulgore 60.80,22.70
step
kill 8 Bristleback Interloper |q 833/1 |goto Mulgore 60.90,23.80
step
talk Una Wildmane##37024
turnin Wildmane Totem##24523 |goto Mulgore 49.40,17.30
accept Wildmane Cleansing##24524 |goto Mulgore 49.40,17.30
only Tauren
step
talk Lorekeeper Raintotem##3233
turnin A Sacred Burial##833 |goto Mulgore 49.50,17.10
step
talk Skorn Whitecloud##3052
turnin The Hunter's Way##861 |goto Mulgore 49.70,17.20
step
talk Eyahn Eagletalon##2987
turnin Preparation for Ceremony##744 |goto Mulgore,49.60,17.60
step
Use your Wildmane Cleansing Totem next to the well |use Wildmane Cleansing Totem##5416
Cleanse the Wildmane Well |q 24524/1 |goto Mulgore 43.30,16.10
only Tauren
step
talk Una Wildmane##37024
turnin Wildmane Cleansing##24524 |goto Mulgore 49.40,17.30
accept Journey into Thunder Bluff##24550 |goto Mulgore 49.40,17.30
only Tauren
step
talk Baine Bloodhoof##2993
turnin Journey into Thunder Bluff##24550 |goto Thunder Bluff,60.30,51.70
accept War Dance##24540 |goto Thunder Bluff,60.30,51.70
step
|goto Thunder Bluff 54.30,26.90 |n
Ride the elevator down and go outside to Mulgore |goto Mulgore |noway |c
step
kill Orno Grimtotem |q 24540/1 |goto Mulgore,37.00,12.00
|tip Don't worry that he's elite, Baine Bloodhoof will come and kill Orno Grimtotem for you.
step
talk Baine Bloodhoof##2993
turnin War Dance##24540 |goto Thunder Bluff,60.30,51.70
accept Walk With The Earth Mother##26397 |goto Thunder Bluff,60.30,51.70
step
talk Tal##2995 |goto Thunder Bluff 47.00,49.80
Tell him to send you to Orgrimmar |goto Orgrimmar |noway |c
step
talk Doras##3310
fpath Orgrimmar |goto Orgrimmar,49.70,59.20
step
talk Garrosh Hellscream##25237
turnin Walk With The Earth Mother##26397 |goto Orgrimmar 48.10,70.50
step
talk Gotura Fourwinds##35068
accept Preserving the Barrens##26642 |goto Orgrimmar 47.60,71.20
step
talk Burok##41140
fpath Razor Hill |goto Durotar,53.10,43.60
step
talk Takrin Pathseeker##3336
accept Conscript of the Horde##840 |goto Durotar 50.80,43.60
step
talk Kargal Battlescar##3337
turnin Preserving the Barrens##26642 |goto Northern Barrens,67.70,39.40
accept In Defense of Far Watch##871 |goto Northern Barrens,67.70,39.40
turnin Conscript of the Horde##840 |goto Northern Barrens,67.70,39.40
step
talk Halga Bloodeye##34258
accept Plainstrider Menace##844 |goto Northern Barrens 67.40,38.70
step
kill Greater Plainstrider##3244+
collect 7 Plainstrider Beak##5087 |q 844/1 |goto Northern Barrens 67.80,30.30
You can find more Greater Plainstriders at [64.60,41.30]
step
talk Halga Bloodeye##34258
turnin Plainstrider Menace##844 |goto Northern Barrens 67.40,38.70
step
talk Dorak##34284
accept Through Fire and Flames##13878 |goto Northern Barrens 67.10,45.50
stickystart "razplund"
step
Click Wolf Chains
|tip They look like bone spikes attach to metal chains on the ground inside the burning stable.
Free 3 Wolves |q 13878/1 |goto Northern Barrens 66.60,47.30
step
label "razplund"
kill 8 Razormane Plunderer |q 871/1 |goto Northern Barrens 66.80,49.80
kill 3 Razormane Hunter |q 871/2 |goto Northern Barrens 66.80,49.80
step
talk Dorak##34284
turnin Through Fire and Flames##13878 |goto Northern Barrens 67.10,45.50
step
talk Kargal Battlescar##3337
turnin In Defense of Far Watch##871 |goto Northern Barrens 67.70,39.40
accept The Far Watch Offensive##872 |goto Northern Barrens 67.70,39.40
step
talk Halga Bloodeye##34258
accept Supplies for the Crossroads##5041 |goto Northern Barrens 67.40,38.70
stickystart "xroadsupplies"
step
Enter the cave |goto Northern Barrens,66.00,52.50 < 5 |walk
Follow the path in the cave until it dead ends on a small platform.
kill Kreenig Snarlsnout##3438
collect Kreenig Snarlsnout's Tusk##5063 |q 872/3 |goto Northern Barrens 64.30,55.00
step
label "xroadsupplies"
kill 5 Razormane Thornweaver |q 872/1 |goto Northern Barrens 64.70,53.20
kill 5 Razormane Defender |q 872/2 |goto Northern Barrens 64.70,53.20
Click Crossroads Supply Crates
|tip They look like wooden crates on the ground inside the cave.
collect 5 Crossroads Supply Crate##12708 |q 5041/1 |goto Northern Barrens 64.70,53.20
step
Leave the cave |goto Northern Barrens,66.00,52.50 < 5 |walk
talk Kargal Battlescar##3337
turnin The Far Watch Offensive##872 |goto Northern Barrens 67.70,39.40
step
talk Halga Bloodeye##34258
turnin Supplies for the Crossroads##5041 |goto Northern Barrens 67.40,38.70
accept Crossroads Caravan Pickup##13949 |goto Northern Barrens 67.40,38.70
step
talk Halga Bloodeye##34258
Tell her you're ready
Click the Lead Caravan Kodo that walks up to ride on it
Use your Shoot ability to kill the quilboars that attack the caravan as you ride the kodo
|tip The to kill them very easily, spam the 1 button on your hotbar and press the Tab key on your keyboard to highlight them 1 at a time.
Escort the Caravan |q 13949/1 |goto Northern Barrens 67.40,38.70
step
talk Kranal Fiss##5907
turnin Crossroads Caravan Pickup##13949 |goto Northern Barrens 56.40,40.30
step
talk Rocco Whipshank##34578
accept Crossroads Caravan Delivery##13975 |goto Northern Barrens 54.60,41.50
step
talk Rocco Whipshank##34578
Tell him to bring it on
Click the Head Caravan Kodo that walks up to ride on it
Use your abilities on your hotbar on the Burning Blade mobs that attack you
|tip It's easier to just manually left click them Burning Blade mobs and spam the 1 button on your hotbar to shoot them all.  Don't bother with the melee attack at all.
Escort the Crossroads Caravan |q 13975/1 |goto Northern Barrens 49.50,59.50
step
talk Sergra Darkthorn##3338
accept The Zhevra##845 |goto Northern Barrens 50.00,59.80
accept Hunting the Huntress##903 |goto Northern Barrens 50.00,59.80
step
talk Innkeeper Boorand Plainswind##3934
home The Crossroads |goto Northern Barrens 49.60,57.90
step
talk Tonga Runetotem##3448
accept The Forgotten Pools##870 |goto Northern Barrens 49.50,58.70
step
talk Thork##3429
turnin Crossroads Caravan Delivery##13975 |goto Northern Barrens 48.70,59.60
step
talk Devrak##3615
fpath The Crossroads |goto Northern Barrens 48.70,58.70
step
talk Apothecary Helbrim##3390
accept Fungal Spores##848 |goto Northern Barrens 48.60,58.30
step
kill Savannah Huntress##3415+
collect 5 Huntress Claws##5096 |q 903/1 |goto Northern Barrens 43.20,51.60
kill Zhevra Runner##3242+
collect 4 Zhevra Hooves##5086 |q 845/1 |goto Northern Barrens 43.20,51.60
step
talk Telar Highstrider##34841
accept Kolkar Leaders##850 |goto Northern Barrens 38.10,46.30
step
talk Ta'jari##34613
accept A Little Diversion##13992 |goto Northern Barrens 37.50,45.90
step
Swim underwater to this bubbling fissure
Explore the water of the Forgotten Pools |q 870/1 |goto Northern Barrens 37.30,44.90
stickystart "kolkarstorm"
step
kill Barak Kodobane##3394
collect Kodobane's Head##5022 |q 850/1 |goto Northern Barrens 33.40,46.60
step
label "kolkarstorm"
kill Kolkar Stormer##3273+, Kolkar Wrangler##3272+
kill 8 Kolkar Centaur |q 13992/1 |goto Northern Barrens 36.70,44.50
Click Laden Mushrooms
|tip They look like big blue mushrooms around this area.
collect 5 Fungal Spores##5012 |q 848/1 |goto Northern Barrens 36.70,44.50
step
talk Ta'jari##34613
turnin A Little Diversion##13992 |goto Northern Barrens 37.50,45.90
step
talk Telar Highstrider##34841
turnin Kolkar Leaders##850 |goto Northern Barrens 38.10,46.30
step
talk Tonga Runetotem##3448
turnin The Forgotten Pools##870 |goto Northern Barrens 49.50,58.70
step
talk Sergra Darkthorn##3338
turnin The Zhevra##845 |goto Northern Barrens 50.00,59.80
turnin Hunting the Huntress##903 |goto Northern Barrens 50.00,59.80
step
talk Apothecary Helbrim##3390
turnin Fungal Spores##848 |goto Northern Barrens 48.60,58.30
step
map Thunder Bluff
To continue gaining reputation with the Thunder Bluff faction:
You can buy a Thunder Bluff Tabard from Brave Tuho in Thunder Bluff at [46.70,49.90]
|tip Wear the Thunder Bluff Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Argent Tournament Grounds Crusader Dailies",{
description="In order to be able to complete the quests in this guide section, you must already be Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions. Also, you must have already become a Champion with each of those factions, using the Crusader Title Guide in the Icecrown section of the Dailies guide.",
mounts={65639,63642,65646,63640,65641,63641,34549,63635,65645,63643},
},[[
step
talk High Crusader Adelard##34882
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
accept Deathspeaker Kharos##14105 |goto Icecrown,69.50,23.10 |or
accept Drottinn Hrothgar##14101 |goto Icecrown,69.50,23.10 |or
accept Mistcaller Yngvar##14102 |goto Icecrown,69.50,23.10 |or
accept Ornolf The Scarred##14104 |goto Icecrown,69.50,23.10 |or
step
talk Crusader Silverdawn##35094
You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
accept Get Kraken!##14108 |goto Icecrown 69.50,23.10 |or
accept The Fate Of The Fallen##14107 |goto Icecrown 69.50,23.10 |or
step
kill Deathspeaker Kharos |q 14105/1 |goto Icecrown 64.20,21.40
|tip He's standing in a small pit area.
step
Click Discarded Soul Crystals
|tip They look like small blue-glowing crystals laying on the ground around this area.
collect 6 Discarded Soul Crystal##47035 |n
Use your Light-Blessed Relic on Fallen Hero's Spirits |use Light-Blessed Relic##47033
Bless 6 Fallen Hero's Spirits |q 14107/1 |goto Icecrown 51.10,38.40
step
Use your Mistcaller's Charm while standing inside this cave, next to the blue floating crystal |use Mistcaller's Charm##47009
kill Mistcaller Yngvar |q 14102/1 |goto Hrothgar's Landing,43.90,24.30
step
Use Kvaldir War Horn next to the bonfire |use Kvaldir War Horn##47006
kill Drottinn Hrothgar |q 14101/1 |goto Hrothgar's Landing,50.70,15.40
step
Use your Captured Kvaldir Banner on the deck of the Bor's Fury ship |use Captured Kvaldir Banner##47029
kill Ornolf the Scarred |q 14104/1 |goto Hrothgar's Landing,58.50,31.60
step
Click a Stabled Argent Hippogryph to ride it
Use your Flaming Spears on North Sea Kraken and Kvaldir Deepcallers while flying |use Flaming Spears##46954
kill 6 Kvaldir Deepcaller |q 14108/2 |goto Icecrown,69.80,22.20
Hurl Spears at 6 North Sea Kraken |q 14108/1 |goto Icecrown,69.80,22.20
step
talk High Crusader Adelard##34882
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
turnin Deathspeaker Kharos##14105 |goto Icecrown 69.50,23.10
turnin Drottinn Hrothgar##14101 |goto Icecrown 69.50,23.10
turnin Mistcaller Yngvar##14102 |goto Icecrown 69.50,23.10
turnin Ornolf The Scarred##14104 |goto Icecrown 69.50,23.10
step
talk Crusader Silverdawn##35094
You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
turnin Get Kraken!##14108 |goto Icecrown 69.50,23.10
turnin The Fate Of The Fallen##14107 |goto Icecrown 69.50,23.10
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Aspirant Rank Daillies",{
description="This guide section will walk you through completing your race's Aspirant Rank dailies in order to achieve Argent Tournament Grounds Valiant Rank with your own race.",
mounts={65639,63642,65646,63640,65641,63641,34549,63635,65645,63643},
},[[
step
talk Magister Edien Sunhollow##33542
accept Up To The Challenge##13678 |goto Icecrown,76.30,24.30
step
talk Magister Edien Sunhollow##33542
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13673 |goto Icecrown 76.30,24.40 |or
accept A Worthy Weapon##13674 |goto Icecrown 76.30,24.40 |or
accept The Edge of Winter##13675 |goto Icecrown 76.30,24.40 |or
step
talk Amariel Sunsworn##33658
accept Training in the Field##13676 |goto Icecrown 76.30,24.40
step
talk Galathia Brightdawn##33659
accept Learning the Reins##13677 |goto Icecrown 76.20,24.40
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
Tell her you are glad to help
collect Ashwood Brand##44981 |q 13673/1 |goto Grizzly Hills,61.20,50.30
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13674 |goto Icecrown,69.10,76.20
step
Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13674/1 |goto Dragonblight,93.20,26.10
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13675 |goto Crystalsong Forest,54.50,74.90
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13675/1 |goto Howling Fjord,42.20,19.70
step
kill Vrykul Necrolord##31783+, Frostbrood Whelp##31718+
kill 8 Icecrown Scourge |q 13676/1 |goto Icecrown,74.80,35.50
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Sunreaver Hawkstrider |invehicle |q 13677 |goto Icecrown 75.60,23.70
step
Target a Melee Target
If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
Use your Thrust ability to attack the target 5 times |q 13677/1 |goto Icecrown 73.10,24.80
step
Target a Charge Target from a distance
Use Shield-Breaker ability until you notice the targets Defend is gone
Use your Charge ability on the Charge Target 2 times |q 13677/3 |goto Icecrown 72.90,25.10
step
Target a Ranged Target from a distance
Use Shield-Breaker ability on Ranged Target to bring it's shields down
Use Shield-Breaker ability on Ranged Target twice, while it's shields are down |q 13677/2 |goto Icecrown 73.30,25.00
step
talk Magister Edien Sunhollow##33542
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13673 |goto Icecrown 76.30,24.40
turnin A Worthy Weapon##13674 |goto Icecrown 76.30,24.40
turnin The Edge of Winter##13675 |goto Icecrown 76.30,24.40
step
talk Amariel Sunsworn##33658
turnin Training in the Field##13676 |goto Icecrown 76.30,24.40
step
talk Galathia Brightdawn##33659
turnin Learning the Reins##13677 |goto Icecrown 76.20,24.40
step
Make sure you have 15 Aspirant's Seals:
collect 15 Aspirant's Seal##45192 |q 13678/1
|tip If you do not have 15 Aspirant's Seals, keep repeating the daily quests in this guide section.  It takes 3 days of doing these Aspirant Rank dailies to get 15 Aspirant's Seals.
step
talk Magister Edien Sunhollow##33542
turnin Up To The Challenge##13678 |goto Icecrown 76.30,24.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Champion Rank Dailies - Death Knight Only",{
description="You must be a Death Knight to do the quests in this Argent Tournament Grounds guide section. Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.",
mounts={65639,63642,65646,63640,65641,63641,34549,63635,65645,63643},
},[[
step
talk Zor'be the Bloodletter##33769
accept Taking Battle To The Enemy##13813 |goto Icecrown,73.80,19.40
only DeathKnight
step
talk Crok Scourgebane##33762
accept Threat From Above##13812 |goto Icecrown 73.80,20.10
|tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
accept Battle Before The Citadel##13863 |goto Icecrown 73.80,20.10
only DeathKnight
step
talk Illyrie Nightfall##33770
accept Among the Champions##13814 |goto Icecrown 73.60,20.10
only DeathKnight
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Orgrimmar Wolf |invehicle |q 13814 |goto Icecrown 72.20,22.50
only Orc DeathKnight
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Darkspear Raptor |invehicle |q 13814 |goto Icecrown 72.00,22.50
only Troll DeathKnight
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Thunder Bluff Kodo |invehicle |q 13814 |goto Icecrown 71.90,22.40
only Tauren DeathKnight
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Forsaken Warhorse |invehicle |q 13814 |goto Icecrown 72.10,22.40
only Scourge DeathKnight
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Silvermoon Hawkstrider |invehicle |q 13814 |goto Icecrown 72.20,22.40
only BloodElf DeathKnight
step
Talk to the riders on mounts around this area
Tell them you are ready to fight!
Fight and defeat them
|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
collect 4 Mark of the Champion##23206 |q 13814/1 |goto Icecrown 71.60,23.80
only DeathKnight
step
Click the red arrow on your hotbar to get off your mount |outvehicle |q 13814
only DeathKnight
step
kill Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
kill 15 Cult of the Damned member |q 13813/1 |goto Icecrown 64.30,21.40
only DeathKnight
step
You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only DeathKnight
step
This is how this fight will happen:
|tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do a lot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
kill Chillmaw |q 13812/1 |goto Icecrown 44.10,32.60
|tip Chillmaw is a big skeletal dragon that flies around this area.
kill 3 Cultist Bombardier |q 13812/2 |goto Icecrown 44.10,32.60
only DeathKnight
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13863 |goto Icecrown 48.90,71.40
only DeathKnight
step
kill 3 Boneguard Commander |q 13863/1 |goto Icecrown 50.10,74.80
|tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only DeathKnight
step
Click the red arrow on your hotbar to get off your mount |outvehicle |q 13863 |goto Icecrown 48.90,71.40
only DeathKnight
step
talk Zor'be the Bloodletter##33769
turnin Taking Battle To The Enemy##13813 |goto Icecrown 73.80,19.40
only DeathKnight
step
talk Crok Scourgebane##33762
turnin Threat From Above##13812 |goto Icecrown 73.80,20.10
turnin Battle Before The Citadel##13863 |goto Icecrown 73.80,20.10
only DeathKnight
step
talk Illyrie Nightfall##33770
turnin Among the Champions##13814 |goto Icecrown 73.60,20.10
only DeathKnight
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Champion Rank Dailies - Non-Death Knight Only",{
description="You must NOT be a Death Knight to do the quests in this Argent Tournament Grounds guide section. Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.",
mounts={65639,63642,65646,63640,65641,63641,34549,63635,65645,63643},
},[[
step
talk Luuri##33771
accept Among the Champions##13811 |goto Icecrown,69.90,23.30
|only if not DeathKnight
step
talk Eadric the Pure##33759
accept Threat From Above##13809 |goto Icecrown 70.00,23.40
|tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
accept Battle Before The Citadel##13862 |goto Icecrown 70.00,23.40
|only if not DeathKnight
step
talk Cellian Daybreak##33763
accept Taking Battle To The Enemy##13810 |goto Icecrown 69.90,23.50
|only if not DeathKnight
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Orgrimmar Wolf |invehicle |q 13811 |goto Icecrown 72.20,22.50
only Orc !DeathKnight
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Darkspear Raptor |invehicle |q 13811 |goto Icecrown 72.00,22.50
only Troll !DeathKnight
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Thunder Bluff Kodo |invehicle |q 13811 |goto Icecrown 71.90,22.40
only Tauren !DeathKnight
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Forsaken Warhorse |invehicle |q 13811 |goto Icecrown 72.10,22.40
only Scourge !DeathKnight
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Silvermoon Hawkstrider |invehicle |q 13811 |goto Icecrown 72.20,22.40
only BloodElf !DeathKnight
step
Talk to the riders on mounts around this area
Tell them you are ready to fight!
Fight and defeat them
|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
collect 4 Mark of the Champion##23206 |q 13811/1 |goto Icecrown 71.60,23.80
|only if not DeathKnight
step
Click the red arrow on your hotbar to get off your mount |outvehicle |q 13811
|only if not DeathKnight
step
kill Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
kill 15 Cult of the Damned member |q 13810/1 |goto Icecrown 64.30,21.40
|only if not DeathKnight
step
You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
|only if not DeathKnight
step
This is how this fight will happen:
|tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do a lot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
kill Chillmaw |q 13809/1 |goto Icecrown 44.10,32.60
|tip Chillmaw is a big skeletal dragon that flies around this area.
kill 3 Cultist Bombardier |q 13809/2 |goto Icecrown 44.10,32.60
|only if not DeathKnight
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13862 |goto Icecrown,48.90,71.40
|only if not DeathKnight
step
kill 3 Boneguard Commander |q 13862/1 |goto Icecrown 50.10,74.80
|tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
|only if not DeathKnight
step
Click the red arrow on your hotbar to get off your mount |outvehicle |q 13862 |goto Icecrown 48.90,71.40
|only if not DeathKnight
step
talk Luuri##33771
turnin Among the Champions##13811 |goto Icecrown 69.90,23.30
|only if not DeathKnight
step
talk Eadric the Pure##33759
turnin Threat From Above##13809 |goto Icecrown 70.00,23.40
turnin Battle Before The Citadel##13862 |goto Icecrown 70.00,23.40
|only if not DeathKnight
step
talk Cellian Daybreak##33763
turnin Taking Battle To The Enemy##13810 |goto Icecrown 69.90,23.50
|only if not DeathKnight
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Pre-Quests",{
description="This guide section contains the pre-quests to unlock most of the daily quests in the Argent Tournament Grounds region of Icecrown. You will need to achieve the Crusader title, using the Crusader Title Guide section in the Icecrown section, to unlock more daily quests.",
mounts={65639,63642,65646,63640,65641,63641,34549,63635,65645,63643},
},[[
step
talk Helidan Lightwing##33849
fpath Argent Tournament Grounds |goto Icecrown,72.60,22.60
step
talk Justicar Mariel Trueheart##33817
accept The Argent Tournament##13668 |goto Icecrown 69.70,22.90
step
talk Magister Edien Sunhollow##33542
turnin The Argent Tournament##13668 |goto Icecrown 76.30,24.40
accept Mastery Of Melee##13829 |goto Icecrown 76.30,24.40
step
talk Amariel Sunsworn##33658
accept Mastery Of The Charge##13839 |goto Icecrown 76.30,24.40
step
talk Galathia Brightdawn##33659
accept Mastery Of The Shield-Breaker##13838 |goto Icecrown 76.20,24.40
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Sunreaver Hawkstrider |invehicle |q 13829 |goto Icecrown 75.60,23.70
step
talk Jeran Lockwood##33973
Listen to Jeran Lockwood's advice |q 13829/1 |goto Icecrown 72.50,19.30
step
talk Rugan Steelbelly##33972
Listen to Rugan Steelbelly's advice |q 13839/1 |goto Icecrown 72.70,18.90
step
talk Valis Windchaser##33974
Listen to Valis Windchaser's advice |q 13838/1 |goto Icecrown 73.20,19.20
step
Target a Ranged Target from a distance
Use Shield-Breaker ability on Ranged Target to bring it's shields down
Use Shield-Breaker ability on Ranged Target twice, while it's shields are down |q 13838/2 |goto Icecrown 73.10,19.00
step
Target a Charge Target from a distance
Use Shield-Breaker ability until you notice the targets Defend is gone
Use your Charge ability on the Charge Target 2 times |q 13839/2 |goto Icecrown 72.90,18.80
step
Target a Melee Target
If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
Use your Thrust ability to attack the target 5 times |q 13829/2 |goto Icecrown 72.60,19.70
step
Click the red arrow on your hotbar to stop riding the bird mount |outvehicle |q 13829
step
talk Magister Edien Sunhollow##33542
turnin Mastery Of Melee##13829 |goto Icecrown 76.30,24.40
step
talk Amariel Sunsworn##33658
turnin Mastery Of The Charge##13839 |goto Icecrown 76.30,24.40
step
talk Galathia Brightdawn##33659
turnin Mastery Of The Shield-Breaker##13838 |goto Icecrown 76.20,24.40
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mounts\\Argent Tournament Guides\\Valiant Rank Daillies",{
description="This guide section will walk you through completing your race's Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion Rank with your own race. You must have completed the Argent Tournament Grounds Aspirant Rank Dailies guide section in order to have access to the quests in this guide section.",
mounts={65639,63642,65646,63640,65641,63641,34549,63635,65645,63643},
},[[
step
talk Magister Edien Sunhollow##33542
accept The Aspirant's Challenge##13680 |goto Icecrown,76.30,24.40
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Sunreaver Hawkstrider |invehicle |q 13680 |goto Icecrown 71.80,20.00
step
talk Squire David##33447
Tell him you are ready to fight!
|tip Use your Defend ability on your hotbar to max your shield out at 3 charges before telling Squire David this.
An Argent Valiant runs up on a horse
Use the abilities on your hotbar to defeat the Argent Valiant
|tip The best strategy to defeat the Argent Valiant is to always make sure your shield is up by using your Defend ability.  Then, use your Shield-Breaker ability to bring down the Argent Valiant's shield.  When his shield is down, use your Charge ability on him.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13680/1 |goto Icecrown 71.40,19.60
step
talk Magister Edien Sunhollow##33542
turnin The Aspirant's Challenge##13680 |goto Icecrown 76.30,24.40
accept A Valiant Of Orgrimmar##13691 |goto Icecrown 76.30,24.40 |only Orc
accept A Valiant Of Sen'jin##13693 |goto Icecrown 76.30,24.40 |only Troll
accept A Valiant Of Thunder Bluff##13694 |goto Icecrown 76.30,24.40 |only Tauren
accept A Valiant Of Undercity##13695 |goto Icecrown 76.30,24.40 |only Scourge
accept A Valiant Of Silvermoon##13696 |goto Icecrown 76.30,24.40 |only BloodElf
step
talk Mokra the Skullcrusher##33361
turnin A Valiant Of Orgrimmar##13691 |goto Icecrown 76.50,24.60
accept The Valiant's Charge##13697 |goto Icecrown 76.50,24.60
only Orc
step
talk Zul'tore##33372
turnin A Valiant Of Sen'jin##13693 |goto Icecrown 76.00,24.50
accept The Valiant's Charge##13719 |goto Icecrown 76.00,24.50
only Troll
step
talk Runok Wildmane##33403
turnin A Valiant Of Thunder Bluff##13694 |goto Icecrown 76.20,24.60
accept The Valiant's Charge##13720 |goto Icecrown 76.20,24.60
only Tauren
step
talk Deathstalker Visceri##33373
turnin A Valiant Of Undercity##13695 |goto Icecrown 76.50,24.20
accept The Valiant's Charge##13721 |goto Icecrown 76.50,24.20
only Scourge
step
talk Eressea Dawnsinger##33379
turnin A Valiant Of Silvermoon##13696 |goto Icecrown 76.50,23.90
accept The Valiant's Charge##13722 |goto Icecrown 76.50,23.90
only BloodElf
step
talk Mokra the Skullcrusher##33361
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13762 |goto Icecrown 76.50,24.60 |or
accept A Worthy Weapon##13763 |goto Icecrown 76.50,24.60 |or
accept The Edge Of Winter##13764 |goto Icecrown 76.50,24.60 |or
only Orc
step
talk Akinos##33405
accept A Valiant's Field Training##13765 |goto Icecrown 76.50,24.50
only Orc
step
talk Morah Worgsister##33544
accept The Grand Melee##13767 |goto Icecrown 76.40,24.60
accept At The Enemy's Gates##13856 |goto Icecrown 76.40,24.60
only Orc
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13762/1 |goto Grizzly Hills,61.20,50.30
only Orc
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13763 |goto Icecrown,69.10,76.20
only Orc
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13763/1 |goto Dragonblight,93.20,26.10
only Orc
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13764 |goto Crystalsong Forest,54.50,74.90
only Orc
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13764/1 |goto Howling Fjord,42.20,19.70
only Orc
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13856 |goto Icecrown,48.90,71.40
only Orc
step
kill 15 Boneguard Footman |q 13856/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13856/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13856/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area. Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Orc
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13856 |goto Icecrown 49.10,71.40
only Orc
step
kill 10 Converted Hero##32255 |q 13765/1 |goto Icecrown 44.30,54.20
only Orc
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Orgrimmar Wolf |invehicle |q 13767 |goto Icecrown 75.50,24.00
only Orc
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13767/1 |goto Icecrown 75.30,26.00
only Orc
step
talk Mokra the Skullcrusher##33361
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13762 |goto Icecrown 76.50,24.60
turnin A Worthy Weapon##13763 |goto Icecrown 76.50,24.60
turnin The Edge Of Winter##13764 |goto Icecrown 76.50,24.60
only Orc
step
talk Akinos##33405
turnin A Valiant's Field Training##13765 |goto Icecrown 76.50,24.50
only Orc
step
talk Morah Worgsister##33544
turnin The Grand Melee##13767 |goto Icecrown 76.40,24.60
turnin At The Enemy's Gates##13856 |goto Icecrown 76.40,24.60
only Orc
step
talk Zul'tore##33372
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13768 |goto Icecrown 76.00,24.50 |or
accept A Worthy Weapon##13769 |goto Icecrown 76.00,24.50 |or
accept The Edge Of Winter##13770 |goto Icecrown 76.00,24.50 |or
only Troll
step
talk Shadow Hunter Mezil-kree##33540
accept A Valiant's Field Training##13771 |goto Icecrown 76.00,24.60
only Troll
step
talk Gahju##33545
accept The Grand Melee##13772 |goto Icecrown 75.90,24.40
accept At The Enemy's Gates##13857 |goto Icecrown 75.90,24.40
only Troll
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
Tell her you are glad to help
collect Ashwood Brand##44981 |q 13768/1 |goto Grizzly Hills,61.20,50.30
only Troll
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13769 |goto Icecrown,69.10,76.20
only Troll
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13769/1 |goto Dragonblight,93.20,26.10
only Troll
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13770 |goto Crystalsong Forest,54.50,74.90
only Troll
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13770/1 |goto Howling Fjord,42.20,19.70
only Troll
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13857 |goto Icecrown,48.90,71.40
only Troll
step
kill 15 Boneguard Footman |q 13857/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13857/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13857/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Troll
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13857 |goto Icecrown 49.10,71.40
only Troll
step
kill 10 Converted Hero##32255 |q 13771/1 |goto Icecrown 44.30,54.20
only Troll
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Darkspear Raptor |invehicle |q 13772 |goto Icecrown 75.60,23.80
only Troll
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13772/1 |goto Icecrown 75.30,26.00
only Troll
step
talk Zul'tore##33372
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13768 |goto Icecrown 76.00,24.50
turnin A Worthy Weapon##13769 |goto Icecrown 76.00,24.50
turnin The Edge Of Winter##13770 |goto Icecrown 76.00,24.50
only Troll
step
talk Shadow Hunter Mezil-kree##33540
turnin A Valiant's Field Training##13771 |goto Icecrown 76.00,24.60
only Troll
step
talk Gahju##33545
turnin The Grand Melee##13772 |goto Icecrown 75.90,24.40
turnin At The Enemy's Gates##13857 |goto Icecrown 75.90,24.40
only Troll
step
talk Runok Wildmane##33403
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13773 |goto Icecrown 76.20,24.60 |or
accept A Worthy Weapon##13774 |goto Icecrown 76.20,24.60 |or
accept The Edge Of Winter##13775 |goto Icecrown 76.20,24.60 |or
only Tauren
step
talk Dern Ragetotem##33539
accept A Valiant's Field Training##13776 |goto Icecrown 76.30,24.70
only Tauren
step
talk Anka Clawhoof##33549
accept The Grand Melee##13777 |goto Icecrown 76.10,24.60
accept At The Enemy's Gates##13858 |goto Icecrown 76.10,24.60
only Tauren
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
Tell her you are glad to help
collect Ashwood Brand##44981 |q 13773/1 |goto Grizzly Hills,61.20,50.30
only Tauren
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13774 |goto Icecrown,69.10,76.20
only Tauren
step
Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13774/1 |goto Dragonblight,93.20,26.10
only Tauren
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13775 |goto Crystalsong Forest,54.50,74.90
only Tauren
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13775/1 |goto Howling Fjord,42.20,19.70
only Tauren
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13858 |goto Icecrown,48.90,71.40
only Tauren
step
kill 15 Boneguard Footman |q 13858/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13858/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13858/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Tauren
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13858 |goto Icecrown 49.10,71.40
only Tauren
step
kill 10 Converted Hero##32255 |q 13776/1 |goto Icecrown 44.30,54.20
only Tauren
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Thunder Bluff Kodo |invehicle |q 13777 |goto Icecrown 75.50,24.30
only Tauren
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13777/1 |goto Icecrown 75.30,26.00
only Tauren
step
talk Runok Wildmane##33403
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13773 |goto Icecrown 76.20,24.60
turnin A Worthy Weapon##13774 |goto Icecrown 76.20,24.60
turnin The Edge Of Winter##13775 |goto Icecrown 76.20,24.60
only Tauren
step
talk Dern Ragetotem##33539
turnin A Valiant's Field Training##13776 |goto Icecrown 76.30,24.70
only Tauren
step
talk Anka Clawhoof##33549
turnin The Grand Melee##13777 |goto Icecrown 76.10,24.60
turnin At The Enemy's Gates##13858 |goto Icecrown 76.10,24.60
only Tauren
step
talk Deathstalker Visceri##33373
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13778 |goto Icecrown 76.50,24.20 |or
accept A Worthy Weapon##13779 |goto Icecrown 76.50,24.20 |or
accept The Edge Of Winter##13780 |goto Icecrown 76.50,24.20 |or
only Scourge
step
talk Sarah Chalke##33541
accept A Valiant's Field Training##13781 |goto Icecrown 76.60,24.10
only Scourge
step
talk Handler Dretch##33547
accept The Grand Melee##13782 |goto Icecrown 76.50,24.30
accept At The Enemy's Gates##13860 |goto Icecrown 76.50,24.30
only Scourge
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
Tell her you're glad to help
collect Ashwood Brand##44981 |q 13778/1 |goto Grizzly Hills,61.20,50.30
only Scourge
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13779 |goto Icecrown,69.10,76.20
only Scourge
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13779/1 |goto Dragonblight,93.20,26.10
only Scourge
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13780 |goto Crystalsong Forest,54.50,74.90
only Scourge
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13780/1 |goto Howling Fjord,42.20,19.70
only Scourge
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13860 |goto Icecrown,48.90,71.40
only Scourge
step
kill 15 Boneguard Footman |q 13860/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13860/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13860/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Scourge
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13860 |goto Icecrown 49.10,71.40
only Scourge
step
kill 10 Converted Hero##32255 |q 13781/1 |goto Icecrown 44.30,54.20
only Scourge
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Forsaken Warhorse |invehicle |q 13782 |goto Icecrown 75.60,23.90
only Scourge
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13782/1 |goto Icecrown 75.30,26.00
only Scourge
step
talk Deathstalker Visceri##33373
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13778 |goto Icecrown 76.50,24.20
turnin A Worthy Weapon##13779 |goto Icecrown 76.50,24.20
turnin The Edge Of Winter##13780 |goto Icecrown 76.50,24.20
only Scourge
step
talk Sarah Chalke##33541
turnin A Valiant's Field Training##13781 |goto Icecrown 76.60,24.10
only Scourge
step
talk Handler Dretch##33547
turnin The Grand Melee##13782 |goto Icecrown 76.50,24.30
turnin At The Enemy's Gates##13860 |goto Icecrown 76.50,24.30
only Scourge
step
talk Eressea Dawnsinger##33379
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13783 |goto Icecrown 76.50,23.90 |or
accept A Worthy Weapon##13784 |goto Icecrown 76.50,23.90 |or
accept The Edge Of Winter##13785 |goto Icecrown 76.50,23.90 |or
only BloodElf
step
talk Kethiel Sunlance##33538
accept A Valiant's Field Training##13786 |goto Icecrown 76.40,23.80
only BloodElf
step
talk Aneera Thuron##33548
accept The Grand Melee##13787 |goto Icecrown 76.50,23.90
accept At The Enemy's Gates##13859 |goto Icecrown 76.50,23.90
only BloodElf
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
Tell her you are glad to help
collect Ashwood Brand##44981 |q 13783/1 |goto Grizzly Hills,61.20,50.30
only BloodElf
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13784 |goto Icecrown,69.10,76.20
only BloodElf
step
Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13784/1 |goto Dragonblight,93.20,26.10
only BloodElf
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13785 |goto Crystalsong Forest,54.50,74.90
only BloodElf
step
Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
collect Winter's Edge##45003 |q 13785/1 |goto Howling Fjord,42.20,19.70
only BloodElf
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Campaign Warhorse |invehicle |q 13859 |goto Icecrown,48.90,71.40
only BloodElf
step
kill 15 Boneguard Footman |q 13859/1 |goto Icecrown 50.10,74.80
|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13859/2 |goto Icecrown 50.10,74.80
|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13859/3 |goto Icecrown 50.10,74.80
|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only BloodElf
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13859 |goto Icecrown 49.10,71.40
only BloodElf
step
kill 10 Converted Hero##32255 |q 13786/1 |goto Icecrown 44.30,54.20
only BloodElf
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Silvermoon Hawkstrider |invehicle |q 13787 |goto Icecrown 75.50,24.10
only BloodElf
step
Talk to the riders on mounts of other Horde races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13787/1 |goto Icecrown 75.30,26.00
only BloodElf
step
talk Eressea Dawnsinger##33379
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13783 |goto Icecrown 76.50,23.90
turnin A Worthy Weapon##13784 |goto Icecrown 76.50,23.90
turnin The Edge Of Winter##13785 |goto Icecrown 76.50,23.90
only BloodElf
step
talk Kethiel Sunlance##33538
turnin A Valiant's Field Training##13786 |goto Icecrown 76.40,23.80
only BloodElf
step
talk Aneera Thuron##33548
turnin The Grand Melee##13787 |goto Icecrown 76.50,23.90
turnin At The Enemy's Gates##13859 |goto Icecrown 76.50,23.90
only BloodElf
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13697/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Orc
collect 25 Valiant's Seal##44987 |q 13719/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Troll
collect 25 Valiant's Seal##44987 |q 13720/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Tauren
collect 25 Valiant's Seal##44987 |q 13721/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Scourge
collect 25 Valiant's Seal##44987 |q 13722/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only BloodElf
step
talk Mokra the Skullcrusher##33361
turnin The Valiant's Charge##13697 |goto Icecrown 76.50,24.60
accept The Valiant's Challenge##13726 |goto Icecrown 76.50,24.60
only Orc
step
talk Zul'tore##33372
turnin The Valiant's Charge##13719 |goto Icecrown 76.00,24.50
accept The Valiant's Challenge##13727 |goto Icecrown 76.00,24.50
only Troll
step
talk Runok Wildmane##33403
turnin The Valiant's Charge##13720 |goto Icecrown 76.20,24.60
accept The Valiant's Challenge##13728 |goto Icecrown 76.20,24.60
only Tauren
step
talk Deathstalker Visceri##33373
turnin The Valiant's Charge##13721 |goto Icecrown 76.50,24.20
accept The Valiant's Challenge##13729 |goto Icecrown 76.50,24.20
only Scourge
step
talk Eressea Dawnsinger##33379
turnin The Valiant's Charge##13722 |goto Icecrown 76.50,23.90
accept The Valiant's Challenge##13731 |goto Icecrown 76.50,23.90
only BloodElf
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Orgrimmar Wolf |invehicle |q 13726 |goto Icecrown 72.20,22.50
only Orc
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Darkspear Raptor |invehicle |q 13727 |goto Icecrown 72.00,22.50
only Troll
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Thunder Bluff Kodo |invehicle |q 13728 |goto Icecrown 71.90,22.40
only Tauren
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Forsaken Warhorse |invehicle |q 13729 |goto Icecrown 72.10,22.40
only Scourge
step
Equip the Horde Lance in your bags |use Horde Lance##46070
Click to mount the Stabled Silvermoon Hawkstrider |invehicle |q 13731 |goto Icecrown 72.20,22.40
only BloodElf
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13726/1 |goto Icecrown 68.60,21.00 |only Orc
Defeat the Argent Valiant |q 13727/1 |goto Icecrown 68.60,21.00 |only Troll
Defeat the Argent Valiant |q 13728/1 |goto Icecrown 68.60,21.00 |only Tauren
Defeat the Argent Valiant |q 13729/1 |goto Icecrown 68.60,21.00 |only Scourge
Defeat the Argent Valiant |q 13731/1 |goto Icecrown 68.60,21.00 |only BloodElf
step
talk Mokra the Skullcrusher##33361
turnin The Valiant's Challenge##13726 |goto Icecrown 76.50,24.60
accept A Champion Rises##13736 |goto Icecrown 76.50,24.60
only Orc
step
talk Zul'tore##33372
turnin The Valiant's Challenge##13727 |goto Icecrown 76.00,24.50
accept A Champion Rises##13737 |goto Icecrown 76.00,24.50
only Troll
step
talk Runok Wildmane##33403
turnin The Valiant's Challenge##13728 |goto Icecrown 76.20,24.60
accept A Champion Rises##13738 |goto Icecrown 76.20,24.60
only Tauren
step
talk Deathstalker Visceri##33373
turnin The Valiant's Challenge##13729 |goto Icecrown 76.50,24.20
accept A Champion Rises##13739 |goto Icecrown 76.50,24.20
only Scourge
step
talk Eressea Dawnsinger##33379
turnin The Valiant's Challenge##13731 |goto Icecrown 76.50,23.90
accept A Champion Rises##13740 |goto Icecrown 76.50,23.90
only BloodElf
step
talk Justicar Mariel Trueheart##33817
turnin A Champion Rises##13736 |goto Icecrown 69.70,22.90 |only Orc
turnin A Champion Rises##13737 |goto Icecrown 69.70,22.90 |only Troll
turnin A Champion Rises##13738 |goto Icecrown 69.70,22.90 |only Tauren
turnin A Champion Rises##13739 |goto Icecrown 69.70,22.90 |only Scourge
turnin A Champion Rises##13740 |goto Icecrown 69.70,22.90 |only BloodElf
accept The Scourgebane##13795 |goto Icecrown 69.70,22.90 |only DeathKnight
accept Eadric the Pure##13794 |goto Icecrown 69.70,22.90 |only if not DeathKnight
step
talk Crok Scourgebane##33762
turnin The Scourgebane##13795 |goto Icecrown 73.80,20.10
only DeathKnight
step
talk Eadric the Pure##33759
turnin Eadric the Pure##13794 |goto Icecrown 70.00,23.40
|only if not DeathKnight
]])
QuestCore:RegisterGuide("Pets & Mounts Guides\\Mount Training",{
condition_end=function() return knowspell(90265) end,
},[[
step
Reach Level 10 |ding 10
step
talk Kildar##4752
Train the "Apprentice Riding" Ability |complete knowspell(33388) or knowspell(33391) or knowspell(34090) or knowspell(34091) or knowspell(90265) |goto Orgrimmar/1 61.32,34.61
step
talk Kildar##4752
Train the "Journeyman Riding" Ability |complete knowspell(33391) or knowspell(34090) or knowspell(34091) or knowspell(90265) |goto Orgrimmar/1 61.32,34.61
step
Reach Level 20 |ding 20
step
talk Kildar##4752
Train the "Expert Riding" Ability |complete knowspell(34090) or knowspell(34091) or knowspell(90265) |goto Orgrimmar/1 61.32,34.61
step
Reach Level 30 |ding 30
step
talk Kildar##4752
Train the "Master Riding" Ability |complete knowspell(90265) |goto Orgrimmar/1 61.32,34.61
]])
