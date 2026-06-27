-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Blood Elf Heritage Armor",{
description="This guide will walk you through unlocking the Blood Elf Heritage Armor.",
patch='80100',
},[[
step
Reach Level 60 On Any Character |achieve 14783
|tip In order to start core race heritage armor questlines, you must have at least one level 60 character on your account.
|tip Use various leveling guides to level any character to 60 or higher.
step
Reach Level 50 as a Blood Elf Character |complete BloodElf and level >= 50
|tip You must complete this on a 50+ Blood Elf character.
|tip Refer to our various leveling guides to help you accomplish this.
step
talk Ambassador Dawnsworn##146939
accept The Pride of the Sin'dorei##53791 |goto Orgrimmar/1 39.13,79.01
step
talk Lor'themar Theron##16802
|tip Inside the building.
turnin The Pride of the Sin'dorei##53791 |goto Silvermoon City/0 53.81,20.24
accept Walk Among Ghosts##53734 |goto Silvermoon City/0 53.81,20.24
step
Leave the building |goto Silvermoon City/0 57.54,24.59 < 15 |walk
Follow the path |goto Silvermoon City/0 72.82,44.08 < 20 |only if walking
Follow the path |goto Silvermoon City/0 75.49,58.69 < 15 |only if walking
Continue following the path |goto Silvermoon City/0 72.14,85.53 < 20 |only if walking
talk Lor'themar Theron##145015
turnin Walk Among Ghosts##53734 |goto Ghostlands/0 46.29,31.99
accept Writing on the Wall##53882 |goto Ghostlands/0 46.29,31.99
step
Follow the road |goto Ghostlands/0 43.50,44.38 < 30 |only if walking
Continue following the road |goto Ghostlands/0 45.47,72.32 < 30 |only if walking
click Lamp
Light the First Flame |q 53882/1 |goto Ghostlands/0 47.74,84.01
step
_Next to you:_
Watch the dialogue
talk Lor'themar Theron
turnin Writing on the Wall##53882
accept The First to Fall##53735
step
Follow the path down |goto Ghostlands/0 44.85,70.37 < 30 |only if walking
Shed Light on the First Battlefield |q 53735/1 |goto Ghostlands/0 37.08,65.51
|tip Use the "Light the Way" ability.
|tip It appears as a button on the screen.
step
kill Risen Abomination##145120, Risen Attacker##144983, Necrotic Echo##145121
Fight Back the Undead |q 53735/2 |goto Ghostlands/0 36.90,67.18
step
_Next to you:_
talk Lor'themar Theron
|talk Lor'themar Theron##145005
turnin The First to Fall##53735
accept Lament of the Highborne##53736
step
Follow the road |goto Ghostlands/0 24.94,56.44 < 30 |only if walking
Follow the road up |goto Ghostlands/0 18.68,58.41 < 30 |only if walking
kill 6 Tormented Ranger##148014 |q 53736/1 |goto Ghostlands/0 12.43,56.92
step
click Lamp
|tip At the top of the structure.
Light the Second Flame |q 53736/2 |goto Ghostlands/0 12.40,56.86
step
_Next to you:_
Watch the dialogue
talk Lor'themar Theron
|talk Lor'themar Theron##145005
turnin Lament of the Highborne##53736
accept The Day Hope Died##53737
step
Shed Light at Sylvanas' Fall |q 53737/1 |goto Eversong Woods/0 51.21,69.28
|tip Use the "Light the Way" ability.
|tip It appears as a button on the screen.
step
clicknpc Silvermoon Ballista##147006
Man a Silvermoon Ballista |q 53737/2 |goto Eversong Woods/0 51.44,69.04
step
Kill enemies around this area
|tip Use the ability on your action bar.
Kill #50# Undead |q 53737/3 |goto Eversong Woods/0 51.44,68.88
step
_Next to you:_
talk Lor'themar Theron
|talk Lor'themar Theron##145005
turnin The Day Hope Died##53737
accept Defense of Quel'Danas##53738
step
Follow the path up |goto Eversong Woods/0 48.52,71.91 < 20 |only if walking
talk Skymaster Brightdawn##44036
Select _"I need a direct flight to Quel'danas."_ |gossip 49923
Talk to Skymaster Brightdawn |q 53738/1 |goto Eversong Woods/0 43.94,69.98
step
Arrive at the Isle of Quel'danas |goto Isle of Quel'Danas/0 48.37,25.07 < 20 |c |q 53738 |notravel
step
talk Lady Liadrin##145793
turnin Defense of Quel'Danas##53738 |goto Isle of Quel'Danas/0 48.36,35.98
accept A People Shattered##53725 |goto Isle of Quel'Danas/0 48.36,35.98
step
click Lamp
Light the Final Flame |q 53725/1 |goto Isle of Quel'Danas/0 48.56,37.15
step
Watch the dialogue
talk Lady Liadrin##145793
|tip She walks around this area.
turnin A People Shattered##53725 |goto Isle of Quel'Danas/0 48.36,36.00
accept The Setting Sun##53853 |goto Isle of Quel'Danas/0 48.36,36.00
step
Follow the path |goto Isle of Quel'Danas/0 43.45,31.77 < 30 |only if walking
Continue following the path |goto Isle of Quel'Danas/0 37.24,39.21 < 30 |only if walking
Continue following the path |goto Isle of Quel'Danas/0 37.42,51.94 < 20 |only if walking
Continue following the path |goto Isle of Quel'Danas/0 46.65,72.96 < 30 |only if walking
Continue following the path |goto Isle of Quel'Danas/0 50.20,84.61 < 30 |only if walking
Shed Light on Anasterian's Fall |q 53853/1 |goto Isle of Quel'Danas/0 53.48,87.16
|tip Use the "Light the Way" ability.
|tip It appears as a button on the screen.
step
Watch the dialogue
kill Blightgut##145811 |q 53853/2 |goto Isle of Quel'Danas/0 53.20,86.22
step
Follow the path |goto Isle of Quel'Danas/0 50.20,84.61 < 30 |only if walking
Continue following the path |goto Isle of Quel'Danas/0 46.65,72.96 < 30 |only if walking
Continue following the path |goto Isle of Quel'Danas/0 37.42,51.94 < 30 |only if walking
Continue following the path |goto Isle of Quel'Danas/0 37.24,39.21 < 30 |only if walking
Continue following the path |goto Isle of Quel'Danas/0 43.45,31.77 < 30 |only if walking
talk Lady Liadrin##145793
turnin The Setting Sun##53853 |goto Isle of Quel'Danas/0 48.36,36.00
accept The Fall of the Sunwell##54096 |goto Isle of Quel'Danas/0 48.36,36.00
step
Cross the bridge |goto Isle of Quel'Danas/0 47.67,38.40 < 20 |only if walking
Begin the "Fall of the Sunwell" Scenario |scenariostart |goto Isle of Quel'Danas/0 44.27,45.67 |q 54096
step
Shine the Lantern |scenariogoal 1/43404 |goto Shrine of the Eclipse/1 46.63,23.82 |q 54096
|tip Use the "Light the Way" ability.
|tip It appears as a button on the screen.
step
Kill the enemies that attack in waves
Hold the Line Against the Scourge |scenariostage 2 |goto Shrine of the Eclipse/1 46.63,23.82 |q 54096
step
Watch the dialogue
kill Seer Drannix##146443
Defeat Seer Drannix |scenariogoal 3/43406 |goto Shrine of the Eclipse/1 46.53,23.99 |q 54096
step
Watch the dialogue
|tip Use the "For Anasterian!" ability.
|tip It appears as a button on the screen.
Defeat Arthas |scenariogoal 4/43407 |goto Shrine of the Eclipse/1 50.19,17.54 |q 54096
step
Shine the Lantern on Kael'thas' Decision |scenariogoal 5/43534 |goto Shrine of the Eclipse/1 48.34,20.53 |q 54096
|tip Use the "Light the Way" ability.
|tip It appears as a button on the screen.
step
Follow the path down |goto Shrine of the Eclipse/1 27.78,61.96 < 20 |walk
Continue following the path |goto Shrine of the Eclipse/1 45.27,87.35 < 20 |walk
Watch the dialolgue
Escort Prince Kael'thas to the Sunwell |scenariogoal 6/43408 |goto Shrine of the Eclipse/1 50.49,68.47 |q 54096
|tip Follow Kael'thas Sunstrider as he walks.
|tip Kill any enemies that attack you.
step
Watch the dialogue
Kill enemies around this area
Protect the Magisters |scenarioend |goto Shrine of the Eclipse/1 50.49,68.47 |q 54096
step
Watch the dialogue
click Portal to Silvermoon City |goto Shrine of the Eclipse/1 55.44,72.22
Return to Silvermoon City |goto Silvermoon City/0 72.15,42.75 < 20 |noway |c |q 54096
step
Run up the ramp |goto Silvermoon City/0 63.82,32.43 < 20 |only if walking
talk Lor'themar Theron##16802
turnin The Fall of the Sunwell##54096 |goto Silvermoon City/0 60.38,28.10
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Forsaken Heritage Armor",{
description="This guide will walk you through unlocking the Forsaken Heritage Armor.",
patch='90205',
},[[
step
Reach Level 60 On Any Character |achieve 14783
|tip In order to start core race heritage armor questlines, you must have at least one level 60 character on your account.
|tip Use various leveling guides to level any character to 60 or higher.
step
Reach Level 50 as an Undead Character |complete Undead and level >= 50
|tip You must complete this on a 50+ Undead character.
|tip Refer to our various leveling guides to help you accomplish this.
step
talk Calia Menethil##173386
accept Call to Lordaeron##65656 |goto Orgrimmar/1 50.69,75.58
step
talk Forsaken Dreadmage##186199
Select _"Send me to Tirisfal Glades."_ |gossip 54680
Speak to a Forsaken Dreadmage for a Teleport |q 65656/1 |goto Orgrimmar/1 50.83,75.50
step
Enter the building |goto Tirisfal Glades L/0 60.83,51.92 < 7 |walk
talk Calia Menethil##185512
|tip Inside the building.
turnin Call to Lordaeron##65656 |goto Tirisfal Glades L/0 60.80,51.37 |only if Horde
accept Assemble the Forsaken##65657 |goto Tirisfal Glades L/0 60.80,51.37
step
Leave the building |goto Tirisfal Glades L/0 60.83,51.92 < 7 |walk
talk Dark Ranger Velonara##185514
accept This Land is Ours##65658 |goto Tirisfal Glades L/0 61.97,50.50
stickystart "Slay_8_Blighted_Soldiers_and_Shadowmages"
step
talk Master Apothecary Faranell##185794
Select _"It's time to meet with the other Forsaken."_ |gossip 54569
Speak to Master Apothecary Faranell |q 65657/3 |goto Tirisfal Glades L/0 63.23,55.52
step
talk Lilian Voss##185793
Select _"It's time to meet with the other Forsaken."_ |gossip 54570
Speak to Lilian Voss |q 65657/2 |goto Tirisfal Glades L/0 57.57,49.21
step
label "Slay_8_Blighted_Soldiers_and_Shadowmages"
kill Blighted Soldier##185790, Blighted Soldier##185789, Blighted Shadowmage##185916
Slay #8# Blighted Soldiers and Shadowmages |q 65658/1 |goto Tirisfal Glades L/0 63.83,50.75
step
Enter the building |goto Tirisfal Glades L/0 60.83,51.92 < 7 |walk
talk Dark Ranger Velonara##185792
|tip Inside the building.
turnin This Land is Ours##65658 |goto Tirisfal Glades L/0 60.79,51.56
step
talk Lilian Voss##185513
|tip Inside the building.
turnin Assemble the Forsaken##65657 |goto Tirisfal Glades L/0 60.90,51.34
accept The Blight Congress##65659 |goto Tirisfal Glades L/0 60.90,51.34
step
talk Lilian Voss##185513
|tip Inside the building.
Select _"Let's begin."_ |gossip 54673
Speak with Lilian to begin |q 65659/1 |goto Tirisfal Glades L/0 60.90,51.34
step
Watch the dialogue
|tip Inside the building.
Listen to the Discussion |q 65659/2 |goto Tirisfal Glades L/0 60.90,51.34
step
talk Calia Menethil##185512
|tip Inside the building.
Select _"What do you propose?"_ |gossip 54676
Speak to Calia |q 65659/3 |goto Tirisfal Glades L/0 60.80,51.37
step
talk Calia Menethil##185797
turnin The Blight Congress##65659 |goto Tirisfal Glades L/0 61.97,55.66
accept Walk of Faith##65660 |goto Tirisfal Glades L/0 61.97,55.66
step
talk Calia Menethil##185797
Select _"Let's get that plague sample."_ |gossip 54677
Speak to Calia to Begin |q 65660/1 |goto Tirisfal Glades L/0 61.97,55.66
step
Kill enemies that attack Calia
extraaction Collect Pure Sample##368875
|tip Use it when it appears on your screen as Calia stops.
|tip Stay inside Calia's bubble for protection.
Collect a Pure Plague Sample |q 65660/2 |goto Tirisfal Glades L/0 61.94,58.48
step
Kill enemies that attack Calia
|tip Stay inside Calia's bubble for protection.
Escape the Blight with Calia |q 65660/3 |goto Tirisfal Glades L/0 61.92,55.55
step
talk Lilian Voss##185513
turnin Walk of Faith##65660 |goto Tirisfal Glades L/0 61.92,55.56
accept Consulting Our Allies##65661 |goto Tirisfal Glades L/0 61.92,55.56
step
click Portal to Maldraxxus |goto Tirisfal Glades L/0 62.22,55.21
Travel to Maldraxxus |goto Maldraxxus/0 73.64,33.63 < 10000 |c |noway |q 65661
step
talk Margrave Sin'dane##177782
|tip Inside the the floating citadel.
turnin Consulting Our Allies##65661 |goto Maldraxxus/0 74.83,33.65
accept House of Plagues##65662 |goto Maldraxxus/0 74.83,33.65
step
talk Plague Deviser Marileth##185517
turnin House of Plagues##65662 |goto Maldraxxus/0 71.15,71.47
accept Essence of Plague##65664 |goto Maldraxxus/0 71.15,71.47
step
talk Calia Menethil##185803
accept Feed the Eater##65663 |goto Maldraxxus/0 71.14,71.37
stickystart "Clear_the_House_of_Plagues"
step
clicknpc Simmering Concoction##185816
Absorb the Simmering Concoction |q 65664/1 |goto Maldraxxus/0 70.96,74.06
step
clicknpc Unstable Concoction##185821
Absorb the Unstable Concoction |q 65664/2 |goto Maldraxxus/0 69.65,75.61
step
clicknpc Tumultuous Concoction##185824
Absorb the Tumultuous Concoction |q 65664/3 |goto Maldraxxus/0 68.53,79.80
step
label "Clear_the_House_of_Plagues"
kill Plagueroc##185886, Undiluted Plague##185813, Concentrated Plague##185808
Clear the House of Plagues |q 65663/1 |goto Maldraxxus/0 69.98,73.42
You can find more around [69.09,76.72] |notinsticky
step
talk Calia Menethil##185826
turnin Feed the Eater##65663 |goto Maldraxxus/0 68.67,81.69
step
talk Plague Deviser Marileth##185825
turnin Essence of Plague##65664 |goto Maldraxxus/0 68.66,81.76
accept Embodiment##65665 |goto Maldraxxus/0 68.67,81.76
step
kill Lordaeron Blight##185828 |q 65665/1 |goto Maldraxxus/0 68.26,84.56
|tip Avoid slime waves from the sides and don't stand in slime pools.
step
talk Lilian Voss##185829
turnin Embodiment##65665 |goto Maldraxxus/0 68.61,81.81
accept Return to Brill##65666 |goto Maldraxxus/0 68.61,81.81
step
use Lilian's Hearthstone##191029
Return to Brill |goto Tirisfal Glades L/0 60.92,50.28 < 100 |c |noway |q 65666
step
Leave the building |goto Tirisfal Glades L/0 60.83,51.91 < 7 |walk
talk Master Apothecary Faranell##185831
Select _"Checking in. What's next?"_ |gossip 54622
Speak to Master Apothecary Faranell |q 65666/1 |goto Tirisfal Glades L/0 65.78,60.13
step
Watch the dialogue
talk Master Apothecary Faranell##185831
turnin Return to Brill##65666 |goto Tirisfal Glades L/0 65.78,60.13
step
talk Calia Menethil##185839
accept The Remedy of Lordaeron##65667 |goto Tirisfal Glades L/0 65.84,60.37
step
clicknpc Shadowbat##185832
Mount the Shadowbat |q 65667/1 |goto Tirisfal Glades L/0 65.72,59.78
step
Drop Plague Eaters in the Ruins of Lordaeron |q 65667/2 |goto Tirisfal Glades L/0 59.18,71.38
|tip Use the "Deploy" ability in the first slot of your action bar.
|tip Use the "Call Batriders" in the second slot of your action bar on areas with purple arrows.
step
kill Amalgam##185841 |q 65667/3 |goto Tirisfal Glades L/0 62.56,72.12
|tip Use the final three abilities on your action bar.
step
Watch the dialogue
Return to the Ground |outvehicle |q 65667
step
talk Lilian Voss##185852
turnin The Remedy of Lordaeron##65667 |goto Tirisfal Glades L/0 61.85,67.75
accept The Desolate Council##65668 |goto Tirisfal Glades L/0 61.85,67.75
step
Watch the dialogue
Witness the Formation of the Desolate Council |q 65668/1 |goto Tirisfal Glades L/0 61.79,67.78
step
talk Calia Menethil##185848
turnin The Desolate Council##65668 |goto Tirisfal Glades L/0 61.79,67.78
step
talk Dark Ranger Velonara##185851
accept Path of the Dark Rangers##66091 |goto Tirisfal Glades L/0 61.92,67.78
step
talk Lilian Voss##185852
accept A Walk with Ghosts##65788 |goto Tirisfal Glades L/0 61.85,67.75
step
Enter the Throne Room of Lordaeron |q 65788/1 |goto Tirisfal Glades L/0 61.81,72.04
step
talk Calia Menethil##185893
turnin A Walk with Ghosts##65788 |goto Tirisfal Glades L/0 61.85,72.83
step
accept Unliving Summons##76530 |goto Tirisfal Glades L/0 63.75,68.16
|tip You will accept this quest automatically
step
talk Lilian Voss##186091
turnin Unliving Summons##76530 |goto Tirisfal Glades L/0 63.75,68.16
accept Our Enemies Abound##72854 |goto Tirisfal Glades L/0 63.75,68.16
step
talk Deathstalker Commander Belmont##199761
Select _"(Quest) Show me what's going on."_ |gossip 108124
Speak to Belmont |q 72854/1 |goto Tirisfal Glades L/0 61.21,82.75
step
talk Deathstalker Commander Belmont##199761
turnin Our Enemies Abound##72854 |goto Tirisfal Glades L/0 61.21,82.74
accept To the Sepulcher##72855 |goto Tirisfal Glades L/0 61.21,82.74
step
talk Forsaken Dreadmage##199766
Select _"(Quest) Send me to the Sepulcher in Silverpine Forest."_ | gossip 107793
Speak to Forsaken Dreadmage |q 72855/1 |goto Tirisfal Glades L/0 61.16,82.39
step
talk Dark Ranger Velonara##199768
turnin To the Sepulcher##72855 |goto Silverpine Forest/0 45.57,42.06
accept Acid Beats Paper##72858 |goto Silverpine Forest/0 45.57,42.06
step
talk Master Apothecary Faranell##199767
accept Nothing Like the Classic##72856 |goto Silverpine Forest/0 45.63,41.97
accept Boom Weed##72857 |goto Silverpine Forest/0 45.63,41.97
stickystart "Collect_Boom_Weed"
stickystart "Collect_Plagued_Flesh"
step
use the Acid Rifle##202182
'|clicknpc Ntice to All Undead##207342
|tip Around the back of the building.
|tip Face the notice so the acid hits it.
Destroy the Notice to All Undead |q 72858/1 |goto Silverpine Forest/0 47.05,43.43 |count 1
step
use the Acid Rifle##202182
'|clicknpc Ntice to All Undead##199772
|tip Around the back of the building.
|tip Face the notice so the acid hits it.
Destroy the Notice to All Undead |q 72858/1 |goto Silverpine Forest/0 46.67,47.07 |count 2
step
use the Acid Rifle##202182
'|clicknpc Ntice to All Undead##207342
|tip Around the back of the building.
|tip Face the notice so the acid hits it.
Destroy the Notice to All Undead |q 72858/1 |goto Silverpine Forest/0 45.62,47.36 |count 3
step
use the Acid Rifle##202182
'|clicknpc Ntice to All Undead##207342
|tip Around the back of the building.
|tip Face the notice so the acid hits it.
Destroy the Notice to All Undead |q 72858/1 |goto Silverpine Forest/0 46.96,50.23 |count 4
step
label "Collect_Boom_Weed"
click Boom Weed##385373+
|tip They look like small stringy plants on the ground around this area.
|tip They explode and cause minor damage.
collect 6 Boom Weed##202186 |q 72857/1 |goto Silverpine Forest/0 46.27,49.75
step
label "Collect_Plagued_Flesh"
kill Plagued Wolf##199771, Plagued Bear##199770, Sickly Deer##201224
collect 12 Plagued Flesh##202187 |q 72856/1 |goto Silverpine Forest/0 46.27,49.75
step
talk Dark Ranger Velonara##199768
turnin Acid Beats Paper##72858 |goto Silverpine Forest/0 45.57,42.05
step
talk Master Apothecary Faranell##199767
turnin Nothing Like the Classic##72856 |goto Silverpine Forest/0 45.62,41.99
turnin Boom Weed##72857 |goto Silverpine Forest/0 45.62,41.99
step
talk Calia Menethil##199793
accept A Proper Disguise##72859 |goto Silverpine Forest/0 45.55,41.56
step
talk Lilian Voss##199792
accept Fear is Our Weapon##72860 |goto Silverpine Forest/0 45.50,41.54
step
talk Emalora##209848
talk Angellene##209847
talk Margix##209849
|tip Choose a banshee.
Select _"(Quest) Come with me."_ |gossip 111033
'|Select _"(Quest) Come with me."_ |gossip 111034
'|Select _"(Quest) Come with me."_ |gossip 111035
Pick a Banshee |q 72860/1 |goto Silverpine Forest/0 45.33,41.41
step
kill Lieutenant Hawlsey##199797 |q 72859/1 |goto Silverpine Forest/0 52.82,28.22
|tip Inside the building.
step
collect Hawlsey's Armor##206929 |q 72859/1 |goto Silverpine Forest/0 52.81,28.18
|tip Loot it from his corpse inside the building.
step
kill Scarlet Recruit##199799, Scarlet Trainer##203481
Slay #12# Scarlet Recruits or Traienrs |q 72860/2 |goto Silverpine Forest/0 52.41,26.50
step
talk Lilian Voss##199792
turnin A Proper Disguise##72859 |goto Silverpine Forest/0 45.50,41.55
turnin Fear is Our Weapon##72860 |goto Silverpine Forest/0 45.50,41.55
accept The Scarlet Spy##72861 |goto Silverpine Forest/0 45.50,41.55
step
extraaction Disguised##397488
Don the Scarlet Disguise |q 72861/1 |goto Silverpine Forest/0 45.50,41.55
step
clicknpc Explosive Plague Mixture##187485
Pick Up Faranell's Mixture |q 72861/2 |goto Silverpine Forest/0 45.62,41.90
step
talk Scarlet Boatmaster##199804
Select _"(Quest) <Stare silently until the Boatmaster calls a boat for you.>"_ |gossip 109068
Speak to the Scarlet Boatmaster |q 72861/3 |goto Silverpine Forest/0 59.93,34.19
step
Watch the dialogue
Reach the Dock |outvehicle |goto Silverpine Forest/0 64.10,34.27
step
talk Quartermaster Newlem##199806
|tip Use your disguise if you lose it.
turnin The Scarlet Spy##72861 |goto Silverpine Forest/0 64.02,33.47
accept Among Us##72862 |goto Silverpine Forest/0 64.02,33.47
step
'|extraaction Disguised##397488
clicknpc Scarlet Archmage##199896
|tip Use your disguise if you lose it.
|tip Avoid the large circles.
Slay the Scarlet Archmage |q 72862/2 |goto Silverpine Forest/0 66.18,32.93 |count 1
step
'|extraaction Disguised##397488
clicknpc Scarlet Archmage##199896
|tip Use your disguise if you lose it.
|tip Avoid the large circles.
Slay the Scarlet Archmage |q 72862/2 |goto Silverpine Forest/0 66.91,30.17 |count 2
step
'|extraaction Disguised##397488
clicknpc Scarlet Archmage##199896
|tip Use your disguise if you lose it.
|tip Avoid the large circles.
Slay the Scarlet Archmage |q 72862/2 |goto Silverpine Forest/0 68.81,33.15 |count 3
step
'|extraaction Disguised##397488
clicknpc Explosive Plague Mixture##199883
|tip Use your disguise if you lose it.
|tip Avoid the large circles.
Plant the Explosive Plague |q 72862/1 |goto Silverpine Forest/0 68.80,35.38 |count 1
step
'|extraaction Disguised##397488
clicknpc Scarlet Archmage##199896
|tip Use your disguise if you lose it.
|tip Avoid the large circles.
Slay the Scarlet Archmage |q 72862/2 |goto Silverpine Forest/0 70.53,35.49 |count 4
step
'|extraaction Disguised##397488
clicknpc Scarlet Archmage##199896
|tip Use your disguise if you lose it.
|tip Avoid the large circles.
Slay the Scarlet Archmage |q 72862/2 |goto Silverpine Forest/0 76.12,33.34 |count 5
step
'|extraaction Disguised##397488
clicknpc Explosive Plague Mixture##199883
|tip Use your disguise if you lose it.
|tip Avoid the large circles.
Plant the Explosive Plague |q 72862/1 |goto Silverpine Forest/0 75.77,31.74 |count 2
step
'|extraaction Disguised##397488
clicknpc Scarlet Archmage##199896
|tip Use your disguise if you lose it.
|tip Avoid the large circles.
Slay the Scarlet Archmage |q 72862/2 |goto Silverpine Forest/0 80.11,31.44 |count 6
step
'|extraaction Disguised##397488
clicknpc Explosive Plague Mixture##199883
|tip Use your disguise if you lose it.
|tip Avoid the large circles.
Plant the Explosive Plague |q 72862/1 |goto Silverpine Forest/0 76.36,19.97 |count 3
step
talk Dark Ranger Velonara##199879
turnin Among Us##72862 |goto Silverpine Forest/0 70.45,18.22
accept The Flight of the Banshee##72863 |goto Silverpine Forest/0 70.45,18.22
step
talk Dark Ranger Velonara##199879
Select _"(Quest) I'm ready."_ |gossip 109161
Speak to Velonara |q 72863/1 |goto Silverpine Forest/0 70.45,18.22
step
talk Deathstalker Commander Belmont##199885
turnin The Flight of the Banshee##72863 |goto Silverpine Forest/0 70.25,18.05
accept Death to the Living##72864 |goto Silverpine Forest/0 70.25,18.05
step
kill Scarlet Champion##199902, Alert Hound##199889, Scarlet Confessor##199890, Scarlet Footsoldier##199891, Scarlet Tracker##199888
click Scarlet Banner+
|tip They look like white and red banners on poles around this area.
click Scarlet Portal+
|tip They look like large blue portals on the ground around this area.
Route the Scarlet Crusade |q 72864/1 |goto Silverpine Forest/0 70.32,20.03
step
Meet Lilian Voss Ouside Fenris Keep |q 72864/2 |goto Silverpine Forest/0 66.33,31.08
step
talk Lilian Voss##199893
turnin Death to the Living##72864 |goto Silverpine Forest/0 66.33,31.08
accept This is the Hour of the Forsaken##72865 |goto Silverpine Forest/0 66.33,31.08
step
Reach Fenris Keep |q 72865/1 |goto Silverpine Forest/0 65.73,24.41
step
extraaction Will of the Forsaken##412756
|tip Use this when it appears on the screen.
kill Scarlet Commander Forsythe##199912 |q 72865/2 |goto Silverpine Forest/0 65.71,23.75
|tip Upstairs inside the building.
step
talk Lilian Voss##199893
|tip Downstairs inside the building.
turnin This is the Hour of the Forsaken##72865 |goto Silverpine Forest/0 65.62,23.80
accept Return to Lordaeron##72866 |goto Silverpine Forest/0 65.62,23.80
step
click Portal to Lordaeron |goto Silverpine Forest/0 65.53,23.95
Take the portal to the Ruins of Lordaeron |q 72866/1 |goto Silverpine Forest/0 65.53,23.95
step
talk Lilian Voss##199922
turnin Return to Lordaeron##72866 |goto Tirisfal Glades L/0 61.84,69.55
accept I Am Forsaken##72867 |goto Tirisfal Glades L/0 61.84,69.55
step
extraaction Honor of the Forsaken##416270
Receive the Honor of the Forsaken |q 72867/1 |goto Tirisfal Glades L/0 61.84,68.65
step
talk Lilian Voss##199922
turnin I Am Forsaken##72867 |goto Tirisfal Glades L/0 61.84,69.56
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Goblin Heritage Armor",{
description="This guide will walk you through unlocking the Goblin Heritage Armor.",
patch='80300',
},[[
step
Reach Level 60 On Any Character |achieve 14783
|tip In order to start core race heritage armor questlines, you must have at least one level 60 character on your account.
|tip Use various leveling guides to level any character to 60 or higher.
step
Reach Level 50 as a Goblin Character |complete Goblin and level >= 50
|tip You must complete this on a 50+ Goblin character.
|tip Refer to our various leveling guides to help you accomplish this.
step
talk Izzy##156358
accept Old Friends, New Opportunities##57043 |goto Orgrimmar/1 39.49,80.28
step
talk Sassy Hardwrench##156396
turnin Old Friends, New Opportunities##57043 |goto The Cape of Stranglethorn/0 34.61,28.58
accept A Special Delivery##57045 |goto The Cape of Stranglethorn/0 34.61,28.58
step
click Goblin Flying Machine##157418
Travel to Crapopolis |q 57045/1 |goto The Cape of Stranglethorn/0 32.84,26.15
step
Arrive in Crapopolis |goto Crapopolis/0 50.95,92.92 < 500 |c |noway |q 57045
step
Follow the path |goto Crapopolis/0 54.63,69.46 < 30 |only if walking
talk Hobart Grapplehammer##156520
turnin A Special Delivery##57045 |goto Crapopolis/0 53.58,61.94
accept A Simple Experiment##57047 |goto Crapopolis/0 53.58,61.94
step
Watch the dialogue
Listen to Hobart Grapplehammer |q 57047/1 |goto Crapopolis/0 53.05,58.91
step
talk Hobart Grapplehammer##156520
|tip Inside the building.
'Select _"Let's begin the experiment."_ |gossip 50929
Speak with Hobart Grapplehammer |q 57047/2 |goto Crapopolis/0 52.99,58.59
step
click Freezing Console
|tip Inside the building.
Watch the dialogue
Activate the Freezing Console |q 57047/3 |goto Crapopolis/0 52.50,60.43
step
click Flame Console
|tip Inside the building.
Watch the dialogue
Activate the Flame Console |q 57047/4 |goto Crapopolis/0 53.27,60.12
step
click Explosive Console
|tip Inside the building.
Watch the dialogue
Activate the Explosive Console |q 57047/5 |goto Crapopolis/0 54.04,59.85
step
talk Hobart Grapplehammer##156520
|tip Inside the building.
turnin A Simple Experiment##57047 |goto Crapopolis/0 52.99,58.59
accept Shopping For Parts##57048 |goto Crapopolis/0 52.99,58.59
step
talk Crank Greasefuse##156542
turnin Shopping For Parts##57048 |goto Crapopolis/0 56.08,78.20
accept Debt Collection!##57051 |goto Crapopolis/0 56.08,78.20
step
talk Shady Thug##156881
Select _"Crank Greasefuse sent me. It's time to pay up!"_ |gossip 49646
|tip Some of them may attack you.
collect 8 Unpaid Debt##171089 |q 57051/1 |goto Crapopolis/0 54.68,71.88
step
talk Crank Greasefuse##156542
turnin Debt Collection!##57051 |goto Crapopolis/0 56.08,78.20
accept I've Got What You Need##57052 |goto Crapopolis/0 56.08,78.20
step
Follow the path |goto Crapopolis/0 54.28,66.30 < 20 |only if walking
talk Hobart Grapplehammer##156520
|tip Inside the building.
turnin I've Got What You Need##57052 |goto Crapopolis/0 58.74,60.84
accept Blunt Force Testing##57053 |goto Crapopolis/0 58.74,60.84
step
use the X-52 Personnel Armor##171114
Equip the X-52 Body Armor |q 57053/1 |goto Crapopolis/0 53.25,60.14
step
click Test Console
|tip Inside the building.
Activate the Mechanized Lab Assistant |q 57053/2 |goto Crapopolis/0 53.27,60.13
step
kill Mechanized Lab Assistant##156908 |q 57053/3 |goto Crapopolis/0 53.13,59.62
|tip Inside the building.
|tip Use the X-52 Personnel Armor button on-screen to gain temporary shielding.
step
talk Hobart Grapplehammer##156520
|tip Inside the building.
turnin Blunt Force Testing##57053 |goto Crapopolis/0 58.74,60.84
accept Fun With Landmines##57058 |goto Crapopolis/0 58.74,60.84
step
use X-52 Personnel Armor##174059
Equip the X-52 Personnel Armor |q 57058/1 |goto Crapopolis/0 58.73,60.85
step
Follow the path up |goto Crapopolis/0 49.94,53.64 < 20 |only if walking
click Refreshing Coconut Beverage
Get a Refreshing Coconut Beverage |q 57058/2 |goto Crapopolis/0 45.99,48.22
step
Follow the path |goto Crapopolis/0 56.18,58.94 < 20 |only if walking
talk Hobart Grapplehammer##156520
|tip Upstairs inside the building.
turnin Fun With Landmines##57058 |goto Crapopolis/0 52.09,59.36
accept Let's Rumble!##57059 |goto Crapopolis/0 52.09,59.36
step
kill 8 Hired Scoundrel##157433 |q 57059/1 |goto Crapopolis/0 52.09,59.36
|tip Inside the building.
step
talk Trade Prince Gallywix##157060
|tip Inside the building.
Select _"I think it's time for you to leave, Gallywix."_ |gossip 50240
Speak with Gallywix |q 57059/2 |goto Crapopolis/0 53.30,60.27
step
talk Hobart Grapplehammer##156520
|tip Upstairs inside the building.
turnin Let's Rumble!##57059 |goto Crapopolis/0 52.09,59.36
accept Buyers Wanted!##57077 |goto Crapopolis/0 52.09,59.36
step
Follow the path |goto Crapopolis/0 54.57,70.91 < 30 |only if walking
Cross the bridge |goto Crapopolis/0 51.67,86.80 < 20 |only if walking
click Goblin Flying Machine##156627
Take the Flying Machine |q 57077/1 |goto Crapopolis/0 50.74,94.58
step
talk Sassy Hardwrench##156396
turnin Buyers Wanted!##57077 |goto The Cape of Stranglethorn/0 34.61,28.58
accept The VIP List##57078 |goto The Cape of Stranglethorn/0 34.61,28.58
step
talk Marin Noggenfogger##38532
Select _"Deliver Sassy's invitation to Noggenfogger."_ |gossip 38162
Invite Noggenfogger |q 57078/1 |goto Tanaris/0 51.20,29.97
step
Enter the building |goto Thousand Needles/0 76.01,75.24 < 10 |walk
talk Pozzik##40028
|tip Inside the building.
Select _"Deliver Sassy's invitation to Pozzik."_ |gossip 38952
Invite Pozzik |q 57078/2 |goto Thousand Needles/0 75.93,74.71
step
talk Gazlowe##3391
|tip Inside the building.
Select _"Deliver Sassy's invitation to Gazlowe."_ |gossip 50020
Invite Gazlowe |q 57078/3 |goto Northern Barrens/0 68.41,69.06
step
talk Sassy Hardwrench##156396
turnin The VIP List##57078 |goto The Cape of Stranglethorn/0 34.61,28.58
accept Beat The Crapopolis Outta Him!##57079 |goto The Cape of Stranglethorn/0 34.61,28.58
step
click Goblin Flying Machine##157418
Enter the Scenario |scenariostart |goto The Cape of Stranglethorn/0 32.82,26.14 |q 57079
step
talk Gazlowe##157459
Select _"What's the situation here?"_ |gossip 49897
Speak with Gazlowe at the dock |scenariogoal 1/46477 |goto Crapopolis Scenario/0 52.31,84.73 |q 57079
step
Follow the path |goto Crapopolis Scenario/0 54.80,71.29 < 20 |only if walking
kill Dax Blitzblaster##157455
|tip Inside the building.
Rescue Hobart Grapplehammer |scenariogoal 2/46478 |goto Crapopolis Scenario/0 53.09,59.33 |q 57079
step
click Grapplehammer's Chest
|tip Inside the building.
Equip the X-52 Body Armor |scenariogoal 3/46479 |goto Crapopolis Scenario/0 52.57,58.88 |q 57079
step
Follow the path up |goto Crapopolis Scenario/0 50.11,54.37 < 30 |only if walking
kill Trade Prince Gallywix##157456 |scenariogoal 4/46480 |goto Crapopolis Scenario/0 46.31,48.18
|tip Lead Gallywix over crawler mines stuck in the ground.
|tip Use the special action button on-screen to gain temporary armor.
|tip When Gallywix reaches zero health, use the button that appears on-screen.
step
talk Hobart Grapplehammer##157491
turnin Beat The Crapopolis Outta Him!##57079 |goto Crapopolis Scenario/0 47.86,50.57
accept A Fitting Reward##57080 |goto Crapopolis Scenario/0 47.86,50.57
step
talk Hobart Grapplehammer##157491
turnin A Fitting Reward##57080 |goto Crapopolis Scenario/0 47.86,50.57
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Orc Heritage Armor",{
description="This guide will walk you through unlocking the Orc Heritage Armor.",
patch='100007',
},[[
step
Reach Level 60 On Any Character |achieve 14783
|tip In order to start core race heritage armor questlines, you must have at least one level 60 character on your account.
|tip Use various leveling guides to level any character to 60 or higher.
step
Reach Level 50 as a Orc Character |complete Orc and level >= 50
|tip You must complete this on a 50+ Orc character.
|tip Refer to our various leveling guides to help you accomplish this.
step
accept A Summon to Orgrimmar##73703
|tip You will automatically accept this quest.
step
Enter the building |goto Orgrimmar/1 49.93,75.65 < 7 |walk
talk Eitrigg##3144
|tip Inside the building.
turnin A Summon to Orgrimmar##73703 |goto Orgrimmar/1 49.21,72.28
accept A People in Need of Healing##72462 |goto Orgrimmar/1 49.21,72.28
step
click Portal to Alterac Valley
Take the Portal to Alterac Valley |q 72462/1 |goto Orgrimmar/1 51.16,78.94
step
Follow the path up |goto Alterac Valley Heritage/0 48.59,83.09 < 7 |walk
Enter the building |goto Alterac Valley Heritage/0 48.26,86.42 < 7 |walk
Follow Eitrigg to the Hall of the Frostwolf |scenariogoal 1/56805 |goto Alterac Valley Heritage/0 47.11,86.97 |q 72462
|tip He will eventually walk inside the building.
step
talk Shiri##185472
|tip Inside the building.
Select _"Eitrigg wishes to discuss bringing back the Kosh'harg."_ | gossip 108255
Select _"<Take Drek'thar's Totems.>"_ |gossip 108254
Talk to Drek'Thar |scenariogoal 1/57996 |goto Alterac Valley Heritage/0 47.11,86.97 |q 72462
step
clicknpc Totem of Air##201604
|tip Inside the building.
Place the Totem of Air |scenariogoal 2/57997 |goto Alterac Valley Heritage/0 47.09,86.59 |count 1 |q 72462
step
clicknpc Totem of Water##201605
|tip Inside the building.
Place the Totem of Water |scenariogoal 2/57997 |goto Alterac Valley Heritage/0 47.31,86.36 |count 2 |q 72462
step
clicknpc Totem of Fire##201602
|tip Inside the building.
Place the Totem of Fire |scenariogoal 2/57997 |goto Alterac Valley Heritage/0 47.52,87.31 |count 3 |q 72462
step
clicknpc Totem of Earth##201603
|tip Inside the building.
Place the Totem of Earth |scenariogoal 2/57997 |goto Alterac Valley Heritage/0 47.25,87.29 |count 4 |q 72462
step
Watch the dialogue
|tip Inside the building.
Discuss the Kosh'harg with Drek'thar |scenariogoal 2/56806 |goto Alterac Valley Heritage/0 47.11,86.97 |q 72462
step
talk Farseer Drek'Thar##199136
|tip Inside the building.
Select _"I accept your challenge!"_ |gossip 107861
Talk to Drek'thar to Begin |scenariogoal 3/57998 |goto Alterac Valley Heritage/0 47.11,86.97 |q 72462
stickystart "Kill_Drakan"
step
Watch the dialogue
|tip Inside the building.
kill Duros##199138 |scenariogoal 3/57827 |goto Alterac Valley Heritage/0 47.28,86.90 |q 72462
step
label "Kill_Drakan"
kill Drakan##199139 |scenariogoal 3/56808 |goto Alterac Valley Heritage/0 47.28,86.90 |q 72462
|tip Inside the building. |notinsticky
step
Watch the dialogue
kill Elemental Projection##201615 |scenariogoal 4/57999 |goto Alterac Valley Heritage/0 47.25,86.87 |q 72462
|tip Inside the building.
|tip Kill the four totems to weaken the projection.
step
Watch the dialogue
talk Thrall##199140
|tip Inside the building.
Select _"<Take Thrall's Hearthstone>"_ |gossip 107865
Talk to Thrall |scenariogoal 5/56807 |goto Alterac Valley Heritage/0 47.42,86.74 |q 72462
step
use Thrall's Hearthstone##201957
Use Thrall's Hearthstone to Return to Orgrimmar |scenariogoal 5/57662 |goto Alterac Valley Heritage/0 47.42,86.74 |q 72462
step
talk Aggra##200244
|tip Inside the building.
turnin A People in Need of Healing##72462 |goto Orgrimmar/1 54.39,78.58
accept The Kosh'harg##72464 |goto Orgrimmar/1 54.39,78.58
step
clicknpc Armored Wind Rider##200266
Select _"<Ride the Wind Rider to Razor Hill.>"_ |gossip 107890
Mount the Armored Wind Rider |invehicle |q 72464 |goto Orgrimmar/1 52.00,79.31
step
Travel to the Kosh'harg with Aggra's Family |q 72464/1
step
talk Farseer Aggralan##199148
Select _"Let's skip the formalities.<Skip conversation.>"_ |gossip 108548
Talk to Farseer Aggralan to Begin the Om'gora |q 72464/2 |goto Durotar/0 52.21,42.99
step
talk Farseer Aggralan##199148
turnin The Kosh'harg##72464 |goto Durotar/0 52.21,42.99
accept The Blessing of the Land##72465 |goto Durotar/0 52.21,42.99
accept The Blessing of the Clan##72467 |goto Durotar/0 52.21,42.99
accept The Blessing of the Ancestors##72476 |goto Durotar/0 52.21,42.99
step
Talk to an NPC
|tip Choose a clan to follow.
|tip The clan you choose determines which clan's banner displays on the toy you gain questing.
|tip This banner can be changed later.
Choose a Clan |q 72467/1 |goto Durotar/0 54.09,42.47
step
talk Farseer Aggralan##199148
turnin The Blessing of the Clan##72467 |goto Durotar/0 52.21,42.99
step
talk Thega Graveblade##199151
accept The Long Knives##74581 |goto Durotar/0 52.31,42.86
step
talk Cook Torka##199383
turnin The Blessing of the Ancestors##72476 |goto Durotar/0 50.74,42.70
accept An Important Heirloom##74374 |goto Durotar/0 50.74,42.70
step
talk Arugi##201018
Learn Cooking |q 74374/2 |goto Durotar/0 50.75,42.61
step
click Old Cookbook
|tip Inside the building.
Collect the Old Cookbook |q 74374/1 |goto Durotar/0 51.66,41.23
step
talk Cook Torka##199383
turnin An Important Heirloom##74374 |goto Durotar/0 50.74,42.70
accept Orcish Groceries##72477 |goto Durotar/0 50.74,42.70
step
click "Spoons and Forks"
Read "Spoons and Forks" |q 72477/1 |goto Durotar/0 50.78,42.72
step
talk Nula the Butcher##199262
buy 3 Fresh Talbuk Steak##202027 |q 72477/10 |goto Durotar/0 50.72,43.25
step
talk Suja##199235
buy 2 Un'goro Coconut##202707 |q 72477/4 |goto Durotar/0 51.10,44.14
buy 3 Isle Lemon##202029 |q 72477/6 |goto Durotar/0 51.10,44.14
buy 3 Suja's Sweet Salt##204793 |q 72477/7 |goto Durotar/0 51.10,44.14
step
click Crate of Crabs
|tip Clicking it will release a bunch of small crabs.
clicknpc Escaped Crab##199223+
|tip Click them as they run around to collect them.
collect 2 Durotar Coast Crab##202026 |q 72477/2 |goto Durotar/0 51.36,44.16
step
talk Razgar##199221
buy 3 Southfury Salmon##202028 |q 72477/5 |goto Durotar/0 51.58,43.79
step
talk Kyl'kahn##199206
Select _"I need a keg of ale for my offering to the ancestors."_ |gossip 108056
collect 1 Keg of Ancestral Ale##202025 |q 72477/11 |goto Durotar/0 51.30,42.43
step
talk Far'kul Flametongue##199237
buy 2 Farahlon Fenugreek##202031 |q 72477/3 |goto Durotar/0 50.84,41.45
buy 3 Ground Gorgrond Pepper##202030 |q 72477/8 |goto Durotar/0 50.84,41.45
buy 3 Zandali Piri Piri##202706 |q 72477/9 |goto Durotar/0 50.84,41.45
step
_Next to you:_
talk Durak##201361
turnin Orcish Groceries##72477 |goto Durotar/0 50.86,41.58
accept A Worthy Offering##74415 |goto Durotar/0 50.86,41.58
step
create 3 Grilled Southfury Salmon##399038,Cooking,3 total |q 74415/1 |goto Durotar/0 50.83,42.65
|tip Open your cooking panel.
|tip Set the filter to "Classic" if needed.
|tip The recipes are located after Everyday Cooking in the "Orcish Cuisine" category.
step
create 3 Seared Spicy Talbuk Steak##399035,Cooking,3 total |q 74415/2 |goto Durotar/0 50.83,42.65
|tip Open your cooking panel.
|tip Set the filter to "Classic" if needed.
|tip The recipes are located after Everyday Cooking in the "Orcish Cuisine" category.
step
create 2 Curried Coconut Crab##399034,Cooking,2 total |q 74415/3 |goto Durotar/0 50.83,42.65
|tip Open your cooking panel.
|tip Set the filter to "Classic" if needed.
|tip The recipes are located after Everyday Cooking in the "Orcish Cuisine" category.
step
create 1 Feast for the Ancestors##399040,Cooking,1 total |q 74415/4 |goto Durotar/0 50.83,42.65
|tip Open your cooking panel.
|tip Set the filter to "Classic" if needed.
|tip The recipes are located after Everyday Cooking in the "Orcish Cuisine" category.
step
click Feast for the Ancestors
Place the Feast for the Ancestors |q 74415/5 |goto Durotar/0 53.13,45.77
step
talk Farseer Aggralan##199148
turnin A Worthy Offering##74415 |goto Durotar/0 52.21,42.99
step
click Ancient Skeleton
Find the Spirit of Thunder Ridge |q 72465/1 |goto Durotar/0 40.68,26.70
step
talk The Spirit of Thunder Ridge##199165
turnin The Blessing of the Land##72465 |goto Durotar/0 40.59,26.77
accept The Spirit of Thunder Ridge##72466 |goto Durotar/0 40.59,26.77
step
click Buried Seed+
|tip They look like small piles of dirt under the water around this area.
collect 8 Ancient Seed##201966 |q 72466/1 |goto Durotar/0 39.53,24.93
step
Return to the Ancient Skeleton |q 72466/2 |goto Durotar/0 40.60,26.76
step
click Ancient Skeleton
Plant the Seeds in the Ancient Skeleton |q 72466/3 |goto Durotar/0 40.60,26.76
step
talk Kaltunk##10176
turnin The Long Knives##74581 |goto Valley of Trials/0 45.19,68.39
accept Tracking a Killer##72474 |goto Valley of Trials/0 45.19,68.39
step
talk Karranisha##200734
Select _"Have you seen any evidence of Gor'krosh?"_ |gossip 108002
Find the First Clue |q 72474/1 |goto Valley of Trials/0 43.41,70.61 |count 1
step
Find the Second Clue |q 72474/1 |goto Valley of Trials/0 46.01,63.36 |count 2
step
Find the Third Clue |q 72474/1 |goto Valley of Trials/0 49.98,60.12 |count 3
step
click Beast Tracks
Select _"I should tell Kaltunk about this."_ |gossip 108010
Find the Fourth Clue |q 72474/1 |goto Valley of Trials/0 54.25,62.51 |count 4
step
talk Terrified Peon##199179
Select _"What happened here?"_ |gossip 108005
Find the Fifth Clue |q 72474/1 |goto Valley of Trials/0 52.40,68.65 |count 5
step
talk Kaltunk##10176
turnin Tracking a Killer##72474 |goto Valley of Trials/0 45.19,68.39
accept Cornering Gor'krosh##72475 |goto Valley of Trials/0 45.19,68.39
step
Follow the Trail |q 72475/1 |goto Durotar/0 59.18,63.52
step
click Raptor Nest
kill Gor'krosh##199186 |q 72475/2 |goto Durotar/0 59.28,63.38
step
collect 1 "Long Knife"##202024 |q 72475/4 |goto Durotar/0 59.23,63.64
|tip Loot it from Gor'krosh.
step
click Raptor Blood
|tip On the ground near the corpse.
Retrieve the Blood of Gor'krosh |q 72475/3 |goto Durotar/0 59.23,63.64
step
talk Farseer Aggralan##199148
turnin Cornering Gor'krosh##72475 |goto Durotar/0 52.21,42.99
turnin The Spirit of Thunder Ridge##72466 |goto Durotar/0 52.21,42.99
accept Honor and Glory##72478 |goto Durotar/0 52.21,42.99
step
talk Boss Magor##201505
Select _"Bring it on!"_ |gossip 108372
Kill enemies around this area
|tip Peons will attack you in waves, along with Boss Magor.
click Booterang
|tip They look like small boots dropped by peons.
extraaction Booterang##400758
|tip Use it on Boss Magor when he spins after picking up a Booterang.
kill 1 Boss Magor##201505
Brawl with Boss Magor and the Peons |q 72478/2 |goto Durotar/0 52.48,40.95
step
Click items on the tables
Kill enemies around this area
Enjoy the Feast! |q 72478/1 |goto Durotar/0 52.50,42.40
step
talk Thrall##200437
turnin Honor and Glory##72478 |goto Durotar/0 52.25,43.44
accept Aka'magosh##72479 |goto Durotar/0 52.25,43.44
step
Watch the dialogue
Close Kosh'harg |q 72479/1 |goto Durotar/0 52.25,43.44
step
talk Eitrigg##200617
turnin Aka'magosh##72479 |goto Durotar/0 52.25,43.03
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Tauren Heritage Armor",{
description="This guide will walk you through unlocking the Tauren Heritage Armor.",
patch='80200',
},[[
step
Reach Level 60 On Any Character |achieve 14783
|tip In order to start core race heritage armor questlines, you must have at least one level 60 character on your account.
|tip Use various leveling guides to level any character to 60 or higher.
step
Reach Level 50 as a Tauren Character |complete Tauren and level >= 50
|tip You must complete this on a 50+ Tauren character.
|tip Refer to our various leveling guides to help you accomplish this.
step
talk Spiritwalker Isahi##149088
accept When Spirits Whisper##54759 |goto Orgrimmar/1 39.13,78.99
step
talk Baine Bloodhoof##36648
|tip Inside the building.
turnin When Spirits Whisper##54759 |goto Thunder Bluff/0 60.26,51.67
accept The Spiritwalkers##54760 |goto Thunder Bluff/0 60.26,51.67
step
talk Spiritwalker Ussoh##149084
turnin The Spiritwalkers##54760 |goto Camp Narache/0 12.17,31.27
accept Spirit Guide##54761 |goto Camp Narache/0 12.17,31.27
step
click Spiritwalker's Incense
Watch the dialogue
Light the Spiritwalker's Incense |q 54761/1 |goto Camp Narache/0 12.56,31.28
step
talk Spiritwalker Ussoh##149084
turnin Spirit Guide##54761 |goto Camp Narache/0 12.17,31.27
accept A Small Retreat##54762 |goto Camp Narache/0 12.17,31.27
step
talk Spiritwalker Ussoh##149529
|tip Inside the building.
turnin A Small Retreat##54762 |goto Stonetalon Mountains/0 49.17,60.92
accept Crossing Over##54763 |goto Stonetalon Mountains/0 49.17,60.92
step
use the Spiritwalker's Hallowed Vessel##166899
Enter the Spirit Realm |q 54763/1 |goto Stonetalon Mountains/0 49.17,60.92
step
Follow the path |goto Stonetalon Mountains/0 49.64,61.59 < 10 |only if walking
Cross the bridge |goto Stonetalon Mountains/0 49.32,62.96 < 10 |only if walking
Continue up the path |goto Stonetalon Mountains/0 48.14,63.11 < 10 |only if walking
Continue up the path |goto Stonetalon Mountains/0 48.14,64.63 < 10 |only if walking
Continue up the path |goto Stonetalon Mountains/0 48.95,65.39 < 10 |only if walking
kill Necrofiend##149452+
Watch the dialogue
Follow the Spirit Guide |q 54763/2 |goto Stonetalon Mountains/0 50.05,65.69
step
talk Spiritwalker Ussoh##149529
|tip Inside the building.
turnin Crossing Over##54763 |goto Stonetalon Mountains/0 49.17,60.92
accept Storm in Bloodhoof##54764 |goto Stonetalon Mountains/0 49.17,60.92
step
Travel to Bloodhoof Village |q 54764/1 |goto Mulgore/0 47.40,58.65
step
kill Necrofiend##149452, Malicious Spirit##149698
clicknpc Bloodhoof Villager##149614+
|tip They look like frightened Tauren villagers around this area.
clicknpc Trapped Kodo##150225+
|tip They look like subdued kodo around this area.
Save the People of Bloodhoof Village |q 54764/2 |goto Mulgore/0 47.40,58.65
step
talk Baine Bloodhoof##149528
turnin Storm in Bloodhoof##54764 |goto Thunder Bluff/0 58.25,51.80
accept Answer the Call##54766 |goto Thunder Bluff/0 58.25,51.80
step
talk Baine Bloodhoof##149528 |goto Thunder Bluff/0 58.17,51.77
Select _"Attack!"_ |gossip 49999
kill Malevolent Spirit##149547 |q 54766/1 |goto Thunder Bluff/0 55.70,51.52
|tip Run into the glowing blue patches on the ground for a damage boost.
step
Watch the dialogue
talk Baine Bloodhoof##36648
|tip Inside the building.
turnin Answer the Call##54766 |goto Thunder Bluff/0 60.26,51.67
accept Thank Your Guide##54765 |goto Thunder Bluff/0 60.26,51.67
step
click Spirit Offering
Watch the dialogue
Present the Offering |q 54765/1 |goto Mulgore/0 33.96,38.62
step
click Ceremonial Tauren Garb
turnin Thank Your Guide##54765 |goto Mulgore/0 34.00,38.65
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Troll Heritage Armor",{
description="This guide will walk you through unlocking the Troll Heritage Armor.",
patch='100207',
},[[
step
Reach Level 60 On Any Character |achieve 14783
|tip In order to start core race heritage armor questlines, you must have at least one level 60 character on your account.
|tip Use various leveling guides to level any character to 60 or higher.
step
Reach Level 50 as a Troll Character |complete Troll and level >= 50
|tip You must complete this on a 50+ Troll character.
|tip Refer to our various leveling guides to help you accomplish this.
step
talk Zi'guma##213791
accept Return to the Echo Isles##77869 |goto Orgrimmar/1 32.70,64.61
step
talk Rokhan##210198
|tip Inside the building.
turnin Return to the Echo Isles##77869 |goto Echo Isles/0 61.13,65.71
step
talk Master Gadrin##210092
|tip Inside the building.
accept De Old Loa##77871 |goto Echo Isles/0 61.39,65.36
step
click Mueh'zala Offering
|tip Inside the building.
Destroy the Mueh'zala Offering |q 77871/1 |goto Echo Isles/0 61.65,64.41 |count 1
step
click Mueh'zala Offering
|tip Inside the building.
Destroy the Mueh'zala Offering |q 77871/1 |goto Echo Isles/0 61.92,65.40 |count 2
step
click Mueh'zala Offering
|tip Inside the building.
Destroy the Mueh'zala Offering |q 77871/1 |goto Echo Isles/0 60.62,66.57 |count 3
step
click Mueh'zala Offering
|tip Inside the building.
Destroy the Mueh'zala Offering |q 77871/1 |goto Echo Isles/0 60.57,66.15 |count 4
step
click Mueh'zala Offering
|tip Inside the building.
Destroy the Mueh'zala Offering |q 77871/1 |goto Echo Isles/0 60.65,65.36 |count 5
step
click Altar of the Loa
Assist Tzadah with the Loa Ritual |q 77871/2 |goto Echo Isles/0 58.75,66.24
step
talk Rokhan##214839
turnin De Old Loa##77871 |goto Echo Isles/0 59.14,65.65
accept De Loa of de Past##77874 |goto Echo Isles/0 59.14,65.65
step
click Handmade Napkin
Collect the Tribute Object |q 77874/1 |goto Echo Isles/0 59.22,62.09 |count 1
step
click Lightly Used Pants
|tip Inside the tent.
Collect the Tribute Object |q 77874/1 |goto Echo Isles/0 59.92,60.92 |count 2
step
click Half-used Dream Diary
|tip Inside the tent.
Collect the Tribute Object |q 77874/1 |goto Echo Isles/0 60.04,61.05 |count 3
step
click Empty Bag of Marbles
Collect the Tribute Object |q 77874/1 |goto Echo Isles/0 60.15,62.08 |count 4
step
click Abandoned Artistic Carving
Collect the Tribute Object |q 77874/1 |goto Echo Isles/0 60.25,61.56 |count 5
step
click Damaged Favorite Drum
Collect the Tribute Object |q 77874/1 |goto Echo Isles/0 60.34,63.22 |count 6
step
click Overly-loved Plush Remains
Collect the Tribute Object |q 77874/1 |goto Echo Isles/0 60.52,63.48 |count 7
step
click Warrior's First Sword
Collect the Tribute Object |q 77874/1 |goto Echo Isles/0 60.89,63.36 |count 8
step
click Jani's Junkpile
Create a Jani Tribute |q 77874/2 |goto Echo Isles/0 58.72,66.02
step
Watch the dialogue
talk Jani##210120
Select _"We're looking for the Darkspear's lost loa, to combat against Mueh'zala. Can you help?"_ |gossip 120185
Consult Jani |q 77874/3 |goto Echo Isles/0 58.38,65.95
step
click Jani's Junkpile
Loot Jani's Junkpile |q 77874/4 |goto Echo Isles/0 58.72,66.08
step
talk Rokhan##210238
turnin De Loa of de Past##77874 |goto Northern Stranglethorn/0 84.62,40.17
accept Stalking the Stalker##77879 |goto Northern Stranglethorn/0 84.62,40.17
step
kill Animated Offering##210405, Foul Offering##214994, Hakkari Ritualist##214913
collect 6 Offering to Hakkar##211350 |q 77879/1 |goto Northern Stranglethorn/0 78.14,44.07
You can find more around [88.59,46.82]
step
Return to Jani |q 77879/2 |goto Northern Stranglethorn/0 81.80,47.89
step
Watch the dialogue
talk Kevo ya Siti##209891
turnin Stalking the Stalker##77879 |goto Northern Stranglethorn/0 81.83,48.07
accept There is Another##77881 |goto Northern Stranglethorn/0 81.83,48.07
step
click Jani's Junkpile
Use Jani's Junkpile to Travel to Bambala |q 77881/1 |goto Northern Stranglethorn/0 81.82,47.61
step
Return to Bambala |q 77881/2 |goto Northern Stranglethorn/0 63.92,39.54
step
talk Kevo ya Siti##222657
turnin There is Another##77881 |goto Northern Stranglethorn/0 63.58,41.43
step
talk Rokhan##210091
accept Looking for Lukou##77880 |goto Northern Stranglethorn/0 63.47,41.32
step
talk Shadow Hunter Ty'jin##210093
Select _"Have you ever heard of a loa named Lukou?"_ |gossip 114187
Select _"(Quest) We'll find her!"_ |gossip 120673
Ask About Lukou |q 77880/1 |goto Northern Stranglethorn/0 63.17,39.85 |count 1
step
talk Shadow Hunter Laztoki##210240
Select _"Have you ever heard of a loa named Lukou?"_ |gossip 114192
Select _"(Quest) We'll find her!"_ |gossip 120675
Ask About Lukou |q 77880/1 |goto Northern Stranglethorn/0 65.01,42.50 |count 2
step
talk Witch Doctor Daara##210259
Select _"Have you ever heard of a loa named Lukou?"_ |gossip 114191
Select _"(Quest) We'll find her!"_ |gossip 120674
Ask About Lukou |q 77880/1 |goto Northern Stranglethorn/0 66.04,40.51
step
talk Rokhan##210091
Select _" We should look for Lukou's shrine in an ogre cave nearby."_ |gossip 120221
Speak with Rokhan |q 77880/2 |goto Northern Stranglethorn/0 63.48,41.32
step
Find Kevo Ya Siti by the Ogre Mound |q 77880/3 |goto Northern Stranglethorn/0 65.05,47.69
step
talk Rokhan##210091
turnin Looking for Lukou##77880 |goto Northern Stranglethorn/0 65.10,47.49
step
talk Kevo ya Siti##222666
accept One with the Loa##77877 |goto Northern Stranglethorn/0 65.04,47.69
step
talk Kevo ya Siti##222666
Select _"Take us inside."_ |gossip 114200
Tell Kevo You're Ready |q 77877/1 |goto Northern Stranglethorn/0 65.04,47.69
step
Begin Travelling |invehicle |q 77877
step
Watch the dialogue
Travel Inside with Kevo |outvehicle |goto Northern Stranglethorn/0 70.38,48.96 |q 77877
step
Infiltrate the Ogre Cave |q 77877/2 |goto Northern Stranglethorn/0 70.38,48.96
step
Watch the dialogue
talk Rokhan##210091
|tip Inside the cave.
turnin One with the Loa##77877 |goto Northern Stranglethorn/0 70.62,49.02
accept Stolen but Not Forgotten##77882 |goto Northern Stranglethorn/0 70.62,49.02
accept The Unkillable##78875 |goto Northern Stranglethorn/0 70.62,49.02
stickystart "Retrieve_Altar_Fragments
step
kill Mai'Zoth##210252
|tip Inside the cave.
collect 1 Lukou's Altar Centerpiece##210593 |q 78875/1 |goto Northern Stranglethorn/0 69.16,46.94
step
label "Retrieve_Altar_Fragments
kill Mosh'Ogg Brute##210254, Mosh'Ogg Witch Doctor##210253
|tip Inside the cave.
click Dusty Bag##408767+
|tip They look like small bags on the ground inside the cave.
collect 8 Altar Fragment##210592 |q 77882/1 |goto Northern Stranglethorn/0 68.55,48.56
step
talk Rokhan##210091
|tip Inside the cave.
turnin Stolen but Not Forgotten##77882 |goto Northern Stranglethorn/0 70.62,49.03
turnin The Unkillable##78875 |goto Northern Stranglethorn/0 70.62,49.03
accept Heart of Lukou##77894 |goto Northern Stranglethorn/0 70.62,49.03
step
click Altar of Regeneration
|tip Inside the cave.
Repair the Destroyed Effigy |q 77894/1 |goto Northern Stranglethorn/0 70.71,48.98
step
talk Lukou##210258
|tip Inside the cave.
Select _"We are the Darkspear. We are friends of Lukou and Kevo ya Siti!"_ |gossip 114302
Calm Lukou |q 77894/2 |goto Northern Stranglethorn/0 70.78,48.63
step
Watch the dialogue
talk Rokhan##210091
|tip Inside the cave.
turnin Heart of Lukou##77894 |goto Northern Stranglethorn/0 70.62,49.02
accept Honor and Tribute##77898 |goto Northern Stranglethorn/0 70.62,49.02
step
click Jani's Junkpile
|tip Inside the cave.
Return to the Echo Isles Using Jani's Junkpile |q 77898/1 |goto Northern Stranglethorn/0 70.39,49.57
step
talk Witch Doctor Tzadah##210086
Select _"What do I need to do?"_ |gossip 114303
Speak with Tzadah |q 77898/2 |goto Echo Isles/0 59.08,65.92
step
click Kevo ya Siti Offering
Place the Kevo ya Siti Offering |q 77898/3 |goto Echo Isles/0 58.84,66.26
step
click Lukou Offering
Place the Lukou Offering |q 77898/4 |goto Echo Isles/0 58.64,66.29
step
click Loa Offering
Place the Last Offering |q 77898/5 |goto Echo Isles/0 58.73,66.24
step
talk Witch Doctor Tzadah##210086
turnin Honor and Tribute##77898 |goto Echo Isles/0 59.09,65.91
accept The Rush'kah##77899 |goto Echo Isles/0 59.09,65.91
step
click Rush'kah Paint
Mix the Paint |q 77899/1 |goto Echo Isles/0 59.28,61.87
step
click Prepared Wood
Retrieve the Prepared Wood |q 77899/2 |goto Echo Isles/0 59.19,61.96
step
click Finished Rush'kah
Create a Rush'kah Mask |q 77899/3 |goto Echo Isles/0 60.12,62.16
step
talk Rokhan##223215
turnin The Rush'kah##77899 |goto Echo Isles/0 60.07,62.39
accept The Loa Trials##77900 |goto Echo Isles/0 60.07,62.39
step
extraaction Loa Trial Ritual##427573
|tip It appears as a button on the screen.
Watch the dialogue
Participate in Trial Ritual |q 77900/1 |goto Echo Isles/0 58.75,65.94
step
talk Rokhan##212784
turnin The Loa Trials##77900 |goto Echo Isles/0 58.50,65.52
accept De Power of Death##77903 |goto Echo Isles/0 58.50,65.52
step
talk Lukou##205981
accept Ritual Recovery##77902 |goto Echo Isles/0 58.45,66.21
step
talk Kevo ya Siti##210260
accept Retraining the Trainees##77901 |goto Echo Isles/0 59.03,66.21
stickystart "Slay_Minions_of_Mueh'zala"
stickystart "Remove_Darkness"
step
click Ritual Circle
Remove the Ritual Circle |q 77902/1 |goto Echo Isles/0 49.56,60.84 |count 1
step
click Ritual Circle
Remove the Ritual Circle |q 77902/1 |goto Echo Isles/0 48.58,47.58 |count 2
step
click Ritual Circle
Remove the Ritual Circle |q 77902/1 |goto Echo Isles/0 59.69,51.64 |count 3
step
label "Slay_Minions_of_Mueh'zala"
kill Devotee of Mueh'zala##210322, Raised Boneripper##210324, Empowered Boneguard##210329, Unfinished Rush'kah##210325
Slay #12# Minions of Mueh'zala |q 77903/1 |goto Echo Isles/0 50.78,54.33
step
label "Remove_Darkness"
use the Cunning Charm##211000
|tip Use it on Trainee NPCs around this area after you weaken them to 50%.
clicknpc Lost Trainee Hunter##210375
clicknpc Lost Trainee Rogue##210374
Remove Darness from #8# Lost Trainees |q 77901/1 |goto Echo Isles/0 58.04,65.20
step
talk Rokhan##213638
turnin Retraining the Trainees##77901 |goto Echo Isles/0 56.96,56.40
turnin Ritual Recovery##77902 |goto Echo Isles/0 56.96,56.40
turnin De Power of Death##77903 |goto Echo Isles/0 56.96,56.40
accept Avatar of Mueh'zala##77905 |goto Echo Isles/0 56.96,56.40
step
click Jani's Blessing
collect Jani's Blessing##211133 |q 77905/1 |goto Echo Isles/0 56.31,56.44
step
extraaction Travel with Lukou##421812
|tip It appears as a button on your screen.
Travel with Lukou |q 77905/2 |goto Echo Isles/0 56.48,55.96
step
kill Summoned Visage##213686
|tip Avoid areas on the ground that are targeted in purple.
click Tzadah's Empowerment
Destroy Tzadah's Empowerment |q 77905/3 |goto Echo Isles/0 58.46,56.28 |count 1
step
kill Summoned Visage##213686
|tip Avoid areas on the ground that are targeted in purple.
click Tzadah's Empowerment
Destroy Tzadah's Empowerment |q 77905/3 |goto Echo Isles/0 54.36,56.41 |count 2
step
kill Summoned Visage##213686
|tip Avoid areas on the ground that are targeted in purple.
click Tzadah's Empowerment
Destroy Tzadah's Empowerment |q 77905/3 |goto Echo Isles/0 54.51,46.95 |count 3
step
kill Summoned Visage##213686
|tip Avoid areas on the ground that are targeted in purple.
click Tzadah's Empowerment
Destroy Tzadah's Empowerment |q 77905/3 |goto Echo Isles/0 58.68,46.50 |count 4
step
talk Rokhan##212782
turnin Avatar of Mueh'zala##77905 |goto Echo Isles/0 58.50,65.54
accept De Darkspear Loa##77906 |goto Echo Isles/0 58.50,65.54
step
click Loa Offering
Destroy Mueh'zala's Effigy |q 77906/1 |goto Echo Isles/0 58.74,66.27
step
click Loa Offering
Replace Mueh'zala's Effigy with Jani's |q 77906/2 |goto Echo Isles/0 58.74,66.27
step
talk Master Gadrin##213669
turnin De Darkspear Loa##77906 |goto Echo Isles/0 59.04,65.78
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Pandaren Heritage Armor",{
author="QuestCore",
description="This guide will assist you in completing the Pandaren heritage armor questline.",
startlevel=50,
patch='110207',
},[[
step
Reach Level 50 |ding 50
|tip You must have a level 50 Pandaren character to begin this questline.
step
talk Ji Firepaw##133523
|tip Inside the building.
accept Invitation to the Spirit Festival##84444 |goto Orgrimmar/1 37.77,81.17
step
talk Ji Firepaw##229266
turnin Invitation to the Spirit Festival##84444 |goto Orgrimmar/1 70.31,38.98
step
talk Li Li Stormstout##229338
accept The Wanderers##84452 |goto Orgrimmar/1 70.46,38.99
step
click Hot Air Balloon##237286
Board the Hot Air Balloon |invehicle Hot Air Balloon##230134 |goto Orgrimmar/1 70.81,38.92
step
Watch the dialogue
Ride the Hot Air Balloon |q 84452/1 |goto The Wandering Isle Heritage/0 49.47,24.60
step
talk Li Li Stormstout##229339
turnin The Wanderers##84452 |goto The Wandering Isle Heritage/0 50.68,19.90
step
talk Chen Stormstout##229347
accept To Dai-Lo Farmstead##84453 |goto The Wandering Isle Heritage/0 50.63,20.11
step
talk Ji Firepaw##229348
accept To Morning Breeze##84457 |goto The Wandering Isle Heritage/0 50.34,20.00
step
talk Ji Firepaw##229381
turnin To Morning Breeze##84457 |goto The Wandering Isle Heritage/0 30.12,41.71
accept Scamps Ain't It!##84459 |goto The Wandering Isle Heritage/0 30.12,41.71
step
_Next to you:_
talk Aysa Cloudsinger##230417
accept Devil's in the Details##84458 |goto The Wandering Isle Heritage/0 30.12,41.71
stickystart "Search_Wooden_Barrels"
step
click Patches of Fur
|tip Inside the building.
Find the Clue |q 84458/1 |goto The Wandering Isle Heritage/0 28.46,42.72 |count 1
step
click Banana Bunches
Find the Clue |q 84458/1 |goto The Wandering Isle Heritage/0 30.44,38.02 |count 2
step
talk Morning Breeze Witness##230409
Select _"Have you seen anything suspicious?"_ |gossip 124332
Find the Clue |q 84458/1 |goto The Wandering Isle Heritage/0 31.60,41.85 |count 3
step
label "Search_Wooden_Barrels"
click Wooden Barrel
Search #8# Wooden Barrels |q 84459/1 |goto The Wandering Isle Heritage/0 30.14,41.56
step
_Next to you:_
talk Ji Firepaw##230864
turnin Scamps Ain't It!##84459 |goto The Wandering Isle Heritage/0 29.91,41.41
step
_Next to you:_
talk Aysa Cloudsinger##230417
turnin Devil's in the Details##84458 |goto The Wandering Isle Heritage/0 29.91,41.41
accept Red Hand or Herring?##84460 |goto The Wandering Isle Heritage/0 29.91,41.41
step
kill Huk Huk##229529 |q 84460/1 |goto The Wandering Isle Heritage/0 26.55,30.34
step
Find the Special Fireworks |q 84460/2 |goto The Wandering Isle Heritage/0 22.41,33.79
step
talk Aysa Cloudsinger##231114
turnin Red Hand or Herring?##84460 |goto The Wandering Isle Heritage/0 22.41,33.79
step
talk Chen Stormstout##229357
turnin To Dai-Lo Farmstead##84453 |goto The Wandering Isle Heritage/0 69.72,67.58
accept Tide of Virmen##84454 |goto The Wandering Isle Heritage/0 69.72,67.58
step
talk Chon Po Stormstout##229358
accept Big Bertha##84455 |goto The Wandering Isle Heritage/0 69.86,67.53
stickystart "Take_Back_the_Farm"
step
Enter the cave |goto The Wandering Isle Heritage/0 71.89,70.58 < 7 |walk
Find Big Bertha |q 84455/1 |goto The Wandering Isle Heritage/0 74.63,73.96
|tip Inside the cave.
step
kill Yak Eater##229487 |q 84455/2 |goto The Wandering Isle Heritage/0 74.63,73.96
|tip Inside the cave.
step
label "Take_Back_the_Farm"
kill Plump Virmen##229359, Emerald Superpest##229369, Swarming Nymph##231141
Click objects around this area
|tip They look like various large vegetables and crates.
Take Back the Farm! |q 84454/1 |goto The Wandering Isle Heritage/0 71.81,72.81
step
talk Chon Po Stormstout##229358
turnin Big Bertha##84455 |goto The Wandering Isle Heritage/0 69.85,67.54
step
talk Chen Stormstout##229357
turnin Tide of Virmen##84454 |goto The Wandering Isle Heritage/0 69.72,67.60
accept Brew You One Better##84468 |goto The Wandering Isle Heritage/0 69.72,67.60
step
click Flamelick Butterscotch
Pick up Cheng's Brew |complete hasbuff(1214515) or hasbuff(1214420) or hasbuff(1214514) or completedq(84468) |goto The Wandering Isle Heritage/0 69.66,67.48
step
click Dai-Lo Villager##230392
Offer Chen Stormstout's Brew |q 84468/1 |goto The Wandering Isle Heritage/0 69.73,67.31 |count 1
step
click Mango Drop
Pick up Cheng's Brew |complete hasbuff(1214515) or hasbuff(1214420) or hasbuff(1214514) or completedq(84468) |goto The Wandering Isle Heritage/0 69.68,67.47
step
click Dai-Lo Villager##230392
Offer Chen Stormstout's Brew |q 84468/1 |goto The Wandering Isle Heritage/0 69.73,67.31 |count 2
step
click Pink Dragon's Breath
Pick up Cheng's Brew |complete hasbuff(1214515) or hasbuff(1214420) or hasbuff(1214514) or completedq(84468) |goto The Wandering Isle Heritage/0 69.71,67.44
step
click Dai-Lo Villager##230392
Offer Chen Stormstout's Brew |q 84468/1 |goto The Wandering Isle Heritage/0 69.73,67.31 |count 3
step
click Classic Stormstout Brew
Pick up Chon Po's Brew |complete hasbuff(1214517) or hasbuff(1214516) or hasbuff(1214396) or completedq(84468) |goto The Wandering Isle Heritage/0 69.71,67.44
step
click Dai-Lo Villager##230392
Offer Chon Po's Brew |q 84468/2 |goto The Wandering Isle Heritage/0 69.82,67.40 |count 1
step
click Classic Stormstout Brew
Pick up Chon Po's Brew |complete hasbuff(1214517) or hasbuff(1214516) or hasbuff(1214396) or completedq(84468) |goto The Wandering Isle Heritage/0 69.83,67.38
step
click Dai-Lo Villager##230392
Offer Chon Po's Brew |q 84468/2 |goto The Wandering Isle Heritage/0 69.82,67.40 |count 2
step
click Classic Stormstout Brew
Pick up Chon Po's Brew |complete hasbuff(1214517) or hasbuff(1214516) or hasbuff(1214396) or completedq(84468) |goto The Wandering Isle Heritage/0 69.85,67.37
step
click Dai-Lo Villager##230392
Offer Chon Po's Brew |q 84468/2 |goto The Wandering Isle Heritage/0 69.82,67.40 |count 3
step
talk Chen Stormstout##229357
turnin Brew You One Better##84468 |goto The Wandering Isle Heritage/0 69.71,67.60
step
_Next to you:_
talk Mr. Crane##229535
accept It's Not a Spirit Festival Without Spirits##84461 |goto The Wandering Isle Heritage/0 69.72,67.60
step
talk Li Li Stormstout##229412
|tip Inside the building.
turnin It's Not a Spirit Festival Without Spirits##84461 |goto The Wandering Isle Heritage/0 51.51,46.27
accept Patterns in Static##84462 |goto The Wandering Isle Heritage/0 51.51,46.27
step
Collect #30# Remnants of Wind |q 84462/1 |goto The Wandering Isle Heritage/0 51.51,46.27
|tip Run through the blue orbs around the building.
step
Cast Updraft At a Windy Location |q 84462/2 |goto The Wandering Isle Heritage/0 51.54,43.95
|tip Stand in this spot and use the ability that appears on the screen.
step
Find Dafeng, Ancient Spirit of Wind |q 84462/3 |goto The Wandering Isle Heritage/0 51.38,47.60
|tip Float into the large blue bubble on the top of the building.
step
talk Dafeng##229407
turnin Patterns in Static##84462 |goto The Wandering Isle Heritage/0 51.39,47.59
step
Catch a Wind Current |invehicle Wind Current##229892 |q 84463 |future
step
Ride the Wind Current |outvehicle |goto The Wandering Isle Heritage/0 50.64,76.56
step
talk Jojo Ironbrow##229271
accept Codependency##84463 |goto The Wandering Isle Heritage/0 50.89,76.87
step
kill Mud Amalgam##229411 |q 84463/1 |goto The Wandering Isle Heritage/0 45.67,69.94
step
talk Li Li Stormstout##229413
turnin Codependency##84463 |goto The Wandering Isle Heritage/0 39.68,63.47
accept Lost My Spark##84464 |goto The Wandering Isle Heritage/0 39.68,63.47
step
talk Shu##231214
Select _"Can you help me find Huo?"_ |gossip 131528
Speak to Shu |q 84464/1 |goto The Wandering Isle Heritage/0 40.00,63.50
step
Follow the Steam Trail |q 84464/2 |goto The Wandering Isle Heritage/0 40.37,56.30
step
talk Wugou##229460
Select _"Can you protect me against the heat?"_ |gossip 124540
Speak to Wugou |q 84464/3 |goto The Wandering Isle Heritage/0 40.28,56.67
step
talk Dafeng##231286
|tip The fire will not harm you.
Select _"Breathe some life into Huo, Dafeng!"_ |gossip 124541
Speak to Dafeng |q 84464/4 |goto The Wandering Isle Heritage/0 39.25,57.34
step
talk Li Li Stormstout##229413
|tip She will walk to this location.
turnin Lost My Spark##84464 |goto The Wandering Isle Heritage/0 39.51,57.07
accept Of Water and Blood##84465 |goto The Wandering Isle Heritage/0 39.51,57.07
stickystart "Kill_10_Thornbranch_Scamps"
step
kill Thornbranch Scamp##229466+
click Blue Floristar+
|tip They look like small blue and white flowers around this area.
collect 10 Blue Floristar##235715 |q 84465/1 |goto The Wandering Isle Heritage/0 21.08,60.93
step
label "Kill_10_Thornbranch_Scamps"
kill 10 Thornbranch Scamp##229466 |q 84465/2 |goto The Wandering Isle Heritage/0 21.08,60.93
step
click Blue Floristars
Place Flowers By Strongbo's Memorial |q 84465/3 |goto The Wandering Isle Heritage/0 19.45,49.38
step
click Blue Floristars
Place Flowers By Xiu Li's Memorial |q 84465/4 |goto The Wandering Isle Heritage/0 22.22,56.27
step
talk Li Li Stormstout##229465
|tip She will walk to this location.
turnin Of Water and Blood##84465 |goto The Wandering Isle Heritage/0 21.92,56.37
accept Thousands of Years Ago...##84466 |goto The Wandering Isle Heritage/0 21.92,56.37
step
Return to Li Li in Wu-Song Village |q 84466/2 |goto The Wandering Isle Heritage/0 52.63,18.18
step
click Barrel of Fireworks
Select _"<Light the fireworks to begin the Spirit Festival.>"_ |gossip 124545
Light the Fireworks |q 84466/3 |goto The Wandering Isle Heritage/0 52.63,18.18
step
talk Li Li Stormstout##231916
turnin Thousands of Years Ago...##84466 |goto The Wandering Isle Heritage/0 52.46,19.23
step
talk Lorewalker Cho##229476
accept This Was Home##84467 |goto The Wandering Isle Heritage/0 52.33,19.20
step
Celebrate the Spirit Festival! |q 84467/1 |goto The Wandering Isle Heritage/0 50.21,21.30
|tip Click various objects and talk to various highlighted NPCs all over the town.
|tip Blue orbs give you a speed boost.
step
talk Lorewalker Cho##229476
turnin This Was Home##84467 |goto The Wandering Isle Heritage/0 52.33,19.21
accept A New Tradition##92030 |goto The Wandering Isle Heritage/0 52.33,19.21
step
talk Chon Po Stormstout##231913
turnin A New Tradition##92030 |goto The Wandering Isle Heritage/0 50.60,19.83
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Highmountain Tauren Heritage Armor",{
description="This guide will walk you through unlocking the Highmountain Tauren Heritage Armor.",
patch='70305',
achieveid={12415},
},[[
step
Unlock the Highmountain Tauren Race |achieve 12245
|tip Use the {o}Highmountain Tauren Race Unlock{} guide. |loadguide "Leveling Guides\\Allied Races\\Highmountain Tauren Race Unlock"
step
Raise a new Highmountain Tauren Character to Level 50
|tip Reach level 50 on a Highmountain Tauren.
|tip You must readch level 50 without using a Character Boost.
|tip Use the leveling guides.
Click Here to Continue |confirm |q 48783 |future
step
accept Heritage of the Highmountain##49783
|tip You will accept this quest automatically.
step
talk Mayla Highmountain##93826
turnin Heritage of the Highmountain##49783 |goto Thunder Totem/6 54.80,63.25
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Mag'har Orc Heritage Armor",{
description="This guide will walk you through unlocking the Mag'har Heritage Armor.",
patch='80001',
achieveid={13077},
},[[
step
Unlock the Mag'har Orc Race |achieve 12518
|tip Use the {o}Mag'har Orc Race Unlock{} guide. |loadguide "Leveling Guides\\Allied Races\\Mag'har Orc Race Unlock"
step
Raise a new Mag'har Orc Character to Level 50
|tip Reach level 50 on a Mag'har Orc.
|tip You must readch level 50 without using a Character Boost.
|tip Use the leveling guides.
Click Here to Continue |confirm |q 51484 |future
step
accept Heritage of the Mag'har##51484
|tip You will accept this quest automatically.
|tip This quest will only appear if you have reached level 50 on the character without using a Character Boost.
step
talk Overlord Geya'rah##143845
turnin Heritage of the Mag'har##51484 |goto Orgrimmar/1 70.46,44.52
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Nightborne Heritage Armor",{
description="This guide will walk you through unlocking the Nightborne Heritage Armor.",
patch='70305',
achieveid={12413},
},[[
step
Unlock the Nightborne Race |achieve 12244
|tip Use the {o}Nightborne Race Unlock{} guide. |loadguide "Leveling Guides\\Allied Races\\Nightborne Race Unlock"
step
Raise a new Nightborne Character to Level 50
|tip Reach level 50 on a Nightborne.
|tip You must readch level 50 without using a Character Boost.
|tip Use the leveling guides.
Click Here to Continue |confirm |q 49784 |future
step
accept Heritage of the Nightborne##49784
|tip You will accept this quest automatically.
step
talk First Arcanist Thalyssra##131326
turnin Heritage of the Nightborne##49784 |goto Suramar/0 59.34,85.53
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Vulpera Heritage Armor",{
description="This guide will walk you through unlocking the Vulpera Heritage Armor.",
patch='80300',
achieveid={14002},
},[[
step
Unlock the Vulpera Race |achieve 13206
|tip Use the {o}Vulpera Race Unlock{} guide. |loadguide "Leveling Guides\\Allied Races\\Vulpera Race Unlock"
step
Raise a new Vulpera Character to Level 50
|tip Reach level 50 on a Vulpera.
|tip You must readch level 50 without using a Character Boost.
|tip Use the leveling guides.
Click Here to Continue |confirm |q 58435 |future
step
accept Heritage of the Vulpera##58435
|tip You will accept this quest automatically.
step
talk Hagashi##124108
turnin Heritage of the Vulpera##58435 |goto Vol'dun/0 56.78,49.80
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Zandalari Troll Heritage Armor",{
description="This guide will walk you through unlocking the Zandalari Troll Heritage Armor.",
patch='80105',
achieveid={13503},
},[[
step
Unlock the Zandalari Troll Race |achieve 13161
|tip Use the {o}Zandalari Troll Race Unlock{} guide. |loadguide "Leveling Guides\\Allied Races\\Zandalari Troll Race Unlock"
step
Raise a new Zandalari Troll Character to Level 50
|tip Reach level 50 on a Zandalari Troll.
|tip You must readch level 50 without using a Character Boost.
|tip Use the leveling guides.
Click Here to Continue |confirm |q 53721 |future
step
accept Heritage of the Zandalari##53721
|tip You will accept this quest automatically.
step
talk Queen Talanji##146335
turnin Heritage of the Zandalari##53721 |goto Dazar'alor/0 49.93,46.60
]])
