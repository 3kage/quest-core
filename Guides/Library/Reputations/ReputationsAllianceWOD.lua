-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Alliance" then return end
QuestCore:RegisterGuide("Reputation Guides\\Warlords of Draenor\\Arakkoa Outcasts",{
description="This guide will walk you through becoming exalted with the Arakkoa Outcasts faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Arakkoa Outcasts') < Exalted end,
achieveid={9469},
patch='60001',
},[[
stickystart "info"
step
label "farm"
Killing enemies and questing in Spires of Arak gives you Arakkoa Outcasts rep:
Farm in Skettis |next "skettis" |confirm
Farm in Lost Veil Anzu |next "veil" |confirm
step
label "skettis"
kill Skyreach Labormaster##85542+, Skyreach Tempest-Keeper##84467+, Dread Raven##84083+, Flighted Storm-Spinner##89085+
Kill mobs around _Skettis_ for Arakkoa Outcast reputation |goto Spires of Arak 56.90,11.70
Click to return to the menu |next "farm" |confirm
step
label "veil"
kill Infected Plunderer##86215+, Infected Mechanic##89144+, Befuddled Relic-Seeker##86205+, Highmaul Relic-Seeker##86155+, Highmaul Skullcrusher##89127+
Kill mobs around _Lost Veil Anzu_ for Arakkoa Outcast reputation |goto Spires of Arak 73.40,45.30
Click to return to the menu |next "farm" |confirm
step
label "info"
Your current reputation rank is:
_Neutral_ |only if rep('Arakkoa Outcasts')==Neutral
_Friendly_ |only if rep('Arakkoa Outcasts')==Friendly
_Honored_ |only if rep('Arakkoa Outcasts')==Honored
_Revered_ |only if rep('Arakkoa Outcasts')==Revered
_Exalted_ |only if rep('Arakkoa Outcasts')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Warlords of Draenor\\Council of Exarchs",{
description="This guide will walk you through becoming exalted with the Council of Exarchs faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Council of Exarchs') < Exalted end,
achieveid={9470},
patch='60001',
},[[
stickystart "info"
step
label "menu"
Questing in most Draenor zones gives you Council of Exarchs reputation
Killing enemies in Shadowmoon Valley also gives Council of Exarchs rep:
Socrethar's Rise |next "rise" |confirm
Darktide Roost |next "darktide" |confirm
step
label "rise"
kill Sargerei Initiate##81541+, Sargerei Acolyte##85168+, Sargerei Darkblade##84945+, Shadowglen Thornshooter##81502+, Shadowglen Spitter##81637+, Sargerei Demonlord##81543+
Kill mobs around _Socrethar's Rise_ for Council of Exarchs reputation |goto Shadowmoon Valley D 47.10,76.50
Return to the main menu |next "menu" |confirm
step
label "darktide"
kill Darktide Engineer##78339+, Darktide Pilferer##78148+, Darktide Guardian##78168+, Darktide Rylakinator-3000##78328+, Darkwing Adolescent##85357+
Kill mobs around _Darktide Roost_ for Council of Exarchs reputation |goto Shadowmoon Valley D 57.60,87.90
Return to the main menu |next "menu" |confirm
step
label "info"
Your current reputation rank is:
_Neutral_ |only if rep('Council of Exarchs')==Neutral
_Friendly_ |only if rep('Council of Exarchs')==Friendly
_Honored_ |only if rep('Council of Exarchs')==Honored
_Revered_ |only if rep('Council of Exarchs')==Revered
_Exalted_ |only if rep('Council of Exarchs')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Warlords of Draenor\\Hand of the Prophet",{
description="This guide will walk you through becoming exalted with the Hand of the Prophet faction.",
achieveid={10350},
patch='60200',
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (100) Main Questline_
confirm |only if not completedq(38578)
step
label "hand_prophet_start"
click Tanaan Planning Map##241725
|tip It looks like a rectangle table with a map laying on it.
accept Assault on Ironhold Harbor##37891 |goto Tanaan Jungle/0 58.50,60.40 |or
accept Bleeding the Bleeding Hollow##38045 |goto Tanaan Jungle/0 58.50,60.40 |or
accept Battle At The Iron Front##38046 |goto Tanaan Jungle/0 58.50,60.40 |or
accept Assault on the Ruins of Kra'nak##38250 |goto Tanaan Jungle/0 58.50,60.40 |or
accept Assault on The Fel Forge##38440 |goto Tanaan Jungle/0 58.50,60.40 |or
accept Assault on the Temple of Sha'naar##37968 |goto Tanaan Jungle/0 58.50,60.40 |or
accept Assault on the Throne of Kil'jaeden##38585 |goto Tanaan Jungle/0 58.50,60.40 |or
|tip You will be able to choose between 2 of these quests, but will only be able to accept 1 of these quests per day.
step
talk Parvink##96147
accept Demonslayer of Tanaan##39581 |goto Tanaan Jungle/0 57.80,59.80 |or
accept Bringing Down the Iron Horde##39586 |goto Tanaan Jungle/0 57.80,59.80 |or
|tip This quest only has a chance of being available each, day, so it's not guaranteed to be available. You can only accept one of these quests, if it's available. Sometimes, a different quest for Saberstalkers reputation will be available, instead.
step
kill Grom'kar Warsmith##89935+, Grom'kar Sentry##89857+, Grom'kar Leadslinger##89777+, Grom'kar Cauterizer##90136+
clicknpc True Iron Bomb##90069+
|tip They look like round metal spiked balls on the ground and sitting on objects all around this area. Get them and cast the spell they grant you on Iron Battle Engines. They look like big metal artillery machines all around this area.
click Box of Iron Horde Equipment##239839
|tip They look like wooden crates on the ground around this area.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags made of cloth and bone all around this area.
click Inferno Shot##243205
|tip They look like silver metal artillery capsules laying on the ground around this area. They give you a buff that allows you to use Harbor Cannons around this area, which allow you to kill mobs easily.
Assault the Iron Horde Forces at Ironhold Harbor |q 37891/1 |goto Tanaan Jungle/0 39.60,37.00
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the path |goto Tanaan Jungle/0 21.30,58.70 < 30 |only if walking
kill Eye Sentry##95235+, Bleeding Hollow Hunter##89699+, Felblood Overseer##92706+, Bleeding Hollow Cabalist##90851+, Bleeding Hollow Brute##89706+
clicknpc Blood Ritual Orb##83670+
|tip They look like floating swirling red balls around this area.
Assault the Bleeding Hollow at Zeth'Gol |q 38045/1 |goto Tanaan Jungle/0 22.30,51.10
|tip You will see a progress bar in your quest tracking area.
step
click Medical Supplies##239971
|tip They look like wooden crates with red crosses on them on the ground all around this area.
collect First Aid Bandages##122139 |n
clicknpc Wounded Footsoldier##90443+
|tip You need First Aid Bandages in order to heal them.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags made of cloth and bone all around this area.
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+, Iron Wargronn##90585+, Iron Sniper##77767+
Aid the Battle at the Iron Front |q 38046/1 |goto Tanaan Jungle/0 11.40,56.10
|tip You will see a progress bar in your quest tracking area.
step
kill Felborn Enforcer##90620+, Sethekk Neophyte##90312+, Felborn Instructor##89748
clicknpc Ritual Circle##90300+
|tip They look like circular green glowing symbols on the ground around this area.
Assault the Shadow Council Forces at the Ruins of Kra'nak |q 38250/1 |goto Tanaan Jungle/0 24.00,39.60
|tip You will see a progress bar in your quest tracking area.
step
kill Felblood Warrior##90066+, Felblood Overseer##91760+, Felblood Deadeye##91764+, Forge Engineer##91721+
click Siege Equipment Blueprints##241669
|tip They look like small tan pieces of paper laying on the ground and on objects around this area.
Assault the Iron Horde Forces at the Fel Forge |q 38440/1 |goto Tanaan Jungle/0 45.30,43.50
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the path |goto Tanaan Jungle/0 31.10,63.00 < 30 |only if walking
_Go up_ the stairs |goto Tanaan Jungle/0 28.90,66.70 < 20 |only if walking
kill Sargerei Nullifier##90295+, Sargerei Felbinder##90286+
clicknpc Bound Spirit##90703+
|tip They look like floating draenei spirits kicking in the air and being choked around this area.
clicknpc Defiled Corpse##90302+
|tip They look like dead draenei laying on the ground around this area.
Assault the Sargerei Forces at the Temple of Sha'naar |q 37968/1 |goto Tanaan Jungle/0 28.50,67.90
|tip You will see a progress bar in your quest tracking area.
step
_Follow_ the road |goto Tanaan Jungle/0 58.10,42.50 < 30 |only if walking
_Run up_ the zigzag path |goto Tanaan Jungle/0 58.80,31.80 < 30 |only if walking
kill Felflame Fiend##92082+, Shadowheart Fiend##92083+, Infernal Devastator##92031+, Felblood Corruptor##92396+, Felguard Sentinel##92026+
Assault the Shadow Council Forces at the Throne of Kil'jaeden |q 38585/1 |goto Tanaan Jungle/0 56.00,25.60
|tip You will see a progress bar in your quest tracking area.
|tip This is a group quest. Use the Group Finder to easily find a group by opening it and selecting Premade Groups -> Custom, then searching for "Kil'jaeden".
step
talk Exarch Yrel##90309
turnin Assault on Ironhold Harbor##37891 |goto Tanaan Jungle/0 58.50,60.40 |only if haveq(37891) or completedq(37891)
turnin Bleeding the Bleeding Hollow##38045 |goto Tanaan Jungle/0 58.50,60.40 |only if haveq(38045) or completedq(38045)
turnin Battle At The Iron Front##38046 |goto Tanaan Jungle/0 58.50,60.40 |only if haveq(38046) or completedq(38046)
turnin Assault on the Ruins of Kra'nak##38250 |goto Tanaan Jungle/0 58.50,60.40 |only if haveq(38250) or completedq(38250)
turnin Assault on The Fel Forge##38440 |goto Tanaan Jungle/0 58.50,60.40 |only if haveq(38440) or completedq(38440)
turnin Assault on the Temple of Sha'naar##37968 |goto Tanaan Jungle/0 58.50,60.40 |only if haveq(37968) or completedq(37968)
turnin Assault on the Throne of Kil'jaeden##38585 |goto Tanaan Jungle/0 58.50,60.40 |only if haveq(38585) or completedq(38585)
step
talk Vindicator Krethos##90974
accept Pressing the Attack##39574 |goto Tanaan Jungle/0 58.40,60.50
accept Harnessing Their Power##39573 |goto Tanaan Jungle/0 58.40,60.50 |or
accept Disarming Sha'naar##39571 |goto Tanaan Jungle/0 58.40,60.50 |or
accept Secrets of the Shadow Council##39570 |goto Tanaan Jungle/0 58.40,60.50 |or
accept Breaking Their Fel Bonds##39569 |goto Tanaan Jungle/0 58.40,60.50 |or
accept A Little Wetwork##39568 |goto Tanaan Jungle/0 58.40,60.50 |or
accept Bloodied Blades of Zeth'Gol##39567 |goto Tanaan Jungle/0 58.40,60.50 |or
|tip You will only be able to accept 2 of these quests per day.
step
accept Battle At The Iron Front##39443
click Medical Supplies##239971
|tip They look like wooden crates with red crosses on them on the ground all around this area.
collect First Aid Bandages##122139 |n
clicknpc Wounded Grunt##90452+
|tip You need First Aid Bandages in order to heal them.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags made of cloth and bone all around this area.
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+, Iron Wargronn##90585+, Iron Sniper##77767+
Aid the Battle at the Iron Front |q 39443/1 |goto Tanaan Jungle/0 11.40,56.10
|tip You will see a progress bar in your quest tracking area.
|only if not completedq("39574/1") and not completedq(38046)
step
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+
collect 20 Vial of Fel Blood##128431 |q 39569/1 |goto Tanaan Jungle/0 11.40,56.10
step
kill Iron Wargronn##90585+
collect Wargronn Harness##128434 |q 39514/1 |goto Tanaan Jungle/0 13.10,56.20
step
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+
Slay #25# Iron Horde Orcs |q 39586/1 |goto Tanaan Jungle/0 11.40,56.10
step
_Follow_ the path up |goto Tanaan Jungle/0 31.10,63.00 < 30 |only if walking
_Run up_ the stairs |goto Tanaan Jungle/0 28.80,66.70 < 30 |only if walking
_Follow_ the stairs up |goto Tanaan Jungle/0 29.20,68.40 < 30 |only if walking
_Enter_ the mine |goto Tanaan Jungle/0 29.40,70.80 < 20 |walk
click Unrefined Draenic Crystal##243794
|tip They look like small clusters of white crystals on the ground and on objects inside this mine.
collect 8 Unrefined Draenic Crystal##128433 |q 39571/1 |goto Tanaan Jungle/0 29.20,71.00
step
_Follow_ the path |goto Tanaan Jungle/0 31.10,63.00 < 30 |only if walking
_Go up_ the stairs |goto Tanaan Jungle/0 28.90,66.70 < 20 |only if walking
accept Assault on the Temple of Sha'naar##39449
kill Sargerei Nullifier##90295+, Sargerei Felbinder##90286+
clicknpc Bound Spirit##90703+
|tip They look like floating draenei spirits kicking in the air and being choked around this area.
clicknpc Defiled Corpse##90302+
|tip They look like dead draenei laying on the ground around this area.
Assault the Sargerei Forces at the Temple of Sha'naar |q 39449/1 |goto Tanaan Jungle/0 28.50,67.90
|tip You will see a progress bar in your quest tracking area.
|only if not completedq("39574/1") and not completedq(37968)
step
kill Felborn Enforcer##90620+, Sethekk Neophyte##90312+, Felborn Instructor##89748+
collect 20 Shadow Council Missive##128432 |q 39570/1 |goto Tanaan Jungle/0 24.00,39.60
step
accept Assault on the Ruins of Kra'nak##39448
kill Felborn Enforcer##90620+, Sethekk Neophyte##90312+, Felborn Instructor##89748+
clicknpc Ritual Circle##90300+
|tip They look like circular green glowing symbols on the ground around this area.
Assault the Shadow Council Forces at the Ruins of Kra'nak |q 39448/1 |goto Tanaan Jungle/0 24.00,39.60
|tip You will see a progress bar in your quest tracking area.
|only if not completedq("39574/1") and not completedq(38250)
step
kill Grom'kar Warsmith##89935+, Grom'kar Sentry##89857+, Grom'kar Leadslinger##89777+, Grom'kar Cauterizer##90136+
collect 15 Iron Horde Naval Manifest##128429 |q 39568/1 |goto Tanaan Jungle/0 39.60,37.00
step
_Follow_ the path |goto Tanaan Jungle/0 21.30,58.70 < 30 |only if walking
kill Bleeding Hollow Hunter##89699+, Bleeding Hollow Cabalist##90851+, Bleeding Hollow Brute##89706+
collect 25 Bleeding Hollow Ritual Blade##128428 |q 39567/1 |goto Tanaan Jungle/0 22.30,51.10
step
talk Vindicator Krethos##90974
turnin Pressing the Attack##39574 |goto Tanaan Jungle/0 58.40,60.50
turnin Harnessing Their Power##39573 |goto Tanaan Jungle/0 58.40,60.50 |only if haveq(39573) or completedq(39573)
turnin Disarming Sha'naar##39571 |goto Tanaan Jungle/0 58.40,60.50 |only if haveq(39571) or completedq(39571)
turnin Secrets of the Shadow Council##39570 |goto Tanaan Jungle/0 58.40,60.50 |only if haveq(39570) or completedq(39570)
turnin Breaking Their Fel Bonds##39569 |goto Tanaan Jungle/0 58.40,60.50 |only if haveq(39569) or completedq(39569)
turnin A Little Wetwork##39568 |goto Tanaan Jungle/0 58.40,60.50 |only if haveq(39568) or completedq(39568)
turnin Bloodied Blades of Zeth'Gol##39567 |goto Tanaan Jungle/0 58.40,60.50 |only if haveq(39567) or completedq(39567)
step
_Go through_ the doorway |goto Tanaan Jungle/0 57.80,58.00 < 20 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 54.90,51.60 < 30 |only if walking
kill Corrupting Fiend##93024+
|tip The imps spawn in groups of 3 around this area.
Slay #20# Demons |q 39581/1 |goto Tanaan Jungle/0 53.90,43.60
You can find more around [Tanaan Jungle/0 56.90,35.20]
step
talk Parvink##96147
turnin Demonslayer of Tanaan##39581 |goto Tanaan Jungle/0 57.80,59.80 |only if haveq(39581) or completedq(39581)
turnin Bringing Down the Iron Horde##39586 |goto Tanaan Jungle/0 57.80,59.80 |only if haveq(39586) or completedq(39586)
step
You've completed the dailies for today
Click to restart the dailies run |confirm |next "hand_prophet_start"
]])
QuestCore:RegisterGuide("Reputation Guides\\Warlords of Draenor\\Order of the Awakened",{
description="This guide will walk you through becoming exalted with the Order of the Awakened faction.",
achieveid={10350},
patch='60200',
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (100) Main Questline_
Click here to check out our Tanaan Jungle Questline guide |next "Leveling Guides\\Draenor (10-70)\\Tanaan Jungle (40-70)" |confirm |or
confirm |only if not completedq(38578) |or
step
label "order_awakened_start"
talk Dawn-Seeker Krisek##95424
accept Unseen Influence##39433 |goto Tanaan Jungle/0 58.00,59.40
step
Follow the path |goto Tanaan Jungle/0 54.90,64.10 < 30 |only if walking
kill Broodlord Ixkor##92429
|tip You may have to wait for it to respawn.
collect 1 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 57.80,67.30
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 55.90,66.10 < 30 |only if walking
Continue following the path |goto Tanaan Jungle/0 54.90,63.50 < 30 |only if walking
Run through here |goto Tanaan Jungle/0 51.90,60.50 < 30 |only if walking
Jump down here |goto Tanaan Jungle/0 49.10,57.40 < 10 |only if walking
kill Captain Grok'mar##93264
|tip You may have to wait for him to respawn.
collect 2 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 48.60,57.40
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Jump up here |goto Tanaan Jungle/0 49.10,57.40 < 10 |only if walking
Follow the path |goto Tanaan Jungle/0 49.10,59.30 < 30 |only if walking
Continue following the dirt path |goto Tanaan Jungle/0 46.60,65.90 < 30 |only if walking
Turn off the road here |goto Tanaan Jungle/0 43.10,70.20 < 20 |only if walking
Enter the hole in the ground |goto Tanaan Jungle/0 42.40,68.90 < 20 |walk
Follow the path |goto Tanaan Jungle/0 40.50,69.30 < 20 |only if walking
kill Kris'kar the Unredeemed##93279
|tip You may have to wait for him to respawn.
collect 3 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 39.60,68.10
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 40.50,69.30 < 20 |only if walking
Leave the hole in the ground |goto Tanaan Jungle/0 42.40,68.90 < 20 |walk
kill Bramblefell##91093
|tip You may have to wait for him to respawn. He's a big tree ent that patrols the northern part of Zorammarsh, so you may need to search for him.
collect 4 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 40.80,69.60
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 38.20,75.10 < 30 |only if walking
Enter the cave |goto Tanaan Jungle/0 37.40,75.90 < 30 |walk
Run down the path |goto Tanaan Jungle/0 36.40,77.00 < 20 |only if walking
kill Captain Ironbeard##93076
|tip You may have to wait for him to respawn. He's a skeleton that walks around in this area of the cave, so you may need to search for him.
collect 5 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 36.50,79.80
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 36.70,78.90 < 20 |only if walking
Continue following the path |goto Tanaan Jungle/0 36.40,76.40 < 20 |only if walking
Follow the path |goto Tanaan Jungle/0 38.50,74.60 < 40 |only if walking
Run on the dirt road |goto Tanaan Jungle/0 37.50,69.50 < 30 |only if walking
Follow the path |goto Tanaan Jungle/0 35.60,67.50 < 30 |only if walking
Follow the dirt path up |goto Tanaan Jungle/0 31.10,63.00 < 30 |only if walking
Run up the stairs |goto Tanaan Jungle/0 28.80,66.70 < 20 |only if walking
Continue up the stairs |goto Tanaan Jungle/0 29.10,68.40 < 20 |only if walking
Follow the stairs up |goto Tanaan Jungle/0 30.40,68.60 < 20 |only if walking
kill Ceraxas##90434
|tip You may have to wait for it to respawn.
collect 6 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 31.40,68.00
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Run down the stairs |goto Tanaan Jungle/0 30.70,68.50 < 20 |only if walking
Follow the stairs up |goto Tanaan Jungle/0 30.30,70.20 < 20 |only if walking
kill Imp-Master Valessa##90429
|tip You may have to wait for her to respawn. She patrols this small area, so you may need to search for her.
collect 7 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 31.60,72.80
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 45.30,44.70 < 30 |only if walking
kill Felsmith Damorka##92647
|tip You may have to wait for her to respawn.
collect 8 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 45.90,47.20
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
Follow the path |goto Tanaan Jungle/0 47.80,44.70 < 30 |only if walking
kill Grand Warlock Nethekurse##91695
|tip You may have to wait for him to respawn. He walks in a circle around this area on this path, so you may need to search for him.
collect 9 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 47.40,42.30
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
kill Commander Org'mok##89675
|tip You may have to wait for him to respawn. He walks back and forth on this path, so you may need to search for him.
collect 10 Fel-Corrupted Apexis Fragment##128346 |q 39433/1 |goto Tanaan Jungle/0 50.30,45.20
|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
step
talk Dawn-Seeker Krisek##95424
turnin Unseen Influence##39433 |goto Tanaan Jungle/0 58.00,59.40
step
You've completed the daily for today
Click to restart the dailies run |confirm |next "order_awakened_start"
]])
QuestCore:RegisterGuide("Reputation Guides\\Warlords of Draenor\\The Saberstalkers",{
description="This guide will walk you through becoming exalted with The Saberstalkers faction.",
achieveid={10350},
patch='60200',
},[[
step
Complete the following guide before continuing:
_Tanaan Jungle (100) Main Questline_
confirm |only if not completedq(38578)
step
label "saberstalkers_start"
talk Parvink##96147
accept Tooth and Claw##39582 |goto Tanaan Jungle/0 57.80,59.80 |or
|tip This quest has a chance to be available each day, but is not guaranteed to be available.
_
Click here if the quest is not available |confirm |or
step
_Go through_ the doorway |goto Tanaan Jungle/0 56.40,59.20 < 20 |walk
_Follow_ the path |goto Tanaan Jungle/0 54.90,64.30 < 30 |only if walking
kill Bloodfang Swarmer##89789+, Bloodfang Ravager##89741+
collect 100 Tanaan Jungle Tooth##128438 |q 39582/1 |goto Tanaan Jungle/0 56.40,67.10
step
_Follow_ the path |goto Tanaan Jungle/0 55.70,65.80 < 20 |only if walking
_Run up_ the dirt path |goto Tanaan Jungle/0 55.00,63.60 < 30 |only if walking
_Go through_ the doorway |goto Tanaan Jungle/0 56.50,59.20 < 20 |walk
talk Parvink##96147
turnin Tooth and Claw##39582 |goto Tanaan Jungle/0 57.80,59.80
step
_Go through_ the doorway |goto Tanaan Jungle/0 56.50,59.20 < 20 |only if walking
_Follow_ the path |goto Tanaan Jungle/0 54.50,62.90 < 30 |only if walking
_Run on_ the dirt road |goto Tanaan Jungle/0 54.70,64.90 < 20 |only if walking
_Go up_ the dirt path |goto Tanaan Jungle/0 54.00,70.50 < 20 |only if walking
talk Z'tenga the Walker##92805
accept Rumble in the Jungle##39565 |goto Tanaan Jungle/0 55.30,74.80
|tip This quest can only be done once per week.
step
_Follow_ the path |goto Tanaan Jungle/0 54.70,76.70 < 30 |only if walking
kill Blackfang Prowler##89746+, Blackfang Shaman##92481+, Blackfang Savage##89695+, Blackfang Hunter##89747+
|tip They are all around this area. You can use the Group Finder and select Premade Groups -> Custom, then search for "Fang'rila" or "Blackfang". Being in a group will make this go much faster.
collect 40 Blackfang Claw##124099 |q 39565 |goto Tanaan Jungle/0 55.80,78.60
step
_Follow_ the path |goto Tanaan Jungle/0 54.90,77.40 < 30 |only if walking
talk Z'tenga the Walker##92805
buy Minor Blackfang Challenge Totem##124093 |complete itemcount(124093) > 0 or completedq(39565) |goto Tanaan Jungle/0 55.80,78.60
buy Major Blackfang Challenge Totem##124094 |complete itemcount(124094) > 0 or completedq(39565) |goto Tanaan Jungle/0 55.80,78.60
buy Prime Blackfang Challenge Totem##124095 |complete itemcount(124095) > 0 or completedq(39565) |goto Tanaan Jungle/0 55.80,78.60
step
_Follow_ the path |goto Tanaan Jungle/0 54.70,75.90 < 30 |only if walking
_Enter_ the Challenge Arena |goto Tanaan Jungle/0 54.80,80.90 < 20 |only if walking
use Minor Blackfang Challenge Totem##124093
kill Akrrilo##92766 |q 39565/1 |goto Tanaan Jungle/0 54.40,81.00
|tip Other people can help you, or you can help other people who summon him. Everyone will get credit.
step
use Major Blackfang Challenge Totem##124094
kill Rendarr##92817 |q 39565/2 |goto Tanaan Jungle/0 54.40,81.00
|tip Other people can help you, or you can help other people who summon him. Everyone will get credit.
step
use Prime Blackfang Challenge Totem##124095
kill Eyepiercer##92819 |q 39565/3 |goto Tanaan Jungle/0 54.40,81.00
|tip Other people can help you, or you can help other people who summon him. Everyone will get credit.
step
_Follow_ the path |goto Tanaan Jungle/0 54.90,77.40 < 30 |only if walking
talk Z'tenga the Walker##92805
turnin Rumble in the Jungle##39565 |goto Tanaan Jungle/0 55.30,74.80
step
You've completed the dailies for today
Click to restart the dailies run |confirm |next "saberstalkers_start"
]])
QuestCore:RegisterGuide("Reputation Guides\\Warlords of Draenor\\Sha'tari Defense",{
description="This guide will walk you through becoming exalted with the Sha'tari Defense faction.",
achieveid={9476},
patch='60001',
},[[
step
Routing to Rep |next "menu" |only if hasbuilding(144,2) or hasbuilding(145,3)
Routing to End |next "end" |only if default
stickystart "info"
step
label "menu"
Killing enemies in Talador gives you Sha'tari Defense reputation:
Shattrath City |next "shattrath" |confirm
Bladefury Hold |next "bladefury" |confirm
step
label "shattrath"
kill Imp Charmer##83017+, Sargerei Felbringer##84334+, Gorebound Insurgent##87337+, Shadowbourne Felcaster##84871+, Fel Seer##84873+
Kill mobs around _Shattrath City_ for Sha'tari Defense reputation |goto Talador 45.10,35.40
Return to the main menu |next "menu" |confirm
step
label "bladefury"
kill Grom'kar Bulwark##85454+, Grom'kar Punisher##85458+, Grom'kar Deadeye##85450+, Grom'kar Blademaster##85456+
Kill mobs around _Bladefury Hold_ for Sha'tari Defense reputation |goto Talador 68.80,3.50
Return to the main menu |next "menu" |confirm
step
label "info"
Your current reputation rank is:
_Neutral_ |only if rep("Sha'tari Defense")==Neutral
_Friendly_ |only if rep("Sha'tari Defense")==Friendly
_Honored_ |only if rep("Sha'tari Defense")==Honored
_Revered_ |only if rep("Sha'tari Defense")==Revered
_Exalted_ |only if rep("Sha'tari Defense")==Exalted
step
label "end"
You must have at least a _level 2 Trading Post_ in your Garrison to gain Sha'tari Defense reputation!
|tip Use the Garrison Buildings guide to accomplish this.
]])
QuestCore:RegisterGuide("Reputation Guides\\Warlords of Draenor\\Steamwheedle Preservation Society",{
description="This guide will walk you through becoming exalted with the Steamwheedle Preservation Society faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Steamwheedle Preservation Society') < Exalted end,
achieveid={9472},
patch='60001',
},[[
step
label "menu"
You Are _Neutral_ with Steamwheedle Preservation Society |only if rep('Steamwheedle Preservation Society')==Neutral
You Are _Friendly_ with Steamwheedle Preservation Society |only if rep('Steamwheedle Preservation Society')==Friendly
You Are _Honored_ with Steamwheedle Preservation Society  |only if rep('Steamwheedle Preservation Society')==Honored
You Are _Revered_ with Steamwheedle Preservation Society  |only if rep('Steamwheedle Preservation Society')==Revered
You Are _Exalted_ with Steamwheedle Preservation Society  |only if rep('Steamwheedle Preservation Society')==Exalted
_Click a line below to_:
Farm Gorian Artifact Fragments |next "farm" |confirm
_
Chest runs for Artifact Fragments and Highmaul Relics |next "loot" |confirm
_
Kill Rares in Nagrand |next "rare" |confirm
step
label "farm"
kill Direfang Prowler##86931+, Warsong Wolf Trainer##87231+, Marsh Anaconda##87039+, Highmaul Guard##87221+, Young Razorclaw##88957+, Wetland Riverbeast##87020+, Grand Elekk##86741+, Thorncoat Talbuk##86727+
collect Gorian Artifact Fragment##118099 |n |goto Nagrand D 36.00,34.10
|tip Turn these in as stacks of 20 for Steamwheedle Preservation Society reputation.
Click to turn in |confirm |next "rare_find"
step
label "loot"
Follow the path, looking at these locations for Highmaul Reliquary chests
map Nagrand D
path follow loose; loop on; ants straight
path	27.80,46.40	35.10,48.60	37.40,42.90
path	49.10,37.60	52.70,33.60	55.20,34.20
path	56.50,38.20	63.10,36.00	64.70,21.60
path	59.00,20.00	57.80,18.60	51.80,26.10
path	49.90,25.70	40.60,25.00	38.80,27.50
click Highmaul Reliquary##237227
collect Gorian Artifact Fragment##118099 |n
collect Highmaul Relic##118100 |n
|tip You turn these in for Steamwheedle Preservation Society reputation.
Click to turn in |confirm
step
label "rare_find"
talk Sallee Silverclamp##87393
|tip Turn in your Highmaul Relics and Gorian Artifact Fragments.
accept A Rare Find##37125 |goto Nagrand D 50.40,41.30 |repeatable |or |only if itemcount(118100) >= 1
accept Fragments of the Past##35147 |goto Nagrand D 50.40,41.30 |repeatable |or |only if itemcount(118099) >= 20
_Click_ to return to the menu |confirm |next "menu"
step
label "rare"
Follow the path:
map Nagrand D
path	30.00,44.80	34.10,51.60	41.70,45.00
path	60.30,38.60	64.40,30.40	62.20,17.50
path	51.20,16.50	48.10,22.00	37.50,38.50
kill Thek'talon##86750,Mu'gra##87666, Xelganak##86835, Dekorhan##86743, Direhoof##86729, Bergruu##86732, Aogexon##86774, Gagrog the Brutal##86771, Vileclaw##88951
_Collect the items that each rare drops_ |only if itemcount(118660) ==0 or itemcount(118660) ==0 or itemcount(118659)==0 or itemcount(118661)==0 or itemcount(118656) ==0 or itemcount(118657)==0 or itemcount(118655)==0 or itemcount(118654)==0 or itemcount(118658)==0 or itemcount(120172)==0
collect Thek'talon's Talon##118660 |n |only if itemcount(118660) >= 1
collect Mu'gra's Head##118659 |n |only if itemcount(118659) >= 1
collect Xelganak's Stinger##118661 |n |only if itemcount(118661) >= 1
collect Dekorhan's Tusk##118656 |n |only if itemcount(118656) >= 1
collect Direhoof's Hide##118657 |n |only if itemcount(118657) >= 1
collect Bergruu's Horn##118655 |n |only if itemcount(118655) >= 1
collect Aogexon's Fang##118654 |n |only if itemcount(118654) >= 1
collect Gagrog's Skull##118658 |n |only if itemcount(118658) >= 1
collect Vileclaw's Claw##120172 |n |only if itemcount(120172) >= 1
|tip You don't have to collect them all.
Click to turn in |confirm
step
talk Gazmolf Futzwangler##87706 |goto Nagrand D/0 50.30,41.10
|tip Turn in your quest items.
accept Aogexon's Fang##37210 |only if itemcount(118654) >= 1 |or
accept Bergruu's Horn##37211 |or |only if itemcount(118655) >= 1 |or
accept Dekorhan's Tusk##37221 |or |only if itemcount(118656) >= 1 |or
accept Direhoof's Hide##37222 |or |only if itemcount(118657) >= 1 |or
accept Gagrog's Skull##37223 |or |only if itemcount(37223) >= 1 |or
accept Mu'gra's Head##37224 |or |only if itemcount(118659) >= 1 |or
accept Thek'talon's Talon##37225 |or |only if itemcount(118660) >= 1 |or
accept Xelganak's Stinger##37226 |or |only if itemcount(118661) >= 1 |or
accept Vileclaw's Claw##37520 |or |only if itemcount(120172) >= 1 |or
_Click_ to return to the menu |confirm always |next "menu" |only if default
]])
QuestCore:RegisterGuide("Reputation Guides\\Warlords of Draenor\\Wrynn's Vanguard",{
description="This guide will walk you through becoming exalted with the Wrynn's Vanguard faction.",
achieveid={9474, 9214},
patch='60001',
},[[
step
Your current reputation rank is:
_Neutral_ |only if rep('Wrynns Vanguard')==Neutral
_Friendly_ |only if rep('Wrynns Vanguard')==Friendly
_Honored_ |only if rep('Wrynns Vanguard')==Honored
_Revered_ |only if rep('Wrynns Vanguard')==Revered
_Exalted_ |only if rep('Wrynns Vanguard')==Exalted
confirm
|only if completedq(36119)
step
Click _Quest Accept_ Box:
accept Welcome to Ashran##36119 |goto Ashran/0 41.47,78.87
|tip Click Accept when asked to join the Ashran battle. You may have to wait for queue.
step
talk Commander Anne Dunworthy##84173
turnin Welcome to Ashran##36119 |goto Ashran/0 44.59,74.01
|tip Click Accept when asked to join the Ashran battle. You may have to wait for queue.
accept Reporting For Duty##36130 |goto Ashran/0 44.59,74.01
step
talk Farseer Kylanda##82901
Tell her, _"You're to show me Ashran?"_
Speak to Farseer Kylanda |q 36130/3 |goto Ashran/0 44.80,75.00
accept Survey Ashran##36127 |goto Ashran/0 44.80,75.00
step
talk Chris Clarkie##82909
Tell him, _"Reporting in!"_
Speak to Chris Clarkie |q 36130/1 |goto Ashran/0 43.30,76.60
accept The Road of Glory##36125 |goto Ashran/0 43.30,76.60
step
talk Harrison Jones##84223
Tell him, _"Mr. Jones! Is that you?"_
Speak to Harrison Jones |q 36130/2 |goto Ashran/0 42.80,76.80
accept Uncovering the Artifact Fragments##36133 |goto Ashran/0 42.80,76.80
step
talk Commander Anne Dunworthy##84173
turnin Reporting For Duty##36130 |goto Ashran/0 44.59,74.01
stickystart "hordekills"
stickystart "artifacts"
step
Cross the bridge and _enter Ashran_ |goto Ashran/0 46.50,71.30 < 10
Explore the Molten Quarry |q 36127/1 |goto Ashran/0 54,69
step
Explore the Ashmaul Burial Grounds |q 36127/5 |goto Ashran/0 40.20,63.30
step
Explore the Amphitheater of Annihilation |q 36127/4 |goto Ashran/0 39.40,40.50
step
Explore the Brute's Rise |q 36127/2 |goto Ashran/0 54.70,34.60
step
Explore the Road of Glory |q 36127/3 |goto Ashran/0 51.30,38.90
|tip You must walk the entire length of the Road for this to count.
step
label "hordekills"
Kill Horde players in Ashran
Horde Players slain |q 36125/1
step
label "artifacts"
Kill creatures of Ashran and loot artifact fragments
Artifact Fragments looted |q 36133/1
step
talk Farseer Kylanda##82901
turnin Survey Ashran##36127 |goto Ashran/0 44.80,75.00
step
talk Ecilam##82966
turnin Uncovering the Artifact Fragments##36133 |goto Ashran/0 44.80,74.40
step
talk Chris Clarkie##82909
turnin The Road of Glory##36125 |goto Ashran/0 43.30,76.60
accept Into The Wilderness##36123 |goto Ashran/0 43.30,76.60
step
Kill a Horde player in Ashran and recover a piece of their armor
|tip Right click their corpse to "Remove insignia".
Tattered Armor Scraps |q 36123/1
step
talk Chris Clarkie##82909
turnin Into The Wilderness##36123 |goto Ashran/0 43.30,76.60
]])
