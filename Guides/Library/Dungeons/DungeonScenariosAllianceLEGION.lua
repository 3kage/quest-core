-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Alliance" then return end
QuestCore:RegisterGuide("Dungeon Guides\\Legion Scenarios\\Whispers of a Frightened World",{
condition_suggested=function() return level>=45 end,
keywords={"Magni, Hall, Of, Communion"},
description="This guide will walk you through completing the \"Whispers of a Frightened World\" scenario.",
},[[
step
accept Whispers of a Frightened World##46206 |goto Dalaran L/10 60.95,44.76
|tip You will accept this quest automatically.
step
click Portal to Wyrmrest Temple
Take the Dalaran portal to Wyrmrest Temple |q 46206/1 |goto Dalaran L/12 30.71,84.37
step
Enter the building |goto Sholazar Basin/0 80.56,54.45 < 20 |walk
Follow the path |goto Sholazar Basin/0 85.06,53.65 < 10
Meet Magni in Sholazar Basin |q 46206/2 |goto Sholazar Basin/0 88.43,52.99
step
Enter the building |goto Sholazar Basin/0 80.56,54.45 < 20 |walk
Follow the path |goto Sholazar Basin/0 85.06,53.65 < 10
Meet Magni in The Maker's Overlook |q 46206/3 |goto Sholazar Basin/0 88.43,52.99
step
click Power Conduit##270859
Open the first conduit |q 46206/4 |count 1 |goto Sholazar Basin/0 88.05,52.76
step
click Power Conduit##270859
Open the second conduit |q 46206/4 |count 2 |goto Sholazar Basin/0 88.12,53.39
step
click Power Conduit##270859
Open the third conduit |q 46206/4 |count 3 |goto Sholazar Basin/0 88.49,53.61
step
click Teleportation Pad##268578
Enter the scenario |scenariostart |goto Sholazar Basin/0 88.43,53.00 |q 46206
step
Find Magni |scenariogoal Find Magni##1/35795 |goto Hall of Communion/1 43.69,82.00 |q 46206
step
kill Distressing Vision##120489+, Haunting Phantasm##120484+, Unsettling Despair##121008+
Defeat #7# invaders |scenariogoal Defeat the invaders##2/36206 |goto Hall of Communion/1 52.96,81.97 |q 46206
step
Follow the path |goto Hall of Communion/1 48.94,71.87 < 20 |walk
clicknpc Damaged Construct##121038
|tip The Disburbing Echo tentacles will occasionally cast Dark Demise, pulling you towards them.
|tip Interrupt them to stop the cast.
Activate the first Damaged Construct |scenariogoal Reactivate the defenses##3/36209 |goto Hall of Communion/1 48.54,59.52 |count 1 |q 46206
step
clicknpc Damaged Construct##121038
|tip The Disburbing Echo tentacles will occasionally cast Dark Demise, pulling you towards them.
|tip Interrupt them to stop the cast.
Activate the second Damaged Construct |scenariogoal Reactivate the defenses##3/36209 |goto Hall of Communion/1 44.23,51.15 |count 2 |q 46206
step
clicknpc Damaged Construct##121038
|tip The Disburbing Echo tentacles will occasionally cast Dark Demise, pulling you towards them.
|tip Interrupt them to stop the cast.
Activate the third Damaged Construct |scenariogoal Reactivate the defenses##3/36209 |goto Hall of Communion/1 54.86,54.97 |count 3 |q 46206
step
clicknpc Damaged Construct##121038
|tip The Disburbing Echo tentacles will occasionally cast Dark Demise, pulling you towards them.
|tip Interrupt them to stop the cast.
Activate the final Damaged Construct |scenariogoal Reactivate the defenses##3/36209 |goto Hall of Communion/1 49.18,44.72 |count 4 |q 46206
step
kill Amalgam of Torment##120486+
Defeat the Amalgam of Torment |scenariogoal Amalgam of Torment defeated##4/36160 |goto Hall of Communion/1 49.20,39.83 |q 46206
step
Follow the path |goto Hall of Communion/1 48.97,20.52 < 15 |walk
Tell him: _"Let us hear what she has to say, Magni."_
Speak with Magni |scenariogoal Speak with Magni##5/35796 |goto Hall of Communion/1 48.94,11.47 |q 46206
step
Hear Azeroth's warning |q 46206/5 |goto Sholazar Basin/0 88.43,53.00
|tip Wait for the dialogue to complete.
step
click Teleportation Pad##268578 |goto Hall of Communion/1 49.74,8.82 < 7 |walk
|tip Wait for the dialogue to complete.
Return to Dalaran |goto Dalaran L/10 39.65,50.54 < 10000 |c |noway |q 46206
step
talk Archmage Khadgar##90417
turnin Whispers of a Frightened World##46206 |goto Dalaran L/10 28.48,48.31
]])
QuestCore:RegisterGuide("Dungeon Guides\\Legion Scenarios\\The Deaths of Chromie Portals",{
description="This guide will walk you through completing \"The Deaths of Chromie\" scenario.",
condition_suggested=function() return level>=45 end,
condition_end=function() return completedq(47558) and completedq(47560) and completedq(47557) and completedq(47559) end,
model={10008},
startlevel=45.00,
},[[
step
talk Archmage Khadgar##90417
accept Chromie##48021 |goto Dalaran L/10 28.48,48.33
step
talk Chromie##27856
accept The Day That Chromie Dies##47543 |goto Dragonblight/0 60.00,54.51
step
talk Chromie##27856
Tell her: _"I'm ready. Let's go!"_
Enter the scenario |scenariostart |goto Dragonblight/0 60.00,54.51 |q 47543 |future
step
talk Chromie##122510
|tip She stands next to you.
Tell her: _"Ready when you are."_
Speak with Chromie |scenariogoal 1/36889 |goto Chromie Dragonblight/1 59.76,53.57 |q 47543 |future
step
Witness Chromie's demise |scenariogoal 2/36912 |goto Chromie Dragonblight/1 59.99,54.34 |q 47543 |future
|tip Follow Chromie and wait for her to die.
step
talk Chromie##27856
turnin The Day That Chromie Dies##47543 |goto Dragonblight/0 60.00,54.51
accept Rewind##47545 |goto Dragonblight/0 60.00,54.51
step
talk Chromie##27856
Tell her: _"I'm ready. Let's try this again!"_
Enter the scenario |scenariostart |goto Dragonblight/0 60.00,54.51 |q 47545 |future
step
talk Kalecgos##122514
Tell him: _"Seen anything strange lately?"_
Speak with Kalecgos |scenariogoal 1/36904 |goto Chromie Dragonblight/1 59.51,54.28 |q 47545 |future
step
talk Lord Itharius##122513
Tell him: _"Seen anything strange lately?"_
Speak with Lord Itharius |scenariogoal 1/36903 |goto Chromie Dragonblight/1 59.63,54.55 |q 47545 |future
step
talk Alexstrasza the Life-Binder##122511
Tell her: _"Seen anything strange lately?"_
Speak with Alexstrasza |scenariogoal 1/36764 |goto Chromie Dragonblight/1 59.83,54.66 |q 47545 |future
step
talk Chromie##122510
Tell her: _"Seen anything strange lately?"_
Speak with Chromie |scenariogoal 1/36905 |goto Chromie Dragonblight/1 60.03,54.52 |q 47545 |future
|tip Wait for the dialogue to complete.
step
Witness Chromie's demise... again |scenariogoal 2/36890 |goto Chromie Dragonblight/1 60.03,54.52 |q 47545 |future
|tip Wait for the dialogue to complete.
step
label "Start"
talk Chromie##27856
turnin Rewind##47545 |goto Dragonblight/0 60.00,54.51 |only if not completedq(47545)
accept The Many Advantages of Being a Time Dragon##47550 |goto Dragonblight/0 60.00,54.51 |only if not completedq(47550) and completedq(47545)
accept Preserve the True Future##47904 |goto Dragonblight/0 60.00,54.51 |only if completedq(47550) and not completedq(47904)
accept The Deaths of Chromie##47906 |goto Dragonblight/0 60.00,54.51 |only if completedq(47904)
step
talk Chromie##27856
Tell her: _"Ready when you are!"_ |only if default
Tell her: _"Let's go try to save you again!"_ |only if completedq(47550)
Enter the scenario |scenariostart |goto Dragonblight/0 60.00,54.51
stickystart "info"
step
talk Chromie##122663
turnin The Many Advantages of Being a Time Dragon##47550 |goto Chromie Dragonblight/1 59.76,53.57
step
talk Chromie##122663
Tell her: _"Let's adjust our strategy."_
Select Chromie's talents |scenariogoal 1/36765 |goto Chromie Dragonblight/1 59.76,53.57 |or
|tip Chromie's talents work similar to Class Hall upgrades.
|tip Each talent has a specific reputation requirement, as well as a reseach time requirement.
|tip It takes just over 10 days to unlock all of Chromie's talents.
confirm |or
|only if inscenario
step
talk Chromie##122663
Tell her: _"I'm ready. Let's save your life!"_
Start the scenario |scenariostage 1 |goto Chromie Dragonblight/1 59.76,53.57
|next "Zorathides" |only not completedq(47558) and completedq(47644)
|next "Icechill" |only if not completedq(47560) and completedq(47642)
|next "Gargantuan" |only if not completedq(47557) and completedq(47645)
|next "Vylethorn" |only if completedq(47559) and completedq(47643)
|only if inscenario
step
Enter the cave |goto Chromie Dragonblight/1 37.25,31.80 < 15 |walk
Follow the path |goto Chromie Dragonblight/2 67.27,59.79 < 15 |walk
Follow the path |goto Chromie Dragonblight/2 59.59,56.44 < 15 |walk
Follow the path |goto Chromie Dragonblight/2 61.71,19.31 < 15 |walk
Follow the path |goto Chromie Dragonblight/2 54.22,23.92 < 15 |walk
Follow the path |goto Chromie Dragonblight/2 45.47,45.81 < 15 |walk
kill Charredbone Goliath##122528
collect Demonic Corestone##150938 |n
accept Demonic Corestone##47644 |goto Chromie Dragonblight/2 37.33,51.73
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/2 49.94,52.42 < 15 |walk
Follow the path |goto Chromie Dragonblight/2 59.37,56.86 < 15 |walk
Follow the path |goto Chromie Dragonblight/2 75.17,57.14 < 15 |walk
talk Chromie##122663
turnin Demonic Corestone##47644 |goto Chromie Dragonblight/1 37.45,31.85
|only if inscenario
step
label "Zorathides"
kill Zorathides##122871
|tip Face Zorathides away from Chromie when he casts Carrion Swarm.
|tip Stun Zorathides when he casts Infernal Strike whenever possible.
collect 1 Fel-Touched Chronoshard##150944 |n
accept Fel-Touched Chronoshard##47558 |goto Chromie Dragonblight/1 37.86,31.08
|only if inscenario
step
talk Chromie##122663
turnin Fel-Touched Chronoshard##47558 |goto Chromie Dragonblight/1 60.03,54.52
|only if inscenario
step
kill Earlis the Deathrider##122541
collect 1 Soul Crystal Fragment##150939 |goto Chromie Dragonblight/1 47.52,52.63 |q 47642 |future
|only if inscenario
step
kill Alyndriel Graveborn##122542
collect 2 Soul Crystal Fragment##150939 |goto Chromie Dragonblight/1 45.22,51.52 |q 47642 |future
|only if inscenario
step
kill Festerbloat##122540
collect 3 Soul Crystal Fragment##150939 |goto Chromie Dragonblight/1 49.14,45.14 |q 47642 |future
|only if inscenario
step
Use the extra action button on-screen to form a Soul Crystal
accept Soul Crystal##47642 |goto Chromie Dragonblight/1 49.14,45.14
|only if inscenario
step
Enter the tree |goto Chromie Dragonblight/1 47.99,50.01 < 15 |walk
talk Chromie##122663
turnin Soul Crystal##47642 |goto Chromie Dragonblight/1 47.88,49.41
|only if inscenario
step
label "Icechill"
kill Talar Icechill##122874
|tip Free Chromie from Deep Freeze.
|tip Move Talar on top of Chromie to minimize DPS loss.
collect 1 Frozen Chronoshard##150946 |n
accept Frozen Chronoshard##47560 |goto Chromie Dragonblight/1 47.62,48.80
|only if inscenario
step
talk Chromie##122663
turnin Frozen Chronoshard##47560 |goto Chromie Dragonblight/1 60.03,54.52
|only if inscenario
step
kill Leyline Elemental##122552+
collect 50 Darkened Scrap of Vellum##151141 |goto Chromie Dragonblight/1 55.88,64.93 |q 47645 |future
|only if inscenario
step
Use the extra action button on-screen
accept Voidcallers' Scroll##47645 |goto Chromie Dragonblight/1 55.88,64.93
|only if inscenario
step
talk Chromie##122663
turnin Voidcallers' Scroll##47645 |goto Chromie Dragonblight/1 56.60,66.14
|tip Fly up the the platform floating above the ground.
|only if inscenario
step
label "Gargantuan"
kill Void Gargantuan##122553
|tip Interrupt Voidbolt as often as possible. This will shadow-lock it and prevent Looming Darkness from being cast as often.
|tip You can also stun the Void Gargantuan to interrupt Looming Darkness.
|tip If Looming Darkness is cast, quickly move out of the area on the ground.
collect 1 Smoldering Chronoshard##150943 |n
accept Smoldering Chronoshard##47557 |goto Chromie Dragonblight/1 56.60,66.14
|only if inscenario
step
talk Chromie##122663
turnin Smoldering Chronoshard##47557 |goto Chromie Dragonblight/1 60.03,54.52
|only if inscenario
step
kill Emerald Skytalon##122548+, Emerald Lasher##27254+
collect 24 Emeraldine Plume##151168 |goto Chromie Dragonblight/1 63.54,72.05 |q 47643 |future
collect 30 Twisted Fiber##151167 |goto Chromie Dragonblight/1 63.54,72.05 |q 47643 |future
|only if inscenario
step
Use the extra action button on-screen to create a Nightmare-Catcher
kill Dream Tormentor##123458+ |goto Chromie Dragonblight/1 65.20,72.49
confirm |q 47643 |future
|only if inscenario
step
Use the extra action button on-screen to create a Nightmare-Catcher
kill Dream Tormentor##123458+ |goto Chromie Dragonblight/1 63.28,75.76
confirm |q 47643 |future
|only if inscenario
step
Use the extra action button on-screen to create a Nightmare-Catcher
kill Dream Tormentor##123458+ |goto Chromie Dragonblight/1 61.74,73.90
confirm |q 47643 |future
|only if inscenario
step
accept The Ancients' Wisdom##47643 |goto Chromie Dragonblight/1 61.87,73.89
|tip You will accept this quest automatically.
|only if inscenario
step
talk Chromie##122663
turnin The Ancients' Wisdom##47643 |goto Chromie Dragonblight/1 63.52,71.99
|only if inscenario
step
label "Vylethorn"
kill Thalas Vylethorn##122875
|tip Interrupt Sleep on every cast or you will lose time as well as take additional damage from avoidable effects.
|tip Move out of Dark Eruption or you will take massive damage.
|tip Nightmare Bolt will apply a stacking damage debuff called Vile Thorns.
collect 1 Gleaming Chronoshard##150945 |n
accept Gleaming Chronoshard##47559 |goto Chromie Dragonblight/1 63.91,72.57
|only if inscenario
step
talk Chromie##122663
turnin Gleaming Chronoshard##47559 |goto Chromie Dragonblight/1 60.03,54.52
|only if inscenario
step
label "info"
Use the _Sands of Time_ items you collect to gain various buffs
|tip You will be able to select one of two random rewards.
|tip Initially, you'll want to focus on reputation gains.
|only if inscenario
step
label "qCheck"
talk Chromie##122663 |only if completedq("47904/1") or completedq("47904/1")
turnin Preserve the True Future##47904 |goto Dragonblight/0 60.00,54.51 |only if haveq(47904) and completedq("47904/1")
turnin The Deaths of Chromie##47906 |goto Dragonblight/0 60.00,54.51 |only if haveq(47906) and completedq("47906/1")
label "End"
You still need to complete the following shrines:
_Obsidian Dragonshrine_ |only if not completedq(47558)
_Ruby Dragonshrine_ |only if not completedq(47560)
_Azure Dragonshrine_ |only if not completedq(47557)
_Emerald Dragonshrine_ |only if not completedq(47559)
Click here to restart this scenario |confirm |next "Start" |only if not completedq(47558) or not completedq(47560) or not completedq(47557) or not completedq(47559)
step
talk Archmage Khadgar##90417
turnin Chromie##48021 |goto Dalaran L/10 28.46,48.33
step
Congratulations!
You have unlocked all of the portals in "The Deaths of Chromie" scenario
Click here to load "The Deaths of Chromie (Stratholme Intro)" guide |confirm |next "Dungeon Guides\\Legion Scenarios\\The Deaths of Chromie (Stratholme Intro)"
]])
QuestCore:RegisterGuide("Dungeon Guides\\Legion Scenarios\\The Deaths of Chromie Speed Run",{
description="This guide will walk you through completing \"The Deaths of Chromie\" scenario as quickly as possible.",
condition_suggested=function() return level>=45 end,
condition_end=function() return completedq(47906) end,
model={10008},
startlevel=45.00,
},[[
step
label "Start"
talk Chromie##27856
accept Preserve the True Future##47904 |goto Dragonblight/0 60.00,54.51 |only if completedq(47550) and not completedq(47904)
accept The Deaths of Chromie##47906 |goto Dragonblight/0 60.00,54.51 |only if completedq(47904)
step
talk Chromie##27856
Tell her: _"Let's go try to save you again!"_
Enter the scenario |scenariostart |goto Dragonblight/0 60.00,54.51
stickystart "info"
step
talk Chromie##122663
Tell her: _"Let's adjust our strategy."_
Select Chromie's talents |scenariogoal 1/36765 |goto Chromie Dragonblight/1 59.76,53.57 |or
|tip Chromie's talents work similar to Class Hall upgrades.
|tip Each talent has a specific reputation requirement, as well as a reseach time requirement.
|tip It takes just over 10 days to unlock all of Chromie's talents.
confirm |or
|only if inscenario
step
talk Chromie##122663
Tell her: _"I'm ready. Let's save your life!"_
Start the scenario |scenariostage 1 |goto Chromie Dragonblight/1 59.76,53.57
|only if inscenario
step
talk Chromie##122510
accept Worried About My Friends##47807 |goto Chromie Dragonblight/1 60.03,54.52 |or
talk Alexstrasza the Life-Binder##122511
accept The Dead Walk##47808 |goto Chromie Dragonblight/1 59.83,54.66 |or
talk Lord Itharius##122513
accept Darkened Dreams##47810 |goto Chromie Dragonblight/1 59.63,54.55 |or
talk Kalecgos##122514
accept Darkness in the Ley##47809 |goto Chromie Dragonblight/1 59.51,54.27 |or
|tip A quest is not always offered. If no quest is available, just leave the temple.
|tip
Or
|tip
Exit the temple to the South |goto Chromie Dragonblight/1 59.80,54.25 > 60 |noway |c |or
|tip There will be one quest available at most.
|only if inscenario
step
kill Iceshatter##122522 |q 47937 |goto Chromie Dragonblight/1 61.49,69.73 |repeatable |future
|tip Stay in melee range at all times or you will take heavy damage from Brutish Charge.
|tip Move away from Iceshatter when he starts casting Pulsing Shards.
|only if inscenario
step
Check for a Time Chest |goto Chromie Dragonblight/1 65.37,75.79 < 25 |walk
Check for a Time Chest |goto Chromie Dragonblight/1 63.49,75.07 < 25 |walk
kill Thalas Vylethorn##122875 |goto Chromie Dragonblight/1 63.91,72.57 |scenariogoal 2/37056 |count QC:SaveChromieProgress(1)
|tip Interrupt Sleep on every cast or you will lose time as well as take additional damage from avoidable effects.
|tip Move out of Dark Eruption or you will take massive damage.
|tip Nightmare Bolt will apply a stacking damage debuff called Vile Thorns.
|only if QC:IsDragonshrineUp("Emerald")
step
Check for a Time Chest |goto Chromie Dragonblight/1 56.55,68.94 < 25 |walk
Check for a Time Chest |goto Chromie Dragonblight/1 54.42,65.01 < 25 |walk
kill Void Gargantuan##122553 |goto Chromie Dragonblight/1 56.60,66.14 |scenariogoal 2/37056 |count QC:SaveChromieProgress(2)
|tip Interrupt Voidbolt as often as possible. This will shadow-lock it and prevent Looming Darkness from being cast as often.
|tip You can also stun the Void Gargantuan to interrupt Looming Darkness.
|tip If Looming Darkness is cast, quickly move out of the area on the ground.
|only if QC:IsDragonshrineUp("Azure")
step
kill Bloodfeast##122524 |q 47938 |goto Chromie Dragonblight/1 58.56,63.94 |repeatable |future
|tip Stay in melee range at all times or you will take heavy damage from Brutish Charge.
|tip AoE maggots quickly or they will heal Bloodfeast.
|only if inscenario
step
kill Bonesunder##122521 |q 47936 |goto Chromie Dragonblight/1 57.20,54.85 |repeatable |future
|tip Stay in melee range at all times or you will take heavy damage from Brutish Charge.
|tip Run away during Bone Crack or you will take increased damage.
|only if inscenario
step
kill Dregmar Runebrand##122519 |q 47934 |goto Chromie Dragonblight/1 52.59,49.60 |repeatable |future
|tip Stay in melee range at all times or you will take heavy damage from Brutish Charge.
|tip Move out of areas on the ground affected by Explosive Rune.
|only if inscenario
step
Check for a Time Chest |goto Chromie Dragonblight/1 48.85,51.08 < 25 |walk
Enter the tree |goto Chromie Dragonblight/1 47.92,49.71 < 10 |walk
kill Talar Icechill##122874 |goto Chromie Dragonblight/1 47.62,48.80 |scenariogoal 2/37056 |count QC:SaveChromieProgress(3)
|tip Free Chromie from Deep Freeze.
|tip Move Talar on top of Chromie to minimize DPS loss.
|only if QC:IsDragonshrineUp("Ruby")
step
kill Icefist##122520 |q 47935 |goto Chromie Dragonblight/1 43.51,30.61 |repeatable |future
|tip Stay in melee range at all times or you will take heavy damage from Brutish Charge.
|tip Move away during Tusk Strike.
|tip Be aware that your movement speed may be reduced from Ice Slash.
|only if inscenario
step
kill Zorathides##122871 |goto Chromie Dragonblight/1 37.86,31.08 |scenariogoal 2/37056 |count QC:SaveChromieProgress(4)
|tip Face Zorathides away from Chromie when he casts Carrion Swarm.
|tip Stun Zorathides when he casts Infernal Strike whenever possible.
|only if QC:IsDragonshrineUp("Obsidian")
step
Enter the Obsidian Dragonshrine |goto Chromie Dragonblight/1 37.14,31.76 < 15 |walk
Follow the path |goto Chromie Dragonblight/2 70.04,52.04 < 10 |walk
Follow the path |goto Chromie Dragonblight/2 71.86,29.85 < 10 |walk
Check for the triple chest spawn, then die |goto Chromie Dragonblight/2 67.33,27.12 |complete isdead
|tip Jump in the lava behind you, staying close to the wall so Chromie doesn't heal you.
|only if inscenario
step
talk Chromie##122510 |only if haveq(47807)
turnin Worried About My Friends##47807 |goto Chromie Dragonblight/1 60.03,54.52 |only if haveq(47807)
talk Alexstrasza the Life-Binder##122511 |only if haveq(47808)
turnin The Dead Walk##47808 |goto Chromie Dragonblight/1 59.83,54.66 |only if haveq(47808)
talk Lord Itharius##122513 |only if haveq(47810)
turnin Darkened Dreams##47810 |goto Chromie Dragonblight/1 59.63,54.55 |only if haveq(47810)
talk Kalecgos##122514 |only if haveq(47809)
turnin Darkness in the Ley##47809 |goto Chromie Dragonblight/1 59.51,54.27 |only if haveq(47809)
|only if inscenario
step
clicknpc The War for Andorhal##122339 |goto Chromie Dragonblight/1 60.38,54.51
Enter the portal |goto Chromie Dragonblight/3 43.50,69.83 < 100 |noway |c
|next "Andorhal" |only if itemcount(151549) == 0
|only if inscenario
step
talk Adrine Towhide##124379
Give him the Cenarion Circle Documents |scenariogoal 2/37056 |count 5 |goto Chromie Dragonblight/3 43.47,69.23
|next "leaveAnd"
|only if inscenario
step
label "Andorhal"
talk Chromie##124154
accept Sky Ablaze With Cannonfire##47772 |goto Chromie Dragonblight/3 43.92,69.24 |repeatable
|only if inscenario
stickystart "Boom"
step
Check for a Time Chest |goto Chromie Dragonblight/3 47.74,64.43 < 20 |walk
kill Apothecary Tillings##124100
collect 1 Experimental Alchemy Reagent##151368 |goto Chromie Dragonblight/3 47.53,62.50
|only if inscenario
step
Check for a Time Chest |goto Chromie Dragonblight/3 47.63,69.90 < 20 |walk
kill Roobi Skizzelvolt##124101
collect 1 Lightning Absorption Capsule##151369 |goto Chromie Dragonblight/3 48.69,69.65
|only if inscenario
step
label "Boom"
kill Deathguard War-Captain##124074+
collect 7 Military Explosives##151370 |goto Chromie Dragonblight/3 48.60,67.37
|tip War-Captains patrol around the area.
|only if inscenario
step
clicknpc Horde Siege Cannon##124052
Use the Alchemy Reagent to remove the shield |use Experimental Alchemy Reagent##151368
Use the Lightning Capsule to disable the defense grid |use Lightning Absorption Capsule##151369
Use Military Explosives to defeat the cannon |use Military Explosives##151370
Find a way to take down the Horde Siege Cannon |q 47772/1 |goto Chromie Dragonblight/3 46.89,67.32
|only if inscenario
step
talk Chromie##124154
turnin Sky Ablaze With Cannonfire##47772 |goto Chromie Dragonblight/3 43.92,69.23
|only if inscenario
step
label "leaveAnd"
clicknpc Wyrmrest Temple##124766 |goto Chromie Dragonblight/3 43.47,70.04
Return to Wyrmrest Temple |goto Chromie Dragonblight/1 59.76,53.57 < 100 |noway |c
|only if inscenario
step
clicknpc The Burning of Mount Hyjal##122340 |goto Chromie Dragonblight/1 60.09,55.06
Enter the portal |goto Chromie Dragonblight/4 32.09,97.14 < 100 |noway |c
|next "Hyjal" |only if itemcount(151547) == 0
|only if inscenario
step
Use the Brimstone Beacon |use Brimstone Beacon##151547
Summon the Fiery Behemoth |complete itemcount(151547) == 0 |goto Chromie Dragonblight/4 33.36,96.30
|only if inscenario
step
label "Hyjal"
kill Fiery Behemoth##123021 |scenariogoal 2/37056 |count 6 |goto Chromie Dragonblight/4 33.36,96.30
|tip You will need to fight through three waves of trash before engaging this boss.
|tip Be sure to keep an eye on Chromie's health, and move enemies away when she takes damage.
|only if inscenario
step
clicknpc Wyrmrest Temple##124766 |goto Chromie Dragonblight/4 31.98,97.17
Return to Wyrmrest Temple |goto Chromie Dragonblight/1 59.76,53.57 < 100 |noway |c
|only if inscenario
step
click Culling of Stratholme |goto Chromie Dragonblight/1 59.61,55.12
Enter the portal |goto Chromie Dragonblight/6 50.67,100.90 < 100 |noway |c
|next "Stratholme" |only if itemcount(151546) >= 1
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 54.10,84.29 < 20 |walk
Follow the path |goto Chromie Dragonblight/6 50.54,75.17 < 20 |walk
Enter the inn |goto Chromie Dragonblight/6 53.13,65.91 < 10 |walk
talk Emery Neill##123781
accept Smoke, Meat, and Pretty Flowers##47744 |goto Chromie Dragonblight/6 56.33,68.39 |repeatable
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 45.79,62.72 < 25 |walk
Enter the building |goto Chromie Dragonblight/6 42.49,71.23 < 10 |walk
talk Ezra Grimm##123782
buy 1 Fras' Special Pipe Blend##151280 |n
buy 1 Flinty Firestarter##151284 |n
collect 1 Fras' Special Pipe Blend##151280 |goto Chromie Dragonblight/6 41.49,70.66
collect 1 Flinty Firestarter##151284 |goto Chromie Dragonblight/6 41.49,70.66
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 46.70,62.14 < 25 |walk
Follow the path |goto Chromie Dragonblight/6 55.32,60.73 < 15 |walk
Enter the building |goto Chromie Dragonblight/6 63.34,54.07 < 10 |walk
talk Sophie Aaren##123779
buy 1 Marigold Bouquet##151287 |n
collect 1 Marigold Bouquet##151287 |goto Chromie Dragonblight/6 63.86,55.63
|only if inscenario
step
Enter the building |goto Chromie Dragonblight/6 58.80,44.92 < 10 |walk
talk Robert Pierce##123783
buy 1 Refurbished Military Rifle##151282 |n
collect 1 Refurbished Military Rifle##151282 |goto Chromie Dragonblight/6 58.07,46.08
|only if inscenario
step
Enter the building |goto Chromie Dragonblight/6 62.00,42.80 < 10 |walk
talk Olivia Zenith##123780
buy 1 Basic Cloth Bandages##151283 |n
collect 1 Basic Cloth Bandages##151283 |goto Chromie Dragonblight/6 62.93,43.22
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 60.19,36.68 < 10 |walk
talk George Goodman##123778
buy 2 Salted Venison Jerky##151281 |n
buy 1 Heavy Straw Rope##151286 |n
collect 2 Salted Venison Jerky##151281 |goto Chromie Dragonblight/6 61.77,35.28
collect 1 Heavy Straw Rope##151286 |goto Chromie Dragonblight/6 61.77,35.28
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 60.27,53.66 < 25 |walk
Enter the inn |goto Chromie Dragonblight/6 53.13,65.91 < 10 |walk
talk Emery Neill##123781
turnin Smoke, Meat, and Pretty Flowers##47744 |goto Chromie Dragonblight/6 56.35,68.40
accept Yeah, Definitely for the Kids##47745 |goto Chromie Dragonblight/6 56.35,68.40 |repeatable
|only if inscenario
step
Enter the building |goto Chromie Dragonblight/6 48.89,71.67 < 25 |walk
talk Orphan Matron Meliana##123790
turnin Yeah, Definitely for the Kids##47745 |goto Chromie Dragonblight/6 47.29,70.40
|only if inscenario
step
talk Orphan Matron Meliana##123790
accept Holing Up##47746 |goto Chromie Dragonblight/6 49.23,71.71 |repeatable
|only if inscenario
step
talk Orphan Matron Meliana##123790
turnin Holing Up##47746 |goto Chromie Dragonblight/6 49.23,71.71
accept For Emery##47750 |goto Chromie Dragonblight/6 49.23,71.71 |repeatable
|only if inscenario
step
Enter the building |goto Chromie Dragonblight/6 53.10,65.88 < 10 |walk
talk Emery Neill##123781
turnin For Emery##47750 |goto Chromie Dragonblight/6 56.35,68.40
accept Fight Plague with Fire##47747 |goto Chromie Dragonblight/6 56.35,68.40 |repeatable
|only if inscenario
step
talk Emery Neill##123781
turnin Fight Plague with Fire##47747 |goto Chromie Dragonblight/6 56.35,68.40
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 55.19,61.18 < 15 |walk
Follow the path |goto Chromie Dragonblight/6 60.64,52.50 < 20 |walk
click Town Hall Door
Go up the steps |goto Chromie Dragonblight/6 56.92,26.65 < 5 |walk
Follow the path |goto Chromie Dragonblight/6 60.51,31.61 < 10 |walk
Follow the path |goto Chromie Dragonblight/6 65.29,21.10 < 5 |walk
Follow the path |goto Chromie Dragonblight/6 67.02,19.10 < 5 |walk
Enter the hidden passage |goto Chromie Dragonblight/6 67.02,19.10 < 5 |noway |c
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 64.89,14.82 < 10 |walk
Follow the path |goto Chromie Dragonblight/6 46.01,17.90 < 10 |walk
Follow the path |goto Chromie Dragonblight/6 38.34,26.99 < 10 |walk
Follow the path |goto Chromie Dragonblight/6 38.97,41.85 < 15 |walk
kill Nezar'Azret##123836
clicknpc Chromie##123837
Free Chromie from the web |scenariogoal 2/37056 |count 7 |goto Chromie Dragonblight/6 31.27,46.21
|tip Run away from Chromie when you are webbed together!
|only if inscenario
|next "stratEnd"
step
label "Stratholme"
Follow the path |goto Chromie Dragonblight/6 54.10,84.29 < 20 |walk
Follow the path |goto Chromie Dragonblight/6 50.54,75.17 < 20 |walk
Follow the path |goto Chromie Dragonblight/6 50.14,63.30 < 20 |walk
Follow the path |goto Chromie Dragonblight/6 46.64,54.35 < 20 |walk
click Market Row Gate
Open the Market Row Gate |goto Chromie Dragonblight/6 46.64,54.35 < 6 |noway |c
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 38.97,41.85 < 15 |walk
kill Nezar'Azret##123836
clicknpc Chromie##123837
Free Chromie from the web |scenariogoal 2/37056 |count 7 |goto Chromie Dragonblight/6 31.27,46.21
|tip Run away from Chromie when you are webbed together!
|only if inscenario
step
label "stratEnd"
clicknpc Wyrmrest Temple##124766 |goto Chromie Dragonblight/6 30.95,45.22
Return to Wyrmrest Temple |goto Chromie Dragonblight/1 59.76,53.57 < 100 |noway |c
|only if inscenario
step
click The Well of Eternity |goto Chromie Dragonblight/1 59.26,54.66
Enter the portal |goto Chromie Dragonblight/5 87.65,48.93 < 100 |noway |c
|next "Eternity" |only if itemcount(151548) == 0
|only if inscenario
step
Use Tyrande's Moonstone |use Tyrande's Moonstone##151548
Enter the palace |goto Chromie Dragonblight/5 19.34,56.83 < 100 |noway |c
|next "Palace"
|only if inscenario
step
label "Eternity"
Follow the path |goto Chromie Dragonblight/5 83.91,63.62
clicknpc To Queen Azshara's Throne##123694 |goto Chromie Dragonblight/5 73.07,85.18
Enter Queen Azshara's Throne |goto Chromie Dragonblight/5 44.11,34.43 < 20 |noway |c
|only if inscenario
step
label "Palace"
Follow the path |goto Chromie Dragonblight/5 41.09,21.91 < 15 |walk
Follow the path |goto Chromie Dragonblight/5 32.38,23.11 < 15 |walk
Follow the path |goto Chromie Dragonblight/5 33.92,36.98 < 15 |walk
Follow the path |goto Chromie Dragonblight/5 24.30,46.90 < 15 |walk
kill Grolethax##123721 |goto Chromie Dragonblight/5 20.16,61.72
|tip Avoid as many mobs as possible along the way.
|tip Stop to kill Grolethax quickly.
Follow the path |goto Chromie Dragonblight/5 22.14,68.74 < 15 |walk
clicknpc Wyrmrest Temple##124766 |goto Chromie Dragonblight/5 27.57,65.85
Return to Wyrmrest Temple |goto Chromie Dragonblight/1 59.76,53.57 < 100 |noway |c
|only if inscenario
step
label "info"
Use the _Sands of Time_ items you collect to gain various buffs and effects
|tip For speed run purposes, priority Sands of Time usage should be for time increases, Keepsake Boxes, and Acceleration.
|tip Chests spawn at random and usually contain Sands of Time.
|tip Similarly, rare spawns in the Dragonblight portion can be killed along the way for additional Sands.
|only if inscenario
step
Checking
|next "qCheck" |only if completedq("47904/1") and haveq(47904)
|next "qCheck" |only if completedq("47906/1") and haveq(47906)
|next "End" |only if default
step
label "qCheck"
talk Chromie##27856
turnin Preserve the True Future##47904 |goto Dragonblight/0 60.00,54.51 |only if completedq(47550) and not completedq(47904)
turnin The Deaths of Chromie##47906 |goto Dragonblight/0 60.00,54.51 |only if completedq(47904)
step
label "End"
Your time has expired
Click here to restart this scenario |confirm |next "Start"
]])
QuestCore:RegisterGuide("Dungeon Guides\\Legion Scenarios\\The Deaths of Chromie (Stratholme Intro)",{
description="This guide will walk you through completing the initial Stratholme portion of \"The Deaths of Chromie\" scenario.",
condition_suggested=function() return level>=45 end,
model={10008},
startlevel=45.00,
},[[
step
Please be aware that you MUST complete the quest "Fight Plague with Fire" in this guide before proceeding to the Speed Run guide
|confirm
step
label "Start"
talk Chromie##27856
accept Preserve the True Future##47904 |goto Dragonblight/0 60.00,54.51 |only if completedq(47550) and not completedq(47904)
accept The Deaths of Chromie##47906 |goto Dragonblight/0 60.00,54.51 |only if completedq(47904)
step
talk Chromie##27856
Tell her: _"Let's go try to save you again!"_
Enter the scenario |scenariostart |goto Dragonblight/0 60.00,54.51
stickystart "info"
step
click Culling of Stratholme |goto Chromie Dragonblight/1 59.61,55.12
Enter the portal |goto Chromie Dragonblight/6 50.67,100.90 < 100 |noway |c
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 54.10,84.29 < 20 |walk
Follow the path |goto Chromie Dragonblight/6 50.54,75.17 < 20 |walk
Enter the inn |goto Chromie Dragonblight/6 53.13,65.91 < 10 |walk
talk Emery Neill##123781
accept Smoke, Meat, and Pretty Flowers##47744 |goto Chromie Dragonblight/6 56.33,68.39 |repeatable
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 45.79,62.72 < 25 |walk
Enter the building |goto Chromie Dragonblight/6 42.49,71.23 < 10 |walk
talk Ezra Grimm##123782
buy 1 Fras' Special Pipe Blend##151280 |n
collect 1 Fras' Special Pipe Blend##151280 |goto Chromie Dragonblight/6 41.49,70.66
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 46.70,62.14 < 25 |walk
Follow the path |goto Chromie Dragonblight/6 55.32,60.73 < 15 |walk
Enter the building |goto Chromie Dragonblight/6 63.34,54.07 < 10 |walk
talk Sophie Aaren##123779
buy 1 Marigold Bouquet##151287 |n
collect 1 Marigold Bouquet##151287 |goto Chromie Dragonblight/6 63.86,55.63
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 60.19,36.68 < 10 |walk
talk George Goodman##123778
buy 1 Salted Venison Jerky##151281 |n
collect 1 Salted Venison Jerky##151281 |goto Chromie Dragonblight/6 61.77,35.28
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 60.27,53.66 < 25 |walk
Enter the inn |goto Chromie Dragonblight/6 53.13,65.91 < 10 |walk
talk Emery Neill##123781
turnin Smoke, Meat, and Pretty Flowers##47744 |goto Chromie Dragonblight/6 56.35,68.40
accept Yeah, Definitely for the Kids##47745 |goto Chromie Dragonblight/6 56.35,68.40 |repeatable
|only if inscenario
step
Enter the building |goto Chromie Dragonblight/6 48.89,71.67 < 25 |walk
talk Orphan Matron Meliana##123790
turnin Yeah, Definitely for the Kids##47745 |goto Chromie Dragonblight/6 47.29,70.40
|only if inscenario
step
talk Orphan Matron Meliana##123790
accept Holing Up##47746 |goto Chromie Dragonblight/6 49.23,71.71 |repeatable
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 54.85,61.42 < 15 |walk
Enter the building |goto Chromie Dragonblight/6 58.80,44.92 < 10 |walk
talk Robert Pierce##123783
buy 1 Refurbished Military Rifle##151282 |n
collect 1 Refurbished Military Rifle##151282 |goto Chromie Dragonblight/6 58.07,46.08
|only if inscenario
step
Enter the building |goto Chromie Dragonblight/6 62.00,42.80 < 10 |walk
talk Olivia Zenith##123780
buy 1 Basic Cloth Bandages##151283 |n
collect 1 Basic Cloth Bandages##151283 |goto Chromie Dragonblight/6 62.93,43.22
|only if inscenario
step
Enter the building |goto Chromie Dragonblight/6 60.16,36.70 < 10 |walk
talk George Goodman##123778
buy 1 Salted Venison Jerky##151281 |n
collect 1 Salted Venison Jerky##151281 |goto Chromie Dragonblight/6 61.77,35.28
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 59.40,55.01 < 20 |walk
Follow the path |goto Chromie Dragonblight/6 51.60,65.12 < 25 |walk
talk Orphan Matron Meliana##123790
turnin Holing Up##47746 |goto Chromie Dragonblight/6 49.23,71.71
accept For Emery##47750 |goto Chromie Dragonblight/6 49.23,71.71 |repeatable
|only if inscenario
step
Enter the inn |goto Chromie Dragonblight/6 53.10,65.88 < 10 |walk
talk Emery Neill##123781
turnin For Emery##47750 |goto Chromie Dragonblight/6 56.35,68.40
accept Fight Plague with Fire##47747 |goto Chromie Dragonblight/6 56.35,68.40 |repeatable
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 45.79,62.72 < 25 |walk
Enter the building |goto Chromie Dragonblight/6 42.49,71.23 < 10 |walk
talk Ezra Grimm##123782
buy 1 Flinty Firestarter##151284 |n
collect 1 Flinty Firestarter##151284 |goto Chromie Dragonblight/6 41.49,70.66
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 46.53,62.36 < 20 |walk
Follow the path |goto Chromie Dragonblight/6 56.48,59.22 < 15 |walk
Follow the path |goto Chromie Dragonblight/6 60.42,49.67 < 20 |walk
Enter the building |goto Chromie Dragonblight/6 60.16,36.77 < 10 |walk
talk George Goodman##123778
buy 1 Heavy Straw Rope##151286 |n
collect 1 Heavy Straw Rope##151286 |goto Chromie Dragonblight/6 61.77,35.28
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 59.40,55.01 < 20 |walk
Enter the inn |goto Chromie Dragonblight/6 53.02,65.87 < 10 |walk
talk Emery Neill##123781
turnin Fight Plague with Fire##47747 |goto Chromie Dragonblight/6 56.35,68.40
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 55.19,61.18 < 15 |walk
Follow the path |goto Chromie Dragonblight/6 60.64,52.50 < 20 |walk
click Town Hall Door
Go up the steps |goto Chromie Dragonblight/6 56.92,26.65 < 5 |walk
Follow the path |goto Chromie Dragonblight/6 60.51,31.61 < 10 |walk
Follow the path |goto Chromie Dragonblight/6 65.29,21.10 < 5 |walk
Follow the path |goto Chromie Dragonblight/6 67.02,19.10 < 5 |walk
Enter the hidden passage |goto Chromie Dragonblight/6 67.02,19.10 < 5 |noway |c
|only if inscenario
step
Follow the path |goto Chromie Dragonblight/6 64.89,14.82 < 10 |walk
Follow the path |goto Chromie Dragonblight/6 46.01,17.90 < 10 |walk
Follow the path |goto Chromie Dragonblight/6 38.34,26.99 < 10 |walk
Follow the path |goto Chromie Dragonblight/6 38.97,41.85 < 15 |walk
kill Nezar'Azret##123836
clicknpc Chromie##123837
Free Chromie from the web |scenariogoal 2/37056 |count 1 |goto Chromie Dragonblight/6 31.27,46.21
|tip Run away from Chromie when you are webbed together!
|only if inscenario
step
clicknpc Wyrmrest Temple##124766 |goto Chromie Dragonblight/6 30.95,45.22
Return to Wyrmrest Temple |goto Chromie Dragonblight/1 59.76,53.57 < 100 |noway |c
|only if inscenario
step
label "info"
Use the _Sands of Time_ items you collect to gain various buffs
|tip You will be able to select one of two random rewards.
|tip Initially, you'll want to focus on reputation gains.
|only if inscenario
step
Congratulations!
You have completed the Culling of Stratholme intro
Click here to load "The Deaths of Chromie Speed Run" guide |confirm |next "Dungeon Guides\\Legion Scenarios\\The Deaths of Chromie Speed Run"
]])
