-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\A Brewing Storm (10-70)",{
author="QuestCore",
description="This guide will walk you through the \"A Brewing Storm\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7252,8310,7257,7258,7261},
patch='100207',
model={40972},
startlevel=10,
endlevel=70,
mapid=878,
},[[
step
talk Brewmaster Blanche##59569
|tip Blanche patrols all around the bridge and the areas that it connects.
accept Blanche's Boomer Brew##30567 |goto The Jade Forest/0 38.87,31.15
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me the tale of a Brewing Storm."_ |script GossipFrame:SelectGossipOption(3)
Enter the A Brewing Storm Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
talk Brewmaster Blanche##58740
Select _"Let's get this lightning party started, Blanche."_ |script GossipFrame:SelectGossipOption(1)
clicknpc Brewkeg##58916
|tip Brewkegs struck by lightning will sometimes catch fire.
|tip Click on the Brewkegs when they catch fire to extinguish them.
|tip Avoid standing near the lightning rods when they light up.
|tip Stand in green mist on the ground for extra healing.
Defend the Brewing Process |scenariogoal 1/22197 |goto A Brewing Storm/0 55.32,44.99
step
Go down the stairs |goto A Brewing Storm/0 54.34,55.87 < 10 |walk
Go down the stairs |goto A Brewing Storm/0 70.12,43.80 < 10 |walk
Follow the path up |goto A Brewing Storm/0 50.67,32.25 < 10 |walk
Kill enemies that attack in waves
|tip Enemies will periodically jump in your path and attack.
|tip Blanche will sometimes stop before a new group of enemies attacks.
Escort Blanche to Thunderpaw Refuge |scenariogoal 2/19564 |goto A Brewing Storm/0 30.14,66.14
step
Go up the stairs |goto A Brewing Storm/0 31.94,71.19 < 10 |walk
talk Brewmaster Blanche##58740 |goto A Brewing Storm/0 30.27,68.06
|tip She will mount up and run to the entrance to the refuge.
Select _"Let's kill some lizards, Blanche!"_ |script GossipFrame:SelectGossipOption(1)
kill Borokhula the Destroyer##58739
|tip When Borokhula starts to cast Swamp Smash move away from the front of him.
|tip When he begins to channel Earth Shattering, watch the ground and avoid the red circles.
extraaction Boomer Brew Strike##115058
|tip Designate one party member to add control.
|tip The adds can be quickly dispatched using the Boomer Brew Strike button on the screen or with AoE.
|tip Target an add and click it to channel.
Defeat Borokhula the Destroyer |scenariogoal 3/19565 |goto A Brewing Storm/0 30.23,60.76
step
'|script LeaveInstanceParty()
Leave the Scenario |goto A Brewing Storm/0 30.27,68.06 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
step
talk Brewmaster Blanche##58740
|tip Blanche patrols all around the bridge and the areas that it connects.
turnin Blanche's Boomer Brew##30567 |goto The Jade Forest/0 38.87,31.15
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\A Brewing Storm (Heroic)",{
author="QuestCore",
description="This guide will walk you through the \"A Brewing Storm\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7252,8310,7257,7258,7261},
patch='100207',
model={40972},
startlevel=10,
endlevel=70,
mapid=878,
},[[
step
talk Brewmaster Blanche##59569
|tip Blanche patrols all around the bridge and the areas that it connects.
accept Blanche's Boomer Brew##30567 |goto The Jade Forest/0 38.87,31.15
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Shin##78777
|tip Inside the building.
Select _"Tell me the tale of a Brewing Storm."_ |script GossipFrame:SelectGossipOption(1)
Enter the A Brewing Storm Scenario |scenariostart |goto Vale of Eternal Blossoms/0 83.05,30.45
step
talk Brewmaster Blanche##58740
Select _"Let's get this lightning party started, Blanche."_ |script GossipFrame:SelectGossipOption(1)
clicknpc Brewkeg##58916
|tip Brewkegs struck by lightning will sometimes catch fire.
|tip Click on the Brewkegs when they catch fire to extinguish them.
|tip Avoid standing near the lightning rods when they light up.
|tip Stand in green mist on the ground for extra healing.
Defend the Brewing Process |scenariogoal 1/22197 |goto A Brewing Storm/0 55.32,44.99
step
Go down the stairs |goto A Brewing Storm/0 54.34,55.87 < 10 |walk
Go down the stairs |goto A Brewing Storm/0 70.12,43.80 < 10 |walk
Follow the path up |goto A Brewing Storm/0 50.67,32.25 < 10 |walk
Kill enemies that attack in waves
|tip Enemies will periodically jump in your path and attack.
|tip Blanche will sometimes stop before a new group of enemies attacks.
Escort Blanche to Thunderpaw Refuge |scenariogoal 2/19564 |goto A Brewing Storm/0 30.14,66.14
step
Go up the stairs |goto A Brewing Storm/0 31.94,71.19 < 10 |walk
talk Brewmaster Blanche##58740 |goto A Brewing Storm/0 30.27,68.06
|tip She will mount up and run to the entrance to the refuge.
Select _"Let's kill some lizards, Blanche!"_ |script GossipFrame:SelectGossipOption(1)
kill Borokhula the Destroyer##58739
|tip When Borokhula starts to cast Swamp Smash move away from the front of him.
|tip When he begins to channel Earth Shattering, watch the ground and avoid the red circles.
extraaction Boomer Brew Strike##115058
|tip Designate one party member to add control.
|tip The adds can be quickly dispatched using the Boomer Brew Strike button on the screen or with AoE.
|tip Target an add and click it to channel.
Defeat Borokhula the Destroyer |scenariogoal 3/19565 |goto A Brewing Storm/0 30.23,60.76
step
'|script LeaveInstanceParty()
Leave the Scenario |goto A Brewing Storm/0 30.27,68.06 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
step
talk Brewmaster Blanche##58740
|tip Blanche patrols all around the bridge and the areas that it connects.
turnin Blanche's Boomer Brew##30567 |goto The Jade Forest/0 38.87,31.15
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\Greenstone Village (10-70)",{
author="QuestCore",
description="This guide will walk you through the \"Greenstone Village\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7265,7267,7266},
patch='100207',
model={41877},
startlevel=10,
endlevel=70,
mapid=880,
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of Greenstone Village."_ |script GossipFrame:SelectGossipOption(1)
Enter the Greenstone Village Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
Kill Seedling enemies around this area
|tip Killing all of them will release the villager.
Rescue Meila |scenariogoal 1/19200 |goto Greenstone Village/0 63.25,52.93
step
Kill Seedling enemies around this area
|tip Killing all of them will release the villager.
Rescue Swan |scenariogoal 1/19203 |goto Greenstone Village/0 55.61,56.47
step
Kill Seedling enemies around this area
|tip Killing all of them will release the villager.
Rescue Scribe Rinji |scenariogoal 1/19202 |goto Greenstone Village/0 52.84,57.96
step
Kill Seedling enemies around this area
|tip Killing all of them will release the villager.
Rescue Mayor Lin |scenariogoal 1/21336 |goto Greenstone Village/0 56.19,63.00
step
Kill Seedling enemies around this area
|tip Killing all of them will release the villager.
Rescue Portly Shung |scenariogoal 1/19201 |goto Greenstone Village/0 59.39,69.20
step
Kill Seedling enemies around this area
|tip Killing all of them will release the villager.
Rescue La & Liupo |scenariogoal 1/19204 |goto Greenstone Village/0 62.17,67.28
step
kill Beast of Jade##66772
|tip Inside the building.
Save Tzu's Dojo |scenariogoal 2/19199 |goto Greenstone Village/0 50.68,70.56
step
clicknpc Burgled Barrel##62682
|tip Look for yellow dots on your minimap.
|tip After clicking a barrel, guide it back to Tzu's Dojo.
Return #6# Burgled Barrels |scenariogoal 3/19229 |goto Greenstone Village/0 52.14,68.37
step
extraaction Volatile Greenstone Brew##119090
|tip Use the button on your screen for extra damage.
clicknpc Barrel-Chest Huo##62988
Save Barrel-Chest Huo |scenariogoal 4/1244 |goto Greenstone Village/0 52.93,32.63
step
extraaction Volatile Greenstone Brew##119090
|tip Use the button on your screen for extra damage.
clicknpc Stonecutter Lon##62989
Save Stonecutter Lon |scenariogoal 4/19264 |goto Greenstone Village/0 57.08,30.25
step
extraaction Volatile Greenstone Brew##119090
|tip Use the button on your screen for extra damage.
clicknpc Kiri Jade-Eyes##62990
Save Kiri Jade-Eyes |scenariogoal 4/19265 |goto Greenstone Village/0 54.76,24.98
step
extraaction Volatile Greenstone Brew##119090
|tip Use the button on your screen for extra damage.
kill Vengeful Hui##61156
|tip It will come running out and attack.
Slay Vengeful Hui |scenariogoal 5/19205 |goto Greenstone Village/0 52.56,23.50
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Greenstone Village/0 52.56,23.50 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\Theramore's Fall (10-70)",{
author="QuestCore",
description="This guide will walk you through the \"Theramore's Fall\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7529,7530,7524},
patch='100207',
model={40312,25341,40278,40589,40587,40352,40346},
startlevel=10,
endlevel=70,
mapid=906,
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of Theramore's Fall."_ |script GossipFrame:SelectGossipOption(8)
Enter the Theramore's Fall Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
Follow the path |goto Theramore's Fall H/0 61.39,52.93 < 20 |walk
clicknpc Rig This Powder Barrel!##58665
|tip On the ship.
Rig the First Powder Barrel |scenariogoal 1/22180 |count 1 |goto Theramore's Fall H/0 61.84,68.72
step
kill Captain Tellern##59088 |scenariogoal 1/22381 |count 1 |goto Theramore's Fall H/0 65.45,63.02 |noordinal
|tip He walks around on the deck of the ship.
step
clicknpc Rig This Powder Barrel!##58665
|tip On the ship.
Rig the second Powder Barrel |scenariogoal 1/22180 |count 2 |goto Theramore's Fall H/0 66.17,64.15
step
Follow the path |goto Theramore's Fall H/0 72.29,70.83 < 15 |walk
kill Squallshaper Lanara##58948 |scenariogoal 1/22381 |count 2 |goto Theramore's Fall H/0 73.58,62.02 |noordinal
|tip On the ship.
step
clicknpc Rig This Powder Barrel!##58665
|tip On the ship.
Rig the Third Powder Barrel |scenariogoal 1/22180 |count 3 |goto Theramore's Fall H/0 73.19,62.18
step
clicknpc Rig This Powder Barrel!##58665
|tip On the ship.
Rig the Fourth Powder Barrel |scenariogoal 1/22180 |count 4 |goto Theramore's Fall H/0 73.24,76.47
step
Follow the path |goto Theramore's Fall H/0 58.11,58.48 < 15 |walk
Follow the path |goto Theramore's Fall H/0 56.54,77.83 < 15 |walk
kill "Mad" Morden Morgrensen##59086 |scenariogoal 1/22381 |count 3 |goto Theramore's Fall H/0 51.66,87.26 |noordinal
|tip He walks around on the deck of the ship.
step
clicknpc Rig This Powder Barrel!##58665
|tip On the ship.
Rig the Fifth Powder Barrel |scenariogoal 1/22180 |count 5 |goto Theramore's Fall H/0 50.29,86.05
step
clicknpc Rig This Powder Barrel!##58665
|tip On the ship.
Rig the Sixth Powder Barrel |scenariogoal 1/22180 |count 6 |goto Theramore's Fall H/0 58.62,73.51
step
talk Blastmaster Sparkfuse##58765
Select _"We've rigged the powder barrels in every ship."_ |script GossipFrame:SelectGossipOption(1)
Inform Blastmaster Sparkfuse |scenariogoal 2/19989 |goto Theramore's Fall H/0 57.72,57.69
stickystart "Slay_Theramore_Gryphons"
step
kill Baldruc##58777 |scenariogoal 3/19981 |goto Theramore's Fall H/0 50.37,46.80
|tip During the fight, he will place a Storm Totem on the battlefield.
|tip Kill it or move away from it.
step
label "Slay_Theramore_Gryphons"
kill 2 Theramore Gryphon##58782+ |scenariogoal 3/19982 |goto Theramore's Fall H/0 50.37,46.80
step
kill Big Bessa##58787 |scenariogoal 4/19983 |goto Theramore's Fall H/0 34.77,40.55
|tip It moves up and down the road.
step
clicknpc Unmanned Tank##58788
|tip Run away before it explodes.
Sabotage the First Unmanned Tank |scenariogoal 4/19980 |count 1 |goto Theramore's Fall H/0 32.89,36.91
step
clicknpc Unmanned Tank##58788
|tip Run away before it explodes.
Sabotage the Second Unmanned Tank |scenariogoal 4/19980 |count 2 |goto Theramore's Fall H/0 29.05,38.00
step
clicknpc Unmanned Tank##58788
|tip Run away before it explodes.
Sabotage the Third Unmanned Tank |scenariogoal 4/19980 |count 3 |goto Theramore's Fall H/0 30.02,45.64
step
Enter the building |goto Theramore's Fall H/0 53.07,34.77 < 10 |walk
Run up the stairs |goto Theramore's Fall H/0 54.32,38.36 < 5 |walk
Run up the ramp |goto Theramore's Fall H/0 51.92,37.12 < 5 |walk
kill Hedric Evencane##58840 |scenariogoal 5/19987 |goto Theramore's Fall H/0 53.88,37.27
|tip Upstairs inside the building.
step
collect Arcane Shackles Key##79261 |scenariogoal 5/21241 |goto Theramore's Fall H/0 53.88,37.27
|tip Loot it from Hedric's corpse.
step
Run down the ramp |goto Theramore's Fall H/0 51.92,37.12 < 5 |walk
Run down the stairs |goto Theramore's Fall H/0 54.32,38.36 < 5 |c |walk
step
Run down the stairs |goto Theramore's Fall H/0 53.14,37.36 < 3 |walk
talk Thalen Songweaver##58816
Choose _<Unlock the shackles.>_ |script GossipFrame:SelectGossipOption(1)
Free Thalen Songweaver |scenariogoal 5/19988 |goto Theramore's Fall H/0 54.49,36.37
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Theramore's Fall H/0 54.49,36.37 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
|tip Thalen will also open a Return Portal after his cast.
|tip This portal leads to Orgrimmar.
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\Dagger in the Dark (20-70)",{
author="QuestCore",
description="This guide will walk you through the \"Dagger in the Dark\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8009,7987,7984,7986},
patch='100207',
model={46480,46111},
startlevel=20,
endlevel=70,
mapid=914,
},[[
step
talk Sunwalker Dezco##64566
|tip You must complete a brief quest chain to accept the quest related to this scenario.
|tip You can pick up the initial quest, "Meet the Scout," from Lyalia in outside of Shrine of Seven Stars.
|tip Complete the two following quests to unlock Domination Point.
accept Meet the Scout##32249 |goto Vale of Eternal Blossoms/0 62.93,28.18
step
talk Scout Rokla##67812
turnin Meet the Scout##32249 |goto Krasarang Wilds/0 8.73,64.36
step
talk Garrosh Hellscream##62092
accept The Might of the Warchief##32250 |goto Krasarang Wilds/0 8.67,64.45
stickystart "Kill_Alliance_Troops"
step
talk Blood Guard Gro'tash##67927
Find Blood Guard Gro'tash |q 32250/2 |goto Krasarang Wilds/0 10.70,53.15
step
talk Grizzle Gearslip##67926
Find Grizzle Gearslip |q 32250/3 |goto Krasarang Wilds/0 15.74,57.76
step
label "Kill_Alliance_Troops"
Kill Alliance enemies around this area
Kill #25# Alliance Troops |q 32250/1 |goto Krasarang Wilds/0 12.40,57.04
step
Next to you:
talk Garrosh Hellscream##62092
turnin The Might of the Warchief##32250
accept Domination Point##32108
step
click Signal Fire##216274
turnin Domination Point##32108 |goto Krasarang Wilds/0 8.53,63.86
step
talk General Nazgrim##67939
accept Dagger in the Dark##32251 |goto Krasarang Wilds/0 10.39,53.71
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of the Dagger in the Dark that felled Vol'jin."_ |script GossipFrame:SelectGossipOption(9)
Enter the Dagger in the Dark Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
talk Vol'jin##67414
turnin Dagger in the Dark##32251 |goto Dagger in the Dark/0 56.08,75.18
step
talk Vol'jin##67414
Select _"I'm ready. Let's go."_ |script GossipFrame:SelectGossipOption(1)
Speak to Vol'jin |scenariogoal 1/22282 |goto Dagger in the Dark/0 56.08,75.18
step
Follow the path |goto Dagger in the Dark/0 51.16,60.97 < 15 |walk
Find the Saurok Cave |scenariogoal 2/22281 |goto Dagger in the Dark/0 52.48,46.41
step
Kill Darkhatched enemies around this area
Defeat the Saurok Patrol |scenariogoal 3/22416 |goto Dagger in the Dark/0 52.28,44.09
step
kill Darkhatched Lizard-Lord##67263
Defeat the Darkhatched Lizard-Lord |scenariogoal 3/22238 |goto Dagger in the Dark/0 52.06,44.51
step
Watch the dialogue
clicknpc The Spring Saurok-Slayer##67706
|tip Wait a moment for the boat to be repaired.
Jump in the Boat |invehicle |goto Dagger in the Dark/0 51.84,43.05
step
kill Darkhatched Sorcerer##67748
|tip Kill Sorcerers along the way to maintain your progress.
Complete the Boat Ride |scenariogoal 4/22284 |goto Dagger in the Dark/1 50.34,51.15
step
Find the Saurok Hatchery |scenariogoal 5/22287 |goto Dagger in the Dark/1 56.61,31.95
step
kill Broodmaster Noshi##67264
|tip Use Flamethrower when you get swarmed by Darkhatched Swarmlings.
Defeat Broodmaster Noshi |scenariogoal 6/22239 |goto Dagger in the Dark/1 53.00,24.89
step
Watch the dialogue
clicknpc Broken Mogu Tablet##67863
|tip Wait for the dialogue to complete.
Investigate the West Statue |scenariogoal 7/22288 |goto Dagger in the Dark/1 51.49,34.17 |future
step
clicknpc Broken Mogu Tablet##67863
Investigate the East Statue |scenariogoal 7/22289 |goto Dagger in the Dark/1 54.91,16.32
step
Watch the dialogue
kill Rak'gor Bloodrazor##67266
|tip Wait for the dialogue to complete.
|tip Rak'gor will place a Gas Bomb on the ground that you will need to move out of.
Defeat Rak'gor Bloodrazor |scenariogoal 8/22240 |goto Dagger in the Dark/1 53.54,26.34
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Dagger in the Dark/1 53.54,26.34 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\Domination Point (20-70)",{
author="QuestCore",
description="This guide will walk you through the \"Domination Point\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8013,8015,8014},
patch='100207',
model={46217},
startlevel=20,
endlevel=70,
mapid=920,
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of the defense of Domination Point."_ |script GossipFrame:SelectGossipOption(11)
Enter the Domination Point Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
Kill Lion's enemies around this area
talk Kromthar##68998
|tip Kill any enemies attacking her to enable dialogue.
Select _"Fight with us."_ |script GossipFrame:SelectGossipOption(1)
Join Kromthar |scenariogoal 1/22530 |goto Domination Point/0 27.76,26.76
step
Follow the path |goto Domination Point/0 30.78,32.85 < 10 |walk
Follow the path |goto Domination Point/0 36.32,35.10 < 15 |walk
talk General Nazgrim##68997
|tip Kill any enemies attacking him to enable dialogue.
Select _"Fight with us."_ |script GossipFrame:SelectGossipOption(1)
Join General Nazgrim |scenariogoal 2/22531 |goto Domination Point/0 43.30,32.03
step
Kill enemies around this area
Slay the East Attackers |scenariogoal 3/22547 |goto Domination Point/0 33.16,35.19
step
Kill enemies around this area
Slay the South Attackers |scenariogoal 3/22548 |goto Domination Point/0 31.00,37.65
step
Kill enemies around this area
Slay the West Attackers |scenariogoal 3/22549 |goto Domination Point/0 29.61,36.46
step
talk Warlord Bloodhilt##69002
|tip Kill any enemies attacking him to enable dialogue.
Select _"We're here to help."_ |script GossipFrame:SelectGossipOption(1)
Locate Warlord Bloodhilt |scenariogoal 4/22558 |goto Domination Point/0 30.57,38.95
step
Watch the dialogue
kill Saber-Rider Isari##67397
Slay the Assault Commander |scenariogoal 4/22557 |goto Domination Point/0 30.57,38.95
step
talk Shokia##69001
|tip Kill any enemies attacking her to enable dialogue.
Select _"Fight with us."_ |script GossipFrame:SelectGossipOption(1)
Gather Shokia's Report |scenariogoal 5/22559 |goto Domination Point/0 28.51,35.11
step
talk Rivett Clutchpop##68999
|tip Kill any enemies attacking him to enable dialogue.
Select _"Fight with us."_ |script GossipFrame:SelectGossipOption(1)
Gather Rivett's Report |scenariogoal 5/22561 |goto Domination Point/0 34.25,33.00
step
talk Shademaster Kiryn##69000
|tip Kill any enemies attacking her to enable dialogue.
Select _"Fight with us."_ |script GossipFrame:SelectGossipOption(1)
Gather Kiryn's Report |scenariogoal 5/22560 |goto Domination Point/0 31.86,31.43
step
clicknpc Place Boomsticks Here!##68885
Place the Boomsticks |scenariogoal 6/22498 |goto Domination Point/0 31.97,35.85
step
clicknpc Place Rockets Here!##68886
Place the Rockets |scenariogoal 6/22496 |goto Domination Point/0 31.82,35.99
step
clicknpc Place Bombs Here!##68884
Place the Bombs |scenariogoal 6/22497 |goto Domination Point/0 31.65,36.18
step
Kill the approaching enemies
Defeat the First Wave of Enemies |scenariogoal 7/22562 |goto Domination Point/0 30.81,37.71
step
Kill the approaching enemies
Defeat the Second Wave of Enemies |scenariogoal 7/22563 |goto Domination Point/0 30.81,37.71
step
Kill the approaching enemies
Defeat the Third Wave of Enemies |scenariogoal 7/22564 |goto Domination Point/0 30.81,37.71
step
kill Joan Lorraine##67530
Slay the Alliance Commander |scenariogoal 7/22565 |goto Domination Point/0 30.81,37.71
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Domination Point/0 30.81,37.71 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\Unga Ingoo (20-70)",{
author="QuestCore",
description="This guide will walk you through completing the \"Unga Ingoo\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7249,7232,7231,7248,7239},
patch='100207',
model={42503},
startlevel=20,
endlevel=70,
mapid=882,
},[[
step
talk Brewmaster Bo##65289
|tip Bo walks around inside the building and on the beach.
accept The Funky Monkey Brew##31058 |goto Krasarang Wilds/0 51.81,77.15
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of Unga Ingoo."_ |script GossipFrame:SelectGossipOption(2)
Enter the Unga Ingoo scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
Approach Brewmaster Bo |goto Unga Ingoo/0 51.92,86.44 < 5 |c
step
talk Brewmaster Bo##62467
Select _"Let's get going!"_ |script GossipFrame:SelectGossipOption(1)
Speak with Bo and Begin Following Him |goto Unga Ingoo/0 51.92,86.44 > 10 |c
|tip Follow him up the shore behind him.
step
Follow the path |goto Unga Ingoo/0 41.18,76.67 < 10 |walk
Kill enemies as Bo stops
|tip He will periodically stop and look at things.
Escort Brewmaster Bo |scenariogoal 1/19210 |goto Unga Ingoo/0 50.06,61.29
step
Kill Hozen enemies around this area
|tip Leave one party member behind to defend Brewmaster Bo or Hozen will steal brew.
|tip Defenders should use Inactive Beach Bombs and the Brew Defender cannon to help them fight off Hozen.
|tip "Hozen ships appear in the distance!" signal the approach of new enemies.
click Unga Keg##3365+, Unga Mug##3365+
|tip All over the island, tiny mugs and kegs are found near huts and other objects.
|tip The other two party members should run around the island and collect brew.
|tip Return to the cauldron every time you have 30+ stacks of brew.
Fill the Brewing Cauldron |scenariogoal 2/21304 |goto Unga Ingoo/0 50.08,61.96
|tip Special mobs and objects below generally drop 25 brew kegs.
Kill Ba-Bam at [46.43,64.38]
|tip Click the Zip Line to go to the ship.
Kill the Unga Totem at [60.57,71.30]
A big keg is at [79.66,54.03]
Unstable Keg and Unga Totem at [79.50,45.23]
|tip This cave has lots of brew inside.
|tip Click the unstable keg and run around to catch brew.
Rik Rik at [30.09,23.67]
step
Watch the dialogue
kill Captain Ook##62465
|tip He periodically casts Gonna Ook Ya. Move from the red circle.
|tip When he gets weak, a Scurvy-Curing Orange will spawn. Click it to pick it up and run away from Captain Ook.
Defeat Captain Ook |scenariogoal 3/20696 |goto Unga Ingoo/0 50.34,58.05
step
talk Brewmaster Bo##62491
turnin The Funky Monkey Brew##31058 |goto Unga Ingoo/0 49.56,60.70
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Unga Ingoo/0 49.56,60.70 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\A Little Patience (20-70)",{
author="QuestCore",
description="This guide will walk you through the \"A Little Patience\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7988,7989,7990,7992,7993,7991},
patch='100207',
model={46813},
startlevel=20,
endlevel=70,
mapid=912,
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of how Varian and Tyrande learned a Little Patience."_ |script GossipFrame:SelectGossipOption(10)
Enter the A Little Patience Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
talk King Varian Wrynn##69026
turnin A Little Patience##32248 |goto A Little Patience/0 41.91,15.44
stickystart "info"
step
talk Duff McStrum##68057 |goto A Little Patience/0 39.04,23.11
talk Ferra Pearl##68599 |goto A Little Patience/0 36.65,16.27
talk Rosey Axlerod##67883 |goto A Little Patience/0 42.46,24.15
talk Elder Adler##67569 |goto A Little Patience/0 22.60,32.64
talk Master Brownstone##68240 |goto A Little Patience/0 48.41,22.12
|tip Only two allies will be available.
|tip About thirty seconds after entering the scenario, you can look on your world map for white dialogue icons to note their location.
Click here when you talk to the two available NPCs |confirm
step
When you initiate the instance, there will be random defense camps that spawn.
|tip Refer to your map to locate them.
|tip Occasionally, the defense camps will be attacked. Have 1 well geared player defend, while the others gathering resources.
Kill enemies around the area
Construct #2# Defenses |scenariogoal 1/22517
step
label "info"
Throughout this scenario, you will need to collect various objects
|tip Look for shining objects on the ground.
|tip Use these objects at the available construction sites to increase your progress.
step
kill Commander Scargash##68474
|tip If you do not outgear the encounter and are targeted by Blood Rage, run away.
|tip Occasionally, Scargash will use Crushing Leap, jumping to an area and knocking everyone nearby back.
Defeat Commander Scargash |scenariogoal 2/22461 |goto A Little Patience/0 47.51,60.60
step
'|script LeaveInstanceParty()
Leave the Scenario |goto A Little Patience/0 47.51,60.60 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\Arena of Annihilation (25-70)",{
author="QuestCore",
description="This guide will walk you through the \"Arena of Annihilation\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7271,7272,7273},
patch='100207',
model={43509,43329,40963,39570,39747,43292,42937},
startlevel=25,
endlevel=70,
mapid=480,
},[[
step
talk Gurgthock##63315
accept The Arena of Annihilation##31207 |goto Kun-Lai Summit/0 68.69,48.37
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of the Arena of Annihilation."_ |script GossipFrame:SelectGossipOption(5)
Enter the Arena of Annihilation Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
click Tiger Temple Gong
Ring the Gong |scenariogoal 1/20810 |goto Proving Grounds/1 48.82,17.03
step
kill Scar-Shell##63311
|tip Crushing Bite reduces the armor of whomever it hits by 50%.
|tip Stone Spin is a whirlwind type attack. Immediately after it finishes, Scar-Shell will gain the Dizzy debuff, increses his damage taken by 50% for a short time.
Slay Scar-Shell |scenariogoal 1/19336 |goto Proving Grounds/1 45.95,51.34
step
click Tiger Temple Gong
Ring the Gong |scenariogoal 2/20810 |goto Proving Grounds/1 48.82,17.03
step
kill Jol'Grum##63312
|tip The tank moving causes his rage bar to build.
|tip If the bar reaches 100, he will become Angry. This is a light enrage.
|tip He will cast Headbutt on the tank which knocks them back.
|tip He will also jump to the middle and use Smash, knocking all players back.
Slay Jol'Grum |scenariogoal 2/19337 |goto Proving Grounds/1 45.95,51.34
step
click Tiger Temple Gong
Ring the Gong |scenariogoal 3/20810 |goto Proving Grounds/1 48.82,17.03
step
kill Little Liuyang##63313
|tip Liuyang will constantly shoot off fireballs and paths of fire. Avoid standing in fire.
|tip At around 40%, Firewall will be cast.
|tip Run counter-clockwise while killing the Flmecoaxing Spirits. Killing them will cause a section of the firewall to vanish.
|tip There are three of them.
Slay Little Liuyang |scenariogoal 3/21922 |goto Proving Grounds/1 45.95,51.34
step
click Tiger Temple Gong
Ring the Gong |scenariogoal 4/20810 |goto Proving Grounds/1 48.82,17.03
step
kill Chagan Firehoof##63318
|tip He will use Trailblaze on a random player. This leaves fire on the ground.
|tip Hammertime does damage to whomever is tanking.
|tip There is no real benefit to killing Batu. Just ignore him and kill Chagan.
Slay Chagan Firehoof |scenariogoal 4/19341 |goto Proving Grounds/1 45.95,51.34
step
click Tiger Temple Gong
Ring the Gong |scenariogoal 5/20810 |goto Proving Grounds/1 48.82,17.03
step
kill Satay Byu##64281
|tip Satay Byu will apply Slowing Poison with his basic attacks.
|tip If Slowing Poison reaches 20 stacks it will root the target in place.
|tip Speed of the Jinja will rapidly strike in front of Satay, run away from this.
Slay Satay Byu |scenariogoal 5/20587 |goto Proving Grounds/1 45.95,51.34
step
talk Wodin the Troll-Servant##63314
turnin The Arena of Annihilation##31207 |goto Proving Grounds/1 50.00,18.59
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Proving Grounds/1 50.00,18.59 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\Brewmoon Festival (25-70)",{
author="QuestCore",
description="This guide will walk you through the \"Brewmoon Festival\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={6923,6931,6930},
patch='100207',
model={43098,43661,43204},
startlevel=25,
endlevel=70,
mapid=884,
},[[
step
talk Brewmaster Boof##63367
accept The Kun-Lai Kicker##31611 |goto The Veiled Stair/0 51.92,43.74
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of the Brewmoon Festival."_ |script GossipFrame:SelectGossipOption(6)
Enter the Brewmoon Festival Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
Follow the path |goto Brewmoon Festival/0 41.47,72.77 < 10 |walk
Follow the path |goto Brewmoon Festival/0 38.94,70.51 < 10 |walk
kill Den Mother Moof##63518
|tip Kill all of the Virmen to spawn her.
|tip Twirlwind can be interrupted by stunning Moof.
|tip Occasionaly, Moof will burrow underground and summon a few weak Virmen mobs.
Defeat the virmen in the silos |scenariogoal 1/19524 |goto Brewmoon Festival/0 36.14,68.91
step
Follow the path |goto Brewmoon Festival/0 37.88,63.88 < 15 |walk
Follow the path |goto Brewmoon Festival/0 40.45,59.46 < 10 |walk
talk Assistant Tart##62793 |goto Brewmoon Festival/0 41.97,52.24 < 7
Select _"Can you help me get out on the water, Tart?"_
|tip This will grant you the ability to walk on water for five minutes.
kill Li Te##63520
|tip Kill all of the Water Spirits to spawn Li Te.
|tip Li Te will periodically be covered in a water shield. When that happens, kite it over water spouts before they burst.
Defeat Li Te |scenariogoal 1/19525 |goto Brewmoon Festival/0 43.41,42.24
step
Follow the path |goto Brewmoon Festival/0 49.96,62.78 < 20 |walk
Enter the cave |goto Brewmoon Festival/0 50.92,85.16 < 20 |walk
kill Karsar the Bloodletter##63529
|tip Karsar the Bloodletter has no aggro table.
|tip Instead, he has an ability called Taste for Blood. This ability causes the highest health party member to automatically have the highest threat.
Defeat Karsar the Bloodletter |scenariogoal 1/19526 |goto Brewmoon Festival/0 56.52,95.61
step
Leave the cave |goto Brewmoon Festival/0 50.89,85.42 < 20 |walk
Follow the path |goto Brewmoon Festival/0 45.79,79.09 < 15 |walk
Start brewing the Kun-Lai Kicker |scenariogoal 1/19716 |goto Brewmoon Festival/0 42.11,67.03
|tip Wait a few moments for this to complete.
step
You must first set up the village defenses before killing all Outrunners
|tip Barrels of Fireworks will allow you to blow up enemies.
|tip Krasarang Wild Brew will pulse fire wherever they are placed.
|tip The Tian Disciple will be dressed in yellow. Talk to them to deploy them.
|tip Vale Marksmen are sleeping pandaren on the ground. Talk to them to deploy them.
|tip Derpa Derpa may be in front of the gong. Talk to him and deploy the item he gives you on the ground. You can keep doing this.
|tip Briaw Shan will give you a Brew Strike ability. Talk to him and have him show you.
|tip If you are solo and cannot get enough defenses, click the Group Finder icon and teleport out and back in.
Set up the village defenses |scenariogoal 2/19529 |goto Brewmoon Festival/0 44.93,65.81
step
kill Bataari Outrunner##64165+
Defeat the scouts from the Ancient Passage |scenariogoal 2/19531 |goto Brewmoon Festival/0 45.06,74.29
step
Follow the path |goto Brewmoon Festival/0 42.15,66.92 < 15 |walk
kill Bataari Outrunner##64165+
Defeat the scouts from the West |scenariogoal 2/19527 |goto Brewmoon Festival/0 39.37,61.11
step
kill Bataari Outrunner##64165+
Defeat the scouts from the Bridge |scenariogoal 2/19530 |goto Brewmoon Festival/0 44.01,64.26
step
Kill Bataari enemies around this area
|tip Stage 3 consists of three waves of different Bataari mobs and War Yetis.
|tip Only one War Yeti will spawn per wave and it can be at any of the three attack points.
Stop the waves of Bataari Invaders |scenariogoal 3/19523 |goto Brewmoon Festival/0 42.40,65.84
step
kill Warbringer Qobi##63528
|tip Kite him out of Oil Slicks.
|tip Avoid standing in fire.
|tip When he is weak, click the axe to do a powerful whilrwind attack.
clicknpc Qobi's Axe##64268
Defeat Warbringer Qobi |scenariogoal 4/19528 |goto Brewmoon Festival/0 42.47,65.90
step
talk Brewmaster Boof##64901
turnin The Kun-Lai Kicker##31611 |goto Brewmoon Festival/0 43.76,68.54
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Brewmoon Festival/0 43.76,68.54 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\Crypt of Forgotten Kings (25-70)",{
author="QuestCore",
description="This guide will walk you through the \"Crypt of Forgotten Kings\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7522,7275,8311,8368,7276},
patch='100207',
model={48740,40884},
startlevel=25,
endlevel=70,
mapid=481,
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of the Crypt of Forgotten Kings."_ |script GossipFrame:SelectGossipOption(4)
Enter the Crypt of Forgotten Kings Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
Go down the stairs |goto Crypt of Forgotten Kings/1 64.05,24.21 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.05,31.81 < 15 |walk
Follow the path |goto Crypt of Forgotten Kings/1 57.19,39.00 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 50.68,39.05 < 10 |walk
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
kill Jin Ironfist##61814
|tip He will randomly jump to players in your group.
Slay Jin Ironfist |scenariogoal 1/19223 |goto Crypt of Forgotten Kings/1 43.83,39.91
step
Follow the path |goto Crypt of Forgotten Kings/1 46.43,51.84 < 15 |walk
Go down the stairs |goto Crypt of Forgotten Kings/1 46.51,59.19 < 15 |walk
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
kill Spawn of Hate##61709 |goto Crypt of Forgotten Kings/1 46.9,58.3
|tip Fight here until the Pool of Life is cleansed.
Cleanse the Pool of Life |scenariogoal 2/20882 |goto Crypt of Forgotten Kings/1 46.51,59.19
step
Go up the stairs |goto Crypt of Forgotten Kings/1 46.57,52.12 < 15
Follow the path |goto Crypt of Forgotten Kings/1 50.65,39.02 < 15 |walk
Follow the path |goto Crypt of Forgotten Kings/1 57.50,39.07 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.12,49.00 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.09,78.49 < 15 |walk
Follow the path |goto Crypt of Forgotten Kings/1 58.56,80.00 < 7 |walk
Follow the path |goto Crypt of Forgotten Kings/1 58.68,89.12 < 7 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.22,84.51 < 20 |walk
Follow the path |goto Crypt of Forgotten Kings/2 48.84,86.65 < 10 |walk
Go down the stairs |goto Crypt of Forgotten Kings/2 48.93,69.75 < 10 |walk
Kill enemies along the way
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
Find the source of evil |scenariogoal 3/21041 |goto Crypt of Forgotten Kings/2 48.93,69.75
step
Follow the path |goto Crypt of Forgotten Kings/2 46.21,55.13 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/2 36.83,38.27 < 10 |walk
Go up the stairs |goto Crypt of Forgotten Kings/2 36.80,29.73 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/2 43.86,27.72 < 10 |walk
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
kill Abomination of Anger##61707
|tip Deathforce will pull you to him. Run out of the red circle that surrounds him as fast as possible to avoid instant death.
|tip He will create red clouds on the ground that move around during the fight. These should be avoided.
Slay the Abomination of Anger |scenariogoal 4/19225 |goto Crypt of Forgotten Kings/2 48.93,35.81
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Crypt of Forgotten Kings/2 48.93,35.81 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\Crypt of Forgotten Kings (Heroic)",{
author="QuestCore",
description="This guide will walk you through the \"Crypt of Forgotten Kings\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={7522,7275,8311,8368,7276},
patch='100207',
model={48740,40884},
startlevel=25,
endlevel=70,
mapid=481,
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Shin##78777
|tip Inside the building.
Select _"Tell me of the Crypt of Forgotten Kings (Heroic)."_ |script GossipFrame:SelectGossipOption(2)
Enter the Crypt of Forgotten Kings Scenario |scenariostart |goto Vale of Eternal Blossoms/0 83.05,30.45
step
Go down the stairs |goto Crypt of Forgotten Kings/1 64.05,24.21 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.05,31.81 < 15 |walk
Follow the path |goto Crypt of Forgotten Kings/1 57.19,39.00 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 50.68,39.05 < 10 |walk
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
kill Jin Ironfist##61814
|tip He will randomly jump to players in your group.
Slay Jin Ironfist |scenariogoal 1/19223 |goto Crypt of Forgotten Kings/1 43.83,39.91
step
Follow the path |goto Crypt of Forgotten Kings/1 46.43,51.84 < 15 |walk
Go down the stairs |goto Crypt of Forgotten Kings/1 46.51,59.19 < 15 |walk
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
kill Spawn of Hate##61709 |goto Crypt of Forgotten Kings/1 46.9,58.3
|tip Fight here until the Pool of Life is cleansed.
Cleanse the Pool of Life |scenariogoal 2/20882 |goto Crypt of Forgotten Kings/1 46.51,59.19
step
Go up the stairs |goto Crypt of Forgotten Kings/1 46.57,52.12 < 15
Follow the path |goto Crypt of Forgotten Kings/1 50.65,39.02 < 15 |walk
Follow the path |goto Crypt of Forgotten Kings/1 57.50,39.07 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.12,49.00 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.09,78.49 < 15 |walk
Follow the path |goto Crypt of Forgotten Kings/1 58.56,80.00 < 7 |walk
Follow the path |goto Crypt of Forgotten Kings/1 58.68,89.12 < 7 |walk
Follow the path |goto Crypt of Forgotten Kings/1 64.22,84.51 < 20 |walk
Follow the path |goto Crypt of Forgotten Kings/2 48.84,86.65 < 10 |walk
Go down the stairs |goto Crypt of Forgotten Kings/2 48.93,69.75 < 10 |walk
Kill enemies along the way
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
Find the source of evil |scenariogoal 3/21041 |goto Crypt of Forgotten Kings/2 48.93,69.75
step
Follow the path |goto Crypt of Forgotten Kings/2 46.21,55.13 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/2 36.83,38.27 < 10 |walk
Go up the stairs |goto Crypt of Forgotten Kings/2 36.80,29.73 < 10 |walk
Follow the path |goto Crypt of Forgotten Kings/2 43.86,27.72 < 10 |walk
|tip Avoid tiles with red or yellow patterns, or ones with arrows on them.
kill Abomination of Anger##61707
|tip Deathforce will pull you to him. Run out of the red circle that surrounds him as fast as possible to avoid instant death.
|tip He will create red clouds on the ground that move around during the fight. These should be avoided.
Slay the Abomination of Anger |scenariogoal 4/19225 |goto Crypt of Forgotten Kings/2 48.93,35.81
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Crypt of Forgotten Kings/2 48.93,35.81 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\Assault on Zan'vess (30-70)",{
author="QuestCore",
description="This guide will walk you through the \"Assault on Zan'vess\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8016,8017},
patch='100207',
model={46500,29899},
startlevel=30,
endlevel=70,
mapid=883,
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of the Assault on Zan'vess."_ |script GossipFrame:SelectGossipOption(7)
Enter the Assault on Zan'vess Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
clicknpc Kor'kron Gunship##67275
Join the assault of Zan'vess |scenariogoal 1/22294 |goto Assault on Zan'vess/0 63.08,64.69
step
kill Sonic Control Tower##67279+
|tip Use the first ability on your bar to destroy them.
|tip If you see a missile incoming, use the second ability to raise a shield.
Destroy the Kyparite Quarry Sonic Control Towers |scenariogoal 2/22295 |goto Assault on Zan'vess/0 41.09,84.34
step
kill Zan'thik Guardian##67710+, Sonic Control Tower##67279+
|tip First, you must take out the Guardians channeling the shields.
|tip You will see yellow pools on the ground to indicate their location.
|tip Use the first ability on your bar to destroy them.
|tip If you see a missile incoming, use the second ability to raise a shield.
Destroy the Whispering Stone Sonic Control Towers |scenariogoal 2/22296 |goto Assault on Zan'vess/0 28.65,75.82
step
kill Scorpid Relocator##67784+, Sonic Control Tower##67279+
|tip First, you must take out the scorpids carrying the towers.
|tip Use the first ability on your bar to destroy them.
|tip If you see a missile incoming, use the second ability to raise a shield.
Destroy the Venomsting Pits Stone Sonic Control Towers |scenariogoal 2/22297 |goto Assault on Zan'vess/0 29.41,53.76
step
Follow the path |goto Assault on Zan'vess/0 50.34,45.32 < 15 |walk
Follow the path up |goto Assault on Zan'vess/0 50.56,53.05 < 15 |walk
kill Team Leader Scooter##67810
|tip You can pull the group of enemies before Bosh without engaging him.
Defeat Team Leader Scooter |scenariogoal 3/22300 |goto Assault on Zan'vess/0 51.00,55.69
step
Follow the path up |goto Assault on Zan'vess/0 48.49,55.32 < 15 |walk
Follow the path |goto Assault on Zan'vess/0 45.25,53.30 < 15 |walk
Follow the path |goto Assault on Zan'vess/0 42.25,53.66 < 15 |walk
Reach the Heart of Zan'vess |scenariogoal 3/22301 |goto Assault on Zan'vess/0 40.13,55.32
step
kill Commander Tel'vrak##67879
|tip Periodically, swarms of adds will engage.
|tip Use the special action ability "Strafing Run" to kill them.
|tip Move out of areas targeted on the ground.
Defeat Commander Tel'vrak |scenariogoal 4/22299 |goto Assault on Zan'vess/0 38.62,56.23
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Assault on Zan'vess/0 38.62,56.23 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\Battle on the High Seas (40-70)",{
author="QuestCore",
description="This guide will walk you through the \"Battle on the High Seas\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8347,8315,8366},
patch='100207',
model={48805,48809,48808,48807},
startlevel=40,
endlevel=70,
mapid=940,
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me the tale of a Battle on the High Seas."_ |script GossipFrame:SelectGossipOption(12)
Enter the Battle on the High Seas Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
Follow the path |goto Battle on the High Seas/0 36.93,21.16 < 7 |walk
kill Lieutenant Parker##71326
|tip Kill the waves of enemies until he spawns.
Defeat the Alliance Boarding Party |scenariogoal 1/23334 |goto Battle on the High Seas/0 39.35,21.70
step
Go up the stairs |goto Battle on the High Seas/0 41.17,22.71 < 5 |walk
clicknpc Transport Cannon##67343 |goto Battle on the High Seas/0 42.30,21.61 < 7
Use the cannon to reach the next boat |goto Battle on the High Seas/0 56.70,50.13 |noway |c
step
click Rope Pile##223281 |goto Battle on the High Seas/0 57.01,53.58
|tip It appears after you clear the boat of enemies.
Use the Rope Pile to reach the next boat |goto Battle on the High Seas/0 46.09,47.77 |noway |c
step
kill Lieutenant Fuseblast##71328 |goto Battle on the High Seas/0 47.45,45.27
clicknpc Barrel of Explosives##71106
Acquire the first explosive charge |scenariogoal 2/22261 |goto Battle on the High Seas/0 47.12,45.55 |count 1
step
Follow the path |goto Battle on the High Seas/0 42.96,48.67 < 7 |walk
Go down the stairs |goto Battle on the High Seas/0 42.49,46.26 < 7 |walk
kill Lieutenant Fizzboil##71330 |goto Battle on the High Seas/0 44.73,46.56
clicknpc Barrel of Explosives##71106
Acquire the second explosive charge |scenariogoal 2/22261 |goto Battle on the High Seas/0 44.73,46.56 |count 2
step
Follow the path |goto Battle on the High Seas/0 45.70,47.19 < 5 |walk
Follow the path |goto Battle on the High Seas/0 47.56,45.68 < 5 |walk
Go down the stairs |goto Battle on the High Seas/0 48.61,44.28 < 5 |walk
Go down the stairs |goto Battle on the High Seas/0 45.64,44.86 < 5 |walk
kill Lieutenant Boltblaster##71329 |goto Battle on the High Seas/0 42.56,47.62
clicknpc Barrel of Explosives##71106
Acquire the third explosive charge |scenariogoal 2/22261 |goto Battle on the High Seas/0 42.69,47.49 |count 3
step
clicknpc Plant Explosives##67394
Prime the first explosive |scenariogoal 3/22262 |goto Battle on the High Seas/0 44.77,45.33 |count 1
step
clicknpc Plant Explosives##67394
Prime the second explosive |scenariogoal 3/22262 |goto Battle on the High Seas/0 45.61,47.49 |count 2
step
clicknpc Plant Explosives##67394
Prime the third explosive |scenariogoal 3/22262 |goto Battle on the High Seas/0 47.15,45.64 |count 3
step
Go up the stairs |goto Battle on the High Seas/0 48.31,44.26 < 7 |walk
Go up the stairs |goto Battle on the High Seas/0 47.46,45.83 < 7 |walk
Follow the path |goto Battle on the High Seas/0 42.42,46.28 < 7 |walk
Go up the stairs |goto Battle on the High Seas/0 42.96,48.58 < 7 |walk
click Rope Pile##223281
|tip It's on the top deck of the ship. You'll want to hurry, otherwise you'll blow up with the ship!
Destroy the Alliance ship |scenariogoal 3/22258 |goto Battle on the High Seas/0 43.94,44.88
step
clicknpc Transport Cannon##67343 |goto Battle on the High Seas/0 55.07,52.59 < 7
Use the cannon to reach the next boat |goto Battle on the High Seas/0 59.28,84.55 |noway |c
step
kill Admiral Hodgson##71327
Defeat Admiral Hodgson |scenariogoal 4/23336 |goto Battle on the High Seas/0 56.00,82.83
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Battle on the High Seas/0 56.00,82.83 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\Battle on the High Seas (Heroic)",{
author="QuestCore",
description="This guide will walk you through the \"Battle on the High Seas\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8347,8315,8366},
patch='100207',
model={48805,48809,48808,48807},
startlevel=40,
endlevel=70,
mapid=940,
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Shin##78777
|tip Inside the building.
Select _"Tell me the tale of a Battle on the High Seas (Heroic)."_ |script GossipFrame:SelectGossipOption(3)
Enter the Battle on the High Seas Scenario |scenariostart |goto Vale of Eternal Blossoms/0 83.05,30.45
step
Follow the path |goto Battle on the High Seas/0 36.93,21.16 < 7 |walk
kill Lieutenant Parker##71326
|tip Kill the waves of enemies until he spawns.
Defeat the Alliance Boarding Party |scenariogoal 1/23334 |goto Battle on the High Seas/0 39.35,21.70
step
Go up the stairs |goto Battle on the High Seas/0 41.17,22.71 < 5 |walk
clicknpc Transport Cannon##67343 |goto Battle on the High Seas/0 42.30,21.61 < 7
Use the cannon to reach the next boat |goto Battle on the High Seas/0 56.70,50.13 |noway |c
step
click Rope Pile##223281 |goto Battle on the High Seas/0 57.01,53.58
|tip It appears after you clear the boat of enemies.
Use the Rope Pile to reach the next boat |goto Battle on the High Seas/0 46.09,47.77 |noway |c
step
kill Lieutenant Fuseblast##71328 |goto Battle on the High Seas/0 47.45,45.27
clicknpc Barrel of Explosives##71106
Acquire the first explosive charge |scenariogoal 2/22261 |goto Battle on the High Seas/0 47.12,45.55 |count 1
step
Follow the path |goto Battle on the High Seas/0 42.96,48.67 < 7 |walk
Go down the stairs |goto Battle on the High Seas/0 42.49,46.26 < 7 |walk
kill Lieutenant Fizzboil##71330 |goto Battle on the High Seas/0 44.73,46.56
clicknpc Barrel of Explosives##71106
Acquire the second explosive charge |scenariogoal 2/22261 |goto Battle on the High Seas/0 44.73,46.56 |count 2
step
Follow the path |goto Battle on the High Seas/0 45.70,47.19 < 5 |walk
Follow the path |goto Battle on the High Seas/0 47.56,45.68 < 5 |walk
Go down the stairs |goto Battle on the High Seas/0 48.61,44.28 < 5 |walk
Go down the stairs |goto Battle on the High Seas/0 45.64,44.86 < 5 |walk
kill Lieutenant Boltblaster##71329 |goto Battle on the High Seas/0 42.56,47.62
clicknpc Barrel of Explosives##71106
Acquire the third explosive charge |scenariogoal 2/22261 |goto Battle on the High Seas/0 42.69,47.49 |count 3
step
clicknpc Plant Explosives##67394
Prime the first explosive |scenariogoal 3/22262 |goto Battle on the High Seas/0 44.77,45.33 |count 1
step
clicknpc Plant Explosives##67394
Prime the second explosive |scenariogoal 3/22262 |goto Battle on the High Seas/0 45.61,47.49 |count 2
step
clicknpc Plant Explosives##67394
Prime the third explosive |scenariogoal 3/22262 |goto Battle on the High Seas/0 47.15,45.64 |count 3
step
Go up the stairs |goto Battle on the High Seas/0 48.31,44.26 < 7 |walk
Go up the stairs |goto Battle on the High Seas/0 47.46,45.83 < 7 |walk
Follow the path |goto Battle on the High Seas/0 42.42,46.28 < 7 |walk
Go up the stairs |goto Battle on the High Seas/0 42.96,48.58 < 7 |walk
click Rope Pile##223281
|tip It's on the top deck of the ship. You'll want to hurry, otherwise you'll blow up with the ship!
Destroy the Alliance ship |scenariogoal 3/22258 |goto Battle on the High Seas/0 43.94,44.88
step
clicknpc Transport Cannon##67343 |goto Battle on the High Seas/0 55.07,52.59 < 7
Use the cannon to reach the next boat |goto Battle on the High Seas/0 59.28,84.55 |noway |c
step
kill Admiral Hodgson##71327
Defeat Admiral Hodgson |scenariogoal 4/23336 |goto Battle on the High Seas/0 56.00,82.83
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Battle on the High Seas/0 56.00,82.83 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\Blood in the Snow (40-70)",{
author="QuestCore",
description="This guide will walk you through the \"Blood in the Snow\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8312,8316,8329,8330},
patch='100207',
model={48111,49055,48308},
startlevel=40,
endlevel=70,
mapid=939,
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me the tale of Blood in the Snow."_ |script GossipFrame:SelectGossipOption(13)
Enter the Blood in the Snow Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
Follow the path |goto Blood in the Snow/0 65.86,64.40 < 10 |walk
Follow the path up |goto Blood in the Snow/0 60.81,66.77 < 10 |walk
Follow the path up |goto Blood in the Snow/0 56.58,66.18 < 10 |walk
talk Mountaineer Grimbolt##70801
Contact the mountaineers |scenariogoal 1/23249 |goto Blood in the Snow/0 52.88,67.57
step
Kill Frostmane enemies around this area
|tip Before initiating combat, use the "Call the Shot" ability on-screen while targeting an elite.
clicknpc Roasting Spit##70597
Free Stonebeard |scenariogoal 2/23260 |goto Blood in the Snow/0 49.59,60.18
step
Follow the path |goto Blood in the Snow/0 47.80,65.84 < 15 |walk
Follow the path |goto Blood in the Snow/0 43.90,73.66 < 15 |walk
Kill Frostmane enemies around this area
|tip Before initiating combat, use the "Call the Shot" ability on-screen while targeting an elite.
Save Boldbrew |scenariogoal 3/23261 |goto Blood in the Snow/0 45.41,77.36
step
Follow the path |goto Blood in the Snow/0 37.89,66.27 < 15 |walk
kill Bonechiller Barafu##70468
|tip Before initiating combat, use the "Call the Shot" ability on-screen while targeting an elite.
Save Forgefellow |scenariogoal 4/23262 |goto Blood in the Snow/0 32.46,65.32
step
Follow the path |goto Blood in the Snow/0 37.07,62.53 < 15 |walk
Follow the path |goto Blood in the Snow/0 37.84,57.43 < 10 |walk
Follow the path |goto Blood in the Snow/0 35.66,51.04 < 10 |walk
Cross the bridge |goto Blood in the Snow/0 37.16,37.87 < 10 |walk
Follow the path |goto Blood in the Snow/0 39.21,32.26 < 15 |walk
Follow the path |goto Blood in the Snow/0 46.11,28.46 < 15 |walk
Enter the cave |goto Blood in the Snow/0 45.95,24.04 < 7 |walk
kill Farastu##70474
|tip Before initiating combat, use the "Call the Shot" ability on-screen while targeting an elite.
Slay the Elemental Spirit |scenariogoal 5/23263 |goto Blood in the Snow/0 43.46,22.73 < 7
stickystart "Capture_Frostmane_Village"
step
Follow the path |goto Blood in the Snow/0 46.86,25.23 < 15 |walk
Follow the path |goto Blood in the Snow/0 46.06,32.69 < 15 |walk
kill Hekima the Wise##70544
|tip Before initiating combat, use the "Call the Shot" ability on-screen while targeting an elite.
|tip Make sure you kill any rage banners that spawn during this fight.
Slay Hekima the Wise |scenariogoal 6/23264 |goto Blood in the Snow/0 48.20,47.36
step
label "Capture_Frostmane_Village"
Kill Frostmane enemies around this area
Capture the Frostmane village |scenariogoal 6/23265 |goto Blood in the Snow/0 47.58,47.81
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Blood in the Snow/0 47.58,47.81 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\Blood in the Snow (Heroic)",{
author="QuestCore",
description="This guide will walk you through the \"Blood in the Snow\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8312,8316,8329,8330},
patch='100207',
model={48111,49055,48308},
startlevel=40,
endlevel=70,
mapid=939,
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Shin##78777
|tip Inside the building.
Select _"Tell me the tale of Blood in the Snow (Heroic)."_ |script GossipFrame:SelectGossipOption(4)
Enter the Blood in the Snow Scenario |scenariostart |goto Vale of Eternal Blossoms/0 83.05,30.45
step
Follow the path |goto Blood in the Snow/0 65.86,64.40 < 10 |walk
Follow the path up |goto Blood in the Snow/0 60.81,66.77 < 10 |walk
Follow the path up |goto Blood in the Snow/0 56.58,66.18 < 10 |walk
talk Mountaineer Grimbolt##70801
Contact the Mountaineers |scenariogoal 1/23249 |goto Blood in the Snow/0 52.88,67.57
step
Kill Frostmane enemies around this area
|tip Before initiating combat, use the "Call the Shot" ability on-screen while targeting an elite.
clicknpc Roasting Spit##70597
Free Stonebeard |scenariogoal 2/23260 |goto Blood in the Snow/0 49.59,60.18
step
Follow the path |goto Blood in the Snow/0 47.80,65.84 < 15 |walk
Follow the path |goto Blood in the Snow/0 43.90,73.66 < 15 |walk
Kill Frostmane enemies around this area
|tip Before initiating combat, use the "Call the Shot" ability on-screen while targeting an elite.
Save Boldbrew |scenariogoal 3/23261 |goto Blood in the Snow/0 45.41,77.36
step
Follow the path |goto Blood in the Snow/0 37.89,66.27 < 15 |walk
kill Bonechiller Barafu##70468
|tip Before initiating combat, use the "Call the Shot" ability on-screen while targeting an elite.
Save Forgefellow |scenariogoal 4/23262 |goto Blood in the Snow/0 32.46,65.32
step
Follow the path |goto Blood in the Snow/0 37.07,62.53 < 15 |walk
Follow the path |goto Blood in the Snow/0 37.84,57.43 < 10 |walk
Follow the path |goto Blood in the Snow/0 35.66,51.04 < 10 |walk
Cross the bridge |goto Blood in the Snow/0 37.16,37.87 < 10 |walk
Follow the path |goto Blood in the Snow/0 39.21,32.26 < 15 |walk
Follow the path |goto Blood in the Snow/0 46.11,28.46 < 15 |walk
Enter the cave |goto Blood in the Snow/0 45.95,24.04 < 7 |walk
kill Farastu##70474
|tip Before initiating combat, use the "Call the Shot" ability on-screen while targeting an elite.
Slay the Elemental Spirit |scenariogoal 5/23263 |goto Blood in the Snow/0 43.46,22.73 < 7
stickystart "Capture_Frostmane_Village"
step
Follow the path |goto Blood in the Snow/0 46.86,25.23 < 15 |walk
Follow the path |goto Blood in the Snow/0 46.06,32.69 < 15 |walk
kill Hekima the Wise##70544
|tip Before initiating combat, use the "Call the Shot" ability on-screen while targeting an elite.
|tip Make sure you kill any rage banners that spawn during this fight.
Slay Hekima the Wise |scenariogoal 6/23264 |goto Blood in the Snow/0 48.20,47.36
step
label "Capture_Frostmane_Village"
Kill Frostmane enemies around this area
Capture the Frostmane Village |scenariogoal 6/23265 |goto Blood in the Snow/0 47.58,47.81
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Blood in the Snow/0 47.58,47.81 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\Dark Heart of Pandaria (40-70)",{
author="QuestCore",
description="This guide will walk you through the \"Dark Heart of Pandaria\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8319,8317,8318},
patch='100207',
model={48854,38305},
startlevel=40,
endlevel=70,
mapid=937,
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of the unearthing of the Dark Heart of Pandaria."_ |script GossipFrame:SelectGossipOption(14)
Enter the Dark Heart of Pandaria Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
talk Grizzle Gearslip##70956
Talk to Grizzle Gearslip |scenariogoal 1/23071 |goto Dark Heart of Pandaria/0 44.25,38.40
step
kill Urtharges the Destroyer##70959
|tip If you do not outlevel this scenario, you may need to kill mobs until Utharges' shield drops.
Slay Urtharges |scenariogoal 2/23236 |goto Dark Heart of Pandaria/0 54.35,56.00
step
Click on Artifacts
|tip They are boxes and items marked with a small beam of light.
|tip The gold ones are more valuable and can create a combo making the gathering go by faster.
|tip Just run over them to collect them.
Collect #50# artifacts |scenariogoal 3/23253 |goto Dark Heart of Pandaria/0 54.35,56.00
step
Follow the path |goto Dark Heart of Pandaria/0 47.73,63.97 < 15 |walk
Enter the mine |goto Dark Heart of Pandaria/1 75.41,13.37 < 7 |walk
Follow the path |goto Dark Heart of Pandaria/1 68.32,19.00 < 10 |walk
Follow the path |goto Dark Heart of Pandaria/1 65.38,29.61 < 10 |walk
Follow the path |goto Dark Heart of Pandaria/1 48.85,30.71 < 10 |walk
talk Crafty the Ambitious##71358
Select _"Everything is fine. Look, there's too much to explain..."_
Destroy the wall |scenariogoal 4/23238 |goto Dark Heart of Pandaria/1 45.97,35.97
step
Follow the path |goto Dark Heart of Pandaria/1 44.94,44.29 < 10 |walk
kill Echo of Y'Shaarj##71123
Slay the Echo of Y'Shaarj |scenariogoal 5/23251 |goto Dark Heart of Pandaria/1 36.45,58.89
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Dark Heart of Pandaria/1 36.45,58.89 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\Dark Heart of Pandaria (Heroic)",{
author="QuestCore",
description="This guide will walk you through the \"Dark Heart of Pandaria\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8319,8317,8318},
patch='100207',
model={48854,38305},
startlevel=40,
endlevel=70,
mapid=937,
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Shin##78777
|tip Inside the building.
Select _"Tell me of the unearthing of the Dark Heart of Pandaria (Heroic)."_ |script GossipFrame:SelectGossipOption(5)
Enter the Dark Heart of Pandaria Scenario |scenariostart |goto Vale of Eternal Blossoms/0 83.05,30.45
step
talk Grizzle Gearslip##70956
Talk to Grizzle Gearslip |scenariogoal 1/23071 |goto Dark Heart of Pandaria/0 44.25,38.40
step
kill Urtharges the Destroyer##70959
|tip If you do not outlevel this scenario, you may need to kill mobs until Utharges' shield drops.
Slay Urtharges |scenariogoal 2/23236 |goto Dark Heart of Pandaria/0 54.35,56.00
step
Click on Artifacts
|tip They are boxes and items marked with a small beam of light.
|tip The gold ones are more valuable and can create a combo making the gathering go by faster.
|tip Just run over them to collect them.
Collect #50# artifacts |scenariogoal 3/23253 |goto Dark Heart of Pandaria/0 54.35,56.00
step
Follow the path |goto Dark Heart of Pandaria/0 47.73,63.97 < 15 |walk
Enter the mine |goto Dark Heart of Pandaria/1 75.41,13.37 < 7 |walk
Follow the path |goto Dark Heart of Pandaria/1 68.32,19.00 < 10 |walk
Follow the path |goto Dark Heart of Pandaria/1 65.38,29.61 < 10 |walk
Follow the path |goto Dark Heart of Pandaria/1 48.85,30.71 < 10 |walk
talk Crafty the Ambitious##71358
Select _"Everything is fine. Look, there's too much to explain..."_
Destroy the wall |scenariogoal 4/23238 |goto Dark Heart of Pandaria/1 45.97,35.97
step
Follow the path |goto Dark Heart of Pandaria/1 44.94,44.29 < 10 |walk
kill Echo of Y'Shaarj##71123
Slay the Echo of Y'Shaarj |scenariogoal 5/23251 |goto Dark Heart of Pandaria/1 36.45,58.89
step
'|script LeaveInstanceParty()
Leave the Scenario |goto Dark Heart of Pandaria/1 36.45,58.89 > 1000 |noway |c
|tip Right-click your player frame and select "Leave Instance Group."
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\The Secrets of Ragefire (40-70)",{
author="QuestCore",
description="This guide will walk you through the \"The Secrets of Ragefire\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8327,8295,8294},
patch='100207',
model={48881,48758},
startlevel=40,
endlevel=70,
mapid=522,
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Fu##78709
|tip Inside the building.
Select _"Tell me of the unearthing of the Secrets of Ragefire."_ |script GossipFrame:SelectGossipOption(15)
Enter the The Secrets of Ragefire Scenario |scenariostart |goto Vale of Eternal Blossoms/0 82.96,30.38
step
Follow the path |goto The Secrets of Ragefire/1 69.33,58.67 < 15 |walk
click Detonator##240525
|tip Wait for the goblins to set the explosive charges.
Breach the main chamber |scenariogoal 1/23213 |goto The Secrets of Ragefire/1 63.72,50.64
step
Follow the path |goto The Secrets of Ragefire/1 51.67,53.11 < 15 |walk
kill Dark Shaman Xorenth##70683
|tip Kill the waves of enemies.
Defeat the enemy forces |scenariogoal 1/23216 |goto The Secrets of Ragefire/1 37.70,46.47
step
clicknpc Supply Crates##71203
Investigate the Supply Crates |scenariogoal 2/23255 |goto The Secrets of Ragefire/1 40.17,59.72
step
clicknpc Proto-Drake Eggs##71208
Investigate Proto-drake Eggs |scenariogoal 2/23254 |goto The Secrets of Ragefire/1 30.46,52.75
step
clicknpc Pandaria Artifacts##71209
Investigate Pandaria Artifacts |scenariogoal 2/23256 |goto The Secrets of Ragefire/1 27.35,41.44
step
clicknpc Cannon Balls##71176
Pick up a Cannon Ball |havebuff Cannon Ball##141832 |goto The Secrets of Ragefire/1 26.74,43.11 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the first Cannon Ball |scenariogoal 3/23307 |goto The Secrets of Ragefire/1 38.72,29.39 |count 1 |or
step
Deliver the first Cannon Ball |scenariogoal 3/23307 |goto The Secrets of Ragefire/1 38.72,29.39 |count 1
step
clicknpc Cannon Balls##71176
Pick up a Cannon Ball |havebuff Cannon Ball##141832 |goto The Secrets of Ragefire/1 26.74,43.11 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the second Cannon Ball |scenariogoal 3/23307 |goto The Secrets of Ragefire/1 38.72,29.39 |count 2 |or
step
Deliver the second Cannon Ball |scenariogoal 3/23307 |goto The Secrets of Ragefire/1 38.72,29.39 |count 2
step
clicknpc Cannon Balls##71176
Pick up a Cannon Ball |havebuff Cannon Ball##141832 |goto The Secrets of Ragefire/1 26.74,43.11 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the third Cannon Ball |scenariogoal 3/23307 |goto The Secrets of Ragefire/1 38.72,29.39 |count 3 |or
step
Deliver the third Cannon Ball |scenariogoal 3/23307 |goto The Secrets of Ragefire/1 38.72,29.39 |count 3
step
clicknpc Broken Proto-Drake Egg##71197
Pick up an Egg Yolk |havebuff Egg Yolk##141914 |goto The Secrets of Ragefire/1 29.46,52.14 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the Egg Yolk |scenariogoal 3/23309 |goto The Secrets of Ragefire/1 38.72,29.39 |or
step
Deliver the Egg Yolk |scenariogoal 3/23309 |goto The Secrets of Ragefire/1 38.72,29.39
step
clicknpc Pool Pony##71175
Pick up a Pool Pony |havebuff Pool Pony##141898 |goto The Secrets of Ragefire/1 37.81,59.50 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the Pool Pony |scenariogoal 3/23308 |goto The Secrets of Ragefire/1 38.72,29.39 |or
step
Deliver the Pool Pony |scenariogoal 3/23308 |goto The Secrets of Ragefire/1 38.72,29.39
step
clicknpc Battery##49846
Pick up a Battery |havebuff Battery##141904 |goto The Secrets of Ragefire/1 39.76,60.61 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the Batteries |scenariogoal 3/23310 |goto The Secrets of Ragefire/1 38.72,29.39 |count 1 |or
step
Deliver the Batteries |scenariogoal 3/23310 |goto The Secrets of Ragefire/1 38.72,29.39 |count 1
step
clicknpc Battery##49846
Pick up a Battery |havebuff Battery##141904 |goto The Secrets of Ragefire/1 39.76,60.61 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the Batteries |scenariogoal 3/23310 |goto The Secrets of Ragefire/1 38.72,29.39 |count 2 |or
step
Deliver the Batteries |scenariogoal 3/23310 |goto The Secrets of Ragefire/1 38.72,29.39 |count 2
step
Meet up with Patch and Ticker |scenariogoal 3/23313 |goto The Secrets of Ragefire/1 38.72,29.39
step
kill Overseer Elaglo##71030 |goto The Secrets of Ragefire/1 36.9,46.2
|tip You will fight several waves of enemies until Overseer Elaglo spawns.
|tip Be sure to avoid the pulsing areas on the ground from his stomp ability. They do a lot of damage.
Defend the Gob Squad |scenariogoal 4/23311 |goto The Secrets of Ragefire/1 37.00,45.89
step
Leave the Scenario |goto The Secrets of Ragefire/1 37.00,45.89 > 1000 |c
|tip Step onto the pad to teleport out.
]])
QuestCore:RegisterGuide("Dungeon Guides\\Pandaria (10-70)\\Pandaria Scenarios\\The Secrets of Ragefire (Heroic)",{
author="QuestCore",
description="This guide will walk you through the \"The Secrets of Ragefire\" scenario.",
keywords={"mists", "of", "pandaria", "scenario"},
achieveid={8327,8295,8294},
patch='100207',
model={48881,48758},
startlevel=40,
endlevel=70,
mapid=522,
},[[
step
Enter the building |goto Vale of Eternal Blossoms/0 81.40,31.95 < 10 |walk |only if not subzone("Seat of Knowledge")
talk Lorewalker Shin##78777
|tip Inside the building.
Select _"Tell me of the unearthing of the Secrets of Ragefire (Heroic)."_ |script GossipFrame:SelectGossipOption(6)
Enter the The Secrets of Ragefire Scenario |scenariostart |goto Vale of Eternal Blossoms/0 83.05,30.45
step
Follow the path |goto The Secrets of Ragefire/1 69.33,58.67 < 15 |walk
click Detonator##240525
|tip Wait for the goblins to set the explosive charges.
Breach the main chamber |scenariogoal 1/23213 |goto The Secrets of Ragefire/1 63.72,50.64
step
Follow the path |goto The Secrets of Ragefire/1 51.67,53.11 < 15 |walk
kill Dark Shaman Xorenth##70683
|tip Kill the waves of enemies.
Defeat the enemy forces |scenariogoal 1/23216 |goto The Secrets of Ragefire/1 37.70,46.47
step
clicknpc Supply Crates##71203
Investigate the Supply Crates |scenariogoal 2/23255 |goto The Secrets of Ragefire/1 40.17,59.72
step
clicknpc Proto-Drake Eggs##71208
Investigate Proto-drake Eggs |scenariogoal 2/23254 |goto The Secrets of Ragefire/1 30.46,52.75
step
clicknpc Pandaria Artifacts##71209
Investigate Pandaria Artifacts |scenariogoal 2/23256 |goto The Secrets of Ragefire/1 27.35,41.44
step
clicknpc Cannon Balls##71176
Pick up a Cannon Ball |havebuff Cannon Ball##141832 |goto The Secrets of Ragefire/1 26.74,43.11 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the first Cannon Ball |scenariogoal 3/23307 |goto The Secrets of Ragefire/1 38.72,29.39 |count 1 |or
step
Deliver the first Cannon Ball |scenariogoal 3/23307 |goto The Secrets of Ragefire/1 38.72,29.39 |count 1
step
clicknpc Cannon Balls##71176
Pick up a Cannon Ball |havebuff Cannon Ball##141832 |goto The Secrets of Ragefire/1 26.74,43.11 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the second Cannon Ball |scenariogoal 3/23307 |goto The Secrets of Ragefire/1 38.72,29.39 |count 2 |or
step
Deliver the second Cannon Ball |scenariogoal 3/23307 |goto The Secrets of Ragefire/1 38.72,29.39 |count 2
step
clicknpc Cannon Balls##71176
Pick up a Cannon Ball |havebuff Cannon Ball##141832 |goto The Secrets of Ragefire/1 26.74,43.11 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the third Cannon Ball |scenariogoal 3/23307 |goto The Secrets of Ragefire/1 38.72,29.39 |count 3 |or
step
Deliver the third Cannon Ball |scenariogoal 3/23307 |goto The Secrets of Ragefire/1 38.72,29.39 |count 3
step
clicknpc Broken Proto-Drake Egg##71197
Pick up an Egg Yolk |havebuff Egg Yolk##141914 |goto The Secrets of Ragefire/1 29.46,52.14 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the Egg Yolk |scenariogoal 3/23309 |goto The Secrets of Ragefire/1 38.72,29.39 |or
step
Deliver the Egg Yolk |scenariogoal 3/23309 |goto The Secrets of Ragefire/1 38.72,29.39
step
clicknpc Pool Pony##71175
Pick up a Pool Pony |havebuff Pool Pony##141898 |goto The Secrets of Ragefire/1 37.81,59.50 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the Pool Pony |scenariogoal 3/23308 |goto The Secrets of Ragefire/1 38.72,29.39 |or
step
Deliver the Pool Pony |scenariogoal 3/23308 |goto The Secrets of Ragefire/1 38.72,29.39
step
clicknpc Battery##49846
Pick up a Battery |havebuff Battery##141904 |goto The Secrets of Ragefire/1 39.76,60.61 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the Batteries |scenariogoal 3/23310 |goto The Secrets of Ragefire/1 38.72,29.39 |count 1 |or
step
Deliver the Batteries |scenariogoal 3/23310 |goto The Secrets of Ragefire/1 38.72,29.39 |count 1
step
clicknpc Battery##49846
Pick up a Battery |havebuff Battery##141904 |goto The Secrets of Ragefire/1 39.76,60.61 |or
|tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
Deliver the Batteries |scenariogoal 3/23310 |goto The Secrets of Ragefire/1 38.72,29.39 |count 2 |or
step
Deliver the Batteries |scenariogoal 3/23310 |goto The Secrets of Ragefire/1 38.72,29.39 |count 2
step
Meet up with Patch and Ticker |scenariogoal 3/23313 |goto The Secrets of Ragefire/1 38.72,29.39
step
kill Overseer Elaglo##71030 |goto The Secrets of Ragefire/1 36.9,46.2
|tip You will fight several waves of enemies until Overseer Elaglo spawns.
|tip Be sure to avoid the pulsing areas on the ground from his stomp ability. They do a lot of damage.
Defend the Gob Squad |scenariogoal 4/23311 |goto The Secrets of Ragefire/1 37.00,45.89
step
Leave the Scenario |goto The Secrets of Ragefire/1 37.00,45.89 > 1000 |c
|tip Step onto the pad to teleport out.
]])
