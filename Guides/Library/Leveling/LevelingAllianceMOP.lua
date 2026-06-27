-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Alliance" then return end
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (10-70)\\The Jade Forest (10-70)",{
next="Leveling Guides\\Pandaria (10-70)\\Valley of the Four Winds (15-70)",
condition_valid=function() return level <= 70 and chromietime() == MOP end,
condition_valid_msg="This guide is optimized for {w}Chromie Time{}. Load the {w}Chromie Time{} guide first and select the {w}Wilds of Pandaria{} option.",
condition_valid_guide="Leveling Guides\Starter Guides\Chromie Time",
startlevel=10,
endlevel=70,
},[[
step
talk to Sky Admiral Rogers##66292
|tip On the airship.
accept Unleash Hell##31732 |goto The Jade Forest/0 42.03,92.75
step
clicknpc Skyfire Gyrocopter##66297
|tip On the airship.
Control the Skyfire Gyrocopter |invehicle |goto The Jade Forest/0 42.02,92.51 |q 31732
stickystart "Slay_Garroshar_Horde"
step
kill 8 Garrosh'ar Shredder##66397 |q 31732/2
|tip They look like {o}metal humanoid machines{}.
step
label "Slay_Garroshar_Horde"
kill Garrosh'ar Grunt##66398+
|tip They look like {o}orc soldiers{}.
Slay #60# Garrosh'ar Horde |q 31732/1 |goto The Jade Forest/0 44.15,93.64
step
Sink the Bladefist Reaper |q 31732/3 |goto The Jade Forest/0 44.18,98.79 |notravel
|tip Use your abilities {o}near the ship{}.
step
Sink the Stygian Scar |q 31732/4 |goto The Jade Forest/0 41.12,100.37 |notravel
|tip Use your abilities {o}near the ship{}.
step
Watch the dialogue
Return to the Skyfire |outvehicle |goto The Jade Forest/0 42.03,92.51 |q 31732 |notravel
step
talk to Sky Admiral Rogers##66292
|tip On the airship.
turnin Unleash Hell##31732 |goto The Jade Forest/0 42.03,92.75
accept Touching Ground##31733 |goto The Jade Forest/0 42.03,92.75
step
click Skyfire Parachute##240210
|tip On the airship.
Equip a Skyfire Parachute |q 31733/1 |goto The Jade Forest/0 42.31,92.79
step
Watch the dialogue
Parachute to the Ground |outvehicle |goto The Jade Forest/0 43.52,90.71 |q 31733 |notravel
step
talk Sully 'The Pickle' McLeary##54616
turnin Touching Ground##31733 |goto The Jade Forest/0 43.58,90.70
accept No Plan Survives Contact with the Enemy##30069 |goto The Jade Forest/0 43.58,90.70
accept Welcome Wagons##31734 |goto The Jade Forest/0 43.58,90.70
stickystart "Kill_Garroshar_Grunts"
stickystart "Kill_Garroshar_Gear_Greasers"
step
use Sully's Flaregun##89612
|tip Use it next to {o}Horde War Wagons{}.
|tip They look like {o}large wooden war carts{}.
Destroy #5# Horde War Wagons |q 31734/1 |goto The Jade Forest/0 44.36,93.99
'|clicknpc Horde War Wagon##66339
step
label "Kill_Garroshar_Grunts"
kill 6 Garrosh'ar Grunt##66282 |q 30069/1 |goto The Jade Forest/0 44.36,93.99
step
label "Kill_Garroshar_Gear_Greasers"
kill 6 Garrosh'ar Gear-Greaser##66290 |q 30069/2 |goto The Jade Forest/0 44.36,93.99
step
talk Rell Nightwind##54617
turnin No Plan Survives Contact with the Enemy##30069 |goto The Jade Forest/0 45.17,94.99
turnin Welcome Wagons##31734 |goto The Jade Forest/0 45.17,94.99
accept The Right Tool For The Job##31735 |goto The Jade Forest/0 45.17,94.99
step
use Sully's Flaregun##89624
Destroy the First Barricade |q 31735/1 |goto The Jade Forest/0 45.60,95.21
step
use Sully's Flaregun##89624
Destroy the Second Barricade |q 31735/2 |goto The Jade Forest/0 45.95,95.84
step
Watch the dialogue
Confront Ga'trul |q 31735/3 |goto The Jade Forest/0 46.53,96.37
'|clicknpc Ga'trul##66406
step
Watch the dialogue
talk Rell Nightwind##54617
turnin The Right Tool For The Job##31735 |goto The Jade Forest/0 46.47,96.30
step
Watch the dialogue
talk Rell Nightwind##54617
accept Envoy of the Alliance##31736 |goto The Jade Forest/0 46.47,96.41
accept The Cost of War##31737 |goto The Jade Forest/0 46.47,96.41
stickystart "Kill_Sha_Haunts"
step
kill 5 Sha Harbinger##66424 |q 31737/2 |goto The Jade Forest/0 44.52,93.58
step
label "Kill_Sha_Haunts"
kill 10 Sha Haunt##66423 |q 31737/1 |goto The Jade Forest/0 44.52,93.58
step
Find the Leader of Paw'don Village |q 31736/1 |goto The Jade Forest/0 46.25,84.80
step
talk Taran Zhu##67012
turnin The Cost of War##31737 |goto The Jade Forest/0 46.25,84.80
step
talk Sunke Khang##65910
turnin Envoy of the Alliance##31736 |goto The Jade Forest/0 46.26,84.72
accept Pillaging Peons##31738 |goto The Jade Forest/0 46.26,84.72
step
talk Teng Applebloom##64596
accept Priorities!##31739 |goto The Jade Forest/0 46.22,84.68
step
talk Mishka##54614
accept Critical Condition##29552 |goto The Jade Forest/0 46.13,84.57
step
talk Wing Kyo##66023
fpath Paw'Don Village |goto The Jade Forest/0 46.04,85.14
step
talk Jiayi Applebloom##65907
|tip Inside the building.
accept Home Is Where the Hearthstone Is##81638 |goto The Jade Forest/0 44.88,84.34 |instant
|only if itemcount(6948) == 0
step
talk Jiayi Applebloom##65907
|tip Inside the building.
home Paw'don Village |goto The Jade Forest/0 44.88,84.34
stickystart "Revive_Wounded_Pilots"
stickystart "Slay_Twinspire_Peons"
step
click Applebloom Cider##215134+
|tip They look like {o}wooden barrels{}.
collect 6 Applebloom Cider##215133 |q 31739/1 |goto The Jade Forest/0 42.67,87.54
step
label "Revive_Wounded_Pilots"
clicknpc Wounded Pilot##61492+
|tip They look like {o}dead human soldiers{}.
Revive #6# Wounded Pilots |q 29552/1 |goto The Jade Forest/0 42.67,87.54
step
label "Slay_Twinspire_Peons"
kill Twinspire Peon##59979, Twinspire Taskmaster##54627
|tip They look like {o}orcs{}.
Slay #12# Twinspire Peons |q 31738/1 |goto The Jade Forest/0 42.67,87.54
step
talk Lin Applebloom##66199
turnin Priorities!##31739 |goto The Jade Forest/0 39.55,90.03
accept Koukou's Rampage##31740 |goto The Jade Forest/0 39.55,90.03
step
kill Koukou##66213 |q 31740/1 |goto The Jade Forest/0 39.30,89.75
|tip He walks around this small area.
step
talk Mishka##54614
turnin Critical Condition##29552 |goto The Jade Forest/0 46.14,84.56
step
talk Sunke Khang##65910
turnin Pillaging Peons##31738 |goto The Jade Forest/0 46.26,84.73
turnin Koukou's Rampage##31740 |goto The Jade Forest/0 46.26,84.73
accept Twinspire Keep##31741 |goto The Jade Forest/0 46.26,84.73
accept Unfair Trade##31744 |goto The Jade Forest/0 46.26,84.73
step
talk Rell Nightwind##54617
accept Fractured Forces##31742 |goto The Jade Forest/0 46.20,84.81
accept Smoke Before Fire##31743 |goto The Jade Forest/0 46.20,84.81
stickystart "Free_Captive_Pandaren_Cubs"
stickystart "Slay_Twinspire_Horde"
step
use the Alliance Flare##89602
|tip Use it on the {o}large bubble{}.
Bomb the Wild Imps |q 31743/4 |goto The Jade Forest/0 43.21,81.31
step
use the Alliance Flare##89602
|tip Use it on a {o}Twinspire Demolisher{}.
Bomb the Twinspire Demolishers |q 31743/2 |goto The Jade Forest/0 41.61,81.60
'|clicknpc Twinspire Demolisher##66279
step
use the Alliance Flare##89602
|tip Use it on the {o}large red spiked bomb{}.
Bomb the Twinspire Munitions Stockpile |q 31743/1 |goto The Jade Forest/0 40.90,82.37
step
use the Alliance Flare##89602
|tip Use it on {o}Xhu'daggab{}.
Bomb Xhu'daggab |q 31743/3 |goto The Jade Forest/0 40.10,81.61
'|clicknpc Xhu'daggab##66277
step
kill Dalgan##66274 |q 31742/1 |goto The Jade Forest/0 41.18,80.21
|tip He walks around this area.
|tip Up on the platform.
step
kill Bellandra Felstorm##66275 |q 31742/2 |goto The Jade Forest/0 41.81,80.26
|tip Up on the platform.
step
label "Free_Captive_Pandaren_Cubs"
kill Eyes of Ga'trul##66367+
|tip They look like {o}floating green balls{}.
|tip Kill the ones {o}next to Captive Pandaren Cubs{}.
|tip They look like {o}scared panda children{}.
Free #8# Captive Pandaren Cubs |q 31744/1 |goto The Jade Forest/0 41.55,81.61
step
label "Slay_Twinspire_Horde"
kill Twinspire Deathguard##66272, Twinspire Demolitionist##66273, Felstorm Warlock##66270, Twinspire Grunt##66269, Gatrul'lon Curseweaver##66267, Gatrul'lon Flamecaller##66268, Felstorm Summoner##66271
|tip They look like {o}various humanoids{}.
Slay #15# Twinspire Horde |q 31741/1 |goto The Jade Forest/0 41.55,81.61
step
talk Sully 'The Pickle' McLeary##54616
|tip Up on the platform, next to a doorway.
turnin Twinspire Keep##31741 |goto The Jade Forest/0 41.39,79.57
turnin Fractured Forces##31742 |goto The Jade Forest/0 41.39,79.57
turnin Smoke Before Fire##31743 |goto The Jade Forest/0 41.39,79.57
turnin Unfair Trade##31744 |goto The Jade Forest/0 41.39,79.57
accept The Fall of Ga'trul##30070 |goto The Jade Forest/0 41.39,79.57
step
kill Ga'trul##66396 |q 30070/1 |goto The Jade Forest/0 41.46,77.58
|tip He walks around this area.
|tip Inside the huge building.
|tip Click the {o}portals{} after he uses them to {o}teleport to him{}.
step
talk Rell Nightwind##54617
|tip Inside the building.
turnin The Fall of Ga'trul##30070 |goto The Jade Forest/0 41.45,79.07
accept Onward and Inward##31745 |goto The Jade Forest/0 41.45,79.07
step
clicknpc Rell's Gyrocopter##67067
Begin Flying to Paw'don Village |invehicle |goto The Jade Forest/0 41.51,79.75 |q 31745
step
Return to Paw'don Village |q 31745/1 |goto The Jade Forest/0 46.06,84.59 |notravel
step
talk Sky Admiral Rogers##66292
turnin Onward and Inward##31745 |goto The Jade Forest/0 48.05,88.39
accept The White Pawn##29555 |goto The Jade Forest/0 48.05,88.39
accept Hozen Aren't Your Friends, Hozen Are Your Enemies##29556 |goto The Jade Forest/0 48.05,88.39
stickystart "Slay_Hozen"
step
clicknpc Alliance Bodyguard##55168
|tip On the deck of the ship.
Find the Clue |q 29555/1 |goto The Jade Forest/0 49.80,90.19 |count 1
step
clicknpc Fine Leather Journal##55155
|tip Downstairs inside the ship.
Find the Clue |q 29555/1 |goto The Jade Forest/0 49.99,90.26 |count 2
step
clicknpc Alliance Banner##55167
|tip Downstairs inside the ship.
Find the Clue |q 29555/1 |goto The Jade Forest/0 50.15,90.77 |count 3
step
kill Hozen Diver##66148
|tip He swims around this area.
|tip Downstairs inside the ship.
collect Encoded Captain's Log##89603 |q 29555/2 |goto The Jade Forest/0 50.23,90.85
step
label "Slay_Hozen"
kill Hozen Scavenger##66153, Hozen Ravager##57119, Hozen Diver##66148
|tip They look like {o}monkeys{}.
Slay #14# Hozen |q 29556/1 |goto The Jade Forest/0 50.06,89.60
step
talk Nodd Codejack##54615
turnin The White Pawn##29555 |goto The Jade Forest/0 50.41,88.26
turnin Hozen Aren't Your Friends, Hozen Are Your Enemies##29556 |goto The Jade Forest/0 50.41,88.26
accept The Missing Admiral##29553 |goto The Jade Forest/0 50.41,88.26
step
talk Admiral Taylor##59022
turnin The Missing Admiral##29553 |goto The Jade Forest/0 54.22,82.50
step
talk Bold Karasshi##55196
accept The Path of War##29558 |goto The Jade Forest/0 54.18,82.41
accept Freeing Our Brothers##29559 |goto The Jade Forest/0 54.18,82.41
accept Ancient Power##29560 |goto The Jade Forest/0 54.18,82.41
stickystart "Collect_Ancient_Hozen_Skulls"
stickystart "Slay_Slingtail_Hozen"
step
kill Slingtail Treeleaper##61562, Slingtail Mudseer##55193, Slingtail Treeleaper##61557
|tip They look like {o}monkeys{}. |notinsticky
collect Bamboo Key##74260+ |n
click Hozen Cage##209586+
|tip They look like {o}dark wooden cages{}.
Free #6# Prisoners |q 29559/1 |goto The Jade Forest/0 53.90,80.82
'|clicknpc Alliance Prisoner##55490, Jinyu Prisoner##55201
step
label "Collect_Ancient_Hozen_Skulls"
click Hozen Skull##209595+
|tip They look like {o}white skulls{}.
collect 8 Ancient Hozen Skull##74033 |q 29560/1 |goto The Jade Forest/0 53.90,80.82
step
label "Slay_Slingtail_Hozen"
kill Slingtail Treeleaper##61562, Slingtail Mudseer##55193, Slingtail Treeleaper##61557
|tip They look like {o}monkeys{}. |notinsticky
Slay #12# Slingtail Hozen |q 29558/1 |goto The Jade Forest/0 53.90,80.82
step
talk Bold Karasshi##55196
turnin The Path of War##29558 |goto The Jade Forest/0 54.18,82.41
turnin Freeing Our Brothers##29559 |goto The Jade Forest/0 54.18,82.41
turnin Ancient Power##29560 |goto The Jade Forest/0 54.18,82.41
accept Kung Din##29759 |goto The Jade Forest/0 54.18,82.41
step
kill Kung Din##59037
|tip He walks around this small area.
collect Slingtail Key##79753 |q 29759/1 |goto The Jade Forest/0 54.64,80.08
step
talk Bold Karasshi##55196
turnin Kung Din##29759 |goto The Jade Forest/0 54.18,82.41
accept Jailbreak##29562 |goto The Jade Forest/0 54.18,82.41
step
kill 10 Slingtail Fishripper##55195 |q 29562/1 |goto The Jade Forest/0 55.78,80.61
step
talk Ut-Nam##56737
fpath Pearlfin Village |goto The Jade Forest/0 57.95,82.51
step
talk Bold Karasshi##56222
turnin Jailbreak##29562 |goto The Jade Forest/0 58.97,81.69
step
Watch the dialogue
talk Rell Nightwind##66949
accept The Pearlfin Situation##29883 |goto The Jade Forest/0 58.93,81.93
accept Road Rations##29885 |goto The Jade Forest/0 58.93,81.93
step
talk Pearlkeeper Fujin##59058
Select _"Please allow us a chance to prove our friendship. We wish you no harm."_ |gossip 40616
Speak to Pearlkeeper Fujin |q 29883/1 |goto The Jade Forest/0 58.76,81.28
step
talk Elder Lusshan##54960
Select _"I come from the Alliance. We wish to be allies, not enemies."_ |gossip 40442
Speak to Elder Lusshan |q 29883/4 |goto The Jade Forest/0 58.04,80.56
step
talk Ot-Temmdo##56693
Select _"What are you doing?"_ |gossip 40427
Speak to Watersmith Ot-Temmdo |q 29883/2 |goto The Jade Forest/0 59.91,83.92
step
talk Instructor Sharpfin##56690
Select _"My friends and I come with peaceful intentions."_ |gossip 40617
Speak to Instructor Sharpfin |q 29883/3 |goto The Jade Forest/0 58.79,84.58
step
kill Pearly Tortoise##59084+
|tip They look like {o}turtles{}.
|tip Underwater.
collect 6 Tortoise Flank##73368 |q 29885/1 |goto The Jade Forest/0 59.86,80.84
step
talk Rell Nightwind##66949
turnin The Pearlfin Situation##29883 |goto The Jade Forest/0 58.93,81.93
turnin Road Rations##29885 |goto The Jade Forest/0 58.93,81.93
step
talk Bold Karasshi##56222
accept Family Heirlooms##29762 |goto The Jade Forest/0 58.97,81.69
step
talk Pearlkeeper Fujin##59058
accept The Elder's Instruments##29887 |goto The Jade Forest/0 58.76,81.28
stickystart "Collect_Various_Items_29887"
step
clicknpc Pearlfin Villager##56233+
|tip They look like {o}dead fish men{}.
collect 8 Glassfin Heirloom##79811 |q 29762/1 |goto The Jade Forest/0 66.70,87.25
step
label "Collect_Various_Items_29887"
kill Slingtail Stickypaw##55110+
|tip They look like {o}monkeys{}.
collect Waterspeaker's Staff##79807 |q 29887/1 |goto The Jade Forest/0 66.70,87.25
collect Ceremonial Robes##25510 |q 29887/2 |goto The Jade Forest/0 66.70,87.25
collect Jade Crown##79809 |q 29887/3 |goto The Jade Forest/0 66.70,87.25
collect Rosewood Beads##79810 |q 29887/4 |goto The Jade Forest/0 66.70,87.25
step
talk Bold Karasshi##56222
turnin Family Heirlooms##29762 |goto The Jade Forest/0 58.97,81.69
step
talk Pearlkeeper Fujin##59058
turnin The Elder's Instruments##29887 |goto The Jade Forest/0 58.76,81.28
accept Spirits of the Water##29894 |goto The Jade Forest/0 58.76,81.28
step
talk Elder Lusshan##54960
Select _"I have brought the items for the ceremony."_ |gossip 40441
Speak to Elder Lusshan |q 29894/1 |goto The Jade Forest/0 58.58,82.89
step
Watch the dialogue
Witness the Waterspeaking Ceremony |q 29894/2 |goto The Jade Forest/0 58.58,82.89
'|clicknpc Elder Lusshan##56398
step
talk Bold Karasshi##56222
turnin Spirits of the Water##29894 |goto The Jade Forest/0 58.97,81.70
step
talk Rell Nightwind##66949
accept SI:7 Report: Lost in the Woods##29733 |goto The Jade Forest/0 58.98,81.82
step
Control Rell Nightwind |invehicle |goto The Jade Forest/0 58.98,81.82 |q 29733
step
Watch the dialogue
talk Amber Kearnen##55343
Select _"You did well, Agent Kearnen. Now save your energy... we'll fend them off."_ |gossip 40098
Kill the enemies that attack in waves
kill General Rik-Rik##55454
Listen to Rell's Report |q 29733/1 |goto The Jade Forest/0 49.87,70.76
'|kill Ambushing Hozen##55344
step
Watch the dialogue
Return to Pearlfin Village |outvehicle |q 29733
step
talk Rell Nightwind##55333
turnin SI:7 Report: Lost in the Woods##29733 |goto The Jade Forest/0 58.98,81.82
step
talk Sully 'The Pickle' McLeary##55282
|tip He walks around this small area.
accept SI:7 Report: Fire From the Sky##29725 |goto The Jade Forest/0 58.86,81.80
step
Control Sully 'The Pickle' McLeary |invehicle |goto The Jade Forest/0 58.86,81.80 |q 29725
step
Watch the dialogue
Kill the enemies that attack
Scout the Southeastern Shrine |q 29725/1 |goto The Jade Forest/0 49.55,64.40
step
Watch the dialogue
Kill the enemies that attack
Scout the Northern Shrine |q 29725/3 |goto The Jade Forest/0 47.87,58.53
step
Watch the dialogue
Kill the enemies that attack
Scout the Southwestern Shrine |q 29725/2 |goto The Jade Forest/0 46.35,61.79
step
Kill the enemies that attack
Return to Camp |q 29725/4 |goto The Jade Forest/0 50.92,63.12
step
Watch the dialogue
Return to Pearlfin Village |outvehicle |q 29725
step
talk Sully 'The Pickle' McLeary##55282
|tip He walks around this small area.
turnin SI:7 Report: Fire From the Sky##29725 |goto The Jade Forest/0 58.86,81.80
step
talk Little Lu##55284
accept SI:7 Report: Hostile Natives##29726 |goto The Jade Forest/0 59.07,81.89
step
Control Little Lu |invehicle |goto The Jade Forest/0 59.07,81.89 |q 29726
step
Watch the dialogue
click STAY OUT - NO VISITORS##209615
Inspect the Sign |q 29726/1 |goto The Jade Forest/0 38.31,45.40
step
clicknpc Lifelike Jade Statue##55378
Inspect the Lifelike Statue |q 29726/2 |goto The Jade Forest/0 38.86,45.92
step
clicknpc Suspicious Jade Statue##55430
Inspect the Suspicious Jade Statue |q 29726/3 |goto The Jade Forest/0 38.95,46.36
step
Watch the dialogue
talk Widow Greenpaw##55381
Select _"Can you help us? Our friend is injured."_ |gossip 40113
Speak with Widow Greenpaw |q 29726/4 |goto The Jade Forest/0 39.24,46.21
step
Watch the dialogue
Return to Pearlfin Village |outvehicle |q 29726
step
talk Little Lu##55284
turnin SI:7 Report: Hostile Natives##29726 |goto The Jade Forest/0 59.07,81.89
step
talk Amber Kearnen##55283
accept SI:7 Report: Take No Prisoners##29727 |goto The Jade Forest/0 58.93,81.93
step
Control Amber Kearnen |invehicle |goto The Jade Forest/0 58.93,81.93 |q 29727
step
Watch the dialogue
click Sniper Rifle##209621 |goto The Jade Forest/0 28.58,54.46
Control the Sniper Rifle |goto The Jade Forest/0 26.95,50.60 < 5 |noway |c |q 29727
step
Watch the dialogue
Kill enemies around this area
|tip They look like {o}monkeys{}.
|tip {o}Right-click{} them, and kill {o}all of them{}.
Help Sully Move Ahead |goto The Jade Forest/0 26.73,50.13 < 3 |noway |c |q 29727
'|clicknpc Sully "The Pickle" McLeary##55408
step
Watch the dialogue
Kill enemies around this area
|tip They look like {o}monkeys{}.
|tip {o}Right-click{} them, and kill {o}all of them{}.
Help Sully Move Ahead |goto The Jade Forest/0 26.89,50.26 < 3 |noway |c |q 29727
'|clicknpc Sully "The Pickle" McLeary##55408
step
Watch the dialogue
click Sully's Bomb Barrel##209633+
|tip They look like {o}wooden barrels that Sully places{}.
|tip There are {o}three of them{}.
Help Sully Move Ahead |goto The Jade Forest/0 27.64,51.14 < 3 |noway |c |q 29727
'|clicknpc Sully "The Pickle" McLeary##55408
step
Watch the dialogue
Kill enemies around this area
|tip They look like {o}monkeys{}.
|tip {o}Right-click{} them, and kill {o}all of them{}.
Help Sully Move Ahead |goto The Jade Forest/0 27.64,51.14 > 3 |noway |c |q 29727
'|clicknpc Sully "The Pickle" McLeary##55408
step
Watch the dialogue
Kill the enemies that attack in waves
|tip Protect {o}Sully "The Pickle" McLeary{}.
|tip They look like {o}monkeys{}.
|tip {o}Right-click{} them, and kill {o}all of them{}.
Help Sully Move Ahead |goto The Jade Forest/0 28.32,51.01 < 3 |noway |c |q 29727
'|clicknpc Sully "The Pickle" McLeary##55408
step
Watch the dialogue
Kill the enemies that attack in waves
|tip Protect {o}Sully "The Pickle" McLeary{}.
|tip They look like {o}monkeys{}.
|tip {o}Right-click{} them, and kill {o}all of them{}.
kill Hellscream's Vanguard##66634+
|tip They look like {o}orc soldiers{}.
Watch the dialogue
Guide Sully Through the Hozen Camp |q 29727/1
'|clicknpc Sully "The Pickle" McLeary##55408
step
Watch the dialogue
Return to Pearlfin Village |outvehicle |q 29727
step
talk Amber Kearnen##55283
turnin SI:7 Report: Take No Prisoners##29727 |goto The Jade Forest/0 58.93,81.93
step
talk Admiral Taylor##60970
accept A Perfect Match##29903 |goto The Jade Forest/0 58.87,81.68
step
talk Bold Karasshi##56222
accept Seek Out the Lorewalker##29888 |goto The Jade Forest/0 58.97,81.69
step
talk Pearlfin Aqualyte##56592+
|tip They will appear on your {o}minimap{} as {o}yellow dots{}.
|tip Look at their {o}weapons{}.
Select _"You might need this shield."_ |gossip 40054
|tip Choose this if they have a {o}single sword{}.
Select _"Take this book of healing prayers."_ |gossip 40057
|tip Choose this is they have a {o}red staff{}.
Select _"This spellcaster's staff is for you."_ |gossip 40060
|tip Choose this if they have a {o}blue staff{}.
Select _"Will these daggers help?"_ |gossip 40154
|tip Choose this if they have {o}two long daggers{}.
Equip #9# Pearlfin Aqualytes |q 29903/1 |goto The Jade Forest/0 59.17,83.98
'|talk Pearlfin Aqualyte##56591, Pearlfin Aqualyte##54959, Pearlfin Aqualyte##56585
step
talk Admiral Taylor##60970
turnin A Perfect Match##29903 |goto The Jade Forest/0 58.87,81.67
accept Bigger Fish to Fry##29904 |goto The Jade Forest/0 58.87,81.67
step
kill Jeweled Macaw##61747, Wild Stalker##56683, Wild Huntress##56655, Stoneskin Basilisk##56650
|tip They look like {o}various beasts{}.
Slay #24# Bamboo Wilds Wildlife |q 29904/1 |goto The Jade Forest/0 61.15,76.42
step
talk Admiral Taylor##60970
turnin Bigger Fish to Fry##29904 |goto The Jade Forest/0 58.87,81.67
accept Let Them Burn##29905 |goto The Jade Forest/0 58.87,81.67
accept Carp Diem##29906 |goto The Jade Forest/0 58.87,81.67
stickystart "Slay_Grookin_Reinforcements_Or_Slingtail_Recruits"
step
kill Chief Gukgut##54868 |q 29906/1 |goto The Jade Forest/0 54.69,80.06
|tip {o}Run away{} when he casts {o}Monkey Tantrum{}.
step
label "Slay_Grookin_Reinforcements_Or_Slingtail_Recruits"
kill Grookin Reinforcement##55461, Slingtail Recruit##61760
|tip They look like {o}monkeys{}.
Slay #15# Grookin Reinforcements or Slingtail Recruits |q 29905/1 |goto The Jade Forest/0 54.37,81.67
step
talk Elder Lusshan##54960
turnin Let Them Burn##29905 |goto The Jade Forest/0 58.90,81.48
turnin Carp Diem##29906 |goto The Jade Forest/0 58.90,81.48
step
click Mouthwatering Brew##209847
turnin Seek Out the Lorewalker##29888 |goto The Jade Forest/0 53.71,91.51
accept Borrowed Brew##29889 |goto The Jade Forest/0 53.71,91.51
step
click Mouthwatering Brew##209847
Watch the dialogue
Taste the Mouthwatering Brew |q 29889/1 |goto The Jade Forest/0 53.70,91.49
step
talk Lorewalker Cho##54961
turnin Borrowed Brew##29889 |goto The Jade Forest/0 53.66,91.41
accept A Visit with Lorewalker Cho##31130 |goto The Jade Forest/0 53.66,91.41
step
Watch the dialogue
click Shapeless Tree
Trim the Tree |q 31130/1 |goto The Jade Forest/0 53.73,90.98
step
Watch the dialogue
click Cho's "Art"##211661
Select _"<Paint a Portrait of Prince Anduin.>"_ |gossip 33293
Paint the Wall |q 31130/2 |goto The Jade Forest/0 54.08,90.67
step
Watch the dialogue
click Bird Feed
Feed the Birds |q 31130/3 |goto The Jade Forest/0 54.03,91.34
step
talk Lorewalker Cho##61218
turnin A Visit with Lorewalker Cho##31130 |goto The Jade Forest/0 54.02,91.19
accept Potency##29891 |goto The Jade Forest/0 54.02,91.19
accept Body##29892 |goto The Jade Forest/0 54.02,91.19
accept Hue##29893 |goto The Jade Forest/0 54.02,91.19
stickystart "Collect_Amberfly_Wings"
stickystart "Kill_Mist_Creepers"
stickystart "Kill_Mist_Horror"
step
kill Bog Crocolisk##54558+
|tip They look like {o}crocodiles{}.
collect 5 Pristine Crocolisk Eye##76107 |q 29892/1 |goto The Jade Forest/0 58.11,90.01
step
label "Collect_Amberfly_Wings"
kill Glittering Amberfly##54559+
|tip They look like {o}large flying insects{}.
use the Delicate Shearing Knife##76128
|tip Use it on their {o}corpses{}.
collect 8 Amberfly Wing##76115 |q 29893/1 |goto The Jade Forest/0 58.11,90.01
step
label "Kill_Mist_Creepers"
kill 8 Mist Creeper##56304 |q 29891/1 |goto The Jade Forest/0 58.11,90.01
|tip They look like {o}swamp elementals{}.
step
label "Kill_Mist_Horror"
kill Mist Horror##56310
|tip It {o}eventually appears{} after you kill a {o}Mist Creeper{}.
collect Mist Horror Heart##76129 |q 29891/2 |goto The Jade Forest/0 58.11,90.01
'|kill Mist Creeper##56304
step
talk Lorewalker Cho##56287
turnin Potency##29891 |goto The Jade Forest/0 53.78,90.63
turnin Body##29892 |goto The Jade Forest/0 53.78,90.63
turnin Hue##29893 |goto The Jade Forest/0 53.78,90.63
step
Watch the dialogue
talk Lorewalker Cho##56287
accept Finding Your Center##29890 |goto The Jade Forest/0 53.78,90.63
step
Watch the dialogue
click Potent Dream Brew##213754
Begin Meditating |invehicle |goto The Jade Forest/0 54.68,92.05 |q 29890
step
Meditate at the Pagoda |q 29890/1 |goto The Jade Forest/0 54.57,91.88
|tip Try to {o}keep the marker in the middle{} of the {o}bar that appears{}.
step
talk Anduin Wrynn##56434
turnin Finding Your Center##29890 |goto The Jade Forest/0 65.91,79.27
accept Sacred Waters##29898 |goto The Jade Forest/0 65.91,79.27
step
talk Ren Whitepaw##56432
accept Rest in Peace##29899 |goto The Jade Forest/0 65.98,79.28
step
talk Lina Whitepaw##56433
accept The Vale of Eternal Blossoms##29900 |goto The Jade Forest/0 65.98,79.38
stickystart "Kill_Tortured_Spirits"
step
Enter the cave |goto The Jade Forest/0 66.33,82.17 < 15 |walk
click Restorative Body##209885
|tip Inside the cave.
Collect the Waters of Restorative Body |q 29898/1 |goto The Jade Forest/0 66.84,82.08
step
click Restorative Mind##209888
|tip Inside the cave.
Collect the Waters of Restorative Mind |q 29898/2 |goto The Jade Forest/0 67.27,81.61
step
click Restorative Spirit##209889
|tip Inside the cave.
Collect the Waters of Restorative Spirit |q 29898/3 |goto The Jade Forest/0 68.04,81.86
step
kill Shade of Ling Heartfist##56441 |q 29900/1 |goto The Jade Forest/0 66.73,80.31
|tip He walks around this small area.
|tip Inside the cave.
step
click Restorative Heart##209890
|tip Inside the cave.
Collect the Waters of Restorative Heart |q 29898/4 |goto The Jade Forest/0 66.43,80.00
step
click Scroll of Sorrow##209582
|tip Inside the cave.
collect Song of the Vale##79875 |q 29900/2 |goto The Jade Forest/0 66.48,80.53
step
label "Kill_Tortured_Spirits"
kill 6 Tortured Spirit##56444 |q 29899/1 |goto The Jade Forest/0 66.33,82.17
|tip They look like {o}grey ghosts{}.
|tip Inside and outside the cave. |notinsticky
step
Leave the cave |goto The Jade Forest/0 66.33,82.17 < 15 |walk |only if subzone("Den of Sorrow") and indoors()
talk Lina Whitepaw##56433
turnin Sacred Waters##29898 |goto The Jade Forest/0 65.98,79.38
step
talk Ren Whitepaw##56432
turnin Rest in Peace##29899 |goto The Jade Forest/0 65.98,79.28
turnin The Vale of Eternal Blossoms##29900 |goto The Jade Forest/0 65.98,79.28
step
accept Anduin's Decision##29901 |goto The Jade Forest/0 65.98,79.28
|tip You will automatically accept this quest.
step
talk Anduin Wrynn##56434
Select _"It is time to go home, Prince Anduin."_ |gossip 40503
Speak to Anduin |q 29901/1 |goto The Jade Forest/0 65.91,79.27
step
talk Admiral Taylor##60970
turnin Anduin's Decision##29901 |goto The Jade Forest/0 58.87,81.68
step
talk Elder Lusshan##54960
accept In Search of Wisdom##29922 |goto The Jade Forest/0 58.04,80.55
step
talk Ut-Nam##56737
Select _"I would like to travel to Dawn's Blossom."_ |gossip 41374
Speak to Kitemaster Ot-Nam |q 29922/1 |goto The Jade Forest/0 57.95,82.52
step
Begin Flying to Dawn's Blossom |invehicle |goto The Jade Forest/0 57.95,82.52 |q 29922
step
Fly to Dawn's Blossom |outvehicle |goto The Jade Forest/0 47.03,46.19 |q 29922 |notravel
step
talk Keg Runner Lee##59186
fpath Dawn's Blossom |goto The Jade Forest/0 47.05,46.24
step
talk Lorewalker Cho##63577
turnin In Search of Wisdom##29922 |goto The Jade Forest/0 46.82,46.14
step
Watch the dialogue
talk Toya##56348
accept Welcome to Dawn's Blossom##31230 |goto The Jade Forest/0 47.15,46.17
step
talk Kai Wanderbrew##59173
|tip He walks around this area.
Speak with Kai Wanderbrew |q 31230/3 |goto The Jade Forest/0 46.72,45.81
step
talk Peiji Goldendraft##55809
|tip Inside the building.
Speak with Peiji Goldendraft |q 31230/2 |goto The Jade Forest/0 45.72,43.70
step
talk Master Windfur##59160
|tip Inside the building.
Speak with Master Windfur |q 31230/1 |goto The Jade Forest/0 48.49,44.49
step
talk Old Man Misteye##59383
accept An Air of Worry##29576 |goto The Jade Forest/0 48.32,46.06
step
talk Toortle Wider##63900
|tip He {o}rides on a turtle{} around this area.
accept Order of the Cloud Serpent##80311 |goto The Jade Forest/0 49.07,45.97
step
talk Apprentice Yufi##54998
accept Tian Monastery##29617 |goto The Jade Forest/0 49.65,45.83
step
talk Toya##56348
turnin Welcome to Dawn's Blossom##31230 |goto The Jade Forest/0 47.16,46.17
step
talk An Windfur##55234
|tip She walks around this area.
accept The Double Hozu Dare##29716 |goto The Jade Forest/0 46.65,46.15
accept Down Kitty!##29717 |goto The Jade Forest/0 46.65,46.15
step
talk Tzu the Ironbelly##56062
accept The Silkwood Road##29865 |goto The Jade Forest/0 46.46,45.80
step
talk Lo Wanderbrew##59178
accept The Threads that Stick##29866 |goto The Jade Forest/0 46.63,45.31
stickystart "Kill_Silkwood_Stalkers"
step
click Silk Patch##209951+
|tip They look like {o}large white eggs{}.
collect 7 Pristine Silk Strand##75023 |q 29866/1 |goto The Jade Forest/0 43.76,49.30
step
label "Kill_Silkwood_Stalkers"
kill 8 Silkwood Stalker##56070 |q 29865/1 |goto The Jade Forest/0 43.76,49.30
|tip They look like {o}spiders{}.
stickystart "Kill_Jade_Guardians"
step
clicknpc Scared Pandaren Cub##55267+
|tip They look like {o}panda children clinging to trees{}.
Select _"It's safe now.  You can come down."_ |gossip 39304
Rescue #6# Cubs |q 29716/1 |goto The Jade Forest/0 38.12,45.49
step
label "Kill_Jade_Guardians"
kill 8 Jade Guardian##55236 |q 29717/1 |goto The Jade Forest/0 38.12,45.49
|tip They look like {o}green cougars{}.
step
_Next to you:_
talk An Windfur##55274
turnin The Double Hozu Dare##29716
turnin Down Kitty!##29717
accept The Jade Witch##29723
step
talk Widow Greenpaw##55368
|tip If {o}someone already talked to her{}, she will be {o}behind the building{}.
Select _"Where is Shin?"_ |gossip 39810
Watch the dialogue
|tip Follow {o}Widow Greenpaw{} as she walks.
kill Widow Greenpaw##55368
Confront the Jade Witch |q 29723/1 |goto The Jade Forest/0 39.34,46.22
step
talk Tzu the Ironbelly##56062
turnin The Silkwood Road##29865 |goto The Jade Forest/0 46.46,45.80
step
talk An Windfur##55413
|tip She runs {o}along the path{} around this area.
turnin The Jade Witch##29723 |goto The Jade Forest/0 47.30,44.37
step
talk Toya##56348
accept All We Can Spare##29925 |goto The Jade Forest/0 47.16,46.17
step
talk Lo Wanderbrew##59178
turnin The Threads that Stick##29866 |goto The Jade Forest/0 46.63,45.31
step
talk Kai Wanderbrew##59173
|tip He walks around this area.
accept Find the Boy##29993 |goto The Jade Forest/0 47.05,46.01
step
talk Inkmaster Wei##56065
|tip He walks around this area.
turnin Find the Boy##29993 |goto The Jade Forest/0 55.00,44.87
accept Shrine of the Dawn##29995 |goto The Jade Forest/0 55.00,44.87
step
talk Inkmaster Glenzu##56064
accept The Perfect Color##29881 |goto The Jade Forest/0 54.88,45.31
step
talk Inkmaster Jo Po##56063
accept Quill of Stingers##29882 |goto The Jade Forest/0 55.40,45.28
step
talk Injar'i Lakebloom##59732
fpath The Arboretum |goto The Jade Forest/0 57.01,44.03
step
talk Elder Anli##58564
turnin Order of the Cloud Serpent##80311 |goto The Jade Forest/0 57.73,44.83
accept Wild Things##30134 |goto The Jade Forest/0 57.73,44.83
stickystart "Collect_Freshly_Fallen_Petals"
step
kill Orchard Wasp##56201+
|tip They look like {o}large flying insects{}.
collect 6 Wasp Stinger##75221 |q 29882/1 |goto The Jade Forest/0 53.60,44.50
step
label "Collect_Freshly_Fallen_Petals"
click Freshly Fallen Petals##209836+
|tip They look like {o}small red flowers{}.
collect 8 Freshly Fallen Petals##75219 |q 29881/1 |goto The Jade Forest/0 54.10,45.35
step
talk Inkmaster Glenzu##56064
turnin The Perfect Color##29881 |goto The Jade Forest/0 54.88,45.31
step
talk Inkmaster Jo Po##56063
|tip He walks around this area.
turnin Quill of Stingers##29882 |goto The Jade Forest/0 55.27,45.23
step
talk Syra Goldendraft##56708
turnin Shrine of the Dawn##29995 |goto The Jade Forest/0 52.57,38.12
accept Getting Permission##29920 |goto The Jade Forest/0 52.57,38.12
step
talk Pandriarch Bramblestaff##56209
Select _"Challenge the Pandriarch."_ |gossip 40636
kill Pandriarch Bramblestaff##56209
|tip He will eventually surrender.
Defeat Pandriarch Bramblestaff |q 29920/2 |goto The Jade Forest/0 54.09,38.46
step
talk Pandriarch Goldendraft##56210
Select _"Challenge the Pandriarch."_ |gossip 40637
kill Pandriarch Goldendraft##56210
|tip He will eventually surrender.
Defeat Pandriarch Goldendraft |q 29920/3 |goto The Jade Forest/0 53.59,36.73
step
talk Pandriarch Windfur##56206
Select _"Challenge the Pandriarch."_ |gossip 40541
kill Pandriarch Windfur##56206
|tip He will eventually surrender.
Defeat Pandriarch Windfur |q 29920/1 |goto The Jade Forest/0 52.54,35.57
step
talk Lo Wanderbrew##55788
turnin Getting Permission##29920 |goto The Jade Forest/0 52.59,38.12
step
talk Lorewalker Cho##56345
turnin All We Can Spare##29925 |goto The Jade Forest/0 50.91,27.08
step
talk Foreman Mann##56346
accept I Have No Jade And I Must Scream##29928 |goto The Jade Forest/0 50.94,27.03
step
talk Supplier Towsa##59735
fpath Emperor's Omen |goto The Jade Forest/0 50.82,26.80
step
kill Puckish Sprite##56349+
|tip They look like {o}small green imps{}.
click Chunk of Jade##209863+
|tip They look like {o}green rocks{} that appear on the ground.
collect 15 Chunk of Jade##76209 |q 29928/1 |goto The Jade Forest/0 48.33,31.10
step
talk Foreman Mann##56346
turnin I Have No Jade And I Must Scream##29928 |goto The Jade Forest/0 50.94,27.03
step
Watch the dialogue
talk Foreman Mann##56346
accept Calamity Jade##29926 |goto The Jade Forest/0 50.94,27.03
accept Mann's Man##29927 |goto The Jade Forest/0 50.94,27.03
step
clicknpc Outcast Sprite##55438
accept The Sprites' Plight##29745 |goto The Jade Forest/0 48.67,24.93
stickystart "Kill_Stonebound_Destroyers"
step
Find the Source of the Simulacra |q 29745/2 |goto The Jade Forest/0 48.61,20.26
step
label "Kill_Stonebound_Destroyers"
kill 10 Stonebound Destroyer##55288 |q 29745/1 |goto The Jade Forest/0 48.80,21.60
|tip They look like brown bulky humanoids.
step
_Click the Complete Quest Box:_
turnin The Sprites' Plight##29745
accept Break the Cycle##29747
step
click Shattered Destroyer##214871
accept Simulacrumble##29748 |goto The Jade Forest/0 48.57,20.62
stickystart "Kill_Shanze_Spiritbinders"
step
click Vacant Destroyer##214873+
|tip They look like {o}stone orc-like statues{}.
Kick #6# Vacant Destroyers |q 29748/1 |goto The Jade Forest/0 48.07,17.12
step
_Click the Complete Quest Box:_
turnin Simulacrumble##29748
step
label "Kill_Shanze_Spiritbinders"
kill 8 Shan'ze Spiritbinder##55279 |q 29747/1 |goto The Jade Forest/0 48.07,17.12
|tip They look like {o}grey bulky humanoids{}.
step
_Click the Complete Quest Box:_
turnin Break the Cycle##29747
accept An Urgent Plea##29749
step
click Staff of Pei-Zhi##209662
collect Staff of Pei-Zhi##74258 |q 29749/1 |goto The Jade Forest/0 44.23,14.91
step
kill Ancient Spirit##55489+
|tip Try to {o}kill them before they reach the swirling purple location{}.
|tip Kill them until the {o}bar on your screen fills up{}.
|tip When the {o}bar reaches about half full{}, regular enemies will {o}attack you{}.
Interrupt the Ritual of Spiritbinding |q 29749/2 |goto The Jade Forest/0 44.36,15.35
step
Watch the dialogue
talk Pei-Zhi##55614
turnin An Urgent Plea##29749 |goto The Jade Forest/0 44.23,15.03
accept Ritual Artifacts##29751 |goto The Jade Forest/0 44.23,15.03
accept Vessels of the Spirit##29750 |goto The Jade Forest/0 44.23,15.03
accept The Wayward Dead##29752 |goto The Jade Forest/0 44.23,15.03
stickystart "Collect_Spirit_Bottles"
stickystart "Recover_Wayward_Ancestors"
step
click Jade Cong##209699
collect Jade Cong##74762 |q 29751/1 |goto The Jade Forest/0 42.68,15.76
step
click Pungent Ritual Candle##209701
collect Pungent Ritual Candle##74761 |q 29751/3 |goto The Jade Forest/0 42.26,17.09
step
click Chipped Ritual Bowl##209700
collect Chipped Ritual Bowl##74760 |q 29751/2 |goto The Jade Forest/0 41.62,14.32
step
label "Collect_Spirit_Bottles"
kill Shan'ze Spiritclaw##55291+
|tip They look like {o}bulky humanoids{}.
collect 8 Spirit Bottle##74763 |q 29750/1 |goto The Jade Forest/0 42.07,15.74
step
label "Recover_Wayward_Ancestors"
use the Staff of Pei-Zhi##74771
|tip Use it on {o}Wayward Ancestors{}.
|tip They look like {o}banshees{}.
Recover #10# Wayward Ancestors |q 29752/1 |goto The Jade Forest/0 42.07,15.74
'|clicknpc Wayward Ancestor##55290
step
talk Pei-Zhi##55614
turnin Ritual Artifacts##29751 |goto The Jade Forest/0 44.23,15.03
turnin Vessels of the Spirit##29750 |goto The Jade Forest/0 44.23,15.03
turnin The Wayward Dead##29752 |goto The Jade Forest/0 44.23,15.03
accept Back to Nature##29753 |goto The Jade Forest/0 44.23,15.03
accept A Humble Offering##29756 |goto The Jade Forest/0 44.23,15.03
stickystart "Collect_Tidemist_Caps"
step
use the Spirit Bottles##74808
|tip You can use it {o}repeatedly{} in the {o}same location{}.
kill Raging Beast Spirit##55790+
|tip {o}Some{} of them will be {o}friendly and run off{}.
Return #8# Beast Spirits to Nature |q 29753/1 |goto The Jade Forest/0 38.41,10.90
step
label "Collect_Tidemist_Caps"
click Tidemist Cap##209825+
|tip They look like {o}clusters of white mushrooms{}.
collect 10 Tidemist Cap##75214 |q 29756/1 |goto The Jade Forest/0 39.76,11.48
step
talk Pei-Zhi##55614
turnin Back to Nature##29753 |goto The Jade Forest/0 44.23,15.03
turnin A Humble Offering##29756 |goto The Jade Forest/0 44.23,15.03
accept To Bridge Earth and Sky##29754 |goto The Jade Forest/0 44.23,15.03
step
Watch the dialogue
Kill the enemies that attack in waves
|tip Protect {o}Pei-Zhi{} until the {o}bar on the screen fills up{}.
Protect Pei-Zhi During His Ritual |q 29754/1 |goto The Jade Forest/0 43.70,12.90
'|kill Shan'ze Spiritclaw##55902
'|clicknpc Pei-Zhi##55892
step
_Click the Complete Quest Box:_
turnin To Bridge Earth and Sky##29754
accept Pei-Back##29755
step
kill Stonebound Colossus##56595
|tip He walks around this area.
|tip {o}Click your body{} when your {o}spirit gets pulled out{}.
|tip He will {o}regenerate health{} when {o}you're not in your body{}.
kill Shan Jitong##56596 |q 29755/1 |goto The Jade Forest/0 42.52,10.45
|tip He {o}appears while you fight{} the Stonebound Colossus.
step
talk Pei-Zhi##59492
turnin Pei-Back##29755 |goto The Jade Forest/0 43.84,12.52
step
talk Lin Tenderpaw##54913
|tip Run around the {o}western side of the mountain{} and {o}follow the road{}. |only if walking
turnin Tian Monastery##29617 |goto The Jade Forest/0 44.99,24.95
accept The High Elder##29618 |goto The Jade Forest/0 44.99,24.95
step
talk High Elder Cloudfall##54914
|tip Upstairs on the balcony outside the building.
turnin The High Elder##29618 |goto The Jade Forest/0 45.22,25.07
step
talk Lin Tenderpaw##54913
accept A Courteous Guest##29619 |goto The Jade Forest/0 44.99,24.95
step
talk Studious Chu##59736
fpath Tian Monastery |goto The Jade Forest/0 43.58,24.53
step
kill Greenwood Thief##54930+
|tip They will {o}only drop them{} if they are {o}carrying oranges{}.
click Ripe Orange##209436+
|tip They look like {o}small orange balls{}.
collect 8 Ripe Orange##72589 |q 29619/1 |goto The Jade Forest/0 45.73,27.35
step
Enter the mine |goto The Jade Forest/0 45.86,28.84 < 10 |walk
Locate Hao Mann |q 29927/1 |goto The Jade Forest/6 60.96,36.74
|tip Inside the mine.
step
talk Hao Mann##56347
|tip Inside the mine.
turnin Mann's Man##29927 |goto The Jade Forest/6 60.96,36.74
accept Trapped!##29929 |goto The Jade Forest/6 60.96,36.74
stickystart "Kill_Greenstone_Nibblers"
stickystart "Free_Greenstone_Miners"
step
kill 6 Greenstone Gorger##56404 |q 29926/2 |goto The Jade Forest/0 45.86,28.84
|tip They look like {o}large stone spiders{}.
|tip Throughout the mine.
step
label "Free_Greenstone_Miners"
talk Greenstone Miner##56464+
|tip They look like {o}pandas inside piles of large rocks{}.
|tip Throughout the mine. |notinsticky
Free #8# Greenstone Miners |q 29929/1 |goto The Jade Forest/0 45.86,28.84
step
label "Kill_Greenstone_Nibblers"
kill 12 Greenstone Nibbler##56401 |q 29926/1 |goto The Jade Forest/0 45.86,28.84
|tip They look like {o}small stone spiders{}.
|tip Throughout the mine. |notinsticky
step
Run up the stairs |goto The Jade Forest/7 50.06,53.11 < 10 |walk |only if subzone("Greenstone Quarry") and indoors()
Follow the path up and leave the mine |goto The Jade Forest/0 45.86,28.84 < 10 |walk |only if subzone("Greenstone Quarry") and indoors()
talk Hao Mann##56467
turnin Trapped!##29929 |goto The Jade Forest/0 46.30,29.39
accept What's Mined Is Yours##29930 |goto The Jade Forest/0 46.30,29.39
step
clicknpc Jade Cart##56527
Ride in the Jade Cart |invehicle |goto The Jade Forest/0 46.27,29.48 |q 29930
step
Watch the dialogue
Kill the enemies that attack in waves
Deliver the Jade |q 29930/1 |goto The Jade Forest/0 51.21,26.72 |notravel
'|kill Brittle Greenstone Gorger##56543
step
Watch the dialogue
talk Foreman Mann##56346
turnin Calamity Jade##29926 |goto The Jade Forest/0 50.94,27.03
turnin What's Mined Is Yours##29930 |goto The Jade Forest/0 50.94,27.03
step
Watch the dialogue
talk Foreman Mann##56346
accept The Serpent's Heart##29931 |goto The Jade Forest/0 50.94,27.03
step
talk Lin Tenderpaw##54913
turnin A Courteous Guest##29619 |goto The Jade Forest/0 44.99,24.95
accept The Great Banquet##29620 |goto The Jade Forest/0 44.99,24.95
step
talk High Elder Cloudfall##54914
Select _"I don't need any introductions, old man. Let's skip ahead to the good part."_ |gossip 39493
|tip If this {o}dialogue option isn't available{}, pick the {o}one that's available{}, and {o}follow him{} as he walks.
Select _"I am certain. Let's move on to the fighting."_ |gossip 40364
Speak with High Elder Cloudfall |q 29620/1 |goto The Jade Forest/0 42.74,23.17
step
talk High Elder Cloudfall##54914
turnin The Great Banquet##29620 |goto The Jade Forest/0 42.74,23.17
step
Watch the dialogue
talk Xiao##54926
accept Your Training Starts Now##29622 |goto The Jade Forest/0 43.13,23.63
accept Groundskeeper Wu##29626 |goto The Jade Forest/0 43.13,23.63
step
talk Master Stone Fist##54922
accept Becoming Battle-Ready##29632 |goto The Jade Forest/0 43.23,24.75
step
talk Tian Pupil##54944+
Select _"Let's fight!"_ |gossip 40241
kill Tian Pupil##54944+
|tip They will {o}eventually surrender{}.
Defeat #8# Monastic Pupils |q 29632/1 |goto The Jade Forest/0 43.73,24.99
step
talk Master Stone Fist##54922
turnin Becoming Battle-Ready##29632 |goto The Jade Forest/0 43.24,24.76
accept Zhi-Zhi, the Dextrous##29633 |goto The Jade Forest/0 43.24,24.76
accept Husshun, the Wizened##29634 |goto The Jade Forest/0 43.24,24.76
step
talk Zhi-Zhi##54924
Select _"Wanna fight?"_ |gossip 40594
kill Zhi-Zhi##54924
|tip He will {o}eventually surrender{}.
Defeat Zhi-Zhi |q 29633/1 |goto The Jade Forest/0 43.06,25.99
step
talk Husshun##54925
Select _"I challenge you to a fight, Husshun!"_ |gossip 40595
kill Husshun##54925
|tip He will {o}eventually surrender{}.
Defeat Husshun |q 29634/1 |goto The Jade Forest/0 44.56,24.05
step
talk Master Stone Fist##54922
turnin Zhi-Zhi, the Dextrous##29633 |goto The Jade Forest/0 43.24,24.75
turnin Husshun, the Wizened##29634 |goto The Jade Forest/0 43.24,24.75
accept Xiao, the Eater##29635 |goto The Jade Forest/0 43.24,24.75
step
talk Xiao##54926
Select _"Put down your fork, and pick up your fists! I challenge you!"_ |gossip 40337
kill Xiao##54926
|tip He will {o}eventually surrender{}.
Defeat Xiao |q 29635/1 |goto The Jade Forest/0 43.13,23.63
step
talk Master Stone Fist##54922
turnin Xiao, the Eater##29635 |goto The Jade Forest/0 43.24,24.75
accept A Test of Endurance##29636 |goto The Jade Forest/0 43.24,24.75
step
talk Groundskeeper Wu##54915
turnin Groundskeeper Wu##29626 |goto The Jade Forest/0 41.62,23.70
accept A Proper Weapon##29627 |goto The Jade Forest/0 41.62,23.70
stickystart "Collect_Rattan_Switches"
step
talk June Whiteblossom##54981
buy Black Walnut Extract##72954 |q 29627/2 |goto The Jade Forest/0 41.39,24.15
step
talk Brewmaster Lei Kanglei##54982
buy 3 Triple-Bittered Ale##72979 |q 29627/3 |goto The Jade Forest/0 41.77,24.61
step
label "Collect_Rattan_Switches"
click Rattan Switch##209464+
|tip They look like {o}small thin trees{}.
collect 6 Rattan Switch##72926 |q 29627/1 |goto The Jade Forest/0 41.09,24.78
step
talk Groundskeeper Wu##54915
turnin A Proper Weapon##29627 |goto The Jade Forest/0 41.62,23.70
accept A Strong Back##29628 |goto The Jade Forest/0 41.62,23.70
accept A Steady Hand##29629 |goto The Jade Forest/0 41.62,23.70
accept And a Heavy Fist##29630 |goto The Jade Forest/0 41.62,23.70
step
talk Instructor Myang##54918
turnin A Test of Endurance##29636 |goto The Jade Forest/0 38.97,24.04
accept The Rumpus##29637 |goto The Jade Forest/0 38.97,24.04
step
use the Monastary Fireworks##73369
kill Rumpus Combatant##55139, Rumpus Brute##55151
|tip They {o}attack in waves{}.
Survive the Melee |q 29637/1 |goto The Jade Forest/0 38.97,23.27
step
talk Instructor Myang##54918
turnin The Rumpus##29637 |goto The Jade Forest/0 38.97,24.04
step
talk Guard Shan Long##55094
accept Burning Bright##29631 |goto The Jade Forest/0 38.01,23.80
stickystart "Collect_Blushleaf_Extract"
step
kill Waxwood Matriarch##55238, Waxwood Hunter##54988
|tip They look like {o}tigers{}.
Slay #6# Waxwood Hunters |q 29631/1 |goto The Jade Forest/0 35.10,22.10
step
label "Collect_Blushleaf_Extract"
click Blushleaf Cluster+
|tip They look like small {o}red plants{}.
|tip {o}Don't move{} while channeling, or you'll {o}collect less extract{}.
collect 80 Blushleaf Extract##73193 |q 29629/1 |goto The Jade Forest/0 35.10,22.10
step
kill 10 Greenwood Trickster##54987 |q 29630/1 |goto The Jade Forest/0 37.79,20.14
|tip They look like {o}sprites{}.
step
_NOTE:_
During the Next Few Steps
|tip After {o}collecting the cauldron{} in the next step, {o}don't mount up{}.
|tip If you {o}mount up{}, you will {o}lose the cauldron{} and have to {o}get another one{}.
Click Here to Continue |confirm |q 29628
step
click Boiling Cauldron##209551
|tip Inside the building.
Obtain the Boiling Cauldron |q 29628/1 |goto The Jade Forest/0 37.72,17.38
step
talk Guard Shan Long##55094
turnin Burning Bright##29631 |goto The Jade Forest/0 38.00,23.80
step
Return the Boiling Cauldron |q 29628/2 |goto The Jade Forest/0 41.61,23.69
step
talk Groundskeeper Wu##54915
turnin A Strong Back##29628 |goto The Jade Forest/0 41.61,23.69
turnin A Steady Hand##29629 |goto The Jade Forest/0 41.61,23.69
turnin And a Heavy Fist##29630 |goto The Jade Forest/0 41.61,23.69
step
talk Instructor Xann##54917
turnin Your Training Starts Now##29622 |goto The Jade Forest/0 41.60,28.33
accept Perfection##29623 |goto The Jade Forest/0 41.60,28.33
step
Complete #12# Practice Strikes |q 29623/1 |goto The Jade Forest/0 41.40,27.90
|tip Watch the {o}Tian Instructor{} as he {o}makes motions{}.
|tip Use the abilities to {o}mimic his motions{}.
'|clicknpc Tian Instructor##55199
step
talk Instructor Xann##54917
turnin Perfection##29623 |goto The Jade Forest/0 41.60,28.33
accept Attention##29624 |goto The Jade Forest/0 41.60,28.33
step
kill 2 Training Bag##55184 |q 29624/1 |goto The Jade Forest/0 41.66,26.97
|tip Each pole has {o}2 punching bags{}, on the {o}left and right{} of the pole.
|tip You will see {o}LEFT!{} and {o}RIGHT!{} messages {o}on your screen{}.
|tip {o}Attack the bag{} on the {o}side the message says{}.
step
talk Instructor Xann##54917
turnin Attention##29624 |goto The Jade Forest/0 41.60,28.33
accept Flying Colors##29639 |goto The Jade Forest/0 41.60,28.33
step
talk High Elder Cloudfall##54914
turnin Flying Colors##29639 |goto The Jade Forest/0 42.74,23.17
step
talk Gingo Alebottom##59733
fpath Sri-La Village |goto The Jade Forest/0 55.38,23.73
step
talk Instructor Tong##58225
turnin Wild Things##30134 |goto The Jade Forest/0 65.33,31.65
accept Beating the Odds##30135 |goto The Jade Forest/0 65.33,31.65
accept Empty Nests##30136 |goto The Jade Forest/0 65.33,31.65
accept Egg Collection##30137 |goto The Jade Forest/0 65.33,31.65
stickystart "Slay_Slitherscale_Sauroks"
step
use the Silken Rope##78947
|tip Use it on {o}Windward Hatchlings{}.
|tip They look like {o}small dragons without wings{}.
|tip Get {o}six of them{} following you.
|tip You can {o}fly without losing them{}.
Return #6# Windward Hatchlings to Their Nests |q 30136/1 |goto The Jade Forest/0 64.60,31.26
Bring the Windward Hatchlings to [65.78,31.24]
'|clicknpc Windward Hatchling##58220, Windward Hatchling##58244, Windward Hatchling##58243
step
label "Slay_Slitherscale_Sauroks"
kill Slitherscale Eggdrinker##63532+
|tip They look like {o}reptile people{}.
Slay #8# Slitherscale Sauroks |q 30135/1 |goto The Jade Forest/0 64.60,31.26
step
talk Instructor Tong##58225
turnin Beating the Odds##30135 |goto The Jade Forest/0 65.33,31.65
turnin Empty Nests##30136 |goto The Jade Forest/0 65.33,31.65
step
click Serpent Egg##210240+
|tip They look like {o}blue{}, {o}orange{}, and {o}green balls{}.
collect 6 Serpent Egg##78959 |q 30137/1 |goto The Jade Forest/0 68.03,27.62
step
talk Instructor Tong##58225
turnin Egg Collection##30137 |goto The Jade Forest/0 65.33,31.65
accept Choosing the One##30138 |goto The Jade Forest/0 65.33,31.65
step
talk Instructor Tong##58225
turnin Choosing the One##30138 |goto The Jade Forest/0 65.33,31.65
accept The Rider's Journey##30139 |goto The Jade Forest/0 65.33,31.65 |or
'|accept The Rider's Journey##30140 |goto The Jade Forest/0 65.33,31.65 |or
'|accept The Rider's Journey##30141 |goto The Jade Forest/0 65.33,31.65 |or
step
talk Instructor Skythorn##58228
turnin The Rider's Journey##30139 |goto The Jade Forest/0 57.56,45.10 |only if haveq(30139) or completedq(30139)
turnin The Rider's Journey##30140 |goto The Jade Forest/0 57.56,45.10 |only if haveq(30140) or completedq(30140)
turnin The Rider's Journey##30141 |goto The Jade Forest/0 57.56,45.10 |only if haveq(30141) or completedq(30141)
accept It's A...##30142 |goto The Jade Forest/0 57.56,45.10
step
Watch the dialogue
Witness the Egg Hatch |q 30142/1 |goto The Jade Forest/0 57.45,45.14
step
talk Instructor Skythorn##58228
turnin It's A...##30142 |goto The Jade Forest/0 57.56,45.10
step
talk Foreman Raike##59391
turnin The Serpent's Heart##29931 |goto The Jade Forest/0 48.31,61.35
accept Love's Labor##30495 |goto The Jade Forest/0 48.31,61.35
step
talk Historian Dinh##59395
Select _"I've got a new jade shipment for you."_ |gossip 39183
Complete the Delivery to Historian Dinh |q 30495/1 |goto The Jade Forest/0 46.36,61.80
step
talk Surveyor Sawa##59401
Select _"I've got your jade right here."_ |gossip 40697
Complete the Delivery to Surveyor Sawa |q 30495/2 |goto The Jade Forest/0 46.94,60.35
step
talk Kitemaster Shoku##59392
Select _"I've got a jade delivery for you."_ |gossip 39632
Complete the Delivery to Kitemaster Shoku |q 30495/3 |goto The Jade Forest/0 48.17,60.02
step
talk Kitemaster Shoku##59392
|tip You can {o}skip this step{} if you are {o}able to fly{}.
Select _"I need a ride to the top of the statue."_ |gossip 39631
Begin Riding a Kite to the Top of the Statue |invehicle |goto The Jade Forest/0 48.18,60.02 |q 30495
step
Ride a Kite to the Top of the Statue |outvehicle |goto The Jade Forest/0 47.46,60.58 |q 30495 |notravel
step
talk Taskmaster Emi##59397
|tip On a platform at the top of the statue.
Select _"Did someone say they needed jade?"_ |gossip 39805
Complete the Delivery to Taskmaster Emi |q 30495/4 |goto The Jade Forest/0 47.58,60.67
step
talk Kitemaster Inga##59400
|tip On a platform at the top of the statue.
|tip You can {o}skip this step{} if you are {o}able to fly{}.
Select _"I need a ride to the bottom of the statue."_ |gossip 39806
Begin Riding a Kite to the Bottom of the Statue |invehicle |goto The Jade Forest/0 47.45,60.51 |q 30495
step
Ride a Kite to the Bottom of the Statue |outvehicle |goto The Jade Forest/0 48.23,60.00 |q 30495 |notravel
step
talk Foreman Raike##59391
turnin Love's Labor##30495 |goto The Jade Forest/0 48.31,61.35
accept The Temple of the Jade Serpent##29932 |goto The Jade Forest/0 48.31,61.35
step
talk Kitemaster Shoku##59392
Select _"Take me to the Temple of the Jade Serpent."_ |gossip 39633
Begin Flying to the Temple of the Jade Serpent |invehicle |goto The Jade Forest/0 48.18,60.02 |q 29932
step
Fly to the Temple of the Jade Serpent |outvehicle |goto The Jade Forest/0 55.67,57.05 |q 29932 |notravel
step
talk Elder Sage Wind-Yi##57242
|tip She walks around this area.
Select _"I have a message for the Jade Serpent."_ |gossip 40586
Speak to Elder Sage Wind-Yi |q 29932/1 |goto The Jade Forest/0 55.84,57.07
Also check around [54.99,56.89]
step
Watch the dialogue
talk Elder Sage Rain-Zhu##56782
turnin The Temple of the Jade Serpent##29932 |goto The Jade Forest/0 58.13,58.66
accept The Scryer's Dilemma##29997 |goto The Jade Forest/0 58.13,58.66
accept The Librarian's Quandary##29998 |goto The Jade Forest/0 58.13,58.66
accept They Call Him... Stormstout##32019 |goto The Jade Forest/0 58.13,58.66
step
talk Fei##56784
accept The Rider's Bind##29999 |goto The Jade Forest/0 58.03,59.01
accept Lighting Up the Sky##30005 |goto The Jade Forest/0 58.03,59.01
stickystart "Launch_Fireworks"
step
clicknpc Playful Crimson Serpent##56852
|tip It moves around this small area.
Find the Playful Crimson Serpent |q 29999/2 |goto The Jade Forest/0 58.18,61.39
step
talk Lorewalker Stonestep##56786
|tip Inside the building.
turnin The Librarian's Quandary##29998 |goto The Jade Forest/0 56.26,60.43
accept Moth-Ridden##30001 |goto The Jade Forest/0 56.26,60.43
accept Pages of History##30002 |goto The Jade Forest/0 56.26,60.43
stickystop "Launch_Fireworks"
stickystart "Kill_Dappled_Moths"
stickystart "Squash_Bookworms"
step
clicknpc Playful Gold Serpent##56850
|tip It moves around this small area.
|tip Inside the building.
Find the Playful Gold Serpent |q 29999/4 |goto The Jade Forest/0 56.00,60.32
step
label "Kill_Dappled_Moths"
kill 8 Dappled Moth##57232 |q 30001/1 |goto The Jade Forest/0 56.00,60.32
|tip They look like {o}butterflies{}.
|tip Inside the building. |notinsticky
step
label "Squash_Bookworms"
click Infested Book##209594+
|tip They look like {o}large green books{}.
|tip Inside the building. |notinsticky
kill Bookworm##57237+
|tip You can {o}right-click them repeatedly{} to kill them quickly.
Squash #12# Bookworms |q 30002/1 |goto The Jade Forest/0 56.00,60.32
step
talk Lorewalker Stonestep##56786
|tip Inside the building.
turnin Moth-Ridden##30001 |goto The Jade Forest/0 56.26,60.44
turnin Pages of History##30002 |goto The Jade Forest/0 56.26,60.44
accept Everything In Its Place##30004 |goto The Jade Forest/0 56.26,60.44
step
clicknpc Playful Emerald Serpent##56851
|tip It moves around this small area.
|tip {o}Follow the stairs up{} and {o}leave the building{} to find it.
Find the Playful Emerald Serpent |q 29999/3 |goto The Jade Forest/0 56.54,58.38
step
kill Water Fiend##56820+
|tip They look like {o}small water elementals{}.
|tip Inside the building.
collect Scryer's Staff##76725 |q 29997/1 |goto The Jade Forest/0 57.46,55.98
step
talk Wise Mari##56787
|tip Inside the building.
turnin The Scryer's Dilemma##29997 |goto The Jade Forest/0 57.57,56.03
accept A New Vision##30011 |goto The Jade Forest/0 57.57,56.03
stickystart "Launch_Fireworks"
step
clicknpc Playful Azure Serpent##56853
|tip It moves around this small area.
Find the Playful Azure Serpent |q 29999/1 |goto The Jade Forest/0 59.21,56.73
step
label "Launch_Fireworks"
click Firework Launcher##209672+
|tip They look like {o}metal pots on wooden pallets{}.
Launch #8# Fireworks |q 30005/1 |goto The Jade Forest/0 57.46,58.50
step
talk Elder Sage Rain-Zhu##56782
turnin A New Vision##30011 |goto The Jade Forest/0 58.14,58.66
turnin Everything In Its Place##30004 |goto The Jade Forest/0 58.14,58.66
step
talk Fei##56784
turnin The Rider's Bind##29999 |goto The Jade Forest/0 58.03,59.01
turnin Lighting Up the Sky##30005 |goto The Jade Forest/0 58.03,59.01
accept The Jade Serpent##30000 |goto The Jade Forest/0 58.03,59.01
step
Watch the dialogue
Listen to the Jade Serpent |q 30000/1
step
talk Elder Sage Wind-Yi##57242
|tip She walks around this area.
turnin The Jade Serpent##30000 |goto The Jade Forest/0 55.84,57.08
accept Get Back Here!##30498 |goto The Jade Forest/0 55.84,57.08
Also check around [54.99,56.89]
step
talk Ginsa Arroweye##59727
fpath Jade Temple Grounds |goto The Jade Forest/0 54.57,61.76
step
talk Ginsa Arroweye##59727
Select _"I could use a kite to Pearlfin Village."_ |gossip 28346
Begin Flying to Pearlfin Village |invehicle |goto The Jade Forest/0 54.57,61.76 |q 30498
step
Fly to Pearlfin Village |outvehicle |goto The Jade Forest/0 58.24,84.22 |q 30498 |notravel
step
talk Sully 'The Pickle' McLeary##59550
accept An Unexpected Advantage##30565 |goto The Jade Forest/0 58.55,82.30
step
talk Admiral Taylor##55122
turnin Get Back Here!##30498 |goto The Jade Forest/0 58.07,80.65
accept Helping the Cause##30568 |goto The Jade Forest/0 58.07,80.65
step
talk Pearlfin Recruit##59572
Select _"Let's see what you've got."_ |gossip 39293
kill Pearlfin Recruit##59572
|tip They will {o}eventually surrender{}.
Challenge a Pearlfin Recruit |q 30568/1 |goto The Jade Forest/0 59.34,84.18
step
clicknpc Wounded Pearlfin##59609+
|tip They look like {o}fish people laying or sitting down{}.
Assist #3# Wounded Pearlfins |q 30568/3 |goto The Jade Forest/0 60.33,87.22
step
kill Slingtail Ambusher##59554+
|tip They look like {o}monkeys{}.
collect 4 Water-Damaged Gear##80176 |q 30565/1 |goto The Jade Forest/0 63.23,77.34
collect 4 Rusty Locking Bolt##80177 |q 30565/2 |goto The Jade Forest/0 63.23,77.34
step
talk Amber Kearnen##59563
Select _"What can I do to help?"_ |gossip 39488
kill Hozen Captive##59560
|tip It appears in the {o}pit nearby{}.
Defeat the Captive Hozen |q 30568/2 |goto The Jade Forest/0 54.81,79.75
step
talk Sully 'The Pickle' McLeary##59550
turnin An Unexpected Advantage##30565 |goto The Jade Forest/0 58.55,82.30
step
talk Admiral Taylor##55122
turnin Helping the Cause##30568 |goto The Jade Forest/0 58.07,80.65
step
talk Lorewalker Cho##59620
accept Last Piece of the Puzzle##31362 |goto The Jade Forest/0 58.85,81.11
step
talk Mishi##64475
Select _"I am ready to leave."_ |gossip 28425
Begin Flying to Serpent's Overlook |invehicle |goto The Jade Forest/0 58.83,81.08 |q 31362
step
Fly to Serpent's Overlook |outvehicle |goto The Jade Forest/0 44.65,67.24 |q 31362 |notravel
step
talk Sky Dancer Ji##64310
fpath Serpent's Overlook |goto The Jade Forest/0 43.10,68.49
step
use the Cho Family Heirloom##80071
|tip At the top of the mountain.
Watch the dialogue
Place the Heirloom at the Cho Family Shrine |q 31362/1 |goto The Jade Forest/0 44.50,66.93
step
talk Lorewalker Cho##59411
|tip At the top of the mountain.
turnin Last Piece of the Puzzle##31362 |goto The Jade Forest/0 44.77,67.09
accept The Seal is Broken##31303 |goto The Jade Forest/0 44.77,67.09
step
talk Mishi##64475
Select _"Let's do this, Mishi!"_ |gossip 38770
Fly with Mishi |invehicle |goto The Jade Forest/0 44.77,67.04 |q 31303
step
Seal #12# Sha Fissures |q 31303/1 |goto The Jade Forest/0 47.30,58.20
|tip Use the ability on the {o}white smoke pillars{} on the ground as you fly.
step
talk Lorewalker Cho##59418
turnin The Seal is Broken##31303 |goto The Jade Forest/0 49.30,61.48
accept Residual Fallout##30500 |goto The Jade Forest/0 49.30,61.48
accept Jaded Heart##30502 |goto The Jade Forest/0 49.30,61.48
accept Emergency Response##31319 |goto The Jade Forest/0 49.30,61.48
stickystart "Kill_Sha_Remnants"
stickystart "Kill_Sha_Echoes"
step
use Cho's Fireworks##86511
Recover Admiral Taylor |q 31319/1 |goto The Jade Forest/0 47.70,62.05
'|clicknpc Admiral Taylor##64491
step
use Cho's Fireworks##86511
Recover Mishka |q 31319/2 |goto The Jade Forest/0 46.36,61.66
'|clicknpc Mishka##64493
step
use Cho's Fireworks##86511
Recover Sully |q 31319/3 |goto The Jade Forest/0 47.53,59.19
'|clicknpc Sully##64494
step
label "Kill_Sha_Remnants"
click Celestial Jade##210921+
|tip They look like {o}small green rocks{}.
collect Celestial Jade##80074+ |n
use the Celestial Jade##80074+
|tip Use them on {o}Sha Remnants{}.
|tip They look like {o}larger shadow aliens{}.
|tip They will {o}become non-elite{} and {o}easy to kill{}.
kill 6 Sha Remnant##59434 |q 30502/1 |goto The Jade Forest/0 46.93,60.72
step
label "Kill_Sha_Echoes"
kill 12 Sha Echo##59417 |q 30500/1 |goto The Jade Forest/0 46.93,60.72
|tip They look like {o}smaller shadow aliens{}.
step
talk Lorewalker Cho##59418
turnin Residual Fallout##30500 |goto The Jade Forest/0 49.30,61.48
turnin Jaded Heart##30502 |goto The Jade Forest/0 49.30,61.48
turnin Emergency Response##31319 |goto The Jade Forest/0 49.30,61.48
step
talk Fei##59899
accept Moving On##30648 |goto The Jade Forest/0 49.30,61.42
step
talk Shao the Defiant##54697
|tip He fights around this area.
turnin An Air of Worry##29576 |goto The Jade Forest/0 43.48,75.92
accept Defiance##29578 |goto The Jade Forest/0 43.48,75.92
accept Rally the Survivors##29579 |goto The Jade Forest/0 43.48,75.92
step
talk Gentle Mother Hanae##54854
|tip She walks around this area.
|tip Inside the building.
accept Spitfire##29585 |goto The Jade Forest/0 43.24,76.01
accept Orchard-Supplied Hardware##29580 |goto The Jade Forest/0 43.24,76.01
stickystart "Collect_Orchard_Tools"
stickystart "Kill_Gormali_Incinerators"
stickystart "Kill_Gormali_Raiders"
stickystart "Put_Out_Orchard_Fires"
step
talk Nectarbreeze Farmer##54763+
|tip They look like {o}pandaren{}.
Select _"Get to Hanae's house. It's safe there."_ |gossip 39167
Rescue #5# Survivors |q 29579/1 |goto The Jade Forest/0 44.01,74.31
step
label "Collect_Orchard_Tools"
click Orchard Tool##209345+
|tip They look like {o}various farm tools with long brown wooden handles{}.
collect 6 Orchard Tool##72133 |q 29580/1 |goto The Jade Forest/0 44.01,74.31
step
label "Kill_Gormali_Incinerators"
kill 8 Gormali Incinerator##54703 |q 29578/2 |goto The Jade Forest/0 44.01,74.31
|tip They look like {o}grey bulky humanoids carrying torches{}.
step
label "Kill_Gormali_Raiders"
kill 8 Gormali Raider##54702 |q 29578/1 |goto The Jade Forest/0 44.01,74.31
|tip They look like {o}grey bulky humanoids{}.
step
label "Put_Out_Orchard_Fires"
use the Nectarbreeze Cider##72578
|tip Use it {o}near fires while facing them{}.
Put Out #12# Orchard Fires |q 29585/1 |goto The Jade Forest/0 44.01,74.31
step
talk Shao the Defiant##54697
|tip He fights around this area.
turnin Defiance##29578 |goto The Jade Forest/0 43.48,75.92
turnin Rally the Survivors##29579 |goto The Jade Forest/0 43.48,75.92
step
talk Gentle Mother Hanae##54854
|tip She walks around this area.
|tip Inside the building.
turnin Spitfire##29585 |goto The Jade Forest/0 43.24,76.01
turnin Orchard-Supplied Hardware##29580 |goto The Jade Forest/0 43.24,76.01
step
talk Traumatized Nectarbreeze Farmer##55209
|tip Inside the building.
accept The Splintered Path##29586 |goto The Jade Forest/0 43.21,75.94
step
Discover Camp Mogu |q 29586/1 |goto The Jade Forest/0 41.00,73.97
step
talk Shao the Defiant##55009
turnin The Splintered Path##29586 |goto The Jade Forest/0 41.00,73.97
accept Unbound##29587 |goto The Jade Forest/0 41.00,73.97
accept Getting Down to Business##29670 |goto The Jade Forest/0 41.00,73.97
stickystart "Set_Farmers_Free"
step
kill Subjugator Gormal##55016 |q 29670/1 |goto The Jade Forest/0 37.80,76.18
step
label "Set_Farmers_Free"
clicknpc Captured Nectarbreeze Farmer##54990+
|tip They look like {o}pandas caught in nets{}.
kill Gormali Slaver##54989+
|tip Kill the {o}ones dragging a prisoner{} behind them.
Set #10# Farmers Free |q 29587/1 |goto The Jade Forest/0 39.91,74.79
step
talk Shao the Defiant##55009
turnin Unbound##29587 |goto The Jade Forest/0 41.00,73.97
turnin Getting Down to Business##29670 |goto The Jade Forest/0 41.00,73.97
step
talk Peiji Goldendraft##55809
|tip Inside the building.
accept Temple of the White Tiger##31392 |goto The Jade Forest/0 45.72,43.70
step
talk Messenger Grummle##63778
|tip Inside the building.
accept The Road to Kun-Lai##31254 |goto The Jade Forest/0 45.72,43.80
step
talk Fei##59899
Select _"I am ready to leave."_ |gossip 29679
Begin Flying to the Valley of the Four Winds |invehicle |goto The Jade Forest/0 49.30,61.42 |q 30648
step
Watch the dialogue
Travel to the Valley of the Four Winds |q 30648/1 |goto Valley of the Four Winds/0 85.97,21.72 |notravel
step
_Click the Complete Quest Box:_
turnin Moving On##30648
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (10-70)\\Valley of the Four Winds (15-70)",{
next="Leveling Guides\\Pandaria (10-70)\\Krasarang Wilds (15-70)",
condition_valid=function() return level <= 70 and chromietime() == MOP end,
condition_valid_msg="This guide is optimized for {w}Chromie Time{}. Load the {w}Chromie Time{} guide first and select the {w}Wilds of Pandaria{} option.",
condition_valid_guide="Leveling Guides\Starter Guides\Chromie Time",
startlevel=15,
endlevel=70,
},[[
step
talk Chen Stormstout##56133
turnin They Call Him... Stormstout##32019 |goto Valley of the Four Winds/0 85.94,22.10 |only if haveq(32019) or completedq(32019)
turnin His Name Was... Stormstout##32018 |goto Valley of the Four Winds/0 85.94,22.10 |only if haveq(32018) or completedq(32018)
accept Chen and Li Li##29907 |goto Valley of the Four Winds/0 85.94,22.10
step
talk Princeton##60230
fpath Pang's Stead |goto Valley of the Four Winds/0 84.49,21.06
step
Watch the dialogue
Follow Chen and Li Li to Pang's Stead |q 29907/1 |goto Valley of the Four Winds/0 83.78,21.17
step
talk Pang Thunderfoot##56204
turnin Chen and Li Li##29907 |goto Valley of the Four Winds/0 83.70,21.03
accept A Seemingly Endless Nuisance##29908 |goto Valley of the Four Winds/0 83.70,21.03
step
talk Nan Thunderfoot##65528
|tip Inside the building.
home Thunderfoot Inn |goto Valley of the Four Winds/0 83.76,20.19 |q 29877 |future
stickystart "Slay_Large_Virmen"
stickystart "Slay_Virmen_Pesterers"
step
talk Muno the Farmhand##56440
accept A Poor Grasp of the Basics##29877 |goto Valley of the Four Winds/0 82.70,21.24
step
clicknpc Plow Plant##56281+
|tip They look like {o}plows sticking out of dirt piles{}.
clicknpc Hoe Tree##56280+
|tip They look like {o}hoes sticking out of dirt piles{}.
clicknpc Rake Tree##56279+
|tip They look like {o}rakes sticking out of dirt piles{}.
clicknpc Barrow Bush##56278+
|tip They look like {o}wheelbarrow handles sticking out of dirt piles{}.
Find #7# Buried Farm Equipment |q 29877/1 |goto Valley of the Four Winds/0 80.71,21.45
step
label "Slay_Large_Virmen"
kill Snagtooth Virmen##56184, Snagtooth Tool-Grabber##56185, Snagtooth Troublemaker##55873
|tip They look like {o}larger rats{}.
Slay #8# Large Virmen |q 29908/1 |goto Valley of the Four Winds/0 80.71,21.45
step
label "Slay_Virmen_Pesterers"
kill Snagtooth Pesterling##65504+
|tip They look like {o}tiny rats that run around in groups{}.
Slay #18# Virmen Pesterers |q 29908/2 |goto Valley of the Four Winds/0 80.71,21.45
step
talk Muno the Farmhand##56440
turnin A Poor Grasp of the Basics##29877 |goto Valley of the Four Winds/0 82.70,21.24
step
talk Pang Thunderfoot##56204
turnin A Seemingly Endless Nuisance##29908 |goto Valley of the Four Winds/0 83.70,21.03
accept Low Turnip Turnout##29909 |goto Valley of the Four Winds/0 83.70,21.03
step
talk Xiao##56110
accept The Search for the Hidden Master##30086 |goto Valley of the Four Winds/0 84.08,21.04
step
talk Xiao##56110
turnin The Search for the Hidden Master##30086 |goto Valley of the Four Winds/0 84.08,21.05
accept Ken-Ken##29873 |goto Valley of the Four Winds/0 84.08,21.05
accept Clever Ashyo##29871 |goto Valley of the Four Winds/0 84.08,21.05
accept Kang Bramblestaff##29874 |goto Valley of the Four Winds/0 84.08,21.05
accept Lin Tenderpaw##29872 |goto Valley of the Four Winds/0 84.08,21.05
step
talk Ang Thunderfoot##56207
|tip He walks around this area.
turnin Low Turnip Turnout##29909 |goto Valley of the Four Winds/0 81.59,25.22
accept Taking a Crop##29940 |goto Valley of the Four Winds/0 81.59,25.22
step
talk Ana Thunderfoot##56465
|tip She walks around this area.
accept Rampaging Rodents##29910 |goto Valley of the Four Winds/0 82.23,25.94
stickystart "Fill_Marmot_Holes"
step
clicknpc Plump Marmot##56203+
|tip They look like {o}small brown rodents{}.
Move #6# Plump Marmots |q 29910/1 |goto Valley of the Four Winds/0 82.38,25.15
step
label "Fill_Marmot_Holes"
click Marmot Hole##209835+
|tip They look like {o}piles of dirt{}.
Fill #6# Marmot Holes |q 29910/2 |goto Valley of the Four Winds/0 82.38,25.15
step
talk Ana Thunderfoot##56465
|tip She walks around this area.
turnin Rampaging Rodents##29910 |goto Valley of the Four Winds/0 82.23,25.94
step
Enter the underground burrow |goto Valley of the Four Winds/0 86.50,28.08 < 10 |walk
click Stolen Turnip##209891+
|tip They look like {o}round white vegetables with green leaves{}.
|tip Inside the underground burrow.
collect 5 Stolen Turnip##76297 |q 29940/1 |goto Valley of the Four Winds/0 84.86,27.01
step
Leave the underground burrow |goto Valley of the Four Winds/0 86.56,28.08 < 10 |walk |only if subzone("Virmen Nest") and indoors()
click Stolen Watermelon##209899+
|tip They look like {o}watermelons with flag poles in them{}.
collect 5 Stolen Watermelon##76298 |q 29940/2 |goto Valley of the Four Winds/0 85.56,33.13
step
talk Ang Thunderfoot##56207
|tip He walks around this area.
turnin Taking a Crop##29940 |goto Valley of the Four Winds/0 81.59,25.22
accept Practically Perfect Produce##29911 |goto Valley of the Four Winds/0 81.59,25.22
step
talk Pang Thunderfoot##56204
turnin Practically Perfect Produce##29911 |goto Valley of the Four Winds/0 83.70,21.02
accept The Fabulous Miss Fanny##29912 |goto Valley of the Four Winds/0 83.70,21.02
step
click Ang's Giant Pink Turnip##209844
collect Ang's Giant Pink Turnip##75259 |goto Valley of the Four Winds/0 84.28,21.89 |q 29912 |future
step
click Ang's Summer Watermelon##209843
collect Ang's Summer Watermelon##75258 |goto Valley of the Four Winds/0 84.16,22.07 |q 29912 |future
step
click Pang's Extra-Spicy Tofu##209842
collect Pang's Extra-Spicy Tofu##75256 |goto Valley of the Four Winds/0 84.04,22.00 |q 29912 |future
step
talk Miss Fanny##56192
Select _"Hit it with average power."_ |gossip 40435
Launch a Pink Turnip |q 29912/1 |goto Valley of the Four Winds/0 83.00,21.36
step
talk Miss Fanny##56192
Select _"Hit it very softly."_ |gossip 40431
Launch a Watermelon |q 29912/2 |goto Valley of the Four Winds/0 83.00,21.36
step
talk Miss Fanny##56192
Select _"Hit it as hard as possible."_ |gossip 40430
Launch the Extra-Spicy Tofu |q 29912/3 |goto Valley of the Four Winds/0 83.00,21.36
step
talk Liang Thunderfoot##56205
turnin The Fabulous Miss Fanny##29912 |goto Valley of the Four Winds/0 75.22,24.05
accept The Meat They'll Eat##29913 |goto Valley of the Four Winds/0 75.22,24.05
accept Back to the Sty##29914 |goto Valley of the Four Winds/0 75.22,24.05
stickystart "Collect_Turtle_Meat_Scraps"
stickystart "Collect_Mushan_Shoulder_Steaks"
step
talk Kim of the Mountain Winds##62658
fpath Grassy Cline |goto Valley of the Four Winds/0 70.82,24.10
step
clicknpc Jian##56253
|tip It looks like a {o}grey pig{}.
|tip It walks around this area.
Find Jian |q 29914/1 |goto Valley of the Four Winds/0 70.39,24.05
step
clicknpc Smelly##56255
|tip It looks like a {o}pink pig{}.
|tip It walks around this area.
Find Smelly |q 29914/3 |goto Valley of the Four Winds/0 70.56,28.36
step
clicknpc Ling##56254
|tip It looks like a {o}grey pig{}.
|tip It walks around this area.
Find Ling |q 29914/2 |goto Valley of the Four Winds/0 67.08,29.74
step
label "Collect_Turtle_Meat_Scraps"
kill Wyrmhorn Turtle##56256+
collect 80 Turtle Meat Scrap##75276 |q 29913/2 |goto Valley of the Four Winds/0 67.87,29.22
step
label "Collect_Mushan_Shoulder_Steaks"
kill Adolescent Mushan##56239+
|tip They look like {o}yellow dinosaurs{}.
collect 4 Mushan Shoulder Steak##75275 |q 29913/1 |goto Valley of the Four Winds/0 71.90,29.94
step
talk Liang Thunderfoot##56205
turnin The Meat They'll Eat##29913 |goto Valley of the Four Winds/0 75.22,24.06
turnin Back to the Sty##29914 |goto Valley of the Four Winds/0 75.22,24.06
accept A Neighbor's Duty##29915 |goto Valley of the Four Winds/0 75.22,24.07
step
talk Francis the Shepherd Boy##56208
turnin A Neighbor's Duty##29915 |goto Valley of the Four Winds/0 78.12,32.91
accept Piercing Talons and Slavering Jaws##29916 |goto Valley of the Four Winds/0 78.12,32.91
accept Lupello##29917 |goto Valley of the Four Winds/0 78.12,32.91
stickystart "Kill_Thieving_Wolves"
stickystart "Kill_Thieving_Plainshawks"
step
kill Lupello##56357 |q 29917/1 |goto Valley of the Four Winds/0 81.76,39.85
|tip It looks like a {o}large black wolf{}.
|tip It walks around this area.
step
label "Kill_Thieving_Wolves"
kill 6 Thieving Wolf##56106 |q 29916/2 |goto Valley of the Four Winds/0 81.64,35.01
step
label "Kill_Thieving_Plainshawks"
kill 5 Thieving Plainshawk##56034 |q 29916/1 |goto Valley of the Four Winds/0 80.40,31.74
|tip They look like {o}brown birds perched in trees{} or {o}flying in the air{}.
step
talk Francis the Shepherd Boy##56208
turnin Piercing Talons and Slavering Jaws##29916 |goto Valley of the Four Winds/0 78.12,32.91
turnin Lupello##29917 |goto Valley of the Four Winds/0 78.12,32.91
step
Watch the dialogue
talk Shang Thunderfoot##56312
accept A Lesson in Bravery##29918 |goto Valley of the Four Winds/0 78.18,32.82
step
use the Rancher's Lariat##75208
|tip Use it on {o}Great White Plainshawks{}.
|tip They look like {o}larger white birds flying in the air{}.
kill Great White Plainshawk##56171 |q 29918/1 |goto Valley of the Four Winds/0 79.40,34.76
step
talk Shang Thunderfoot##56312
|tip He walks around this area.
turnin A Lesson in Bravery##29918 |goto Valley of the Four Winds/0 74.56,34.61
step
talk Chen Stormstout##56133
accept Great Minds Drink Alike##29919 |goto Valley of the Four Winds/0 75.28,35.50
step
talk Chen Stormstout##56133
Select _"I'm ready. Let's hit the road."_ |gossip 40440
Watch the dialogue
Follow Chen and Li Li |goto Valley of the Four Winds/0 75.28,35.50 > 10 |c |q 29919
step
Watch the dialogue
|tip Follow {o}Chen{} and {o}Li Li{} as they walk.
|tip They eventually walk to this location.
Escort Chen and Li Li |q 29919/1 |goto Valley of the Four Winds/0 68.87,43.15
'|clicknpc Chen Stormstout##56571, Li Li##56572
step
talk Mudmug##56474
turnin Great Minds Drink Alike##29919 |goto Valley of the Four Winds/0 68.72,43.12
step
talk Chen Stormstout##56133
accept Leaders Among Breeders##29944 |goto Valley of the Four Winds/0 68.87,43.15
step
talk Li Li##56138
accept Yellow and Red Make Orange##29945 |goto Valley of the Four Winds/0 68.89,43.32
stickystart "Collect_Vial_Animal_Bloods"
step
click Meadow Marigold##209907+
|tip They look like {o}yellow flowers{}.
collect 10 Meadow Marigold##76334 |q 29945/1 |goto Valley of the Four Winds/0 70.53,47.94
step
kill Aiyu the Skillet##56520 |q 29944/1 |goto Valley of the Four Winds/0 68.29,38.01
|tip He looks like a {o}large rat{}.
|tip He walks around this area.
step
kill Jinanya the Clawblade##56513 |q 29944/2 |goto Valley of the Four Winds/0 65.97,37.39
|tip He looks like a {o}large rat{}.
|tip He walks around this area.
step
kill Frenzyhop##56514 |q 29944/3 |goto Valley of the Four Winds/0 64.53,40.65
|tip He looks like a {o}large rat{}.
|tip He walks around this area.
step
label "Collect_Vial_Animal_Bloods"
kill Tawnyhide Fawn##56526, Tawnyhide Stag##56532, Mushan Nomad##56523, Tawnyhide Doe##56531, Longfang Howler##56524
|tip Only {o}beast enemies{} will {o}drop the quest items{}.
collect 40 Vial of Animal Blood##76335 |q 29945/2 |goto Valley of the Four Winds/0 68.71,48.24
You can find more around [66.67,39.42]
step
talk Li Li##56138
turnin Yellow and Red Make Orange##29945 |goto Valley of the Four Winds/0 68.88,43.30
accept Crouching Carrot, Hidden Turnip##29947 |goto Valley of the Four Winds/0 68.87,43.31
step
talk Chen Stormstout##56133
turnin Leaders Among Breeders##29944 |goto Valley of the Four Winds/0 68.88,43.15
accept The Warren-Mother##29946 |goto Valley of the Four Winds/0 68.88,43.15
step
talk Mudmug##56474
accept Thieves to the Core##29948 |goto Valley of the Four Winds/0 68.71,43.12
stickystart "Collect_Stolen_Sack_Of_Hops"
stickystart "Trick_Virmen_With_Orange_Painted_Turnips"
step
Enter the underground burrow |goto Valley of the Four Winds/0 65.99,38.38 < 10 |walk
kill Chufa##56537 |q 29946/1 |goto Valley of the Four Winds/0 67.90,37.44
|tip Inside the underground burrow.
step
label "Collect_Stolen_Sack_Of_Hops"
click Stolen Sack of Hops##211696+
|tip They look like {o}tan bags filled with green balls{}.
|tip Throughout the underground burrow. |notinsticky
collect 6 Stolen Sack of Hops##76337 |q 29948/1 |goto Valley of the Four Winds/0 69.05,39.90
step
label "Trick_Virmen_With_Orange_Painted_Turnips"
use the Orange-Painted Turnip##76370
|tip Use it on {o}Twitchheel Hoarders{}.
|tip They look like {o}rat people{}.
|tip Inside and outside the underground burrow.
Trick #12# Virmen with Orange-Painted Turnips |q 29947/1 |goto Valley of the Four Winds/0 67.88,36.52
'|clicknpc Twitchheel Hoarder##56538
step
talk Li Li##56138
turnin Crouching Carrot, Hidden Turnip##29947 |goto Valley of the Four Winds/0 68.88,43.32
stickystart "Collect_Stolen_Sack_Of_Hops"
step
talk Mudmug##56474
turnin Thieves to the Core##29948 |goto Valley of the Four Winds/0 68.71,43.12
step
talk Chen Stormstout##56133
turnin The Warren-Mother##29946 |goto Valley of the Four Winds/0 68.88,43.15
accept Legacy##29949 |goto Valley of the Four Winds/0 68.88,43.14
step
Watch the dialogue
talk Li Li##56138
turnin Legacy##29949 |goto Valley of the Four Winds/0 68.77,43.44
accept Li Li's Day Off##29950 |goto Valley of the Four Winds/0 68.77,43.44
step
Watch the dialogue
talk Mudmug##56474
accept Muddy Water##29951 |goto Valley of the Four Winds/0 68.70,43.10
step
use Li Li's Wishing-Stone##76350
|tip Use it if she's {o}not following you{}.
Bring Li Li to Huangtze Falls |q 29950/3 |goto Valley of the Four Winds/0 74.96,42.42
step
use Li Li's Wishing-Stone##76350
|tip Use it if she's {o}not following you{}.
Bring Li Li to New Cifera |q 29950/2 |goto Valley of the Four Winds/0 61.90,35.36
step
talk Clever Ashyo##56113
turnin Clever Ashyo##29871 |goto Valley of the Four Winds/0 61.23,34.22
accept Ashyo's Vision##29577 |goto Valley of the Four Winds/0 61.23,34.22
step
talk Yan##56773
accept Bottletoads##29757 |goto Valley of the Four Winds/0 60.61,33.69
step
talk Gladecaster Lang##58736
accept Watery Woes##30267 |goto Valley of the Four Winds/0 60.97,32.88
stickystart "Collect_Spindly_Bloodfeathers"
stickystart "Collect_Glade_Glimmers"
step
kill Manglemaw##58754
kill Manglemaw's Mother##58755
|tip She appears {o}after you kill Manglemaw{}.
collect Enormous Crocolisk Tail##79238 |goto Valley of the Four Winds/0 57.48,25.79 |q 30275 |future
step
use the Enormous Crocolisk Tail##79238
accept A Crocolisk Tale##30275
step
label "Collect_Spindly_Bloodfeathers"
kill Glade Hunter##57299, Glade Sprinter##58741
|tip They look like {o}large walking birds{}.
collect 5 Spindly Bloodfeather##79198 |q 30267/2 |goto Valley of the Four Winds/0 57.03,33.27
step
label "Collect_Glade_Glimmers"
clicknpc Glade Glimmer##57301+
|tip They look like {o}tiny yellow flying insects{}.
collect 18 Glade Glimmer##79197 |q 30267/1 |goto Valley of the Four Winds/0 57.03,33.27
step
talk Gladecaster Lang##58736
turnin Watery Woes##30267 |goto Valley of the Four Winds/0 60.98,32.89
step
talk Yan##56773
turnin A Crocolisk Tale##30275 |goto Valley of the Four Winds/0 60.62,33.70
step
Follow the path up |goto Valley of the Four Winds/0 62.95,29.70 < 20 |only if walking
talk Zhang Yue##56802
accept Snap Judgment##29600 |goto Valley of the Four Winds/0 59.83,27.93
step
talk Clever Ashyo##56113
Select _"Go ahead and speak with the water, Ashyo."_ |gossip 40669
Witness Ashyo's Vision |q 29577/1 |goto Valley of the Four Winds/0 59.26,27.56
step
talk Zhang Yue##56802
turnin Ashyo's Vision##29577 |goto Valley of the Four Winds/0 59.83,27.93
accept The Golden Dream##29581 |goto Valley of the Four Winds/0 59.82,27.95
stickystart "Scoop_Toad_Eggs"
stickystart "Kill_Razorback_Snappers"
step
kill Krosh##56833
accept Guess Who's Back##29758 |goto Valley of the Four Winds/0 65.32,25.73
|tip You will automatically accept this quest after looting.
step
click Dreamleaf Bush##209987
collect Sprig of Dreamleaf##76973 |q 29581/1 |goto Valley of the Four Winds/0 65.26,26.29
step
label "Scoop_Toad_Eggs"
click Gurgling Toadspawn##209950+
|tip They look like {o}bubbles in the water{}.
Scoop #8# Toad Eggs |q 29757/1 |goto Valley of the Four Winds/0 63.15,26.42
step
label "Kill_Razorback_Snappers"
kill 16 Razorback Snapper##56832 |q 29600/1 |goto Valley of the Four Winds/0 63.15,26.42
|tip They look like {o}small turtles{}.
step
talk Zhang Yue##56802
turnin Snap Judgment##29600 |goto Valley of the Four Winds/0 59.83,27.95
step
talk Yan##56773
turnin The Golden Dream##29581 |goto Valley of the Four Winds/0 60.61,33.69
step
Watch the dialogue
talk Yan##56773
turnin Bottletoads##29757 |goto Valley of the Four Winds/0 60.61,33.69
turnin Guess Whose Back##29758 |goto Valley of the Four Winds/0 60.61,33.69
step
talk Wing Nga##60231
fpath Halfhill |goto Valley of the Four Winds/0 56.50,50.36
step
talk Stonecarver Mac##64315
accept Children of the Water##32045 |goto Valley of the Four Winds/0 55.14,47.39
step
talk Lolo Lio##59585
accept Got Silk?##32035 |goto Valley of the Four Winds/0 55.59,52.06
step
use Li Li's Wishing-Stone##76350
|tip Use it if she's {o}not following you{}.
Bring Li Li to the Silken Fields |q 29950/1 |goto Valley of the Four Winds/0 61.79,58.85
step
talk Silkmaster Tsai##57405
turnin Got Silk?##32035 |goto Valley of the Four Winds/0 62.66,59.74
accept Where Silk Comes From##30072 |goto Valley of the Four Winds/0 62.66,59.75
step
talk Journeyman Chu##57424
accept The Moth Rebellion##30059 |goto Valley of the Four Winds/0 63.55,58.45
stickystart "Kill_Tiny_Mutated_Silkmoths"
step
kill 6 Mutated Silkmoth##57422 |q 30059/1 |goto Valley of the Four Winds/0 65.40,57.81
|tip They look like {o}large white moths{}.
step
label "Kill_Tiny_Mutated_Silkmoths"
kill 8 Tiny Mutated Silkmoth##65984 |q 30059/2 |goto Valley of the Four Winds/0 65.40,57.81
|tip They look like {o}tiny moths in groups{}.
step
click Muddy Water##209921+
|tip They look like {o}green spots on the water{}.
|tip {o}Fill up the flask{} on your screen.
collect Stoppered Vial of Muddy Water##76356 |q 29951/1 |goto Valley of the Four Winds/0 71.61,56.13
step
click Mulberry Barrel##210080
|tip They look like {o}wooden buckets{}.
collect Mulberry Leaves##77455 |q 30072/1 |goto Valley of the Four Winds/0 62.48,55.19
step
clicknpc Hungry Silkworm##57403+
|tip They look like {o}green caterpillars{}.
Feed #5# Hungry Silkworms |q 30072/2 |goto Valley of the Four Winds/0 61.28,61.04
step
click Silk Cocoon Bucket##210088
|tip Inside the building.
collect Raw Silk##77456 |q 30072/3 |goto Valley of the Four Winds/0 62.37,62.49
step
talk Silkmaster Tsai##57405
turnin Where Silk Comes From##30072 |goto Valley of the Four Winds/0 62.66,59.75
step
talk Journeyman Chu##57424
turnin The Moth Rebellion##30059 |goto Valley of the Four Winds/0 63.54,58.45
step
talk Master Goh##57407
accept Mothallus!##30058 |goto Valley of the Four Winds/0 63.62,58.53
step
click Mothallus Bait##210117
Watch the dialogue
kill Mothallus##57421
Bait and Kill Mothallus |q 30058/1 |goto Valley of the Four Winds/0 64.38,57.97
step
talk Master Goh##57407
turnin Mothallus!##30058 |goto Valley of the Four Winds/0 63.62,58.53
step
talk Li Li##56138
turnin Li Li's Day Off##29950 |goto Valley of the Four Winds/0 68.78,43.43
step
talk Mudmug##56474
turnin Muddy Water##29951 |goto Valley of the Four Winds/0 68.71,43.12
step
Watch the dialogue
talk Chen Stormstout##56133
accept Broken Dreams##29952 |goto Valley of the Four Winds/0 68.85,43.41
step
talk Chen Stormstout##56133
Select _"What happened, Chen?"_ |gossip 40423
Enter Chen's Story |invehicle |goto Valley of the Four Winds/0 68.85,43.41 |q 29952
step
Watch the dialogue
|tip Inside the building.
kill Unruly Alemental##56684
Click Here After Killing the Unruly Alemental |confirm |goto Valley of the Four Winds/0 34.25,70.57 |q 29952
step
Watch the dialogue
kill Wuk-Wuk##56691
Click Here After Killing Wuk-Wuk |confirm |goto Valley of the Four Winds/0 35.87,72.72 |q 29952
step
Watch the dialogue
|tip Upstairs inside the building.
|tip Follow the path up into the {o}upper level{} of the building.
Listen to Chen's Story |q 29952/1 |goto Valley of the Four Winds/0 34.55,70.70
step
talk Chen Stormstout##56133
turnin Broken Dreams##29952 |goto Valley of the Four Winds/0 68.85,43.40
accept Chen's Resolution##30046 |goto Valley of the Four Winds/0 68.85,43.40
step
talk Chen Stormstout##56133
turnin Chen's Resolution##30046 |goto Valley of the Four Winds/0 55.89,49.44
accept Hop Hunting##30053 |goto Valley of the Four Winds/0 55.89,49.44
accept Li Li and the Grain##30048 |goto Valley of the Four Winds/0 55.89,49.44
accept Doesn't Hold Water##30049 |goto Valley of the Four Winds/0 55.89,49.44
step
talk Mudmug##56474
|tip He walks around this small area.
turnin Doesn't Hold Water##30049 |goto Valley of the Four Winds/0 54.28,38.74
accept The Great Water Hunt##30051 |goto Valley of the Four Winds/0 54.28,38.74
step
talk Mudmug##56474
|tip He walks around this small area.
Select _"I'm ready to go, Mudmug."_ |gossip 40623
Speak to Mudmug |q 30051/1 |goto Valley of the Four Winds/0 54.28,38.74
stickystart "Gather_Gladewaters"
step
kill Kracor##67128 |q 32045/1 |goto Valley of the Four Winds/0 56.05,33.85
step
label "Gather_Gladewaters"
Gather #30# Gladewater |q 30051/2 |goto Valley of the Four Winds/0 54.14,31.20
|tip Bring {o}Mudmug{} near {o}Swirling Pools{}.
|tip They look like {o}dark blue glittering spots{} on the ground.
'|clicknpc Mudmug##58785
step
_Next to you:_
talk Mudmug##58785
turnin The Great Water Hunt##30051
accept Barreling Along##30172
step
kill Thundergill##67125 |q 32045/2 |goto Valley of the Four Winds/0 54.94,25.22
|tip He looks like a {o}large blue fish{}.
|tip He {o}swims underwater{} around this area.
step
kill Succula##67099 |q 32045/3 |goto Valley of the Four Winds/0 51.30,26.90
|tip She looks like a {o}large red and yellow spider{}.
|tip It can also be {o}stealthed{}.
|tip She walks around this area.
step
Lead Mudmug Back to Halfhill |q 30172/1 |goto Valley of the Four Winds/0 55.89,49.43
If he's not following you, you can find Mudmug around [54.28,38.74]
step
talk Chen Stormstout##56133
turnin Barreling Along##30172 |goto Valley of the Four Winds/0 55.89,49.43
step
talk Stonecarver Mac##64315
turnin Children of the Water##32045 |goto Valley of the Four Winds/0 55.14,47.38
step
talk Gardener Fran##62377
accept Gardener Fran and the Watering Can##30050 |goto Valley of the Four Winds/0 48.31,33.48
step
talk Gardener Fran##62377
Select _"I'm ready to go!"_ |gossip 36034
Water #60# Vegetables |q 30050/1 |goto Valley of the Four Winds/0 48.31,33.48
|tip Use the {o}Water Plants{} button ability near {o}vegetables{}.
|tip {o}She tells you{} which {o}vegetables{} to water.
|tip The {o}correct vegetables will sparkle{}.
|tip All of the {o}patches you need to water{} will be {o}north of her location{}, around the {o}big hill{}.
step
talk Gardener Fran##62377
turnin Gardener Fran and the Watering Can##30050 |goto Valley of the Four Winds/0 48.31,33.48
step
talk Gardener Fran##62377
Select _"I'm helping a friend brew some beer, and we need hops. Do you have any to spare?"_ |gossip 36035
Speak with Gardener Fran |q 30053/1 |goto Valley of the Four Winds/0 48.31,33.48
step
talk Den Mudclaw##62385
accept The Farmer's Daughter##30056 |goto Valley of the Four Winds/0 44.26,34.21
step
talk Den Mudclaw##62385
Select _"Do you have any hops you can spare?"_ |gossip 35295
Speak with Den Mudclaw |q 30053/3 |goto Valley of the Four Winds/0 44.26,34.21
step
talk Mung-Mung##57401
accept Enough is Ookin' Enough##30054 |goto Valley of the Four Winds/0 44.17,34.24
stickystart "Collect_Virmen_Teeth"
step
Enter the underground burrow |goto Valley of the Four Winds/0 43.55,35.34 < 10 |walk
talk Mina Mudclaw##57408
|tip Inside the underground burrow.
turnin The Farmer's Daughter##30056 |goto Valley of the Four Winds/0 41.32,38.14
accept Seeing Orange##30057 |goto Valley of the Four Winds/0 41.32,38.14
step
label "Collect_Virmen_Teeth"
kill Springtail Gnasher##57413, Springtail Digger##66264, Springtail Leaper##57415
|tip They look like {o}small and large rats{}.
|tip Inside the and outside the underground burrow. |notinsticky
collect 100 Virmen Tooth##77379 |q 30054/1 |goto Valley of the Four Winds/0 43.55,35.34
step
Bring Mina Mudclaw Home to Her Father |q 30057/1 |goto Valley of the Four Winds/0 44.27,34.21
step
talk Den Mudclaw##62385
turnin Seeing Orange##30057 |goto Valley of the Four Winds/0 44.27,34.21
step
talk Mung-Mung##57401
turnin Enough is Ookin' Enough##30054 |goto Valley of the Four Winds/0 44.17,34.24
step
talk Gai Lan##57385
Select _"Can I buy some hops from you?"_ |gossip 40211
Speak with Gai Lan |q 30053/2 |goto Valley of the Four Winds/0 38.59,51.71
step
_Click the Complete Quest Box:_
turnin Hop Hunting##30053
step
talk Gai Lan##57385
accept Weed War##30052 |goto Valley of the Four Winds/0 38.59,51.71
step
talk Gai Lan##57385
Select _"What weeds?"_ |gossip 40209
Watch the dialogue
clicknpc Ugly Weed##57306+
clicknpc Nasty Weed##57308+
click Weed-B-Gone Gas Bomb##210057+
Pull #100# Weeds |q 30052/1 |goto Valley of the Four Winds/0 38.59,51.71
|tip {o}Run over the small blue weeds{} that appear.
|tip You can {o}do this while mounted{}.
step
talk Gai Lan##57385
turnin Weed War##30052 |goto Valley of the Four Winds/0 38.59,51.71
step
accept Stormstout's Hops##30055 |goto Valley of the Four Winds/0 38.59,51.71
|tip You will automatically accept this quest.
step
talk Chen Stormstout##56133
turnin Stormstout's Hops##30055 |goto Valley of the Four Winds/0 55.89,49.45
step
talk Li Li##56138
turnin Li Li and the Grain##30048 |goto Valley of the Four Winds/0 52.69,62.83
accept Taste Test##30031 |goto Valley of the Four Winds/0 52.69,62.83
step
talk Grainlord Kai##57211
accept Wee Little Shenanigans##30029 |goto Valley of the Four Winds/0 52.73,62.99
step
talk Grainer Pan##57209
accept Out of Sprite##30030 |goto Valley of the Four Winds/0 52.61,62.97
stickystart "Kill_Tricky_Maizer"
step
kill Cornan##57213 |q 30030/1 |goto Valley of the Four Winds/0 51.47,64.42
|tip He runs around this area upstairs inside the building.
step
click Malted Grain##210023
Taste the Malted Grain |q 30031/3 |goto Valley of the Four Winds/0 50.80,63.61
step
click Aged Grain##210021
Taste the Aged Grain |q 30031/1 |goto Valley of the Four Winds/0 51.17,60.79
step
click Light Grain##210024
Taste the Light Grain |q 30031/2 |goto Valley of the Four Winds/0 53.73,63.31
step
click Fresh Grain##210022
Taste the Fresh Grain |q 30031/4 |goto Valley of the Four Winds/0 53.59,64.58
step
label "Kill_Tricky_Maizer"
kill Granary Vandal##66205, Tricky Maizer##57223
|tip They look like {o}larger sprites{}.
Slay #8# Tricky Maizers |q 30029/1 |goto Valley of the Four Winds/0 52.30,62.29
step
talk Li Li##56138
turnin Taste Test##30031 |goto Valley of the Four Winds/0 52.69,62.83
step
talk Grainer Pan##57209
turnin Out of Sprite##30030 |goto Valley of the Four Winds/0 52.60,62.97
step
talk Grainlord Kai##57211
turnin Wee Little Shenanigans##30029 |goto Valley of the Four Winds/0 52.74,62.99
accept The Quest for Better Barley##30032 |goto Valley of the Four Winds/0 52.74,62.99
accept Grain Recovery##30028 |goto Valley of the Four Winds/0 52.74,62.99
step
kill Maizerly Thief##57267+
|tip They look like {o}larger sprites carrying white bags{}.
click Stolen Barley Sack##210002+
|tip They look like {o}large white bags{}.
collect 8 Sack of Grain##77033 |q 30028/1 |goto Valley of the Four Winds/0 56.17,64.96
step
talk Grainlord Kai##57211
turnin Grain Recovery##30028 |goto Valley of the Four Winds/0 52.73,63.00
step
click Rappeling Rope##7548
Use the Cliff Harness |q 30032/1 |goto Valley of the Four Winds/0 51.26,77.50
step
click Malted Cave Barley##210037+
|tip They look like {o}small bushes{}.
|tip Inside the small cave.
collect Malted Cave Barley##77034 |q 30032/2 |goto Valley of the Four Winds/0 53.58,76.26
step
click Climbing Rope
Climb Up the Cliff |invehicle |goto Krasarang Wilds/0 48.65,27.02 |q 30032
|only if walking
step
talk Li Li##56138
turnin The Quest for Better Barley##30032 |goto Valley of the Four Winds/0 52.69,62.83
accept The Chen Taste Test##30047 |goto Valley of the Four Winds/0 52.69,62.83
step
talk Chen Stormstout##56133
turnin The Chen Taste Test##30047 |goto Valley of the Four Winds/0 55.89,49.45
accept The Emperor##30073 |goto Valley of the Four Winds/0 55.89,49.45
step
Watch the dialogue
Help Chen Brew His Beer |q 30073/1 |goto Valley of the Four Winds/0 55.89,49.45
step
talk Chen Stormstout##56133
turnin The Emperor##30073 |goto Valley of the Four Winds/0 55.84,49.35
accept Knocking on the Door##30074 |goto Valley of the Four Winds/0 55.84,49.35
step
talk Chen Stormstout##56133
turnin Knocking on the Door##30074 |goto Valley of the Four Winds/0 32.25,68.55
step
Watch the dialogue
talk Mudmug##56474
accept The Fanciest Water##30076 |goto Valley of the Four Winds/0 32.26,68.28
step
talk Li Li##56138
accept Barrels, Man##30077 |goto Valley of the Four Winds/0 32.33,68.47
step
talk Chen Stormstout##56133
accept Clear the Way##30075 |goto Valley of the Four Winds/0 32.11,68.34
stickystart "Collect_Spritewater_Essences"
stickystart "Kill_Ale_Addled_Hozen_Or_Mischievous_Virmen"
step
clicknpc Barreled Pandaren##57662+
|tip They look like {o}shaking wooden barrels{}.
|tip Avoid {o}Ook-Ook{}, the {o}huge elite monkey{} that runs up and down the road.
|tip If he {o}catches you{}, use the {o}Break Barrel{} ability.
Free #7# Barreled Pandaren |q 30077/1 |goto Valley of the Four Winds/0 35.95,66.10
'|clicknpc Ook-Ook##57628
step
label "Collect_Spritewater_Essences"
kill Curious Water Sprite##57673+
|tip They look like {o}small blue elementals wearing masks{}.
collect 3 Spritewater Essence##77471 |q 30076/1 |goto Valley of the Four Winds/0 35.95,66.10
step
label "Kill_Ale_Addled_Hozen_Or_Mischievous_Virmen"
kill Ale-Addled Hozen##57672, Mischievous Virmen##57671
|tip They look like {o}rats and monkeys{}.
Slay #10# Ale-Addled Hozen or Mischievous Virmen |q 30075/1 |goto Valley of the Four Winds/0 35.95,66.10
step
talk Li Li##56138
turnin Barrels, Man##30077 |goto Valley of the Four Winds/0 36.13,69.05
step
talk Mudmug##56474
turnin The Fanciest Water##30076 |goto Valley of the Four Winds/0 36.00,69.10
step
talk Chen Stormstout##56133
turnin Clear the Way##30075 |goto Valley of the Four Winds/0 36.04,68.99
accept Cleaning House##30078 |goto Valley of the Four Winds/0 36.04,68.99
step
talk Chen Stormstout##56133
Select _"<Crack your knuckles and nod your head.>"_ |gossip 39238
Enter the Stormstout Brewery |complete subzone("Stormstout Brewhall") or subzone("The Great Wheel") or subzone("Trickling Passage") |goto Valley of the Four Winds/0 36.04,68.99 |q 30078
step
label "Stormstout_Brewery_Router"
Watch the dialogue
|tip This sequence of this quest is random.
|tip You will appear in one of the random locations.
Stormstout Brewhall	|complete subzone("Stormstout Brewhall")	|q 30078	|or	|next "Stormstout_Brewhall"
The Great Wheel		|complete subzone("The Great Wheel")		|q 30078	|or	|next "The_Great_Wheel"
Trickling Passage	|complete subzone("Trickling Passage")		|q 30078	|or	|next "Trickling_Passage"
Stormstout Brewery	|complete subzone("Stormstout Brewery")		|q 30078	|or	|next "Stormstout_Brewery_Exit"		|only if readyq(30078)
|only if not completedq(30078)
step
label "Stormstout_Brewhall"
talk Li Li##58028
|tip Inside the building.
Select _"I'll help."_ |gossip 39978
kill Jooga##58015 |q 30078/2 |goto Valley of the Four Winds/0 32.98,71.11
|tip He looks like a {o}large monkey{} nearby.
|tip {o}Click the Empty Keg barrels{} inside the room.
|tip He will {o}stop moving{}, so you can {o}hit him{}.
|tip {o}Avoid{} the {o}bananas{}.
|only if not (readyq(30078) or completedq(30078)) and subzone("Stormstout Brewhall")
step
Watch the dialogue
Leave the Stormstout Brewhall |complete not subzone("Stormstout Brewhall") |q 30078 |next "Stormstout_Brewery_Router"
|only if not (readyq(30078) or completedq(30078)) and subzone("Stormstout Brewhall")
step
label "The_Great_Wheel"
talk Chen Stormstout##58029
|tip Inside the building.
Select _"Let's do this, Chen."_ |gossip 39980
kill Fizzy Yellow Spirit##58253+
|tip Kill {o}all of them{}.
kill Fizzy Yellow Alemental##58017 |q 30078/3 |goto Valley of the Four Winds/0 38.35,67.74
|only if not (readyq(30078) or completedq(30078)) and subzone("The Great Wheel")
step
Watch the dialogue
Leave the Great Wheel |complete not subzone("The Great Wheel") |q 30078 |next "Stormstout_Brewery_Router"
|only if not (readyq(30078) or completedq(30078)) and subzone("The Great Wheel")
step
label "Trickling_Passage"
talk Mudmug##58027
|tip Inside the building.
Select _"Calm down, Mudmug. Let's go."_ |gossip 40588
kill Eddy##58014 |q 30078/1 |goto Valley of the Four Winds/0 34.88,70.31
|tip It looks like a {o}large water sprite elemental{} nearby.
|tip {o}Run over the bubbles{} on the ground to {o}weaken Eddy's Water Shield{}.
|tip Click the {o}bubble around him{} when his {o}Watery Shield is weakened{}.
|only if not (readyq(30078) or completedq(30078)) and (subzone("Trickling Passage") or subzone("Grain Cellar"))
step
Watch the dialogue
Leave the Trickling Passage |complete not (subzone("Trickling Passage") or subzone("Grain Cellar")) |q 30078 |next "Stormstout_Brewery_Router"
|only if not (readyq(30078) or completedq(30078)) and (subzone("Trickling Passage") or subzone("Grain Cellar"))
step
Detecting player location... |complete not (readyq(30078) or completedq(30078)) |next "Stormstout_Brewery_Router"
|only if not (readyq(30078) or completedq(30078))
step
label "Stormstout_Brewery_Exit"
Watch the dialogue
Leave the Stormstout Brewery |complete subzone("Stormstout Brewery") |q 30078
|only if not completedq(30078) and (subzone("Stormstout Brewhall") or subzone("The Great Wheel") or subzone("Trickling Passage") or subzone("Grain Cellar"))
step
talk Chen Stormstout##56133
turnin Cleaning House##30078 |goto Valley of the Four Winds/0 36.00,69.12
step
talk Emmi##61026
accept Stoneplow Thirsts##30117 |goto Valley of the Four Winds/0 36.20,68.29
step
talk "Dragonwing" Dan##58843
fpath Stoneplow |goto Valley of the Four Winds/0 20.30,58.67
step
talk Lin Tenderpaw##56111
turnin Lin Tenderpaw##29872 |goto Valley of the Four Winds/0 19.87,56.92
accept Stemming the Swarm##29981 |goto Valley of the Four Winds/0 19.87,56.92
step
talk Loon Mai##56720
turnin Stoneplow Thirsts##30117 |goto Valley of the Four Winds/0 19.55,56.88
accept Evacuation Orders##29982 |goto Valley of the Four Winds/0 19.55,56.88
step
talk Haiyun Greentill##57123
Select _"Loon Mai has issued evacuation orders."_ |gossip 40362
Evacuate the Greentil Family |q 29982/3 |goto Valley of the Four Winds/0 15.84,56.28
step
talk Mia Marlfur##57127
Select _"Loon Mai has issued evacuation orders."_ |gossip 40261
Evacuate the Marlfur Family |q 29982/4 |goto Valley of the Four Winds/0 15.48,54.90
stickystart "Kill_Ikthink_Mantids"
step
talk Feng Spadepaw##57121
Select _"Yes, Commander Mai sent me, and I carry his evacuation orders."_ |gossip 40474
Evacuate the Spadepaw Family |q 29982/2 |goto Valley of the Four Winds/0 12.85,55.71
step
talk Wei Blacksoil##57120
Select _"Loon Mai has issued evacuation orders."_ |gossip 40360
kill Ik'thik Ambusher##57134
talk Wei Blacksoil##57120
Select _"Yes, they're right here. Let's go."_ |gossip 40361
Evacuate the Blacksoil Family |q 29982/1 |goto Valley of the Four Winds/0 7.15,54.83
step
label "Kill_Ikthink_Mantids"
kill Ik'thik Wingblade##57196, Ik'thik Swiftclaw##57195
|tip They look like {o}insect people{}.
Slay #14# Ik'thik Mantids |q 29981/1 |goto Valley of the Four Winds/0 11.80,56.66
step
talk Loon Mai##56720
turnin Stemming the Swarm##29981 |goto Valley of the Four Winds/0 19.55,56.88
turnin Evacuation Orders##29982 |goto Valley of the Four Winds/0 19.55,56.88
accept The Hidden Master##29983 |goto Valley of the Four Winds/0 19.55,56.88
step
talk Master Bruised Paw##56714
turnin The Hidden Master##29983 |goto Valley of the Four Winds/0 18.29,31.24
accept Unyielding Fists: Trial of Bamboo##29984 |goto Valley of the Four Winds/0 18.29,31.24
step
talk Master Bruised Paw##56714
Select _"I'm ready for the trial of bamboo."_ |gossip 41438
Begin the Trial of Bamboo |invehicle |goto Valley of the Four Winds/0 18.29,31.23 |q 29984
step
Watch the dialogue
|tip Use the {o}Unyielding Fist{} ability.
|tip Use it when the {o}circle on your screen is full and glowing{}.
Strike #3# Stacks of Bamboo Reeds |q 29984/1 |goto Valley of the Four Winds/0 18.34,32.13
step
talk Master Bruised Paw##56714
turnin Unyielding Fists: Trial of Bamboo##29984 |goto Valley of the Four Winds/0 18.29,31.24
step
Watch the dialogue
talk Master Bruised Paw##56714
accept They Will Be Mist##29985 |goto Valley of the Four Winds/0 18.29,31.24
accept Fog Wards##29986 |goto Valley of the Four Winds/0 18.29,31.24
step
talk Lin Tenderpaw##56111
accept Tenderpaw By Name, Tender Paw By Reputation##29992 |goto Valley of the Four Winds/0 18.06,31.01
stickystart "Kill_Mist_Incarnations"
stickystart "Collect_Jademoon_Leaves"
step
click Northern Fog Ward##209945
Light the Northern Fog Ward |q 29986/1 |goto Valley of the Four Winds/0 16.01,32.11
step
click Western Fog Ward##209946
Light the Western Fog Ward |q 29986/2 |goto Valley of the Four Winds/0 14.86,36.82
step
click Southern Fog Ward##209947
Light the Southern Fog Ward |q 29986/3 |goto Valley of the Four Winds/0 18.10,41.46
step
label "Kill_Mist_Incarnations"
kill 12 Mist Incarnation##56740 |q 29985/1 |goto Valley of the Four Winds/0 16.99,35.63
|tip They look like {o}humanoid alien creatures{}.
step
label "Collect_Jademoon_Leaves"
click Jademoon Leaf##11006+
|tip They look like {o}small green plants on the grey rocks{}.
collect 18 Jademoon Leaf##76499 |q 29992/1 |goto Valley of the Four Winds/0 16.99,35.63
step
talk Lin Tenderpaw##56111
turnin Tenderpaw By Name, Tender Paw By Reputation##29992 |goto Valley of the Four Winds/0 18.06,31.01
step
talk Master Bruised Paw##56714
turnin They Will Be Mist##29985 |goto Valley of the Four Winds/0 18.29,31.24
turnin Fog Wards##29986 |goto Valley of the Four Winds/0 18.29,31.24
accept Unyielding Fists: Trial of Wood##29987 |goto Valley of the Four Winds/0 18.29,31.24
step
talk Master Bruised Paw##56714
Select _"My fists are ready. Bring on the trial of wood."_ |gossip 41439
Begin the Trial of Wood |invehicle |goto Valley of the Four Winds/0 18.29,31.24 |q 29987
step
Watch the dialogue
|tip Use the {o}Unyielding Fist{} ability.
|tip Use it when the {o}circle on your screen is full and glowing{}.
Strike #4# Stacks of Wooden Boards |q 29987/1 |goto Valley of the Four Winds/0 18.25,32.18
step
talk Master Bruised Paw##56714
turnin Unyielding Fists: Trial of Wood##29987 |goto Valley of the Four Winds/0 18.29,31.24
accept A Taste For Eggs##29988 |goto Valley of the Four Winds/0 18.29,31.24
stickystart "Collect_Whitefisher_Crane_Eggs"
stickystart "Collect_Emperor_Tern_Eggs"
step
click Hornbill Strider Egg##209955
|tip Inside the small cave.
collect Hornbill Strider Egg##76516 |q 29988/3 |goto Valley of the Four Winds/0 26.98,39.05
step
label "Collect_Whitefisher_Crane_Eggs"
click Whitefisher Crane Egg##209954+
|tip They look like {o}small white eggs{}.
collect 4 Whitefisher Crane Egg##76503 |q 29988/2 |goto Valley of the Four Winds/0 25.36,43.15
step
label "Collect_Emperor_Tern_Eggs"
click Emperor Tern Egg##209953+
|tip They look like {o}small purple eggs{}.
collect 10 Emperor Tern Egg##76501 |q 29988/1 |goto Valley of the Four Winds/0 25.36,43.15
step
talk Master Bruised Paw##56714
turnin A Taste For Eggs##29988 |goto Valley of the Four Winds/0 18.29,31.24
step
Watch the dialogue
talk Master Bruised Paw##56714
accept Unyielding Fists: Trial of Stone##29989 |goto Valley of the Four Winds/0 18.29,31.24
step
talk Master Bruised Paw##56714
Select _"I've done all that you've asked of me. I'm ready for the trial of stone."_ |gossip 41440
Begin the Trial of Stone |invehicle |goto Valley of the Four Winds/0 18.29,31.24 |q 29989
step
Watch the dialogue
|tip Use the {o}Unyielding Fist{} ability.
|tip Use it when the {o}circle on your screen is full and glowing{}.
Strike #5# Stacks of Stone Blocks |q 29989/1 |goto Valley of the Four Winds/0 18.16,32.15
step
talk Master Bruised Paw##56714
turnin Unyielding Fists: Trial of Stone##29989 |goto Valley of the Four Winds/0 18.29,31.24
step
talk Lin Tenderpaw##56111
accept Training and Discipline##29990 |goto Valley of the Four Winds/0 18.06,31.01
step
talk Loon Mai##56720
turnin Training and Discipline##29990 |goto Valley of the Four Winds/0 19.55,56.88
step
talk Tani##63822
|tip She walks around this area.
accept Stalker Mastery##30183 |goto Valley of the Four Winds/0 16.20,82.53
step
talk Hemet Nesingwary Jr.##58422
accept Mushan Mastery##30181 |goto Valley of the Four Winds/0 16.07,82.62
stickystart "Slay_Dustback_Mushans"
step
kill 15 Gorge Stalker##58432 |q 30183/1 |goto Valley of the Four Winds/0 12.77,75.08
|tip They look like {o}green tigers{}.
step
label "Slay_Dustback_Mushans"
kill Young Dustback Mushan##58427, Dustback Mushan##58424
|tip They look like {o}yellow dinosaurs{}.
Slay #15# Dustback Mushans |q 30181/1 |goto Valley of the Four Winds/0 17.96,72.89
step
talk Tani##63822
|tip She walks around this area.
turnin Stalker Mastery##30183 |goto Valley of the Four Winds/0 16.20,82.53
accept Fox Mastery##30182 |goto Valley of the Four Winds/0 16.20,82.53
step
talk Hemet Nesingwary Jr.##58422
turnin Mushan Mastery##30181 |goto Valley of the Four Winds/0 16.07,82.62
step
talk Hemet Nesingwary##58421
accept Mushan Mastery: Darkhide##30184 |goto Valley of the Four Winds/0 16.01,82.49
step
talk Matt "Lucky" Gotcher##58434
accept Stag Mastery##32038 |goto Valley of the Four Winds/0 15.89,82.24
stickystart "Kill_Sly_Foxes"
stickystart "Slay_Wilderland_Stags"
step
kill Darkhide##58435
|tip He looks like a {o}larger grey dinosaur{}.
|tip You {o}may need help{} with this.
collect Darkhide's Head###79058 |q 30184/1 |goto Valley of the Four Winds/0 26.20,75.48
step
label "Kill_Sly_Foxes"
kill Sly Fox##58548, Sly Pup##58549
|tip They look like {o}foxes{}.
|tip The {o}larger foxes are stealthed{}.
Slay #15# Sly Foxes |q 30182/1 |goto Valley of the Four Winds/0 27.81,70.87
You can find more all all around [25.58,74.34]
step
label "Slay_Wilderland_Stags"
kill Wilderland Doe##58490, Wilderland Stag##58489
|tip They look like {o}deer{}.
Slay #10# Wilderland Stags |q 32038/1 |goto Valley of the Four Winds/0 28.74,81.86
You can find more around [21.30,80.38]
step
talk Tani##63822
|tip She walks around this area.
turnin Fox Mastery##30182 |goto Valley of the Four Winds/0 16.20,82.53
step
talk Hemet Nesingwary##58421
turnin Mushan Mastery: Darkhide##30184 |goto Valley of the Four Winds/0 16.01,82.49
step
talk Hemet Nesingwary Jr.##58422
accept Tortoise Mastery##30185 |goto Valley of the Four Winds/0 16.07,82.62
step
talk Matt "Lucky" Gotcher##58434
turnin Stag Mastery##32038 |goto Valley of the Four Winds/0 15.89,82.24
step
kill Bulgeback Tortoise##58431+
collect 5 Intact Tortoise Shell##79059 |q 30185/1 |goto Valley of the Four Winds/0 19.91,75.66
step
talk Hemet Nesingwary Jr.##58422
turnin Tortoise Mastery##30185 |goto Valley of the Four Winds/0 19.91,75.66
accept Parental Mastery##30186 |goto Valley of the Four Winds/0 19.91,75.66
step
Enter the underwater cave |goto Valley of the Four Winds/0 21.27,74.40 < 20 |walk
talk Hemet Nesingwary Jr.##58461
|tip Inside the underwater cave.
Select _"<Try shaking Hemet.>"_ |gossip 40247
Watch the dialogue
kill Torjar's Bane##58439
Rescue Hemet Nesingwary Jr. |q 30186/1 |goto Valley of the Four Winds/0 24.54,74.64
step
Leave the underwater cave |goto Valley of the Four Winds/0 21.27,74.40 < 20 |walk |only if subzone("Lair of the Beast") and indoors()
talk Hemet Nesingwary##58421
turnin Parental Mastery##30186 |goto Valley of the Four Winds/0 16.01,82.49
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (10-70)\\Krasarang Wilds (15-70)",{
next="Leveling Guides\\Pandaria (10-70)\\Kun-Lai Summit (20-70)",
condition_valid=function() return level <= 70 and chromietime() == MOP end,
condition_valid_msg="This guide is optimized for {w}Chromie Time{}. Load the {w}Chromie Time{} guide first and select the {w}Wilds of Pandaria{} option.",
condition_valid_guide="Leveling Guides\Starter Guides\Chromie Time",
startlevel=15,
endlevel=70,
},[[
step
talk Ken-Ken##56115
turnin Ken-Ken##29873 |goto Krasarang Wilds/0 76.22,7.06
accept What's Eating Zhu's Bastion?##30079 |goto Krasarang Wilds/0 76.22,7.06
step
talk Rude Sho##62879
|tip Inside the building.
home Wilds' Edge Inn |goto Krasarang Wilds/0 75.74,7.21
step
talk Mei Barrelbottom##57744
Speak with Mei |q 30079/4 |goto Krasarang Wilds/0 75.84,7.60
step
talk Mei Barrelbottom##57744
accept Finding Yi-Mo##30080 |goto Krasarang Wilds/0 75.84,7.60
step
talk Despondent Warden of Zhu##57457
Speak with a Despondent Warden of Zhu |q 30079/1 |goto Krasarang Wilds/0 76.01,8.30
step
talk Gee Hung##60232
fpath Zhu's Watch |goto Krasarang Wilds/0 76.74,8.38
step
talk Sunni##57830
|tip Inside the building.
Speak with Sunni |q 30079/2 |goto Krasarang Wilds/0 77.47,8.53
step
talk Yun##57825
|tip Inside the building.
Speak with Yun |q 30079/3 |goto Krasarang Wilds/0 75.48,9.39
step
talk Ken-Ken##56115
turnin What's Eating Zhu's Bastion?##30079 |goto Krasarang Wilds/0 76.22,7.06
step
talk Yi-Mo Longbrow##58376
Find Yi-Mo Longbrow |q 30080/1 |goto Krasarang Wilds/0 81.31,6.84
step
talk Yi-Mo Longbrow##58376
turnin Finding Yi-Mo##30080 |goto Krasarang Wilds/0 81.31,6.84
accept Cheer Up, Yi-Mo##30082 |goto Krasarang Wilds/0 81.31,6.84
step
talk Yi-Mo Longbrow##58376
Select _"Please, Yi-Mo: your aunt's worried sick about you."_ |gossip 40643
Select _"I don't have time for this. Move your ass or I'll move it for you."_ |gossip 40646
clicknpc Yi-Mo Longbrow##57310
Follow Yi-Mo and Continue Moving Him West |goto Krasarang Wilds/0 81.31,6.84 > 10 |c |q 30082
step
clicknpc Yi-Mo Longbrow##57310
|tip Click him {o}repeatedly{}.
|tip He will eventually roll to this location.
kill Thunderbird##58111+
|tip They look like {o}birds{} that attack in waves.
Bring Yi-Mo to Zhu's Watch |q 30082/1 |goto Krasarang Wilds/0 76.71,7.79 |notravel
step
talk Mei Barrelbottom##57744
turnin Cheer Up, Yi-Mo##30082 |goto Krasarang Wilds/0 75.84,7.60
accept Tears of Pandaria##30091 |goto Krasarang Wilds/0 75.84,7.60
step
talk Ken-Ken##56115
accept Materia Medica##30081 |goto Krasarang Wilds/0 76.22,7.06
stickystart "Collect_Salty_Cores"
stickystart "Kill_Weeping_Horrors"
stickystart "Collect_Chunks_Of_Honeycomb"
step
click Slick Mudfish##210186+
|tip They look like {o}small fish{}.
collect 4 Slick Mudfish##78877 |q 30081/2 |goto Krasarang Wilds/0 75.38,10.91
You can find more around [71.86,10.76]
step
label "Collect_Salty_Cores"
kill Weeping Horror##57649+
|tip They look like {o}rock elementals{}.
collect 4 Salty Core##78880+ |q 30081/1 |goto Krasarang Wilds/0 75.38,10.91
You can find more around [71.86,10.76]
step
label "Kill_Weeping_Horrors"
kill 12 Weeping Horror##57649 |q 30091/1 |goto Krasarang Wilds/0 75.38,10.91
|tip They look like {o}rock elementals{}. |notinsticky
You can find more around [71.86,10.76]
step
label "Collect_Chunks_Of_Honeycomb"
click Rain-Slick Honeycomb##210188+
|tip They look like {o}orange glowing balls hanging from trees{}.
collect 4 Chunk of Honeycomb##78881 |q 30081/3 |goto Krasarang Wilds/0 73.04,10.94
step
talk Mei Barrelbottom##57744
turnin Tears of Pandaria##30091 |goto Krasarang Wilds/0 75.84,7.61
accept Securing the Province##30083 |goto Krasarang Wilds/0 75.84,7.61
accept Borderlands##30084 |goto Krasarang Wilds/0 75.84,7.61
step
talk Ken-Ken##56115
turnin Materia Medica##30081 |goto Krasarang Wilds/0 76.22,7.07
accept Why So Serious?##30088 |goto Krasarang Wilds/0 76.22,7.07
stickystart "Slay_Wildscale_Sauroks"
step
Enter the cave |goto Valley of the Four Winds/0 77.07,57.28 < 15 |walk
click Jar of Pigment##210228
|tip Upstairs inside the cave.
collect Jar of Pigment##78942 |q 30088/2 |goto Valley of the Four Winds/0 73.88,56.41
step
label "Slay_Wildscale_Sauroks"
kill Wildscale Herbalist##58216, Wildscale Saurok##58215
|tip They look like {o}lizard people{}.
|tip Inside and outside the cave. |notinsticky
Slay #10# Wildscale Sauroks |q 30083/1 |goto Valley of the Four Winds/0 77.07,57.28
stickystart "Collect_Huge_Panther_Fangs"
step
Leave the cave |goto Valley of the Four Winds/0 77.07,57.28 < 15 |walk |only if subzone("Winds' Edge")
use the Flame of Zhu's Watch##78928
Light the Memorial Flame of Rin |q 30084/3 |goto Krasarang Wilds/0 71.28,17.47
step
use the Flame of Zhu's Watch##78928
Light the Memorial Flame of Zhu |q 30084/1 |goto Krasarang Wilds/0 72.70,18.11
step
use the Flame of Zhu's Watch##78928
Light the Memorial Flame of Po |q 30084/2 |goto Krasarang Wilds/0 73.88,16.95
step
label "Collect_Huge_Panther_Fangs"
kill Krasari Stalker##58221+
|tip They look like {o}black tigers{}.
|tip They can be {o}stealthed{}.
collect 18 Huge Panther Fang##78941 |q 30088/1 |goto Krasarang Wilds/0 72.28,17.29
step
talk Mei Barrelbottom##57744
turnin Securing the Province##30083 |goto Krasarang Wilds/0 75.84,7.60
turnin Borderlands##30084 |goto Krasarang Wilds/0 75.84,7.60
step
talk Ken-Ken##56115
turnin Why So Serious?##30088 |goto Krasarang Wilds/0 76.22,7.07
accept Apply Directly to the Forehead##30089 |goto Krasarang Wilds/0 76.22,7.07
step
use Ken-Ken's Mask##79021
|tip Use it on {o}Despondent Wardens of Zhu{}.
|tip They look like {o}pandas in black armor{}.
kill Manifestation of Despair##58312+
Cure #8# Despondent Wardens of Zhu |q 30089/1 |goto Krasarang Wilds/0 76.44,8.55
'|clicknpc Despondent Warden of Zhu##57457
step
talk Ken-Ken##56115
turnin Apply Directly to the Forehead##30089 |goto Krasarang Wilds/0 76.22,7.07
accept Zhu's Despair##30090 |goto Krasarang Wilds/0 76.22,7.07
step
kill 8 Essence of Despair##58409 |q 30090/1 |goto Krasarang Wilds/0 76.40,8.58
step
use Ken-Ken's Mask##79057
|tip Use it on {o}Yi-Mo Longbrow{}.
kill Quintessence of Despair##58360
Cure Yi-Mo |q 30090/2 |goto Krasarang Wilds/0 76.49,8.77
'|clicknpc Yi-Mo Longbrow##58410
step
Watch the dialogue
talk Ken-Ken##56115
turnin Zhu's Despair##30090 |goto Krasarang Wilds/0 76.21,7.07
step
talk Mei Barrelbottom##57744
accept Into the Wilds##30178 |goto Krasarang Wilds/0 75.84,7.59
step
talk Daggle Bombstrider##58779
accept Crane Mastery##30352 |goto Krasarang Wilds/0 67.63,25.73
accept Profit Mastery##30353 |goto Krasarang Wilds/0 67.63,25.73
step
accept The Arcanic Oubliette##30274 |goto Krasarang Wilds/0 66.94,28.69
|tip You will automatically accept this quest.
step
talk Zhu's Watch Courier##59151
Select _"Take the supplies."_ |gossip 41038
Find the Zhu's Watch Courier |q 30178/1 |goto Krasarang Wilds/0 66.27,30.92
step
click Northwest Oubliette Shackle##210533
Destroy the Northwest Oubliette Shackle |q 30274/2 |goto Krasarang Wilds/0 66.69,31.58
step
talk Kang Bramblestaff##56114
turnin Kang Bramblestaff##29874 |goto Krasarang Wilds/0 66.41,32.54
step
click Southwest Oubliette Shackle##210535
Destroy the Southwest Oubliette Shackle |q 30274/3 |goto Krasarang Wilds/0 66.69,33.69
step
click Northeast Oubliette Shackle##210527
|tip Outside of the {o}huge pink bubble{}.
Destroy the Northeast Oubliette Shackle |q 30274/1 |goto Krasarang Wilds/0 67.95,31.54
step
talk Tylen Moonfeather##59049
fpath The Incursion |goto Krasarang Wilds/0 67.77,32.50
step
talk Lorekeeper Vaeldrin##58745
turnin The Arcanic Oubliette##30274 |goto Krasarang Wilds/0 67.45,32.64
accept The Lost Dynasty##30344 |goto Krasarang Wilds/0 67.45,32.64
step
talk Lyalia##58735
accept Blind Them!##30384 |goto Krasarang Wilds/0 67.45,32.70
step
talk Kang Bramblestaff##56114
accept Squirmy Delight##30350 |goto Krasarang Wilds/0 67.36,32.75
stickystart "Kill_Carp_Hunters"
stickystart "Collect_Vials_Of_Tiger_Blood"
stickystart "Collect_Intact_Skitterer_Glands"
step
kill Sunwalker Scout##58850 |q 30384/1 |goto Krasarang Wilds/0 64.60,24.77
|tip He looks like a {o}tauren riding a kodo{}.
|tip He walks along this path.
step
label "Kill_Carp_Hunters"
kill 12 Carp Hunter##58116 |q 30352/1 |goto Krasarang Wilds/0 64.06,29.35
|tip They look like {o}green birds{}.
step
label "Collect_Vials_Of_Tiger_Blood"
kill Krasari Huntress##58070+
|tip They look like {o}tigers{}
|tip They are {o}usually stealthed{}.
collect 12 Vial of Tiger Blood##78914 |q 30353/1 |goto Krasarang Wilds/0 64.06,29.35
step
label "Collect_Intact_Skitterer_Glands"
kill Jungle Skitterer##58067+
|tip They look like {o}large insects{}.
collect 5 Intact Skitterer Glands##78911 |q 30350/1 |goto Krasarang Wilds/0 62.99,22.03
step
talk Daggle Bombstrider##58779
turnin Crane Mastery##30352 |goto Krasarang Wilds/0 67.63,25.73
accept Crane Mastery: Needlebeak##31262 |goto Krasarang Wilds/0 67.63,25.73
turnin Profit Mastery##30353 |goto Krasarang Wilds/0 67.63,25.73
accept Profit Mastery: Chasheen##31260 |goto Krasarang Wilds/0 67.63,25.73
step
kill Chasheen##63767
|tip He walks around this area.
collect Ancient Tiger's Blood##85774 |q 31260/1 |goto Krasarang Wilds/0 61.89,32.00
step
kill Needlebeak##63796
|tip He walks around this area.
collect The Needlebeak##85854 |q 31262/1 |goto Krasarang Wilds/0 62.90,20.17
step
click Ancient Dynastic Tablet##210620+
|tip They look like {o}stone tablets{} and {o}broken pieces of stone tablets{}.
collect 6 Dynastic Tablet##79713 |q 30344/1 |goto Krasarang Wilds/0 68.37,22.12
step
talk Daggle Bombstrider##58779
turnin Crane Mastery: Needlebeak##31262 |goto Krasarang Wilds/0 67.63,25.73
turnin Profit Mastery: Chasheen##31260 |goto Krasarang Wilds/0 67.63,25.73
step
talk Kang Bramblestaff##56114
turnin Squirmy Delight##30350 |goto Krasarang Wilds/0 67.36,32.75
step
talk Lyalia##58735
turnin Blind Them!##30384 |goto Krasarang Wilds/0 67.45,32.70
step
talk Lorekeeper Vaeldrin##58745
turnin The Lost Dynasty##30344 |goto Krasarang Wilds/0 67.45,32.64
accept Where are the Pools##30346 |goto Krasarang Wilds/0 67.45,32.64
step
talk Lyalia##58735
accept Threat from Dojan##30349 |goto Krasarang Wilds/0 67.45,32.70
step
talk Kang Bramblestaff##56114
accept Lotus Tea##30351 |goto Krasarang Wilds/0 67.36,32.75
stickystart "Kill_Dojani_Enforcers"
stickystart "Kill_Dojani_Reclaimers"
stickystart "Kill_Dojani_Surveyors"
stickystart "Collect_Imperial_Lotus_Leaves"
step
kill Dojani Dominator##58165
|tip At the top of the ruins.
collect Dojani Orders##78917 |q 30346/1 |goto Krasarang Wilds/0 55.51,34.46
step
_Click the Complete Quest Box:_
turnin Where are the Pools##30346
accept The Pools of Youth##30347
step
Cross the bridge |goto Krasarang Wilds/0 54.47,32.91 < 15 |only if walking
talk Na Lek##55597
|tip At the top of the ruins.
Select _"Attempt to free Na Lek from his prison."_ |gossip 39799
Watch the dialogue
Kill the enemies that attack
click Water of Youth##210229+
|tip They look like {o}blue spots in the water{}.
|tip They {o}appear after killing the enemies{}.
collect The Water of Youth##78934 |q 30347/1 |goto Krasarang Wilds/0 51.91,32.72
'|kill Sleeping Guardian##58419
step
label "Kill_Dojani_Enforcers"
kill 4 Dojani Enforcer##65626 |q 30349/3 |goto Krasarang Wilds/0 54.56,38.41
|tip They look like {o}bulky humanoids{} carrying a {o}large sword{}.
step
label "Kill_Dojani_Reclaimers"
kill 6 Dojani Reclaimer##58117 |q 30349/2 |goto Krasarang Wilds/0 54.56,38.41
|tip They look like {o}bulky humanoids{} wearing a {o}cloak and carrying a staff{}.
step
label "Kill_Dojani_Surveyors"
kill 8 Dojani Surveyor##58068 |q 30349/1 |goto Krasarang Wilds/0 54.56,38.41
|tip They look like {o}bulky humanoids{} carrying a {o}spear{}.
step
label "Collect_Imperial_Lotus_Leaves"
click Imperial Lotus##210209+
|tip They look like {o}plants with white flowers{}.
collect 20 Imperial Lotus Leaves##78918 |q 30351/1 |goto Krasarang Wilds/0 54.56,38.41
step
talk Kang Bramblestaff##58814
turnin Lotus Tea##30351 |goto Krasarang Wilds/0 67.36,32.74
step
talk Lyalia##58735
turnin Threat from Dojan##30349 |goto Krasarang Wilds/0 67.45,32.70
step
talk Lorekeeper Vaeldrin##58745
turnin The Pools of Youth##30347 |goto Krasarang Wilds/0 67.45,32.64
accept Immortality?##30348 |goto Krasarang Wilds/0 67.45,32.64
step
Watch the dialogue
Observe Lorekeeper Vaeldrin's Ritual |q 30348/1 |goto Krasarang Wilds/0 67.45,32.64
step
talk Lorekeeper Vaeldrin##58745
turnin Immortality?##30348 |goto Krasarang Wilds/0 67.45,32.64
step
talk Lyalia##58735
accept Going on the Offensive##30363 |goto Krasarang Wilds/0 67.45,32.70
step
talk Koro Mistwalker##58547
turnin Into the Wilds##30178 |goto Krasarang Wilds/0 44.20,42.89
accept Unsafe Passage##30269 |goto Krasarang Wilds/0 44.20,42.89
step
clicknpc Incursion Sentinel##59137
collect Sentinel Scout's Report##79332 |q 30363/1 |goto Krasarang Wilds/0 43.93,43.39
step
talk Koro Mistwalker##58547
Select _"I'm ready, Koro."_ |gossip 40208
Watch the dialogue
Begin Following Koro |goto Krasarang Wilds/0 44.20,42.89 > 25 |c |q 30269
step
Watch the dialogue
|tip Follow {o}Koro Mistwalker{} and {o}protect him{} as he walks.
|tip He eventually walks to this location.
kill Riverblade Bloodletter##58983+
|tip They attack in waves.
|tip Click {o}Koro Mistwalker{} when he {o}says he's pinned down{} to {o}help him back up{}.
Accompany Koro to Crane Wing Refuge |q 30269/1 |goto Krasarang Wilds/0 43.88,36.85
'|clicknpc Koro Mistwalker##58978
step
Watch the dialogue
talk Koro Mistwalker##59138
|tip He runs to this location.
turnin Unsafe Passage##30269 |goto Krasarang Wilds/0 40.58,33.68
accept Blinding the Riverblades##30270 |goto Krasarang Wilds/0 40.58,33.68
accept Tread Lightly##30694 |goto Krasarang Wilds/0 40.58,33.68
step
talk Anduin Wrynn##58609
accept The Murksweats##30268 |goto Krasarang Wilds/0 40.49,34.65
stickystart "Poke_Traps"
stickystart "Kill_Riverblade_Pathstalkers"
step
kill Murkscale Striker##58631+
|tip They look like {o}snakes{}.
|tip Underwater.
collect 6 Murkscale Head##79199 |q 30268/1 |goto Krasarang Wilds/0 35.81,38.05
You can find more around [39.46,36.36]
step
label "Poke_Traps"
click Riverblade Spike Trap+
|tip They look like {o}spiked metal balls{}.
|tip {o}Don't get too close{} to them, they {o}explode{}.
Poke #10# Traps |q 30694/1 |goto Krasarang Wilds/0 44.65,35.01
step
label "Kill_Riverblade_Pathstalkers"
kill 8 Riverblade Pathstalker##58858 |q 30270/1 |goto Krasarang Wilds/0 44.65,35.01
|tip They look like {o}lizard people{}.
step
talk Anduin Wrynn##58609
turnin The Murksweats##30268 |goto Krasarang Wilds/0 40.49,34.65
step
talk Koro Mistwalker##59138
turnin Blinding the Riverblades##30270 |goto Krasarang Wilds/0 40.58,33.68
turnin Tread Lightly##30694 |goto Krasarang Wilds/0 40.58,33.68
accept Ahead on the Way##30695 |goto Krasarang Wilds/0 40.58,33.68
accept Striking the Rain##30272 |goto Krasarang Wilds/0 40.58,33.68
step
_Next to you:_
talk Anduin Wrynn##59189
accept Sha Can Awe##30271
stickystart "Inspire_Hopeless_Crane_Wing_Defenders"
stickystart "Slay_Sha_Manifestations"
step
kill Maw of Despair##59315
|tip It walks around this area.
Cleanse the West Pagoda |q 30695/1 |goto Krasarang Wilds/0 37.79,54.16
step
kill Maw of Despair##59315
|tip It walks around this area.
Cleanse the East Pagoda |q 30695/2 |goto Krasarang Wilds/0 43.04,54.29
step
_Next to you:_
talk Anduin Wrynn##59608
turnin Ahead on the Way##30695
step
label "Inspire_Hopeless_Crane_Wing_Defenders"
Inspire #10# Hopeless Crane Wing Defenders |q 30271/1 |goto Krasarang Wilds/0 40.48,49.41
|tip Kill enemies near {o}Hopeless Crane Wing Defenders{}.
|tip They look like {o}various shadow pandas{}.
'|clicknpc Hopeless Monk##58968, Hopeless Acolyte##58969
step
label "Slay_Sha_Manifestations"
kill Incarnation of Despair##65872, Haunt of Despair##59236, Source of Despair##65873
|tip They look like {o}shadow aliens{}.
Slay #18# Sha Manifestations |q 30272/1 |goto Krasarang Wilds/0 40.48,49.41
step
_Next to you:_
talk Anduin Wrynn##59608
turnin Striking the Rain##30272
turnin Sha Can Awe##30271
accept In the House of the Red Crane##30273
step
Enter the building |goto Krasarang Wilds/0 40.43,52.13 < 20 |walk
talk Chi-Ji##59653
|tip Downstairs inside the building.
|tip {o}Follow the stairs down{} to reach the {o}lower level{}.
Select _"<Reach out to touch Chi-Ji.>"_ |gossip 39489
Watch the dialogue
kill Sha of Despair##59651 |q 30273/1 |goto Krasarang Wilds/0 40.44,54.49
|tip Fight him until he {o}returns to the middle of the room{}.
|tip When he does that, {o}run a bit up the stairs{} nearby and {o}wait until his AoE attack finishes{}.
|tip {o}Repeat{} this process.
|tip Also {o}kill the enemies he spawns{}, if you can.
'|kill Echo of Despair##59687
step
Run back up the stairs and leave the building |goto Krasarang Wilds/0 40.43,52.13 < 20 |walk |only if subzone("Temple of the Red Crane") and indoors()
talk Chi-Ji##59719
turnin In the House of the Red Crane##30273 |goto Krasarang Wilds/0 40.42,49.22
step
talk Feather Keeper Li##65189
fpath Cradle of Chi-Ji |goto Krasarang Wilds/0 31.14,63.16
step
talk Tony Tuna##60182
accept Particular Plumage##30667 |goto Krasarang Wilds/0 51.66,75.30
step
talk Jay Cloudfall##60173
accept Sudden, Unexpected Crocolisk Aggression##30666 |goto Krasarang Wilds/0 51.53,76.85
step
talk Nan-Po##60441
fpath Marista |goto Krasarang Wilds/0 52.48,76.60
stickystart "Collect_Emerald_Tailfeathers"
stickystart "Collect_Dusky_Tailfeathers"
stickystart "Slay_Mortbreath_Crocolisks"
step
kill Crimson Lory##60198+
|tip They look like {o}red birds{}.
collect 6 Crimson Tailfeather##80678 |q 30667/2 |goto Krasarang Wilds/0 45.15,68.68
step
label "Collect_Emerald_Tailfeathers"
kill Emerald Lory##60200+
|tip They look like {o}green birds{}.
collect 6 Emerald Tailfeather##80677 |q 30667/1 |goto Krasarang Wilds/0 45.15,68.68
step
label "Collect_Dusky_Tailfeathers"
kill Dusky Lory##60196+
|tip They look like {o}brown birds{}.
collect 6 Dusky Tailfeather##80679 |q 30667/3 |goto Krasarang Wilds/0 45.15,68.68
step
label "Slay_Mortbreath_Crocolisks"
kill Mortbreath Skulker##60202, Mortbreath Snapper##60201
|tip They look like {o}alligators{}.
Slay #8# Mortbreath Crocolisks |q 30666/1 |goto Krasarang Wilds/0 45.15,68.68
step
talk Tony Tuna##60182
turnin Particular Plumage##30667 |goto Krasarang Wilds/0 51.66,75.30
step
talk Jay Cloudfall##60173
turnin Sudden, Unexpected Crocolisk Aggression##30666 |goto Krasarang Wilds/0 51.53,76.85
accept Build Your Own Raft##30668 |goto Krasarang Wilds/0 51.53,76.85
step
click Spare Plank##211379
collect 4 Spare Plank##80685 |q 30668/1 |goto Krasarang Wilds/0 52.40,76.15
step
click Tough Kelp##211382
collect Tough Kelp##80804 |q 30668/2 |goto Krasarang Wilds/0 52.25,77.90
step
talk Jay Cloudfall##60173
turnin Build Your Own Raft##30668 |goto Krasarang Wilds/0 51.53,76.85
accept The Lorewalker on the Lake##30669 |goto Krasarang Wilds/0 51.53,76.85
step
click Your Raft##211392
Pick Up Your Raft |q 30669/1 |goto Krasarang Wilds/0 51.67,76.56
step
talk Wise Ana Wu##60139
turnin The Lorewalker on the Lake##30669 |goto Krasarang Wilds/0 45.98,78.91
accept Wisdom Has A Price##30671 |goto Krasarang Wilds/0 45.98,78.91
accept Misery##30691 |goto Krasarang Wilds/0 45.98,78.91
stickystart "Collect_Shark_Fillets"
step
Enter the underwater cave |goto Krasarang Wilds/0 46.03,80.00 < 20 |walk
kill Nahassa##60203
|tip Inside the underwater cave.
|tip {o}Don't worry about the crocolisks{} that appear.
Put Nahassa out of His Misery |q 30691/1 |goto Krasarang Wilds/0 46.20,83.46
step
_Click the Complete Quest Box:_
turnin Misery##30691
step
label "Collect_Shark_Fillets"
kill Great Grey Shark##60204, Nayeli Hammerhead##60432
|tip They look like {o}sharks{}.
|tip Underwater. |notinsticky
collect 5 Shark Fillet##80810 |q 30671/1 |goto Krasarang Wilds/0 46.61,78.63
step
talk Wise Ana Wu##60139
turnin Wisdom Has A Price##30671 |goto Krasarang Wilds/0 45.98,78.91
accept Balance##30672 |goto Krasarang Wilds/0 45.98,78.91
stickystart "Accept_Buried_Hozen_Treasure"
stickystart "Kill_Unga_Fish_Getters"
step
accept Balance Without Violence##30674 |goto Krasarang Wilds/0 45.12,84.91
|tip You will automatically accept this quest.
stickystart "Throw_Flailing_Carps_Back_Into_The_Water"
step
label "Accept_Buried_Hozen_Treasure"
kill Unga Fish-Getter##60299, Unga Treasure-Hider##60357
|tip They look like {o}monkeys{}.
accept Buried Hozen Treasure##30675 |goto Krasarang Wilds/0 45.12,84.91
|tip You will eventually automatically accept this quest after looting.
step
click Lump of Sand##211420+
|tip They look like {o}brown piles of dirt{}.
|tip You can find them {o}all along the beach{}. |notinsticky
collect Buried Hozen Treasure##80817 |q 30675/1 |goto Krasarang Wilds/0 48.47,87.12
|only if haveq(30675) or completedq(30675)
step
_Click the Complete Quest Box:_
turnin Buried Hozen Treasure##30675
step
label "Throw_Flailing_Carps_Back_Into_The_Water"
clicknpc Flailing Carp##60367+
|tip They look like {o}fish flopping on the ground{}.
|tip They are usually {o}next to piles of fish{}.
|tip You can find them {o}all along the beach{}. |notinsticky
Throw #6# Flailing Carp Back into the Water |q 30674/1 |goto Krasarang Wilds/0 45.12,84.91
step
label "Kill_Unga_Fish_Getters"
kill 10 Unga Fish-Getter##60299 |q 30672/1 |goto Krasarang Wilds/0 45.12,84.91
|tip They look like {o}monkeys carrying spears{}.
step
_Click the Complete Quest Box:_
turnin Balance Without Violence##30674
step
talk Jay Cloudfall##60173
turnin Balance##30672 |goto Krasarang Wilds/0 51.53,76.85
step
talk Tired Shushen##58278
accept Thieving Raiders##30168 |goto Krasarang Wilds/0 29.67,39.06
accept Raid Leader Slovan##30169 |goto Krasarang Wilds/0 29.67,39.06
stickystart "Collect_Pillaged_Jinyu_Loot"
step
kill Slovan##58285 |q 30169/1 |goto Krasarang Wilds/0 31.80,28.99
|tip Inside the {o}cavern{} at the {o}bottom of the waterfall{}.
step
label "Collect_Pillaged_Jinyu_Loot"
kill Riverblade Flesh-hunter##58274+
|tip They look like {o}lizard people{}.
collect 5 Pillaged Jinyu Loot##78958 |q 30168/1 |goto Krasarang Wilds/0 31.20,44.61
step
talk Tired Shushen##58278
turnin Thieving Raiders##30168 |goto Krasarang Wilds/0 29.67,39.06
turnin Raid Leader Slovan##30169 |goto Krasarang Wilds/0 29.67,39.06
step
talk Maylen Moonfeather##59048
fpath Sentinel Basecamp |goto Krasarang Wilds/0 25.14,33.46
step
talk Lyalia##58821
turnin Going on the Offensive##30363 |goto Krasarang Wilds/0 24.71,34.03
accept No Sister Left Behind##30354 |goto Krasarang Wilds/0 24.71,34.03
accept Sever Their Supply Line##30356 |goto Krasarang Wilds/0 24.71,34.03
step
talk Kang Bramblestaff##56114
accept Re-Reclaim##30355 |goto Krasarang Wilds/0 25.20,34.54
stickystart "Kill_Korjan_Reclaimers"
stickystart "Collect_Mogu_Artifacts"
step
clicknpc Captive Sentinel##58639+
|tip They look like {o}red glowing night elves{}.
Free #8# Captives |q 30354/1 |goto Krasarang Wilds/0 24.66,42.04
step
label "Kill_Korjan_Reclaimers"
kill 8 Korjan Reclaimer##58614 |q 30356/1 |goto Krasarang Wilds/0 24.66,42.04
|tip They look like {o}bulky humanoids wearing cloaks{}.
step
label "Collect_Mogu_Artifacts"
click Mogu Artifact##212765+
|tip They look like {o}various shaped golden objects{}.
collect 10 Mogu Artifact##79120 |q 30355/1 |goto Krasarang Wilds/0 24.66,42.04
step
talk Kang Bramblestaff##56114
turnin Re-Reclaim##30355 |goto Krasarang Wilds/0 25.20,34.54
step
talk Lyalia##58821
turnin No Sister Left Behind##30354 |goto Krasarang Wilds/0 24.71,34.03
turnin Sever Their Supply Line##30356 |goto Krasarang Wilds/0 24.71,34.03
step
talk Ambassador Han##58630
accept The Mantid##30361 |goto Krasarang Wilds/0 24.87,34.37
stickystart "Slay_Ikthik_Mantids"
step
talk Lorekeeper Vaeldrin##58745
accept The Stoneplow Convoy##30357 |goto Krasarang Wilds/0 15.09,39.42
step
clicknpc Stoneplow Envoy##58955+
|tip They look like {o}Pandarens laying on the ground{}.
Save #7# Stoneplow Envoys |q 30357/1 |goto Krasarang Wilds/0 15.47,39.61
step
label "Slay_Ikthik_Mantids"
kill Ik'thik Precursor##58367, Ik'thik Vanguard##58368
|tip They look like {o}insect people{}.
Slay #10# Ik'thik Mantids |q 30361/1 |goto Krasarang Wilds/0 13.48,37.79
step
talk Lorekeeper Vaeldrin##58745
turnin The Stoneplow Convoy##30357 |goto Krasarang Wilds/0 15.09,39.42
step
talk Ambassador Len##58954
turnin The Mantid##30361 |goto Krasarang Wilds/0 15.69,39.71
step
talk Lorekeeper Vaeldrin##58745
accept The Lord Reclaimer##30359 |goto Krasarang Wilds/0 15.09,39.42
step
talk Lyalia##58976
Select _"<Try to untie Lyalia.>"_ |gossip 40353
Watch the dialogue
kill Groundbreaker Brojai##58224 |q 30359/1 |goto Krasarang Wilds/0 23.58,48.84
|tip Kill the {o}enemies he summons{}.
'|kill Ruined Guardian##58645
step
talk Lorekeeper Vaeldrin##58745
turnin The Lord Reclaimer##30359 |goto Krasarang Wilds/0 24.70,33.99
accept The Waters of Youth##30445 |goto Krasarang Wilds/0 24.70,33.99
step
Watch the dialogue
Observe Vaeldrin's Ritual |q 30445/1 |goto Krasarang Wilds/0 24.70,33.99
step
talk Lyalia##58821
turnin The Waters of Youth##30445 |goto Krasarang Wilds/0 24.71,34.04
accept Warn Stoneplow##30360 |goto Krasarang Wilds/0 24.71,34.04
step
talk Loon Mai##56720
turnin Warn Stoneplow##30360 |goto Valley of the Four Winds/0 19.55,56.88
step
Watch the dialogue
talk Mei Barrelbottom##59855
accept The Mantidote##30623 |goto Valley of the Four Winds/0 17.96,56.45
step
talk Loon Mai##56720
accept The Swarm Begins##30622 |goto Valley of the Four Winds/0 17.84,56.23
step
talk Mudmug##56474
|tip He walks around this area.
accept It Does You No Good In The Keg##30624 |goto Valley of the Four Winds/0 18.16,55.73
stickystart "Use_Ken_Kens_Mask_On_Ikthik_Wing_Commanders"
stickystart "Slay_Ikthallik_Infestors_Or_Warriors"
step
Deliver Beer to Zhu's Wardens |q 30624/1 |goto Valley of the Four Winds/0 17.40,50.32
step
Deliver Beer to the Night Elf Settlers |q 30624/4 |goto Valley of the Four Winds/0 15.06,50.75
step
Deliver Beer to the Crane Wing Priests |q 30624/2 |goto Valley of the Four Winds/0 15.15,54.93
step
Deliver Beer to the Shado-Pan |q 30624/3 |goto Valley of the Four Winds/0 10.75,55.65
step
_Click the Complete Quest Box:_
turnin It Does You No Good In The Keg##30624
step
label "Use_Ken_Kens_Mask_On_Ikthik_Wing_Commanders"
use Ken-Ken's Mask##80337
|tip Use it on {o}Ik'thik Wing Commanders{}.
|tip They look like {o}larger insects{}.
kill Manifestation of Fear##59874+
Use Ken-Ken's Mask on #5# Ik'thik Wing Commanders |q 30623/1 |goto Valley of the Four Winds/0 12.93,54.85
You can find more around [16.35,53.47]
'|kill Ik'thik Wing Commander##56723
step
_Click the Complete Quest Box:_
turnin The Mantidote##30623
step
label "Slay_Ikthallik_Infestors_Or_Warriors"
kill Ik'thik Infestor##56721, Ik'thik Warrior##56722
|tip They look like {o}insect people{}.
Slay #15# Ik'thallik Infestors or Warriors |q 30622/1 |goto Valley of the Four Winds/0 12.93,54.85
step
talk Guard Captain Oakenshield##57198
turnin The Swarm Begins##30622 |goto Valley of the Four Winds/0 11.60,49.52
accept Students No More##30625 |goto Valley of the Four Winds/0 11.60,49.52
step
Watch the dialogue
|tip {o}Follow your allies{} and {o}kill enemies{} around this area.
|tip They {o}may already be in the battlefield{}, so you may have to {o}find them{}.
|tip {o}They will yell at you{} to come over to them {o}when you are near them{}.
kill Ik'thik Bloodrager##59887 |q 30625/1 |goto Valley of the Four Winds/0 9.26,54.09
kill Ik'thik Incubator##59890 |q 30625/2 |goto Valley of the Four Winds/0 9.26,54.09
kill Ik'thik Tendon-Slicer##59888 |q 30625/3 |goto Valley of the Four Winds/0 9.26,54.09
kill Ik'thik Fearmonger##59889 |q 30625/4 |goto Valley of the Four Winds/0 9.26,54.09
'|clicknpc Ken-Ken##59841, Clever Ashyo##59843, Xiao##59839, Lin Tenderpaw##59840, Kang Bramblestaff##59842
step
talk Guard Captain Oakenshield##57198
turnin Students No More##30625 |goto Valley of the Four Winds/0 11.60,49.52
accept Retreat!##30626 |goto Valley of the Four Winds/0 11.60,49.52
step
talk Loon Mai##56720
turnin Retreat!##30626 |goto Valley of the Four Winds/0 17.84,56.23
step
talk Master Bruised Paw##59856
accept The Savior of Stoneplow##30627 |goto Valley of the Four Winds/0 17.91,55.75
step
talk Miss Fanny##59857
Select _"Let's go, Miss Fanny."_ |gossip 39267
Ride Miss Fanny |invehicle |goto Valley of the Four Winds/0 17.93,56.69 |q 30627
step
Reach the Mantid Colossus |outvehicle |goto Valley of the Four Winds/0 7.55,54.76 |q 30627 |notravel
step
Watch the dialogue
|tip Use the ability when the {o}circle on your screen is full and glowing{}.
|tip You will have to use the ability {o}multiple times{}.
kill Mantid Colossus##56703 |q 30627/1 |goto Valley of the Four Winds/0 7.55,54.76
step
talk Loon Mai##56720
turnin The Savior of Stoneplow##30627 |goto Valley of the Four Winds/0 17.84,56.23
accept The Gratitude of Stoneplow##30628 |goto Valley of the Four Winds/0 17.84,56.23
step
click The Commander's Cache##211316
|tip Upstairs inside the building.
turnin The Gratitude of Stoneplow##30628 |goto Valley of the Four Winds/0 19.82,55.92
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (10-70)\\Kun-Lai Summit (20-70)",{
next="Leveling Guides\\Pandaria (10-70)\\Townlong Steppes (25-70)",
condition_valid=function() return level <= 70 and chromietime() == MOP end,
condition_valid_msg="This guide is optimized for {w}Chromie Time{}. Load the {w}Chromie Time{} guide first and select the {w}Wilds of Pandaria{} option.",
condition_valid_guide="Leveling Guides\Starter Guides\Chromie Time",
startlevel=20,
endlevel=70,
},[[
step
talk Highroad Grummle##62738
Speak with Highroad Grummle |q 31254/1 |goto Valley of the Four Winds/0 70.05,23.47
|only if haveq(31254) or completedq(31254)
step
talk Shin the Weightless##61759
|tip On top of the mountain.
fpath Tavern in the Mists |goto The Veiled Stair/0 56.72,75.75
step
talk Len the Whisperer##63484
accept Robbing Robbers of Robbers##31286 |goto The Veiled Stair/0 53.51,65.76
accept Educating Saurok##31287 |goto The Veiled Stair/0 53.51,65.76
stickystart "Collect_Black_Market_Merchandise"
step
Enter the cave |goto The Veiled Stair/0 54.86,55.01 < 15 |walk
Follow the path up |goto The Veiled Stair/0 44.26,47.28 < 15 |walk
kill Leechfingers##63494 |q 31287/1 |goto The Veiled Stair/0 51.12,43.38
|tip Upstairs inside the cave.
step
label "Collect_Black_Market_Merchandise"
click Various Objects
|tip They look like {o}various shaped objects with different names{}.
|tip Inside and outside the cave. |notinsticky
collect 7 Black Market Merchandise##85981 |q 31286/1 |goto The Veiled Stair/0 54.86,55.01
step
Leave the cave |goto The Veiled Stair/0 54.86,55.01 < 15 |walk |only if subzone("Hatescale Burrow") and indoors()
talk Len the Whisperer##63484
turnin Robbing Robbers of Robbers##31286 |goto The Veiled Stair/0 53.51,65.76
turnin Educating Saurok##31287 |goto The Veiled Stair/0 53.51,65.76
step
talk Brewmaster Boof##63367
Speak with Brewmaster Boof |q 31254/2 |goto The Veiled Stair/0 51.91,43.74
|only if haveq(31254) or completedq(31254)
step
talk Brewmaster Boof##63367
accept The Spring Drifter##31285 |goto The Veiled Stair/0 51.91,43.74
step
clicknpc The Spring Drifter##63517
Ride the Spring Drifter |invehicle |goto The Veiled Stair/0 52.03,43.08 |q 31285
step
Watch the dialogue
Survive a Ride on the Spring Drifter |q 31285/1 |goto Kun-Lai Summit/0 72.66,93.10 |notravel
step
talk Brewmaster Boof##63367
turnin The Spring Drifter##31285 |goto Kun-Lai Summit/0 72.66,93.02
step
talk Jo the Wind Watcher##61474
fpath Binan Village |goto Kun-Lai Summit/0 72.54,94.17
step
talk Apothecary Cheng##59077
accept Hit Medicine##30460 |goto Kun-Lai Summit/0 71.57,92.83
step
talk Mayor Bramblestaff##59073
turnin The Road to Kun-Lai##31254 |goto Kun-Lai Summit/0 72.27,91.86 |only if haveq(31254) or completedq(31254)
accept Call Out Their Leader##30457 |goto Kun-Lai Summit/0 72.27,91.86
step
talk Puli the Even Handed##62871
|tip Inside the building.
home Binan Brew & Stew |goto Kun-Lai Summit/0 72.67,92.34 |q 30460 |future
step
talk Commander Hsieh##59076
accept All of the Arrows##30459 |goto Kun-Lai Summit/0 70.75,90.36
stickystart "Slay_Bataari_Tribe_Members"
stickystart "Heal_Injured_Binan_Warriors"
stickystart "Collect_Arrows_Of_Commander_Hsieh"
step
kill Bataari Fire-Warrior##59083 |q 30457/2 |goto Kun-Lai Summit/0 68.01,88.63
|tip He looks like a {o}tauren riding on a large yak{} that walks along this path.
|tip He will appear as a {o}yellow dot{} on your {o}minimap{}.
|tip He appears at this location.
Also check around [69.89,89.45]
step
label "Slay_Bataari_Tribe_Members"
kill Bataari Yaungol##58961, Bataari Flamecaller##59021
|tip They look like {o}tauren{}.
Slay #10# Bataari Tribe Members |q 30457/1 |goto Kun-Lai Summit/0 69.23,89.76
step
label "Heal_Injured_Binan_Warriors"
use the Dit Da Jow##79819
|tip Use it on {o}Injured Binan Warriors{}.
|tip They look like {o}kneeling pandas{}.
Heal #8# Injured Binan Warriors |q 30460/1 |goto Kun-Lai Summit/0 69.23,89.76
'|clicknpc Injured Binan Warrior##59143
step
label "Collect_Arrows_Of_Commander_Hsieh"
click Arrow of Commander Hsieh##210759+
|tip They look like the {o}small sticks with feathers{}.
collect 12 Arrow of Commander Hsieh##79806 |q 30459/1 |goto Kun-Lai Summit/0 69.23,89.76
step
talk Commander Hsieh##59076
turnin All of the Arrows##30459 |goto Kun-Lai Summit/0 70.75,90.36
step
talk Mayor Bramblestaff##59073
turnin Call Out Their Leader##30457 |goto Kun-Lai Summit/0 72.27,91.86
step
talk Apothecary Cheng##59077
turnin Hit Medicine##30460 |goto Kun-Lai Summit/0 71.57,92.83
accept Admiral Taylor has Awakened##30508 |goto Kun-Lai Summit/0 71.57,92.83
step
talk Admiral Taylor##59441
|tip Upstairs inside the building.
turnin Admiral Taylor has Awakened##30508 |goto Kun-Lai Summit/0 71.54,93.08
accept Westwind Rest##30512 |goto Kun-Lai Summit/0 71.54,93.08
step
talk Merchant Shi##59263
accept Reposesssion##30469 |goto Kun-Lai Summit/0 74.96,88.86
accept My Son...##30467 |goto Kun-Lai Summit/0 74.96,88.86
step
talk Swordmistress Mei##59273
accept Enraged Vengeance##30468 |goto Kun-Lai Summit/0 74.79,88.68
step
talk Waterspeaker Gorai##60973
accept The Waterspeaker's Staff##30496 |goto Kun-Lai Summit/0 75.13,87.94
accept Free the Dissenters##30967 |goto Kun-Lai Summit/0 75.13,87.94
stickystart "Help_Inkgill_Dissenters_Escape"
stickystart "Collect_Stolen_Supplies"
stickystart "Slay_Enraged_Jinyus"
step
talk Wu-Peng##59272
turnin My Son...##30467 |goto Kun-Lai Summit/0 74.68,76.93
accept Father and Child Reunion##30834 |goto Kun-Lai Summit/0 74.68,76.93
step
kill Orachi##59180
|tip He walks around this area.
|tip He will appear as a {o}yellow dot{} on your {o}minimap{}.
collect Stolen Inkgill Ritual Staff##81385 |q 30496/1 |goto Kun-Lai Summit/0 74.45,78.53
step
label "Help_Inkgill_Dissenters_Escape"
talk Inkgill Dissenter##61566+
|tip They look like {o}scared fish people{}.
Select _"There's still hope - Gorai is still alive, to the south. Go!"_ |gossip 35732
Help #6# Inkgill Dissenters Escape |q 30967/1 |goto Kun-Lai Summit/0 74.61,82.83
You can find more around [74.07,78.29]
step
label "Collect_Stolen_Supplies"
click Untainted Supplies##210889+
|tip They look like {o}green and silver metal containers{}.
collect 8 Stolen Supplies##79880 |q 30469/1 |goto Kun-Lai Summit/0 74.61,82.83
You can find more around [74.07,78.29]
step
label "Slay_Enraged_Jinyus"
kill Orachi##59180, Enraged Tideweaver##59181, Enraged Cavalier##61537, Enraged Enforcer##60995, Enraged Spearman##59165, Enraged Priest##59166, Enraged Blacksmith##61130
|tip They look like {o}fish people{}.
Slay #15# Enraged Jinyus |q 30468/1 |goto Kun-Lai Summit/0 74.61,82.83
You can find more around [74.07,78.29]
step
talk Waterspeaker Gorai##60973
turnin The Waterspeaker's Staff##30496 |goto Kun-Lai Summit/0 75.20,88.26
turnin Free the Dissenters##30967 |goto Kun-Lai Summit/0 75.20,88.26
step
Watch the dialogue
Reunite Wu-Peng and Merchant Shi |q 30834/1 |goto Kun-Lai Summit/0 74.96,88.86
step
talk Merchant Shi##59263
turnin Reposesssion##30469 |goto Kun-Lai Summit/0 74.96,88.86
turnin Father and Child Reunion##30834 |goto Kun-Lai Summit/0 74.96,88.86
step
talk Swordmistress Mei##59273
turnin Enraged Vengeance##30468 |goto Kun-Lai Summit/0 74.79,88.68
step
talk Waterspeaker Gorai##60973
accept The Ritual##30480 |goto Kun-Lai Summit/0 75.20,88.26
step
talk Waterspeaker Gorai##60973
Select _"I'm ready. Begin the ritual."_ |gossip 38108
Speak to Waterspeaker Gorai to Begin the Ritual |q 30480/1 |goto Kun-Lai Summit/0 75.20,88.26
step
Watch the dialogue
|tip Follow {o}Waterspeaker Gorai{} as he walks.
|tip He eventually walks to this location.
Lay the Dead Inkgill to Rest |q 30480/2 |goto Kun-Lai Summit/0 74.90,88.58
'|clicknpc Waterspeaker Gorai##61582
step
Watch the dialogue
kill Explosive Hatred##61530
Complete the Ritual |q 30480/3 |goto Kun-Lai Summit/0 74.90,88.58
step
Watch the dialogue
talk Waterspeaker Gorai##60973
turnin The Ritual##30480 |goto Kun-Lai Summit/0 74.90,88.58
accept Cleansing the Mere##30828 |goto Kun-Lai Summit/0 74.90,88.58
step
clicknpc Pool of Corruption##61500+
|tip They look like {o}spots of smoke rising out of the water{}.
Watch the dialogue
kill Boiling Rage##59170+
Cleanse #6# Pools of Corruption |q 30828/1 |goto Kun-Lai Summit/0 71.54,85.29
step
_Next to you:_
talk Waterspeaker Gorai##61065
turnin Cleansing the Mere##30828
accept The Fall of Shai Hu##30855
step
kill Shai Hu##61069 |q 30855/1 |goto Kun-Lai Summit/0 71.24,82.53
|tip You will {o}lose 5% of your health every 5 seconds{}.
|tip Kill {o}Explosive Hatred enemies{} near him to {o}hurt him{}.
'|kill Explosive Hatred##61070
step
talk Waterspeaker Gorai##60973
turnin The Fall of Shai Hu##30855 |goto Kun-Lai Summit/0 74.91,88.58
step
talk Farmhand Bo##63754
Select _"I'm from the Alliance. We're here to save you and rebuild your village."_ |gossip 41284
Speak with Farmhand Bo |q 30512/1 |goto Kun-Lai Summit/0 58.87,80.47
step
talk Elder Tsulan##63542
Select _"I'm from the Alliance. We're here to save you and rebuild your village."_ |gossip 41467
Speak with Elder Tsulan |q 30512/2 |goto Kun-Lai Summit/0 56.35,84.40
step
talk Elder Tsulan##63542
turnin Westwind Rest##30512 |goto Kun-Lai Summit/0 56.35,84.40
accept Challenge Accepted##30514 |goto Kun-Lai Summit/0 56.35,84.40
step
click Yaungol Banner##210933
Watch the dialogue
kill Ur-Bataar##59483 |q 30514/1 |goto Kun-Lai Summit/0 58.19,84.10
step
talk Elder Tsulan##63542
turnin Challenge Accepted##30514 |goto Kun-Lai Summit/0 54.70,84.22
step
Watch the dialogue
talk Admiral Taylor##59441
|tip Inside the building.
accept Round 'Em Up##30575 |goto Kun-Lai Summit/0 53.77,82.67
step
talk Sully 'The Pickle' McLeary##59450
accept Blue Dwarf Needs Food Badly##30583 |goto Kun-Lai Summit/0 54.17,83.27
step
talk Elder Tsulan##63542
accept Mogu?! Oh No-gu!##30619 |goto Kun-Lai Summit/0 54.17,83.42
step
talk Tabo the Flyer##61744
fpath Westwind Rest |goto Kun-Lai Summit/0 53.98,84.26
step
talk Farmhand Bo##63754
accept Trouble on the Farmstead##30569 |goto Kun-Lai Summit/0 53.79,84.11
step
talk Mishka##59451
|tip She walks around this area.
accept Deanimate the Reanimated##30593 |goto Kun-Lai Summit/0 53.67,83.27
stickystart "Collect_Kun_Lai_Meaty_Bits"
step
clicknpc Wild Plains Yak##59610+
|tip They look like {o}brown bison{}.
|tip They will {o}follow you{}.
|tip You can have {o}3 following you{} at once.
Round Up #3# Yaks |q 30575/1 |goto Kun-Lai Summit/0 51.32,84.93
Bring them to [53.91,84.10]
step
label "Collect_Kun_Lai_Meaty_Bits"
kill Highlands Calf##59671, Highlands Mushan##59670, Summit Bonestripper##59672, Razorquill Porcupine##65839
|tip They look like {o}various beasts{}.
|tip {o}Wild Plains Yaks{} will not drop the quest item.
collect 160 Kun-Lai Meaty Bits##80245 |q 30583/1 |goto Kun-Lai Summit/0 51.32,84.93
step
talk Sully 'The Pickle' McLeary##59450
turnin Blue Dwarf Needs Food Badly##30583 |goto Kun-Lai Summit/0 54.17,83.27
step
talk Admiral Taylor##59441
|tip Inside the building.
turnin Round 'Em Up##30575 |goto Kun-Lai Summit/0 53.77,82.67
step
talk Farmer Chow##59573
turnin Trouble on the Farmstead##30569 |goto Kun-Lai Summit/0 60.24,85.79
accept Farmhand Freedom##30571 |goto Kun-Lai Summit/0 60.24,85.79
step
talk Uyen Chow##59636
accept ... and the Pot, Too!##30581 |goto Kun-Lai Summit/0 60.17,85.91
step
click Cast Iron Pot##211023
|tip Inside the building.
collect Cast Iron Pot##80230 |q 30581/2 |goto Kun-Lai Summit/0 60.02,88.44
stickystart "Collect_Root_Vegetables"
step
kill Ordo Overseer##59580+
|tip They look like {o}tauren next to groups of Pandaren{}.
Free #12# Farmstead Slaves |q 30571/1 |goto Kun-Lai Summit/0 58.61,89.25
You can find more around [61.31,87.39]
step
label "Collect_Root_Vegetables"
kill Wascally Wirmen##59655+
|tip They look like {o}small piles of moving dirt{}.
click Root Vegetable##211019+
|tip They look like {o}vegetables in the ground{}.
collect 12 Root Vegetable##80227 |q 30581/1 |goto Kun-Lai Summit/0 58.61,89.25
You can find more around [61.31,87.39]
step
talk Uyen Chow##59636
turnin ... and the Pot, Too!##30581 |goto Kun-Lai Summit/0 60.17,85.91
step
talk Farmer Chow##59573
turnin Farmhand Freedom##30571 |goto Kun-Lai Summit/0 60.24,85.79
accept Back to Westwind Rest##31252 |goto Kun-Lai Summit/0 60.24,85.79
step
talk Bao Jian##59821
accept Profiting off of the Past##30595 |goto Kun-Lai Summit/0 59.61,78.22
stickystart "Collect_Mogu_Relics"
stickystart "Destroy_Terracotta_Guardians_Or_Warriors"
step
kill Mogujia Soul-Caller##59797 |q 30619/1 |goto Kun-Lai Summit/0 58.12,70.89
step
label "Collect_Mogu_Relics"
kill Terracotta Warrior##59758, Terracotta Guardian##59773
|tip They look like {o}bulky humanoids and lions{}.
click Mogu Relic##211148+
|tip They look like {o}various shaped stone objects{}.
collect 12 Mogu Relic##80294 |q 30595/1 |goto Kun-Lai Summit/0 58.58,75.71
step
label "Destroy_Terracotta_Guardians_Or_Warriors"
kill Terracotta Warrior##59758, Terracotta Guardian##59773 |notinsticky
|tip They look like {o}bulky humanoids and lions{}. |notinsticky
Destroy #14# Terracotta Guardians or Warriors |q 30593/1 |goto Kun-Lai Summit/0 58.58,75.71
step
talk Bao Jian##59821
turnin Profiting off of the Past##30595 |goto Kun-Lai Summit/0 59.61,78.22
step
talk Elder Tsulan##63542
turnin Mogu?! Oh No-gu!##30619 |goto Kun-Lai Summit/0 54.16,83.43
step
talk Mishka##59451
|tip She walks around this area.
turnin Deanimate the Reanimated##30593 |goto Kun-Lai Summit/0 53.67,83.27
step
talk Farmhand Bo##63754
turnin Back to Westwind Rest##31252 |goto Kun-Lai Summit/0 53.79,84.11
step
talk Elder Tsulan##63542
accept Pandaren Prisoners##30650 |goto Kun-Lai Summit/0 54.16,83.43
step
talk Sully 'The Pickle' McLeary##59450
accept Barrels of Fun##30651 |goto Kun-Lai Summit/0 54.17,83.27
step
talk Admiral Taylor##59441
|tip Inside the building.
accept In Tents Channeling##30652 |goto Kun-Lai Summit/0 53.77,82.67
stickystart "Rescue_Pandaren_Prisoners"
step
clicknpc Explosives Barrel##60095
collect Explosives Barrel##80528 |goto Kun-Lai Summit/0 51.23,79.31 |q 30651
step
use the Explosives Barrel##80528
Destroy the Eastern Oil Rig |q 30651/1 |goto Kun-Lai Summit/0 51.05,79.41
step
kill Musaan the Blazecaster##59969 |q 30652/1 |goto Kun-Lai Summit/0 50.45,78.59
|tip Inside the tent.
step
kill Harala the Firespeaker##60030 |q 30652/3 |goto Kun-Lai Summit/0 49.43,78.48
|tip Inside the tent.
step
clicknpc Explosives Barrel##60095
collect Explosives Barrel##80528 |goto Kun-Lai Summit/0 49.57,78.97 |q 30651
step
kill Pao-kun the Pyromancer##60031 |q 30652/4 |goto Kun-Lai Summit/0 49.13,80.31
|tip Inside the tent.
step
use the Explosives Barrel##80528
Destroy the Southern Oil Rig |q 30651/2 |goto Kun-Lai Summit/0 49.61,80.94
step
clicknpc Explosives Barrel##60095
collect Explosives Barrel##80528 |q 30651 |goto Kun-Lai Summit/0 49.34,81.10
step
use the Explosives Barrel##80528
Destroy the Western Oil Rig |q 30651/3 |goto Kun-Lai Summit/0 47.87,81.39
step
kill Akonu the Embercaller##60032 |q 30652/2 |goto Kun-Lai Summit/0 47.71,80.01
|tip Inside the tent.
step
_Click the Complete Quest Box:_
turnin In Tents Channeling##30652
accept The Ordo Warbringer##30660
step
label "Rescue_Pandaren_Prisoners"
clicknpc Pandaren Prisoner##60038+
|tip They look like {o}panda people with ball and chains{}.
|tip They can also be inside {o}wooden cages{}.
Rescue #8# Pandaren Prisoners |q 30650/1 |goto Kun-Lai Summit/0 49.88,79.97
step
kill Ordo Warbringer##60127 |q 30660/1 |goto Kun-Lai Summit/0 48.35,76.72
|tip When his {o}shield appears{}, {o}kill the enemies{} that appear to {o}remove it{}.
|tip Inside the small cave.
step
talk Admiral Taylor##59441
|tip He walks around this area.
turnin Pandaren Prisoners##30650 |goto Kun-Lai Summit/0 53.89,83.51
turnin The Ordo Warbringer##30660 |goto Kun-Lai Summit/0 53.89,83.51
step
talk Sully 'The Pickle' McLeary##59450
turnin Barrels of Fun##30651 |goto Kun-Lai Summit/0 54.17,83.27
step
talk Elder Tsulan##63542
accept Beyond the Wall##31695 |goto Kun-Lai Summit/0 54.17,83.42
step
talk Admiral Taylor##59441
|tip He walks around this area.
accept The Shado-Pan##31455 |goto Kun-Lai Summit/0 53.89,83.51
step
talk Mishka##59451
|tip She walks around this area.
accept Cho's Missive##31460 |goto Kun-Lai Summit/0 53.55,83.32
step
talk Farmhand Bo##63754
accept Muskpaw Ranch##31456 |goto Kun-Lai Summit/0 53.79,84.11
step
talk Lao Muskpaw##59353
|tip He walks around this area.
turnin Muskpaw Ranch##31456 |goto Kun-Lai Summit/0 71.40,69.77
accept The Missing Muskpaw##30488 |goto Kun-Lai Summit/0 71.40,69.77
accept Fresh Needle Scent##30489 |goto Kun-Lai Summit/0 71.40,69.77
stickystart "Collect_Pungent_Sprite_Needles"
step
Enter the cave |goto Kun-Lai Summit/0 72.99,73.44 < 15 |walk
talk Muskpaw Jr.##61693
|tip He runs around this area inside the cave.
|tip {o}Kill the enemies attacking him{} to be able to {o}talk to him{}.
turnin The Missing Muskpaw##30488 |goto Kun-Lai Summit/9 64.23,61.16
accept At the Yak Wash##30491 |goto Kun-Lai Summit/9 64.23,61.16
step
clicknpc Tuffi##61874
|tip Inside the cave.
Ride Tuffi |invehicle |goto Kun-Lai Summit/9 65.54,58.89 |q 30491
step
Wash an Escaped Yak |q 30491/1 |goto Kun-Lai Summit/0 71.36,69.15 |count 1 |notravel
step
label "Collect_Pungent_Sprite_Needles"
kill Needle Sprite##55593+
|tip They look like {o}imps{}.
|tip Inside and outside the cave. |notinsticky
collect 100 Pungent Sprite Needles##79952 |q 30489/1 |goto Kun-Lai Summit/0 73.16,73.57
step
Leave the cave |goto Kun-Lai Summit/0 72.99,73.44 < 15 |walk |only if subzone("Pranksters' Hollow") and indoors()
accept Yakity Yak##30587 |goto Kun-Lai Summit/0 69.41,74.15
|tip You will automatically accept this quest.
stickystart "Kill_Burilgi_Despoilers"
step
kill Burilgi Despoiler##59335+
|tip They look like {o}tauren{}.
accept The Late Mrs. Muskpaw##30582 |goto Kun-Lai Summit/0 68.17,73.63
|tip You will eventually automatically accept this quest after looting.
step
clicknpc Escaped Yak##59319+
|tip They look like {o}brown bison{}.
Wash #6# Escaped Yaks |q 30491/1 |goto Kun-Lai Summit/0 68.17,73.63
Ride them to [71.36,69.15]
step
talk Muskpaw Jr.##59354
turnin At the Yak Wash##30491 |goto Kun-Lai Summit/0 71.39,69.28
step
talk Lao Muskpaw##59353
|tip He walks around this area.
turnin Fresh Needle Scent##30489 |goto Kun-Lai Summit/0 71.51,69.94
turnin The Late Mrs. Muskpaw##30582 |goto Kun-Lai Summit/0 71.51,69.94
accept The Fearmaster##30804 |goto Kun-Lai Summit/0 71.51,69.94
step
kill The Fearmaster##59656 |q 30804/1 |goto Kun-Lai Summit/0 67.84,73.99
step
label "Kill_Burilgi_Despoilers"
kill 9 Burilgi Despoiler##59335 |q 30587/1 |goto Kun-Lai Summit/0 68.17,73.63
|tip They look like {o}tauren{}.
'|kill Burilgi Despoiler##59718, Burilgi Despoiler##59382
step
talk Lao Muskpaw##59353
|tip He walks around this area.
turnin The Fearmaster##30804 |goto Kun-Lai Summit/0 71.51,69.94
turnin Yakity Yak##30587 |goto Kun-Lai Summit/0 71.51,69.94
step
talk Muskpaw Jr.##59354
accept Back in Yak##30492 |goto Kun-Lai Summit/0 71.39,69.28
step
Bring the Yak Herd to Lucky Eightcoins |q 30492/1 |goto Kun-Lai Summit/0 65.38,61.71
step
talk Slimy Inkstain##59402
accept Oil Stop##30614 |goto Kun-Lai Summit/0 65.49,60.82
step
talk Smokey Sootassle##59597
accept Traffic Issues##30616 |goto Kun-Lai Summit/0 64.88,60.49
step
talk Lucky Eightcoins##59371
turnin Back in Yak##30492 |goto Kun-Lai Summit/0 64.71,61.76
accept A Grummle's Luck##30808 |goto Kun-Lai Summit/0 64.71,61.76
stickystart "Collect_Stolen_Luckydos"
stickystart "Slay_Ruqin_Yaungols"
step
click Yaungol Oil Derrick##211531
collect Filled Oil Vial##80311 |q 30614/1 |goto Kun-Lai Summit/0 63.32,68.45
step
label "Collect_Stolen_Luckydos"
click Stolen Bag of Luckydos##211538+
|tip They look like {o}small tan bags{}.
|tip They can be {o}inside huts{}.
collect 8 Stolen Luckydos##81293 |q 30808/1 |goto Kun-Lai Summit/0 62.80,67.52
step
label "Slay_Ruqin_Yaungols"
kill Ruqin Elder##59826, Ruqin Infantry##59790, Ruqin Outrider##59538
|tip They look like {o}tauren{}.
Slay #8# Ruqin Yaungols |q 30616/1 |goto Kun-Lai Summit/0 62.80,67.52
step
talk Lucky Eightcoins##59371
turnin A Grummle's Luck##30808 |goto Kun-Lai Summit/0 64.71,61.76
step
talk Slimy Inkstain##59402
turnin Oil Stop##30614 |goto Kun-Lai Summit/0 65.49,60.82
step
talk Smokey Sootassle##59597
turnin Traffic Issues##30616 |goto Kun-Lai Summit/0 64.88,60.50
accept Roadside Assistance##30617 |goto Kun-Lai Summit/0 64.88,60.50
step
click Lucky Burlap Incense##211539+
|tip They look like {o}thin sticks{} stuck in the ground {o}along the road{}.
Light #8# Lucky Burlap Incense |q 30617/1 |goto Kun-Lai Summit/0 60.19,65.28
step
talk Brother Lintpocket##59701
turnin Roadside Assistance##30617 |goto Kun-Lai Summit/0 58.09,61.47
step
talk Little Cleankite##61504
fpath One Keg |goto Kun-Lai Summit/0 57.73,59.69
step
talk Lorewalker Cho##61847
turnin Cho's Missive##31460 |goto Kun-Lai Summit/0 57.34,61.69
accept Path Less Traveled##30999 |goto Kun-Lai Summit/0 57.34,61.69
step
talk Uncle Cloverleaf##59696
turnin Path Less Traveled##30999 |goto Kun-Lai Summit/0 57.22,61.20
accept Instant Courage##30601 |goto Kun-Lai Summit/0 57.22,61.20
step
talk Big Sal##59695
|tip Inside the building.
accept Resupplying Onekeg##30618 |goto Kun-Lai Summit/0 57.72,61.77
step
talk Ji-Lu the Lucky##59716
|tip Inside the building.
accept They Stole My Luck!##30621 |goto Kun-Lai Summit/0 57.32,60.20
stickystart "Inspire_Hiding_Guides"
stickystart "Collect_Stolen_Supplies_30618"
step
Enter the cave |goto Kun-Lai Summit/0 59.28,52.68 < 30 |walk
kill Suspicious Snow Pile##59967+
|tip They look like {o}white mounds{}.
|tip Inside the cave.
kill Mischievous Snow Sprite##59693+
|tip They look like {o}imps{}.
collect Lucky Virmen's Foot##80316 |q 30621/1 |goto Kun-Lai Summit/8 70.02,86.55
collect Lucky Yak Shoe##80317 |q 30621/2 |goto Kun-Lai Summit/8 70.02,86.55
collect Lucky Four Winds Clover##90318 |q 30621/3 |goto Kun-Lai Summit/8 70.02,86.55
collect Lucky "Gold" Coin##80319 |q 30621/4 |goto Kun-Lai Summit/8 70.02,86.55
step
label "Inspire_Hiding_Guides"
talk Hiding Guide##59818+
|tip They look like {o}larger wicker baskets{}.
|tip Inside the cave. |notinsticky
Select _"Are you sure you don't want to come with me?"_ |gossip 33656
Select _"Well you can't just stay in here! You leave me no choice! <Use the Fire Lotus Incense.>"_ |gossip 33655
Inspire #3# Hiding Guides |q 30601/1 |goto Kun-Lai Summit/8 70.02,86.55
step
label "Collect_Stolen_Supplies_30618"
click Stolen Supplies##211270+
|tip They look like {o}various shaped objects{}.
|tip Inside the cave. |notinsticky
collect 8 Stolen Supplies##80315 |q 30618/1 |goto Kun-Lai Summit/8 70.02,86.55
step
Leave the cave |goto Kun-Lai Summit/0 59.28,52.68 < 30 |walk |only if subzone("Howlingwind Cavern") and indoors()
talk Ji-Lu the Lucky##59716
|tip Inside the building.
turnin They Stole My Luck!##30621 |goto Kun-Lai Summit/0 57.32,60.20
step
talk Uncle Cloverleaf##59696
turnin Instant Courage##30601 |goto Kun-Lai Summit/0 57.22,61.20
step
talk Big Sal##59695
|tip Inside the building.
turnin Resupplying Onekeg##30618 |goto Kun-Lai Summit/0 57.72,61.77
step
talk Uncle Cloverleaf##59696
accept Comin' Round the Mountain##30487 |goto Kun-Lai Summit/0 57.22,61.20
step
clicknpc Ji-Lu's Cart##60094
Jump in Ji-Lu's Cart |q 30487/1 |goto Kun-Lai Summit/0 57.32,61.58
step
kill Knucklethump Attacker##60138, Rampaging Yeti##59694
|tip They {o}attack in waves{} as you ride the cart.
Survive the Mountain Pass |q 30487/2 |goto Kun-Lai Summit/0 48.10,49.01 |notravel
step
talk Lucky Bluestring##60175
turnin Comin' Round the Mountain##30487 |goto Kun-Lai Summit/0 48.14,49.04
accept One Traveler's Misfortune##30683 |goto Kun-Lai Summit/0 48.14,49.04
step
click Abandoned Wreckage##212903
Search the Abandoned Wreckage for Supplies |q 30683/1 |goto Kun-Lai Summit/0 50.06,49.24
step
Watch the dialogue
kill Stone Guardian##63155+
kill General Sho Lien##60769 |q 30683/2 |goto Kun-Lai Summit/0 50.06,49.24
step
talk Lucky Bluestring##60175
turnin One Traveler's Misfortune##30683 |goto Kun-Lai Summit/0 48.14,49.04
accept Seeker's Folly##30684 |goto Kun-Lai Summit/0 48.14,49.04 |or
'|accept Seeker's Folly##31306 |goto Kun-Lai Summit/0 48.14,49.04 |or
step
click Shrine of the Seeker's Body##211597
|tip {o}Avoid the falling snowballs{}.
Honor the Shrine of the Seeker's Body |q 30684/1 |goto Kun-Lai Summit/0 44.79,49.17 |only if haveq(30684) or completedq(30684)
Honor the Shrine of the Seeker's Body |q 31306/1 |goto Kun-Lai Summit/0 44.79,49.17 |only if haveq(31306) or completedq(31306)
step
click Shrine of the Seeker's Breath##211601
|tip {o}Avoid the tornados{}.
Honor the Shrine of the Seeker's Breath |q 30684/2 |goto Kun-Lai Summit/0 42.69,50.02 |only if haveq(30684) or completedq(30684)
Honor the Shrine of the Seeker's Breath |q 31306/2 |goto Kun-Lai Summit/0 42.69,50.02 |only if haveq(31306) or completedq(31306)
step
click Shrine of the Seeker's Heart##211602
Honor the Shrine of the Seeker's Heart |q 30684/3 |goto Kun-Lai Summit/0 43.18,51.98 |only if haveq(30684) or completedq(30684)
Honor the Shrine of the Seeker's Heart |q 31306/3 |goto Kun-Lai Summit/0 43.18,51.98 |only if haveq(31306) or completedq(31306)
step
talk Lorewalker Cho##60795
turnin Seeker's Folly##30684 |or |goto Kun-Lai Summit/0 43.79,51.05 |only if haveq(30684) or completedq(30684)
turnin Seeker's Folly##31306 |or |goto Kun-Lai Summit/0 43.79,51.05 |only if haveq(31306) or completedq(31306)
accept The Tongue of Ba-Shon##30829 |goto Kun-Lai Summit/0 43.79,51.05
step
talk Lorewalker Cho##60795
Select _"Go ahead with the binding, Cho."_ |gossip 40517
Watch the dialogue
kill Reclaimer Zuan##61305
Bind the Tongue of Ba-Shon |q 30829/1 |goto Kun-Lai Summit/0 43.79,51.05
step
talk Lorewalker Cho##60795
turnin The Tongue of Ba-Shon##30829 |goto Kun-Lai Summit/0 43.76,51.11
accept Staying Connected##30795 |goto Kun-Lai Summit/0 43.76,51.11
step
talk Mishi##60796
Select _"I'm ready to leave."_ |gossip 40519
Begin Flying to the Valley of Emperors |invehicle |goto Kun-Lai Summit/0 43.74,51.32 |q 30795
step
Fly to the Valley of Emperors |outvehicle |goto Kun-Lai Summit/0 57.87,48.97 |q 30795 |notravel
step
use The Tongue of Ba-Sho##81712
Use the Tongue of Ba-Shon in the Valley of Emperors |q 30795/1 |goto Kun-Lai Summit/0 57.87,48.97
step
_Next to you:_
talk Image of Lorewalker Cho##61297
turnin Staying Connected##30795
accept An End to Everything##30796
stickystart "Kill_Tormented_Spirits"
step
click Curious Text##211780
accept It Was Almost Alive##30797 |goto Kun-Lai Summit/0 57.11,47.90
step
click Curious Text##211780
collect Torn Page##81892 |q 30797/1 |goto Kun-Lai Summit/0 57.11,47.90
step
label "Kill_Tormented_Spirits"
kill 5 Tormented Spirits##60825 |q 30796/1 |goto Kun-Lai Summit/0 57.31,48.01
|tip They look like {o}banshees{}.
step
use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
|tip He appears next to you.
turnin An End to Everything##30796
turnin It Was Almost Alive##30797
accept The Tomb of Shadows##30799
step
Enter the building |goto Kun-Lai Summit/0 55.89,46.18 < 10 |walk
click Shen Dynasty Tablet##211770
|tip Inside the building.
collect Shen Dynasty Rubbing##82393 |q 30799/1 |goto Kun-Lai Summit/0 57.14,43.49
step
click Qiang Dynasty Tablet##211794
|tip Inside the building.
collect Qiang Dynasty Rubbing##82394 |q 30799/3 |goto Kun-Lai Summit/0 57.07,45.04
step
click Wai Dynasty Tablet##211793
|tip Inside the building.
collect Wai Dynasty Rubbing##82395 |q 30799/2 |goto Kun-Lai Summit/0 56.37,43.43
step
use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
|tip He appears next to you.
turnin The Tomb of Shadows##30799
accept Breaking the Emperor's Shield##30798
step
Leave the building |goto Kun-Lai Summit/0 55.89,46.18 < 10 |walk |only if subzone("Tomb of Shadows") and indoors()
Run up the stairs and enter the building |goto Kun-Lai Summit/0 53.33,49.29 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Imperial Guard##60826+
|tip They {o}attack in waves{}.
kill Nakk'rakas##60572
Interrupt the Spiritbinding Ritual |q 30798/1 |goto Kun-Lai Summit/0 52.96,51.39
step
use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
|tip He appears next to you.
turnin Breaking the Emperor's Shield##30798
accept Stealing Their Thunder... King##30800
step
_NOTE:_
During the Next Steps
|tip {o}Avoid the tiles{} on the floor with {o}colorful designs{}, they are {o}traps{}.
Click Here to Continue |confirm |q 30800
step
Leave the building |goto Kun-Lai Summit/0 53.33,49.29 < 10 |walk |only if subzone("Tomb of Secrets") and indoors()
Enter the building |goto Kun-Lai Summit/0 52.96,46.59 < 10 |walk
click King's Coffer##211967
|tip Inside the building.
collect Bottom Fragment of Lei Shen's Tablet##82764 |q 30800/1 |goto Kun-Lai Summit/17 58.65,72.68
step
click Top Fragment of Lei Shen's Tablet##211968
|tip Inside the building.
Repair the Tablet of Thunder |q 30800/2 |goto Kun-Lai Summit/17 34.15,61.48
step
use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
|tip He appears next to you.
turnin Stealing Their Thunder... King##30800
accept Lessons from History##30801
step
click Tablet of Thunder
|tip Inside the building.
Read the Tablet of Thunder |q 30801/1 |goto Kun-Lai Summit/17 34.15,61.48
step
Watch the dialogue
use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
|tip He appears next to you.
turnin Lessons from History##30801
accept Chasing the Storm##30802
step
kill Zandalari Warrior##61842+
|tip They look like {o}trolls{}.
|tip Inside the building.
collect Blood-Revealed Map##81890 |q 30802/1 |goto Kun-Lai Summit/17 59.51,72.19
step
use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
|tip He appears next to you.
turnin Chasing the Storm##30802
accept Fisherman's Tale##30935
step
Leave the building |goto Kun-Lai Summit/0 52.96,46.59 < 10 |walk |only if subzone("Tomb of Conquerors") and indoors()
talk Mishi##61382
Select _"I'm ready to leave."_ |gossip 30224
Speak to Mishi Outside of Lei Shen's Tomb |q 30935/1 |goto Kun-Lai Summit/0 52.97,46.39
step
Begin Flying to the Path of Conquerors |invehicle |goto Kun-Lai Summit/0 52.97,46.39 |q 30935
step
Fly to the Path of Conquerors |outvehicle |goto Kun-Lai Summit/0 63.92,47.85 |q 30935 |notravel
step
Leave the cave |goto Kun-Lai Summit/0 63.94,49.65 < 20 |walk |only if subzone("Path of Conquerors") and indoors()
Follow the path up |goto Kun-Lai Summit/0 66.91,57.69 < 20 |only if walking
talk Anduin Wrynn##64540
|tip Inside the building.
turnin Temple of the White Tiger##31392 |goto Kun-Lai Summit/0 68.78,43.13 |only if haveq(31392) or completedq(31392)
accept A Celestial Experience##31394 |goto Kun-Lai Summit/0 68.78,43.13
step
talk Xuen##64528
|tip Inside the building.
Speak to Xuen |q 31394/1 |goto Kun-Lai Summit/0 68.88,42.79
step
Watch the dialogue
|tip Inside the building.
kill Spirit of Violence##64656
Pass the First Test |q 31394/2 |goto Kun-Lai Summit/0 68.78,43.98
step
Watch the dialogue
|tip Inside the building.
kill Spirit of Anger##64684
Pass the Second Test |q 31394/3 |goto Kun-Lai Summit/0 68.78,43.98
step
Watch the dialogue
|tip Inside the building.
kill Spirit of Hatred##64744
Pass the Third Test |q 31394/4 |goto Kun-Lai Summit/0 68.78,43.98
step
talk Anduin Wrynn##64540
|tip Inside the building.
turnin A Celestial Experience##31394 |goto Kun-Lai Summit/0 68.78,43.13
accept A Witness to History##31512 |goto Kun-Lai Summit/0 68.78,43.13
step
Leave the building |goto Kun-Lai Summit/0 68.60,46.07 < 20 |walk |only if subzone("Temple of the White Tiger") and indoors()
talk Big Greenfeather##61118
|tip At the top of the mountain.
fpath Temple of the White Tiger |goto Kun-Lai Summit/0 66.31,50.66
step
Run down the mountain and run through the tunnel |goto Kun-Lai Summit/0 63.94,49.59 < 30 |only if walking
talk Shin Whispercloud##61380
Select _"I'm ready to leave."_ |gossip 30226
Speak to Anduin at the Gate of the August Celestials |q 30935/2 |goto Kun-Lai Summit/0 63.32,40.22
step
Begin Flying to the Zouchin Province |invehicle |goto Kun-Lai Summit/0 63.32,40.22 |q 30935
step
Fly to the Zouchin Province |outvehicle |goto Kun-Lai Summit/0 63.59,34.88 |q 30935 |notravel
step
talk Bo the Wind Claimer##61511
fpath Zouchin Village |goto Kun-Lai Summit/0 62.42,30.12
step
talk Lorewalker Cho##61371
|tip Inside the building.
turnin Fisherman's Tale##30935 |goto Kun-Lai Summit/0 62.32,29.06
accept It Takes A Village##30944 |goto Kun-Lai Summit/0 62.32,29.06
step
talk Li Hai##60436
accept Checking In##30816 |goto Kun-Lai Summit/0 63.17,29.37
step
talk Elder Shu##61495
|tip He walks around on {o}both floors{}.
|tip Inside the building.
accept Handle With Care##30943 |goto Kun-Lai Summit/0 63.37,28.75
step
talk Steelbender Doshu##61496
|tip He walks around this area.
accept What's Yours Is Mine##30945 |goto Kun-Lai Summit/0 63.36,30.74
step
talk Shomi##61503
accept Make A Fighter Out of Me##30942 |goto Kun-Lai Summit/0 63.73,30.71
stickystart "Kill_Amani_Skirmishers"
step
talk Exhausted Defender##61417+
|tip They look like {o}Pandaren{}.
|tip Around the {o}perimeter of the village{}.
Select _"I'll cover your post. Go rest and be with your family."_ |gossip 38585,38591
Relieve #5# Exhausted Defenders |q 30944/1 |goto Kun-Lai Summit/0 63.35,29.30
'|talk Exhausted Defender##61381
step
label "Kill_Amani_Skirmishers"
kill 4 Amani Skirmisher##66165 |q 30942/1 |goto Kun-Lai Summit/0 64.35,29.07
|tip They look like{o} trolls with large axes{}.
|tip Around the {o}perimeter of the village{}. |notinsticky
stickystart "Kill_Drakkari_Frostweavers"
stickystart "Kill_Gurubashi_Hexxers"
stickystart "Collect_Handful_Of_Volatile_Blooms"
step
kill Amani Skullbreaker##60580, Amani Raptor-Handler##60581
|tip Only {o}Skullbreakers{} and {o}Raptor-Handlers{} will drop the {o}quest item{}.
|tip They look like {o}trolls carrying a large sword{}, and {o}trolls walking with raptors{}.
collect 8 Blood-Stained Blade##82299 |q 30945/1 |goto Kun-Lai Summit/0 69.94,27.15
step
label "Kill_Drakkari_Frostweavers"
kill 3 Drakkari Frostweaver##66707 |q 30942/3 |goto Kun-Lai Summit/0 69.94,27.15
|tip They look like {o}trolls channeling a blue spell{}.
step
label "Kill_Gurubashi_Hexxers"
kill 4 Gurubashi Hexxer##64202 |q 30942/2 |goto Kun-Lai Summit/0 69.94,27.15
|tip They look like {o}trolls carrying staves{}.
step
label "Collect_Handful_Of_Volatile_Blooms"
click Volatile Blooms##211684+
|tip They look like {o}red bushes{}.
collect 50 Handful of Volatile Blooms##82298 |q 30943/1 |goto Kun-Lai Summit/0 69.94,27.15
step
_Next to you:_
talk Shomi##61534
turnin Make A Fighter Out of Me##30942
step
talk Lorewalker Cho##61371
|tip Inside the building.
turnin It Takes A Village##30944 |goto Kun-Lai Summit/0 62.33,29.06
step
talk Elder Shu##61495
|tip He walks around on {o}both floors{}.
|tip Inside the building.
turnin Handle With Care##30943 |goto Kun-Lai Summit/0 63.37,28.75
step
talk Steelbender Doshu##61496
|tip He walks around this area.
turnin What's Yours Is Mine##30945 |goto Kun-Lai Summit/0 63.36,30.74
step
talk Lorewalker Cho##61371
|tip Inside the building.
accept Enemies At Our Door##31011 |goto Kun-Lai Summit/0 62.33,29.06
stickystart "Kill_Zandalari_Berserkers"
step
clicknpc Blasting Barrel##62591+
|tip They look like {o}wooden barrels{}.
|tip {o}Keep clicking them{} as they reappear.
kill 5 Zandalari Behemoth##63516 |q 31011/2 |goto Kun-Lai Summit/0 61.18,29.05
step
kill 3 Zandalari Bloodrider##62362 |q 31011/3 |goto Kun-Lai Summit/0 64.40,29.04
|tip They look like {o}trolls riding raptors{}.
|tip You {o}may have to wait{} for a group of them to appear.
You can find more around [63.87,32.39]
step
label "Kill_Zandalari_Berserkers"
kill 10 Zandalari Berserker##62299 |q 31011/1 |goto Kun-Lai Summit/0 62.77,30.10
|tip They look like {o}troll soldiers{}.
step
talk Lorewalker Cho##61371
|tip Inside the building.
turnin Enemies At Our Door##31011 |goto Kun-Lai Summit/0 62.33,29.06
accept Revelations##30946 |goto Kun-Lai Summit/0 62.33,29.06
step
talk Zandalari Prisoner##62629
|tip Upstairs inside the building.
Select _"Where have the Thunder King's Remains been taken?!"_ |gossip 40352
Watch the dialogue
Question the Zandalari Prisoner |q 30946/1 |goto Kun-Lai Summit/0 62.48,28.84
step
talk Lorewalker Cho##63750
|tip Inside the building.
turnin Revelations##30946 |goto Kun-Lai Summit/0 62.32,29.06
accept Prophet Khar'zul##31228 |goto Kun-Lai Summit/0 62.32,29.06
step
talk Sage Liao##60694
turnin Checking In##30816 |goto Kun-Lai Summit/0 60.61,21.34
accept Emergency Care##30794 |goto Kun-Lai Summit/0 60.61,21.34
step
click Sage Liao's Belongings##211510
|tip Inside the building.
collect Pandaren Healing Draught##81177 |goto Kun-Lai Summit/0 61.02,21.52 |q 30794
step
use the Pandaren Healing Draught##81177
|tip Use it on {o}Sage Liao{}.
Heal Sage Liao |q 30794/1 |goto Kun-Lai Summit/0 60.61,21.34
'|clicknpc Sage Liao##60694
step
talk Sage Liao##60785
turnin Emergency Care##30794 |goto Kun-Lai Summit/0 60.61,21.34
accept Justice##30805 |goto Kun-Lai Summit/0 60.61,21.34
accept The Scent of Life##30806 |goto Kun-Lai Summit/0 60.61,21.34
accept By the Falls, For the Fallen##30807 |goto Kun-Lai Summit/0 60.61,21.34
step
click Waterfall-Polished Stone##211526+
|tip They look like {o}large grey rocks underwater{}.
collect 3 Waterfall-Polished Stone##81269 |q 30807/1 |goto Kun-Lai Summit/0 59.05,27.22
You can find more around [58.91,24.56]
stickystart "Collect_Stolen_Pandaren_Spices_And_Slay_Blackmane_Mercenaries"
stickystart "Collect_Opalescent_Blue_Crab_Shells"
step
kill Captain Ripflesh##60767 |q 30805/1 |goto Kun-Lai Summit/0 62.13,23.57
|tip He walks around this area.
step
label "Collect_Stolen_Pandaren_Spices_And_Slay_Blackmane_Mercenaries"
kill Blackmane Brigand##60560, Blackmane Pillager##60846, Blackmane Tracker##60434
|tip They look like {o}gnolls{}.
click Blackmane Booty Barrel##211521+
|tip They look like {o}brown wooden barrels{}.
collect 8 Stolen Pandaren Spices##81261 |q 30806/2 |goto Kun-Lai Summit/0 62.52,21.25
Slay #6# Blackmane Mercenaries |q 30805/2 |goto Kun-Lai Summit/0 62.52,21.25
step
label "Collect_Opalescent_Blue_Crab_Shells"
kill Azure Prickly Crawler##60437+
|tip They look like {o}blue crabs{}.
|tip Underwater and along the beach around this area. |notinsticky
collect Opalescent Blue Crab Shell##80907 |q 30806/1 |goto Kun-Lai Summit/0 60.15,20.45
step
talk Sage Liao##60785
turnin Justice##30805 |goto Kun-Lai Summit/0 60.61,21.34
turnin The Scent of Life##30806 |goto Kun-Lai Summit/0 60.61,21.34
turnin By the Falls, For the Fallen##30807 |goto Kun-Lai Summit/0 60.61,21.34
accept Preparing the Remains##30819 |goto Kun-Lai Summit/0 60.61,21.34
step
talk Li Hai##60436
turnin Preparing the Remains##30819 |goto Kun-Lai Summit/0 63.17,29.37
accept Honoring the Dead##30820 |goto Kun-Lai Summit/0 63.17,29.37
step
click Incense of Life##211545
Light the Incense of Life |q 30820/1 |goto Kun-Lai Summit/0 66.94,33.32
step
talk Sage Liao##60757
turnin A Funeral##30820 |goto Kun-Lai Summit/0 67.04,33.35
step
talk Mishi##65855
Select _"I'm ready to leave."_ |gossip 41466
Speak with Mishi in Zouchin Village |q 31228/1 |goto Kun-Lai Summit/0 62.30,29.32
step
Begin Flying to the Isle of Reckoning |invehicle |goto Kun-Lai Summit/0 62.30,29.32 |q 31228
step
Fly to the Isle of Reckoning |outvehicle |goto Kun-Lai Summit/0 76.48,19.38 |q 31228 |notravel
stickystart "Slay_Zandalari_Forces"
step
kill Prophet Khar'zul##61541 |q 31228/2 |goto Kun-Lai Summit/0 76.43,9.05
|tip {o}Jump onto the stone table{} when the {o}floor turns purple{}.
step
label "Slay_Zandalari_Forces"
kill Amani Outrider##64639, Gurubashi Witch Doctor##64631, Gurubashi Worshipper##64642, Gurubashi Headsplitter##64643
|tip They look like {o}trolls{}.
Slay #12# Zandalari Forces |q 31228/3 |goto Kun-Lai Summit/0 76.25,13.40
step
talk Lorewalker Cho##63784
|tip Inside the building.
turnin Prophet Khar'zul##31228 |goto Kun-Lai Summit/0 62.32,29.06
step
talk Brother Lintpocket##59701
accept The Burlap Trail: To Burlap Waystation##30592 |goto Kun-Lai Summit/0 58.09,61.47
step
Locate the Grummles
|tip They look like a {o}group of small friendly npcs{} that walk along this {o}road heading west{}.
|tip They {o}appear at this location{} when they die, if they aren't protected.
|tip You can either {o}wait here{} until they appear, or {o}try to find them{} along the road.
Click Here After You Locate the Grummles |confirm |goto Kun-Lai Summit/0 58.13,61.46 |q 30592
'|clicknpc Trail Packer##59527, Trail Yakker##59526
step
Escort the Grummles to the Burlap Waystation |q 30592/1 |goto Kun-Lai Summit/0 52.92,66.58
|tip Follow the {o}Grummles{} and {o}protect them{} as they walk.
|tip They eventually walk to this location.
'|clicknpc Trail Packer##59527, Trail Yakker##59526
step
talk Brother Trailscenter##59703
turnin The Burlap Trail: To Burlap Waystation##30592 |goto Kun-Lai Summit/0 51.66,67.83
accept The Rabbitsfoot##30602 |goto Kun-Lai Summit/0 51.66,67.83
step
talk Brother Rabbitsfoot##59806
Rescue Brother Rabbitsfoot |q 30602/1 |goto Kun-Lai Summit/0 49.10,70.45
step
talk Brother Rabbitsfoot##59806
accept The Broketooth Ravage##30603 |goto Kun-Lai Summit/0 49.10,70.45
step
kill Mo Mo##59805
|tip Inside the small cave up on the mountain.
collect Rabbitsfoot's Luckydo##81137 |q 30603/1 |goto Kun-Lai Summit/0 48.02,73.27
step
talk Brother Rabbitsfoot##59452
turnin The Rabbitsfoot##30602 |goto Kun-Lai Summit/0 51.97,67.21
turnin The Broketooth Ravage##30603 |goto Kun-Lai Summit/0 51.97,67.21
accept A Monkey Idol##30599 |goto Kun-Lai Summit/0 51.97,67.21
accept No Pack Left Behind##30600 |goto Kun-Lai Summit/0 51.97,67.21
accept Breaking Broketooth##30604 |goto Kun-Lai Summit/0 51.97,67.21
stickystart "Collect_Grummlepacks"
stickystart "Kill_Broketooth_Tossers"
stickystart "Kill_Broketooth_Chargers"
step
kill Hateful Ko Ko##59430
|tip He walks around this area.
collect Corpse of Ko Ko##80429 |goto Kun-Lai Summit/0 52.37,71.40 |q 30599
step
click Ko Ko's Altar##211275
Destroy Ko Ko's Altar |q 30599/2 |goto Kun-Lai Summit/0 52.26,71.43
step
Enter the cave |goto Kun-Lai Summit/0 52.85,71.46 < 20 |walk
kill Dak Dak##59424
|tip He looks like a {o}larger armored monkey{}.
|tip He walks around {o}throughout the cave{}.
collect Corpse Of Dak Dak##80428 |goto Kun-Lai Summit/11 54.57,26.69 |q 30599
step
click Dak Dak's Altar##210931
|tip Downstairs inside the cave.
Destroy Dak Dak's Altar |q 30599/1 |goto Kun-Lai Summit/12 49.55,39.77
step
label "Collect_Grummlepacks"
clicknpc Dead Packer##59896+
|tip They look like {o}dead grummles{}.
|tip Inside the cave. |notinsticky
collect 8 Grummlepack##80307 |q 30600/1 |goto Kun-Lai Summit/12 56.46,18.57
step
Leave the cave |goto Kun-Lai Summit/0 52.85,71.46 < 20 |walk |only if subzone("The Deeper") and indoors()
kill Tak Tak##59958
|tip He walks around this area.
collect Corpse of Tak Tak##80430 |goto Kun-Lai Summit/0 56.74,70.98 |q 30599
step
click Tak Tak's Altar##211276
Destroy Tak Tak's Altar |q 30599/3 |goto Kun-Lai Summit/0 56.83,70.98
step
label "Kill_Broketooth_Tossers"
kill 6 Broketooth Tosser##59416 |q 30604/2 |goto Kun-Lai Summit/0 52.85,71.46
|tip They look like {o}monkeys carrying small daggers{}.
|tip Inside and outside the cave. |notinsticky
step
label "Kill_Broketooth_Chargers"
kill 8 Broketooth Charger##59414 |q 30604/1 |goto Kun-Lai Summit/0 52.85,71.46
|tip They look like {o}monkeys carrying spears{}.
|tip Inside and outside the cave. |notinsticky
step
talk Brother Rabbitsfoot##59452
turnin A Monkey Idol##30599 |goto Kun-Lai Summit/0 51.97,67.21
turnin No Pack Left Behind##30600 |goto Kun-Lai Summit/0 51.97,67.21
accept Bros before Hozen##30605 |goto Kun-Lai Summit/0 51.97,67.21
turnin Breaking Broketooth##30604 |goto Kun-Lai Summit/0 51.97,67.21
step
clicknpc Mok Mok##60008
|tip On top of the hill.
Rescue Brother Yakshoe |q 30605/1 |goto Kun-Lai Summit/0 50.53,64.19
step
talk Brother Yakshoe##59894
turnin Bros before Hozen##30605 |goto Kun-Lai Summit/0 50.57,64.07
accept Hozen Love Their Keys##30607 |goto Kun-Lai Summit/0 50.57,64.07
accept The Snackrifice##30608 |goto Kun-Lai Summit/0 50.57,64.07
accept Thumping Knucklethump##30606 |goto Kun-Lai Summit/0 50.57,64.07
stickystart "Rescue_Imprisoned_Grummles"
stickystart "Slay_Silverback_Hozens"
step
Enter the cave |goto Kun-Lai Summit/0 50.30,61.67 < 15 |walk
kill Cho Cho the Wicked##60090
|tip He walks around this area inside the cave.
collect Yeti Shackle Key##80535 |q 30607/1 |goto Kun-Lai Summit/10 33.44,13.54
step
click Ball and Chain##207079
|tip It looks like a {o}large grey ball{} next to a {o}huge yeti{}.
|tip Inside the cave.
Release Old Poot Poot |q 30607/2 |goto Kun-Lai Summit/10 42.71,26.48
step
Begin Returning to Brother Yakshoe |invehicle |goto Kun-Lai Summit/10 42.71,26.48 |q 30607
step
Watch the dialogue
Return to Brother Yakshoe |outvehicle |goto Kun-Lai Summit/0 52.09,67.42 |q 30607 |notravel
stickystop "Rescue_Imprisoned_Grummles"
stickystop "Slay_Silverback_Hozens"
step
talk Brother Yakshoe##59894
turnin Hozen Love Their Keys##30607 |goto Kun-Lai Summit/0 52.02,67.18
stickystart "Slay_Silverback_Hozens"
step
label "Rescue_Imprisoned_Grummles"
clicknpc Prisoner Bindings##60027+
|tip They look like {o}ropes tied to people hanging from trees{}.
click Grummle Cage##211307+
|tip They look like {o}wooden cages{}.
|tip Inside and outside the cave. |notinsticky
Rescue #5# Imprisoned Grummles |q 30608/1 |goto Kun-Lai Summit/0 50.30,61.67
'|clicknpc Imprisoned Grummle##60012
step
label "Slay_Silverback_Hozens"
kill Knucklethump Smasher##59410, Knucklethump Jibstabber##59412
|tip They look like {o}monkeys{}.
|tip Inside and outside the cave. |notinsticky
Slay #8# Silverback Hozens |q 30606/1 |goto Kun-Lai Summit/0 50.30,61.67
step
talk Brother Yakshoe##59894
turnin The Snackrifice##30608 |goto Kun-Lai Summit/0 52.02,67.18
accept Grummle! Grummle! Grummle!##30610 |goto Kun-Lai Summit/0 52.02,67.18
step
talk Brother Rabbitsfoot##59452
turnin Thumping Knucklethump##30606 |goto Kun-Lai Summit/0 51.97,67.21
accept Unleash The Yeti!##30611 |goto Kun-Lai Summit/0 51.97,67.21
stickystart "Pack_Packers"
step
kill 4 Cagemaster##60169 |q 30611/1 |goto Kun-Lai Summit/0 46.10,64.11
|tip Around the {o}perimeter{} of the {o}huge cage{}.
step
label "Pack_Packers"
click Grummle Gear##211686+
|tip They look like {o}wooden boxes{}.
Pack #5# Packers |q 30610/1 |goto Kun-Lai Summit/0 46.10,64.11
step
talk Brother Yakshoe##59894
turnin Grummle! Grummle! Grummle!##30610 |goto Kun-Lai Summit/0 45.94,64.05
step
talk Brother Rabbitsfoot##59452
turnin Unleash The Yeti!##30611 |goto Kun-Lai Summit/0 45.91,64.05
accept The Leader Hozen##30612 |goto Kun-Lai Summit/0 45.91,64.05
step
Watch the dialogue
Enrage Chomp Chomp |q 30612/1 |goto Kun-Lai Summit/0 46.01,63.25
'|clicknpc Chomp Chomp##60217
step
Watch the dialogue
kill The Ook of Dook##60188 |q 30612/2 |goto Kun-Lai Summit/0 46.01,63.25
step
talk Brother Rabbitsfoot##59452
turnin The Leader Hozen##30612 |goto Kun-Lai Summit/0 51.97,67.21
step
talk Brother Trailscenter##59703
accept The Burlap Trail: To Kota Basecamp##30692 |goto Kun-Lai Summit/0 51.66,67.83
step
Locate the Grummles
|tip They look like a {o}group of small friendly npcs{} that walk along this {o}road heading west{}.
|tip They {o}appear at this location{} when they die, if they aren't protected.
|tip You can either {o}wait here{} until they appear, or {o}try to find them{} along the road.
Click Here After You Locate the Grummles |confirm |goto Kun-Lai Summit/0 51.69,67.70 |q 30692
'|clicknpc Grummle Trail Guide##59593, Trail Packer##59527, Trail Yakker##59526
step
Escort the Grummles to the Kota Basecamp |q 30692/1 |goto Kun-Lai Summit/0 43.76,68.91
|tip Follow the {o}Grummles{} and {o}protect them{} as they walk.
|tip They eventually walk to this location.
'|clicknpc Grummle Trail Guide##59593, Trail Packer##59527, Trail Yakker##59526
step
talk Uncle Eastwind##60416
fpath Kota Basecamp |goto Kun-Lai Summit/0 42.81,69.63
step
talk Cousin Gootfur##60596
|tip He walks around this area.
accept Shut it Down##30742 |goto Kun-Lai Summit/0 42.34,69.78
accept Gourmet Kafa##30743 |goto Kun-Lai Summit/0 42.34,69.78
step
talk Uncle Keenbean##60503
accept Kota Blend##30744 |goto Kun-Lai Summit/0 42.42,69.66
accept Trouble Brewing##30745 |goto Kun-Lai Summit/0 42.42,69.66
step
talk Brother Oilyak##59755
turnin The Burlap Trail: To Kota Basecamp##30692 |goto Kun-Lai Summit/0 42.45,68.91
stickystart "Collect_Kafakota_Berries"
stickystart "Kill_Kafa_Crazed_Mountain_Goats"
stickystart "Mark_Kafagoot_Deposits"
step
Follow the path of flags up the mountain |goto Kun-Lai Summit/0 41.66,71.41 < 20 |only if walking
kill 8 Kafa-Crazed Yeti##60564 |q 30745/1 |goto Kun-Lai Summit/0 37.32,77.82
|tip Inside and outside the cave, up on the mountain.
step
label "Collect_Kafakota_Berries"
click Kafa'kota Bush##211454+
|tip They look like {o}small bushes with red berries{}.
|tip All over the mountain. |notinsticky
click Kafa'kota Berries##211480+
|tip They look like {o}small piles of red berries{}.
|tip Inside the cave, up on the mountain. |notinsticky
collect 100 Kafa'kota Berry##81054 |q 30744/1 |goto Kun-Lai Summit/0 37.32,77.82
step
_Click the Complete Quest Box:_
turnin Kota Blend##30744
accept A Fair Trade##30746
step
label "Kill_Kafa_Crazed_Mountain_Goats"
Leave the cave |goto Kun-Lai Summit/0 37.32,77.82 < 15 |walk |only if subzone("Kota Peak") and indoors()
kill 12 Kafa-Crazed Mountain Goat##60493 |q 30742/1 |goto Kun-Lai Summit/0 38.47,78.31
|tip All over the mountain. |notinsticky
step
label "Mark_Kafagoot_Deposits"
click Kafa'goot "Deposit"##211456+
|tip They look like {o}small piles of poop{}.
|tip All over the mountain. |notinsticky
Mark #15# Kafa'goot "Deposits" |q 30743/1 |goto Kun-Lai Summit/0 38.47,78.31
step
talk Nephew Burrberry##60679
|tip Inside the small cave.
|tip {o}Higher up on the mountain{}.
turnin A Fair Trade##30746 |goto Kun-Lai Summit/0 36.93,76.22
step
Watch the dialogue
|tip Inside the small cave.
Ride with Kota Kon |invehicle |goto Kun-Lai Summit/0 36.93,76.22 |q 30742
step
Return to Kota Basecamp |outvehicle |goto Kun-Lai Summit/0 42.68,70.09 |q 30742 |notravel
step
talk Uncle Keenbean##60503
turnin Trouble Brewing##30745 |goto Kun-Lai Summit/0 42.53,69.43
step
talk Nephew Burrberry##60679
accept The Burlap Grind##30747 |goto Kun-Lai Summit/0 42.52,69.34
step
talk Cousin Gootfur##60596
turnin Shut it Down##30742 |goto Kun-Lai Summit/0 42.46,69.35
turnin Gourmet Kafa##30743 |goto Kun-Lai Summit/0 42.46,69.35
step
talk Kota Kon##60587
Select _"<Unscrew the flask and offer it to her.>"_ |gossip 34810
Ride with Kota Kon |invehicle |goto Kun-Lai Summit/0 42.62,69.16 |q 30747
step
kill Broketooth Ravager##60743, Silverback Smasher##60749, Ookin Shaman##60752, Ookin Marauder##60753, Silverback Piker##60746, Broketooth Leaper##60742
|tip They look like {o}monkeys{}.
Slay #100# Burlap Trail Hozens |q 30747/1 |goto Kun-Lai Summit/0 48.80,68.13
If Kota Kon dies, you can get her again at [42.62,69.16]
step
Stop Riding with Kota Kon |outvehicle |q 30747
|tip {o}Get to a safe place first{}.
|tip Click the arrow on your action bar.
step
talk Nephew Burrberry##60679
turnin The Burlap Grind##30747 |goto Kun-Lai Summit/0 42.52,69.34
step
talk Anduin Wrynn##64848
Select _"Let's find out!"_ |gossip 41177
Speak to Anduin at the Gate of the August Celestials |q 31512/1 |goto Kun-Lai Summit/0 55.10,91.74
step
talk Sharinga Springrunner##61121
fpath Shrine of Seven Stars |goto Vale of Eternal Blossoms/0 84.61,62.41
step
talk Matron Vi Vinh##64149
|tip Inside the building.
turnin A Witness to History##31512 |goto Shrine of Seven Stars/1 36.38,66.67
step
talk Shado-Master Chong##60161
|tip Inside the building.
|tip {o}Click the red doors{} to enter the building.
turnin The Shado-Pan##31455 |goto Kun-Lai Summit/0 44.48,89.93
accept Turnabout##30670 |goto Kun-Lai Summit/0 44.48,89.93
accept The Defense of Shado-Pan Fallback##30665 |goto Kun-Lai Summit/0 44.48,89.93
step
talk Kite Master Ni##61473
|tip Outside the building, {o}up on the wall{}.
|tip Run up the stairs inside the building to find her.
fpath Shado-Pan Fallback |goto Kun-Lai Summit/0 43.91,89.54
stickystart "Collect_Blind_Rage_Essences"
stickystart "Kill_Sha_Infested_Yaungols"
step
talk Sya Zhong##60178
|tip Inside the building.
accept Holed Up##30682 |goto Kun-Lai Summit/0 42.93,88.31
step
Rescue Sya Zhong |q 30682/4 |goto Kun-Lai Summit/0 42.93,88.31
step
talk Ya Firebough##60189
|tip Inside the building.
Select _"...That's enough. Let's go."_ |gossip 37051
Rescue Ya Firebough |q 30682/2 |goto Kun-Lai Summit/0 41.04,86.96
step
talk Old Lady Fung##60190
|tip Inside the building.
Select _"Yes... why don't you "escort" me out of here."_ |gossip 37052
Rescue Old Lady Fung |q 30682/3 |goto Kun-Lai Summit/0 42.84,85.70
step
talk Jin Warmkeg##60187
|tip Inside the building.
Select _"Let's get out of here."_ |gossip 35293
Rescue Jin Warmkeg |q 30682/1 |goto Kun-Lai Summit/0 43.87,86.17
step
label "Collect_Blind_Rage_Essences"
kill Blind Rage##61224+
|tip They look like {o}shadow aliens{}.
collect 5 Blind Rage Essence##81713 |q 30670/1 |goto Kun-Lai Summit/0 43.31,87.02
step
label "Kill_Sha_Infested_Yaungols"
kill 15 Sha-Infested Yaungol##60164 |q 30665/1 |goto Kun-Lai Summit/0 44.82,87.44
|tip They look like {o}grey tauren{}.
'|kill Sha-Infested Yaungol##68241
step
talk Shado-Master Chong##60161
|tip Inside the building.
turnin Turnabout##30670 |goto Kun-Lai Summit/0 44.48,89.93
turnin The Defense of Shado-Pan Fallback##30665 |goto Kun-Lai Summit/0 44.48,89.93
turnin Holed Up##30682 |goto Kun-Lai Summit/0 44.48,89.93
accept Unmasking the Yaungol##30690 |goto Kun-Lai Summit/0 44.48,89.93
step
use the Blinding Rage Trap##81741
|tip {o}Lure Kobai into it{} after you use it.
|tip He walks around this area.
|tip Use the {o}Steal Mask{} button ability on {o}Kobai{} after you {o}lure him into the trap{}.
Lure Kobai into the Trap and Steal His Mask |q 30690/1 |goto Kun-Lai Summit/0 45.51,86.32
|tip You will be {o}attacked{}.
'|clicknpc Kobai##61303
step
kill Malevolent Fury##61333 |q 30690/2 |goto Kun-Lai Summit/0 45.51,86.32
step
talk Shado-Master Chong##60161
|tip Inside the building.
turnin Unmasking the Yaungol##30690 |goto Kun-Lai Summit/0 44.48,89.93
accept To Winter's Blossom##30699 |goto Kun-Lai Summit/0 44.48,89.93
step
talk Lin Silentstrike##61816
turnin To Winter's Blossom##30699 |goto Kun-Lai Summit/0 34.95,59.40
accept Honor, Even in Death##30723 |goto Kun-Lai Summit/0 34.95,59.40
step
talk Ban Bearheart##61819
accept A Line Unbroken##30715 |goto Kun-Lai Summit/0 35.12,59.65
step
talk Kite Master Len##61512
fpath Winter's Blossom |goto Kun-Lai Summit/0 34.54,59.12
stickystart "Kill_Kun_Lai_Corpsepickers"
step
clicknpc Shado-Master Zhiyao##61808
Release Shado-Master Zhiyao from His Oath |q 30715/1 |goto Kun-Lai Summit/0 30.34,60.05
step
clicknpc Liu of the Thousand Blows##61806
Release Liu of the Thousand Blows from His Oath |q 30715/2 |goto Kun-Lai Summit/0 30.18,62.47
step
clicknpc Shiya Boldblade##61810
Release Shiya Boldblade from Her Oath |q 30715/3 |goto Kun-Lai Summit/0 29.97,64.44
step
label "Kill_Kun_Lai_Corpsepickers"
kill 12 Kun-Lai Corpsepicker##61843 |q 30723/1 |goto Kun-Lai Summit/0 30.85,62.22
|tip They look like {o}birds on the ground and flying{}.
step
talk Ban Bearheart##61819
turnin A Line Unbroken##30715 |goto Kun-Lai Summit/0 35.12,59.65
step
talk Lin Silentstrike##61816
turnin Honor, Even in Death##30723 |goto Kun-Lai Summit/0 34.95,59.30
accept To the Wall!##30724 |goto Kun-Lai Summit/0 34.95,59.30
step
talk Kite Master Len##61512
Select _"I need a kite to get up to the wall!"_ |gossip 29681
Speak to Kite-Master Len to Take a Kite to the Wall |q 30724/1 |goto Kun-Lai Summit/0 34.54,59.12
step
Begin Traveling to Serpent's Spine |invehicle |goto Kun-Lai Summit/0 34.54,59.12 |q 30724
step
Travel to Serpent's Spine |outvehicle |goto Kun-Lai Summit/0 29.30,62.32 |q 30724 |notravel
step
talk Suna Silentstrike##61454
|tip Inside the building.
turnin To the Wall!##30724 |goto Kun-Lai Summit/0 29.30,62.29
accept Off the Wall!##30750 |goto Kun-Lai Summit/0 29.30,62.29
step
talk Lao-Chin the Iron Belly##61820
|tip Inside the building.
accept A Terrible Sacrifice##30751 |goto Kun-Lai Summit/0 29.24,62.30
stickystart "Slay_Veteran_Archers_Or_Fire_Warriors"
step
click Yaungol Oil Barrel##212003+
|tip They look like l{o}arge blue and brown pots{}.
collect 6 Yaungol Oil Barrel##82799 |q 30751/1 |goto Kun-Lai Summit/0 27.53,60.70
step
label "Slay_Veteran_Archers_Or_Fire_Warriors"
kill Osul Fire-Warrior##63576, Osul Veteran Archer##61886
|tip They look like {o}tauren{}.
Slay #12# Veteran Archers or Fire-Warriors |q 30750/1 |goto Kun-Lai Summit/0 27.53,60.70
step
talk Lao-Chin the Iron Belly##61820
|tip Inside the building.
turnin A Terrible Sacrifice##30751 |goto Kun-Lai Summit/0 29.24,62.30
step
talk Suna Silentstrike##61454
|tip Inside the building.
turnin Off the Wall!##30750 |goto Kun-Lai Summit/0 29.30,62.29
accept Lao-Chin's Gambit##30994 |goto Kun-Lai Summit/0 29.30,62.29
step
talk Suna Silentstrike##61454
|tip Inside the building.
Select _"Alright, I'm ready to get back to the front."_ |gossip 30541
Talk with Suna Silentstrike to Take a Kite to Lao-Chin |q 30994/1 |goto Kun-Lai Summit/0 29.30,62.29
step
Begin Returning to Winter's Blossom |invehicle |goto Kun-Lai Summit/0 29.30,62.29 |q 30994
step
Return to Winter's Blossom |outvehicle |goto Kun-Lai Summit/0 31.85,60.18 |q 30994 |notravel
step
talk Lao-Chin the Iron Belly##61820
turnin Lao-Chin's Gambit##30994 |goto Kun-Lai Summit/0 31.82,60.11
accept Do a Barrel Roll!##30991 |goto Kun-Lai Summit/0 31.82,60.11
step
clicknpc Keg Bomb##60553
|tip Use the ability {o}near enemies as you roll down the hill{}.
|tip Do this {o}repeatedly{}.
kill 50 Osul Invader##60455 |q 30991/1 |goto Kun-Lai Summit/0 32.06,60.58
kill 4 Osul Treelauncher##60483 |q 30991/2 |goto Kun-Lai Summit/0 32.06,60.58
step
talk Lao-Chin the Iron Belly##61820
turnin Do a Barrel Roll!##30991 |goto Kun-Lai Summit/0 31.82,60.11
accept Finish This!##30992 |goto Kun-Lai Summit/0 31.82,60.11
step
kill Gong Da##62165
|tip He runs around this area.
Complete the Battle for The Ox Gate |q 30992/1 |goto Kun-Lai Summit/0 31.19,61.76
step
talk Ban Bearheart##61819
turnin Finish This!##30992 |goto Kun-Lai Summit/0 31.29,61.50
accept Where are My Reinforcements?##30993 |goto Kun-Lai Summit/0 31.29,61.50
step
talk Ban Bearheart##61819
Select _"I'm ready to leave. Let's go!"_ |gossip 29128
Tell Ban You are Ready to Leave |q 30993/1 |goto Kun-Lai Summit/0 31.29,61.50
step
talk Ban Bearheart##61819
Select _"Alright, let's go up to the monastery."_ |gossip 29129
Ride Ban's Balloon to the Shado-Pan Monastery |q 30993/2 |goto Kun-Lai Summit/0 33.96,58.61
step
talk Ban Bearheart##61819
turnin Where are My Reinforcements?##30993 |goto Kun-Lai Summit/0 35.31,49.55
accept Unbelievable!##30752 |goto Kun-Lai Summit/0 35.31,49.55
step
talk Shado-Pan Sentinel##62220
Select _"I am here with Ban Bearheart, and we demand an audience with Taran Zhu!"_ |gossip 41432
Watch the dialogue
kill Shado-Pan Sentinel##62220
Gain Access to the Monastery |q 30752/1 |goto Kun-Lai Summit/0 36.69,47.72
step
_Next to you:_
talk Ban Bearheart##62227
turnin Unbelievable!##30752
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (10-70)\\Townlong Steppes (25-70)",{
next="Leveling Guides\\Pandaria (10-70)\\Dread Wastes (30-70)",
condition_valid=function() return level <= 70 and chromietime() == MOP end,
condition_valid_msg="This guide is optimized for {w}Chromie Time{}. Load the {w}Chromie Time{} guide first and select the {w}Wilds of Pandaria{} option.",
condition_valid_guide="Leveling Guides\Starter Guides\Chromie Time",
startlevel=25,
endlevel=70,
},[[
step
talk Taran Zhu##60688
turnin Beyond the Wall##31695 |goto Townlong Steppes/0 71.15,56.69 |only if haveq(31695) or completedq(31695)
accept A Foot in the Door##30814 |goto Townlong Steppes/0 71.15,56.69
step
talk Kite Master Wong##62901
fpath Longying Outpost |goto Townlong Steppes/0 71.08,57.31
step
talk Saito the Sleeping Shadow##62873
|tip Inside the building.
home Longying Outpost |goto Townlong Steppes/0 71.07,57.92 |q 30814 |future
step
kill 8 Osul Charger##60713 |q 30814/1 |goto Townlong Steppes/0 70.00,53.66
|tip They look like tauren.
step
talk Taran Zhu##60688
turnin A Foot in the Door##30814 |goto Townlong Steppes/0 71.15,56.69
accept First Assault##30769 |goto Townlong Steppes/0 71.15,56.69
accept Running Rampant##30770 |goto Townlong Steppes/0 71.15,56.69
accept Perfect Pitch##30771 |goto Townlong Steppes/0 71.15,56.69
stickystart "Kill_Osul_Sharphorns"
stickystart "Collect_Dark_Pitches"
step
clicknpc Long-Haired Yak##60669+
|tip They look like brown bisons.
clicknpc Steppebeast##60739+
|tip They look like blue dinosaurs.
Free #8# Yaks or Steppebeasts |q 30770/1 |goto Townlong Steppes/0 68.64,52.01
step
label "Kill_Osul_Sharphorns"
kill 6 Osul Sharphorn##60647 |q 30769/1 |goto Townlong Steppes/0 68.25,53.38
|tip They look like tauren.
step
label "Collect_Dark_Pitches"
click Pitch Pot##211507+
|tip They look like brown and blue pots.
collect 8 Dark Pitch##81174 |q 30771/1 |goto Townlong Steppes/0 68.25,53.38
step
talk Suna Silentstrike##60684
turnin First Assault##30769 |goto Townlong Steppes/0 67.25,52.22
step
talk Ban Bearheart##60687
turnin Running Rampant##30770 |goto Townlong Steppes/0 67.20,52.27
turnin Perfect Pitch##30771 |goto Townlong Steppes/0 67.20,52.27
accept Pitching In##30773 |goto Townlong Steppes/0 67.20,52.27
step
talk Suna Silentstrike##60684
accept Seeing Red##30772 |goto Townlong Steppes/0 67.25,52.22
accept Ranger Rescue##30774 |goto Townlong Steppes/0 67.25,52.22
stickystart "Destroy_Osul_Ballistas"
stickystart "Rescue_Longying_Rangers"
stickystart "Slay_Osul_Marauders"
step
talk Katak the Defeated##60735
accept The Exile##30775 |goto Townlong Steppes/0 67.00,51.41
step
kill Battat##60728 |q 30775/1 |goto Townlong Steppes/0 65.70,51.65
|tip Inside the building.
step
kill Urang##60725 |q 30775/2 |goto Townlong Steppes/0 64.79,50.13
|tip Inside the building.
step
talk Lin Silentstrike##60899
Select _"Examine the body."_ |gossip 32679
Free Lin Silentstrike |q 30774/3 |goto Townlong Steppes/0 66.59,49.16
step
kill Ku-Tong##60726 |q 30775/3 |goto Townlong Steppes/0 66.96,48.24
|tip Inside the building.
step
label "Destroy_Osul_Ballistas"
use Ban's Explosives##81193
|tip Use it on Osul Ballistas.
|tip They look like smaller wooden machines with wheels.
Destroy #6# Osul Ballistas |q 30773/1 |goto Townlong Steppes/0 66.87,49.81
step
label "Rescue_Longying_Rangers"
kill Osul Spitfire##66289, Osul Marauder##60692
|tip They look like tauren.
collect Stone Key##81178+ |n
click Drywood Cage+
|tip They look like small brown wooden buildings.
Rescue #4# Longying Rangers |q 30774/2 |goto Townlong Steppes/0 66.87,49.81
step
label "Slay_Osul_Marauders"
kill Osul Spitfire##66289, Osul Marauder##60692
|tip They look like tauren.
Slay #8# Osul Marauders |q 30772/1 |goto Townlong Steppes/0 66.87,49.81
step
talk Katak the Defeated##60735
turnin The Exile##30775 |goto Townlong Steppes/0 67.00,51.41
step
talk Ban Bearheart##60687
turnin Pitching In##30773 |goto Townlong Steppes/0 67.20,52.27
turnin Seeing Red##30772 |goto Townlong Steppes/0 67.20,52.27
turnin Ranger Rescue##30774 |goto Townlong Steppes/0 67.20,52.27
step
talk Suna Silentstrike##60684
accept Jung Duk##30776 |goto Townlong Steppes/0 67.25,52.22
step
click Ceremonial Pile##211524
kill Jung Duk##60801 |q 30776/1 |goto Townlong Steppes/0 66.66,51.01
step
talk Ban Bearheart##60687
turnin Jung Duk##30776 |goto Townlong Steppes/0 71.02,56.56
accept In Search of Suna##30777 |goto Townlong Steppes/0 71.02,56.56
step
clicknpc Shado-Pan Caravan##61205
Begin Traveling to Hatred's Vice |invehicle |goto Townlong Steppes/0 70.70,56.53 |q 30777
step
Watch the dialogue
Travel to Hatred's Vice |outvehicle |goto Townlong Steppes/0 82.44,73.51 |q 30777 |notravel
step
talk Ban Bearheart##61261
turnin In Search of Suna##30777 |goto Townlong Steppes/0 82.68,73.02
accept Dust to Dust##30778 |goto Townlong Steppes/0 82.68,73.02
accept Slaying the Scavengers##30779 |goto Townlong Steppes/0 82.68,73.02
step
talk Yalia Sagewhisper##60864
accept Totemic Research##30780 |goto Townlong Steppes/0 82.59,73.02
step
talk Xiao Tu##60903
accept Last Toll of the Yaungol##30781 |goto Townlong Steppes/0 82.71,73.17
stickystart "Collect_Palewind_Totems"
stickystart "Kill_Ashfang_Hyenas"
stickystart "Burn_Palewind_Villagers"
step
Watch the dialogue
Examine the Southern Smoke Trail |q 30781/3 |goto Townlong Steppes/0 83.51,78.49
If Xiao Tu isn't next to you, get him again at [82.70,73.17]
'|clicknpc Xiao Tu##60903
step
Watch the dialogue
Examine the Eastern Smoke Trail |q 30781/1 |goto Townlong Steppes/0 84.83,71.50
If Xiao Tu isn't next to you, get him again at [82.70,73.17]
'|clicknpc Xiao Tu##60903
step
Watch the dialogue
Examine the Northwestern Smoke Trail |q 30781/4 |goto Townlong Steppes/0 84.02,70.89
If Xiao Tu isn't next to you, get him again at [82.70,73.17]
'|clicknpc Xiao Tu##60903
step
Watch the dialogue
Examine the Western Smoke Trail |q 30781/2 |goto Townlong Steppes/0 81.29,72.13
If Xiao Tu isn't next to you, get him again at [82.70,73.17]
'|clicknpc Xiao Tu##60903
step
label "Collect_Palewind_Totems"
click Palewind Totem##211566+
|tip They look like short wooden totem poles.
collect 9 Palewind Totem##81355 |q 30780/1 |goto Townlong Steppes/0 83.03,74.05
step
label "Kill_Ashfang_Hyenas"
kill 12 Ashfang Hyena##60932 |q 30779/1 |goto Townlong Steppes/0 83.03,74.05
step
label "Burn_Palewind_Villagers"
use the Shado-Pan Torch##81356
|tip Use it on Palewind Villagers.
|tip They look like tauren laying on the ground.
Burn #20# Palewind Villagers |q 30778/1 |goto Townlong Steppes/0 83.03,74.05
'|clicknpc Palewind Villager##60925
step
talk Yalia Sagewhisper##60864
turnin Totemic Research##30780 |goto Townlong Steppes/0 82.59,73.02
step
talk Ban Bearheart##61261
turnin Dust to Dust##30778 |goto Townlong Steppes/0 82.68,73.02
turnin Slaying the Scavengers##30779 |goto Townlong Steppes/0 82.68,73.02
turnin Last Toll of the Yaungol##30781 |goto Townlong Steppes/0 82.68,73.02
step
talk Yalia Sagewhisper##60864
accept What Lies Beneath##30827 |goto Townlong Steppes/0 82.59,73.02
step
talk Yalia Sagewhisper##60864
Select _"I am ready to begin the ritual."_ |gossip 37073
Speak to Yalia Sagewhisper |q 30827/1 |goto Townlong Steppes/0 82.59,73.02
step
Watch the dialogue
clicknpc Totem of Tranquility##60990
Activate the Totem of Tranquility |q 30827/3 |goto Townlong Steppes/0 82.41,73.56
step
clicknpc Totem of Serenity##60991
Activate the Totem of Serenity |q 30827/4 |goto Townlong Steppes/0 82.69,73.63
step
clicknpc Totem of Kindness##60933
Activate the Totem of Kindness |q 30827/2 |goto Townlong Steppes/0 82.58,73.25
step
Watch the dialogue
Complete the Ritual |q 30827/5 |goto Townlong Steppes/0 82.58,73.25
step
talk Yalia Sagewhisper##60864
turnin What Lies Beneath##30827 |goto Townlong Steppes/0 82.59,73.02
accept Hatred Becomes Us##30783 |goto Townlong Steppes/0 82.59,73.02
step
talk Ban Bearheart##61261
accept Spiteful Spirits##30782 |goto Townlong Steppes/0 82.68,73.02
stickystart "Kill_Spiteful_Spirits"
step
use the Totem of Harmony##81417
|tip Use it on Crazed Shado-Pan Rangers.
|tip They looke like pandas in black armor.
|tip Stand in the Pools of Harmony that appear to reduce the Hatred bar at the bottom of the screen.
kill Seething Hatred##61054+
Purify #8# Crazed Shado-Pan Rangers |q 30783/1 |goto Townlong Steppes/0 83.29,73.65
'|clicknpc Crazed Shado-Pan Ranger##61050
step
label "Kill_Spiteful_Spirits"
use the Totem of Harmony##81417 |notinsticky
|tip Use it on the ground as you walk around. |notinsticky
|tip Stand in the Pools of Harmony that appear to reduce the Hatred bar at the bottom of the screen. |notinsticky
kill 10 Spiteful Spirit##63839 |q 30782/1 |goto Townlong Steppes/0 83.29,73.65
|tip They look like tauren ghosts.
step
talk Ban Bearheart##61261
turnin Spiteful Spirits##30782 |goto Townlong Steppes/0 82.68,73.02
step
talk Yalia Sagewhisper##60864
turnin Hatred Becomes Us##30783 |goto Townlong Steppes/0 82.59,73.02
step
talk Ban Bearheart##61261
accept The Point of No Return##30784 |goto Townlong Steppes/0 82.68,73.02
step
use the Totem of Harmony##81430
|tip Use it on the ground.
|tip Stand in the circles on the ground to gain a buff.
kill Suna Silentstrike##61055
|tip Inside the building.
|tip She will eventually surrender.
Find Suna Silentstrike |q 30784/1 |goto Townlong Steppes/0 84.08,70.54
step
talk Ban Bearheart##61261
turnin The Point of No Return##30784 |goto Townlong Steppes/0 82.68,73.02
accept Gao-Ran Battlefront##30785 |goto Townlong Steppes/0 82.68,73.02
step
talk Yalia Sagewhisper##60864
accept A Delicate Balance##31894 |goto Townlong Steppes/0 82.59,73.02
step
talk Orbiss##60857
turnin A Delicate Balance##31894 |goto Townlong Steppes/0 67.94,67.67
accept A Spear Through My Side, A Chain Through My Soul##30786 |goto Townlong Steppes/0 67.94,67.67
step
kill Dmong Naruuk##60683 |q 30786/1 |goto Townlong Steppes/0 68.42,71.46
|tip Up on the cliff.
step
talk Orbiss##60857
turnin A Spear Through My Side, A Chain Through My Soul##30786 |goto Townlong Steppes/0 67.94,67.67
accept The Torches##30787 |goto Townlong Steppes/0 67.94,67.67
step
kill Osul Mist-Shaman##60697+
|tip Kill the ones next to Mist-Shaman's Torches.
|tip They look like poles with fire at the top of them.
clicknpc Mist-Shaman's Torch##60698+
collect 6 Mist-Shaman's Torch##81176 |q 30787/1 |goto Townlong Steppes/0 65.81,68.87
step
talk Orbiss##60857
turnin The Torches##30787 |goto Townlong Steppes/0 67.94,67.67
accept Golgoss##30788 |goto Townlong Steppes/0 67.94,67.67
accept Arconiss##30789 |goto Townlong Steppes/0 67.94,67.67
step
click Peat Clump##211513
Kill the enemies that attack in waves
Summon Golgoss |q 30788/1 |goto Townlong Steppes/0 70.51,69.65
step
click Peat Mound##211515
Kill the enemies that attack in waves
Summon Arconiss |q 30789/1 |goto Townlong Steppes/0 71.49,72.29
'|kill Osul Mistbreaker##60756, Small Swamp Rodent##60758
step
talk Orbiss##60857
turnin Golgoss##30788 |goto Townlong Steppes/0 67.94,67.67
turnin Arconiss##30789 |goto Townlong Steppes/0 67.94,67.67
accept The Death of Me##30815 |goto Townlong Steppes/0 67.94,67.67
step
talk Orbiss##60857
Select _"<Remove the spear from Orbiss' side.>"_ |gossip 35731
Remove the Spear from Orbiss |q 30815/1 |goto Townlong Steppes/0 67.94,67.67
step
talk Orbiss##60622
turnin The Death of Me##30815 |goto Townlong Steppes/0 67.94,67.67
accept Golgoss Hungers##30790 |goto Townlong Steppes/0 67.94,67.67
accept Arconiss Thirsts##30791 |goto Townlong Steppes/0 67.94,67.67
accept Orbiss Fades##30792 |goto Townlong Steppes/0 67.94,67.67
stickystart "Collect_Gushing_Mist"
stickystart "Collect_Snarlvines"
step
kill Swamp Rodent##60733+
|tip They look like beavers.
collect 4 Clotted Rodent's Blood##81260 |q 30791/1 |goto Townlong Steppes/0 72.85,71.13
step
label "Collect_Gushing_Mist"
Collect #8# Gushing Mist |q 30792/1 |goto Townlong Steppes/0 72.85,71.13
|tip Stand in the small clouds of steam.
step
label "Collect_Snarlvines"
click Snarlvine##211518+
|tip They look like small bushes with purple flowers on them.
collect 10 Snarlvine##81250 |q 30790/1 |goto Townlong Steppes/0 72.85,71.13
step
talk Orbiss##60622
turnin Golgoss Hungers##30790 |goto Townlong Steppes/0 67.94,67.67
turnin Arconiss Thirsts##30791 |goto Townlong Steppes/0 67.94,67.67
turnin Orbiss Fades##30792 |goto Townlong Steppes/0 67.94,67.67
accept Mists' Opportunity##30793 |goto Townlong Steppes/0 67.94,67.67
step
kill Jahesh of Osul##60802 |q 30793/1 |goto Townlong Steppes/0 76.68,72.89
step
talk Orbiss##60622
turnin Mists' Opportunity##30793 |goto Townlong Steppes/0 76.19,72.91
step
talk Kite Master Nenshi##62903
fpath Gao-Ran Battlefront |goto Townlong Steppes/0 74.39,81.46
step
talk Taran Zhu##61066
turnin Gao-Ran Battlefront##30785 |goto Townlong Steppes/0 76.42,82.43
accept Behind the Blockade##30884 |goto Townlong Steppes/0 76.42,82.43
step
talk Kim the Quiet##62875
home Gao-Ran Battlefront |goto Townlong Steppes/0 75.96,82.91 |q 30884 |future
step
talk Septi the Herbalist##61470
accept Treatment for the Troops##30891 |goto Townlong Steppes/0 75.86,83.14
stickystart "Collect_Violet_Citrons"
step
talk Taoshi##61469
turnin Behind the Blockade##30884 |goto Townlong Steppes/0 76.94,78.79
accept Unwelcome Intruders##30887 |goto Townlong Steppes/0 76.94,78.79
stickystart "Kill_Krikthik_Deep_Scouts"
step
label "Collect_Violet_Citrons"
click Violet Citron##211721+
|tip They look like bushes with blue flowers on them.
collect 10 Violet Citron##82342 |q 30891/1 |goto Townlong Steppes/0 77.81,77.22
step
label "Kill_Krikthik_Deep_Scouts"
kill 12 Krik'thik Deep-Scout##61374 |q 30887/1 |goto Townlong Steppes/0 77.81,77.22
|tip They look like insect people.
step
talk Septi the Herbalist##61470
turnin Treatment for the Troops##30891 |goto Townlong Steppes/0 75.86,83.14
step
talk Taoshi##61468
turnin Unwelcome Intruders##30887 |goto Townlong Steppes/0 79.46,84.46
accept Breach in the Defenses##30888 |goto Townlong Steppes/0 79.46,84.46
accept The Restless Watch##30890 |goto Townlong Steppes/0 79.46,84.46
step
talk Mao the Lookout##61467
accept Trap Setting##30889 |goto Townlong Steppes/0 79.38,84.44
stickystart "Rearm_Shadow_Pan_Spike_Traps"
stickystart "Kill_Krikthik_Scentlayers"
step
talk Scout Jai-gan##61397
Select _"I have orders for you to return to the battlefront."_ |gossip 37888
Deliver Orders to Scout Jai-gan |q 30890/4 |goto Townlong Steppes/0 79.01,90.16
step
talk Scout Ying##61396
Select _"I have orders for you to return to the battlefront."_ |gossip 37889
Deliver Orders to Scout Ying |q 30890/3 |goto Townlong Steppes/0 82.52,89.55
step
talk Scout Long##61395
Select _"I have orders for you to return to the battlefront."_ |gossip 37625
Deliver Orders to Scout Long |q 30890/2 |goto Townlong Steppes/0 81.27,86.18
step
talk Scout Wei-Chin##61378
Select _"I have orders for you to return to the battlefront."_ |gossip 40590
Deliver Orders to Scout Wei-Chin |q 30890/1 |goto Townlong Steppes/0 82.21,84.12
step
label "Rearm_Shadow_Pan_Spike_Traps"
clicknpc Shado-Pan Spike Trap##61426+
|tip They look like spiked grey metal balls.
Rearm #8# Shado-Pan Spike Traps |q 30889/1 |goto Townlong Steppes/0 80.79,86.06
step
label "Kill_Krikthik_Scentlayers"
use the Shado-Pan Flare##81925
|tip Use it near the moving trails of yellow smoke on the ground.
kill 10 Krik'thik Scentlayer##61373 |q 30888/1 |goto Townlong Steppes/0 80.79,86.06
step
talk Mao the Lookout##61467
turnin Trap Setting##30889 |goto Townlong Steppes/0 79.38,84.44
step
talk Taoshi##61468
turnin Breach in the Defenses##30888 |goto Townlong Steppes/0 79.46,84.46
turnin The Restless Watch##30890 |goto Townlong Steppes/0 79.46,84.46
accept Returning from the Pass##30960 |goto Townlong Steppes/0 79.46,84.46
step
talk Taran Zhu##61066
turnin Returning from the Pass##30960 |goto Townlong Steppes/0 76.42,82.43
accept The Endless Swarm##30893 |goto Townlong Steppes/0 76.42,82.43
step
talk Septi the Herbalist##61470
accept Back on Their Feet##30892 |goto Townlong Steppes/0 75.86,83.14
accept Rummaging Through the Remains##30894 |goto Townlong Steppes/0 75.86,83.14
stickystart "Slay_Krikthik_Attackers_And_Collect_Krikthik_Limbs"
step
use the Citron-Infused Bandages##82787
|tip Use them on Injured Gao-Ran Blackguards.
|tip They look like pandaren laying on the ground.
Heal #8# Injured Gao-Ran Blackguards |q 30892/1 |goto Townlong Steppes/0 74.20,86.57
'|clicknpc Injured Gao-Ran Blackguard##61692
step
label "Slay_Krikthik_Attackers_And_Collect_Krikthik_Limbs"
kill Krik'thik Limbpincer##61181, Krik'thik Locust-Guard##61365
|tip They look like insect people.
Slay #12# Krik'thik Attackers |q 30893/1 |goto Townlong Steppes/0 74.20,86.57
click Krik'thik Limb##214820+
|tip They look like insect arms and legs that appear on the ground after you kill Krik'thik enemies.
collect 22 Krik'thik Limb##82722 |q 30894/1 |goto Townlong Steppes/0 74.20,86.57
step
talk Septi the Herbalist##61470
turnin Back on Their Feet##30892 |goto Townlong Steppes/0 75.86,83.14
turnin Rummaging Through the Remains##30894 |goto Townlong Steppes/0 75.86,83.14
step
talk Taran Zhu##61066
turnin The Endless Swarm##30893 |goto Townlong Steppes/0 76.42,82.43
accept Improvised Ammunition##30895 |goto Townlong Steppes/0 76.42,82.43
step
talk Initiate Chao##61880
accept In the Wrong Hands##30897 |goto Townlong Steppes/0 70.34,86.67
step
talk Initiate Feng##61881
accept Thieves and Troublemakers##30896 |goto Townlong Steppes/0 70.45,86.37
stickystart "Slay_Agitated_Root_Sprites"
stickystart "Collect_Volatile_Dread_Orbs"
step
kill Needlebottom##61818
collect Initiate Chao's Sword##82783 |q 30897/1 |goto Townlong Steppes/0 63.07,87.68
step
label "Slay_Agitated_Root_Sprites"
kill Agitated Nettleskin##61811, Agitated Seedstealer##61302
|tip They look like sprites.
Slay #10# Agitated Root Sprites |q 30896/1 |goto Townlong Steppes/0 66.93,87.01
step
label "Collect_Volatile_Dread_Orbs"
kill kill Agitated Nettleskin##61811, Agitated Seedstealer##61302 |notinsticky
|tip They look like sprites. |notinsticky
click Dread Orb##211873+
|tip They look like smaller orange globes on the tree roots on the ground.
collect 16 Volatile Dread Orb##82723 |q 30895/1 |goto Townlong Steppes/0 66.93,87.01
step
talk Initiate Feng##61881
|tip Up on the cliff.
turnin Thieves and Troublemakers##30896 |goto Townlong Steppes/0 70.45,86.37
step
talk Initiate Chao##61880
turnin In the Wrong Hands##30897 |goto Townlong Steppes/0 70.34,86.67
step
talk Taran Zhu##61066
turnin Improvised Ammunition##30895 |goto Townlong Steppes/0 76.42,82.43
accept Cutting the Swarm##30898 |goto Townlong Steppes/0 76.42,82.43
step
clicknpc Dragon Launcher##61746
Control the Dragon Launcher |invehicle |goto Townlong Steppes/0 74.81,84.69 |q 30898
step
kill Krik'thik Drone##61960, Krik'thik Acidslinger##62014
|tip They look like insect people on the battlefield nearby to the south.
Slay #50# Krik'thik Drones |q 30898/1 |goto Townlong Steppes/0 74.81,84.69
step
talk Taoshi##62444
turnin Cutting the Swarm##30898 |goto Townlong Steppes/0 74.23,85.04
accept Terror of the Dread Wastes##30900 |goto Townlong Steppes/0 74.23,85.04
step
kill Norvakess##62324 |q 30900/1 |goto Townlong Steppes/0 74.18,87.42
|tip Kill the enemies that appear when it burrows in the ground.
'|kill Krik'thik Drone##65636
step
talk Taran Zhu##61066
turnin Terror of the Dread Wastes##30900 |goto Townlong Steppes/0 76.42,82.43
accept Along the Southern Front##30901 |goto Townlong Steppes/0 76.42,82.43
step
talk Taoshi##62436
turnin Along the Southern Front##30901 |goto Townlong Steppes/0 67.32,80.85
accept Enraged By Hatred##30970 |goto Townlong Steppes/0 67.32,80.85
step
talk Initiate Pao-Me##62124
accept Taking Stock##30971 |goto Townlong Steppes/0 67.36,80.68
stickystart "Collect_Shado_Pan_Fire_Arrows"
step
kill 9 Seething Fleshripper##61299 |q 30970/1 |goto Townlong Steppes/0 66.00,82.44
|tip They look like scorpions.
step
label "Collect_Shado_Pan_Fire_Arrows"
click Shado-Pan Fire Arrows##212136+
|tip They look like bundles of arrows.
collect 120 Shado-Pan Fire Arrows##83024 |q 30971/1 |goto Townlong Steppes/0 66.00,82.44
step
talk Taoshi##62436
turnin Enraged By Hatred##30970 |goto Townlong Steppes/0 67.32,80.85
step
talk Initiate Pao-Me##62124
turnin Taking Stock##30971 |goto Townlong Steppes/0 67.36,80.68
accept Joining the Fight##30972 |goto Townlong Steppes/0 67.36,80.68
step
talk Lao-Chin the Iron Belly##61016
turnin Joining the Fight##30972 |goto Townlong Steppes/0 61.59,79.35
step
talk Taran Zhu##62273
accept Up In Flames##30973 |goto Townlong Steppes/0 61.64,79.32
step
clicknpc Keg Bomb##62192+
|tip They look like wooden barrels on the ground around this area.
|tip Face enemies before you click them.
|tip They look like insect people.
|tip The barrels will roll into enemies and make them weaker, if you aim well.
kill 10 Kor'thik Timberhusk##61355 |q 30973/1 |goto Townlong Steppes/0 59.06,80.98
step
talk Taran Zhu##62273
turnin Up In Flames##30973 |goto Townlong Steppes/0 61.64,79.32
step
talk Lao-Chin the Iron Belly##61016
accept The Taking of Dusklight Bridge##30975 |goto Townlong Steppes/0 61.59,79.35
step
click Tasty Brew##214848+
|tip They look like wooden barrels.
|tip To heal yourself, run through the bubbles that appear.
kill 12 Kor'thik Bloodletter##62680 |q 30975/1 |goto Dread Wastes/0 44.87,9.87
|tip Let Lao-Chin tank the enemies for you.
'|clicknpc Lao-Chin the Iron Belly##61016
step
kill Hulking Kor'thik Fleshrender##62686 |q 30975/2 |goto Dread Wastes/0 44.87,9.87
step
talk Taran Zhu##62736
turnin The Taking of Dusklight Bridge##30975 |goto Townlong Steppes/0 61.11,83.06
accept Joining the Hunt##30976 |goto Townlong Steppes/0 61.11,83.06
step
talk Taran Zhu##62274
turnin Joining the Hunt##30976 |goto Townlong Steppes/0 54.03,78.06
accept In Skilled Hands##30899 |goto Townlong Steppes/0 54.03,78.06
step
talk Rensai Oakhide##62278
accept Grounded Welcome##30977 |goto Townlong Steppes/0 53.93,78.12
step
talk Kite Master Li-Sen##62898
fpath Rensai's Watchpost |goto Townlong Steppes/0 54.29,79.05
stickystart "Kill_Korthik_Fleetwings"
step
talk Marksman Ye##62573
accept Choking the Skies##31032 |goto Townlong Steppes/0 51.26,83.02
stickystart "Burn_Korthik_Fleetwing_Corpses"
step
talk Hawkmaster Nurong##61020
turnin In Skilled Hands##30899 |goto Townlong Steppes/0 51.66,87.25
accept Hostile Skies##30978 |goto Townlong Steppes/0 51.66,87.25
stickystop "Kill_Korthik_Fleetwings"
stickystop "Burn_Korthik_Fleetwing_Corpses"
step
clicknpc Nurong's Cannon##62747
Control Nurong's Cannon |invehicle |goto Townlong Steppes/0 51.67,87.32 |q 30978
step
kill Kor'thik Swarmer##62300+
|tip They look like insect people flying across the canyon nearby.
Shoot Down #50# Korthi'thik Swarmers |q 30978/1 |goto Townlong Steppes/0 51.70,87.30
step
kill Voress'thalik##62269
|tip It looks like a huge orange insect flying across the canyon nearby.
Shoot Down Voress'thalik |q 30978/2 |goto Townlong Steppes/0 51.70,87.30
step
Stop Controlling Nurong's Cannon |outvehicle |q 30978
|tip Click the arrow on your action bar.
step
talk Hawkmaster Nurong##61020
turnin Hostile Skies##30978 |goto Townlong Steppes/0 51.66,87.25
accept Devastation Below##30979 |goto Townlong Steppes/0 51.66,87.25
step
kill Voress'thalik##62270 |q 30979/1 |goto Townlong Steppes/0 53.77,87.39
|tip It walks around this area.
step
talk Hawkmaster Nurong##62786
turnin Devastation Below##30979 |goto Townlong Steppes/0 53.99,86.97
accept Heroes of the Shado-Pan##30980 |goto Townlong Steppes/0 53.99,86.97
stickystart "Kill_Korthik_Fleetwings"
step
label "Burn_Korthik_Fleetwing_Corpses"
kill Kor'thik Fleetwing##62128+
|tip They look like insect people.
use the Wu Kao Torch##83768
|tip Use it near their corpses.
Burn #10# Kor'thik Fleetwing Corpses |q 31032/1 |goto Townlong Steppes/0 51.36,84.20
step
label "Kill_Korthik_Fleetwings"
kill 12 Kor'thik Fleetwing##62128 |q 30977/1 |goto Townlong Steppes/0 51.36,84.20
|tip They look like insect people.
step
talk Marksman Ye##62573
turnin Choking the Skies##31032 |goto Townlong Steppes/0 51.26,83.02
step
talk Rensai Oakhide##62278
turnin Grounded Welcome##30977 |goto Townlong Steppes/0 53.93,78.12
step
talk Taran Zhu##62274
turnin Heroes of the Shado-Pan##30980 |goto Townlong Steppes/0 54.06,77.87
accept Buried Beneath##31065 |goto Townlong Steppes/0 54.06,77.87
step
click Wukao Spyglass
Watch the dialogue
Look Through Taoshi's Spyglass |q 31065/1 |goto Townlong Steppes/0 53.50,77.41
step
talk Taran Zhu##62274
turnin Buried Beneath##31065 |goto Townlong Steppes/0 54.06,77.87
accept Taoshi and Korvexxis##30981 |goto Townlong Steppes/0 54.06,77.87
accept Lao-Chin and Serevex##31063 |goto Townlong Steppes/0 54.06,77.87
accept Nurong and Rothek##31064 |goto Townlong Steppes/0 54.06,77.87
step
talk Rensai Oakhide##62278
accept Thinning the Sik'thik##31687 |goto Townlong Steppes/0 53.93,78.12
accept The Search for Restless Leng##31688 |goto Townlong Steppes/0 53.93,78.12
stickystart "Search_Sikthik_Cages_And_Find_Restless_Leng"
stickystart "Slay_Sikthik_Mantids"
step
kill Korvexxis##62579 |q 30981/1 |goto Townlong Steppes/0 46.60,83.06
|tip An ally will help you fight him.
step
kill Serevex##62580 |q 31063/1 |goto Townlong Steppes/0 45.38,77.42
|tip An ally will help you fight him.
step
kill Rothek##62581 |q 31064/1 |goto Townlong Steppes/0 39.84,75.59
|tip An ally will help you fight him.
step
label "Search_Sikthik_Cages_And_Find_Restless_Leng"
click Sik'thik Cage##214734+
|tip They look like pointed metal structures with yellow windows.
Search #8# Sik'thik Cages |q 31688/1 |goto Townlong Steppes/0 43.32,77.01
Find Restless Leng |q 31688/2 |goto Townlong Steppes/0 43.32,77.01
|tip You will find him in the last one you open.
step
label "Slay_Sikthik_Mantids"
kill kill Sik'thik Venomspitter##62575, Sik'thik Vess-Guard##61354, Sik'thik Drone##62576
|tip They look like insect people.
Slay #12# Sik'thik Mantids |q 31687/1 |goto Townlong Steppes/0 43.32,77.01
step
talk Taran Zhu##62275
turnin Taoshi and Korvexxis##30981 |goto Townlong Steppes/0 47.48,78.87
turnin Lao-Chin and Serevex##31063 |goto Townlong Steppes/0 47.48,78.87
turnin Nurong and Rothek##31064 |goto Townlong Steppes/0 47.48,78.87
accept The Sha of Hatred##30968 |goto Townlong Steppes/0 47.48,78.87
step
Watch the dialogue
|tip Follow your allies when they enter the building.
kill Sha of Hatred##62541 |q 30968/1 |goto Townlong Steppes/0 45.92,82.86
|tip Inside the building beneath the huge tree.
|tip Avoid the circles on the ground.
|tip Kill the enemies it summons.
'|kill Vestige of Hatred##65378
step
talk Taoshi##62802
|tip Inside the building beneath the huge tree.
turnin The Sha of Hatred##30968 |goto Townlong Steppes/0 46.12,82.46
step
Leave the building |goto Townlong Steppes/0 47.31,79.28 < 15 |walk |only if subzone("Sik'vess Lair") and indoors()
talk Rensai Oakhide##62278
turnin Thinning the Sik'thik##31687 |goto Townlong Steppes/0 53.92,78.12
turnin The Search for Restless Leng##31688 |goto Townlong Steppes/0 53.92,78.12
step
talk Kite Master Yao-Li##62909
fpath Shado-Pan Garrison |goto Townlong Steppes/0 50.08,71.98
step
talk Provisioner Bamfu##61625
|tip He walks around this area.
accept Natural Antiseptic##30922 |goto Townlong Steppes/0 49.14,71.32
accept The Field Armorer##30963 |goto Townlong Steppes/0 49.14,71.32
accept A Proper Poultice##30964 |goto Townlong Steppes/0 49.14,71.32
step
talk Tai Ho##61482
accept The Motives of the Mantid##30921 |goto Townlong Steppes/0 49.13,71.24
accept Set the Mantid Back##30923 |goto Townlong Steppes/0 49.13,71.24
step
talk Kali the Night Watcher##62874
home Shado-Pan Garrison |goto Townlong Steppes/0 48.84,70.83 |q 30921 |future
stickystart "Discover_The_Clues"
stickystart "Collect_Full_Mushan_Bladders"
stickystart "Collect_Mao_Willows"
stickystart "Collect_Rankbite_Shell_Fragments"
step
use the Gunpowder Casks##81891
|tip Go around the huge tree.
Explode the Kri'thik Supplies |q 30923/2 |goto Townlong Steppes/0 56.59,54.02
step
use the Gunpowder Casks##81891
Explode the Kri'thik Weapons |q 30923/1 |goto Townlong Steppes/0 55.42,53.13
step
label "Discover_The_Clues"
kill Kri'thik Screamer##61377, Kri'thik Boneslicer##61376
|tip They look like insect people.
Discover the First Clue |q 30921/1 |goto Townlong Steppes/0 56.46,52.65
Discover the Second Clue |q 30921/2 |goto Townlong Steppes/0 56.46,52.65
Discover the Third Clue |q 30921/3 |goto Townlong Steppes/0 56.46,52.65
Discover the Fourth Clue |q 30921/4 |goto Townlong Steppes/0 56.46,52.65
step
label "Collect_Full_Mushan_Bladders"
kill Longshadow Bull##66463, Longshadow Mushan##61618
|tip They look like dinosaurs.
collect 5 Full Mushan Bladder##82387 |q 30922/1 |goto Townlong Steppes/0 60.35,53.59
You can find more around [51.10,63.64]
step
label "Collect_Mao_Willows"
click Mao-Willow##211779+
|tip They look like purple plants with white fluffy bulbs at the top of them.
collect 11 Mao-Willow##82389 |q 30964/1 |goto Townlong Steppes/0 60.35,53.59
step
label "Collect_Rankbite_Shell_Fragments"
kill Rankbite Ancient##66462, Rankbite Tortoise##61619, Rankbite Tortoise##61619, Rankbite Ancient##66462
|tip They look like turtles.
collect 120 Rankbite Shell Fragment##82388 |q 30963/1 |goto Townlong Steppes/0 60.35,53.59
You can find more around [51.10,63.64]
step
talk Tai Ho##61482
turnin The Motives of the Mantid##30921 |goto Townlong Steppes/0 49.14,71.23
turnin Set the Mantid Back##30923 |goto Townlong Steppes/0 49.14,71.23
accept The Wisdom of Niuzao##30924 |goto Townlong Steppes/0 49.14,71.23
step
talk Provisioner Bamfu##61625
|tip He walks around this area.
turnin Natural Antiseptic##30922 |goto Townlong Steppes/0 49.14,71.32
turnin The Field Armorer##30963 |goto Townlong Steppes/0 49.14,71.32
turnin A Proper Poultice##30964 |goto Townlong Steppes/0 49.14,71.32
step
talk Ku-Mo##61539
accept My Father's Crossbow##30931 |goto Townlong Steppes/0 43.87,65.76
step
kill Et'kil##61540
|tip Outside, behind the building.
collect Father's Crossbow##82332 |q 30931/1 |goto Townlong Steppes/0 38.67,65.31
step
talk Ku-Mo##61539
turnin My Father's Crossbow##30931 |goto Townlong Steppes/0 43.87,65.76
step
talk Sentinel Commander Qipan##61584
|tip At the top of the stairs.
accept Father's Footsteps##30932 |goto Townlong Steppes/0 39.41,61.96
step
talk Ogo the Younger##61581
turnin The Wisdom of Niuzao##30924 |goto Townlong Steppes/0 39.33,62.22
accept Niuzao's Price##30925 |goto Townlong Steppes/0 39.33,62.22
step
talk Bluesaddle##61161
accept Bad Yak##30929 |goto Townlong Steppes/0 39.21,62.01
step
clicknpc Ruthers##61163
Gently Pet Ruthers |q 30929/1 |goto Townlong Steppes/0 39.27,61.93
step
clicknpc Ruthers##61163
Offer Ruthers an Apple |q 30929/2 |goto Townlong Steppes/0 39.27,61.93
step
clicknpc Ruthers##61163
Lightly Nudge Ruthers |q 30929/3 |goto Townlong Steppes/0 39.27,61.93
step
clicknpc Ruthers##61163
Attempt to Mount Ruthers |q 30929/4 |goto Townlong Steppes/0 39.27,61.93
step
talk Bluesaddle##61161
turnin Bad Yak##30929 |goto Townlong Steppes/0 39.21,62.01
step
Find Sentinel Yalo |q 30932/4 |goto Townlong Steppes/0 39.19,61.07
|tip He walks around this area.
step
click Father's Shield##211836
|tip At the top of the stairs.
Find Father's Shield |q 30932/2 |goto Townlong Steppes/0 37.54,61.37
step
click Father's Bedroll##211837
|tip Inside the building at the top of the temple.
Find Father's Bedroll |q 30932/1 |goto Townlong Steppes/0 37.36,60.90
step
Find Ha-Cha |q 30932/3 |goto Townlong Steppes/0 37.66,63.95
|tip At the top of the temple.
step
talk Ku-Mo##61539
|tip At the top of the stairs.
turnin Father's Footsteps##30932 |goto Townlong Steppes/0 39.45,61.93
step
talk Bluesaddle##61161
accept Pick a Yak##30930 |goto Townlong Steppes/0 35.40,56.65
step
use the Yak Lasso##82468
|tip Use it on Wild Townlong Yaks.
|tip They look like bison.
|tip You can find them all around the pond.
kill Wild Townlong Yak##61635+
|tip Most will run away, but one of them will eventually be suitable.
Find a Suitable Yak |q 30930/1 |goto Townlong Steppes/0 36.13,52.22
step
talk Bluesaddle##61161
turnin Pick a Yak##30930 |goto Townlong Steppes/0 35.40,56.65
step
kill Sra'thik Guard##61518, Sra'thik Wound-Mender##61517, Sra'thik Wound-Mender##61517, Sra'thik Drone##61516
|tip They look like insect people.
Find the Statuette Head |q 30925/1 |goto Townlong Steppes/0 41.86,46.06
Find the Statuette Body |q 30925/2 |goto Townlong Steppes/0 41.86,46.06
Find the Statuette Legs |q 30925/3 |goto Townlong Steppes/0 41.86,46.06
Find the Statuette Tail |q 30925/4 |goto Townlong Steppes/0 41.86,46.06
step
talk Ogo the Younger##61581
|tip At the top of the stairs.
turnin Niuzao's Price##30925 |goto Townlong Steppes/0 39.34,62.21
step
talk Ogo the Elder##61580
accept The Terrible Truth##30926 |goto Townlong Steppes/0 39.35,62.29
step
talk Yak-Keeper Kyana##61585
accept A Trail of Fear##30928 |goto Townlong Steppes/0 39.15,62.07
step
talk Sentinel Commander Qipan##61584
accept Give Them Peace##30927 |goto Townlong Steppes/0 39.41,61.96
step
Find the Catacombs |q 30926/1 |goto Townlong Steppes/0 33.12,61.56
|tip At the entrance of the cave.
stickystart "Give_Fear_Stricken_Sentinels_Peace"
stickystart "Kill_Dreadlings"
step
Enter the cave |goto Townlong Steppes/0 33.12,61.56 < 30 |walk
Investigate the Niuzao Catacombs |q 30926/2 |goto Townlong Steppes/13 60.71,40.22
|tip Inside the cave.
step
kill Dread Shadow##62307 |q 30926/3 |goto Townlong Steppes/13 50.25,24.92
|tip Inside the cave.
step
talk Tai Ho##61482
|tip Inside the cave.
turnin The Terrible Truth##30926 |goto Townlong Steppes/13 56.15,20.22
step
label "Give_Fear_Stricken_Sentinels_Peace"
clicknpc Fear-Stricken Sentinel##62276+
|tip They look like armored pandaren laying on the ground.
|tip Inside the cave. |notinsticky
Give #10# Fear-Stricken Sentinels Peace |q 30927/1 |goto Townlong Steppes/0 33.12,61.56
step
label "Kill_Dreadlings"
kill 12 Dreadling##62306 |q 30928/1 |goto Townlong Steppes/0 33.12,61.56
|tip They look like larger shadow aliens.
|tip Inside the cave. |notinsticky
step
Leave the cave |goto Townlong Steppes/0 33.12,61.56 < 30 |walk |only if subzone("Niuzao Catacombs") and indoors()
talk Sentinel Commander Qipan##61584
|tip At the top of the stairs.
turnin Give Them Peace##30927 |goto Townlong Steppes/0 39.41,61.96
step
talk Yak-Keeper Kyana##61585
turnin A Trail of Fear##30928 |goto Townlong Steppes/0 39.15,62.07
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (10-70)\\Dread Wastes (30-70)",{
condition_valid=function() return level <= 70 and chromietime() == MOP end,
condition_valid_msg="This guide is optimized for {w}Chromie Time{}. Load the {w}Chromie Time{} guide first and select the {w}Wilds of Pandaria{} option.",
condition_valid_guide="Leveling Guides\Starter Guides\Chromie Time",
startlevel=30,
endlevel=70,
},[[
step
talk Kite Master Len##61512
accept Better Dead than Dread##31847 |goto Kun-Lai Summit/0 34.54,59.12
step
talk Kite Master Len##61512
fpath Serpent's Spine |goto Kun-Lai Summit/0 34.54,59.12
step
talk Bowmistress Li##62112
turnin Better Dead than Dread##31847 |goto Vale of Eternal Blossoms/0 14.15,76.96 |only if haveq(31847) or completedq(31847)
accept Falling Down##31001 |goto Vale of Eternal Blossoms/0 14.15,76.96
accept Nope##31002 |goto Vale of Eternal Blossoms/0 14.15,76.96
step
click Shado-Pan Rope
Climb Down the Wall |invehicle |goto Vale of Eternal Blossoms/0 14.20,76.73 |q 31001
|only if walking
stickystart "Destroy_Dreadspinner_Eggs"
step
kill 6 Dreadspinner Tender##61981 |q 31002/2 |goto Dread Wastes/0 72.96,22.81
|tip They look like spiders.
You can find more around [Dread Wastes/0 71.72,27.95]
step
label "Destroy_Dreadspinner_Eggs"
use the Shado-Pan Dragon Gun##82807
|tip Use it on Dreadspinner Eggs.
|tip They look like clusters of white spider eggs.
Destroy #20# Dreadspinner Eggs |q 31002/1 |goto Dread Wastes/0 72.96,22.81
You can find more around [71.72,27.95]
'|clicknpc Dreadspinner Egg##62077
step
talk Marksman Lann##62166
Find Marksman Lann |q 31001/1 |goto Dread Wastes/0 72.56,28.67
step
talk Marksman Lann##62166
turnin Falling Down##31001 |goto Dread Wastes/0 72.56,28.67
turnin Nope##31002 |goto Dread Wastes/0 72.56,28.67
accept Psycho Mantid##31003 |goto Dread Wastes/0 72.56,28.67
step
kill Adjunct Kree'zot##62301 |q 31003/1 |goto Dread Wastes/0 73.47,27.48
|tip Inside the small cave.
step
talk Klaxxi'va Tik##62203
|tip Inside the small cave.
turnin Psycho Mantid##31003 |goto Dread Wastes/0 73.67,27.58
accept Preserved in Amber##31004 |goto Dread Wastes/0 73.67,27.58
step
click Ancient Amber Chunk##212980
Use the Klaxxi Tuning Fork on the Amber |q 31004/1 |goto Dread Wastes/0 70.24,25.70
step
Watch the dialogue
talk Kil'ruk the Wind-Reaver##62202
turnin Preserved in Amber##31004 |goto Dread Wastes/0 70.20,25.64
accept Wakening Sickness##31005 |goto Dread Wastes/0 70.20,25.64
accept Ancient Vengeance##31676 |goto Dread Wastes/0 70.20,25.64
stickystart "Collect_Sapfly_Bits"
step
kill 6 Vengeful Gurthani Spirit##65452 |q 31676/1 |goto Dread Wastes/0 67.75,29.72
|tip They look like banshees.
You can find more around [71.43,36.86]
step
label "Collect_Sapfly_Bits"
kill Sapfly##62386+
|tip They look like small yellow flying insects.
collect 100 Sapfly Bits##83075 |q 31005/1 |goto Dread Wastes/0 67.75,29.72
You can find more around [71.43,36.86]
step
talk Kil'ruk the Wind-Reaver##62202
turnin Wakening Sickness##31005 |goto Dread Wastes/0 70.20,25.64
turnin Ancient Vengeance##31676 |goto Dread Wastes/0 70.20,25.64
accept The Klaxxi Council##31006 |goto Dread Wastes/0 70.20,25.64
step
talk Kil'ruk the Wind-Reaver##62413
Select _"Take me to Klaxxi'vess."_ |gossip 35586
Begin Traveling to Klaxxi'vess |invehicle |goto Dread Wastes/0 70.20,25.64 |q 31006
step
Watch the dialogue
Travel to Klaxxi'vess |q 31006/1 |goto Dread Wastes/0 55.01,33.99 |notravel
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Klaxxi Council##31006 |goto Dread Wastes/0 54.98,34.05
accept The Dread Clutches##31007 |goto Dread Wastes/0 54.98,34.05
accept Not Fit to Swarm##31660 |goto Dread Wastes/0 54.98,34.05
step
talk Kor'ik##64815
accept Dead Zone##31009 |goto Dread Wastes/0 54.77,34.06
step
talk Ambersmith Zikk##64599
accept Amber Arms##31008 |goto Dread Wastes/0 55.02,35.56
step
talk Kik'tik##63501
fpath Klaxxi'vess |goto Dread Wastes/0 55.83,34.88
step
talk Zit'tix##65220
home Klaxxi'vess |goto Dread Wastes/0 55.92,32.32 |q 31010 |future
step
talk Kil'ruk the Wind-Reaver##62538
Select _"Please fly me to the Clutches of Shek'zeer"_ |gossip 35587
Begin Flying to the Clutches of Shek'zeer |invehicle |goto Dread Wastes/0 54.98,34.05 |q 31009
step
Fly to the Clutches of Shek'zeer |outvehicle |goto Dread Wastes/0 39.01,40.52 |q 31009 |notravel
stickystart "Collect_Amber_Blades"
stickystart "Kill_Shekzeer_Clutch_Keepers"
stickystart "Kill_Shekzeer_Swarmborn"
step
click Inactive Sonic Relay
Activate the Sonic Relay |q 31009/1 |goto Dread Wastes/0 40.03,39.05
step
_Click the Complete Quest Box:_
turnin Dead Zone##31009
accept In Her Clutch##31010
step
click Sha-Haunted Crystal##214562
accept A Source of Terrifying Power##31661 |goto Dread Wastes/0 44.59,41.36
step
click Ancient Amber Chunk##212980
Watch the dialogue
Kill the enemies that attack in waves
Waken the Paragon |q 31010/1 |goto Dread Wastes/0 44.74,41.55
|kill Shek'zeer Swarmborn##62748, Shek'zeer Bladesworn##62749
step
label "Collect_Amber_Blades"
kill Shek'zeer Bladesworn##62563+
|tip They look like insect people with large swords.
|tip Some of them ride on large scorpions.
collect 6 Amber Blade##83135 |q 31008/1 |goto Dread Wastes/0 43.29,43.41
step
label "Kill_Shekzeer_Clutch_Keepers"
kill 6 Shek'zeer Clutch-Keeper##64559 |q 31007/1 |goto Dread Wastes/0 44.43,41.77
|tip They look like insect people casting a shadow spell.
step
label "Kill_Shekzeer_Swarmborn"
kill 30 Shek'zeer Swarmborn##62582 |q 31660/1 |goto Dread Wastes/0 44.43,41.77
|tip They look like small insect people.
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Dread Clutches##31007 |goto Dread Wastes/0 54.99,34.04
turnin Not Fit to Swarm##31660 |goto Dread Wastes/0 54.99,34.04
step
talk Malik the Unscathed##62774
turnin In Her Clutch##31010 |goto Dread Wastes/0 54.94,34.13
step
talk Kor'ik##64815
accept A Cry From Darkness##31066 |goto Dread Wastes/0 54.77,34.06
step
talk Ambersmith Zikk##64599
turnin Amber Arms##31008 |goto Dread Wastes/0 55.02,35.56
turnin A Source of Terrifying Power##31661 |goto Dread Wastes/0 55.02,35.56
accept Concentrated Fear##31108 |goto Dread Wastes/0 55.02,35.56
step
talk Malik the Unscathed##62774
|tip He walks to this location.
accept The Dreadsworn##31689 |goto Dread Wastes/0 55.06,35.47
accept Citizens of a New Empire##31107 |goto Dread Wastes/0 55.06,35.47
stickystart "Collect_Dread_Amber_Focuses"
stickystart "Kill_Vorthik_Dreadsworn"
stickystart "Collect_Vorthik_Eggs"
step
kill Qi'tar the Deathcaller##62863 |q 31066/1 |goto Dread Wastes/0 59.36,18.41
step
label "Collect_Dread_Amber_Focuses"
kill Vor'thik Fear-Shaper##62814+
|tip They look like larger insect people casting a shadow spell.
collect 4 Dread Amber Focus##86616 |q 31108/1 |goto Dread Wastes/0 58.16,14.62
step
label "Kill_Vorthik_Dreadsworn"
kill 6 Vor'thik Dreadsworn##62813 |q 31689/1 |goto Dread Wastes/0 58.16,14.62
|tip They look like larger insect people carrying polearms.
step
label "Collect_Vorthik_Eggs"
click Vor'thik Egg##214170+
|tip They look like squirming yellow cocoons.
collect 10 Vor'thik Eggs##86598 |q 31107/1 |goto Dread Wastes/0 59.65,16.99
step
talk Kor'ik##64815
turnin A Cry From Darkness##31066 |goto Dread Wastes/0 54.77,34.06
accept Extending Our Coverage##31087 |goto Dread Wastes/0 54.77,34.06
step
talk Malik the Unscathed##62774
turnin The Dreadsworn##31689 |goto Dread Wastes/0 55.06,35.47
turnin Citizens of a New Empire##31107 |goto Dread Wastes/0 55.06,35.47
step
talk Ambersmith Zikk##64599
turnin Concentrated Fear##31108 |goto Dread Wastes/0 55.02,35.56
step
talk Kil'ruk the Wind-Reaver##62538
accept Amber Is Life##31019 |goto Dread Wastes/0 55.06,35.85
stickystart "Kill_Mistblade_Rippers"
step
kill Mistblade Ripper##61970+
|tip They look like lizard people.
accept Relics of the Swarm##31023 |goto Dread Wastes/0 62.23,57.58
|tip You will eventually automatically accept this quest after looting.
stickystart "Collect_Mantid_Relics"
step
label "Kill_Mistblade_Rippers"
kill 7 Mistblade Ripper##61970 |q 31019/1 |goto Dread Wastes/0 65.38,63.64
|tip They look like lizard people.
step
label "Collect_Mantid_Relics"
click Mantid Relic##212079+
|tip They look like broken stone tablets.
|tip You can find more on the shore around the lake.
collect 8 Mantid Relic##82867 |q 31023/1 |goto Dread Wastes/0 65.07,60.14
|only if haveq(31023) or completedq(31023)
step
Enter the underground cave |goto Dread Wastes/0 66.76,63.84 < 15 |walk
kill Mistblade Scale-Lord##63179 |q 31019/2 |goto Dread Wastes/0 66.42,66.11
|tip Inside the underground cave.
step
clicknpc Ancient Amber Chunk##65354
|tip Inside the underground cave.
turnin Amber Is Life##31019 |goto Dread Wastes/0 66.84,65.39
step
Watch the dialogue
|tip Inside the underground cave.
_Next to you:_
talk Korven the Prime##62232 |usename Korven the Prime##62180
accept Feeding the Beast##31020 |goto Dread Wastes/0 66.84,65.39
accept Living Amber##31021 |goto Dread Wastes/0 66.84,65.39
stickystart "Kill_Coldbite_Crocolisks"
step
Leave the underground cave |goto Dread Wastes/0 66.76,63.84 < 15 |walk |only if subzone("Mistblade Den") and indoors()
click Amber Fragment##212011+
|tip They look like orange rocks underwater.
collect Living Amber##82864+ |n
use the Living Amber##82864
Feed Korven the Prime #9# Living Amber |q 31021/1 |goto Dread Wastes/0 65.19,58.75
step
label "Kill_Coldbite_Crocolisks"
kill 8 Coldbite Crocolisk##62023 |q 31020/1 |goto Dread Wastes/0 65.19,58.75
|tip Underwater. |notinsticky
step
_Next to you:_
talk Korven the Prime##62232 |usename Korven the Prime##62180
turnin Feeding the Beast##31020
turnin Living Amber##31021
accept Kypari Zar##31022
step
click Sonar Tower##212933
Examine the Sonar Tower |q 31022/1 |goto Dread Wastes/0 59.81,59.47
step
Watch the dialogue
Kill the enemies that attack in waves
Defend Korven the Prime |q 31022/2 |goto Dread Wastes/0 59.98,59.40
'|kill Ik'thik Towerguard##63294
step
_Next to you:_
talk Korven the Prime##63328 |usename Korven the Prime##62180
turnin Kypari Zar##31022
accept The Root of the Problem##31026
step
Enter the underground cave |goto Dread Wastes/0 58.60,59.45 < 15 |walk
kill Coldbite Matriarch##62008 |q 31026/1 |goto Dread Wastes/0 57.36,57.78
|tip Inside the underground cave.
|tip Avoid stepping on the purple eggs, they spawn enemies.
step
_Next to you:_
talk Korven the Prime##63328 |usename Korven the Prime##62180
turnin The Root of the Problem##31026
step
Leave the underground cave |goto Dread Wastes/0 58.60,59.45 < 15 |walk |only if subzone("Coldbite Burrow") and indoors()
Enter the building |goto Dread Wastes/0 46.24,53.14 < 20 |walk
Locate Amberglow Hollow |q 31087/1 |goto Dread Wastes/0 46.54,52.60
|tip Inside the building.
step
kill Adjunct Zet'uk##65478 |q 31087/2 |goto Dread Wastes/0 48.09,49.77
|tip Inside the building.
step
click Silent Beacon##213250
|tip Inside the building.
Use the Resonating Crystal on the Silent Beacon |q 31087/3 |goto Dread Wastes/0 48.16,49.75
step
talk Kor'ik##65365
|tip Inside the building.
turnin Extending Our Coverage##31087 |goto Dread Wastes/0 48.11,49.64
accept Isolating the Frequency##31088 |goto Dread Wastes/0 48.11,49.64
accept The Color of Our Energy##31090 |goto Dread Wastes/0 48.11,49.64
stickystart "Kill_Ikthik_Harvesters"
step
Leave the building |goto Dread Wastes/0 46.24,53.14 < 15 |walk |only if subzone("Amberglow Hollow") and indoors()
click Amber Collector##212923+
|tip They look like orange bags hanging on the side of trees.
collect 7 Amber-Filled Jar##85159 |q 31090/1 |goto Dread Wastes/0 40.84,51.34
step
label "Kill_Ikthik_Harvesters"
kill 8 Ik'thik Harvester##63206 |q 31088/1 |goto Dread Wastes/0 40.84,51.34
|tip They look like insect people.
step
talk Infiltrator Ik'thal##65511
fpath The Briny Muck |goto Dread Wastes/0 42.53,55.75
step
Enter the building |goto Dread Wastes/0 46.24,53.14 < 15 |walk
talk Kor'ik##65365
|tip Inside the building.
turnin Isolating the Frequency##31088 |goto Dread Wastes/0 48.11,49.64
turnin The Color of Our Energy##31090 |goto Dread Wastes/0 48.11,49.64
accept By the Sea, Nevermore##31089 |goto Dread Wastes/0 48.11,49.64
step
Leave the building |goto Dread Wastes/0 46.24,53.14 < 15 |walk |only if subzone("Amberglow Hollow") and indoors()
use the Klaxxi Tuning Fork##84119
Awaken Kaz'tik the Manipulator |q 31089/1 |goto Dread Wastes/0 43.50,63.26
'|clicknpc Kaz'tik the Manipulator##62540
step
Watch the dialogue
talk Kaz'tik the Manipulator##63758
turnin By the Sea, Nevermore##31089 |goto Dread Wastes/0 43.32,63.49
accept Reunited##31091 |goto Dread Wastes/0 43.32,63.49
step
talk Kaz'tik the Manipulator##63876
Select _"I'm ready to help you find your weapon."_ |gossip 28603
Watch the dialogue
Follow Kaz'tik the Manipulator |goto Dread Wastes/0 43.32,63.49 > 10 |c |q 31091
step
Watch the dialogue
|tip Follow Kaz'tik the Manipulator and protect him as he walks.
|tip He eventually walks to this location.
Escort Kaz'tik the Manipulator to the Undisturbed Dirt |q 31091/1 |goto Dread Wastes/0 41.76,72.02
'|clicknpc Kaz'tik the Manipulator##63876
step
Watch the dialogue
Find Kaz'tik's Greatest Weapon |q 31091/2 |goto Dread Wastes/0 41.76,72.02
step
talk Kaz'tik the Manipulator##63876
turnin Reunited##31091 |goto Dread Wastes/0 41.76,72.02
accept The Kunchong Whisperer##31359 |goto Dread Wastes/0 41.76,72.02
accept Feed or Be Eaten##31092 |goto Dread Wastes/0 41.76,72.02
stickystart "Feed_Succulent_Turtle_Filets_To_Kovok"
stickystart "Slay_Muckscale_Tribe_Members"
step
kill Oracle Hiss'ir##63998 |q 31359/1 |goto Dread Wastes/0 41.93,63.77
|tip He walks around this area.
step
click Glowing Amber##214062
accept Falling to Pieces##31398 |goto Dread Wastes/0 41.88,63.72
step
label "Feed_Succulent_Turtle_Filets_To_Kovok"
kill Brineshell Snapper##63981, Trained Brineshell Snapper##65330
|tip They look like turtles.
collect Succulent Turtle Filet##86489+ |n
use the Succulent Turtle Filet##86489+
Feed #6# Succulent Turtle Filets to Kovok |q 31092/1 |goto Dread Wastes/0 37.63,62.58
step
label "Slay_Muckscale_Tribe_Members"
kill Muckscale Slayer##63999, Muckscale Flesh-Hunter##63997, Muckscale Shaman##64008, Muckscale Ripper##63993
|tip They look like lizard people.
Slay #10# Muckscale Tribe Members |q 31359/2 |goto Dread Wastes/0 37.63,62.58
step
talk Kaz'tik the Manipulator##63758
turnin The Kunchong Whisperer##31359 |goto Dread Wastes/0 54.25,35.78
turnin Feed or Be Eaten##31092 |goto Dread Wastes/0 54.25,35.78
turnin Falling to Pieces##31398 |goto Dread Wastes/0 54.25,35.78
step
talk Ambersmith Zikk##64599
turnin Relics of the Swarm##31023 |goto Dread Wastes/0 55.02,35.56
accept Gambling Problem##31727 |goto Dread Wastes/0 55.02,35.56
step
talk Kil'ruk the Wind-Reaver##62538
accept A Not So Friendly Request##31730 |goto Dread Wastes/0 55.06,35.85
step
talk Jin the Flying Keg##63500
fpath The Sunset Brewgarden |goto Dread Wastes/0 50.21,12.24
step
talk Sapmaster Vu##62666
turnin A Not So Friendly Request##31730 |goto Dread Wastes/0 51.21,11.39
accept The Heavens Hum With War##31067 |goto Dread Wastes/0 51.21,11.39
step
Enter the building |goto Dread Wastes/0 53.60,15.45 < 15 |walk
click Scroll of Auspice##212389
|tip Inside the building.
accept Sacred Recipe##31068 |goto Dread Wastes/0 53.09,12.36
step
kill Azzix K'tai##62843 |q 31067/1 |goto Dread Wastes/0 52.74,10.27
|tip He walks around this area.
|tip Inside the building.
step
Leave the building |goto Dread Wastes/0 53.60,15.45 < 15 |walk |only if subzone("The Amber Vault") and indoors()
talk Lya of Ten Songs##62667
turnin Sacred Recipe##31068 |goto Dread Wastes/0 50.73,11.71
step
talk Sapmaster Vu##62666
turnin The Heavens Hum With War##31067 |goto Dread Wastes/0 51.21,11.39
accept Bound With Shade##31069 |goto Dread Wastes/0 51.21,11.39
step
talk Olon##62668
accept Daggers of the Great Ones##31070 |goto Dread Wastes/0 51.16,11.22
step
talk Thirsty Missho##62859
accept I Bring Us Great Shame##31071 |goto Dread Wastes/0 51.13,11.11
step
Watch the dialogue
talk Lya of Ten Songs##62667
|tip She runs to this location.
accept Rending Daggers##31072 |goto Dread Wastes/0 50.73,11.71
step
talk Chen Stormstout##62779
accept Fate of the Stormstouts##31129 |goto Dread Wastes/0 50.45,12.05 |or
accept Fate of the Stormstouts##31076 |goto Dread Wastes/0 50.45,12.05 |or
step
talk Lya of Ten Songs##62667
Select _"Have you seen any Stormstouts here in the Brewgarden?"_ |gossip 35828
Speak with Lya of Ten Songs |q 31129/2 |goto Dread Wastes/0 50.73,11.71 |only if haveq(31129) or completedq(31129)
Speak with Lya of Ten Songs |q 31076/2 |goto Dread Wastes/0 50.73,11.71 |only if haveq(31076) or completedq(31076)
step
talk Big Dan Stormstout##62845
Select _"Is your name really Stormstout?"_ |gossip 35823
Speak with Big Dan Stormstout |q 31129/3 |goto Dread Wastes/0 50.90,11.36 |only if haveq(31129) or completedq(31129)
Speak with Big Dan Stormstout |q 31076/3 |goto Dread Wastes/0 50.90,11.36 |only if haveq(31076) or completedq(31076)
step
talk Sapmaster Vu##62666
Select _"Have you seen anybody named Stormstout come through here?"_ |gossip 35825
Speak with Sapmaster Vu |q 31129/1 |goto Dread Wastes/0 51.21,11.39 |only if haveq(31129) or completedq(31129)
Speak with Sapmaster Vu |q 31076/1 |goto Dread Wastes/0 51.21,11.39 |only if haveq(31076) or completedq(31076)
step
talk Chen Stormstout##62779
turnin Fate of the Stormstouts##31129 |goto Dread Wastes/0 50.45,12.05 |only if haveq(31129) or completedq(31129)
turnin Fate of the Stormstouts##31076 |goto Dread Wastes/0 50.45,12.05 |only if haveq(31076) or completedq(31076)
stickystart "Harvest_Shade"
step
talk Chen Stormstout##62779
'|talk 67138
accept Evie Stormstout##31077 |goto Dread Wastes/0 54.11,20.48
step
click Lost Keg##212540
collect Lost Keg##83781 |q 31071/2 |goto Dread Wastes/0 54.43,20.27
step
click Lost Picnic Supplies##212556
collect Lost Picnic Supplies##83783 |q 31071/3 |goto Dread Wastes/0 56.01,19.44
step
kill Kz'Kzik##62832
|tip He looks like a larger insect person that walks around this area.
collect Blade of Kz'Kzik##84111 |q 31072/1 |goto Dread Wastes/0 53.29,19.98
step
click Lost Mug##212548
collect Lost Mugs##83782 |q 31071/1 |goto Dread Wastes/0 51.70,19.07
step
kill Ilikkax##62833
|tip He looks like a larger insect person that walks around this area.
collect Blade of Ilikkax##84112 |q 31072/2 |goto Dread Wastes/0 50.98,21.02
step
label "Harvest_Shade"
kill Dread Lurker##62751, Nagging Dreadling##65996
|tip Only enemies that look like shadow aliens will count for the quest goal.
Harvest #100# Shade |q 31069/1 |goto Dread Wastes/0 55.21,18.18
step
kill Frightened Mushan##62760+
|tip They look like dinosaurs.
collect 3 Large Mushan Tooth##84107 |q 31070/1 |goto Dread Wastes/0 49.15,19.15
step
talk Lya of Ten Songs##62667
turnin Rending Daggers##31072 |goto Dread Wastes/0 50.73,11.71
accept Wood and Shade##31074 |goto Dread Wastes/0 50.73,11.71
step
talk Sapmaster Vu##62666
turnin Bound With Shade##31069 |goto Dread Wastes/0 51.21,11.39
step
talk Olon##62668
turnin Daggers of the Great Ones##31070 |goto Dread Wastes/0 51.16,11.22
step
talk Thirsty Missho##62859
turnin I Bring Us Great Shame##31071 |goto Dread Wastes/0 51.13,11.11
step
talk Sapmaster Vu##62666
accept Bound With Wood##31073 |goto Dread Wastes/0 51.21,11.39
step
talk Defender Azzo##63218
accept Kor'thik Aggression##31133 |goto Dread Wastes/0 50.19,12.44
step
Meet up with Chen |q 31077/1 |goto Dread Wastes/0 50.18,10.20
step
Watch the dialogue
Eulogize Evie |q 31077/2 |goto Dread Wastes/0 50.18,10.20
step
talk Chen Stormstout##62779
'|talk ##67138
turnin Evie Stormstout##31077 |goto Dread Wastes/0 50.18,10.20
accept Han Stormstout##31078 |goto Dread Wastes/0 50.18,10.20
stickystart "Slay_Korthik_Mantids"
step
Enter the building |goto Dread Wastes/0 47.00,16.82 < 15 |walk
|clicknpc Han Stormstout##62779
|tip Inside the building.
|tip You can't run through the orange beams.
|tip Follow the path in and out of the rooms so that you never touch the orange beams.
|tip You will eventually be able to reach him.
Find Han Stormstout |q 31078/1 |goto Dread Wastes/0 43.75,16.75
step
talk Chen Stormstout##62779
'|talk ##67138
|tip Inside the building.
|tip Run through the splashing water and it will knock you toward him.
turnin Han Stormstout##31078 |goto Dread Wastes/0 44.41,16.81
step
Leave the building |goto Dread Wastes/0 47.00,16.82 < 15 |walk |only if subzone("Morrowchamber") and indoors()
Enter the building |goto Dread Wastes/0 44.79,15.86 < 10 |walk
Find the Mark of the Empress |q 31074/1 |goto Dread Wastes/0 44.51,16.78
|tip Inside the building.
step
Leave the building |goto Dread Wastes/0 44.79,15.86 < 10 |walk |only if subzone("Kor'vess") and indoors()
Enter the building |goto Dread Wastes/0 43.05,14.00 < 10 |walk
Find the Heartroot of Kypari Kor |q 31074/2 |goto Dread Wastes/0 43.22,14.96
|tip Inside the building.
step
Leave the building |goto Dread Wastes/0 43.05,14.02 < 10 |walk |only if subzone("Kor'vess") and indoors()
clicknpc Withered Husk##62876+
|tip They look like dead trees chopped in half.
collect 8 Fragrant Corewood##84118 |q 31073/1 |goto Dread Wastes/0 46.29,13.10
step
label "Slay_Korthik_Mantids"
kill Kor'thik Havoc##62757, Kor'thik Chitinel##62756, Kor'thik Battlesinger##62758
|tip They look like insect people.
Slay #17# Kor'thik Mantids |q 31133/1 |goto Dread Wastes/0 43.72,12.83
step
talk Defender Azzo##63218
turnin Kor'thik Aggression##31133 |goto Dread Wastes/0 50.19,12.44
step
talk Lya of Ten Songs##62667
turnin Wood and Shade##31074 |goto Dread Wastes/0 50.73,11.71
step
talk Sapmaster Vu##62666
turnin Bound With Wood##31073 |goto Dread Wastes/0 51.21,11.39
accept Sunset Kings##31075 |goto Dread Wastes/0 51.21,11.39
step
talk Sapmaster Vu##62666
turnin Sunset Kings##31075 |goto Dread Wastes/0 38.18,17.18
step
talk Olon##62668
accept Fiery Wings##31080 |goto Dread Wastes/0 38.20,17.12
step
talk Boggeo##62772
accept The Horror Comes A-Rising##31079 |goto Dread Wastes/0 38.16,17.34
step
talk Lya of Ten Songs##62667
accept Incantations Fae and Primal##31081 |goto Dread Wastes/0 38.30,17.13
step
talk Chief Rikkitun##62771
accept Great Vessel of Salvation##31082 |goto Dread Wastes/0 38.65,17.25
stickystart "Collect_Flittering_Dust"
stickystart "Kill_Kyparites"
stickystart "Kill_Shuffling_Mistlurkers"
step
kill Mygoness##62766 |q 31081/2 |goto Dread Wastes/0 32.92,19.36
|tip He walks around this area.
step
kill Ahgunoss##62765 |q 31081/1 |goto Dread Wastes/0 32.10,17.37
step
use the Rikkitun Bell##84267
|tip Use it if you lose your sprites and can't click the Motherseeds.
clicknpc Motherseed##62601+
|tip They look like huge acorns with yellow crystals in them.
|tip They are located near the enemies surrounding this location.
|tip Bring them to this location.
Bring #3# Motherseeds Back to the Motherseed Pit |q 31082/1 |goto Dread Wastes/0 36.88,17.22
step
label "Collect_Flittering_Dust"
clicknpc Rikkilea Flitterling##62764+
|tip They look like fae dragons.
|tip Run into the colorful sparks that fly off of them to collect them.
collect 88 Flitterling Dust##84239 |q 31080/1 |goto Dread Wastes/0 37.26,20.61
step
label "Kill_Kyparites"
kill 2 Kyparite##63007 |q 31079/2 |goto Dread Wastes/0 34.70,20.99
|tip They look like spots of brown splashing water moving across the ground.
|tip Get close to them and they will come out of the ground.
step
label "Kill_Shuffling_Mistlurkers"
kill 7 Shuffling Mistlurker##65404 |q 31079/1 |goto Dread Wastes/0 34.70,20.99
|tip They look like swamp elementals.
step
talk Boggeo##62772
turnin The Horror Comes A-Rising##31079 |goto Dread Wastes/0 38.16,17.33
step
talk Olon##62668
turnin Fiery Wings##31080 |goto Dread Wastes/0 38.20,17.12
step
talk Lya of Ten Songs##62667
turnin Incantations Fae and Primal##31081 |goto Dread Wastes/0 38.30,17.13
step
talk Chief Rikkitun##62771
turnin Great Vessel of Salvation##31082 |goto Dread Wastes/0 38.65,17.25
accept Bind the Glamour##31084 |goto Dread Wastes/0 38.65,17.25
step
talk Chief Rikkitun##62771
Select _"The forked blade is ready, and we have given our gift. Please perform your incantation."_ |gossip 40853
Follow Chief Rikkitum |goto Dread Wastes/0 38.65,17.25 > 10 |c |q 31084
step
Watch the dialogue
|tip Follow Chief Rikkitum as he walks.
|tip He eventually walks to this location.
Allow Chief Rikkitun to Enchant the Forked Blade |q 31084/1 |goto Dread Wastes/0 39.67,23.18
'|clicknpc Chief Rikkitun##62771
step
talk Chief Rikkitun##62771
turnin Bind the Glamour##31084 |goto Dread Wastes/0 38.65,17.25
step
talk Lya of Ten Songs##62667
accept Fires and Fears of Old##31085 |goto Dread Wastes/0 38.30,17.13
step
talk Sapmaster Vu##62666
accept Blood of Ancients##31086 |goto Dread Wastes/0 38.18,17.18
step
click Solidified Amber##212902
collect Chunk of Solidified Amber##84779 |q 31086/1 |goto Dread Wastes/0 30.22,30.58
step
click Enormous Landslide
Click Here After the Landslide Moves |confirm |goto Dread Wastes/0 30.06,30.89 |q 31085
step
Enter the building |goto Dread Wastes/0 30.18,31.69 < 15 |walk
use the Ruining Fork##84771
|tip Inside the building.
Use the Ruining Fork on Iyyokuk the Lucid |q 31085/1 |goto Dread Wastes/0 32.39,33.65
step
Watch the dialogue
|tip Inside the building.
Kill the enemies that attack
|tip They appear and start channeling on Iyyokuk the Lucid.
Protect Iyyokuk the Lucid Until He Escapes |q 31085/2 |goto Dread Wastes/0 32.39,33.65
'|kill Adjunct G'kkal##63103, Adjunct Okzyk##63102, Adjunct Pivvika##63104
step
Leave the building |goto Dread Wastes/0 30.25,31.73 < 15 |walk |only if subzone("The Amber Hibernal") and indoors()
talk Lya of Ten Songs##62667
turnin Fires and Fears of Old##31085 |goto Dread Wastes/0 50.28,12.07
step
talk Sapmaster Vu##62666
turnin Blood of Ancients##31086 |goto Dread Wastes/0 50.22,12.11
step
talk Min the Breeze Rider##63498
fpath Soggy's Gamble |goto Dread Wastes/0 56.10,70.18
step
talk San the Sea Calmer##63016
|tip Inside the building.
home The Chum Bucket |goto Dread Wastes/0 55.15,71.11
step
talk Deck Boss Arie##63349
turnin Soggy's Gamble##31727 |goto Dread Wastes/0 54.72,72.17
accept Mazu's Breath##31265 |goto Dread Wastes/0 54.72,72.17
step
use the Potion of Mazu's Breath##85869
Drink the Potion of Mazu's Breath |q 31265/1 |goto Dread Wastes/0 54.72,72.17
step
talk Deck Boss Arie##63349
turnin Mazu's Breath##31265 |goto Dread Wastes/0 54.72,72.17
accept Fresh Pots##31181 |goto Dread Wastes/0 54.72,72.17
accept You Otter Know##31182 |goto Dread Wastes/0 54.72,72.17
stickystart "Bait_Crab_Pots"
step
use the Bag of Clams##85231
|tip Use it on Coldwhisker Otters underwater.
Feed #8# Coldwhisker Otters |q 31182/1 |goto Dread Wastes/0 59.48,81.84
'|clicknpc Coldwhisker Otter##63376
step
label "Bait_Crab_Pots"
kill Sea Monarch##63470+
|tip They look like large fish underwater.
collect Sea Monarch Chunks##85230+ |n
click Empty Crab Pot+
|tip They look like red and brown cages underwater.
|tip You need 2 Sea Monarch Chunks to bait each crab pot.
Bait #10# Crab Pots |q 31181/1 |goto Dread Wastes/0 59.48,81.84
step
talk Deck Boss Arie##63349
turnin Fresh Pots##31181 |goto Dread Wastes/0 54.72,72.16
turnin You Otter Know##31182 |goto Dread Wastes/0 54.72,72.16
accept Meet the Cap'n##31183 |goto Dread Wastes/0 54.72,72.16
step
talk Captain "Soggy" Su-Dao##63317
|tip Inside the building.
turnin Meet the Cap'n##31183 |goto Dread Wastes/0 55.66,72.50
accept Walking Dog##31185 |goto Dread Wastes/0 55.66,72.50
accept Old Age and Treachery##31184 |goto Dread Wastes/0 55.66,72.50
step
talk Deck Boss Arie##63349
accept On the Crab##31187 |goto Dread Wastes/0 54.72,72.16
accept Shark Week##31188 |goto Dread Wastes/0 54.72,72.16
step
use the Dog's Whistle##85955
_Next to you:_
talk Dog##63955
accept Dog Food##31186 |goto Dread Wastes/0 50.72,78.38
stickystart "Feed_Dog"
stickystart "Collect_Thresher_Teeth"
stickystart "Send_Full_Crab_Pots_To_The_Surface"
step
use the Dog's Whistle##85955
|tip Use it if Dog isn't following you.
Bring Dog to the Silt Vents |q 31185/1 |goto Dread Wastes/0 46.40,74.06
|tip Underwater.
step
use the Dog's Whistle##85955
|tip Use it if Dog isn't following you.
Bring Dog to the Wreck of the Mist-Hopper |q 31185/2 |goto Dread Wastes/0 44.90,78.00
|tip Underwater.
step
click Soggy's Footlocker##213454
|tip It looks like a small brown wooden chest.
|tip Underwater on this sunken ship.
|tip It can appear in other locations on this sunken ship.
collect Sealed Charter Tube##85886 |q 31184/1 |goto Dread Wastes/0 44.73,78.66
step
use the Dog's Whistle##85955
|tip Use it if Dog isn't following you.
Bring Dog to the Whale Corpse |q 31185/3 |goto Dread Wastes/0 40.08,78.68
|tip Underwater.
step
label "Send_Full_Crab_Pots_To_The_Surface"
click Full Crab Pot##213508+
|tip They look like red and brown cages.
|tip Underwater. |notinsticky
Send #8# Full Crab Pots to the Surface |q 31187/1 |goto Dread Wastes/0 44.75,76.21
step
label "Feed_Dog"
use the Dog's Whistle##85955 |notinsticky
|tip Use it if Dog isn't following you. |notinsticky
kill Rockshell Snapclaw##63369+
|tip They look like green lobsters.
|tip Underwater. |notinsticky
|tip Dog will eat their corpses.
Feed Dog #10# Times |q 31186/1 |goto Dread Wastes/0 44.75,76.21
step
label "Collect_Thresher_Teeth"
kill Longfin Thresher##63944+
|tip They look like sharks.
|tip Underwater. |notinsticky
collect Thresher Jaw##85998+ |n
use the Thresher Jaw##85998+
collect 200 Thresher Teeth##85999 |q 31188/1 |goto Dread Wastes/0 44.75,76.21
step
use the Dog's Whistle##85955
_Next to you:_
talk Dog##63955
turnin Dog Food##31186
step
talk Deck Boss Arie##63349
turnin On the Crab##31187 |goto Dread Wastes/0 54.72,72.16
turnin Shark Week##31188 |goto Dread Wastes/0 54.72,72.16
step
talk Captain "Soggy" Su-Dao##63317
|tip Inside the building.
turnin Walking Dog##31185 |goto Dread Wastes/0 55.66,72.50
turnin Old Age and Treachery##31184 |goto Dread Wastes/0 55.66,72.50
step
talk Deck Boss Arie##63349
accept Reeltime Strategy##31189 |goto Dread Wastes/0 54.72,72.16
step
talk Master Angler Ju Lien##64259
Speak with Master Angler Ju Lien |q 31189/1 |goto Dread Wastes/0 53.64,76.05
step
talk Master Angler Ju Lien##64259
Select _"Deck Boss said you needed some help."_ |gossip 40852
Watch the dialogue
|tip Click the various fishing rods nearby.
|tip They look like fishing poles leaning on wooden stands next to Master Angler Ju Lien.
Kill the enemies that attack
Assist Master Angler Ju Lien |q 31189/2 |goto Dread Wastes/0 53.64,76.05
step
talk Deck Boss Arie##63349
turnin Reeltime Strategy##31189 |goto Dread Wastes/0 54.72,72.16
step
talk Captain "Soggy" Su-Dao##63317
accept The Mariner's Revenge##31190 |goto Dread Wastes/0 54.77,72.11
step
clicknpc Mist-Hopper Jr.##64350
Control the Mist-Hopper Jr. |invehicle |goto Dread Wastes/0 56.17,76.29 |q 31190
step
kill Jiao##63330
|tip It looks like a huge octopus in the water.
|tip Aim at the red crosshairs.
|tip Use the ability on your action bar.
Land #25# Bow Hits |q 31190/1 |goto Dread Wastes/0 53.35,80.89
Land #25# Port Side Hits |q 31190/2 |goto Dread Wastes/0 53.35,80.89
Land #25# Starboard Hits |q 31190/3 |goto Dread Wastes/0 53.35,80.89
Land #25# Stern Hits |q 31190/4 |goto Dread Wastes/0 53.35,80.89
step
Stop Controlling the Mist-Hopper Jr. |outvehicle |goto Dread Wastes/0 56.20,76.30 |q 31190
|tip Click the arrow on your action bar.
step
talk Captain "Soggy" Su-Dao##63317
turnin The Mariner's Revenge##31190 |goto Dread Wastes/0 56.57,75.92
step
talk Deck Boss Arie##63349
accept Mazu's Bounty##31354 |goto Dread Wastes/0 56.57,75.82
step
talk Master Angler Ju Lien##64259
turnin Mazu's Bounty##31354 |goto Dread Wastes/0 54.90,72.83
accept Once in a Hundred Lifetimes##32030 |goto Dread Wastes/0 54.90,72.83
step
talk Klaxxi'va Ik##65395
turnin Once in a Hundred Lifetimes##32030 |goto Dread Wastes/0 54.71,34.75
accept Overthrone##31782 |goto Dread Wastes/0 54.71,34.75
step
Watch the dialogue
Witness the Klaxxi Ritual |q 31782/1 |goto Dread Wastes/0 54.71,34.75
step
talk Klaxxi'va Vor##62519
turnin Overthrone##31782 |goto Dread Wastes/0 55.11,34.27
step
talk Kor'ik##64815
accept The Zan'thik Dig##31605 |goto Dread Wastes/0 54.77,34.06
step
talk Kil'ruk the Wind-Reaver##62538
accept Skeer the Bloodseeker##31175 |goto Dread Wastes/0 55.06,35.85
step
Enter the underwater cave |goto Dread Wastes/0 25.76,53.85 < 30 |walk
click Ancient Amber Chunk##212980
|tip Inside the underwater cave.
Awaken Skeer the Bloodseeker |q 31175/1 |goto Dread Wastes/0 25.70,50.40
step
Watch the dialogue
|tip Inside the underwater cave.
talk Skeer the Bloodseeker##63071
turnin Skeer the Bloodseeker##31175 |goto Dread Wastes/0 25.71,50.30
accept A Strange Appetite##31176 |goto Dread Wastes/0 25.71,50.30
accept Fine Dining##31177 |goto Dread Wastes/0 25.71,50.30
accept A Bloody Delight##31178 |goto Dread Wastes/0 25.71,50.30
stickystart "Collect_Starfish_Meat"
stickystart "Collect_Volatile_Blood"
step
kill Briny Clacker##63348+
|tip They look like small lobsters.
|tip Underwater.
collect 8 Clacker Tail##85212 |q 31177/1 |goto Dread Wastes/0 25.02,61.12
step
label "Collect_Starfish_Meat"
click Spiny Starfish##212988+
|tip They look like pink starfish.
|tip Underwater. |notinsticky
collect 12 Starfish Meat##85211 |q 31176/1 |goto Dread Wastes/0 25.02,61.12
step
label "Collect_Volatile_Blood"
Leave the underwater cave |goto Dread Wastes/0 25.72,53.98 < 30 |walk |only if subzone("Muckscale Grotto") and indoors()
kill Dread Remora##63353+
|tip They look like sharks.
|tip Underwater. |notinsticky
collect 100 Volatile Blood##85229 |q 31178/1 |goto Dread Wastes/0 25.02,61.12
step
Enter the underwater cave |goto Dread Wastes/0 25.76,53.85 < 30 |walk
talk Skeer the Bloodseeker##63071
|tip Inside the underwater cave.
turnin A Strange Appetite##31176 |goto Dread Wastes/0 25.71,50.62
turnin Fine Dining##31177 |goto Dread Wastes/0 25.71,50.62
turnin A Bloody Delight##31178 |goto Dread Wastes/0 25.71,50.62
accept The Scent of Blood##31179 |goto Dread Wastes/0 25.71,50.62
step
kill 12 Muckscale Flesheater##63465 |q 31179/1 |goto Dread Wastes/0 25.71,50.97
|tip They attack in waves.
|tip Inside the underwater cave.
step
Watch the dialogue
|tip Inside the underwater cave.
kill Muckscale Serpentus##63466 |q 31179/2 |goto Dread Wastes/0 25.71,50.97
step
Leave the underwater cave |goto Dread Wastes/0 25.72,53.98 < 30 |walk |only if subzone("Muckscale Grotto") and indoors()
talk Rik'kal the Dissector##65253
turnin The Zan'thik Dig##31605 |goto Dread Wastes/0 31.80,88.95
accept The Dissector Wakens##31606 |goto Dread Wastes/0 31.80,88.95
step
Kill the enemies that attack
Waken the Paragon |q 31606/1 |goto Dread Wastes/0 31.80,88.95
'|kill Zan'thik Impaler##65273, Zan'thik Manipulator##65274
step
talk Rik'kal the Dissector##65253
turnin The Dissector Wakens##31606 |goto Dread Wastes/0 31.80,88.95
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Scent of Blood##31179 |goto Dread Wastes/0 55.06,35.85
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (10-70)\\Isle of Thunder (50-70)",{
description="This guide will help you unlock the Isle of Thunder.",
startlevel=50,
achieveid={8099},
patch='100207',
},[[
step
talk Lyalia##64610
accept Thunder Calls##32679 |goto Vale of Eternal Blossoms/0 83.97,58.64
step
talk Vereesa Windrunner##70360
turnin Thunder Calls##32679 |goto Townlong Steppes/0 49.93,69.04
accept The Storm Gathers##32681 |goto Townlong Steppes/0 49.93,69.04
step
talk Vereesa Windrunner##70360
Select _"I'm ready to go."_ |gossip 41772
Speak with Vereesa |q 32681/1 |goto Townlong Steppes/0 49.93,69.04
step
Watch the dialogue
Begin Flying with Vereesa |invehicle |q 32681
step
Watch the dialogue
Discover the Isle of Thunder |q 32681/2
step
Watch the dialogue
Land on The Seabolt |outvehicle |goto Isle of Thunder/0 34.72,89.85 |q 32681
step
talk Lady Jaina Proudmoore##67992
|tip She walks around on the deck of the ship.
turnin The Storm Gathers##32681 |goto Isle of Thunder/0 34.60,89.44
accept The Assault on Shaol'mara##32644 |goto Isle of Thunder/0 34.60,89.44
step
talk Lady Jaina Proudmoore##67992
|tip She walks around on the deck of the ship.
Select _"I am ready! [Queue for solo instance.]"_ |gossip 41766
Speak to Jaina Proudmoore |q 32644/1 |goto Isle of Thunder/0 34.60,89.44
step
Enter the The Assault on Shaol'mara Scenario |scenariostart |q 32644
|tip Accept the invitation that pops up.
step
clicknpc Silver Covenant Hippogryph##70234
|tip On the deck of the ship.
Ride the Silver Covenant Hippogryph |scenariogoal 1/22869 |goto Isle of Thunder Scenario/0 35.04,89.84 |q 32644
step
Watch the dialogue
Fly with Ranger General Vereesa Windrunner |scenariogoal 1/22654 |goto Isle of Thunder Scenario/0 52.43,59.25 |q 32644
step
Rendezvous with Ranger General Vereesa Windrunner |scenariostage 1 |goto Isle of Thunder Scenario/0 52.43,59.25 |q 32644
step
Kill Shaol'mara enemies around this area |kill Shaol'mara Beastcaller##70286,Shaol'mara Raptor##70288
|tip Kill the enemies that attack you.
Survive the Ambush |scenariogoal 2/22655 |goto Isle of Thunder Scenario/0 52.43,59.25 |q 32644
step
Survive the Ambush |scenariostage 2 |goto Isle of Thunder Scenario/0 52.43,59.25 |q 32644
step
Kill Zandalari and Zeb-tula enemies around this area |kill Zandalari Barricade##69515,Zeb'tula Spearanger##69518,Zeb'tula Stoneshield##69517
Destroy the Barricades and Defenders |scenariogoal 3/22656 |goto Isle of Thunder Scenario/0 58.05,65.96 |q 32644
step
Destroy the Barricades |scenariostage 3 |goto Isle of Thunder Scenario/0 58.05,65.96 |q 32644
stickystart "Kill_Beastcaller_Pakutesh"
step
kill Anki##69531 |scenariogoal 4/22870 |goto Isle of Thunder Scenario/0 59.93,68.68 |q 32644
|tip Pakutesh will jump off of Anki once he is defeated.
step
label "Kill_Beastcaller_Pakutesh"
kill Beastcaller Pakutesh##69532 |scenariogoal 4/22871 |goto Isle of Thunder Scenario/0 59.93,68.68 |q 32644
step
Kill Anki and Beastcaller Pakutesh |scenariostage 4 |goto Isle of Thunder Scenario/0 59.93,68.68 |q 32644
step
Follow the path |goto Isle of Thunder Scenario/0 59.13,70.98 < 20 |only if walking
kill Arcanital Mara'kah##69538 |scenariogoal 5/22872 |goto Isle of Thunder Scenario/0 64.40,73.01 |q 32644
|tip Move him out of the yellow bubbles the mask places on the ground and move into them yourself for damage reduction and silence immunity.
step
Kill Arcanital Mara'kah and his Spirit Mask |scenariostage 5
step
Watch the dialogue
Return to Violet Rise |complete subzone("Violet Rise") |q 32644
step
talk Lady Jaina Proudmoore##67992
turnin The Assault on Shaol'mara##32644 |goto Isle of Thunder/0 63.24,72.23
accept Tear Down This Wall!##32654 |goto Isle of Thunder/0 63.24,72.23
step
talk Lady Jaina Proudmoore##67992
Select _"I'm ready to tear down the wall! [Queue for solo instance.]"_ |gossip 41768
Speak to Lady Jaina Proudmoore to Begin your Mission |q 32654/1 |goto Isle of Thunder/0 63.24,72.23
step
Enter the Tear Down This Wall! Scenario |scenariostart |q 32654
|tip Accept the invitation that pops up.
step
click Heavy Explosives##218197
Acquire the Heavy Explosives |scenariogoal 1/22696 |goto Isle of Thunder Scenario/0 48.41,50.99 |q 32654
step
Acquire the Heavy Explosives |scenariostage 1 |goto Isle of Thunder Scenario/0 48.41,50.99 |q 32654
step
talk Vereesa Windrunner##69949
Select _"Here are the explosives, Vereesa."_ |gossip 41587
Deliver the Explosives to Vereesa |scenariogoal 2/22700 |goto Isle of Thunder Scenario/0 55.81,57.75 |q 32654
step
Deliver the Explosives to Vereesa |scenariostage 2 |goto Isle of Thunder Scenario/0 55.81,57.75 |q 32654
step
Watch the dialogue
|tip Wait for Vereesa to set the explosives.
click Heavy Explosives
Detonate the Heavy Explosives |scenariogoal 3/22702 |goto Isle of Thunder Scenario/0 56.26,56.08 |q 32654
step
Detonate the Heavy Explosives |scenariostage 3 |goto Isle of Thunder Scenario/0 56.26,56.08 |q 32654
step
kill War-God Al'chukla##69755 |scenariogoal 4/23004 |goto Isle of Thunder Scenario/0 54.73,45.83 |q 32654
step
Secure the Lower City |scenariostage 4 |q 32654
step
click Portal to Isle of Thunder
Return to Violet Rise |complete subzone("Violet Rise") |goto Isle of Thunder Scenario/0 54.09,46.27 |q 32654
step
talk Lady Jaina Proudmoore##67992
turnin Tear Down This Wall!##32654 |goto Isle of Thunder/0 63.24,72.23
accept To the Skies!##32652 |goto Isle of Thunder/0 63.24,72.23
step
talk Lady Jaina Proudmoore##67992
Select _"I am ready! [Queue for solo instance.]"_ |gossip 41766
Speak to Lady Jaina Proudmoore to Begin your Mission |q 32652/1 |goto Isle of Thunder/0 63.24,72.23
step
Enter the To the Skies! Scenario |scenariostart |q 32652
|tip Accept the invitation that pops up.
step
clicknpc Thunderwing##70208
Watch the Dialogue
Mount the Thunderwing |scenariogoal 1/22666 |goto Isle of Thunder Scenario/0 63.32,74.30 |q 32652
step
Watch the Dialogue
Approach the Mine Entrace |scenariogoal 1/22701 |goto Isle of Thunder Scenario/0 53.70,19.46 |q 32652 |notravel
step
Approach the Mine Entrace |scenariostage 1 |goto Isle of Thunder Scenario/0 53.70,19.46 |q 32652
step
extraaction Jump!##137263
|tip Use the button on the screen to jump to a beastcaller's Thunderwing.
kill Zandalari Beastcaller##69521+
|tip Kill the waves of enemies that attack you and wait to land on the ground after.
Defeat your Attackers! |scenariogoal 2/22668 |q 32652
step
Defeat your Attackers! |scenariostage 2 |q 32652
step
kill Beastmaster Horaki##69559 |scenariogoal 3/22669 |goto Isle of Thunder Scenario/0 47.82,25.63 |q 32652
|tip Move out of areas targeted on the ground.
step
Defeat Beastmaster Horaki |scenariostage 3 |goto Isle of Thunder Scenario/0 47.82,25.63 |q 32652
step
Watch the dialogue
talk Taoshi##69810
|tip She will jump down to this spot.
Select _"Alright. Let's go."_ |gossip 41898
Join with Taoshi |scenariogoal 4/22738 |goto Isle of Thunder Scenario/0 49.31,26.00 |q 32652
step
Join with Taoshi |scenariostage 4 |goto Isle of Thunder Scenario/0 49.31,26.00 |q 32652
step
Watch Taoshi Get Rid of the Cave-in |scenariogoal 5/22740 |goto Isle of Thunder Scenario/0 49.22,25.57 |q 32652
step
Follow the path |goto Isle of Thunder Scenario/1 44.65,41.46 < 20 |walk
Make your Way to the Mine Entrance |scenariogoal 5/22741 |goto Isle of Thunder Scenario/1 32.33,58.00 |q 32652
step
Make your Way to the Mine Entrance |scenariostage 5 |goto Isle of Thunder Scenario/1 32.33,58.00 |q 32652
step
kill Slavemaster Shiaxu##69923 |scenariogoal 6/22672 |goto Isle of Thunder Scenario/1 28.18,67.47 |q 32652
step
Unlock the Mine Door |scenariogoal 6/22739 |goto Isle of Thunder Scenario/1 28.18,67.47 |q 32652
|tip This should happen automatically.
step
Unlock the Mine Door |scenariostage 6 |goto Isle of Thunder Scenario/1 28.18,67.47 |q 32652
|tip This should happen automatically.
step
click Portal to the Isle of Thunder
Return to Violet Rise |complete subzone("Violet Rise") |goto Isle of Thunder Scenario/1 31.88,83.11 |q 32652
step
talk Lady Jaina Proudmoore##67992
turnin To the Skies!##32652 |goto Isle of Thunder/0 63.16,73.88
step
talk Taoshi##70297
accept A Bold Idea##32655 |goto Isle of Thunder/0 63.19,73.92
step
talk Taoshi##70297
Select _"I'm with you. Let's break into that shipyard! [Queue for solo instance.]"_ |gossip 41662
|tip Accept the invitation that pops up.
Infiltrate Stormsea Landing |scenariostart |goto Isle of Thunder/0 63.19,73.92 |q 32655
step
Watch the dialogue
clicknpc Thunderwing##69458
Mount the Thunderwing |invehicle |goto Isle of Thunder Scenario/0 63.29,54.35 |q 32278
step
Watch the dialogue
Intercept the Zandalari Patrol |scenariogoal 1/22661 |q 32655
step
Watch the dialogue
Intercept the Zandalari Patrol |scenariostage 1 |q 32655
step
Deactvate #10# Sentry Totems |scenariogoal 2/23007 |goto Isle of Thunder Scenario/0 62.35,41.39 |q 32655
|tip Use the "Smoke Bomb" ability on your vehicle bar.
|tip Sentry Totems are at the center of the circles.
|tip Destroy a clear path from the ship, up the hill to the courtyard.
step
Deactvate #10# Sentry Totems |scenariostage 2 |q 32655
step
Watch the dialogue
Reach the Ship |outvehicle |goto Isle of Thunder Scenario/0 68.99,45.00 |notravel |q 32655
stickystart "Trap_Siege_Weapons"
step
kill Veteran Wingrider##69552+
|tip Stay close to Taoshi to maintain stealth.
|tip The red circle around you is the radius in which enemies can see you while facing you.
|tip Follow Taoshi and neutralize the enemies with a red arrow above their head.
extraaction Knock Out##137311
Neutralize #7# Marked Crew Members |scenariogoal 3/23003 |goto Isle of Thunder Scenario/0 67.29,46.79 |q 32655
step
label "Trap_Siege_Weapons"
Trap #4# Siege Weapons |scenariogoal 3/22663 |goto Isle of Thunder Scenario/0 67.29,46.79 |q 32655
|tip Taoshi will do this automatically when she gets near them.
step
Neutralize the Defenses |scenariostage 3 |q 32655
step
Go down into the ship |goto Isle of Thunder Scenario/0 68.60,45.63 < 4 |walk
kill Captain Halu'kal##69482 |scenariogoal 4/22664 |goto Isle of Thunder Scenario/0 67.13,47.47 |q 32655
|tip Follow Taoshi down into the ship.
|tip The captain will wake up and attack you.
|tip Kill any enemies that wake up and move out of stuff on the ground.
step
kill Captain Halu'kal##69482 |scenariostage 4 |goto Isle of Thunder Scenario/0 67.13,47.47 |q 32655
step
Leave the ship |goto Isle of Thunder Scenario/0 67.21,45.36 < 10 |walk
Locate Hu'seng the Gatekeeper |scenariogoal 5/22665 |goto Isle of Thunder Scenario/0 59.04,43.76 |q 32655
|tip Stay near Taoshi to maintain your stealth.
|tip Make your way up the hill and into the courtyard along the path you cleared with the smoke bombs.
|tip Avoid the blue circles on the ground that will reveal your location.
step
Locate Hu'seng the Gatekeeper |scenariostage 5 |goto Isle of Thunder Scenario/0 59.04,43.76 |q 32655
step
kill Hu'seng the Gatekeeper##69483 |scenariogoal 6/22667 |goto Isle of Thunder Scenario/0 59.04,43.76 |q 32655
step
collect Gatekeeper's Orb##94918 |scenariogoal 6/22810 |goto Isle of Thunder Scenario/0 59.04,43.76 |q 32655
|tip Loot it from Hu'seng the Gatekeeper's corpse.
step
Light Up the Night |scenariostage 6 |goto Isle of Thunder Scenario/0 59.04,43.76 |q 32655
step
click Deactivated Access Generator
Open the Gate |scenariogoal 7/22809 |goto Isle of Thunder Scenario/0 58.37,42.78 |q 32655
step
Open the Gate |scenariostage 7 |goto Isle of Thunder Scenario/0 58.37,42.78 |q 32655
step
click Portal to Violet Rise
Return to the Violet Rise |complete subzone("Violet Rise") |goto Isle of Thunder Scenario/0 57.79,41.87 |q 32655
step
talk Lady Jaina Proudmoore##67992
turnin A Bold Idea##32655 |goto Isle of Thunder/0 63.24,72.23
accept The Fall of Shan Bu##32656 |goto Isle of Thunder/0 63.24,72.23
step
talk Lady Jaina Proudmoore##67992
Select _"I am ready to launch the assault [Queue for solo instance.]"_ |gossip 41765
Speak to Lady Jaina Proudmoore |q 32656/1 |goto Isle of Thunder/0 63.24,72.23
step
Enter The Fall of Shan Bu Scenario |scenariostart |q 32656
|tip Accept the invitation that pops up.
step
talk Vereesa Windrunner##69615
Select _"I am ready."_ |gossip 42150
Speak with your Assault Leader |scenariogoal 1/22742 |goto Isle of Thunder Scenario/0 58.98,43.77 |q 32656
step
Watch the dialogue
|tip Vereesa will open the doors.
Enter the Courtyard |scenariogoal 1/22799 |goto Isle of Thunder Scenario/0 57.96,42.12 |q 32656
step
kill 14 Zandalari Stoneshield##69527 |scenariogoal 1/22675 |goto Isle of Thunder Scenario/0 58.07,40.75 |q 32656
step
Retake the Bloodied Crossing |scenariostage 1 |q 32656
step
kill 2 Palace Gatekeeper##69510 |scenariogoal 2/22685 |goto Isle of Thunder Scenario/0 58.06,40.81 |q 32656
step
kill 2 Palace Gatekeeper##69510 |scenariostage 2 |q 32656
step
Watch the dialogue
|tip Taran Zhu will open the door.
Follow Taran Zhu into the Courtyard |scenariogoal 3/22807 |goto Isle of Thunder Scenario/0 59.76,38.05 |q 32656
step
Kill enemies around this area |kill Quilen Guardian##69506, Zandalari Stoneshield##69865, Shan'ze Electrocutioner##69525
|tip Taran Zhu will remove the barrier.
|tip Stand in the light for healing.
Slay #8# Zandalari and Mogu |scenariogoal 3/22734 |goto Isle of Thunder Scenario/0 59.76,38.05 |q 32656
step
Defeat Zandalri and Mogu |scenariostage 3 |q 32656
step
kill Shan Bu##69534 |scenariogoal 4/22683 |goto Isle of Thunder Scenario/0 60.34,37.30 |q 32656
|tip Move out of areas targeted on the ground.
|tip Kill any minor adds that attack.
|tip Stand in the light for healing.
step
kill Shan Bu##69534 |scenariostage 4 |q 32656
step
click Portal to the Isle of Thunder
Return to the Violet Rise |complete subzone("Violet Rise") |goto Isle of Thunder Scenario/0 58.25,42.57 |q 32656
step
talk Lady Jaina Proudmoore##67992
turnin The Fall of Shan Bu##32656 |goto Isle of Thunder/0 63.24,72.23
accept Allies in the Shadows##32706 |goto Isle of Thunder/0 63.24,72.23
step
talk Taran Zhu##70160
|tip Inside the cave.
turnin Allies in the Shadows##32706 |goto Isle of Thunder/0 51.42,46.08
accept Secrets in the Isle of Thunder##32707 |goto Isle of Thunder/0 51.42,46.08
step
collect 3 Shan'ze Ritual Stone##94221 |q 32707/1
|tip You can loot these from rares on Isle of Thunder.
|tip These can be looted once per week.
step
talk Taran Zhu##70160
|tip Inside the cave.
turnin Secrets in the Isle of Thunder##32707 |goto Isle of Thunder/0 51.42,46.08
accept Setting the Trap##32708 |goto Isle of Thunder/0 51.42,46.08
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (10-70)\\Operation: Shieldwall",{
description="This guide will take you through quests for Operation: Shieldwall.",
},[[
step
talk Lyalia##64610
accept Meet the Scout##32246 |goto Vale of Eternal Blossoms/0 83.97,58.64
step
talk Scout Lynna##68311
turnin Meet the Scout##32246 |goto Krasarang Wilds/0 85.24,29.13
step
Watch the dialogue
talk King Varian Wrynn##61796
|tip He will eventually reach the beach.
accept A King Among Men##32247 |goto Krasarang Wilds/0 85.29,29.11
stickystart "Slay_Horde"
step
talk Marshal Troteman##68331
|tip Kill any enemies he is attacking.
Find Marshal Troteman |q 32247/2 |goto Krasarang Wilds/0 79.63,25.05
step
talk Hilda Hornswaggle##68312
|tip Kill any enemies she is attacking.
Find Hilda Hornswaggle |q 32247/3 |goto Krasarang Wilds/0 80.43,17.53
step
label "Slay_Horde"
Kill Horde enemies around this area |kill Horde Raider##68332,Horde Hunter##68334,Horde Priest##67904
Slay #25# Horde |q 32247/1 |goto Krasarang Wilds/0 81.42,21.94
step
_Next to you:_
talk King Varian Wrynn##61796
turnin A King Among Men##32247 |goto Krasarang Wilds/0 81.42,21.94
accept Lion's Landing##32109 |goto Krasarang Wilds/0 81.42,21.94
step
click Flare Launcher##216609
turnin Lion's Landing##32109 |goto Krasarang Wilds/0 85.59,29.16
step
fpath Lion's Landing |goto Krasarang Wilds/0 88.33,34.70
step
Reach 950/6000 Friendly with the Operation: Shieldwall Faction |complete repval("Operation: Shieldwall",Friendly) >= 950
step
talk Admiral Taylor##67940
accept The Best Around##32380 |goto Krasarang Wilds/0 89.55,32.58
step
click Portal to Stormwind
Take the Portal to Deeprun Tram |q 32380/1 |goto Krasarang Wilds/0 89.47,32.54
step
Enter the tunnel |goto Deeprun Tram/1 52.09,46.99 < 5 |walk
|tip Jump down into the first trench and go through the door on the left with the flashing red light above it.
Run down the ramp |goto Deeprun Tram/1 52.30,79.52 < 5 |walk
Go down into Bizmo's Brawlpub |goto Deeprun Tram/2 72.55,14.32 < 1000 |c |noway |q 32380
step
Locate Bizmo's Brawlpub |q 32380/2 |goto Deeprun Tram/2 69.98,47.17
step
talk Barkeep Townsley##68526
Select _"Are you the agent that is following Connelly?"_ |gossip 41352
Locate Agent Townsley |q 32380/3 |goto Deeprun Tram/2 69.98,47.17
step
talk Barkeep Townsley##68526
turnin The Best Around##32380 |goto Deeprun Tram/2 69.98,47.17
accept To Catch A Spy##32381 |goto Deeprun Tram/2 69.98,47.17
step
talk Barkeep Townsley##68526
Select _"I'm ready for the first clue."_ |gossip 41353
collect The Pink Marmot##92975 |goto Deeprun Tram/2 69.98,47.17 |q 32380
step
talk Keith 'The Party' Westin##3001
Select _"Is this your drink order?"_ |gossip 41404
Deliver the Pink Marmot |q 32381/1 |goto Deeprun Tram/2 64.68,22.79
step
talk Barkeep Townsley##68526
Select _"Ok, hit me with another clue!"_ |gossip 41354
collect The Rusty Dagger##92976 |goto Deeprun Tram/2 69.98,47.17 |q 32380
step
talk Twix Gearspark##68540
Select _"You didn't happen to order a Rusty Dagger did you?"_ |gossip 41361
Deliver the Rusty Dagger |q 32381/2 |goto Deeprun Tram/2 49.66,34.81
step
talk Barkeep Townsley##68526
Select _"I got this! Give me the last clue."_ |gossip 41355
collect The Mogu Melon Twist##92977 |goto Deeprun Tram/2 69.98,47.17 |q 32380
step
talk Tasha Windpaw##68539
Select _"Does this drink belong to you?"_ |gossip 41359
Deliver the Mogu Melon |q 32381/3 |goto Deeprun Tram/2 67.43,59.58
step
talk Barkeep Townsley##68526
turnin To Catch A Spy##32381 |goto Deeprun Tram/2 69.98,47.17
accept Stirred, Not Shaken##32426 |goto Deeprun Tram/2 69.98,47.17
step
Run up the ramp |goto Deeprun Tram/2 28.02,20.40 < 5 |walk
Locate Professor Kilt |q 32426/1 |goto Deeprun Tram/2 23.98,81.73
step
talk Professor Kilt##68531
turnin Stirred, Not Shaken##32426 |goto Deeprun Tram/2 23.98,81.73
step
click Portal to Lion's Landing
Take the Portal to Lion's Landing |complete subzone("Lion's Landing") or completedq(32382) |goto Deeprun Tram/2 69.75,26.05
step
talk Admiral Taylor##67940
accept He's In Deep##32382 |goto Krasarang Wilds/0 89.55,32.58
step
Reach 4900/6000 Friendly with the Operation: Shieldwall Faction |complete repval("Operation: Shieldwall",Friendly) >= 4900
step
talk Admiral Taylor##67940
accept He's In Deep##32382 |goto Krasarang Wilds/0 89.55,32.58
step
talk Fennie Hornswaggle##68741
Select _"Take me to Fire Camp Bataar."_ |gossip 41244
Ride Fennie's Kite |invehicle |goto Krasarang Wilds/0 88.34,34.19 |q 32382
step
Watch the dialogue
Take Fennie's Kite to Kun-Lai Summit |q 32382/1 |goto Kun-Lai Summit/0 59.40,84.46 |notravel
step
talk Cousin Goottooth##68417
turnin He's In Deep##32382 |goto Kun-Lai Summit/0 59.20,84.26
accept Bugging Out##32383 |goto Kun-Lai Summit/0 59.20,84.26
accept He Won't Even Miss It##32397 |goto Kun-Lai Summit/0 59.20,84.26
step
use the Grummle Disguise Kit##92950
|tip Watch out for Nero the wolf.
|tip It will see through your disguise.
Put on the Grummle Disguise |havebuff Grummle Disguise##134886 |goto Kun-Lai Summit/0 59.20,84.26 |q 32397
step
clicknpc Shaggy Longhorn##68413
|tip Watch out for Nero the wolf.
|tip It will see through your disguise.
Distract Garrosh |q 32397/1 |goto Kun-Lai Summit/0 58.63,83.81
step
clicknpc Mogu Statue##68913
|tip Watch out for Nero the wolf.
|tip It will see through your disguise.
Bug the Large Tent |q 32383/1 |goto Kun-Lai Summit/0 58.34,84.05
step
click the Weathered Jounral
|tip Watch out for Nero the wolf.
|tip It will see through your disguise.
collect Weathered Journal##92804 |q 32397/2 |goto Kun-Lai Summit/0 58.26,84.20
step
clicknpc Mogu Statue##68913
|tip Watch out for Nero the wolf.
|tip It will see through your disguise.
Bug the Small Tent |q 32383/2 |goto Kun-Lai Summit/0 58.08,84.55
step
clicknpc Mogu Statue##68913
|tip Watch out for Nero the wolf.
|tip It will see through your disguise.
Bug the Supplies |q 32383/3 |goto Kun-Lai Summit/0 58.22,84.93
step
talk Cousin Goottooth##68417
turnin Bugging Out##32383 |goto Kun-Lai Summit/0 59.20,84.26
turnin He Won't Even Miss It##32397 |goto Kun-Lai Summit/0 59.20,84.26
step
Reach 2850/12000 Honored with the Operation: Shieldwall Faction |complete repval("Operation: Shieldwall",Honored) >= 2850
step
talk Admiral Taylor##67940
accept The Kirin Tor##32331 |goto Krasarang Wilds/0 89.55,32.58
step
click Portal to The Purple Parlor
Use the Portal to The Purple Parlor |q 32331/1 |goto Krasarang Wilds/0 89.20,33.57
step
talk Anduin Wrynn##68106
turnin The Kirin Tor##32331 |goto Dalaran MoP/1 26.75,39.01
accept The Fate of Dalaran##32362 |goto Dalaran MoP/1 26.75,39.01
step
talk Lady Jaina Proudmoore##68108
Select _"I would commit our order to an Alliance victory!"_ |gossip 41501
Select _"I would struggle to maintain our neutrality."_ |gossip 41503
|tip Choose the dialogue option you prefer.
Speak with Jaina Proudmoore |q 32362/1 |goto Dalaran MoP/1 26.79,39.23
step
talk Anduin Wrynn##68106
turnin The Fate of Dalaran##32362 |goto Dalaran MoP/1 26.75,39.01
step
click Portal to Lion's Landing
Take the Portal to Lion's Landing |complete subzone("Lion's Landing") or completedq(32193) |goto Dalaran MoP/1 22.62,39.65
step
Reach 6800/12000 Honored with the Operation: Shieldwall Faction |complete repval("Operation: Shieldwall",Honored) >= 6800
step
talk Admiral Taylor##67940
accept To Mogujia##32193 |goto Krasarang Wilds/0 89.55,32.58
step
talk Fennie Hornswaggle##68741
Select _"Take me to Mogujia."_ |gossip 41242
Ride Fennie's Kite |invehicle |goto Krasarang Wilds/0 88.34,34.19 |q 32193
step
Watch the dialogue
Take Fennie's Kite to Mogujia |q 32193/1 |goto Kun-Lai Summit/0 59.58,76.27 |notravel
step
talk Brann Bronzebeard##67682
turnin To Mogujia##32193 |goto Kun-Lai Summit/0 59.84,75.95
step
talk Hilda Hornswaggle##67716
accept The Source of Korune Power##32243 |goto Kun-Lai Summit/0 59.81,76.05
step
talk Sarannha Skyglaive##67734
accept Bad Blood##32194 |goto Kun-Lai Summit/0 59.97,75.33
stickystart "Collect_Korune_Artifacts"
step
kill Korune Spellweaver##68815+
collect Sha-Touched Claw##93190 |q 32243/1 |goto Kun-Lai Summit/0 58.12,70.92
step
label "Collect_Korune_Artifacts"
Kill enemies around this area |kill Silvermoon Runeseeker##67806,Dominance Mage##67804,Dominance Knight##67805
collect 5 Korune Artifact##93189 |q 32194/1 |goto Kun-Lai Summit/0 58.42,74.59
step
talk Sarannha Skyglaive##67734
turnin Bad Blood##32194 |goto Kun-Lai Summit/0 59.97,75.33
step
talk Hilda Hornswaggle##67716
turnin The Source of Korune Power##32243 |goto Kun-Lai Summit/0 59.81,76.05
step
Reach 10750/12000 Honored with the Operation: Shieldwall Faction |complete repval("Operation: Shieldwall",Honored) >= 10750
step
talk Admiral Taylor##67940
accept Anduin's Plea##32315 |goto Krasarang Wilds 89.55,32.58
step
talk Fennie Hornswaggle##68741
Select _"Take me to the Shrine of Seven Stars."_ |gossip 41241
Ride Fennie's Kite |q 32315/1 |goto Krasarang Wilds 88.34,34.19
step
Watch the dialogue
Take Fennie's Kite to Shrine of Seven Stars |outvehicle |goto Vale of Eternal Blossoms/0 86.23,63.10 |q 32315 |notravel
step
talk Anduin Wrynn##67948
|tip Upstairs inside the building.
turnin Anduin's Plea##32315 |goto Shrine of Seven Stars/2 66.18,33.30
accept Heart Of The Alliance##32316 |goto Shrine of Seven Stars/2 66.18,33.30
step
clicknpc Sha-Touched Footman##68006+
|tip They look like black and white NPCs laying on the ground on shifting patches of black inside the building.
kill Sha-Touched Footman##68006+
Save #6# Sha-Touched Footmen |q 32316/1 |goto Shrine of Seven Stars/1 46.67,45.13
step
talk King Varian Wrynn##68242
|tip Upstairs inside the building.
turnin Heart Of The Alliance##32316 |goto Shrine of Seven Stars/2 67.40,43.35
step
Reach 2700/12000 Revered with the Operation: Shieldwall Faction |complete repval("Operation: Shieldwall",Revered) >= 2700
step
talk Admiral Taylor##67940
accept The Kun-Lai Expedition##32370 |goto Krasarang Wilds/0 89.55,32.58
step
talk Fennie Hornswaggle##68741
Select _"Take me to the Grummle Bazaar."_ |gossip 41240
Ride Fennie's Kite |invehicle |goto Krasarang Wilds/0 88.34,34.19 |q 32370
step
Watch the dialogue
Take Fennie's Kite to the Grummle Bazaar |q 32370/1 |goto Kun-Lai Summit/0 65.11,60.77 |notravel
step
talk Agent Connelly##68375
turnin The Kun-Lai Expedition##32370 |goto Kun-Lai Summit/0 65.11,60.77
accept A Kor'kron In Our Midst##32377 |goto Kun-Lai Summit/0 65.11,60.77
stickystart "Collect_Kor'kron_Armor"
stickystart "Collect_Kor'kron_Boots"
step
Kill Kor'kron enemies around this area |kill Kor'kron Reaver##68367,Kor'Kron Honor Guard##68369,Kor'Kron Scout##68368
collect Kor'kron Helmet##92763 |goto Kun-Lai Summit/0 60.94,55.97 |q 32377
step
label "Collect_Kor'kron_Armor"
Kill Kor'kron enemies around this area |kill Kor'kron Reaver##68367,Kor'Kron Honor Guard##68369,Kor'Kron Scout##68368 |notinsticky
collect Kor'kron Armor##92764 |goto Kun-Lai Summit/0 60.94,55.97 |q 32377
step
label "Collect_Kor'kron_Boots"
Kill Kor'kron enemies around this area |kill Kor'kron Reaver##68367,Kor'Kron Honor Guard##68369,Kor'Kron Scout##68368 |notinsticky
collect Kor'kron Boots##92765 |goto Kun-Lai Summit/0 60.94,55.97 |q 32377
step
use the Kor'Kron Helmet##92763
collect Kor'kron Disguise##92766 |q 32377/1 |goto Kun-Lai Summit/0 60.94,55.97
step
Click the Complete Quest Box
turnin A Kor'kron In Our Midst##32377 |goto Kun-Lai Summit/0 60.94,55.97
accept Memory Wine##32371 |goto Kun-Lai Summit/0 60.94,55.97
step
use the Kor'kron Disguise##92766
Use your Kor'kron Disguise |q 32371/1
step
click Memory Wine##216625
Drink the Memory Wine |q 32371/2 |goto Kun-Lai Summit/0 60.36,55.31
step
Watch the dialogue
Witness Shan Kien's Past |q 32371/3
step
talk Agent Connelly##68375
turnin Memory Wine##32371 |goto Kun-Lai Summit/0 65.11,60.77
step
Reach 6650/12000 Revered with the Operation: Shieldwall Faction |complete repval("Operation: Shieldwall",Revered) >= 6650
step
talk Admiral Taylor##67940
accept The Ruins of Korune##32393 |goto Krasarang Wilds/0 89.55,32.58
step
talk Fennie Hornswaggle##68741
Select _"Take me to the Ruins of Korune."_ |gossip 41239
Ride Fennie's Kite |invehicle |goto Krasarang Wilds/0 88.34,34.19 |q 32393
step
Watch the dialogue
Take Fennie's Kite to the Ruins of Korune |q 32393/1 |goto Kun-Lai Summit/0 32.82,25.84
step
talk Sarannha Skyglaive##67734
turnin The Ruins of Korune##32393 |goto Kun-Lai Summit/0 32.89,26.27
accept The Divine Bell##32394 |goto Kun-Lai Summit/0 32.89,26.27
step
kill Dreadweaver Avartu##68504 |q 32394/1 |goto Kun-Lai Summit/21 59.03,26.25
|tip Downstairs inside the ruins.
|tip Avoid red and yellow tiles, and ones with green arrows.
|tip Only blue tiles are safe to walk on.
|tip Kill mobs that attack you along the way.
|tip Avoid standing in rumbling patches on the ground and large red circles.
|tip Keep moving quickly.
step
click Divine Bell
|tip Downstairs inside the ruins.
Recover the Divine Bell |q 32394/2 |goto Kun-Lai Summit/21 61.52,20.84
step
talk Sarannha Skyglaive##67734
turnin The Divine Bell##32394 |goto Kun-Lai Summit/21 61.91,25.71
step
Reach 8665/12000 Revered with the Operation: Shieldwall Faction |complete repval("Operation: Shieldwall",Revered) >= 8665
step
talk Admiral Taylor##67940
accept Darnassus Attacked?##32414 |goto Krasarang Wilds/0 89.55,32.58
step
talk Seamus Goldenkicks##67848
Speak with Seamus Goldenkicks |q 32414/1 |goto Krasarang Wilds/0 89.10,33.75
step
talk Seamus Goldenkicks##67848
Select _"I need a portal to Darnassus."_ |gossip 40720
Teleport to Darnassus |complete subzone("Cenarion Enclave") or completedq(32414) |goto Krasarang Wilds/0 89.10,33.75
step
talk Lady Jaina Proudmoore##68651
turnin Darnassus Attacked?##32414 |goto Darnassus/0 38.90,32.78
accept Tracking the Thieves##32460 |goto Darnassus/0 38.90,32.78
step
Track the Thieves |q 32460/1
|tip Follow the trail of white orbs out of Darnassus and to the portal in Teldrassil.
|tip You must reveal the entire trail to get credit.
step
talk Lady Jaina Proudmoore##68651
turnin Tracking the Thieves##32460 |goto Teldrassil/0 39.98,50.49
accept Jaina's Resolution##32416 |goto Teldrassil/0 39.98,50.49
step
click Portal to Dalaran
Take the portal from Darnassus to Dalaran |q 32416/1
step
Watch the dialogue
talk Vereesa Windrunner##68687
turnin Jaina's Resolution##32416 |goto Dalaran MoP/1 34.27,48.70
accept Nowhere to Run##32421 |goto Dalaran MoP/1 34.27,48.70
accept Nowhere to Hide##32419 |goto Dalaran MoP/1 34.27,48.70
accept Sewer Cleaning##32417 |goto Dalaran MoP/1 34.27,48.70
accept Unfair Trade##32418 |goto Dalaran MoP/1 34.27,48.70
accept Cashing Out##32420 |goto Dalaran MoP/1 34.27,48.70
step
kill Inkmaster Aelon##68752 |q 32418/1 |goto Dalaran MoP/1 41.94,36.64
|tip He walks around inside the building.
step
kill Sintharia Cinderweave##68755 |q 32418/4 |goto Dalaran MoP/1 36.35,32.58
|tip She walks around inside the building.
step
kill Gearmage Astalon |q 32418/3 |goto Dalaran MoP/1 39.46,24.51
|tip Inside the building.
step
kill Tolyria##68754 |q 32418/2 |goto Dalaran MoP/1 43.34,26.01
|tip Inside the building.
step
kill Magister Brasael##68751 |q 32420/1 |goto Dalaran MoP/1 53.55,15.51
|tip Inside the building.
step
Kill Sunreaver enemies around this area |kill Sunreaver Mage##68050, Sunreaver Captain##68761, Sunreaver Aegis##68051
Slay #16# Sunreavers in the Sunreaver's Sanctuary |q 32419/1 |goto Dalaran MoP/1 59.41,31.33
step
kill Sunreaver Dragonhawk##68762+
Subdue #5# Sunreaver Dragonhawks |q 32421/1 |goto Dalaran MoP/1 72.71,45.70
step
Enter the tunnel |goto Dalaran MoP/1 62.34,50.07 < 5 |walk
Enter the Dalaran Sewers |goto Dalaran MoP/0 65.74,47.44 < 1000 |c |noway |q 32417
step
Kill Sunreaver enemies around this area |kill Sunreaver Pyromancer##68757, Sunreaver Assassin##68756, Sunreaver Frosthand##68758
Slay #12# Sunreavers in the Dalaran Sewers |q 32417/1 |goto Dalaran MoP/0 46.31,43.06
step
Enter the tunnel |goto Dalaran MoP/0 33.97,42.89 < 5 |walk
Exit the tunnel |goto Dalaran MoP/0 27.13,42.62 < 4 |walk
Leave the Dalaran Sewers |goto Dalaran MoP/1 34.75,45.47 < 1000 |c |noway |q 32417
step
talk Vereesa Windrunner##68687
turnin Nowhere to Run##32421 |goto Dalaran MoP/1 34.27,48.70
turnin Nowhere to Hide##32419 |goto Dalaran MoP/1 34.27,48.70
turnin Sewer Cleaning##32417 |goto Dalaran MoP/1 34.27,48.70
turnin Unfair Trade##32418 |goto Dalaran MoP/1 34.27,48.70
turnin Cashing Out##32420 |goto Dalaran MoP/1 34.27,48.70
accept What Had To Be Done##32423 |goto Dalaran MoP/1 34.27,48.70
step
talk Vereesa Windrunner##68687
Speak with Vereesa Windrunner |q 32423/1 |goto Dalaran MoP/1 34.27,48.70
step
talk Vereesa Windrunner##68687
Select _"I'm ready to return to Pandaria."_ |gossip 41763
Return to Lion's Landing |complete subzone("Lion's Landing") or completedq(32423) |goto Dalaran MoP/1 34.27,48.70
step
talk King Varian Wrynn##68690
|tip Inside the building.
turnin What Had To Be Done##32423 |goto Krasarang Wilds/0 87.91,33.10
step
Reach 15500/12000 Revered with the Operation: Shieldwall Faction |complete repval("Operation: Shieldwall",Revered) >= 15500
step
talk Admiral Taylor##67940
accept The Harmonic Mallet##32355 |goto Krasarang Wilds/0 89.55,32.58
step
talk Fennie Hornswaggle##68741
Select _"Take me to the Valley of Emperors."_ |gossip 41237
Ride Fennie's Kite |invehicle |goto Krasarang Wilds/0 88.34,34.19 |q 32355
step
Watch the dialogue
Take Fennie's Kite to the Tomb of Conquerors |q 32355/1 |goto Kun-Lai Summit/0 53.28,45.98 |notravel
step
talk Anduin Wrynn##68004
turnin The Harmonic Mallet##32355 |goto Kun-Lai Summit/0 52.96,46.45
accept The Monkey King##32321 |goto Kun-Lai Summit/0 52.96,46.45
step
talk Anduin Wrynn##68004
Select _"Anduin, why are we here?"_ |gossip 41051
|tip Make sure you choose this dialogue option to start escorting him.
Talk with Anduin Wrynn |q 32321/1 |goto Kun-Lai Summit/0 52.96,46.45
step
Enter the Tomb of Conquerors |goto Kun-Lai Summit/17 88.1,54.6 < 5 |c |q 32321 |walk
|tip Make sure you choose the dialogue option with Anduin to start escorting him.
step
Follow the path |goto Kun-Lai Summit/17 65.64,75.92 < 10 |walk
Follow the path |goto Kun-Lai Summit/0 50.45,52.43 < 10 |walk
Run down the stairs |goto Kun-Lai Summit/0 48.78,51.86 < 10 |walk
Escort Anduin Wrynn |q 32321/2 |goto Kun-Lai Summit/0 48.87,50.48
|tip Stepping on the tile with arrows on it will trigger the wall cannons to fire.
|tip Avoid the tiles on the floor with designs on them.
|tip Yellow and red tiles take a couple of seconds to activate before triggering.
step
talk Anduin Wrynn##68004
Select _"I'm ready. Release the Monkey King."_ |gossip 41925
Watch the dialogue
|tip Anduin will cast a spell and The Jade Warlord will attack you.
kill The Jade Warlord##68005
Release The Monkey King |q 32321/3 |goto Kun-Lai Summit/0 48.87,50.48
step
talk The Monkey King##68003
|tip He should be standing at the center of the room next to Anduin.
turnin The Monkey King##32321 |goto Kun-Lai Summit/0 48.80,50.47
accept The First Riddle: Mercy##32332 |goto Kun-Lai Summit/0 48.80,50.47
accept The Second Riddle: Fellowship##32333 |goto Kun-Lai Summit/0 48.80,50.47
accept The Third Riddle: Strength##32334 |goto Kun-Lai Summit/0 48.80,50.47
step
Follow the path |goto Kun-Lai Summit/0 50.45,52.43 < 10 |walk
Run up the stairs |goto Kun-Lai Summit/17 74.49,74.88 < 10 |walk
Leave the Tomb of Conquerors |goto Kun-Lai Summit/0 52.83,46.78 < 10 |c |walk |q 32334
step
Enter the building |goto Kun-Lai Summit/0 68.62,45.96 < 10 |walk
talk The Monkey King##68538
|tip Down the ramp inside the building.
Select _"I challenge you."_ |gossip 41838
|tip He will attack you.
Defeat the Challenger |q 32334/1 |goto Kun-Lai Summit/0 70.14,45.83
step
click Hammer of Fellowship
Ring the Gong of Fellowship |q 32333/1 |goto The Jade Forest/0 33.43,34.24
step
kill Sam the Wise##64694
|tip He walks out and becomes attackable.
Defeat the Challenger |q 32333/2 |goto The Jade Forest/0 33.65,34.36
step
click A Keg of Metal Brew
|tip It appears after defeating Sam.
collect The Metal Brew##92557 |q 32333/3 |goto The Jade Forest/0 33.73,34.44
step
click Untamed Amber##216360
kill Untamed Ambertail##68117
|tip It appears and becomes attackable.
collect Untamed Amber##92539 |q 32332/1 |goto Dread Wastes/0 65.68,71.67
|tip Loot it from the Untamed Ambertail.
step
talk The Monkey King##68538
turnin The First Riddle: Mercy##32332 |goto Krasarang Wilds/0 88.87,31.74
turnin The Second Riddle: Fellowship##32333 |goto Krasarang Wilds/0 88.87,31.74
turnin The Third Riddle: Strength##32334 |goto Krasarang Wilds/0 88.87,31.74
accept The Greatest Prank##32335 |goto Krasarang Wilds/0 88.87,31.74
step
Watch the dialogue
Listen to The Monkey King's Story |q 32335/1 |goto Krasarang Wilds/0 88.87,31.74
step
talk Anduin Wrynn##68004
turnin The Greatest Prank##32335 |goto Krasarang Wilds/0 88.98,31.71
step
Reach 18500/12000 Revered with the Operation: Shieldwall Faction |complete repval("Operation: Shieldwall",Revered) >= 18500
step
talk The Monkey King##68538
accept The Handle##32336 |goto Krasarang Wilds/0 88.87,31.74
accept The Head##32337 |goto Krasarang Wilds/0 88.87,31.74
accept The Harmonic Ointment##32338 |goto Krasarang Wilds/0 88.87,31.74
step
talk Chief Ingoo Ingoo XVII##68545
Select _"But that is the real Monkey King."_ |gossip 40881
|tip He will attack you.
kill Chief Ingoo Ingoo XVII##68545
collect Mallet Handle##92561 |q 32336/1 |goto Krasarang Wilds/0 43.56,86.06
step
talk The Monkey King##68544
turnin The Handle##32336 |goto Krasarang Wilds/0 43.46,86.54
step
talk Royal Finder##68554
|tip Up on the cliff near the foliage.
Find the Royal Finder |q 32337/1 |goto Valley of the Four Winds/0 23.09,30.66
step
click Mallet Head##216421
|tip Down inside the tunnel in front of you.
|tip You will need to kill Skiggit to reach it.
collect Mallet Head##92560 |q 32337/2 |goto Valley of the Four Winds/0 25.01,28.04
step
kill The Blade##61010
|tip This enemy is elite and may require a group.
collect Harmonic Ointment##92562 |q 32338/1 |goto Townlong Steppes/0 62.67,34.09
step
talk The Monkey King##68538
turnin The Head##32337 |goto Krasarang Wilds/0 88.87,31.74
turnin The Harmonic Ointment##32338 |goto Krasarang Wilds/0 88.87,31.74
step
Reach Exalted with the Operation: Shieldwall Faction |complete rep("Operation: Shieldwall") == Exalted
step
talk Admiral Taylor##67940
accept The Bell Speaks##32400 |goto Krasarang Wilds/0 89.55,32.58
step
talk Fennie Hornswaggle##68741
Select _"Take me to Emperor's Reach."_ |gossip 41236
Ride Fennie's Kite |invehicle |goto Krasarang Wilds/0 88.34,34.19 |q 32400
step
Watch the dialogue
Find Anduin at Emperor's Reach |q 32400/1 |goto Kun-Lai Summit/0 56.14,33.85 |notravel
step
talk Anduin Wrynn##68939
turnin The Bell Speaks##32400 |goto Kun-Lai Summit/0 56.38,34.31
accept Breath of Darkest Shadow##32401 |goto Kun-Lai Summit/0 56.38,34.31
step
Watch the dialogue
kill Kor'kron Reaver##68940+
|tip Wait until the Horde become afflicted by the Sha.
|tip Once the Juggernauts are defeated, Ishi will get possessed.
kill Ishi##68936 |q 32401/1 |goto Kun-Lai Summit/0 55.95,32.10
|tip Run through gold orbs for healing.
|tip Stay out of shadow areas on the ground.
step
Watch the dialogue
Destroy the Divine Bell |q 32401/2 |goto Kun-Lai Summit/0 55.95,32.10
step
talk Anduin Wrynn##68987
turnin Breath of Darkest Shadow##32401 |goto Kun-Lai Summit/0 55.96,31.87
accept The Silence##32455 |goto Kun-Lai Summit/0 55.96,31.87
step
use the Alliance Flare Gun##93362
Use the Alliance Flare Gun |q 32455/1 |goto Kun-Lai Summit/0 55.95,32.10
step
Enter the building |goto Krasarang Wilds/0 87.12,32.19 < 7 |walk
talk Admiral Taylor##69090
|tip Upstairs inside the building.
turnin The Silence##32455 |goto Krasarang Wilds/0 87.72,33.07
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (10-70)\\Peak of Serenity\\Monk Daily Quest",{
monkquest=10,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31840) or not completedq(31841) or not completedq(31842) or not completedq(31843) or not completedq(31844) or not completedq(31845) or not completedq(31846) and level >= 10 end,
condition_end=function() return completedq(31840) end,
description="This guide will walk you through the Monk daily quest for extra experience.",
},[[
step
talk Master Hight##66260
|tip Inside the building.
accept Practice Makes Perfect: Master Cheng##31840	|goto Kun-Lai Summit/0 48.59,42.70	|or
accept Practice Makes Perfect: Master Kistane##31842	|goto Kun-Lai Summit/0 48.59,42.70	|or
accept Practice Makes Perfect: Master Yoon##31843	|goto Kun-Lai Summit/0 48.59,42.70	|or
accept Practice Makes Perfect: Master Cheng##31844	|goto Kun-Lai Summit/0 48.59,42.70	|or
accept Practice Makes Perfect: Master Tsang##31845	|goto Kun-Lai Summit/0 48.59,42.70	|or
accept Practice Makes Perfect: Master Hsu##31846	|goto Kun-Lai Summit/0 48.59,42.70	|or
step
talk Master Cheng##66258
Select _"I wish to challenge you."_ |gossip 41015
|tip Follow him as he walks.
kill Master Cheng##66138
|tip Use the {o}/bow{} emote on him to begin the fight. |script DoEmote("BOW")
Complete Master Cheng's Training |q 31840/1 |goto Kun-Lai Summit/0 47.07,40.15
|only if haveq(31840) or completedq(31840)
step
talk Master Kistane##66253
Select _"I wish to challenge you."_ |gossip 40841
|tip Follow her as she walks.
kill Master Kistane##65899
|tip Use the {o}/bow{} emote on her to begin the fight. |script DoEmote("BOW")
Complete Master Kistane's Training |q 31842/1 |goto Kun-Lai Summit/0 48.04,39.01
|only if haveq(31842) or completedq(31842)
step
talk Master Yoon##66255
|tip He walks around this area.
Select _"I wish to challenge you."_ |gossip 40843
|tip Follow him as he walks.
kill Master Yoon##66073
|tip Use the {o}/bow{} emote on him to begin the fight. |script DoEmote("BOW")
Complete Master Yoon's Training |q 31843/1 |goto Kun-Lai Summit/0 48.82,40.47
|only if haveq(31843) or completedq(31843)
step
talk Master Cheng##66256
Select _"I wish to challenge you."_ |gossip 40975
|tip Follow her as she walks.
kill Master Cheng##66180
|tip Use the {o}/bow{} emote on her to begin the fight. |script DoEmote("BOW")
Complete Master Cheng's Training |q 31844/1 |goto Kun-Lai Summit/0 48.53,41.50
|only if haveq(31844) or completedq(31844)
step
talk Master Tsang##66257
Select _"I wish to challenge you."_ |gossip 41014
|tip Follow him as he walks.
Kill the enemies that attack
kill Master Tsang##66149
|tip Use the {o}/bow{} emote on him to begin the fight. |script DoEmote("BOW")
Complete Master Tsang's Training |q 31845/1 |goto Kun-Lai Summit/0 48.06,41.37
|only if haveq(31845) or completedq(31845)
step
talk Master Hsu##66207
Select _"I wish to challenge you."_ |gossip 40709
|tip Follow him as he walks.
kill Master Hsu##65977
|tip Use the {o}/bow{} emote on him to begin the fight. |script DoEmote("BOW")
Complete Master Hsu's Training |q 31846/1 |goto Kun-Lai Summit/0 47.49,40.94
|only if haveq(31846) or completedq(31846)
step
talk Master Hight##66260
|tip Inside the building.
turnin Practice Makes Perfect: Master Cheng##31840	|goto Kun-Lai Summit/0 48.59,42.70	|only if haveq(31840) or completedq(31840)
turnin Practice Makes Perfect: Master Kistane##31842	|goto Kun-Lai Summit/0 48.59,42.70	|only if haveq(31842) or completedq(31842)
turnin Practice Makes Perfect: Master Yoon##31843	|goto Kun-Lai Summit/0 48.59,42.70	|only if haveq(31843) or completedq(31843)
turnin Practice Makes Perfect: Master Cheng##31844	|goto Kun-Lai Summit/0 48.59,42.70	|only if haveq(31844) or completedq(31844)
turnin Practice Makes Perfect: Master Tsang##31845	|goto Kun-Lai Summit/0 48.59,42.70	|only if haveq(31845) or completedq(31845)
turnin Practice Makes Perfect: Master Hsu##31846	|goto Kun-Lai Summit/0 48.59,42.70	|only if haveq(31846) or completedq(31846)
]])
QuestCore:RegisterGuide("Leveling Guides\\Pandaria (10-70)\\Peak of Serenity\\Monk Quests",{
monkquest=10,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31834) and level >= 10 end,
condition_end=function() return completedq(31834) end,
description="This guide will walk you through the Monk class quests.",
},[[
step
ding 10
|tip Use the {o}Leveling{} guides.
step
talk Master Hight##66260
|tip Inside the building.
accept Begin Your Training: Master Cheng##31834 |goto Kun-Lai Summit/0 48.59,42.70
step
talk Master Cheng##66258
Select _"I wish to challenge you."_ |gossip 41015
|tip Follow him as he walks.
kill Master Cheng##66138
|tip Use the {o}/bow{} emote on him to begin the fight. |script DoEmote("BOW")
Complete Master Cheng's Training |q 31834/1 |goto Kun-Lai Summit/0 47.07,40.15
step
talk Master Hight##66260
|tip Inside the building.
turnin Begin Your Training: Master Cheng##31834 |goto Kun-Lai Summit/0 48.59,42.70
accept Continue Your Training: Master Kistane##31835 |goto Kun-Lai Summit/0 48.59,42.70
step
talk Master Kistane##66253
Select _"I wish to challenge you."_ |gossip 40841
|tip Follow her as she walks.
kill Master Kistane##65899
|tip Use the {o}/bow{} emote on her to begin the fight. |script DoEmote("BOW")
Complete Master Kistane's Training |q 31835/1 |goto Kun-Lai Summit/0 48.04,39.01
step
talk Master Hight##66260
|tip Inside the building.
turnin Continue Your Training: Master Kistane##31835 |goto Kun-Lai Summit/0 48.59,42.70
step
ding 15
|tip Use the {o}Leveling{} guides.
step
talk Master Hight##66260
|tip Inside the building.
accept Continue Your Training: Master Yoon##31836 |goto Kun-Lai Summit/0 48.59,42.70
step
talk Master Yoon##66255
|tip He walks around this area.
Select _"I wish to challenge you."_ |gossip 40843
|tip Follow him as he walks.
kill Master Yoon##66073
|tip Use the {o}/bow{} emote on him to begin the fight. |script DoEmote("BOW")
Complete Master Yoon's Training |q 31836/1 |goto Kun-Lai Summit/0 48.82,40.47
step
talk Master Hight##66260
|tip Inside the building.
turnin Continue Your Training: Master Yoon##31836 |goto Kun-Lai Summit/0 48.59,42.70
step
ding 20
|tip Use the {o}Leveling{} guides.
step
talk Master Hight##66260
|tip Inside the building.
accept Continue Your Training: Master Cheng##31837 |goto Kun-Lai Summit/0 48.59,42.70
step
talk Master Cheng##66256
Select _"I wish to challenge you."_ |gossip 40975
|tip Follow her as she walks.
kill Master Cheng##66180
|tip Use the {o}/bow{} emote on her to begin the fight. |script DoEmote("BOW")
Complete Master Cheng's Training |q 31837/1 |goto Kun-Lai Summit/0 48.53,41.50
step
talk Master Hight##66260
|tip Inside the building.
turnin Continue Your Training: Master Cheng##31837 |goto Kun-Lai Summit/0 48.59,42.70
step
ding 25
|tip Use the {o}Leveling{} guides.
step
talk Master Hight##66260
|tip Inside the building.
accept Continue Your Training: Master Tsang##31838 |goto Kun-Lai Summit/0 48.59,42.70
step
talk Master Tsang##66257
Select _"I wish to challenge you."_ |gossip 41014
|tip Follow him as he walks.
Kill the enemies that attack
kill Master Tsang##66149
|tip Use the {o}/bow{} emote on him to begin the fight. |script DoEmote("BOW")
Complete Master Tsang's Training |q 31838/1 |goto Kun-Lai Summit/0 48.06,41.37
step
talk Master Hight##66260
|tip Inside the building.
turnin Continue Your Training: Master Tsang##31838 |goto Kun-Lai Summit/0 48.59,42.70
step
ding 30
|tip Use the {o}Leveling{} guides.
step
talk Master Hight##66260
|tip Inside the building.
accept Continue Your Training: Master Hsu##31839 |goto Kun-Lai Summit/0 48.59,42.70
step
talk Master Hsu##66207
Select _"I wish to challenge you."_ |gossip 40709
|tip Follow him as he walks.
kill Master Hsu##65977
|tip Use the {o}/bow{} emote on him to begin the fight. |script DoEmote("BOW")
Complete Master Hsu's Training |q 31839/1 |goto Kun-Lai Summit/0 47.49,40.94
step
talk Master Hight##66260
|tip Inside the building.
turnin Continue Your Training: Master Hsu##31839 |goto Kun-Lai Summit/0 48.59,42.70
step
ding 35
|tip Use the {o}Leveling{} guides.
step
talk Master Hight##66260
|tip Inside the building.
accept Complete Your Training: The Final Test##31944 |goto Kun-Lai Summit/0 48.59,42.70
step
talk Master Hight##66744
Select _"I am ready."_ |gossip 41235
|tip Follow him as he walks.
kill Master Hight##66732
|tip Use the {o}/bow{} emote on him to begin the fight. |script DoEmote("BOW")
Complete the Final Test |q 31944/1 |goto Kun-Lai Summit/0 48.32,41.52
step
talk Master Hight##66260
|tip Inside the building.
turnin Complete Your Training: The Final Test##31944 |goto Kun-Lai Summit/0 48.59,42.70
]])
QuestCore:RegisterGuide("Leveling Guides\\The Loremaster\\Loremaster of Pandaria",{
achieveid={6541},
patch='50004',
description="Complete all the storyline achievements in all the zones of the game.",
},[[
step
Use the Pandaria Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
Jade Forest Quests |achieve 6300 |loadguide "Leveling Guides\\Pandaria (10-70)\\The Jade Forest (10-70)"
Valley of the Four Winds Quests |achieve 6301 |loadguide "Leveling Guides\\Pandaria (10-70)\\Valley of the Four Winds (15-70)"
Townlong Steppes Quests |achieve 6539 |loadguide "Leveling Guides\\Pandaria (10-70)\\Townlong Steppes (25-70)"
Dread Wastes Quests |achieve 6540 |loadguide "Leveling Guides\\Pandaria (10-70)\\Dread Wastes (30-70)"
Krasarang Wilds Quests |achieve 6535 |loadguide "Leveling Guides\\Pandaria (10-70)\\Krasarang Wilds (15-70)"
Kun-Lai Summit Quests |achieve 6537 |loadguide "Leveling Guides\\Pandaria (10-70)\\Kun-Lai Summit (20-70)"
step
Congratulations, you have _earned_ the _Loremaster of Pandaria_ achievement!
]])
