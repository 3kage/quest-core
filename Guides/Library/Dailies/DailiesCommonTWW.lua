-- Bundled QuestCore guide
if not QuestCore then return end

QuestCore:RegisterGuide("Daily Guides\\Midnight (80-90)\\Twilight Highlands World Quests",{
description="This guide will assist you in completing world quests in the Twilight Highlands.",
startlevel=70,
worldquestzone={241},
patch='120000',
},[[
step
label "Choose_World_Quest"
#include "TWW_Choose_World_Quests"
step
label quest-86951
kill Aetharon##46259 |q 86951/2 |goto Twilight Highlands/0 44.46,81.49 |future
|tip Up on the floating platform.
|tip Click the Air Portal Controller on the platform to weaken the mob if needed.
step
kill Apexar##46258 |q 86951/3 |goto Twilight Highlands/0 38.27,80.21 |future
|tip Click the Air Portal Controller on the platform to weaken the mob if needed.
step
kill Edemantus##46256 |q 86951/4 |goto Twilight Highlands/0 32.68,62.24 |future
|tip Click the Air Portal Controller on the platform to weaken the mob if needed.
|next "TWW_World_Quest_Emissaries"
step
label quest-86959
click Bloodeye Cage+
|tip They look like large cages on the ground around this area.
Free #8# Bloodeye Prisoners |q 86959/1 |goto Twilight Highlands/0 40.67,67.23 |future
|next "TWW_World_Quest_Emissaries"
step
label quest-91779
kill Roaming Shadow##246147, Twilight Voidcaster##246282, Twilight Neophyte##246290, Twilight Pillager##46144, Twilight Scavenger##46183
Slay #10# Twilight's Blade |q 91779/1 |goto Twilight Highlands/0 50.51,70.36 |future
|next "TWW_World_Quest_Emissaries"
stickystart "Slay_Twilight's_Blade_Forces_91759"
step
label quest-91759
clicknpc Imminent Voidcrawler##248426+
|tip They appear on your minimap as yellow dots.
Dispel #4# Imminent Voidcrawlers |q 91759/1 |goto Twilight Highlands/0 58.42,30.30 |future
step
label "Slay_Twilight's_Blade_Forces_91759"
kill Ogre High Arcanist##248503, Unleashed Voidcrawler##248434, Determined Ritualist##248505
Slay #8# Twilight's Blade Forces |q 91759/2 |goto Twilight Highlands/0 58.42,30.30 |future
|next "TWW_World_Quest_Emissaries"
stickystart "Slay_Twilight_Forces_86957"
step
label quest-86957
click Void Infused Pyreburn Oil+
|tip Use the ability on your screen to throw the barrel.
Detonate #8# Void Infused Pyreburn Oil |q 86957/1 |goto Twilight Highlands/0 41.53,16.88 |future
step
label "Slay_Twilight_Forces_86957"
kill Twilight Bonebreaker##45334, Twilight Captivator##45359
Slay #8# Twilight Forces |q 86957/2 |goto Twilight Highlands/0 41.53,16.88 |future
|next "TWW_World_Quest_Emissaries"
step
label quest-86941
kill Obsidian Stoneslave##47226+
collect 6 Shadow Infused Shard##235666 |q 86941/1 |goto Twilight Highlands/0 58.42,30.30 |future
|next "TWW_World_Quest_Emissaries"
step
label quest-86945
click Twilight Supplies+
|tip They look like large crates on the ground around this area.
click Twilight Weaponry+
|tip They look like large weapon racks on the ground around this area.
Destroy #8# Twilight's Blade Supplies |q 86945/1 |goto Twilight Highlands/0 40.32,47.20 |future
|next "TWW_World_Quest_Emissaries"
step
label quest-91778
kill Depths Overseer##46579, Twilight Miner##46578, Twilight Miner##46610
click Surplus Elementium+
|tip They look like large dark blue rock piles inside the cave.
collect 100 Surplus Elementium##248205 |q 91778/1 |goto Twilight Highlands/0 39.43,29.84 |future
|next "TWW_World_Quest_Emissaries"
step
label quest-86948
kill Enslaved Inferno##46327, Enslaved Tempest##46328, Enslaved Waterspout##46329
|tip All over the area.
Free #8# Enslaved Elementals |q 86948/1 |goto Twilight Highlands/0 36.10,73.36 |future
|next "TWW_World_Quest_Emissaries"
step
label quest-86939
kill Glopgut Pounder##47765, Glopgut Hurler##47768
use the Captured Twilight's Blade Banner##235663
|tip Use it on ogre corpses.
Plant #6# Banners |q 86939/1 |goto Twilight Highlands/0 39.43,29.84 |future
|next "TWW_World_Quest_Emissaries"
step
label quest-86938
Disrupt #12# Void Tears |q 86938/1 |goto Twilight Highlands/0 58.94,51.83 |future
|tip Fly through the small dark orbs in the air around the floating rocks.
|next "TWW_World_Quest_Emissaries"
step
label quest-91776
click Magic Shackle
|tip Solve the puzzle.
Break the First Magic Shackle |q 91776/1 |goto Twilight Highlands/0 18.28,57.85 |future |count 1 hidden
step
click Magic Shackle
|tip Solve the puzzle.
Break the First Magic Shackle |q 91776/1 |goto Twilight Highlands/0 17.08,58.08 |future |count 2 hidden
step
click Magic Shackle
|tip Solve the puzzle.
Break the First Magic Shackle |q 91776/1 |goto Twilight Highlands/0 17.18,60.05 |future |count 3 hidden
step
click Magic Shackle
|tip Solve the puzzle.
Break the First Magic Shackle |q 91776/1 |goto Twilight Highlands/0 18.32,59.92 |future |count 4 hidden
|next "TWW_World_Quest_Emissaries"
step
label "TWW_World_Quest_Emissaries"
#include "TWW_World_Quest_Emissaries"
]])
QuestCore:RegisterGuide("Daily Guides\\Midnight (80-90)\\Pre-Patch Weeklies",{
author="QuestCore",
description="This guide will assist you in completing the weekly quests in Twilight Highlands.",
startlevel=10,
patch='120000',
},[[
step
label "Begin_Weekly_Quests"
talk Grand Magister Rommath##237504
accept Twilight's Dawn##87308 |goto Twilight Highlands/0 49.89,80.73
accept Disrupt the Call##91795 |goto Twilight Highlands/0 49.89,80.73
stickystart "Complete_World_Quests"
step
Slay #3# Twilight Ascension Rares |q 91795/1 |goto Twilight Highlands/0 49.89,80.73
|tip A new rare spawns on the map every 10 minutes.
|tip Each rare event has 3 phases.
|tip The first phase you will kill mobs around the spawn area.
|tip The second phase you will kill three ritualists shielding the rare.
|tip The final phase you will kill the rare mob.
step
label "Complete_World_Quests"
Complete #8# World Quests or Slay #8# Rares in Twilight Highlands |q 87308/1 |goto Twilight Highlands/0 49.89,80.73
step
talk Grand Magister Rommath##237504
turnin Twilight's Dawn##87308 |goto Twilight Highlands/0 49.89,80.73
turnin Disrupt the Call##91795 |goto Twilight Highlands/0 49.89,80.73
step
You completed the weekly quests this week |complete false or not completedq(87308,91795) |next "Begin_Weekly_Quests"
|tip This guide will reset when more become available.
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\Azj'Kahet Weekly Pacts",{
description="This guide will assist you in completing the weekly pact quest for The Weaver, The General, and The Vizier.",
startlevel=80,
patch='110002',
},[[
step
Reach Renown Level 3 with The Severed Threads |complete factionrenown(2600) >= 3 |q 84681 |future
|tip Complete daily quests, weekly quests, and zone quests in Azj-Kahet to gain renown.
step
talk Widow Arak'nai##207471
accept Of Pacts and Patrons##84682 |goto Azj-Kahet/0 55.73,43.83
|only if not completedq(84682)
step
talk Bobbin##224734
Select _"Tell me about making a Pact with the Weaver."_ |gossip 124125
Learn of the Weaver's Pact |q 84682/1 |goto Azj-Kahet/0 56.37,43.33
|only if not completedq(84682)
step
talk Tulumun##224733
Select _"Tell me about making a Pact with the Vizier."_ |gossip 124127
Learn of the Vizier's Pact |q 84682/3 |goto Azj-Kahet/0 56.20,42.24
|only if not completedq(84682)
step
talk Anub'okki##224729
Select _"Tell me about making a Pact with the General."_ |gossip 124123
Learn of the General's Pact |q 84682/2 |goto Azj-Kahet/0 55.88,42.13
|only if not completedq(84682)
step
talk Lady Vinazian##223750
Select _"Choose a member of the Severed Threads to forge a Pact with."_ |gossip 124129
|tip Each weekly reset, you will be able to choose a new pact.
|tip Pick wisely because this choice will affect your entire warband for the week.
|tip You cannot choose different pacts on alts.
Forge a Pact |q 84682/4 |goto Azj-Kahet/0 55.33,41.22
|only if not completedq(84682)
step
talk Lady Vinazian##223750
turnin Of Pacts and Patrons##84682 |goto Azj-Kahet/0 55.33,41.22
|only if not completedq(84682)
step
label "Accept_Weekly_Pact_Quest"
talk Lady Vinazian##223750
accept Forge a Pact##80592 |goto Azj-Kahet/0 55.33,41.22
|only if completedq(84682)
step
talk Lady Vinazian##223750
Select _"Choose a member of the Severed Threads to renew your Pact with."_ |gossip 122838
|tip Each weekly reset, you will be able to choose a new pact.
|tip Pick wisely because this choice will affect your entire warband for the week.
|tip You cannot choose different pacts on alts.
Choose a Pact |q 80592/1 |goto Azj-Kahet/0 55.33,41.22
|only if completedq(84682)
step
talk Lady Vinazian##223750
|autoacceptany 80672,80671,80670
Accept the Weekly Pact Quest |complete haveq(80672,80671,80670) or completedq(80672,80671,80670) |goto Azj-Kahet/0 55.33,41.22
step
talk Lady Vinazian##223750
turnin Forge a Pact##80592 |goto Azj-Kahet/0 55.33,41.22
|only if completedq(84682)
step
Complete Activities in Azj-Kahet |q 80672/1 |goto Azj-Kahet/0 55.33,41.22
|tip Complete world quests to contribute 20% for each one.
|tip You can also investigate espionage rumors or uncover weave-rat caches in The Burrows.
|only if haveq(80672) or completedq(80672)
step
Complete Activities in Azj-Kahet |q 80671/1 |goto Azj-Kahet/0 55.33,41.22
|tip Complete world quests to contribute 20% for each one.
|tip You can also investigate espionage rumors or uncover weave-rat caches in The Burrows.
|only if haveq(80671) or completedq(80671)
step
Complete Activities in Azj-Kahet |q 80670/1 |goto Azj-Kahet/0 55.33,41.22
|tip Complete world quests to contribute 20% for each one.
|tip You can also investigate espionage rumors or uncover weave-rat caches in The Burrows.
|only if haveq(80670) or completedq(80670)
step
talk Tulumun##224733
turnin Hand of the Vizier##80672 |goto Azj-Kahet/0 56.20,42.24
|only if haveq(80672) or completedq(80672)
step
talk Anub'okki##224729
turnin Blade of the General##80671 |goto Azj-Kahet/0 55.89,42.14
|only if haveq(80671) or completedq(80671)
step
talk Bobbin##224734
turnin Eyes of the Weaver##80670 |goto Azj-Kahet/0 56.37,43.33
|only if haveq(80670) or completedq(80670)
step
You have completed the weekly pact quest in Azj-Kahet
|tip You can forge another pact at the next weekly reset.
|tip This guide will automatically reset when a new pact can be made.
'|complete not haveq(80672,80671,80670) and not completedq(80672,80671,80670) |next "Accept_Weekly_Pact_Quest"
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\Azj'Kahet World Quests",{
description="This guide will assist you in completing world quests in the Azj'Kahet.",
condition_valid=function() return completedq(79573) end,
condition_valid_msg="You must complete the \"Surface Bound\" quest in The War Within campaign on at least one character to unlock world quests.",
startlevel=70,
worldquestzone={2255,2256,2213,2216},
patch='110002',
},[[
step
talk Widow Arak'nai##207471
accept Of Pacts and Patrons##84682 |goto Azj-Kahet/0 55.73,43.83
|only if not completedq(84682)
step
talk Bobbin##224734
Select _"Tell me about making a Pact with the Weaver."_ |gossip 124125
Learn of the Weaver's Pact |q 84682/1 |goto Azj-Kahet/0 56.37,43.33
|only if not completedq(84682)
step
talk Tulumun##224733
Select _"Tell me about making a Pact with the Vizier."_ |gossip 124127
Learn of the Vizier's Pact |q 84682/3 |goto Azj-Kahet/0 56.20,42.24
|only if not completedq(84682)
step
talk Anub'okki##224729
Select _"Tell me about making a Pact with the General."_ |gossip 124123
Learn of the General's Pact |q 84682/2 |goto Azj-Kahet/0 55.88,42.13
|only if not completedq(84682)
step
talk Y'tekhi##220867
Select _"Choose a member of the Severed Threads to forge a Pact with."_ |gossip 124129
|tip Each weekly reset, you will be able to choose a new pact.
|tip Pick wisely because this choice will affect your entire warband for the week.
|tip You cannot choose different pacts on alts.
Forge a Pact |q 84682/4 |goto Azj-Kahet/0 55.33,41.22
|only if not completedq(84682)
step
talk Y'tekhi##220867
turnin Of Pacts and Patrons##84682 |goto Azj-Kahet/0 55.33,41.22
|only if not completedq(84682)
step
talk Y'tekhi##220867
accept Forge a Pact##80592 |goto Azj-Kahet/0 55.33,41.22
|only if completedq(84682)
step
talk Y'tekhi##220867
Select _"Choose a member of the Severed Threads to renew your Pact with."_ |gossip 122838 |noautogossip
|tip Each weekly reset, you will be able to choose a new pact.
|tip Pick wisely because this choice will affect your entire warband for the week.
|tip You cannot choose different pacts on alts.
Choose a Pact |q 80592/1 |goto Azj-Kahet/0 55.33,41.22
|only if completedq(84682)
step
talk Y'tekhi##220867
turnin Forge a Pact##80592 |goto Azj-Kahet/0 55.33,41.22
|only if completedq(84682)
step
label "Choose_World_Quest"
#include "TWW_Choose_World_Quests"
step
label quest-78974
accept Beetle-Minded##78974 |goto Azj-Kahet/0 73.02,81.53
|tip You will accept this quest automatically.
|polish
stickystart "Fill_Food_Troughs"
step
clicknpc Stagshell Water Trough##214424+
|tip They look like long wooden boxes on the ground around this area.
Fill #4# Water Troughs |q 78974/1 |goto Azj-Kahet/0 73.02,81.53
step
label "Fill_Food_Troughs"
clicknpc Stagshell Food Trough##214412+
|tip They look like long wooden boxes on the ground around this area.
Fill #4# Food Troughs |q 78974/2 |goto Azj-Kahet/0 73.02,81.53
|next "TWW_World_Quest_Emissaries"
step
label quest-82526
accept Bug Them##82526 |goto Nerub'ar/1 68.93,40.61
|tip You will accept this quest automatically.
step
click Insectformant+
|tip They look like transluscent yellow bugs clinging to objects around this area.
|tip They appear on your minimap as yellow dots.
Place #6# Bugs |q 82526/1 |goto Nerub'ar/1 68.93,40.61
|next "TWW_World_Quest_Emissaries"
step
label quest-82364
accept Documenting Discordance##82364 |goto Azj-Kahet/1 61.53,75.98
|tip You will accept this quest automatically.
step
clicknpc Shrouded Skysilk##223809
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
Ride the Shrouded Skysilk |q 82364/1 |goto Azj-Kahet/1 61.53,75.98
step
Take Pictures of Discordance |q 82364/2
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|next "TWW_World_Quest_Emissaries"
step
label quest-82533
accept Dye! Dye Dye!##82533 |goto Azj-Kahet/0 73.71,41.27
|tip Up on the hanging platform.
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Spinneret Scuttler##221852,Violet Alchemist##222117,Carmine Alchemist##222124,Cerulean Alchemist##225177,Spinneret Silkbearer##221939,Cupric Alchemist##222121,Gaudy Web-Vandal##224567,Cupric Alchemist##225178,Cerulean Alchemist##222114,Ochre Alchemist##222123,Gaudy Web-Vandal##225179
Slay #15# Dyeworks Laborers |q 82533/1 |goto Azj-Kahet/0 73.71,41.27
|next "TWW_World_Quest_Emissaries"
step
label quest-83718
accept Eggstraction##83718 |goto Azj-Kahet/0 79.79,79.96
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 83718/1 |goto Azj-Kahet/0 79.79,79.96
step
click Handhold
Find a Handhold on the Cliff |q 83718/2 |goto Azj-Kahet/0 79.81,79.97
step
click Swarmite Egg+
|tip They look like large eggs trapped in webs on the rock face.
|tip Click handholds to move up the wall and excavate artifacts from the wall by clicking them.
|tip Avoid {o}Agitated Swarmites{} that will lower your grip.
Collect #7# Swarmite Eggs |q 83718/3 |goto Azj-Kahet/0 79.89,79.98
|next "TWW_World_Quest_Emissaries"
step
label quest-82481
accept Enforcer Extermination##82481 |goto Azj-Kahet/0 55.97,54.98
|tip You will accept this quest automatically.
step
Kill Pale Wavelasher enemies around this area |kill Webwarden Enforcer##223361,Pale Weavelasher Apprentice##223364,Pale Weavelasher Grunt##223363
|tip On the platform above.
Slay #12# Pale Wavelashers |q 82481/1 |goto Azj-Kahet/0 55.97,54.98
|next "TWW_World_Quest_Emissaries"
step
label quest-82536
accept Exfiltration Operation##82536 |goto Nerub'ar/1 58.37,66.49
|tip You will accept this quest automatically.
step
clicknpc Conscripted Ascendant##225660+
Free #12# Conscripted Ascendants |q 82536/1 |goto Nerub'ar/1 58.37,66.49
|next "TWW_World_Quest_Emissaries"
step
label quest-82524
accept Exterminate##82524 |goto Azj-Kahet/0 62.69,28.88
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Kaheti Threadmancer##214939,Kaheti Skirmisher##214940,Kaheti Overseer##214941,Dependable Skitterling##222153
Slay #15# Nerubians |q 82524/1 |goto Azj-Kahet/0 62.69,28.88
|next "TWW_World_Quest_Emissaries"
step
label quest-82324
accept Grub Run##82324 |goto Azj-Kahet/0 39.28,40.92
|tip You will accept this quest automatically.
step
clicknpc Razormouth Grub##223671+
|tip They look like purple worms with teeth and spikes inside the caves around this area.
|tip Avoid filling your Tremorsense bar by periodically stopping and letting it lower.
|tip A full bar will spawn enemies that attack you.
Gather #10# Razormouth Grubs |q 82324/1 |goto Azj-Kahet/0 39.28,40.92
|next "TWW_World_Quest_Emissaries"
step
label quest-79722
accept Gutter Work##79722 |goto Azj-Kahet/0 57.45,68.48
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Adolchomper##217724,Gutter Scarfer##217717,Drooling Salamuncher##217720,Gutter Gorger##217718
|tip You can find more underwater nearby.
|tip Loot the corpses for various quest items.
Scavenge the Salien Gutters |q 79722/1 |goto Azj-Kahet/0 56.09,69.94
|next "TWW_World_Quest_Emissaries"
step
label quest-82468
accept Let Them Win##82468 |goto Azj-Kahet/0 29.26,41.97
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Skitterling##217991,Slam Scavenger##217997,Kaheti Silksinger##215711,Kaheti Preysnatcher##215170
|tip You can also fly through gold rings in the air to gain the Holy Lance buff.
|tip While you have this buff, you can fly through mines floating in the air to detonate them safely.
|tip Hitting a mine without the buff will dismount you.
Turn the Battle Against the Nerubians |q 82468/2 |goto Azj-Kahet/0 29.26,41.97
|next "TWW_World_Quest_Emissaries"
step
label quest-82297
accept One Hungry Worm##82297 |goto Azj-Kahet/0 53.09,31.58
|tip You will accept this quest automatically.
step
clicknpc Zaedu##223406
Defeat Zaedu in a Pet Battle |q 82297/1 |goto Azj-Kahet/0 53.09,31.58
|next "TWW_World_Quest_Emissaries"
step
label quest-82363
accept Opposing Forces##82363 |goto Azj-Kahet/0 43.31,21.80
|tip You will accept this quest automatically.
step
clicknpc Shrouded Skysilk
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
Ride the Shrouded Skysilk |q 82363/1 |goto Azj-Kahet/0 43.31,21.80
step
Take Pictures of Nerubian Forces |q 82363/2
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|next "TWW_World_Quest_Emissaries"
step
label quest-81624
accept Orta, the Broken Mountain##81624 |goto Nerub'ar/1 17.32,33.86
|tip You will accept this quest automatically.
step
kill Orta##221067 |q 81624/1 |goto Nerub'ar/1 17.32,33.86
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid the {o}runes{} on the ground. |grouprole EVERYONE
|tip {o}Techtonic Roar{} at 100 energy knocks everyone back and deals damage. |grouprole EVERYONE
|tip Avoid standing in front of Orta when it slams the ground.
_HEALER:_ |grouprole HEALER
|tip Players you are grabbed will suffer heavy damage. |grouprole HEALER
|next "TWW_World_Quest_Emissaries"
step
label quest-82521
accept Pawns of Dark Masters##82521 |goto Azj-Kahet/1 64.81,82.38
|tip You will accept this quest automatically.
step
click Black Blood Extractor
|tip They look like large machines drawing blood from growths on the ground around this area.
|tip This will allow you to see Discordant Creatures.
|tip Do not click a Harmonizing Instrument or it will reset your stacks.
Obtain Stacks of Unseeming Shift |q 82521/1 |goto Azj-Kahet/1 64.81,82.38
step
click Black Blood Extractor
|tip They look like large machines drawing blood from growths on the ground around this area.
|tip This will allow you to see Discordant Creatures.
|tip Gain more stacks to see more powerful creatures.
|tip Do not click a Harmonizing Instrument or it will reset your stacks.
|tip At 50 stacks, you can see elites which grant you huge amounts of progress.
Kill enemies around this area |kill Discordant Skitterling##223116,Tentacle Slime##220656
Slay Discordant Creatures |q 82521/2 |goto Azj-Kahet/1 64.81,82.38
|next "TWW_World_Quest_Emissaries"
step
label quest-81824
accept Skyrider Racing - City of Threads Twist##81824 |goto Nerub'ar/1 27.01,7.92
|tip High up on the rocks.
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219564
Select _"I'd like to try the course."_ |gossip 121287 |noautogossip
Prepare for the Race |havebuff Race Starting##439300 |goto Nerub'ar/1 27.01,7.92 |q 81824
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Nerub'ar/1 27.39,7.76 |q 81824
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81824/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81825
accept Skyrider Racing - Maddening Deep Dip##81825 |goto Azj-Kahet/0 77.92,79.65
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219565
Select _"I'd like to try the course."_ |gossip 121290 |noautogossip
Prepare for the Race |havebuff Race Starting##439301 |goto Azj-Kahet/0 77.92,79.65 |q 81825
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Azj-Kahet/0 77.90,79.78 |q 81825
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81825/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81829
accept Skyrider Racing - Pit Plunge##81829 |goto Azj-Kahet/0 23.81,48.35
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219569
Select _"I'd like to try the course."_ |gossip 121299 |noautogossip
Prepare for the Race |havebuff Race Starting##439304 |goto Azj-Kahet/0 23.81,48.35 |q 81829
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Azj-Kahet/0 23.92,48.49 |q 81829
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81829/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81828
accept Skyrider Racing - Rak-Ahat Rush##81828 |goto Azj-Kahet/0 71.34,36.36
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219568
Select _"I'd like to try the course."_ |gossip 121296 |noautogossip
Prepare for the Race |havebuff Race Starting##439303 |goto Azj-Kahet/0 71.34,36.36 |q 81828
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Azj-Kahet/0 71.47,36.44 |q 81828
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81828/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81831
accept Skyrider Racing - Siegehold Scuttle##81831 |goto Azj-Kahet/0 40.18,32.20
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219570
Select _"I'd like to try the course."_ |gossip 121281 |noautogossip
Prepare for the Race |havebuff Race Starting##439305 |goto Azj-Kahet/0 40.18,32.20 |q 81831
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Azj-Kahet/0 40.31,32.07 |q 81831
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81831/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81827
accept Skyrider Racing - The Weaver's Wing##81827 |goto Azj-Kahet/0 52.95,36.19
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219567
Select _"I'd like to try the course."_ |gossip 121293 |noautogossip
Prepare for the Race |havebuff Race Starting##439302 |goto Azj-Kahet/0 52.95,36.19 |q 81827
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Azj-Kahet/0 52.98,36.33 |q 81827
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81827/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-82387
accept Slay the Goo, Save the World##82387 |goto Azj-Kahet/1 65.21,82.54
|tip You will accept this quest automatically.
step
click Black Blood Extractor
|tip They look like large machines drawing blood from growths on the ground around this area.
|tip Do not click a Harmonizing Instrument or it will reset your stacks.
Have 50 or More Stacks of Unseeming Shift |q 82387/1 |goto Azj-Kahet/1 65.21,82.54
step
kill Warped Sapling##220655 |q 82387/3 |goto Azj-Kahet/1 63.17,85.13
|tip Do not click a Harmonizing Instrument or it will reset your stacks.
|tip This enemy is elite and may require a group.
step
kill 1 Aberrant Deepwalker##220653 |q 82387/4 |goto Azj-Kahet/1 65.34,88.16
|tip Do not click a Harmonizing Instrument or it will reset your stacks.
|tip This enemy is elite and may require a group.
step
kill 1 Faceless One##223119 |q 82387/2 |goto Azj-Kahet/1 65.82,83.92
|tip Do not click a Harmonizing Instrument or it will reset your stacks.
|tip This enemy is elite and may require a group.
|next "TWW_World_Quest_Emissaries"
step
label quest-82414
accept Special Assignment: A Pound of Cure##82414 |goto Azj-Kahet/0 64.58,6.87
|tip You will accept this quest automatically.
step
extraaction Roof Rockets##451852
|tip Use the ability on your screen to shoot a rocket at your target, dealing extra AoE damage.
clicknpc Arathi Prisoner##222119+
|tip They look like webbed NPCs on the ground around this area.
click Nerubian Burrow+
|tip They look like large forming holes on the ground around this area.
|tip They will spawn an elite enemy.
Kill enemies around this area |kill Toxic Swarmite##222721,Sureki Raider##222677,Venomous Flyer##222722,Sureki Priestess##222688,Crimson Deathweaver##222692,kill Sureki Warrior##222693
Disrupt Arathi's End |q 82414/1 |goto Azj-Kahet/0 64.58,6.87
|next "TWW_World_Quest_Emissaries"
step
label quest-82531
accept Special Assignment: Bombs from Behind##82531 |goto Azj-Kahet/0 56.66,47.34
|tip You will accept this quest automatically.
step
clicknpc Stolen Skiff##226416
Appropriate a Skiff |q 82531/1 |goto Azj-Kahet/0 56.66,47.34
step
Slay Convoy Troops |q 82531/2 |goto Azj-Kahet/0 61.88,36.92
|tip Use the abilities on your vehicle bar to destroy the troops below.
|tip The first button drops bombs while the second button returns you to the platform.
|next "TWW_World_Quest_Emissaries"
step
label quest-79116
accept Spider Optics##79116 |goto Azj-Kahet/0 73.45,84.71
|tip You will accept this quest automatically.
stickystart "Rescue_Spiderlings"
stickystart "Kill_Silkweaver_Pillagers"
step
click Threadling Egg Sac+
|tip They look like small clusters of white eggs on the ground around this area.
Protect #5# Egg Sacs |q 79116/3 |goto Azj-Kahet/0 73.45,84.71
step
label "Rescue_Spiderlings"
click Spiderling Cage+
|tip They look like small wooden cages on the ground around this area.
Rescue #6# Spiderlings |q 79116/2 |goto Azj-Kahet/0 73.45,84.71
step
label "Kill_Silkweaver_Pillagers"
kill 6 Silkweaver Pillager##218104 |q 79116/1 |goto Azj-Kahet/0 73.45,84.71
|next "TWW_World_Quest_Emissaries"
step
label quest-79960
accept Taking it To Go##79960 |goto Azj-Kahet/0 79.47,76.74
|tip You will accept this quest automatically.
step
kill Vigilant Nestguard##218380+
use the Threadling Lure##216664
|tip Target the corpses of Vigilant Nestguards.
Collect #5# Vigilant Nestguard Corpses |q 79960/1 |goto Azj-Kahet/0 79.47,76.74
|next "TWW_World_Quest_Emissaries"
step
label quest-82266
accept Tower Washing Simulator##82266 |goto Nerub'ar/1 31.09,33.96
|tip You will accept this quest automatically.
step
clicknpc Stagnant Slime##223473+
|tip They look like dark blue blobs on the walls of the building.
Maintain the Royal Preservatory |q 82266/1 |goto Nerub'ar/1 31.09,33.96
|next "TWW_World_Quest_Emissaries"
step
label quest-78995
accept Truffle Shuffle##78995 |goto Azj-Kahet/0 70.02,77.86
|tip You will accept this quest automatically.
step
click Volatile Soil+
|tip They look like small piles of smoking dirt on the ground around this area.
click Volatile Kaheti Truffle+
|tip They look like clusters of mushrooms that spawn after overturning the soil.
Collect #5# Kaheti Truffles |q 78995/1 |goto Azj-Kahet/0 70.02,77.86
|next "TWW_World_Quest_Emissaries"
step
label quest-82332
accept Unassuming Delivery Spider##82332 |goto Nerub'ar/1 53.00,22.90
|tip You will accept this quest automatically.
step
Deliver Supplies |q 82332/1 |goto Nerub'ar/1 58.67,29.79
|tip Click the chest next to the delivery tent for this.
|tip They appear on your minimap as yellow dots.
|tip Once you pick them up, mount up and fly them to the building and walk near the NPC inside.
Deliver them in the building at [Nerub'ar/1 58.27,32.74]
|next "TWW_World_Quest_Emissaries"
step
label quest-83536
accept Undertide Undertaker##83536 |goto Azj-Kahet/0 44.66,48.34
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Undertide Luremancer##226953,kill Undertide Deepfisher##226961,kill Undertide Preystalker##226963
Slay Kobyss |q 83536/1 |goto Azj-Kahet/0 44.66,48.34
|next "TWW_World_Quest_Emissaries"
step
label quest-79958
accept Worm Sign, Sealed, Delivered##79958 |goto Azj-Kahet/0 72.83,77.44
|tip You will accept this quest automatically.
step
click Worm Chow+
|tip The more you move, the more chance there is of a nearby worm attacking you.
Place the Food |q 79958/1 |goto Azj-Kahet/0 73.53,76.15 |count 1
step
click Worm Chow+
|tip Inside the cave.
|tip The more you move, the more chance there is of a nearby worm attacking you.
Place the Food |q 79958/1 |goto Azj-Kahet/0 73.19,74.94 |count 2
step
click Worm Chow+
|tip The more you move, the more chance there is of a nearby worm attacking you.
Place the Food |q 79958/1 |goto Azj-Kahet/0 71.83,78.18 |count 3
step
click Worm Chow+
|tip Inside the cave.
|tip The more you move, the more chance there is of a nearby worm attacking you.
Place the Food |q 79958/1 |goto Azj-Kahet/0 73.85,79.13 |count 4
|next "TWW_World_Quest_Emissaries"
step
label quest-79959
accept Wormcraft Rumble##79959 |goto Azj-Kahet/0 74.10,82.45
|tip You will accept this quest automatically.
step
kill Shyalude##223834 |q 79959/1 |goto Azj-Kahet/0 74.10,82.45
|next "TWW_World_Quest_Emissaries"
step
label quest-82295
accept Ziriak##82295 |goto Nerub'ar/0 61.29,36.96
|tip You will accept this quest automatically.
step
talk Ziriak##223443
Select _"Begin pet battle."_ |gossip 122403 |noautogossip
Defeat Ziriak in a Pet Battle |q 82295/1 |goto Nerub'ar/0 61.29,36.96
|next "TWW_World_Quest_Emissaries"
step
label "TWW_World_Quest_Emissaries"
#include "TWW_World_Quest_Emissaries"
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\Hallowfall World Quests",{
description="This guide will assist you in completing world quests in the Hallowfall.",
condition_valid=function() return completedq(79573) end,
condition_valid_msg="You must complete the \"Surface Bound\" quest in The War Within campaign on at least one character to unlock world quests.",
startlevel=70,
worldquestzone={2215},
patch='110002',
},[[
step
label "Choose_World_Quest"
#include "TWW_Choose_World_Quests"
step
label quest-82254
accept Aquacalypse##82254 |goto Hallowfall/0 46.33,14.95
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Drowned Arathi##213335,Droopfin##213716,Murkfin Ravager##213621,Murkfin Sciomancer##213619,Murkfin Depthstalker##213622
Slay #12# Kobyss Attackers |q 82254/1 |goto Hallowfall/0 46.33,14.95
|next "TWW_World_Quest_Emissaries"
step
label quest-82041
accept Beledar's Blessing##82041 |goto Hallowfall/0 24.40,61.01
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 82041/1 |goto Hallowfall/0 24.40,61.01
step
click Handhold
Find a Handhold on the Cliff |q 82041/2 |goto Hallowfall/0 24.43,61.02
step
click Radiant Cluster+
|tip They look like large gold crystals on the rock face.
|tip Click handholds to move up the wall and excavate artifacts from the wall by clicking them.
|tip Avoid Stinging Swarms that will lower your grip.
Collect #7# Radiant Clusters |q 82041/3 |goto Hallowfall/0 24.80,61.66
|next "TWW_World_Quest_Emissaries"
step
label quest-82257
accept Burrow Burial##82257 |goto Hallowfall/0 70.04,58.70
|tip You will accept this quest automatically.
step
click Nerubian Burrow##411984+
|tip They look like large piles of dirt on the ground around this area.
kill Dreadstrike Ambusher##217481+
|tip They spawn after destroying a brurrow.
|tip You can mount up quickly after clicking the burrow and fly away before it can attack you.
Destroy #5# Nerubian Burrows |q 82257/1 |goto Hallowfall/0 70.04,58.70
|next "TWW_World_Quest_Emissaries"
step
label quest-82133
accept Documenting: Field Manual Edition##82133 |goto Hallowfall/0 39.88,74.73
|tip You will accept this quest automatically.
step
clicknpc Cataloger's Disc##222930
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
Ride the Stealthed Cataloger's Disc |q 82133/1 |goto Hallowfall/0 39.88,74.73
step
Take Pictures of Discordance |q 82133/2
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|next "TWW_World_Quest_Emissaries"
step
label quest-81862
accept Feline Frenzy##81862 |goto Hallowfall/0 41.98,58.11
|tip You will accept this quest automatically.
step
clicknpc Imperial Lynx##221712
Ride the Imperial Lynx |q 81862/1 |goto Hallowfall/0 41.98,58.11
step
Enrich the Lynx |q 81862/2 |goto Hallowfall/0 42.47,53.50
|tip Use the "Growl" and "Pounce" abilities to build your progress bar.
|tip Large bushy green catnip plants will stop you and prevent you from moving if you run into them.
|tip If your Lynx stops, use "Shake" until it starts moving again.
|tip Run over red Lynx Treats all over Mereldar to gain more progress.
|next "TWW_World_Quest_Emissaries"
step
label quest-82259
accept Honoring our Fallen##82259 |goto Hallowfall/0 71.56,61.38
|tip You will accept this quest automatically.
|polish
step
click Fallen Defender+
|tip Tip they look like NPCs laying on the ground around this area.
Honor #6# Fallen Defenders |q 82259/1 |goto Hallowfall/0 71.56,61.38
|next "TWW_World_Quest_Emissaries"
step
label quest-82583
accept Igniting the Fire Within##82583 |goto Hallowfall/0 55.18,32.73
|tip You will accept this quest automatically.
step
click Torch
Light the Torch |q 82583/1 |goto Hallowfall/0 55.18,32.73
step
extraaction Rally##433115
|tip Use the button that appears on the screen.
Rally the Arathi Group |q 82583/2 |goto Hallowfall/0 54.60,32.77 |count 1
step
extraaction Rally##433115
|tip Use the button that appears on the screen.
Rally the Arathi Group |q 82583/2 |goto Hallowfall/0 53.68,33.01 |count 2
step
extraaction Rally##433115
|tip Use the button that appears on the screen.
Rally the Arathi Group |q 82583/2 |goto Hallowfall/0 54.25,34.80 |count 3
step
extraaction Rally##433115
|tip Use the button that appears on the screen.
Rally the Arathi Group |q 82583/2 |goto Hallowfall/0 55.41,34.40 |count 4
step
extraaction Rally##433115
|tip Use the button that appears on the screen.
Rally the Arathi Group |q 82583/2 |goto Hallowfall/0 55.55,33.71 |count 5
step
extraaction Rally##433115
|tip Use the button that appears on the screen.
Rally the Arathi Group |q 82583/2 |goto Hallowfall/0 56.16,33.63 |count 6
|next "TWW_World_Quest_Emissaries"
step
label quest-82206
accept Into Shadows##82206 |goto Hallowfall/0 67.47,44.51
|tip You will accept this quest automatically.
step
talk Venrie Flitter##223105
Select _"<Take the skiff out to fight the darkness.>"_ |gossip 122295
Talk to Venrie to Board the Skiff |q 82206/1 |goto Hallowfall/0 67.47,44.51
step
kill 20 Keening Shadows##223109 |q 82206/2 |goto Hallowfall/0 65.71,44.23
|tip Use the abilities on your vehicle bar.
|next "TWW_World_Quest_Emissaries"
step
label quest-82088
accept Kobyss Kibosh##82088 |goto Hallowfall/0 35.35,54.64
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Ragefin Carver##213400,Ragefin Shadowcaster##213405,Ragefin Executioner##213408,Grimslice##221551,Order of Night Adept##213401,Ragefin Necromancer##213406,Ragefin Carver##215652,Darkwater Tidecrusher##220621
Assist the Arathi in Driving Back the Kobyss |q 82088/1 |goto Hallowfall/0 35.35,54.64
|next "TWW_World_Quest_Emissaries"
step
label quest-82584
accept Light's Gambit##82584 |goto Hallowfall/0 69.16,45.58
|tip You will accept this quest automatically.
step
talk Rytr Paller##227456
|tip Inside the building.
Select _"<Challenge to a game of Light's Gambit.>"_ |gossip 123177
|tip Select any difficulty you prefer.
Select a Difficulty Level |q 82584/1 |goto Hallowfall/0 69.16,45.58
step
click Light's Gambit
|tip Use the abilities each of your pieces have to attack the opposing tower.
|tip Switch pieces when you have no available abilities and move your pieces out of danger areas.
Win Light's Gambit |q 82584/2 |goto Hallowfall/0 69.16,45.52
|next "TWW_World_Quest_Emissaries"
step
label quest-82294
accept Miniature Army##82294 |goto Hallowfall/0 52.44,62.79
|tip You will accept this quest automatically.
step
talk Kyrie##223442
Select _"Begin pet battle."_ |gossip 122401 |noautogossip
Defeat Kyrie in a Pet Battle |q 82294/1 |goto Hallowfall/0 52.44,62.79
|next "TWW_World_Quest_Emissaries"
step
label quest-82582
accept Mired in Shadow##82582 |goto Hallowfall/0 74.86,52.90
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Fungal Infestor##216077,Bloatrot Stinger##216065
Clear the Shadowmire |q 82582/1 |goto Hallowfall/0 74.86,52.90
|next "TWW_World_Quest_Emissaries"
step
label quest-82120
accept Pool Cleaner##82120 |goto Hallowfall/0 49.40,50.04
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Hungering Slicer##215242,Hungering Necromage##215239,Drowned Arathi##225760
Slay #15# Kobyss |q 82120/1 |goto Hallowfall/0 49.40,50.04
|next "TWW_World_Quest_Emissaries"
step
label quest-81620
accept Recovery Job##81620 |goto Hallowfall/0 56.09,67.25
|tip You will accept this quest automatically.
step
click Arathi Crate+
|tip They look like large wooden boxes on the ground around this area.
|tip They appear on your minimap as yellow dots.
click Arathi Supplies##439338+
|tip They appear after you destroy Arathi Crates.
collect 8 Shipyard Tools##219357 |q 81620/1 |goto Hallowfall/0 56.09,67.25
|next "TWW_World_Quest_Emissaries"
step
label quest-82197
accept Reserve Rumpus##82197 |goto Hallowfall/0 41.64,52.21
|tip You will accept this quest automatically.
step
talk Arathi Reserve##215727+
Select _"Your general asked me to spar with you."_ |gossip 120333
Duel #8# Arathi Recruits |q 82197/1 |goto Hallowfall/0 41.64,52.21
|tip Defeat the recruits in combat.
|next "TWW_World_Quest_Emissaries"
step
label quest-81653
accept Shurrai, Atrocity of the Undersea##81653 |goto Hallowfall/0 45.17,17.80
|tip You will accept this quest automatically.
step
kill Shurrai##221224 |q 81653/1 |goto Hallowfall/0 45.17,17.80
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid the three {o}Dark Tide{} waves as they wash away {o}Briny Vomit{} pools. |grouprole EVERYONE
|tip Don't stand in pools on the ground. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Kill {o}Drowned Arathi{} quickly to deal heavy damage to Shurrai. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Anyone near a {o}Drowned Arathi{} when it dies will need healing. |grouprole HEALER
|tip {o}Abyssal Strike{} will cause healing on the tank to be absorbed in the amount of damage it caused |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Mitigate {o}Abyssal Strike{} whenever possible and prepare for a gap in healing after. |grouprole TANK
|next "TWW_World_Quest_Emissaries"
step
label quest-82258
accept Sieging Siege Weapons##82258 |goto Hallowfall/0 57.06,66.10
|tip You will accept this quest automatically.
step
click Blackpowder Barrel##411930+
|tip They look like large wooden barrels with metal hardware on the ground around this area.
|tip They appear on your minimap as yellow dots.
collect 5 Keg of Black Powder##213630 |q 82258/1 |goto Hallowfall/0 57.06,66.10
step
click Blackpowder Barrel
Place the Blackpowder Barrel |q 82258/2 |goto Hallowfall/0 59.39,65.42 |count 1
step
click Blackpowder Barrel
Place the Blackpowder Barrel |q 82258/2 |goto Hallowfall/0 59.62,66.18 |count 2
step
click Blackpowder Barrel
Place the Blackpowder Barrel |q 82258/2 |goto Hallowfall/0 59.64,66.70 |count 3
step
click Blackpowder Barrel
Place the Blackpowder Barrel |q 82258/2 |goto Hallowfall/0 59.68,67.40 |count 4
|next "TWW_World_Quest_Emissaries"
step
label quest-81815
accept Skyrider Racing - Dunelle's Detour##81815 |goto Hallowfall/0 72.78,38.42
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219557
Select _"I'd like to try the course."_ |gossip 121269 |noautogossip
Prepare for the Race |havebuff Race Starting##439277 |goto Hallowfall/0 72.78,38.42 |q 81815
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Hallowfall/0 72.72,38.49 |q 81815
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81815/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81818
accept Skyrider Racing - Light's Redoubt Descent##81818 |goto Hallowfall/0 41.43,67.25
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219559
Select _"I'd like to try the course."_ |gossip 121275 |noautogossip
Prepare for the Race |havebuff Race Starting##439281 |goto Hallowfall/0 41.43,67.25 |q 81818
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Hallowfall/0 41.38,67.13 |q 81818
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81818/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81822
accept Skyrider Racing - Mereldar Meander##81822 |goto Hallowfall/0 38.97,61.35
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219561
Select _"I'd like to try the course."_ |gossip 121281 |noautogossip
Prepare for the Race |havebuff Race Starting##439283 |goto Hallowfall/0 38.97,61.35 |q 81822
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Hallowfall/0 39.00,61.20 |q 81822
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81822/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81819
accept Skyrider Racing - Stillstone Slalom##81819 |goto Hallowfall/0 60.41,26.01
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219560
Select _"I'd like to try the course."_ |gossip 121278 |noautogossip
Prepare for the Race |havebuff Race Starting##439282 |goto Hallowfall/0 60.41,26.01 |q 81819
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Hallowfall/0 60.54,25.92 |q 81819
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81819/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81823
accept Skyrider Racing - Velhan's Venture##81823 |goto Hallowfall/0 54.13,17.41
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219562
Select _"I'd like to try the course."_ |gossip 121284 |noautogossip
Prepare for the Race |havebuff Race Starting##439284 |goto Hallowfall/0 54.13,17.41 |q 81823
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Hallowfall/0 54.03,17.40 |q 81823
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81823/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-82852
accept Special Assignment: Lynx Rescue##82852 |goto Hallowfall/0 67.96,63.56
|tip You will accept this quest automatically.
step
clicknpc Twinkle##226088
|tip If Twinkle is not here, look for another lynx nearby.
|tip It will appear on your minimap as a yellow dot.
Find and Befriend a Lost Lynx |q 82852/1 |goto Hallowfall/0 66.94,63.48
step
extraaction Crush Windpipe##453203
|tip Use the ability on-screen every time it's available to help kill the Nightmares.
kill 4 Vanishing Nightmare##224922 |q 82852/2 |goto Hallowfall/0 65.89,63.67
|tip Kill them quickly when they get below 10% health or they will dematerialize and get away.
|next "TWW_World_Quest_Emissaries"
step
label quest-82787
accept Special Assignment: Rise of the Colossals##82787 |goto Hallowfall/0 63.47,8.56
|tip You will accept this quest automatically.
stickystart "Collect_Bleak_Chum"
step
click Frothing Waters+
|tip They look like large blue pools in the water off the coast around this area.
|tip A Bleak Chum is required each time you summon a Colossal.
Slay #3# Colossals |q 82787/2 |goto Hallowfall/0 63.47,8.56
|tip The enemy that spawns is random and elite.
|tip You may need a group for this.
|tip You can get credit for killing another player's Colossal and avoid farming Chum.
step
label "Collect_Bleak_Chum"
Kill Bleak enemies around this area |kill Bleak Claw-Eater##224749,Bleak Beastbreaker##224746,Bleak Flesh-Taker##224747,Bleak Seatamer##224745,Bleak Beak-Carver##224748
|tip These enemies are elite and may require a group.
collect 3 Bleak Chum##224183 |q 82787/1 |goto Hallowfall/0 64.07,8.80
|next "TWW_World_Quest_Emissaries"
step
label quest-81816
accept Skyrider Racing - Tenir's Traversal##81816 |goto Hallowfall/0 59.19,68.94
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219558
Select _"I'd like to try the course."_ |gossip 121272 |noautogossip
Prepare for the Race |havebuff Race Starting##439278 |goto Hallowfall/0 59.19,68.94 |q 81816
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Hallowfall/0 59.30,68.94 |q 81816
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81816/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-82586
accept Spore Ender##82586 |goto Hallowfall/0 61.05,62.34
|tip You will accept this quest automatically.
stickystart "Collect_Fragrant_Mirespores"
step
kill Darkcap Tain##226285 |q 82586/1 |goto Hallowfall/0 60.98,65.37
step
label "Collect_Fragrant_Mirespores"
Kill enemies around this area |kill Mirehat Fungalmancer##221362,Sludgeborn Shambler##220734,Mirehat Sporedancer##221363,Cultivated Mireshroom##221464,Cultivated Mireshroom##221366
collect 30 Fragrant Mirespores##225655 |q 82586/2 |goto Hallowfall/0 61.05,62.34
|next "TWW_World_Quest_Emissaries"
step
label quest-76586
accept Spreading The Light##76586 |goto Hallowfall/0 64.50,30.35
|tip You will accept this quest automatically.
step
collect Radiant Remnant##206350 |n
|tip They drop from enemies all over this area.
click Lesser Keyflame+
|tip They look like bowls with crystals in them.
|tip You need to contribue three Radiant Remnants to each Lesser Keyflame.
Activate #4# Lesser Keyflames |q 76586/1 |goto Hallowfall/0 64.50,30.35
|next "TWW_World_Quest_Emissaries"
step
label quest-82298
accept The Thing from the Swamp##82298 |goto Hallowfall/0 61.07,68.99
|tip You will accept this quest automatically.
step
clicknpc Guttergunk##223409
Defeat Guttergunk in a Pet Battle |q 82298/1 |goto Hallowfall/0 61.07,68.99
|next "TWW_World_Quest_Emissaries"
step
label quest-82585
accept With Great Pyre##82585 |goto Hallowfall/0 69.19,32.62
|tip You will accept this quest automatically.
step
use the Periapt of Pure Flame##225555
Wield the Gift of Pure Flame |q 82585/1 |goto Hallowfall/0 69.19,32.62
step
kill 6 Hollow Gigantobella##226065 |q 82585/2 |goto Hallowfall/0 69.19,32.62
|next "TWW_World_Quest_Emissaries"
step
label quest-82288
accept Work Hard, Play Hard##82288 |goto Hallowfall/0 41.94,55.44
|tip You will accept this quest automatically.
step
clicknpc Arathi Orphan##218493
|tip Hit one of the targets with a rock using the button on your vehicle bar.
Play with the Orphans |q 82288/1 |goto Hallowfall/0 41.91,55.52 |count 1
step
clicknpc Arathi Orphan##218493
Select _"I can play."_ |gossip 122367
|tip Use the abilities on your bar until the orphans "slay" you.
Play with the Orphans |q 82288/1 |goto Hallowfall/0 42.02,55.43 |count 2
step
clicknpc Arathi Orphan##218456
|tip They run in a circle around the fence.
Play with the Orphans |q 82288/1 |goto Hallowfall/0 41.95,55.02 |count 3
step
talk Arathi Orphan##218493
Select _"I can play."_ |gossip 121459
|tip Find the hiding orphan.
Play with the Orphans |q 82288/1 |goto Hallowfall/0 41.83,55.26 |count 4
The orphan hides at [Hallowfall/0 41.65,54.54]
|next "TWW_World_Quest_Emissaries"
step
label "TWW_World_Quest_Emissaries"
#include "TWW_World_Quest_Emissaries"
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\Isle of Dorn World Quests",{
description="This guide will assist you in completing world quests in the Isle of Dorn.",
condition_valid=function() return completedq(79573) end,
condition_valid_msg="You must complete the \"Surface Bound\" quest in The War Within campaign on at least one character to unlock world quests.",
startlevel=70,
worldquestzone={2248,2339},
patch='110002',
},[[
step
label "Choose_World_Quest"
#include "TWW_Choose_World_Quests"
step
label quest-81630
accept Activation Protocol##81630 |goto Isle of Dorn/0 50.14,58.74
|tip You will accept this quest automatically.
step
kill Kordac##221084 |q 81630/1 |goto Isle of Dorn/0 50.14,58.74
_EVERYONE:_ |grouprole EVERYONE
|tip Run away from lasers if targeted and don't stand in the earth left behind. |grouprole EVERYONE
|tip Spread out if targeted by {o}Suppression Burst{} to avoid silencing nearby players |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip Run around picking up arcane orbs following lasers for a brief damage increase. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip Heal laser targets and be prepared for {o}Suppression Burst{} silence and pacify effects. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip {o}Titanic Impact{} deals heavy damage and throws you in the air. |grouprole TANK
|next "TWW_World_Quest_Emissaries"
step
label quest-82470
accept Arcane Riddles##82470 |goto Isle of Dorn/0 29.94,52.48
|tip You will accept this quest automatically.
step
click Arcane Crystal
|tip Click blue orbs in pairs to switch their position and their respective lines.
|tip Uncross the lines so none of them overlap.
|tip Do this until you light up all of the lock symbols gold.
Fix the Flow of Magic |q 82470/1 |goto Isle of Dorn/0 29.94,52.48
|next "TWW_World_Quest_Emissaries"
step
label quest-81465
accept Artifacts Galore##81465 |goto Isle of Dorn/0 79.51,29.23
|tip You will accept this quest automatically.
step
click Titan Artifacts+
|tip They look like large white orbs on the ground around this area.
collect 7 Titan Artifact##218454 |q 81465/1 |goto Isle of Dorn/0 79.51,29.23
|next "TWW_World_Quest_Emissaries"
step
label quest-82448
accept Book It to the Library##82448 |goto Isle of Dorn/0 30.53,56.60
|tip You will accept this quest automatically.
stickystart "Collect_Lost_Tomes"
step
kill Babbling Book##223852 |q 82448/2 |goto Isle of Dorn/0 30.60,57.68
step
label "Collect_Lost_Tomes"
click Arcane Tome+
|tip They look like small books laying on the ground around this area.
|tip They appear on your minimap as yellow dots.
Collect #6# Lost Tomes |q 82448/1 |goto Isle of Dorn/0 30.53,56.60
|next "TWW_World_Quest_Emissaries"
step
label quest-82456
accept Chew On This##82456 |goto Isle of Dorn/0 52.69,56.96
|tip You will accept this quest automatically.
step
clicknpc Hungry Ramolith##225259
|tip They appear on your minimap as yellow dots.
Mount a Hungry Ramolith |q 82456/1 |goto Isle of Dorn/0 52.69,56.96
step
Consume #25# Scrumptious Grass |q 82456/2 |goto Isle of Dorn/0 52.69,56.96
|tip Run over the large stalks of highlighted grass all over this area.
|tip You will gain a brief speed boost for each one.
|next "TWW_World_Quest_Emissaries"
step
label quest-81854
accept Coreway Maintenance Request##81854 |goto Dornogal/0 39.89,58.17
|tip You will accept this quest automatically.
step
click Pile of Coal
Add Fuel |q 81854/1 |goto Dornogal/0 39.89,58.17
step
clicknpc Coreway Repair Rig##221659
Enter the Coreway Repair Rig |q 81854/2 |goto Dornogal/0 39.63,58.37
step
Destroy the Rubble |q 81854/3 |goto Dornogal/0 37.93,57.32 |count 1
|tip Use the {o}Forgefire Turbocharge{} ability on your vehicle bar for a speed boost.
|tip Use the {o}Molten Lance{} ability on your vehicle bar while near the rubble.
step
Destroy the Rubble |q 81854/3 |goto Dornogal/0 35.30,55.98 |count 2
|tip Use the {o}Forgefire Turbocharge{} ability on your vehicle bar for a speed boost.
|tip Jump to begin flying.
|tip Fly to the rubble pile.
|tip Use the {o}Molten Lance{} ability on your vehicle bar while near the rubble.
step
Destroy the Rubble |q 81854/3 |goto Dornogal/0 35.19,63.36 |count 3
|tip Use the {o}Forgefire Turbocharge{} ability on your vehicle bar for a speed boost.
|tip Jump to begin flying.
|tip Fly to the rubble pile.
|tip Use the {o}Molten Lance{} ability on your vehicle bar while near the rubble.
step
Destroy the Rubble |q 81854/3 |goto Dornogal/0 36.96,63.57 |count 4
|tip Use the {o}Forgefire Turbocharge{} ability on your vehicle bar for a speed boost.
|tip Jump to begin flying.
|tip Fly to the rubble pile.
|tip Use the {o}Molten Lance{} ability on your vehicle bar while near the rubble.
|next "TWW_World_Quest_Emissaries"
step
label quest-82658
accept Drop and Go##82658 |goto Isle of Dorn/0 46.16,62.08
|tip You will accept this quest automatically.
stickystart "Slay_Nerubians_82658"
step
Enter the cave |goto Isle of Dorn/0 46.16,62.08 < 10 |walk
click Opal-Mining Tools##449528+
|tip They look like wooden toolboxes on the ground inside the cave.
collect 6 Opal-Mining Tools##224074 |q 82658/1 |goto Isle of Dorn/0 47.23,61.31
step
label "Slay_Nerubians_82658"
Kill Nerubian enemies around this area |kill Nerubian Skirmisher##224150,Nerubian Webspinner##224149
|tip Inside the cave.
Slay #10# Nerubians |q 82658/2 |goto Isle of Dorn/0 47.23,61.31
|next "TWW_World_Quest_Emissaries"
step
label quest-82225
accept Excavation Extravaganza##82225 |goto Isle of Dorn/0 62.55,71.17
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Sargassum Guardian##212582,Quaking Rager##215359,Unbound Peblet##215363,Condensing Sprite##215362,Rising Tidebound##215361,Swarming Sandwhisper##215360,Sandres the Relicbearer##217534
click Titan Artifact+
|tip They look like half-buried large white orbs on the ground around this area.
Support the Excavation Efforts |q 82225/1 |goto Isle of Dorn/0 62.55,71.17
|next "TWW_World_Quest_Emissaries"
step
label quest-82234
accept A Floral Flair for Every Ram##82234 |goto Isle of Dorn/0 42.69,74.74
|tip You will accept this quest automatically.
stickystart "Collect_Crimson_Chargers"
step
click Amber Bloom+
|tip They look like clusters of yellow flowers on the ground around this area.
Collect #3# Amber Blooms |q 82234/2 |goto Isle of Dorn/0 42.69,74.74
step
label "Collect_Crimson_Chargers"
click Crimson Charger+
|tip They look like tall green plants on the ground around this area.
Collect #5# Crimson Charmers |q 82234/1 |goto Isle of Dorn/0 41.67,74.73
step
clicknpc Moss-Draped Ramolith##214945+
clicknpc Vinechewer Ramolith##214946+
Decorate #8# Rams |q 82234/3 |goto Isle of Dorn/0 42.83,74.58
|next "TWW_World_Quest_Emissaries"
step
label quest-81639
accept Book It to the Library##81639 |goto Isle of Dorn/0 75.88,37.23
|tip You will accept this quest automatically.
stickystart "Collect_Small_Glob_of_Honey"
stickystart "Kill_Faithful_of_Zirix"
step
Enter the cave |goto Isle of Dorn/0 75.12,38.59 < 15 |walk
kill Sazh'kel##221166 |q 81639/3 |goto Isle of Dorn/0 75.87,36.73
|tip Down in the lowest part of the cave.
step
label "Collect_Small_Glob_of_Honey"
click Spilled Fire honey##439463+
|tip They look like large yellow puddles on the ground inside and outside the cave.
collect 8 Small Glob of Honey##211811 |q 81639/2 |goto Isle of Dorn/0 75.88,37.23
step
label "Kill_Faithful_of_Zirix"
kill 10 Faithful of Zirix##216938 |q 81639/1 |goto Isle of Dorn/0 75.88,37.23
|tip Inside and outside the cave.
|next "TWW_World_Quest_Emissaries"
step
label quest-81710
accept Mead for the Catalog##81710 |goto Isle of Dorn/0 77.64,47.91
|tip You will accept this quest automatically.
step
clicknpc Cataloger's Disc##221495
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
Ride the Cataloger's Disc |q 81710/1 |goto Isle of Dorn/0 77.64,47.91
step
Take Pictures of Wildlife |q 81710/2
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|next "TWW_World_Quest_Emissaries"
step
label quest-82455
accept No More Bread##82455 |goto Isle of Dorn/0 40.40,61.15
|tip You will accept this quest automatically.
step
kill Bloated Sea Gull##224018+
click Salty Bread+
|tip They look like small loaves of bread on the ground around this area.
click Sea Gull Egg+
|tip They look like small white eggs on the ground around this area.
Cut Back the Sea Gull Habitat |q 82455/1 |goto Isle of Dorn/0 40.40,61.15
|next "TWW_World_Quest_Emissaries"
step
label quest-82451
accept Preserving Plush Pals##82451 |goto Isle of Dorn/0 30.88,52.58
|tip You will accept this quest automatically.
step
click Singed Plush+
|tip They look like small blue elephants on the ground around the area.
Gather #8# Singed Plushes |q 82451/1 |goto Isle of Dorn/0 30.88,52.58
step
click Elekk Pile
Bring the Singed Plushes to Safety |q 82451/2 |goto Isle of Dorn/0 29.10,56.09
|next "TWW_World_Quest_Emissaries"
step
label quest-81512
accept Props and Incense##81512 |goto Isle of Dorn/0 66.96,56.53
|tip You will accept this quest automatically.
stickystart "Collect_Pristine_Horns"
step
click Ashenfold+
|tip They look like small patches of purple flowers on the ground around this area.
collect 6 Ashenfold##218740 |q 81512/2 |goto Isle of Dorn/0 66.96,56.53
step
label "Collect_Pristine_Horns"
kill Shalehorn Impaler##216970+
collect 2 Pristine Horn##218739 |q 81512/1 |goto Isle of Dorn/0 66.96,56.53
|next "TWW_World_Quest_Emissaries"
step
label quest-82237
accept Rising the Falls##82237 |goto Isle of Dorn/0 56.68,42.72
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 82237/1 |goto Isle of Dorn/0 56.68,42.72
step
click Handhold
Find a Handhold on the Cliff |q 82237/2 |goto Isle of Dorn/0 56.51,43.30
step
click Ancient Celestite+
|tip They look like large blue crystals on the rock face.
|tip Click handholds to move up the wall and excavate artifacts from the wall by clicking them.
|tip Avoid blue water running over stones that will lower your grip.
Collect #6# Sparkrubble Ore |q 82237/3 |goto Isle of Dorn/0 56.49,42.89
|next "TWW_World_Quest_Emissaries"
step
label quest-82291
accept Robot Rumble##82291 |goto Isle of Dorn/0 48.17,31.96
|tip You will accept this quest automatically.
step
clicknpc Awakened Custodian##223407
Defeat the Awakened Custodian in a Pet Battle |q 82291/1 |goto Isle of Dorn/0 48.17,31.96
|next "TWW_World_Quest_Emissaries"
step
label quest-82292
accept Rock Collector##82292 |goto Isle of Dorn/0 38.33,78.83
|tip You will accept this quest automatically.
step
talk Collector Dyna##223446
Select _"Begin pet battle."_ |gossip 122407 |noautogossip
Defeat Collector Dyna in a Pet Battle |q 82292/1 |goto Isle of Dorn/0 38.33,78.83
|next "TWW_World_Quest_Emissaries"
step
label quest-80295
accept Rocks, Water and Elemental Fodder##80295 |goto Isle of Dorn/0 71.34,52.40
|tip You will accept this quest automatically.
step
click Elemental Silt Mound##413246+
|tip They look like mounds of sand on the ground around this area.
Kill enemies around this area |kill Scornful Sandshoal##214662,Frenzied Tidecore##213699
collect 20 Living Coalesced Silt##217343 |q 80295/1 |goto Isle of Dorn/0 71.34,52.40
|next "TWW_World_Quest_Emissaries"
step
label quest-81803
accept Skyrider Racing - Basin Bypass##81803 |goto Isle of Dorn/0 53.49,64.21
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219547
Select _"I'd like to try the course."_ |gossip 121239 |noautogossip
Prepare for the Race |havebuff Race Starting##439235 |goto Isle of Dorn/0 53.49,64.21 |q 81803
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Isle of Dorn/0 53.48,64.35 |q 81803
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81803/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81799
accept Skyrider Racing - Dornogal Drift##81799 |goto Dornogal/0 43.47,11.60
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219542
Select _"I'd like to try the course."_ |gossip 121233 |noautogossip
Prepare for the Race |havebuff Race Starting##439233 |goto Dornogal/0 43.47,11.60 |q 81799
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Dornogal/0 43.79,11.98 |q 81799
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81799/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81806
accept Skyrider Racing - Orecreg's Doglegs##81806 |goto Isle of Dorn/0 32.93,74.83
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219550
Select _"I'd like to try the course."_ |gossip 121248 |noautogossip
Prepare for the Race |havebuff Race Starting##439239 |goto Isle of Dorn/0 32.93,74.83 |q 81806
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Isle of Dorn/0 33.00,74.80 |q 81806
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81806/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81802
accept Skyrider Racing - Storm's Watch Survey##81802 |goto Isle of Dorn/0 38.58,43.46
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219544
Select _"I'd like to try the course."_ |gossip 121236 |noautogossip
Prepare for the Race |havebuff Race Starting##439234 |goto Isle of Dorn/0 38.58,43.46 |q 81802
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Isle of Dorn/0 38.67,43.48 |q 81802
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81802/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81805
accept Skyrider Racing - Thunderhead Trail##81805 |goto Isle of Dorn/0 58.33,24.85
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219549
Select _"I'd like to try the course."_ |gossip 121245 |noautogossip
Prepare for the Race |havebuff Race Starting##439238 |goto Isle of Dorn/0 58.33,24.85 |q 81805
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Isle of Dorn/0 58.35,24.66 |q 81805
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81805/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81804
accept Skyrider Racing - The Wold Ways##81804 |goto Isle of Dorn/0 62.16,46.02
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219548
Select _"I'd like to try the course."_ |gossip 121242 |noautogossip
Prepare for the Race |havebuff Race Starting##439236 |goto Isle of Dorn/0 62.16,46.02 |q 81804
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Isle of Dorn/0 62.16,46.11 |q 81804
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81804/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81647
accept Special Assignment: Titanic Resurgence##81647 |goto Isle of Dorn/0 31.42,71.13
|tip You will accept this quest automatically.
step
talk Stormrook##221531
Select _"(Skyriding) I'll take the reins this time."_ |gossip 123531
_Or_
Select _"You steer, and I'll shoot."_ |gossip 121744
|tip The skyriding option will require you to fly, otherwise you will just need to shoot.
Obtain a Supercharged Stormrook |q 81647/2 |goto Isle of Dorn/0 31.42,71.13
step
kill Eroded Titan Construct##221213 |q 81647/1 |goto Isle of Dorn/0 30.43,74.19
|tip You can find the construct all over this area.
|tip If it was recently killed, it will take a while to respawn.
|tip Avoid large red orbs in the air.
|tip Green orbs will renew your vigor if you are flying.
|tip If Skyriding, Whirling Surge will heal you, Surge Forward will shield you, and Skyward Ascent will deal damage.
|next "TWW_World_Quest_Emissaries"
step
label quest-81649
accept Special Assignment: Titanic Resurgence##81649 |goto Isle of Dorn/0 70.33,73.99
|tip You will accept this quest automatically.
|polish
step
talk Stormrook##221533
Select _"(Skyriding) I'll take the reins this time."_ |gossip 123532
_Or_
Select _"You steer, and I'll shoot."_ |gossip 121731
|tip The skyriding option will require you to fly, otherwise you will just need to shoot.
Obtain a Supercharged Stormrook |q 81649/2 |goto Isle of Dorn/0 70.20,71.80
step
kill Eroded Titan Construct##221205 |q 81649/1 |goto Isle of Dorn/0 70.33,73.99
|tip You can find the construct all over this area.
|tip If it was recently killed, it will take a while to respawn.
|tip Avoid large red orbs in the air.
|tip Green orbs will renew your vigor if you are flying.
|tip If Skyriding, Whirling Surge will heal you, Surge Forward will shield you, and Skyward Ascent will deal damage.
|next "TWW_World_Quest_Emissaries"
step
label quest-81650
accept Special Assignment: Titanic Resurgence##81650 |goto Isle of Dorn/0 72.45,30.81
|tip You will accept this quest automatically.
step
talk Stormrook##221535
Select _"(Skyriding) I'll take the reins this time."_ |gossip 121732
_Or_
Select _"You steer, and I'll shoot."_ |gossip 121744
|tip The skyriding option will require you to fly, otherwise you will just need to shoot.
Obtain a Supercharged Stormrook |q 81650/2 |goto Isle of Dorn/0 72.45,30.81
step
kill Eroded Titan Construct##221213 |q 81650/1 |goto Isle of Dorn/0 73.86,30.20
|tip You can find the construct all over this area.
|tip If it was recently killed, it will take a while to respawn.
|tip Avoid large red orbs in the air.
|tip Green orbs will renew your vigor if you are flying.
|tip If Skyriding, Whirling Surge will heal you, Surge Forward will shield you, and Skyward Ascent will deal damage.
|next "TWW_World_Quest_Emissaries"
step
label quest-82355
accept Special Assignment: Cinderbee Surge##82355 |goto Isle of Dorn/0 72.07,37.54
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Amber Honeyslime##222846,Cinderbee Drone##215024,Cinderbee Forager##222976,Persistent Honeyslime##222843
|tip These enemies are elite and may require a group.
Subdue the Cinderbees |q 82355/1 |goto Isle of Dorn/0 72.07,37.54
|next "TWW_World_Quest_Emissaries"
step
label quest-81621
accept Tunnels Be Gone!##81621 |goto Isle of Dorn/0 62.83,44.78
|tip You will accept this quest automatically.
step
use the Explosive Sticks##219284
Destroy the Kobold Tunnel |q 81621/1 |goto Isle of Dorn/0 62.85,44.78 |count 1
step
use the Explosive Sticks##219284
Destroy the Kobold Tunnel |q 81621/1 |goto Isle of Dorn/0 63.54,44.35 |count 2
step
use the Explosive Sticks##219284
Destroy the Kobold Tunnel |q 81621/1 |goto Isle of Dorn/0 64.18,42.96 |count 3
|next "TWW_World_Quest_Emissaries"
step
label quest-81675
accept Water the Sheep##81675 |goto Dornogal/0 57.82,26.40
|tip You will accept this quest automatically.
stickystart "Punt_Pests"
step
clicknpc Parched Mosswool##221413+
use the Globe of Nourishment##219525
|tip Use it on Parched Mosswools around this area.
Water #8# Mosswool Sheep |q 81675/1 |goto Dornogal/0 57.82,26.40
step
label "Punt_Pests"
clicknpc Stone Borer##221425+
|tip They look like small snakes on the ground around this area.
Punt #10# Pests |q 81675/2 |goto Dornogal/0 57.82,26.40
|next "TWW_World_Quest_Emissaries"
step
label quest-81615
accept Wick Points##81615 |goto Isle of Dorn/0 63.48,42.78
|tip You will accept this quest automatically.
step
Kill Candlelit enemies around this area |kill Candlelit Big-Boomer##211546,Candlelit Blind-Hound##218213,Candlelit Lootsnatcher##213197,Candlelit Hexthrower##213685,Candlelit Ouchpatcher##214252
Slay #10# Kobolds |q 81615/1 |goto Isle of Dorn/0 63.48,42.78
|next "TWW_World_Quest_Emissaries"
step
label "TWW_World_Quest_Emissaries"
#include "TWW_World_Quest_Emissaries"
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\The Ringing Deeps World Quests",{
description="This guide will assist you in completing world quests in the The Ringing Deeps.",
condition_valid=function() return completedq(79573) end,
condition_valid_msg="You must complete the \"Surface Bound\" quest in The War Within campaign on at least one character to unlock world quests.",
startlevel=70,
worldquestzone={2214},
patch='110002',
},[[
step
label "Choose_World_Quest"
#include "TWW_Choose_World_Quests"
step
label quest-82653
accept Aggregation of Horrors##82653 |goto The Ringing Deeps/0 60.87,84.53
|tip You will accept this quest automatically.
step
Escort #3# Breakers |q 82653/1 |goto The Ringing Deeps/0 60.87,84.53
|tip Kill enemies around the Point Breaker mobs and escort all 3 of them to the boss.
|tip When 3 of them are channeling, the shield will drop.
|tip A timer indicates the next Skardyn swarm.
step
kill Aggregation of Horrors##220999 |q 82653/2 |goto The Ringing Deeps/0 60.79,87.85
_EVERYONE:_ |grouprole EVERYONE
|tip Move quickly out of dark swirling areas on the ground. |grouprole EVERYONE
_DAMAGE:_ |grouprole DAMAGE
|tip AoE {o}Fractured Skardyn{} following {o}Dark Awakening{} casts. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip {o}Voidquake{} deals heavy damage to everyone within 150 yards of the boss. |grouprole HEALER
_TANK:_ |grouprole TANK
|tip Stay in melee range at all times or {o}Annihilation Barrage{} will deal massive damage to everyone. |grouprole TANK
|tip Pick up {o}Fractured Skardyn{} following {o}Dark Awakening{} casts. |grouprole TANK
|next "TWW_World_Quest_Emissaries"
step
label quest-82552
accept All Worked Up##82552 |goto The Ringing Deeps/0 44.83,16.75
|tip You will accept this quest automatically.
step
click Broken Machinery
|tip They look like pillars shooting fireballs on the ground around this area.
Kill enemies around this area |kill Dogmatic Forgecaster##212884,Dogmatic Machine Speaker##212878,Earthenwork Ironstrider##213951,Dogmatic Soot-Seer##212876,High Speaker's Construct##219635
Thwart the Earthenworks Disruptions |q 82552/1 |goto The Ringing Deeps/0 43.58,19.62
|next "TWW_World_Quest_Emissaries"
step
label quest-82523
accept Candle Kingbreaker##82523 |goto The Ringing Deeps/0 60.21,32.75
|tip You will accept this quest automatically.
step
click Intriguing Scrap+
|tip They look like piles of junk and random objects on the ground around this area.
Kill enemies around this area |kill Waxtail Browbeater##213000,Waxtail Scavenger##212985,Domesticated Candlefly##213960,Waxtail Trapper##212987,Waxtail Outrider##213095
|tip You can also gain a large chunk of progress by flying through the golden rings in the air around this area.
Liberate the Warrens |q 82523/1 |goto The Ringing Deeps/0 60.21,32.75
|next "TWW_World_Quest_Emissaries"
step
label quest-82256
accept Capturing the Cataract's Creatures##82256 |goto The Ringing Deeps/0 48.74,47.58
|tip You will accept this quest automatically.
step
click Cataloger's Disc
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
Ride the Stealthed Cataloger's Disc |q 82256/1 |goto The Ringing Deeps/0 48.74,47.58
step
Take Pictures of Discordance |q 82256/2
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
|next "TWW_World_Quest_Emissaries"
step
label quest-83715
accept Claimed Salvage##83715 |goto The Ringing Deeps/0 53.86,78.10
|tip You will accept this quest automatically.
stickystart "Slay_Goblins"
step
click Salvage Crate##455204+
|tip They look like small crates on the ground around this area.
collect 6 Ancient Titan Salvage##226020 |q 83715/2 |goto The Ringing Deeps/0 53.86,78.10
step
label "Slay_Goblins"
Kill enemies around this area |kill Overworked Cook##220744,Thirsty Salvager##220756,Weary Laborer##224759,Goblin Slain##227374
Slay #12# Goblins |q 83715/1 |goto The Ringing Deeps/0 53.86,78.10
|next "TWW_World_Quest_Emissaries"
step
label quest-81750
accept Cloud Farming##81750 |goto The Ringing Deeps/0 52.78,67.27
|tip You will accept this quest automatically.
step
Farm #30# Clouds |q 81750/2 |goto The Ringing Deeps/0 52.78,67.27
|tip Fly through the rings in the air around this area.
|tip Avoid purple orbs that stall your flight.
|next "TWW_World_Quest_Emissaries"
step
label quest-84429
accept Construct Containment##84429 |goto The Ringing Deeps/0 53.85,40.13
|tip You will accept this quest automatically.
step
kill Lava Laden Crystal Construct##226968 |q 84429/1 |goto The Ringing Deeps/0 53.85,40.13
|tip It runs all over the ruins.
|tip Skyride through it to stun it and use snare effects to keep it slowed as it tries to run.
|tip You can skyride through it until it has 9 stacks of the debuff before engaging.
|tip Use a crowd control effect often to ensure that the stacks do not fall off.
|next "TWW_World_Quest_Emissaries"
step
label quest-82580
accept Courier Mission: Ore Recovery##82580 |goto The Ringing Deeps/0 60.47,63.78
|tip You will accept this quest automatically.
step
click Ore Bucket
Pick Up an Ore Bucket |q 82580/1 |goto The Ringing Deeps/0 60.47,63.78
step
click Taelloch Ore+
|tip They look like sparkling clumps of stone near yellow crystals around this area.
extraaction Stabilize!##451372
|tip Do not use your mount.
|tip Use the ability on-screen to manage your stability.
|tip Initiate the cast within the smallest bar on the spell cast bar to get a speed boost.
|tip If you drop your ore, run around and pick up everything quickly.
Pick Up 10 Ore |havebuff 10 Carrying Ore##450692 |goto The Ringing Deeps/0 63.01,63.18
step
Follow the path up |goto The Ringing Deeps/0 60.99,63.80 < 15 |only if walking
extraaction Stabilize!##451372
|tip Do not use your mount.
|tip Use the ability on-screen to manage your stability.
|tip Initiate the cast within the smallest bar on the spell cast bar to get a speed boost.
|tip If you drop your ore, run around and pick up everything quickly.
Return #10# Ore |q 82580/2 |goto The Ringing Deeps/0 57.35,64.20
|next "TWW_World_Quest_Emissaries"
step
label quest-83930
accept Deworming Solution##83930 |goto The Ringing Deeps/0 54.03,37.98
|tip You will accept this quest automatically.
step
Kill Deeps enemies around this area |kill Deeps Larva##215733,Deeps Spitter##215735
Slay #12# Worms |q 83930/1 |goto The Ringing Deeps/0 54.03,37.98
You can find more inside the mine at [The Ringing Deeps/0 54.38,36.06]
|next "TWW_World_Quest_Emissaries"
step
label quest-83538
accept Excavation Liberation##83538 |goto The Ringing Deeps/0 57.50,87.38
|tip You will accept this quest automatically.
step
kill Invasive Hardhead##219163+
click Earthen Tool+
|tip They look like small pickaxes and hammers on the ground around this area.
|tip They appear on your minimap as yellow dots.
Defeat Hostile Creatures and Retrieve Earthen Tools |q 83538/1 |goto The Ringing Deeps/0 57.50,87.38
|next "TWW_World_Quest_Emissaries"
step
label quest-83537
accept Geothermal Gem Treatment##83537 |goto The Ringing Deeps/0 35.49,16.47
|tip You will accept this quest automatically.
step
Enter the cave |goto The Ringing Deeps/0 36.20,17.91 < 10 |walk
click Dull Gemstone+
|tip They look like large dull gray crystals on the ground inside the cave.
Collect #12# Dull Gems |q 83537/1 |goto The Ringing Deeps/0 35.49,16.47
step
extraaction Heat Treatment##456605
|tip Throw the gem in the lava.
|tip Stand still if a chain appears until the gem treats.
kill Gem-Jammed Slag Bubble##226969
|tip Kill the slag that spawns.
click Heat-treated Gemstone+
|tip They spawn after killing the slag.
Heat Treat #12# Gems |q 83537/2 |goto The Ringing Deeps/0 37.65,19.61
|next "TWW_World_Quest_Emissaries"
step
label quest-82238
accept Lava Glob Lobbin'##82238 |goto The Ringing Deeps/0 50.40,11.50
|tip You will accept this quest automatically.
step
click Cinderbud+
|tip They look like red and green flowers on the ground around this area.
|tip They appear on your minimap as yellow dots.
Destroy #8# Fire Blooms |q 82238/1 |goto The Ringing Deeps/0 50.40,11.50
|next "TWW_World_Quest_Emissaries"
step
label quest-82300
accept Major Malfunction##82300 |goto The Ringing Deeps/0 62.69,58.09
|tip You will accept this quest automatically.
step
clicknpc Haywire Servobot##222535
Defeat Haywire Servobot in a Pet Battle |q 82300/1 |goto The Ringing Deeps/0 62.69,58.09
|next "TWW_World_Quest_Emissaries"
step
label quest-83079
accept Mineral Buildup##83079 |goto The Ringing Deeps/0 43.13,42.54
|tip You will accept this quest automatically.
step
kill 12 Mineral Deposit##225443 |q 83079/1 |goto The Ringing Deeps/0 43.13,42.54
|next "TWW_World_Quest_Emissaries"
step
label quest-81656
accept Nothing to Waste##81656 |goto The Ringing Deeps/0 54.66,52.07
|tip You will accept this quest automatically.
stickystart "Slay_Skardyn"
step
click Abandoned Tools+
|tip They look like small tool boxes on the ground around this area.
collect 6 Mining Tools##219468 |q 81656/2 |goto The Ringing Deeps/0 54.66,52.07
step
label "Slay_Skardyn"
Kill enemies around this area |kill Skardyn Reaver##215842,Skardyn Devastator##215844,Voidstone Behemoth##221307,Skardyn Degenerator##215843,Rampaging Blight##220273
Slay #12# Skardyn |q 81656/1 |goto The Ringing Deeps/0
|next "TWW_World_Quest_Emissaries"
step
label quest-82518
accept Pipe Patcher##82518 |goto The Ringing Deeps/0 44.72,32.30
|tip You will accept this quest automatically.
step
Patch #12# Leaking Pipes |q 82518/1 |goto The Ringing Deeps/0 44.72,32.30
|tip Fly through steaming areas on the pipes to patch them.
|next "TWW_World_Quest_Emissaries"
step
label quest-82293
accept The Power of Friendship##82293 |goto The Ringing Deeps/0 57.42,37.60
|tip You will accept this quest automatically.
step
talk Friendhaver Grem##223444
Select _"Begin pet battle."_ |gossip 122405 |noautogossip
Defeat Friendhaver Grem in a Pet Battle |q 82293/1 |goto The Ringing Deeps/0 57.42,37.60
|next "TWW_World_Quest_Emissaries"
step
label quest-83101
accept Reaching for Resources##83101 |goto The Ringing Deeps/0 51.03,50.83
|tip You will accept this quest automatically.
step
click Climbing Gear
Acquire the Climbing Gear |q 83101/1 |goto The Ringing Deeps/0 51.03,50.83
step
click Handhold
Find a Handhold on the Cliff |q 83101/2 |goto The Ringing Deeps/0 51.45,51.51
step
click Ancient Celestite+
|tip They look like large blue crystals on the rock face..
|tip Click handholds to move up the wall and excavate artifacts from the wall by clicking them.
|tip Avoid blue water running over stones that will lower your grip.
Collect #6# Ancient Celestite |q 83101/3 |goto The Ringing Deeps/0 51.45,51.51
|next "TWW_World_Quest_Emissaries"
step
label quest-82615
accept Reclaiming the Waterworks##82615 |goto The Ringing Deeps/0 40.53,44.97
|tip You will accept this quest automatically.
|polish
stickystart "Slay_Kobolds_82615"
stickystart "Kill_Waterworks_Brutes_82615"
step
click Chest of Dynamite##446357+
|tip They look like small wooden crates on the ground around this area.
|tip They appear on your minimap as yellow dots.
collect 4 Unstable Dynamite##223888 |q 82615
|tip You can also loot them from Kobolds.
step
click Kobold Tunnel+
|tip They look like mounds of dirt all over this area.
|tip They appear on your minimap as yellow dots.
Blow Up #4# Kobold Tunnels |q 82615/3 |goto The Ringing Deeps/0 40.53,44.97
step
label "Slay_Kobolds_82615"
Kill Waterworks enemies around this area |kill Waterworks Gem-snatcher##219789,Waterworks Opportunist##217249
Slay #12# Kobolds |q 82615/1 |goto The Ringing Deeps/0 40.53,44.97
step
label "Kill_Waterworks_Brutes_82615"
kill 4 Waterworks Brute##222979 |q 82615/2 |goto The Ringing Deeps/0 40.53,44.97
|next "TWW_World_Quest_Emissaries"
step
label quest-81767
accept Scrounge that Scrap!##81767 |goto The Ringing Deeps/0 67.28,42.56
|tip You will accept this quest automatically.
step
click Promising Scrap Pile+
|tip They look like large piles of wood, barrels, and tools on the ground around this area.
|tip They appear on your minimap as yellow dots.
Locate #6# Useful Scrap |q 81767/1 |goto The Ringing Deeps/0 67.28,42.56
|next "TWW_World_Quest_Emissaries"
step
label quest-81811
accept Skyrider Racing - Cataract River Cruise##81811 |goto The Ringing Deeps/0 48.31,46.86
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219554
Select _"I'd like to try the course."_ |gossip 121260 |noautogossip
Prepare for the Race |havebuff Race Starting##439261 |goto The Ringing Deeps/0 48.31,46.86 |q 81811
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto The Ringing Deeps/0 48.25,46.98 |q 81811
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81811/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81810
accept Skyrider Racing - Chittering Concourse##81810 |goto The Ringing Deeps/0 63.75,34.80
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219553
Select _"I'd like to try the course."_ |gossip 121257 |noautogossip
Prepare for the Race |havebuff Race Starting##439260 |goto The Ringing Deeps/0 63.75,34.80 |q 81810
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto The Ringing Deeps/0 63.73,34.99 |q 81810
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81810/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81807
accept Skyrider Racing - Earthenworks Weave##81807 |goto The Ringing Deeps/0 36.70,11.31
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219551
Select _"I'd like to try the course."_ |gossip 121251 |noautogossip
Prepare for the Race |havebuff Race Starting##439257 |goto The Ringing Deeps/0 36.70,11.31 |q 81807
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto The Ringing Deeps/0 36.75,11.20 |q 81807
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81807/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81813
accept Skyrider Racing - Opportunity Point Amble##81813 |goto The Ringing Deeps/0 59.40,75.13
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219556
Select _"I'd like to try the course."_ |gossip 121266 |noautogossip
Prepare for the Race |havebuff Race Starting##439263 |goto The Ringing Deeps/0 59.40,75.13 |q 81813
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto The Ringing Deeps/0 59.34,75.06 |q 81813
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81813/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81808
accept Skyrider Racing - Ringing Deeps Ramble##81808 |goto The Ringing Deeps/0 38.06,27.42
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219552
Select _"I'd like to try the course."_ |gossip 121233 |noautogossip
Prepare for the Race |havebuff Race Starting##439258 |goto The Ringing Deeps/0 38.06,27.42 |q 81808
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto The Ringing Deeps/0 38.15,27.77 |q 81808
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81808/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81812
accept Skyrider Racing - Taelloch Twist##81812 |goto The Ringing Deeps/0 62.48,68.68
|tip You will accept this quest automatically.
step
talk Bronze Timekeeper##219555
Select _"I'd like to try the course."_ |gossip 121263 |noautogossip
Prepare for the Race |havebuff Race Starting##439262 |goto The Ringing Deeps/0 62.48,68.68 |q 81812
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto The Ringing Deeps/0 62.46,68.57 |q 81812
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 81812/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-81691
accept Special Assignment: Shadows Below##81691 |goto The Ringing Deeps/0 64.16,52.04
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Shadow-hemmed Fog Beast##221663,Voracious Fog Beast##219446,Coalesced Shadeling##224788,Shadow-seized Loader##223866,Famished Fog Beast##219447,Deathspore Lashroom##221424
collect 15 Radiant Fuel Crystal##219522 |n
|tip Kill enemies and collect fuel crystals to refuel the drills.
|tip Each drill requires at least 5 crystals.
clicknpc Trapped Emergency Militia##223938+
|tip They look like NPCs trapped in shadow puddles.
|tip Grab them and run away, then collect the crystal they leave behind.
collect Radiant Fuel Shard##224292 |n
use the Radiant Fuel Shard##224292
|tip Combine 3 smaller crystals into a radiant crystal.
Refuel #3# Drills |q 81691/2 |goto The Ringing Deeps/0 64.16,52.04
step
click Shadowseam |goto The Ringing Deeps/0 64.00,52.12
Teleport to Droughung |goto The Ringing Deeps/0 64.00,48.73 < 10 |c |noway |q 81691
step
kill Droghung##221316 |q 81691/3 |goto The Ringing Deeps/0 63.29,48.14
|tip Inside the cave.
|tip Don't stand in front of "Dread Fumes."
|tip Interrupt "Suffocating Smog."
step
click Portal to the Surface |goto The Ringing Deeps/0 63.02,48.54
Return to the Surface |goto The Ringing Deeps/0 64.10,52.14 < 10 |c |noway
|next "TWW_World_Quest_Emissaries"
step
label quest-83229
accept Special Assignment: When the Deeps Stir##83229 |goto The Ringing Deeps/0 48.08,10.78
|tip You will accept this quest automatically.
step
kill Awakened Flamecoil Serpent##225895
Defeat the Awakened Elemental |q 83229/1 |goto The Ringing Deeps/0 46.07,11.89 |count 1 hidden
|tip It appears on your minimap as a yellow dot.
|tip This is a boss enemy and may require a group.
step
kill Awakened Volcanic Fury##225896
Defeat the Awakened Elemental |q 83229/1 |goto The Ringing Deeps/0 45.41,9.64 |count 2 hidden
|tip It appears on your minimap as a yellow dot.
|tip This is a boss enemy and may require a group.
step
kill Awakened Colossus##225898
Defeat the Awakened Elemental |q 83229/1 |goto The Ringing Deeps/0 48.91,16.50 |count 3 hidden
|tip It appears on your minimap as a yellow dot.
|tip This is a boss enemy and may require a group.
step
kill Awakened Sulfuric Devastator##225894
Defeat the Awakened Elemental |q 83229/1 |goto The Ringing Deeps/0 52.58,10.06 |count 4 hidden
|tip It appears on your minimap as a yellow dot.
|tip This is a boss enemy and may require a group.
|next "TWW_World_Quest_Emissaries"
step
label quest-83080
accept Taelloch Cleanup##83080 |goto The Ringing Deeps/0 60.99,57.97
|tip You will accept this quest automatically.
step
click Earthen Memory Gem Fragment+
|tip They look like small pieces of gems on the ground around this area.
kill Voidtouched Speaker##223469,Cursed Miner##213565,Skardyn Husk##213566,Unstable Skardyn##223414,Corrupted Spellshaper##219302
Kill Skardyn and Collect Earthen Memory Gems |q 83080/1 |goto The Ringing Deeps/0 60.99,57.97
|next "TWW_World_Quest_Emissaries"
step
label quest-83028
accept Thieving Snufflers##83028 |goto The Ringing Deeps/0 48.55,34.90
|tip You will accept this quest automatically.
stickystart "Kill_Sweetsnuffler"
step
clicknpc Pilfered Cinderbrew##225339+
|tip They look like large pots with liquid overflowing on the ground around this area.
Recover #6# Pilfered Cinderbrew |q 83028/1 |goto The Ringing Deeps/0 48.55,34.90
step
label "Kill_Sweetsnuffler"
kill 12 Sweetsnuffler##219799 |q 83028/2 |goto The Ringing Deeps/0 48.55,34.90
|next "TWW_World_Quest_Emissaries"
step
label quest-83048
accept Wayward Walkers##83048 |goto The Ringing Deeps/0 39.63,36.86
|tip You will accept this quest automatically.
step
clicknpc Lost Cogwalker##225375+
|tip They look like small walking robots around this area.
Return #8# Lost Cogwalkers |q 83048/1 |goto The Ringing Deeps/0 39.63,36.86
|next "TWW_World_Quest_Emissaries"
step
label quest-82519
accept You Go Take Candle##82519 |goto The Ringing Deeps/0 54.56,24.99
|tip You will accept this quest automatically.
step
click Flickerflame Candles##411755+
|tip They look like large bundles of candles on the ground around this area.
Kill Flickerflame enemies around this area |kill Flickerflame Sticker##212629,Flickerflame Candlekeeper##212524,Flickerflame Scrabbler##212515,Flickerflame Geomancer##212528,Flickerflame Enforcer##212548,Flickerflame Overseer##212542
collect 12 Flickerflame Candle##210878 |q 82519/1 |goto The Ringing Deeps/0 54.56,24.99
|next "TWW_World_Quest_Emissaries"
step
label "TWW_World_Quest_Emissaries"
#include "TWW_World_Quest_Emissaries"
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\Siren Isle World Quests",{
description="This guide will assist you in completing world quests in the Siren Isle.",
condition_valid=function() return completedq(84725) end,
condition_valid_msg="You must complete \"The Circlet Calls\" quest in the Siren Isle guide to unlock world quests.",
startlevel=80,
worldquestzone={2369},
patch='110007',
},[[
step
label "Choose_World_Quest"
#include "TWW_Choose_World_Quests"
step
label quest-84852
accept Legacy of the Vrykul##84852 |goto Siren Isle/0 52.98,54.92
|tip You will accept this quest automatically.
step
Complete Activies and Secure the Siren Isle |q 84852/1 |goto Siren Isle/0 52.98,54.92
|tip Complete various activities and kill enemies all over Siren Isle.
|next "TWW_World_Quest_Emissaries"
step
label quest-84850
accept Serpent's Wrath##84850 |goto Siren Isle/0 52.98,54.92
|tip You will accept this quest automatically.
step
Complete Activies and Secure the Siren Isle |q 84850/1 |goto Siren Isle/0 52.98,54.92
|tip Complete various activities and kill enemies all over Siren Isle.
|next "TWW_World_Quest_Emissaries"
step
label quest-85113
accept Special Assignment: Storm's a Brewin##85113 |goto Siren Isle/0 69.07,49.24
|tip You will accept this quest automatically.
step
talk Suzie Boltwrench##227815
Select _"I'll defend the camp during the storm."_ |gossip 123657
Speak with Suzie to Await the Storm |q 85113/1 |goto Siren Isle/0 69.07,49.24
step
click Crawler Mine##228505
|tip This give you an ability that summons a crawler mine to attack your target.
click Special Delivery
|tip This gives you a 10 second cooldown ability that bombs a target for 800k fire damage.
Use the Equipment Provided |q 85113/2 |goto Siren Isle/0 69.48,48.71
step
extraaction Command Mine##470564 |only if hasbuff(470543)
extraaction Ricket's Special Delivery##471522 |only if hasbuff(467787)
kill Seafury Spiker##227625, Storm-Touched Clawfiend##227569, Shadowtide Watcher##231280
Eliminate the Storm Threats |q 85113/3 |goto Siren Isle/0 61.20,49.00
step
talk Suzie Boltwrench##228469
turnin Special Assignment: Storm's a Brewin##85113 |goto Siren Isle/0 69.24,49.26
step
talk Suzie Boltwrench##228469
Select _"Let's get out of this storm!"_ |gossip 125326
Leave the Seafury Tempest |nobuff Seafury Tempest##458069 |goto Siren Isle/0 69.24,49.26
|next "TWW_World_Quest_Emissaries"
step
label quest-84851
accept Tides of Greed##84851 |goto Siren Isle/0 52.98,54.92
|tip You will accept this quest automatically.
step
Complete Activies and Secure the Siren Isle |q 84851/1 |goto Siren Isle/0 52.98,54.92
|tip Complete various activities and kill enemies all over Siren Isle.
|next "TWW_World_Quest_Emissaries"
step
label "TWW_World_Quest_Emissaries"
#include "TWW_World_Quest_Emissaries"
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\Undermine World Quests",{
description="This guide will assist you in completing world quests in Undermine.",
startlevel=80,
worldquestzone={2346},
patch='110100',
},[[
step
label "Choose_World_Quest"
#include "TWW_Choose_World_Quests"
step
label quest-86952
accept Approach the Croach##86952 |goto Undermine/0 32.11,82.21
|tip You will accept this quest automatically.
step
talk Creech##237718
Select _"Begin pet battle."_ |gossip 131878 |noautogossip
Defeat Creech in a Pet Battle |q 86952/1 |goto Undermine/0 32.11,82.21
|next "TWW_World_Quest_Emissaries"
step
label quest-85497
accept Blown a Gasket##85497 |goto Undermine/0 29.70,63.40
|tip You will accept this quest automatically.
step
click Leaky Gasket+
|tip They look like wheel valves with water leaking from them.
|tip You will be attacked by a slime.
Repair #8# Leaky Gaskets |q 85497/1 |goto Undermine/0 29.70,63.40
|next "TWW_World_Quest_Emissaries"
step
label quest-85398
accept Bomb Voyage!##85398 |goto Undermine/0 62.89,13.04
|tip You will accept this quest automatically.
stickystart "Slay_Darkfuse_85398"
step
click Black Blood Reservoir+
|tip They look like small crates on the ground around this area.
click Black Blood Cannister+
|tip They look like large cannisters on the ground around this area.
Destroy #6# Black Blood Containers |q 85398/1 |goto Undermine/0 62.89,13.04
step
label "Slay_Darkfuse_85398"
kill 6 Darkfuse Smuggler##232777 |q 85398/2 |goto Undermine/0 62.89,13.04
|next "TWW_World_Quest_Emissaries"
step
label quest-85519
accept Boom and Burst##85519 |goto Undermine/0 62.29,79.07
|tip You will accept this quest automatically.
step
clicknpc Worn-Down Flyer##232962
extraaction J-16 Buster Rocket##469281
|tip Shoot rockets at the Flyers to bring them down into parts.
click Salvage Part+
|tip These appear on the ground after you shoot down a Flyer.
collect 15 New-To-You Mechanical Parts##231889 |q 85519/1 |goto Undermine/0 62.29,79.07
|next "TWW_World_Quest_Emissaries"
step
label quest-85269
accept Boom Balloon##85269 |goto Undermine/0 37.60,33.70
|tip You will accept this quest automatically.
step
click Rooftop Teleporter
Use the Rooftop Teleporter |q 85269/1 |goto Undermine/0 37.60,33.70
step
click Party Bazooka##232787
Take the Party Bazooka |q 85269/2 |goto Undermine/0 37.87,34.51
step
Burst #10# Rogue Balloons |q 85269/3 |goto Undermine/0 37.87,34.51
|tip Use the ability on your vehicle bar on the balloons in front of you.
|tip Aim middle to low on the mines to blow them up.
|next "TWW_World_Quest_Emissaries"
step
label quest-85263
accept Boomball##85263 |goto Undermine/0 70.90,64.42
|tip You will accept this quest automatically.
step
click Boomball##236355
|tip Hit a ball using one of the three short/medium/long range abilities on your bar to a nearby hole indicated by yellow arrows.
|tip Keep in mind the ball will roll and be less accurate the longer you drive it.
|tip You can lighly steer the ball when it lands.
|tip Hit to the hole southwest of here.
Score a Hole in One |q 85263/1 |goto Undermine/0 68.87,61.80 |count 1 hidden
step
click Boomball##236355
|tip Hit a ball using one of the three short/medium/long range abilities on your bar to a nearby hole indicated by yellow arrows.
|tip Keep in mind the ball will roll and be less accurate the longer you drive it.
|tip You can lighly steer the ball when it lands.
|tip Hit to the hole southeast of here.
Score a Hole in One |q 85263/1 |goto Undermine/0 70.34,57.95 |count 2 hidden
step
click Boomball##236355
|tip Hit a ball using one of the three short/medium/long range abilities on your bar to a nearby hole indicated by yellow arrows.
|tip Keep in mind the ball will roll and be less accurate the longer you drive it.
|tip You can lighly steer the ball when it lands.
|tip Hit to the hole southwest of here.
Score a Hole in One |q 85263/1 |goto Undermine/0 70.71,65.90 |count 3 hidden
step
click Boomball##236355
|tip Hit a ball using one of the three short/medium/long range abilities on your bar to a nearby hole indicated by yellow arrows.
|tip Keep in mind the ball will roll and be less accurate the longer you drive it.
|tip You can lighly steer the ball when it lands.
|tip Hit to the hole southwest of here.
Score a Hole in One |q 85263/1 |goto Undermine/0 74.95,71.84 |count 4 hidden
|next "TWW_World_Quest_Emissaries"
step
label quest-85925
accept Breakneck Racing - Breakneck Bolt##85925 |goto Undermine/0 26.16,52.97
|tip You will accept this quest automatically.
step
talk Grimy Timekeeper##233918
Select _"I'd like to try the course."_ |gossip 125495 |noautogossip
Prepare for the Race |havebuff Race Starting##471625 |goto Undermine/0 26.16,52.97 |q 85925
|tip Follow the indicated path, driving through rings and any wind gusts you see.
|tip Use your "Boost" ability frequently to maintain a swift pace.
|tip Hold the spacebar around corners to drift and regain turbo charge.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Undermine/0 26.02,52.99 |q 85925
|tip This will take about 5 seconds.
|tip Follow the indicated path, driving through rings and any wind gusts you see.
|tip Use your "Boost" ability frequently to maintain a swift pace.
|tip Hold the spacebar around corners to drift and regain turbo charge.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 85925/1
|tip Follow the indicated path, driving through rings and any wind gusts you see.
|tip Use your "Boost" ability frequently to maintain a swift pace.
|tip Hold the spacebar around corners to drift and regain turbo charge.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-85927
accept Breakneck Racing - Casino Cruise##85927 |goto Undermine/0 39.47,53.88
|tip You will accept this quest automatically.
step
talk Grimy Timekeeper##233918
Select _"I'd like to try the course."_ |gossip 125497 |noautogossip
Prepare for the Race |havebuff Race Starting##471629 |goto Undermine/0 39.47,53.88 |q 85927
|tip Follow the indicated path, driving through rings and any wind gusts you see.
|tip Use your "Boost" ability frequently to maintain a swift pace.
|tip Hold the spacebar around corners to drift and regain turbo charge.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Undermine/0 39.57,53.71 |q 85927
|tip This will take about 5 seconds.
|tip Follow the indicated path, driving through rings and any wind gusts you see.
|tip Use your "Boost" ability frequently to maintain a swift pace.
|tip Hold the spacebar around corners to drift and regain turbo charge.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 85927/1
|tip Follow the indicated path, driving through rings and any wind gusts you see.
|tip Use your "Boost" ability frequently to maintain a swift pace.
|tip Hold the spacebar around corners to drift and regain turbo charge.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-85926
accept Breakneck Racing - Junkyard Jaunt##85926 |goto Undermine/0 43.46,78.06
|tip You will accept this quest automatically.
step
talk Grimy Timekeeper##233918
Select _"I'd like to try the course."_ |gossip 125495 |noautogossip
Prepare for the Race |havebuff Race Starting##471627 |goto Undermine/0 43.46,78.06 |q 85926
|tip Follow the indicated path, driving through rings and any wind gusts you see.
|tip Use your "Boost" ability frequently to maintain a swift pace.
|tip Hold the spacebar around corners to drift and regain turbo charge.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Undermine/0 43.69,78.00 |q 85926
|tip This will take about 5 seconds.
|tip Follow the indicated path, driving through rings and any wind gusts you see.
|tip Use your "Boost" ability frequently to maintain a swift pace.
|tip Hold the spacebar around corners to drift and regain turbo charge.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 85926/1
|tip Follow the indicated path, driving through rings and any wind gusts you see.
|tip Use your "Boost" ability frequently to maintain a swift pace.
|tip Hold the spacebar around corners to drift and regain turbo charge.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-85928
accept Breakneck Racing - Sandy Scuttle##85928 |goto Undermine/0 47.62,43.88
|tip You will accept this quest automatically.
step
talk Grimy Timekeeper##233920
Select _"I'd like to try the course."_ |gossip 125499 |noautogossip
Prepare for the Race |havebuff Race Starting##471631 |goto Undermine/0 47.62,43.88 |q 85928
|tip Follow the indicated path, driving through rings and any wind gusts you see.
|tip Use your "Boost" ability frequently to maintain a swift pace.
|tip Hold the spacebar around corners to drift and regain turbo charge.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Undermine/0 47.60,44.26 |q 85928
|tip This will take about 5 seconds.
|tip Follow the indicated path, driving through rings and any wind gusts you see.
|tip Use your "Boost" ability frequently to maintain a swift pace.
|tip Hold the spacebar around corners to drift and regain turbo charge.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 85928/1
|tip Follow the indicated path, driving through rings and any wind gusts you see.
|tip Use your "Boost" ability frequently to maintain a swift pace.
|tip Hold the spacebar around corners to drift and regain turbo charge.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-85527
accept Buccaneer Bonzai##85527 |goto Undermine/0 67.38,72.58
|tip You will accept this quest automatically.
step
clicknpc Mighty Steed##236264
Mount the "Mighty Steed" |q 85527/1 |goto Undermine/0 67.38,72.58
stickystart "Drop_Stink_Bombs_on_Bloodsail_Buccaneers"
step
Ram the "Mighty Steed" Into #10# Boats |q 85527/2 |goto Undermine/0 67.84,74.76
step
label "Drop_Stink_Bombs_on_Bloodsail_Buccaneers"
extraaction Drop Stink Bomb##1216136
Drop #12# Stink Bombs on "Bloodsail Buccaneers" |q 85527/3 |goto Undermine/0 67.84,74.76
|next "TWW_World_Quest_Emissaries"
step
label quest-85399
accept Caddyshock##85399 |goto Undermine/0 71.70,65.73
|tip You will accept this quest automatically.
|tip You may need to complete the {o}Boomball{} world quest and relog before you can accept this one.
step
clicknpc Berserk Caddy-Matic##233643+
extraaction Golf Fling##471256
|tip It appears as a button on your screen when you are not mounted.
|tip Use it on the Berserk Caddy-Matics.
Knock Down #8# Berserk Caddies |q 85399/1 |goto Undermine/0 71.70,65.73
|next "TWW_World_Quest_Emissaries"
step
label quest-85428
accept Code Violations##85428 |goto Undermine/0 31.49,28.25
|tip You will accept this quest automatically.
step
use the S4F3-T Inspectors##232989
Equip the S4F3-T Inspectors |q 85428/1 |goto Undermine/0 31.49,28.25
step
kill Well-Fed Croach##234253+
extraaction S4F3-T Inspection##472748
|tip Use the ability on the screen on red areas around Hovel Hill.
Identify Building Code Violations and Slay Pests |q 85428/2 |goto Undermine/0 31.49,28.25
|next "TWW_World_Quest_Emissaries"
step
label quest-84955
accept Contraband Banned##84955 |goto Undermine/0 19.87,50.98
|tip You will accept this quest automatically.
step
click Questionable Crate+
|tip They look like small metal and wood crates on the ground inside Slam Central Station.
|tip You will be attacked when you click a crate.
Search #6# Questionable Crates |q 84955/1 |goto Undermine/0 19.87,50.98
|next "TWW_World_Quest_Emissaries"
step
label quest-84948
accept Contract Work##84948 |goto Undermine/0 42.90,52.31
|tip You will accept this quest automatically.
step
talk Kaydee Racketring##231049
|tip Inside the building.
Select _"I'm ready to sign a contract."_ |gossip 124652
|tip Choose the faction you would like to align with for the week.
|tip This decision affects your warband.
Sign an Undermine cartel Contract |q 84948/1 |goto Undermine/0 42.90,52.31
|next "TWW_World_Quest_Emissaries"
step
label quest-85524
accept Disarming the Darkfuse##85524 |goto Undermine/0 49.19,36.24
|tip You will accept this quest automatically.
step
Kill Darkfuse enemies around this area |kill Darkfuse Harasser##225853, Darkfuse Oppressor##225854, Darkfuse Enforcer##225851
Slay the Darkfuse |q 85524/1 |goto Undermine/0 49.19,36.24
|next "TWW_World_Quest_Emissaries"
step
label quest-86943
accept Drilling Down##86943 |goto Undermine/0 55.14,69.71
|tip You will accept this quest automatically.
step
clicknpc Precision Powerdrill##237701
Defeat the Precision Powerdrill in a Pet Battle |q 86943/1 |goto Undermine/0 55.14,69.71
|next "TWW_World_Quest_Emissaries"
step
label quest-85467
accept Dumpster Fire##85467 |goto Undermine/0 62.34,83.05
|tip You will accept this quest automatically.
step
click Emergency Supplies
|tip They look like small crates on the ground around this area.
Retrieve the Emergency Supplies |q 85467/1 |goto Undermine/0 62.34,83.05
step
extraaction Water Cannon##1217725
|tip Use it on burning dumpsters around this area.
Extinguish #8# Dumpster Fires |q 85467/2 |goto Undermine/0 62.34,83.05
|next "TWW_World_Quest_Emissaries"
step
label quest-84994
accept Evidence of Effect##84994 |goto Undermine/0 46.05,51.77
|tip You will accept this quest automatically.
step
click Rocketboard
Ride the Rocketboard |q 84994/1 |goto Undermine/0 46.05,51.77
step
Take Pictures of Anomalies |q 84994/2
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the anomalies.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of anomalies right when they're surrounded by light will result in better quality pictures.
|next "TWW_World_Quest_Emissaries"
step
label quest-85427
accept Explosive Expiration##85427 |goto Undermine/0 58.04,89.15
|tip You will accept this quest automatically.
step
clicknpc Bilgewater Defuser##234175
Activate the Bilgewater Defuser |q 85427/1 |goto Undermine/0 58.04,89.15
step
Defuse the Expired Bomb |q 85427/2 |goto Undermine/0 57.59,89.99 |count 1
|tip Use the ability on your vehicle bar that matches to bomb color that appears.
|tip Keep matching colors until you defuse it.
step
Defuse the Expired Bomb |q 85427/2 |goto Undermine/0 57.21,89.17 |count 2
|tip Use the ability on your vehicle bar that matches to bomb color that appears.
|tip Keep matching colors until you defuse it.
step
Defuse the Expired Bomb |q 85427/2 |goto Undermine/0 56.58,89.11 |count 3
|tip Use the ability on your vehicle bar that matches to bomb color that appears.
|tip Keep matching colors until you defuse it.
step
Defuse the Expired Bomb |q 85427/2 |goto Undermine/0 55.99,89.99 |count 4
|tip Use the ability on your vehicle bar that matches to bomb color that appears.
|tip Keep matching colors until you defuse it.
|next "TWW_World_Quest_Emissaries"
step
label quest-85473
accept Extra! Extra!##85473 |goto Undermine/0 40.03,84.70
|tip You will accept this quest automatically.
step
clicknpc Uninformed Citizen##233280
extraaction Deliver Newspaper##470139
|tip Use the button on the screen on Uninformed Citizens around this area.
|tip Some of them will attack you.
Deliver #12# Newspapers |q 85473/1 |goto Undermine/0 40.03,84.70
|next "TWW_World_Quest_Emissaries"
step
label quest-85498
accept Firework It##85498 |goto Undermine/0 51.46,47.56
|tip You will accept this quest automatically.
step
click Leftover Fireworks
Pick Up the Fireworks |invehicle |goto Undermine/0 51.46,47.56 |q 85498
step
kill 12 Malfunctioning Drone##233032 |q 85498/1 |goto Undermine/0 51.46,47.56
|tip Use the ability on your vehicle bar to attack the drones in the air.
step
Put Down the Fireworks |outvehicle |script VehicleExit()
|next "TWW_World_Quest_Emissaries"
step
label quest-84971
accept For Love of Grog##84971 |goto Undermine/0 39.16,85.82
|tip You will accept this quest automatically.
step
kill Acidic Salvage##225430,kill Cuisine Competitor##240060
collect 30 Citrus Acid##229407 |q 84971/1 |goto Undermine/0 39.16,85.82
|next "TWW_World_Quest_Emissaries"
step
label quest-85500
accept Hazardous Waste##85500 |goto Undermine/0 63.49,26.26
|tip You will accept this quest automatically.
stickystart "Collect_Electro-Glands"
step
click Depleted Hotrod Battery+
|tip They look like small battery cells around and in the water.
collect 10 Depleted Hotrod Battery##232054 |q 85500/2 |goto Undermine/0 63.49,26.26
step
label "Collect_Electro-Glands"
kill Marina Zapper##227645+
collect 6 Electro-Gland##232053 |q 85500/2 |goto Undermine/0 63.49,26.26
|next "TWW_World_Quest_Emissaries"
step
label quest-85396
accept Heaps o' Scrap##85396 |goto Undermine/0 60.10,81.31
|tip You will accept this quest automatically.
step
kill Worn Scrapbot##232468,Scrap Harvester##232469
click Junk Pile+
|tip They look like piles of trash on the ground around this area.
use the Goblin Grapnel##231164
|tip Use it on harvesters to pull them close.
Collect #100# Bits o' Scrap |q 85396/1 |goto Undermine/0 60.10,81.31
|next "TWW_World_Quest_Emissaries"
step
label quest-85466
accept Hob or Cold##85466 |goto Undermine/0 47.39,61.46
|tip You will accept this quest automatically.
step
talk Inspector Dugg##235867
Select _"Let's go."_ |gossip 131512
Speak to Inspector Dugg |q 85466/1 |goto Undermine/0 47.39,61.46
step
extraaction Locate Too-Safe Equipment##1215286
|tip Follow the spark that appears periodically.
|tip The ring on the screen will fill up the closer you get to the equipment.
Locate #3# Too-Safe Equipment |q 85466/2 |goto Undermine/0 46.94,61.73
|next "TWW_World_Quest_Emissaries"
step
label quest-85514
accept If They're Not Using It...##85514 |goto Undermine/0 51.80,51.09
|tip You will accept this quest automatically.
step
click Waiting Garbage Can+
|tip They look like small metal trash cans around buildings.
collect 20 Trash##231899 |q 85514/1 |goto Undermine/0 51.80,51.09
|next "TWW_World_Quest_Emissaries"
step
label quest-85402
accept In The Heights##85402 |goto Undermine/0 49.35,49.21
|tip You will accept this quest automatically.
step
Enter Pleasant Heights |goto Undermine/0 49.35,49.21 < 10 |only if walking
click Blackwater Timeshare Poster
|tip NPCs nearby will attack you.
Place the Blackwater Timeshare Poster |q 85402/1 |goto Undermine/0 51.41,48.67 |count 1 hidden
step
click Blackwater Timeshare Poster
|tip NPCs nearby will attack you.
Place the Blackwater Timeshare Poster |q 85402/1 |goto Undermine/0 54.17,51.39 |count 2 hidden
step
click Blackwater Timeshare Poster
|tip NPCs nearby will attack you.
Place the Blackwater Timeshare Poster |q 85402/1 |goto Undermine/0 53.68,52.18 |count 3 hidden
step
click Blackwater Timeshare Poster
|tip NPCs nearby will attack you.
Place the Blackwater Timeshare Poster |q 85402/1 |goto Undermine/0 52.80,53.37 |count 4 hidden
step
click Blackwater Timeshare Poster
|tip NPCs nearby will attack you.
Place the Blackwater Timeshare Poster |q 85402/1 |goto Undermine/0 51.96,54.22 |count 5 hidden
step
click Blackwater Timeshare Poster
|tip NPCs nearby will attack you.
Place the Blackwater Timeshare Poster |q 85402/1 |goto Undermine/0 51.41,53.79 |count 6 hidden
step
click Blackwater Timeshare Poster
|tip NPCs nearby will attack you.
Place the Blackwater Timeshare Poster |q 85402/1 |goto Undermine/0 50.50,53.59 |count 7 hidden
step
click Blackwater Timeshare Poster
|tip NPCs nearby will attack you.
Place the Blackwater Timeshare Poster |q 85402/1 |goto Undermine/0 51.67,55.90 |count 8 hidden
|next "TWW_World_Quest_Emissaries"
step
label quest-85472
accept It's Free Reagents!##85472 |goto Undermine/0 53.85,88.38
|tip You will accept this quest automatically.
step
talk Steamwheedle Alchemist##232851
Select _"I am ready to begin!"_ |gossip 125012
Speak to the Steamwheedle Alchemist |q 85472/1 |goto Undermine/0 53.85,88.38
step
Alchemize a Junkyard Brew |q 85472/2 |goto Undermine/0 54.01,88.19
|tip Watch the chat window and click the nearby material that the alchemist indicates.
|next "TWW_World_Quest_Emissaries"
step
label quest-84929
accept Lifeguard On Duty##84929 |goto Undermine/0 64.14,26.32
|tip You will accept this quest automatically.
step
extraaction Emergency Pool Pony##465122
clicknpc Struggling Swimmer##231016+
Aid #8# Struggling Swimmers |q 84929/1 |goto Undermine/0 64.14,26.32
|next "TWW_World_Quest_Emissaries"
step
label quest-86949
accept Loyal Crewmates##86949 |goto Undermine/0 59.60,27.26
|tip You will accept this quest automatically.
step
talk Prezly Wavecutter##237712
Select _"Begin pet battle."_ |gossip 131877 |noautogossip
Defeat Prezly Wavecutter in a Pet Battle |q 86949/1 |goto Undermine/0 59.60,27.26
|next "TWW_World_Quest_Emissaries"
step
label quest-85088
accept The Main Event##85088 |goto Undermine/0 50.11,18.34
|tip You will accept this quest automatically.
step
kill The Gobfather##231821 |q 85088/1 |goto Undermine/0 50.11,18.34
_EVERYONE:_ |grouprole EVERYONE
|tip Avoid stepping in {o}Primed Boomcallers{}. |grouprole EVERYONE
|tip Avoid standing in {o}Death from Above{} missiles at 100 energy. |grouprole EVERYONE
|tip Avoid standing in front of the boss. |grouprole EVERYONE
_HEALER:_ |grouprole HEALER
|tip All players will take consistent damage from {o}Excessive Pollutants{}. |grouprole HEALER
|next "TWW_World_Quest_Emissaries"
step
label quest-85499
accept One Goblin's Trash##85499 |goto Undermine/0 70.90,64.42
|tip You will accept this quest automatically.
step
click Defunct Boomball##233068+
|tip They look like half-buried mines on the ground around this area.
|tip Run them back to Ripsnoodle.
|tip Mounting will cause you to lose the Boomball.
|tip You can only carry one at time.
Return #8# Boomballs to Ripsnoodle |q 85499/1 |goto Undermine/0 70.90,64.42
Return them to [Undermine/0 65.28,59.92]
|next "TWW_World_Quest_Emissaries"
step
label quest-84995
accept Pictures! Pictures of Undermine!##84995 |goto Undermine/0 42.06,54.44
|tip You will accept this quest automatically.
step
click Rocketboard
Ride the Rocketboard |q 84995/1 |goto Undermine/0 42.06,54.44
step
Take Pictures of Celebs! |q 84995/2
|tip Use the "Catalog" ability on your vehicle bar to take pictures of the anomalies.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of anomalies right when they're surrounded by light will result in better quality pictures.
|next "TWW_World_Quest_Emissaries"
step
label quest-85268
accept Pow-Arr Wash Simulator##85268 |goto Undermine/0 65.47,12.70
|tip You will accept this quest automatically.
step
clicknpc Water Cannon##232293
Enter the Water Cannon |q 85268/1 |goto Undermine/0 65.47,12.70
step
Clean the Oily Octopus |q 85268/2 |goto Undermine/0 65.47,12.70
|tip Use the ability on your vehicle bar to shoot the barnacles off the ship.
|tip The ability toggles, so you can turn it on and just aim.
|next "TWW_World_Quest_Emissaries"
step
label quest-85474
accept Rat Pack Attack##85474 |goto Undermine/0 30.07,59.31
|tip You will accept this quest automatically.
step
click Trash Pile+
|tip They look like piles of garbage on the ground around this area.
Kill Litter Nibbler enemies around this area |kill Littler Litter Nibbler##230612,kill Litter Nibbler##230611
Slay #12# Litter Nibblers |q 85474/1 |goto Undermine/0 30.07,59.31
|next "TWW_World_Quest_Emissaries"
step
label quest-85528
accept Recrewtment##85528 |goto Undermine/0 33.13,40.21
|tip You will accept this quest automatically.
step
click Blackwater Free Trial##236603+
|tip They look like small crates with propellers on top of them.
Offer #8# Blackwater Free Trials |q 85528/1 |goto Undermine/0 33.13,40.21
|next "TWW_World_Quest_Emissaries"
step
label quest-85400
accept Reduce, Re-ooze, Recycle##85400 |goto Undermine/0 36.03,73.61
|tip You will accept this quest automatically.
step
kill Oozing Barrel##234407+
|tip You can find them near ooze pools around this area.
Break #8# Oozing Barrels |q 85400/1 |goto Undermine/0 36.03,73.61
|next "TWW_World_Quest_Emissaries"
step
label quest-85512
accept Rooting Out Counterfeits##85512 |goto Undermine/0 33.20,68.14
|tip You will accept this quest automatically.
stickystart "Kill_Counterfeit_Potion-Makers"
step
click Knock-Off Potion+
|tip They look like large fuming cauldrons on the ground around this area.
Destroy #3# Knock-off Potions |q 85512/1 |goto Undermine/0 33.20,68.14
step
label "Kill_Counterfeit_Potion-Makers"
talk Suspicious Potion-maker##232992
Select _"<Accuse of counterfeiting potions.>"_ |gossip 125098
|tip They will attack you.
kill 8 Counterfeit Potion-Maker##232991 |q 85512/2 |goto Undermine/0 33.20,68.14
|tip You can also spawn them by clicking cauldrons.
|next "TWW_World_Quest_Emissaries"
step
label quest-85518
accept Scalper Scum##85518 |goto Undermine/0 50.39,28.12
|tip You will accept this quest automatically.
stickystart "Disperse_Scalpers"
step
click Resold Goods+
|tip They look like small crates on the ground around this area.
|tip Clicking them will cause nearby scalpers to attack you.
collect 6 Resold Goods##232922 |q 85518/2 |goto Undermine/0 50.04,27.49
step
label "Disperse_Scalpers"
kill Demolition Scalper##234122
Disperse #8# Scalpers |q 85518/1 |goto Undermine/0 50.39,28.12
|next "TWW_World_Quest_Emissaries"
step
label quest-85526
accept Scum Bag##85526 |goto Undermine/0 41.47,64.10
|tip You will accept this quest automatically.
step
click Venture Slimetanker##235793
Activate the Venture Slimetanker |q 85526/1 |goto Undermine/0 41.47,64.10
step
kill Escaped Slime##235809+
|tip Use the ability on your vehicle bar to kill slimes around the area.
|tip Use the {o}Vacuum Slime{} ability on your vehicle bar after you kill them.
Contain the Slime |q 85526/2 |goto Undermine/0 39.12,64.62
|next "TWW_World_Quest_Emissaries"
step
label quest-85105
accept Skyrider Racing - The Heaps Leap##85105 |goto Undermine/0 33.78,76.22
|tip You will accept this quest automatically.
step
talk Grimy Timekeeper##231879
Select _"I'd like to try the course."_ |gossip 124702 |noautogossip
Prepare for the Race |havebuff Race Starting##466624 |goto Undermine/0 33.78,76.22 |q 85105
|tip Follow the indicated path, flying through rings.
|tip Use the "Flail Arms" ability to slow down for sharp turns.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Undermine/0 33.55,76.50 |q 85105
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings.
|tip Use the "Flail Arms" ability to slow down for sharp turns.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 85105/1
|tip Follow the indicated path, flying through rings.
|tip Use the "Flail Arms" ability to slow down for sharp turns.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-85106
accept Skyrider Racing - Scrapshop Shot##85106 |goto Undermine/0 39.22,11.36
|tip You will accept this quest automatically.
step
talk Grimy Timekeeper##231893
|tip Click the rope ladder on the building.
Select _"I'd like to try the course."_ |gossip 124679 |noautogossip
Prepare for the Race |havebuff Race Starting##466629 |goto Undermine/0 39.22,11.36 |q 85106
|tip Follow the indicated path, flying through rings.
|tip Use the "Flail Arms" ability to slow down for sharp turns.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Undermine/0 39.28,11.65 |q 85106
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings.
|tip Use the "Flail Arms" ability to slow down for sharp turns.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 85106/1
|tip Follow the indicated path, flying through rings.
|tip Use the "Flail Arms" ability to slow down for sharp turns.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-85104
accept Skyrider Racing - Skyrocketing Sprint##85104 |goto Undermine/0 39.02,28.70
|tip You will accept this quest automatically.
step
talk Grimy Timekeeper##231793
|tip Use the ladder behind the building to reach the top.
Select _"I'd like to try the course."_ |gossip 124679 |noautogossip
Prepare for the Race |havebuff Race Starting##466395 |goto Undermine/0 39.02,28.70 |q 85104
|tip Follow the indicated path, flying through rings.
|tip Use the "Flail Arms" ability to slow down for sharp turns.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Undermine/0 38.66,28.66 |q 85104
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings.
|tip Use the "Flail Arms" ability to slow down for sharp turns.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 85104/1
|tip Follow the indicated path, flying through rings.
|tip Use the "Flail Arms" ability to slow down for sharp turns.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-85487
accept Special Assignment: Boom! Headshot!##85487 |goto Undermine/0 35.92,52.22
|tip You will accept this quest automatically.
step
click Rooftop Teleporter
Use the Rooftop Teleporter |q 85487/1 |goto Undermine/0 35.92,52.22
step
clicknpc Sniper Rifle##234916
|tip Use the ability on your action bar to kill the Darkfuse enemies on the screen.
Snipe the Darkfuse |q 85487/2 |goto Undermine/0 37.93,52.03
|next "TWW_World_Quest_Emissaries"
step
label quest-85107
accept Skyrider Racing - Rags to Riches Rush##85107 |goto Undermine/0 25.49,42.13
|tip You will accept this quest automatically.
step
talk Grimy Timekeeper##231900
Select _"I'd like to try the course."_ |gossip 124707 |noautogossip
Prepare for the Race |havebuff Race Starting##466632 |goto Undermine/0 25.49,42.13 |q 85107
|tip Follow the indicated path, flying through rings.
|tip Use the "Flail Arms" ability to slow down for sharp turns.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Wait for the Race to Start |havebuff Racing##369968 |goto Undermine/0 25.71,42.55 |q 85107
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings.
|tip Use the "Flail Arms" ability to slow down for sharp turns.
|tip The immediate next path appears in orange, while future paths appear in blue.
step
Complete the Race |q 85107/1
|tip Follow the indicated path, flying through rings.
|tip Use the "Flail Arms" ability to slow down for sharp turns.
|tip The immediate next path appears in orange, while future paths appear in blue.
|next "TWW_World_Quest_Emissaries"
step
label quest-85488
accept Special Assignment: Security Detail##85488 |goto Undermine/0 61.37,44.63
|tip You will accept this quest automatically.
step
kill 4 Gallagio Security##235244 |q 85488/1 |goto Undermine/0 61.37,44.63
|next "TWW_World_Quest_Emissaries"
step
label quest-85390
accept Sunrise Sudser##85390 |goto Undermine/0 60.79,31.43
|tip You will accept this quest automatically.
step
extraaction Sunrise Sudser##467865
|tip Aim the water spout towards various highlighted NPCs on the beach.
|tip Use it on black areas on the shore as well.
Clean the Oil |q 85390/1 |goto Undermine/0 60.79,31.43
|next "TWW_World_Quest_Emissaries"
step
label quest-86947
accept Tiny, Expensive, and Deadly##86947 |goto Undermine/0 38.95,16.05
|tip You will accept this quest automatically.
step
talk Baxx the Purveyor##237703
Select _"Begin pet battle."_ |gossip 131873 |noautogossip
Defeat Baxx the Purveyor in a Pet Battle |q 86947/1 |goto Undermine/0 38.95,16.05
|next "TWW_World_Quest_Emissaries"
step
label quest-85513
accept Underrider Grease##85513 |goto Undermine/0 44.87,67.95
|tip You will accept this quest automatically.
step
kill Underrider Pyromaniac##230665, Underrider Roadhog##230626, Underrider Pillager##228863
collect 12 Grease Residue##231893 |q 85513/1 |goto Undermine/0 44.87,67.95
|next "TWW_World_Quest_Emissaries"
step
label quest-85397
accept What Plants Crave##85397 |goto Undermine/0 62.45,56.04
|tip You will accept this quest automatically.
step
click Low Battery+
|tip They look like small batteries on the ground around these areas.
|tip They appear on your minimap as yellow dots.
|tip You will be attacked after clicking them.
Replace #8# Low Batteries |q 85397/1 |goto Undermine/0 62.45,56.04
You can find more around:
[Undermine/0 55.33,45.16]
[Undermine/0 60.35,34.77]
|next "TWW_World_Quest_Emissaries"
step
label "TWW_World_Quest_Emissaries"
#include "TWW_World_Quest_Emissaries"
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\K'aresh World Quests",{
description="This guide will assist you in completing world quests in the K'aresh.",
condition_suggested=function() return completedq(91812) end,
condition_valid=function() return completedq(91812) end,
condition_valid_msg="You must complete \"The Tabiqa\" quest in the K'aresh guide to unlock world quests.",
startlevel=80,
worldquestzone={2371,2472},
patch='110200',
},[[
step
label "Choose_World_Quest"
#include "TWW_Choose_World_Quests"
step
label quest-85855
accept Anything to Declare?##85855 |goto K'aresh/0 54.78,63.77
|tip You will accept this quest automatically.
step
talk Impatient Importer##233745
Select _"Do you have an import permit for this?"_ |gossip 125431
clicknpc Rambunctious Dust##233761+
click Unchecked Cargo+
|tip They look like large chests on the ground around this area.
Help Out at the Docks |q 85855/1 |goto K'aresh/0 54.78,63.77
|next "TWW_World_Quest_Emissaries"
step
label quest-85460
accept Ecological Succession##85460 |goto K'aresh/0 74.06,32.33
|tip You will accept this quest automatically.
|polish
step
click Torn-up Earth+
click Watering Jug+
clicknpc Data Collection Drone##233187+
Help the Oasis |q 85460/1 |goto K'aresh/0 74.06,32.33
|next "TWW_World_Quest_Emissaries"
step
label quest-85834
accept Endangered Specimens##85834 |goto K'aresh/0 43.85,58.01
|tip You will accept this quest automatically.
|polish
step
clicknpc Stupefied Slateback##237311+
Rescue #8# Escaped Creatures |q 85834/1 |goto K'aresh/0 43.85,58.01
|next "TWW_World_Quest_Emissaries"
step
label quest-84962
accept Exigent Extermination##84962 |goto K'aresh/0 70.08,47.94
|tip You will accept this quest automatically.
stickystart "Collect_Entropic_Eggs"
stickystart "Cull_Devourers"
step
Enter the cave |goto K'aresh/0 68.83,47.97 < 7 |walk
kill Engorged Siltfeaster##230546 |q 84962/3 |goto K'aresh/0 70.08,47.94
|tip Inside the cave.
step
label "Collect_Entropic_Eggs"
click Entropic Egg+
|tip They look like small blue eggs on the ground around this area.
|tip There are a lot of these inside the cave.
collect 8 Entropic Egg##232601 |q 84962/2 |goto K'aresh/0 69.63,46.89
step
label "Cull_Devourers"
kill Parched Mite##230277, Parch-Mouth Mauler##230274
Cull #12# Devourers |q 84962/1 |goto K'aresh/0 69.63,46.89
|next "TWW_World_Quest_Emissaries"
step
label quest-86367
accept Grub Stompin'##86367 |goto K'aresh/0 70.38,54.36
|tip You will accept this quest automatically.
step
clicknpc Void-touched Grub##234693+
|tip They look like tiny grub worms on the ground around this area.
Stomp #6# Void-touched Grubs |q 86367/1 |goto K'aresh/0 70.38,54.36
|next "TWW_World_Quest_Emissaries"
step
label quest-85822
accept Making a Market##85822 |goto K'aresh/0 58.62,59.81
|tip You will accept this quest automatically.
step
click Loose Sand+
|tip They look like small sparkling lumps of sand on the ground around this area.
click Sealed Coffer+
|tip They look like tiny boxes on the ground around this area.
collect 8 Wastelander Artifact##232627 |q 85822/1 |goto K'aresh/0 58.78,59.64
|next "TWW_World_Quest_Emissaries"
step
label quest-86709
accept Mana Falling from the Skies##86709 |goto K'aresh/0 48.69,22.35
|tip You will accept this quest automatically.
step
Collect Mana |q 86709/1 |goto K'aresh/0 48.69,22.35
|tip Fly through the purple orbs in the air around this area.
step
Barrage Shadow Point: Darkmend |q 86709/3 |goto K'aresh/0 49.50,26.87
|tip Use the ability on the screen to barrage the Shadow Point.
step
Barrage Shadow Point: Torment |q 86709/4 |goto K'aresh/0 49.19,18.34
|tip Use the ability on the screen to barrage the Shadow Point.
step
Barrage Shadow Point: Apotheosis |q 86709/2 |goto K'aresh/0 44.08,17.22
|tip Use the ability on the screen to barrage the Shadow Point.
|next "TWW_World_Quest_Emissaries"
step
label quest-86610
accept Nor Void of Night##86610 |goto Tazavesh/0 47.98,63.17
|tip You will accept this quest automatically.
step
Enter the building |goto Tazavesh/0 47.98,63.17 < 10 |walk
talk Katy Stampwhistle##235886
|tip Inside the building.
Check in with Katy Stampwhistle |q 86610/1 |goto Tazavesh/0 46.24,67.77
step
Deliver the Hosaas' Rest Mail |q 86610/2 |goto K'aresh/0 54.04,63.70
|tip Walk near the mailbox.
step
Deliver the Overlook Zo'Shuul Mail |q 86610/3 |goto K'aresh/0 48.86,38.10
|tip Walk near the mailbox.
step
Deliver the Shan'dorah Mail |q 86610/4 |goto K'aresh/0 60.64,27.74
|tip Walk near the mailbox.
step
Deliver The Oasis Mail |q 86610/5 |goto K'aresh/0 76.67,34.51
|tip Walk near the mailbox.
|next "TWW_World_Quest_Emissaries"
step
label quest-88774
accept Out of Energy##88774 |goto K'aresh/0 50.97,19.67
|tip You will accept this quest automatically.
step
kill Shadowguard Surveyor##239908, Shadowguard Lookout##239909
click Energy Condenser##523794+
|tip They look like floating pillars with purple lightning inside.
click Condenser Control Console##523783+
|tip They look like gray and purple consoles.
Interrupt the Shadowguard's Operation |q 88774/1 |goto K'aresh/0 50.97,19.67
|next "TWW_World_Quest_Emissaries"
step
label quest-86584
accept Overwhelm Them with Mandatory Time Off##86584 |goto Tazavesh/0 59.62,32.38
|tip You will accept this quest automatically.
step
click Broker Crate##476259+
|tip They look like crates with red rope around them on the ground around this area.
click Illusion Device##239597+
|tip They look like small sparkling yellow objects on the ground around this area.
Handle the Docks |q 86584/1 |goto Tazavesh/0 59.62,32.38
|next "TWW_World_Quest_Emissaries"
step
label quest-86429
accept Phase Diving: The Bound Unbound##86429 |goto K'aresh/0 77.17,48.92
|tip You will accept this quest automatically.
step
click Phase Conduit
Enter Phase Diving |complete hasbuff(1214374) or completedq(86429) |goto K'aresh/0 77.17,48.92
step
kill Untethered Lasher##234894, Untethered Spellweaver##234896, Untethered Voidshade##234897
Release Spirits |q 86429/2 |goto K'aresh/0 78.38,48.92
|next "TWW_World_Quest_Emissaries"
step
label quest-86872
click Phase Conduit
Enter Phase Diving |complete hasbuff(1214374) or completedq(86872) |goto K'aresh/0 53.85,63.60
step
accept Phase Diving: Experimental Extermination##86872 |goto K'aresh/0 53.66,63.69
|tip You will accept this quest automatically.
|polish
step
click S.P.H.E.R.E.##508145
Ride the S.P.H.E.R.E. |q 86872/2 |goto K'aresh/0 53.66,63.69
step
Crush #50# Phase Parasites |q 86872/3 |goto K'aresh/0 53.93,59.02
|tip Roll over creatures all over the area.
|tip Rolling through purple spheres grant you a stacking speed boost.
|next "TWW_World_Quest_Emissaries"
step
label quest-85864
click Phase Conduit
Enter Phase Diving |complete hasbuff(1214374) or completedq(85864) |goto K'aresh/0 56.20,21.52
step
accept Phase Diving: Fractured Laacunite##85864 |goto K'aresh/0 56.20,21.52
|tip You will accept this quest automatically.
step
click Phase Crystal##236062+
|tip They look like floating groups of stones above the ground around this area.
collect 40 Laacunite Shard##232612 |q 85864/2 |goto K'aresh/0 56.23,23.23
|next "TWW_World_Quest_Emissaries"
step
label quest-88904
click Phase Conduit
Enter Phase Diving |complete hasbuff(1214374) or completedq(88904) |goto K'aresh/0 75.88,33.11
step
accept Phase Diving: It Could Be Anything##88904 |goto K'aresh/0 68.60,31.73
|tip You will accept this quest automatically.
step
click Puzzle Box##240243
Interact with the Puzzle Box |q 88904/2 |goto K'aresh/0 68.60,31.73
step
Solve the Enigma |q 88904/3 |goto K'aresh/0 68.84,31.67
|tip Watch the pattern of squares that appear and memorize it.
|tip When all the squares appear, repeat the pattern you saw by walking on those squares.
|next "TWW_World_Quest_Emissaries"
step
label quest-89291
click Phase Conduit
Enter Phase Diving |complete hasbuff(1214374) or completedq(89291) |goto K'aresh/0 45.21,23.91
step
accept Phase Diving: Oath-Breaker Desamirah##89291 |goto K'aresh/0 43.59,26.34
|tip You will accept this quest automatically.
step
kill Oath-Breaker Desamirah##241384 |q 89291/1 |goto K'aresh/0 43.59,26.34
|next "TWW_World_Quest_Emissaries"
step
label quest-88902
accept Phase Diving: Restless Souls##88902 |goto K'aresh/0 51.38,67.14
|tip You will accept this quest automatically.
step
click Phase Conduit
Enter Phase Diving |complete hasbuff(1214374) or completedq(88902) |goto K'aresh/0 51.38,67.14
step
kill Arcane Soul##240134, Consumed Soul##240131, Untethered Soul##240130
Slay #15# Restless Souls |q 88902/2 |goto K'aresh/0 51.69,67.05
|next "TWW_World_Quest_Emissaries"
step
label quest-89288
click Phase Conduit
Enter Phase Diving |complete hasbuff(1214374) or completedq(89288) |goto K'aresh/0 45.21,23.91
step
accept Phase Diving: Riftbreaker Tza'akir##89288 |goto K'aresh/0 47.79,15.54
|tip You will accept this quest automatically.
step
kill Riftbreaker Tza'akir##241383 |q 89288/2 |goto K'aresh/0 47.79,15.54
|next "TWW_World_Quest_Emissaries"
step
label quest-86869
accept Phase Diving: Shan'dorah Saboteurs##86869 |goto K'aresh/0 59.83,28.53
|tip You will accept this quest automatically.
step
click Phase Conduit
Enter Phase Diving |complete hasbuff(1214374) or completedq(86869) |goto K'aresh/0 60.21,29.04
step
kill Phaseblade Saboteur##237233, Phasewalker Adept##237302
click Phase Rift##508124+
|tip They look like large black and purple portals.
click Phase Bomb##507956+
|tip They look like floating purple jars around this area.
Thwart the Sabotage |q 86869/2 |goto K'aresh/0 59.83,28.53
|next "TWW_World_Quest_Emissaries"
step
label quest-85863
click Phase Conduit
Enter Phase Diving |complete hasbuff(1214374) or completedq(85863) |goto K'aresh/0 77.17,48.93
step
accept Phase Diving: Strange Storms##85863 |goto K'aresh/0 73.82,48.13
|tip You will accept this quest automatically.
|polish
step
Take Storm Readings |q 85863/1 |goto K'aresh/0 73.82,48.13
|tip Run into a swirling wind gust and fly through the rings when you are launched in the air.
|next "TWW_World_Quest_Emissaries"
step
label quest-86821
click Phase Conduit
Enter Phase Diving |complete hasbuff(1214374) or completedq(86821) |goto K'aresh/0 75.88,33.11
step
accept Phase Diving: Unmoored and Unwell##86821 |goto K'aresh/0 78.68,32.45
|tip You will accept this quest automatically.
step
clicknpc Unmoored Phase Diver##237208+
Stabilize #8# Unmoored Phased Divers |q 86821/2 |goto K'aresh/0 78.68,32.45
|next "TWW_World_Quest_Emissaries"
step
label quest-85812
|script local d=C_UnitAuras.GetPlayerAuraBySpellID(1214374) if d then CancelSpellByName(d.name) end |only if hasbuff(1214374)
|script local d=C_UnitAuras.GetPlayerAuraBySpellID(1244178) if d then CancelSpellByName(d.name) end |only if hasbuff(1244178)
Exit Phase Diving |complete (not hasbuff(1214374) and not hasbuff(1244178)) or completedq(85812)
step
accept Raid the Raiders##85812 |goto K'aresh/0 76.89,50.71
|tip You will accept this quest automatically.
stickystart "Slay_Wastelanders_85812"
step
click Missing Shipment##495583+
collect 6 Missing Shipment##232574 |q 85812/2 |goto K'aresh/0 76.89,50.71
You can find more around [K'aresh/0 75.80,47.94]
step
label "Slay_Wastelanders_85812"
kill Sufaadi Bladetamer##230352, Sufaadi Soulbinder##230354
Slay #10# Wastelanders |q 85812/1 |goto K'aresh/0 76.89,50.71
You can find more around [K'aresh/0 75.80,47.94] |notinsticky
|next "TWW_World_Quest_Emissaries"
step
label quest-87354
accept Reshanor, the Untethered##87354 |goto K'aresh/0 71.85,48.68
|tip You will accept this quest automatically.
step
kill Reshanor##238319 |q 87354/1 |goto K'aresh/0 71.85,48.68
_EVERYONE:_ |grouprole EVERYONE
|tip {o}Veilshatter Roar{} deals heavy damage to the entire raid and interrupts spellcasting. |grouprole EVERYONE
|tip Enter {o}Erratic Rifts{} to follow Reshanor into Untethered Space. |grouprole EVERYONE
|tip Avoid standing areas targeted on the ground. |grouprole EVERYONE
_DPS:_ |grouprole DAMAGE
|tip Avoid standing in front of Reshanor. |grouprole DAMAGE
_HEALER:_ |grouprole HEALER
|tip High stacks of {o}Void Corruption{} on players will deal heavy damage to them. |grouprole HEALER
|tip Avoid standing in front of Reshanor. |grouprole HEALER
|next "TWW_World_Quest_Emissaries"
step
label quest-86696
accept Shadow Re-Disruption##86696 |goto K'aresh/0 45.61,19.69
|tip You will accept this quest automatically.
step
kill Observer##230482, Shadowguard Voidcaller##231588, Shadowguard Bulwark##231586, Shadowguard Colossus##231585, Shadowguard Adept##231584
click Shadowguard Power Pylon+
|tip They look like tall electrified pylons with floating parts around this area.
click Captured Wastelander##231174+
Re-Disrupt Shadow Point |q 86696/1 |goto K'aresh/0 45.61,19.69
|next "TWW_World_Quest_Emissaries"
step
label quest-86707
accept The Shadowguard Resurgence##86707 |goto Tazavesh/0 41.31,62.96
|tip You will accept this quest automatically.
stickystart "Repel_the_Shadowguard_Resurgence"
step
click Northeast Barrier Projector
Place the Northeast Barrier Projector |q 86707/2 |goto Tazavesh/0 41.31,62.96
step
click South Barrier Projector
Place the South Barrier Projector |q 86707/4 |goto Tazavesh/0 44.12,84.65
step
click Northwest Barrier Projector
Place the Northwest Barrier Projector |q 86707/3 |goto Tazavesh/0 30.66,63.06
step
label "Repel_the_Shadowguard_Resurgence"
click Tazavesh Civilian##236856, Market Guardian##236833
kill Ensorcelled Skitterer##236884,Shadowguard Darkweaver##236883, Shadowguard Destroyer##236806, Shadowguard Duskwalker##236882, Shadowguard Infiltrator##236880, Shadowguard Voidripper##236881
Repel the Shadowguard Resurgence |q 86707/1 |goto Tazavesh/0 42.06,63.28
|next "TWW_World_Quest_Emissaries"
step
label quest-89294
accept Special Assignment: Aligned Views##89294 |goto K'aresh/0 77.17,48.93
|tip You will accept this quest automatically.
step
click Phase Conduit
Enter Phase Diving |complete hasbuff(1214374) or completedq(89294) |goto K'aresh/0 77.17,48.93
step
talk Kal'shin##243199
Select _"When you are ready."_ |gossip 133558
Talk to Kal'shin |q 89294/2 |goto K'aresh/0 77.10,48.41
stickystart "Slay_Wastelanders"
step
Retrieve #12# Solen Tech |q 89294/4 |goto K'aresh/0 76.62,49.68
|tip Use the 4th ability on your bar, {b}Retrieve Stolen Tech{}, to retrieve them.
step
label "Slay_Wastelanders"
kill Sufaadi Pactspeaker##243371, Sufaadi Headhunter##243372, Sufaadi Enforcer##243373
|tip Use the abilities on your bar.
Slay #30# Wastelanders |q 89294/3 |goto K'aresh/0 76.62,49.68
|next "TWW_World_Quest_Emissaries"
step
label quest-89293
click Phase Conduit
Enter Phase Diving |complete hasbuff(1214374) or completedq(89293) |goto K'aresh/0 53.92,26.75
step
accept Special Assignment: Overshadowed##89293 |goto K'aresh/0 56.34,27.30
|tip You will accept this quest automatically.
step
talk Na'val##244385
Select _"<Take the offer.>"_ |gossip 133761
Talk to Na'val |q 89293/1 |goto K'aresh/0 56.34,27.30
step
kill Shadowguard Sentinel Duwal##242707 |q 89293/2 |goto K'aresh/0 58.66,28.82
|tip It walks around this area and appears on your minimap as a yellow dot.
|tip Use the abilities on your vehicle bar to accomplish this.
|tip The first ability allows you to charge in, while the last allows you to leap back and heal.
|tip Alternating these two abilities will keep you alive while the others allow you to deal damage.
|tip A simple routine is 4 to leap back, 1 to immediately charge back in, 2 to deal damage, then repeat until dead.
step
kill Shadowguard Sentinel Za'drin##242705 |q 89293/3 |goto K'aresh/0 61.29,28.23
|tip It walks around this area and appears on your minimap as a yellow dot.
|tip Use the abilities on your vehicle bar to accomplish this.
|tip The first ability allows you to charge in, while the last allows you to leap back and heal.
|tip Alternating these two abilities will keep you alive while the others allow you to deal damage.
|tip A simple routine is 4 to leap back, 1 to immediately charge back in, 2 to deal damage, then repeat until dead.
|next "TWW_World_Quest_Emissaries"
step
label quest-86409
accept Stalking the Crags##86409 |goto K'aresh/0 75.22,57.77
|tip You will accept this quest automatically.
stickystart "Slay_Stalkers"
step
click Dead Gritshell##234781+
|tip They appear on your minimap as yellow dots.
Torch #5# Gritshells |q 86409/2 |goto K'aresh/0 75.22,57.77
step
label "Slay_Stalkers"
kill K'aresh Cragstalker##234779, K'aresh Stalkling##234780
Slay #10# Stalkers |q 86409/1 |goto K'aresh/0 75.22,57.77
|next "TWW_World_Quest_Emissaries"
step
label quest-86395
accept Stealing the Stolen##86395 |goto K'aresh/0 64.94,52.02
|tip You will accept this quest automatically.
step
click Weapon Rack
Take the Stolen Stolen Weapon |q 86395/1 |goto K'aresh/0 64.94,52.02 |count 1 hidden
step
click Weapon Rack
Take the Stolen Stolen Weapon |q 86395/1 |goto K'aresh/0 65.03,54.82 |count 2 hidden
step
click Weapon Rack
Take the Stolen Stolen Weapon |q 86395/1 |goto K'aresh/0 65.31,57.08 |count 3 hidden
step
click Weapon Rack
Take the Stolen Stolen Weapon |q 86395/1 |goto K'aresh/0 65.87,58.52 |count 4 hidden
step
click Weapon Rack
Take the Stolen Stolen Weapon |q 86395/1 |goto K'aresh/0 67.08,57.65 |count 5 hidden
|next "TWW_World_Quest_Emissaries"
step
label quest-86800
accept Swipe 'Em##86800 |goto K'aresh/0 53.35,49.08
|tip You will accept this quest automatically.
step
click Tool Rack+
|tip They look like floating purple screens with tools hanging from them.
kill Shadowguard Riftcaller##230474, Shadowguard Speardancer##230776, Shadowguard Voidblade##230777
collect 40 Shadowguard Tool##235413 |q 86800/1 |goto K'aresh/0 53.35,49.08
|next "TWW_World_Quest_Emissaries"
step
label quest-86391
accept Taking Back our Power##86391 |goto K'aresh/0 67.73,40.74
|tip You will accept this quest automatically.
step
click Power Harvesting Pylon##234716
Activate the Pylon |q 86391/1 |goto K'aresh/0 67.73,40.74 |count 1 hidden
step
click Power Harvesting Pylon##234716
Activate the Pylon |q 86391/1 |goto K'aresh/0 64.44,44.35 |count 2 hidden
step
click Power Harvesting Pylon##234716
Activate the Pylon |q 86391/1 |goto K'aresh/0 63.82,41.24 |count 3 hidden
step
click Power Harvesting Pylon##234716
Activate the Pylon |q 86391/1 |goto K'aresh/0 61.78,42.39 |count 4 hidden
step
click Power Harvesting Pylon##234716
Activate the Pylon |q 86391/1 |goto K'aresh/0 63.25,47.81 |count 5 hidden
|next "TWW_World_Quest_Emissaries"
step
label quest-89274
accept The Ugly Mirror##89274 |goto K'aresh/0 61.00,28.06
|tip You will accept this quest automatically.
step
click Damaged Transmogrifier
Inspect the transmogrifier |q 89274/1 |goto K'aresh/0 61.00,28.06
step
Fix the Transmogrifier |q 89274/2 |goto K'aresh/0 61.00,28.06
|tip Uncross the lines by clicking the round connection points and swapping places.
|next "TWW_World_Quest_Emissaries"
step
label quest-89241
accept Up and Up##89241 |goto K'aresh/0 72.48,10.69
|tip You will accept this quest automatically.
|polish
step
kill Arcane Spirit##243705, Unchained Spirit##243703, Void Spirit##243704
Kill Ethereal or Players |q 89241/1 |goto K'aresh/0 72.48,10.69
|next "TWW_World_Quest_Emissaries"
step
label quest-88818
accept Void Sweeper##88818 |goto K'aresh/0 47.90,56.92
|tip You will accept this quest automatically.
step
talk Sporesweeper Om'clog##239927
Select _"You want me to do your job?"_ |gossip 132622
Select _"OK, I will do it."_ |gossip 132620
Talk to Sporesweeper Om'clog (Optional) |q 88818/1 |goto K'aresh/0 47.90,56.92
step
clicknpc M'arla##239922
Begin Flying with M'arla |invehicle M'arla##240123 |q 88818 |goto K'aresh/0 47.82,56.89
step
Eat #20# Void Spheres |q 88818/2 |goto K'aresh/0 48.02,55.53
You can find more around [K'aresh/0 46.92,61.17]
|next "TWW_World_Quest_Emissaries"
step
label quest-86372
accept Wasting the Wastelanders##86372 |goto K'aresh/0 62.31,40.86
|tip You will accept this quest automatically.
step
kill Wastelander Duelist##231549, Wastelander Farstalker##230618, Wastelander Wildcaller##232403, Wastelander Duelist##230617, Wastelander Dunewraith##230621, Wastelander Soulbinder##230620
Waste the Wastelanders |q 86372/1 |goto K'aresh/0 62.31,40.86
|next "TWW_World_Quest_Emissaries"
step
label quest-86305
accept Watch me Make these Bugs Expire##86305 |goto K'aresh/0 48.91,61.34
|tip You will accept this quest automatically.
step
use the Flamethrower##249417
kill 8 Glutted Creeper##234282 |q 86305/1 |goto K'aresh/0 48.91,61.34
You can find more around [K'aresh/0 46.92,61.17]
|next "TWW_World_Quest_Emissaries"
step
label "TWW_World_Quest_Emissaries"
#include "TWW_World_Quest_Emissaries"
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\Theater Troupe",{
startlevel=70,
areapoiid={8076,7901,7943,7899,8078,7900,8079,7902,8077,7654,8080,7941},
patch='110002',
},[[
step
talk Stage Manager Huberta##214296
accept Thespians at the Proscenium##79150 |goto Isle of Dorn/0 56.44,51.38
step
talk Architect Brokfor##217241
Select _"Huberta wants me to help you."_ |gossip 122494
Speak to Brokfor |q 79150/1 |goto The Proscenium/0 38.01,43.12
step
clicknpc Bushy Weeds##217456+
|tip They look like large green plants on the stairs around this area.
|tip Run away when you click them to pull them out.
Pull #6# Bushy Weeds |q 79150/2 |goto Isle of Dorn/0 56.44,49.31
step
talk Stage Manager Huberta##214296
turnin Thespians at the Proscenium##79150 |goto Isle of Dorn/0 56.44,51.38
accept The Grand Debut##79282 |goto Isle of Dorn/0 56.44,51.38
step
label "Begin_Theater"
talk Stage Manager Huberta##214296
accept The Theater Troupe##83240 |goto Isle of Dorn/0 56.44,51.38
step
Wait for the Theater to Begin Assembling |scenariostart |goto Isle of Dorn/0 56.44,51.38
|tip The show starts at the top of every hour.
stickystart "Earn_Audience_Approval"
step
Wait for the play to start
|tip The activities will begin in 5 minutes!
Await the Curtain Call |scenariostage 1 |goto Isle of Dorn/0 56.44,51.38
|only if scenariostage(1)
step
talk Stage Manager Huberta##214296
Select _"(Begin Theater) Zaralanaz, reporting in for duty!"_ |gossip 120733
Speak with Stage Manager Huberta |scenariogoal 2/66128 |goto Isle of Dorn/0 56.44,51.38
|only if scenariostage(2)
step
clicknpc Nosy Mouse##215116
clicknpc Nosy Ferret##215115
Punt #8# Critters |scenariogoal 3/64669 |goto The Proscenium/0 32.34,59.86
|only if scenariostage(3)
step
click Playbill##417367+
|tip They look like large pieces of paper hanging from vertical surfaces around this area.
Hang #5# Playbills |scenariogoal 4/64800 |goto The Proscenium/0 49.74,33.88
|only if scenariostage(4)
step
click Wave Prop
click Wave Crash Prop
click Little Rock Prop
click Big Rock Prop
Paint #5# Ocean Scenery |scenariogoal 5/64806 |goto The Proscenium/0 55.15,59.24
|only if scenariostage(5)
step
click Stone Block+
|tip Click them each several times.
Carve #2# Masks |scenariogoal 6/64823 |goto The Proscenium/0 56.34,54.49
|only if scenariostage(6)
step
extraaction Break a Leg!##435494
Encourage #5# Players and Huberta to Break a Leg |scenariogoal 7/64675 |goto The Proscenium/0 48.57,56.31
|only if scenariostage(7)
step
click Discarded Theater Program##417347+
|tip They look like piles of paper on the ground around this area.
Collect #5# Discarded Theater Programs |scenariogoal 8/64797 |goto The Proscenium/0 43.20,35.49
|only if scenariostage(8)
step
click Blunted Weapon##419679+
|tip They look like spears, hammers, and axes on the ground around this area.
Collect #6# Blunted Weapons |scenariogoal 9/64883 |goto The Proscenium/0 29.18,43.72
|only if scenariostage(9)
step
click Set Piece##419732
Destroy the Set |scenariogoal 10/64918 |goto The Proscenium/0 49.29,58.68
|only if scenariostage(10)
step
click Lost Script Pages##419727+
|tip They look like piles of papers on the ground around this area.
Collect #5# Lost Script Pages |scenariogoal 11/64893 |goto The Proscenium/0 56.32,68.81
|only if scenariostage(11)
step
talk Feuding Actor##216128
|tip Choose the following dialogue options for the male actor.
Select _"Have you ever performed before a crowd so big?"_ |gossip 120457
Select _"What if you were her mentor?"_ |gossip 120458
talk Feuding Actor##216127
|tip Choose the following dialogue options for the female actor.
Select _"Unbound like him are good at improv."_ |gossip 120454
Select _"Half of acting is reacting."_ |gossip 120455
Resolve the Actor Dispute |scenariostage 12 |goto The Proscenium/0 49.43,39.74
|only if scenariostage(12)
step
click Sprightly Wildflower##420113+
|tip They look like small flowers on the ground around this area.
Pick #5# Sprightly Wildflowers |scenariogoal 13/65044 |goto The Proscenium/0 52.44,74.69
|only if scenariostage(13)
step
Chase #8# Birds |scenariogoal 14/65232 |goto The Proscenium/0 43.30,45.03
|tip Run up the the various birds perched around this area.
|only if scenariostage(14)
step
click Scattered Mug##424353
|tip They look like small mugs on the ground all over this area.
Collect #6# Mugs |scenariogoal 15/66043 |goto The Proscenium/0 48.60,32.38
|only if scenariostage(15)
step
clicknpc Stampeding Shalehorn##215812+
|tip They run in a circle around this area.
|tip You can click several to stop them while you are shooing one.
Shoo #10# Stampeding Shalehorns |scenariogoal 16/64828 |goto The Proscenium/0 49.89,54.26
|only if scenariostage(16)
step
click Unpainted Ramolith Prop+
Paint #5# Ram Props |scenariogoal 17/66885 |goto The Proscenium/0 44.34,60.24
|only if scenariostage(17)
step
clicknpc Glitched Hologram##222107+
Fix #6# Holograms |scenariogoal 18/66044 |goto The Proscenium/0 49.92,53.75
|only if scenariostage(18)
step
click Costume Bundle##441667+
Collect #6# Costume Bundles |scenariogoal 19/66912 |goto The Proscenium/0 30.77,66.97
|only if scenariostage(19)
step
click Bush Prop+
click Big Rock Prop+
click Tree Prop
Paint #5# Forest Scenery |scenariogoal 20/66909 |goto The Proscenium/0 54.39,49.25
|only if scenariostage(20)
step
click Candles Prop+
click Minecart Prop
click Stalagmite Prop+
Paint #5# Underground Scenery |scenariogoal 21/67386 |goto The Proscenium/0 45.87,48.42
|only if scenariostage(21)
step
click Scuffed Titan Orb##441648
Repair #5# Scuffed Titan Orbs |scenariogoal 22/66910 |goto The Proscenium/0 42.75,54.37
|only if scenariostage(22)
step
Stage Coming Soon |scenariogoal 23/0
|DEVMSG STAGE 23
|only if scenariostage(23)
step
kill Brew-Addled Earthen##215911
Defeat as Many Drunken Earthen as Possible |scenariogoal 24/64891 |goto The Proscenium/0 44.21,32.95
|only if scenariostage(24)
step
kill Nerubian Disruptor##216356
Defeats as Many Nerubian Flyers as Possible |scenariogoal 25/65241 |goto The Proscenium/0 46.89,39.35
|only if scenariostage(25)
step
kill Proscenium Punk##215791+
Defeat as Many Kobolds as Possible |scenariogoal 26/64826 |goto The Proscenium/0 31.68,47.34
|only if scenariostage(26)
step
kill Disturbed Deepflayer##215773+
Defeat as Many Deepflayers as Possible |scenariogoal 27/64827 |goto The Proscenium/0 39.98,67.55
|only if scenariostage(27)
step
kill Fungarian Creepcap##218665
Defeat as Many Fungarians as Possible |scenariogoal 28/65018 |goto The Proscenium/0 37.25,63.53
|only if scenariostage(28)
step
kill Proscenium Puddlestomper##216072+
Defeat as Many Gorlocs as Possible |scenariogoal 29/65202 |goto The Proscenium/0 61.06,79.60
|only if scenariostage(29)
step
click Costume Chest##463803
|tip Grab a costume and wait for the main event to begin.
Reach the Center Stage |scenariogoal 30/66556 |goto The Proscenium/0 49.77,53.37
|only if scenariostage(30)
step
extraaction Roaring Cheer##436808
|tip Stand in at least one of the giant yellow circles around a general while spamming the ability on the screen.
|tip Try to stand in both for +10 to your audience approval for each cheer.
Cheer on the Generals |scenariogoal 31/66136 |goto The Proscenium/0 49.77,54.18
|only if scenariostage(31)
step
kill Earthen Contender##215989+
Defeated as Many Earthen Contenders as Possible |scenariogoal 32/65013 |goto The Proscenium/0 49.89,52.96
|only if scenariostage(32)
step
clicknpc Large Ramolith Prop##220998+
|tip These give +3 audience approval.
clicknpc Weight Bar Prop##215726+
|tip These give +5 audience approval.
Complete as Many Feats of Strength as Possible |scenariogoal 33/64812 |goto The Proscenium/0 46.98,53.51
|only if scenariostage(33)
step
kill General Emmerich##215371 |scenariogoal 34/69396 |goto The Proscenium/0 50.16,53.79
|tip Avoid standing in the area targeted by "Reave."
|only if scenariostage(34)
step
extraaction Throw Wood##443803
|tip Use the button on the screen that appears near wood piles to throw wood to the center of the stage.
Throw as Much Wood at the Ship as Possible |scenariogoal 35/66136 |goto The Proscenium/0 49.87,53.73
|only if scenariostage(35)
step
extraaction Wind Blast##443345
|tip Use the ability on your screen at the sails in the center of the theater.
Throw as much wind and water as possible |scenariogoal 36/65013 |goto The Proscenium/0 44.46,54.14
|only if scenariostage(36)
step
kill Rising Kelp##221062+
Defeat as Many Kelp Elementals as Possible |scenariogoal 37/64812 |goto The Proscenium/0 48.88,54.41
|only if scenariostage(37)
step
kill Wanderer Ida##220953 |scenariogoal 38/66617 |goto The Proscenium/0 50.49,52.03
|only if scenariostage(38)
step
extraaction Throw Flowers##432857
|tip Stand near a basket and throw the flowers repeatedly at the couple in the center.
Throw Flowers at the Earthen Couple |scenariogoal 39/66136 |goto The Proscenium/0 49.69,52.05
|only if scenariostage(39)
step
click Archival Lever##4398426+
click Archival Console##441736+
clicknpc Memory of Clodgran##222227+
Archive as Many Memories as Possible |scenariogoal 40/65013 |goto The Proscenium/0 46.21,59.68
|only if scenariostage(40)
step
click Sunbrush Flower##439835+
|tip They look like bushy flowers growing on the ground around this area.
Collect as Many Flowers as Possible |scenariogoal 41/64812 |goto The Proscenium/0 45.55,58.09
|only if scenariostage(41)
step
kill Overseer Roskarrag##221071 |scenariogoal 42/68672 |goto The Proscenium/0 49.59,54.28
|only if scenariostage(42)
stickystart "Eat_Food"
stickystart "Drink_Drinks"
step
extraaction Celebrate!##444674
|tip Spam the button on the screen to dance.
Dance All Night |scenariogoal 43/66136 |goto The Proscenium/0 45.61,54.79
|only if scenariostage(43)
step
label "Eat_Food"
click Shalescale Grouper##440870
|tip Click the grouper and other foods on the various tables.
Eat as Much Food as Possible |scenariogoal 43/66136 |goto The Proscenium/0 54.13,52.20
|only if scenariostage(43)
step
label "Drink_Drinks"
click Cinderbrew Mug##440861+
|tip On the various tables.
Drink as Many Drinks as You Can |scenariogoal 43/66136 |goto The Proscenium/0 54.44,55.39
|only if scenariostage(43)
step
Stay Away from the Orbs |scenariogoal 44/65013 |goto The Proscenium/0 43.61,53.37
|tip Run away from the orb that is chasing you until the stage ends.
|tip Use CC and slowing effects to make this task easier.
|only if scenariostage(44)
step
Kill Titan Orb enemies around this area |kill Colossal Titan Orb##221730,Titan Orb##221729
|tip Orbs will keep spawning until the stage ends.
Destroy as Many Orbs as Possible |scenariogoal 45/64812 |goto The Proscenium/0 49.53,55.04
|only if scenariostage(45)
step
clicknpc Dorn##221756
Begin Dragging Dorn |havebuff Towing Dorn##444721 |goto The Proscenium/0 49.06,45.51
|only if scenariostage(46)
step
Drag Dorn to the Portal |scenariogoal 46/66625 |goto The Proscenium/0 49.54,61.52
|tip Pull Dorn with other players to the portal
|only if scenariostage(46)
stickystart "Saddle_Cloudrooks"
stickystart "Gather_Cinderbrew"
step
extraaction Wave Goodbye##444062
Say Goodbye to as Many Civilians as Possible |scenariogoal 47/66136 |goto The Proscenium/0 43.93,53.18
|only if scenariostage(47)
step
label "Saddle_Cloudrooks"
clicknpc Cloudrook##221459+
Saddle as Many Cloudrooks as Possible |scenariogoal 47/66136 |goto The Proscenium/0 49.87,53.91
|only if scenariostage(47)
step
label "Gather_Cinderbrew"
click Cinderbrew Keg##423582+
|tip They look like large wood and metal kegs on the ground around this area.
Gather as Much Cinderbrew as Possible |scenariogoal 47/66136 |goto The Proscenium/0 51.97,48.18
|only if scenariostage(47)
step
kill Sparkfist Kobold##215789+
Protect the Adventuring Party from Kobolds |scenariogoal 48/65013 |goto The Proscenium/0 49.79,54.32
|only if scenariostage(48)
step
Stay Within the Light |scenariogoal 49/64812 |goto The Proscenium/0 50.32,57.51
|tip Run with the groups of NPCs, staying inside the yellow-dashed circles.
|tip Keep doing this until the next objective.
|only if scenariostage(49)
step
extraaction Flop##444478
|tip Use the ability on the to "Die Valiantly."
Die Valiantly at the Hands of the Nerubians |scenariogoal 50/66629 |goto The Proscenium/0 49.40,48.92
|only if scenariostage(50)
step
extraaction Throw Goblet##454572
|tip Throw them in the bucket.
Throw #6# Goblets |scenariogoal 51/68238 |goto The Proscenium/0 49.60,45.41
|only if scenariostage(51)
step
Stage Coming Soon |scenariogoal 52/0
|DEVMSG STAGE 52
|only if scenariostage(52)
step
Stage Coming Soon |scenariogoal 53/0
|DEVMSG STAGE 53
|only if scenariostage(53)
step
click Cinderbrew Spill##453787+
Cleanse Cinderbrew Spills |scenariogoal 54/68292 |goto The Proscenium/0 38.02,49.86
|DEVMSG STAGE 54
|only if scenariostage(54)
step
click Ink Spill##453873+
|tip They look like large black puddles on the ground around this area.
Cleanse #3# Ink Spills |scenariogoal 55/68351 |goto The Proscenium/0 33.28,62.11
|only if scenariostage(55)
step
extraaction Sweeping##455216
|tip Use the ability on your screen to sweep up the stage area.
Sweep the Stage |scenariogoal 56/68291 |goto The Proscenium/0 49.33,52.63
|only if scenariostage(56)
step
extraaction Sweeping##455371
|tip Use the ability on your screen to sweep up the stage area.
Sweep the Stage |scenariogoal 57/68356 |goto The Proscenium/0 49.85,53.71
|only if scenariostage(57)
step
clicknpc Browsing Theatergoer##225622+
Inform #6# Browsing Theatergoers |scenariogoal 58/68120 |goto The Proscenium/0 30.10,51.52
|only if scenariostage(58)
step
clicknpc Bubble-Snatcher##225930
Punt #8# Critters |scenariogoal 59/68232 |goto The Proscenium/0 60.57,79.89
|only if scenariostage(59)
step
click Lucky Plant##453092
Touch the Lucky Plant |scenariogoal 60/68233 |goto The Proscenium/0 50.27,75.95
|only if scenariostage(60)
step
clicknpc Hungry Cloudrook##226153+
Feed #5# Cloudrooks |scenariogoal 61/68290 |goto The Proscenium/0 31.71,74.77
|only if scenariostage(61)
step
clicknpc Unsightly Root##225931+
|tip They look like wiggling roots on the ground around this area.
|tip Click them and run away to pull them.
Remove #6# Unsightly Roots |scenariogoal 62/68234 |goto The Proscenium/0 45.39,71.82
|only if scenariostage(62)
step
extraaction Dancing##454570
Dance at Center Stage |scenariogoal 63/68237 |goto The Proscenium/0 49.67,53.54
|only if scenariostage(63)
step
click Brigganthony the Raptor
Kiss Brigganthony the Raptor |scenariogoal 64/68235 |goto The Proscenium/0 51.72,79.02
|only if scenariostage(64)
step
extraaction Throw Tapestry##454574
|tip Use the ability on the screen to throw them to the arrows in the crowd.
Throw #6# Tapestries |scenariogoal 65/68239 |goto The Proscenium/0 50.11,45.55
|only if scenariostage(65)
step
clicknpc Queued Theatergoer##225974+
Distribute #7# Tickets |scenariogoal 66/68260 |goto The Proscenium/0 33.42,45.73
|only if scenariostage(66)
step
click Vase Prop##453878+
Collect #6# Vase Props |scenariogoal 67/68352 |goto The Proscenium/0 29.88,59.95
|only if scenariostage(67)
step
click Inky Paint##453875+
|tip They look like small bottles of paint on the ground around this area.
Collect #6# Inky Paints |scenariogoal 68/68359 |goto The Proscenium/0 34.19,62.31
|only if scenariostage(68)
step
clicknpc Greenhorn Extra##228307
kill Greenhorn Extra##228307
Train with #3# Greenhorn Actors |scenariogoal 69/69429 |goto The Proscenium/0 53.08,68.38
|only if scenariostage(69)
step
clicknpc Rabaan##228343
kill Rabaan##228343
Train with Rabaan |scenariogoal 70/69441 |goto The Proscenium/0 63.94,51.81
|only if scenariostage(70)
step
clicknpc Elma##228419
kill Elma##228419
Train with Elma |scenariogoal 71/69444 |goto The Proscenium/0 64.42,55.39
|only if scenariostage(71)
step
clicknpc Burkhalt##228671
kill Burkhalt##228671
Train with Burkhalt |scenariogoal 72/69497 |goto The Proscenium/0 61.96,55.75
|only if scenariostage(72)
step
click Empty Mead Chalice##459376+
|tip They look like large cups on the highest balcony around this area.
|tip They appear on your minimap as yellow dots.
Collect #6# Chalices |scenariogoal 73/69501 |goto The Proscenium/0 50.59,19.88
|only if scenariostage(73)
step
click Leftover Costume##461540+
|tip They look like pieces of white clothing on the ground around this area.
Clean #5# Actor's Areas |scenariogoal 74/69514 |goto The Proscenium/0 53.47,77.52
|only if scenariostage(74)
step
extraaction Bow##433684
|tip Spam the ability on the screen for extra audience approval.
Take a Bow |scenariogoal 75/64783 |goto The Proscenium/0 49.56,53.58
|only if scenariostage(75)
step
Finding New Stage... |complete true |next "Begin_Theater"
|only if inscenario()
step
label "Earn_Audience_Approval"
Earn #50# Audience Approval |q 83240/1 |goto Isle of Dorn/0 56.45,50.56
|only if haveq(83240) or completedq(83240)
step
Complete a Theater Troupe Play |q 83240/2 |goto Isle of Dorn/0 56.45,50.56
|only if haveq(83240) or completedq(83240)
step
Complete the Theater Troupe Event |q 79282/1 |goto Isle of Dorn/0 56.45,50.56
|only if haveq(79282)
step
talk Stage Manager Huberta##214296
turnin The Grand Debut##79282 |goto Isle of Dorn/0 56.44,51.38 |only if haveq(79282)
turnin The Theater Troupe##83240 |goto Isle of Dorn/0 56.44,51.38
|only if haveq(83240,79282) or completedq(83240)
step
Awaiting New Play... |complete true |next "Begin_Theater"
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\Awakening the Machine/Snuffling Weeklies",{
startlevel=70,
areapoiid=8063,
patch='110002',
},[[
step
label "Accept_Weekly_Quest"
clicknpc Speaker Kuldas##217128
accept Gearing Up for Trouble##83333 |goto The Ringing Deeps/0 43.34,32.03
step
clicknpc Speaker Kuldas##217128
Select _"Let's go do some maintenance! <Awakening The Machine.>"_ |gossip 120609
|tip Click the {o}Begin Maintenance{} button.
Enter the Machine |scenariostart Awakening The Machine##2392 |goto The Ringing Deeps/0 43.34,32.03
step
use the Spare Toolbox##225767 |only if itemcount(225767) >= 1
|tip Use this to create a toolbox with buff abilities if you wish. |only if itemcount(225767) >= 1
|tip Click the toolbox that appears and choose the ability you prefer. |only if itemcount(225767) >= 1
talk Speaker Kuldas##210318
Select _"I'm ready to continue. <Start.>"_ |gossip 120555 |noautogossip
_Or_
Select _"I'm ready for a challenge, Kuldas.  <Start.>"_ |gossip 131897 |noautogossip
|tip You will need to defende Kuldas against enemies for 5 waves at a time.
|tip Each wave gets progressively more difficult.
|tip At the end of every five waves, you will be able to take a break as long as you need to prepare for the next.
|tip Challenge mode removes the break every 5 waves and speeds up enemy spawns.
Talk to Speaker Kuldas |scenariostage 1
step
Kill enemies that attack in waves |kill Swarmbot##229691,Corrupted Machinist##229695,Explosive Bomberbot##229706
|tip {o}Swarmbots{} speed up after being hit.
|tip Kill them before they can explode next to Kuldas.
|tip Inerrupt Machinists to kill them instantly.
|tip Machinists channel damage on their target.
|tip {o}Bomberbots{} need to be killed quickly so they don't explode within range of Kuldas.
Defend Speaker Kuldas |q 84631 |future
step
talk Speaker Kuldas##210318
|tip Take a short break to regain cooldowns and prepare for the next five waves.
|tip In addition to the previous mechanics, {o}Malfunctioning Pylons{} will spawn and channel blue beams on Kuldas.
|tip Kill them quickly before he takes too much damage.
Select _"I'm ready to continue.  <Start.>"_ |gossip 120555 |noautogossip
Begin the Next Sequence |complete machinewave() >= 6 |q 84632 |future
step
Kill enemies that attack in waves |kill Swarmbot##229691,Corrupted Machinist##229695,Explosive Bomberbot##229706,Malfunctioning Pylon##229739
|tip {o}Swarmbots{} speed up after being hit.
|tip Kill them before they can explode next to Kuldas.
|tip Inerrupt Machinists to kill them instantly.
|tip Machinists channel damage on their target.
|tip {o}Bomberbots{} need to be killed quickly so they don't explode within range of Kuldas.
|tip Stand in the path of blue beams from {o}Malfunctioning Pylons{} to prevent them from hitting Kuldas.
|tip Stay away from Kuldas if {o}Volatile Magma{} surrounds you and avoid puddles it drops.
Defend Speaker Kuldas |q 84632 |future
step
talk Speaker Kuldas##210318
|tip Take a short break to regain cooldowns and prepare for the next five waves.
|tip In addition to the previous mechanics, {o}Medbots{} drop green items that will heal Kuldas when you walk over them.
|tip They do not de-spawn so avoid using them until Kuldas is missing health.
|tip {o}Nullbots{} will channel damage reduction on nearby enemies.
Select _"I'm ready to continue.  <Start.>"_ |gossip 120555 |noautogossip
Begin the Next Sequence |complete machinewave() >= 11 |q 84633 |future
step
Kill enemies that attack in waves |kill Swarmbot##229691,Corrupted Machinist##229695,Explosive Bomberbot##229706,Malfunctioning Pylon##229739,Medbot##229769,Nullbot##229729
|tip {o}Swarmbots{} speed up after being hit.
|tip Kill them before they can explode next to Kuldas.
|tip Inerrupt Machinists to kill them instantly.
|tip Machinists channel damage on their target.
|tip {o}Bomberbots{} need to be killed quickly so they don't explode within range of Kuldas.
|tip Stand in the path of blue beams from {o}Malfunctioning Pylons{} to prevent them from hitting Kuldas.
|tip Stay away from Kuldas if {o}Volatile Magma{} surrounds you and avoid puddles it drops.
|tip {o}Nullbots{} will channel damage reduction on nearby enemies.
Defend Speaker Kuldas |q 84633 |future
step
talk Speaker Kuldas##210318
|tip Take a short break to regain cooldowns and prepare for the next five waves.
Select _"I'm ready to continue.  <Start.>"_ |gossip 120555 |noautogossip
Begin the Next Sequence |complete machinewave() >= 16 |q 84634 |future
step
Kill enemies that attack in waves |kill Swarmbot##229691,Corrupted Machinist##229695,Explosive Bomberbot##229706,Malfunctioning Pylon##229739,Medbot##229769,Nullbot##229729
|tip {o}Swarmbots{} speed up after being hit.
|tip Kill them before they can explode next to Kuldas.
|tip Inerrupt Machinists to kill them instantly.
|tip Machinists channel damage on their target.
|tip {o}Bomberbots{} need to be killed quickly so they don't explode within range of Kuldas.
|tip Stand in the path of blue beams from {o}Malfunctioning Pylons{} to prevent them from hitting Kuldas.
|tip Stay away from Kuldas if {o}Volatile Magma{} surrounds you and avoid puddles it drops.
|tip {o}Nullbots{} will channel damage reduction on nearby enemies.
Defend Speaker Kuldas |q 84634 |future
step
click Awakened Cache##465243
Loot the Awakened Cache |q 84642 |future |goto The Ringing Deeps/0 43.36,31.93
|only if completedq(84631)
step
click Awakened Cache##465242
Loot the Awakened Cache |q 84644 |future |goto The Ringing Deeps/0 43.38,32.02
|only if completedq(84632)
step
click Awakened Cache##465241
Loot the Awakened Cache |q 84646 |future |goto The Ringing Deeps/0 43.38,31.90
|only if completedq(84633)
step
click Awakened Cache##464938
Loot the Awakened Cache |q 84647 |future |goto The Ringing Deeps/0 43.39,31.97
|only if completedq(84634)
step
clicknpc Speaker Kuldas##217128
turnin Gearing Up for Trouble##83333 |goto The Ringing Deeps/0 43.34,32.03
step
talk Gnawbles##216164
|tip Inside the building.
accept Rollin' Down in the Deeps##82946 |goto The Ringing Deeps/0 43.50,35.29
step
click Disturbed Earth+
|tip They look like purple-outlined piles of dirt all over The Earthenworks area.
|tip These respawn constantly around this area, so fly circles until you finish.
Gather #10# Odd Globs of Wax |q 82946/1 |goto The Ringing Deeps/0 45.42,14.59
step
talk Gnawbles##216164
|tip Inside the building.
turnin Rollin' Down in the Deeps##82946 |goto The Ringing Deeps/0 43.50,35.29
step
You have completed Awakening the Machine this week
|tip This guide will reset when it becomes available again.
'|complete not completedq(83333,82946) |next "Accept_Weekly_Quest"
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\Weekly Meta Quests",{
startlevel=70,
patch='110002',
getquestonmap={2339},
},[[
step
label "Begin_Weekly_Quest"
Complete Part of The War Within Campaign |complete completedq(84446,79573)
|tip You must unlock adventure mode to do these quests.
|tip Progress through The War Within Campaign guide to accomplish this.
|loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The War Within Campaign"
step
talk Faerin Lothar##223875
|autoacceptany 82449,82452,82453,82458,"82482-82512",82516,82659,87423,87419,87417,89514,87424,87422,89502,91855
Accept a Weekly Quest |complete haveq(82452,82453,82458,"82482-82512",82516,82659,87423,87419,87417,89514,87424,87422,89502,91855) or completedq(82452,82453,82458,"82482-82512",82516,82659,87423,89514,87424,87422,89502) |goto Dornogal/0 46.06,49.61
|tip Choose the weekly quest to would prefer completing.
|tip Pay attention to the difficulty indicated on dungeon weekly quests.
|only if questonmap({2339},82449,82452,82453,82458,"82482-82512",82516,82659,87423,87419,87417,89514,87424,87422,89502,91855)
step
talk High Speaker Brinthe##226511
accept Archives: The First Disc##82678 |goto Dornogal/0 46.29,49.28 |only if default
accept Archives: Seeking History##82679 |goto Dornogal/0 46.29,49.28 |only if not completedq(82678)
|only if questonmap({2339},82678,82679)
step
talk Archivist Frithrun##226919
accept A Call to Battle##83345 |goto Dornogal/0 46.53,49.28 |only if questonmap({2339},83345)
accept Emissary of War##83347 |goto Dornogal/0 46.53,49.28 |only if questonmap({2339},83347)
accept The Very Best##83357 |goto Dornogal/0 46.53,49.28 |only if questonmap({2339},83357)
accept The Arena Calls##83358 |goto Dornogal/0 46.53,49.28 |only if questonmap({2339},83358)
accept A Shattered Path Through Time##83359 |goto Dornogal/0 46.53,49.28 |only if questonmap({2339},83359)
accept A Shrouded Path Through Time##83362 |goto Dornogal/0 46.53,49.28 |only if questonmap({2339},83362)
accept A Burning Path Through Time##83363 |goto Dornogal/0 46.53,49.28 |only if questonmap({2339},83363)
accept A Savage Path Through Time##83364 |goto Dornogal/0 46.53,49.28 |only if questonmap({2339},83364)
accept A Frozen Path Through Time##83365 |goto Dornogal/0 46.53,49.28 |only if questonmap({2339},83365)
accept A Fel Path Through Time##83360 |goto Dornogal/0 46.53,49.28 |only if questonmap({2339},83360)
accept The World Awaits##83366 |goto Dornogal/0 46.53,49.28 |only if questonmap({2339},83366)
accept A Call to Delves##84776 |goto Dornogal/0 46.53,49.28 |only if questonmap({2339},84776)
|tip Sometimes quest detection isn't reported properly for this NPC.
|tip Accept what you can and then skip this step.
|only if questonmap({2339},83357,83358,83359,"83362-83366",83345,83347,84776)
step
talk Biergoth##226623
|autoacceptany 83436,83443,83457,83458,83459,83465,83469,83432,86203
Accept a Weekly Dungeon Meta Quest |complete haveq(83436,83443,83457,83458,83459,83465,83469,83432,86203) |goto Dornogal/0 46.74,48.29
step
talk Brann Bronzebeard##206017
accept Delves: Breaking Tough to Loot Stuff##82746 |goto Dornogal/0 47.40,44.41 |only if questonmap({2339},82746)
accept Delves: Earthen Defense##82707 |goto Dornogal/0 47.40,44.41 |only if questonmap({2339},82707)
accept Delves: Empire-ical Exploration##82710 |goto Dornogal/0 47.40,44.41 |only if questonmap({2339},82710)
accept Delves: Worldwide Research##82706 |goto Dornogal/0 47.40,44.41 |only if questonmap({2339},82706)
accept Delves: Lost and Found##82711 |goto Dornogal/0 47.40,44.41 |only if questonmap({2339},82711)
accept Delves: Nerubian Menace##82708 |goto Dornogal/0 47.40,44.41 |only if questonmap({2339},82708)
accept Delves: Percussive Archaeology##82709 |goto Dornogal/0 47.40,44.41 |only if questonmap({2339},82709)
accept Delves: Trouble Up and Down Khaz Algar##82712 |goto Dornogal/0 47.40,44.41 |only if questonmap({2339},82712)
|only if questonmap({2339},82746,82707,82710,82706,82711,82708,82709,82712)
step
Complete the Ara-kara, City of Echoes Dungeon |q 82491/1
|tip You must complete this dungeon on {o}NORMAL{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Ara-kara, City of Echoes"
|only if haveq(82491)
step
Complete the Ara-kara, City of Echoes Dungeon |q 82494/1
|tip You must complete this dungeon on {o}HEROIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Ara-kara, City of Echoes"
|only if haveq(82494)
step
Complete the Ara-kara, City of Echoes Dungeon |q 82502/1
|tip You must complete this dungeon on {o}MYTHIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Ara-kara, City of Echoes"
|only if haveq(82502)
step
Defeat #20# Cumulative Waves of Enemies in the Awakening Machine |q 82511/1
|loadguide "Daily Guides\\The War Within (70-80)\\Awakening the Machine/Snuffling Weeklies"
|only if haveq(82511)
step
Complete the Cinderbrew Meadery Dungeon |q 82485/1
|tip You must complete this dungeon on {o}NORMAL{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Cinderbrew Meadery"
|only if haveq(82485)
step
Complete the Cinderbrew Meadery Dungeon |q 82495/1
|tip You must complete this dungeon on {o}HEROIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Cinderbrew Meadery"
|only if haveq(82495)
step
Complete the Cinderbrew Meadery Dungeon |q 82503/1
|tip You must complete this dungeon on {o}MYTHIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Cinderbrew Meadery"
|only if haveq(82503)
step
Complete the City of Threads Dungeon |q 82492/1
|tip You must complete this dungeon on {o}NORMAL{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\City of Threads"
|only if haveq(82492)
step
Complete the City of Threads Dungeon |q 82496/1
|tip You must complete this dungeon on {o}HEROIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\City of Threads"
|only if haveq(82496)
step
Complete the City of Threads Dungeon |q 82504/1
|tip You must complete this dungeon on {o}MYTHIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\City of Threads"
|only if haveq(82504)
step
Complete the Darkflame Cleft Dungeon |q 82488/1
|tip You must complete this dungeon on {o}NORMAL{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Darkflame Cleft"
|only if haveq(82488)
step
Complete the Darkflame Cleft Dungeon |q 82498/1
|tip You must complete this dungeon on {o}HEROIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Darkflame Cleft"
|only if haveq(82498)
step
Complete the Darkflame Cleft Dungeon |q 82506/1
|tip You must complete this dungeon on {o}MYTHIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Darkflame Cleft"
|only if haveq(82506)
stickystart "Complete_World_Quests_in_Khaz_Algar"
step
Complete the Theatre Troupe Event |q 82453/1
|loadguide "Daily Guides\\The War Within (70-80)\\Theater Troupe"
|only if haveq(82453)
step
label "Complete_World_Quests_in_Khaz_Algar"
Earn #100# Participation |q 82453/2
|tip Complete activities in the Theatre Troupe event quickly to earch more participation.
|only if haveq(82453)
stickystart "Slay_Rares_82516"
step
Complete #5# Pact Rumors |q 82516/2 |goto Azj-Kahet/0 56.96,46.67
|tip Rumors from various Weaver NPCs the City of Threads grant progress for this objective.
|only if haveq(82516)
step
label "Slay_Rares_82516"
Slay #4# Rare Creatures in Khaz Algar |q 82516/3
|tip Click rare POI icons to load appropriate locations and kill rares across Khaz Algar.
|only if haveq(82516)
step
Complete the Nerub-ar Palace Raid |q 82509/1
|tip You must complete this raid on {o}LFR{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Raids\\Nerub-ar Palace"
|only if haveq(82509)
step
Complete the Nerub-ar Palace Raid |q 82659/1
|tip You must complete this raid on {o}NORMAL{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Raids\\Nerub-ar Palace"
|only if haveq(82659)
step
Complete the Nerub-ar Palace Raid |q 82510/1
|tip You must complete this raid on {o}HEROIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Raids\\Nerub-ar Palace"
|only if haveq(82510)
step
Complete the Priory of the Sacred Flame Dungeon |q 82490/1
|tip You must complete this dungeon on {o}NORMAL{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Priory of the Sacred Flame"
|only if haveq(82490)
step
Complete the Priory of the Sacred Flame Dungeon |q 82499/1
|tip You must complete this dungeon on {o}HEROIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Priory of the Sacred Flame"
|only if haveq(82499)
step
Complete the Priory of the Sacred Flame Dungeon |q 82507/1
|tip You must complete this dungeon on {o}MYTHIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Priory of the Sacred Flame"
|only if haveq(82507)
step
Earn Reputation Throughout Khaz Algar |q 82458/1
|tip Complete world quests and zone side quests to earn renown with Khaz Algar factions.
|only if haveq(82458)
stickystart "Discover_Worldsoul_Motes"
step
click Disturbed Dirt+
|tip These can be found all over Khaz Algar and look like piles of dirt on the ground.
|tip They are usually outlined in purple.
|tip You will often need to avoid AoE on the ground or kill an enemy that spawns after clicking them.
Dig #5# Disturbed Dirt |q 82482/1
|only if haveq(82482)
step
label "Discover_Worldsoul_Motes"
Discover #45# Worldsoul Motes |q 82482/2
|tip Fly through glowing multi-colored orbs floating in the air all over Khaz Algar.
|only if haveq(82482)
step
Complete Spreading the Light Objectives and Slay Rares in Khaz Algar |q 82483/1
|tip Complete Spreading the Light bonus objectives in Hallowfall.
|only if haveq(82483)
step
Complete The Dawnbreaker Dungeon |q 82489/1
|tip You must complete this dungeon on {o}NORMAL{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Dawnbreaker"
|only if haveq(82489)
step
Complete The Dawnbreaker Dungeon |q 82493/1
|tip You must complete this dungeon on {o}HEROIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Dawnbreaker"
|only if haveq(82493)
step
Complete The Dawnbreaker Dungeon |q 82501/1
|tip You must complete this dungeon on {o}MYTHIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Dawnbreaker"
|only if haveq(82501)
step
Complete The Rookery Dungeon |q 82486/1
|tip You must complete this dungeon on {o}NORMAL{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Rookery"
|only if haveq(82486)
step
Complete The Rookery Dungeon |q 82500/1
|tip You must complete this dungeon on {o}HEROIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Rookery"
|only if haveq(82500)
step
Complete The Rookery Dungeon |q 82508/1
|tip You must complete this dungeon on {o}MYTHIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Rookery"
|only if haveq(82508)
step
Complete The Stonevault Dungeon |q 82487/1
|tip You must complete this dungeon on {o}NORMAL{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Stonevault"
|only if haveq(82487)
step
Complete The Stonevault Dungeon |q 82497/1
|tip You must complete this dungeon on {o}HEROIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Stonevault"
|only if haveq(82497)
step
Complete The Stonevault Dungeon |q 82505/1
|tip You must complete this dungeon on {o}MYTHIC{} difficulty or higher.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Stonevault"
|only if haveq(82505)
step
Slay a World Boss |q 82512/1
|tip Look for the world boss weekly quest in one of the four zones and click the icon to load the appropriate guide.
|only if haveq(82512)
step
Complete #6# World Quests in Khaz Algar |q 82452/1
|tip Click world quest icons in Khaz Algar zones to load the appropriate guide.
|tip Special Assignments require completion of the indicated number of world quests in that zone before they can be completed.
|only if haveq(82452)
step
Complete #6# World Quests in Undermine |q 87422/1
|tip Click world quest icons in the Undermine zone to load the appropriate guide.
|tip Special Assignments require completion of the indicated number of world quests in that zone before they can be completed.
|only if haveq(87422)
step
Complete #6# World Quests in K'aresh |q 91855/1
|tip Click world quest icons in the K'aresh zone to load the appropriate guide.
|tip Special Assignments require completion of the indicated number of world quests in that zone before they can be completed.
|only if haveq(91855)
step
Defeat All Available Bosses in The War Within |q 87424/1
|tip Click world quest icons for world bosses in TWW zones to load the appropriate guide.
|only if haveq(87424)
step
Defeat #5# Bosses Inside Revisited Horrific Visions |q 89514/1
|tip The vision each week alternates between Stormwind and Orgrimmar.
|tip There are 5 bosses total in each vision including the side areas.
|tip You may need multiple runs to complete this.
|loadguide "Events Guides\\The War Within (70-80)\\Revisited Horrific Vision of Orgrimmar"
|loadguide "Events Guides\\The War Within (70-80)\\Revisited Horrific Vision of Stormwind"
|only if haveq(89514)
step
Complete the Nightfall Scenario |q 89502/1
|tip The Nightfall scenario happens every hour at the beginning of the hour.
|loadguide "Events Guides\\The War Within (70-80)\\Nightfall"
|only if haveq(89502)
step
Defeat The Darkness |q 83443/1
|tip You can complete the Darkflame Cleft dungeon on any difficulty.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Darkflame Cleft"
|only if haveq(83443)
step
Purge the Skardyn Corruption |q 83457/1
|tip You can complete the The Stonevault dungeon on any difficulty.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Stonevault"
|only if haveq(83457)
step
Help Sister Etna Blayze Fight the Priory |q 83458/1
|tip You can complete the Priory of the Sacred Flame dungeon on any difficulty.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Priory of the Sacred Flame"
|only if haveq(83458)
step
Help General Steelstrike with Securing the Ceremony |q 83459/1
|tip You can complete the The Dawnbreaker dungeon on any difficulty.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Dawnbreaker"
|only if haveq(83459)
step
Disturb the Ara-Kara Operations |q 83465/1
|tip You can complete the Ara-kara, City of Echoes dungeon on any difficulty.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Ara-kara, City of Echoes"
|only if haveq(83465)
step
Eliminate the Threats in the City of Threads |q 83469/1
|tip You can complete the City of Threads dungeon on any difficulty.
|loadguide "Dungeon Guides\\The War Within Dungeons\\City of Threads"
|only if haveq(83469)
step
Put an End to the Skardyn Threat in The Rookery |q 83432/1
|tip You can complete the The Rookery dungeon on any difficulty.
|loadguide "Dungeon Guides\\The War Within Dungeons\\The Rookery"
|only if haveq(83432)
step
Remove the Venture Co. from the Cinderbrew Meadery |q 83436/1
|tip You can complete the the Cinderbrew Meadery dungeon on any difficulty.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Cinderbrew Meadery"
|only if haveq(83436)
step
Confront Geezle Gigazap within Operation: Floodgate |q 86203/1
|tip You can complete the the Operation: Floodgate dungeon on any difficulty.
|loadguide "Dungeon Guides\\The War Within Dungeons\\Operation: Floodgate"
|only if haveq(86203)
step
Defeat #5# Timewalking Raid Bosses or Dungeons |q 83363/1
|tip Queue for Burning Crusade Timewalking raids or dungeons.
|tip Entire dungeons completed count for one of the objectives.
|tip Each boss in a Timewalking raid counts for one objective.
|only if haveq(83363)
step
Defeat #5# Timewalking Raid Bosses or Dungeons |q 83365/1
|tip Queue for Wrath of the Lich King Timewalking raids or dungeons.
|tip Entire dungeons completed count for one of the objectives.
|tip Each boss in a Timewalking raid counts for one objective.
|only if haveq(83365)
step
Defeat #5# Timewalking Raid Bosses or Dungeons |q 83360/1
|tip Queue for Legion Timewalking raids or dungeons.
|tip Entire dungeons completed count for one of the objectives.
|tip Each boss in a Timewalking raid counts for one objective.
|only if haveq(83360)
step
Defeat #5# Timewalking Raid Bosses or Dungeons |q 83364/1
|tip Queue for Draenor Timewalking raids or dungeons.
|tip Entire dungeons completed count for one of the objectives.
|tip Each boss in a Timewalking raid counts for one objective.
|only if haveq(83364)
step
Defeat #5# Timewalking Raid Bosses or Dungeons |q 83362/1
|tip Queue for Pandaria Timewalking raids or dungeons.
|tip Entire dungeons completed count for one of the objectives.
|tip Each boss in a Timewalking raid counts for one objective.
|only if haveq(83362)
step
Defeat #5# Timewalking Raid Bosses or Dungeons |q 83359/1
|tip Queue for Cataclysm Timewalking raids or dungeons.
|tip Entire dungeons completed count for one of the objectives.
|tip Each boss in a Timewalking raid counts for one objective.
|only if haveq(83359)
step
Win #4# Battleground Matches |q 83345/1
|tip Queue for PvP battleground matches and win with your group.
|tip Having a small group of skilled friends will make this task easier.
|only if haveq(83345)
step
Complete #4# Dungeons on Heroic or Mythic Difficulty |q 83347/1
|tip Queue for heroic dungeons or form a group for heroic or mythic dungeons.
|tip Complete any Khaz Algar dungeons for credit towards this objective.
|tip Having a small group of skilled friends will make this task easier.
|only if haveq(83347)
step
Complete #5# Delves in Khaz Algar |q 84776/1
|tip Complete any Delves solo or with a group of your choosing.
|tip Having a small group of skilled friends will make this task easier.
|only if haveq(84776)
step
Defeat #5# Players in a Pet Battle |q 83357/1
|tip Challenge and defeat 5 other players in pet combat.
|only if haveq(83357)
step
Defeat #10# Arena Skirmish Battles |q 83358/1
|tip Join arena skirmishes and win 10 times.
|only if haveq(83358)
step
Complete #2# Delves of Tier 6 or Above |q 82746/1
|tip Choose any two delves you prefer and complete them on at least tier 6 difficulty.
|tip You must complete two {w}different{} delves.
|tip You will not receive credit if you do the same delve twice.
|only if haveq(82746)
step
Complete #3# Delves in TWW Zones |q 82706/1
|tip Choose any three delves you prefer and complete them.
|tip You must complete three {w}different{} delves.
|tip You will not receive credit if you do the same delve twice.
|only if haveq(82706)
step
Complete #2# Delves in the Isle of Dorn or The Ringing Deeps |q 82707/1
|tip Choose any two delves you prefer and complete them.
|tip Earthcrawl Mines, Kriegval's Rest, and Fungal Folly count in the Isle of Dorn.
|tip The Dread Pit and The Waterworks count in The Ringing Deeps.
|tip You must complete two {w}different{} delves.
|tip You will not receive credit if you do the same delve twice.
|only if haveq(82707)
step
Complete #2# Nerubian Delves |q 82708/1
|tip Choose any two nerubian delves you prefer and complete them.
|tip Earthcrawl Mines count in the Isle of Dorn.
|tip The Underkeep and The Spiral Weave count in Azj-Kahet.
|tip The Skittering Breach counts in Hallowfall.
|tip The Dread Pit counts in The Ringing Deeps.
|tip You must complete two {w}different{} delves.
|tip You will not receive credit if you do the same delve twice.
|only if haveq(82708)
step
collect 30 Khaz Algar Archaeological Fragments##224146 |q 82709/1
|tip Complete delves and loot these from the chests at the end.
|tip You can complete the same delve multiple times to loot these.
|only if haveq(82709)
step
Complete #2# Unique Delves in Hallowfall |q 82710/1
|tip Choose any two delves you prefer and complete them.
|tip Nightfall Sanctum, The Sinkhole, and Skittering Reach count in Hallowfall.
|tip You must complete two {w}different{} delves.
|tip You will not receive credit if you do the same delve twice.
|only if haveq(82710)
stickystart "Collect_Brann's_Compass"
stickystart "Collect_Brann's_Hat"
step
collect Brann's Letter Opener##224158 |q 82711/1
|tip Complete delves and loot these from the chests at the end.
|tip You must complete {w}different{} delves for each item.
|tip You will not receive another item if you do the same delve twice.
|only if haveq(82711)
step
label "Collect_Brann's_Compass"
collect Brann's Compass##224159 |q 82711/2
|tip Complete delves and loot these from the chests at the end. |notinsticky
|tip You must complete {w}different{} delves for each item. |notinsticky
|tip You will not receive another item if you do the same delve twice. |notinsticky
|only if haveq(82711)
step
label "Collect_Brann's_Hat"
collect Brann's Hat##224160 |q 82711/3
|tip Complete delves and loot these from the chests at the end. |notinsticky
|tip You must complete {w}different{} delves for each item. |notinsticky
|tip You will not receive another item if you do the same delve twice. |notinsticky
|only if haveq(82711)
stickystart "Complete_a_Delve_in_Azj'Kahet"
step
Complete a Delve in the Isle of Dorn |q 82712/1
|tip Earthcrawl Mines, Kriegval's Rest, and Fungal Folly count in the Isle of Dorn.
|only if haveq(82711)
step
label "Complete_a_Delve_in_Azj'Kahet"
Complete a Delve in Azj'Kahet |q 82712/2
|tip The Underkeep, the Tak-Rethan Abyss, and The Spiral Weave count in Azj-Kahet.
|only if haveq(82711)
stickystart "Complete_World_Quests"
step
Progress Further in the Campaign to Unlock The Archives |q 82678/1 |goto Vault of Memory/0 49.91,60.70
|loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\The War Within Campaign"
|only if haveq(82678)
step
click Waygate
|tip Inside the building.
Meet Brinthe in the Vault of Memory |q 82678/2 |goto Dornogal/0 29.76,59.68
|only if haveq(82678)
step
talk High Speaker Brinthe##226575
Select _"Understood. I'll bring any titan disc fragments I find back to Dagran."_ |gossip 124159
Speak with Brinthe |q 82678/3 |goto Vault of Memory/0 49.91,60.70
|only if haveq(82678)
step
Collect #100# Titan Disc Fragments |q 82678/4
|tip These drop from powerful enemies and encounters in Khaz Algar.
|tip Rares, world bosses, delves, and dungeons are good places to earn these.
|tip World bosses drop 50, so kill them after accepting this quest.
|tip Drops for these have been bugged in various forms since release, so you may need to try several different zones, dungeons, or delves.
|only if haveq(82678)
step
Collect #100# Titan Disc Fragments |q 82679/1
|tip These drop from powerful enemies and encounters in Khaz Algar.
|tip Rares, world bosses, delves, and dungeons are good places to earn these.
|tip World bosses drop 50, so kill them after accepting this quest.
|tip Drops for these have been bugged in various forms since release, so you may need to try several different zones, dungeons, or delves.
|only if haveq(82679)
step
label "Complete_World_Quests"
Complete #10# World Quests in Khaz Algar |q 83366/1
|tip Click world quest icons on the map to load the appropriate guide.
|only if haveq(83366)
stickystart "Kick_a_Discarded_Can"
stickystart "Hold_a_Drift"
step
|script DoEmote("DANCE")
Dance with #3# Denizens of Undermine |q 87423/3 |goto Undermine/0 25.65,54.70
|tip Emote dance with highlighted NPCs around this area.
|tip If you are dancing, nearby NPCs will run to you.
|only if haveq(87423)
step
label "Kick_a_Discarded_Can"
click Discarded Can##237073
|tip They look like small cans around this area.
|tip They appear on your minimap as yellow dots.
Kick a Discarded Can |q 87423/2 |goto Undermine/0 25.65,54.70
|only if haveq(87423)
step
|script DoEmote("TICKLE")
clicknpc Paks Topskimmer##231045
|tip Inside the building.
Tickle Paks Topskimmer |q 87423/4 |goto Undermine/0 43.51,51.67
|only if haveq(87423)
step
Get Kicked out of The Gallagio |q 87423/5 |goto Undermine/0 68.22,44.54
|tip Just try to walk inside.
|only if haveq(87423)
step
label "Hold_a_Drift"
cast G-99 Breakneck##460013
Hold a Drift #10# Times |q 87423/1 |goto Undermine/0 45.24,44.05
|tip Start moving in your G-99 Breakneck and hold the spacebar to start drifting in a slide.
|tip Drifting circles around the Intercontinental Hotel is a good spot.
|only if haveq(87423)
step
talk Faerin Lothar##223875
turnin Worldsoul: World Quests##82452 |goto Dornogal/0 46.06,49.61 |only if haveq(82452)
turnin Worldsoul: Encore!##82453 |goto Dornogal/0 46.06,49.61 |only if haveq(82453)
turnin Worldsoul: Renown##82458 |goto Dornogal/0 46.06,49.61 |only if haveq(82458)
turnin Worldsoul: Snuffling##82482 |goto Dornogal/0 46.06,49.61 |only if haveq(82482)
turnin Worldsoul: Spreading the Light##82483 |goto Dornogal/0 46.06,49.61 |only if haveq(82483)
turnin Worldsoul: Cinderbrew Meadery##82485 |goto Dornogal/0 46.06,49.61 |only if haveq(82485)
turnin Worldsoul: The Rookery##82486 |goto Dornogal/0 46.06,49.61 |only if haveq(82486)
turnin Worldsoul: The Stonevault##82487 |goto Dornogal/0 46.06,49.61 |only if haveq(82487)
turnin Worldsoul: Darkflame Cleft##82488 |goto Dornogal/0 46.06,49.61 |only if haveq(82488)
turnin Worldsoul: The Dawnbreaker##82489 |goto Dornogal/0 46.06,49.61 |only if haveq(82489)
turnin Worldsoul: Priory of the Sacred Flame##82490 |goto Dornogal/0 46.06,49.61 |only if haveq(82490)
turnin Worldsoul: Ara-Kara, City of Echoes##82491 |goto Dornogal/0 46.06,49.61 |only if haveq(82491)
turnin Worldsoul: City of Threads##82492 |goto Dornogal/0 46.06,49.61 |only if haveq(82492)
turnin Worldsoul: The Dawnbreaker##82493 |goto Dornogal/0 46.06,49.61 |only if haveq(82493)
turnin Worldsoul: Ara-Kara, City of Echoes##82494 |goto Dornogal/0 46.06,49.61 |only if haveq(82494)
turnin Worldsoul: Cinderbrew Meadery##82495 |goto Dornogal/0 46.06,49.61 |only if haveq(82495)
turnin Worldsoul: City of Threads##82496 |goto Dornogal/0 46.06,49.61 |only if haveq(82496)
turnin Worldsoul: The Stonevault##82497 |goto Dornogal/0 46.06,49.61 |only if haveq(82497)
turnin Worldsoul: Undermine Explorer##87423 |goto Dornogal/0 46.06,49.61 |only if haveq(87423)
|only if haveq(82452,82453,82458,"82482-82497",87423)
step
talk Faerin Lothar##223875
turnin Worldsoul: Darkflame Cleft##82498 |goto Dornogal/0 46.06,49.61 |only if haveq(82498)
turnin Worldsoul: Priory of the Sacred Flame##82499 |goto Dornogal/0 46.06,49.61 |only if haveq(82499)
turnin Worldsoul: The Rookery##82500 |goto Dornogal/0 46.06,49.61 |only if haveq(82500)
turnin Worldsoul: The Dawnbreaker##82501 |goto Dornogal/0 46.06,49.61 |only if haveq(82501)
turnin Worldsoul: Ara-Kara, City of Echoes##82502 |goto Dornogal/0 46.06,49.61 |only if haveq(82502)
turnin Worldsoul: Cinderbrew Meadery##82503 |goto Dornogal/0 46.06,49.61 |only if haveq(82503)
turnin Worldsoul: City of Threads##82504 |goto Dornogal/0 46.06,49.61 |only if haveq(82504)
turnin Worldsoul: The Stonevault##82505 |goto Dornogal/0 46.06,49.61 |only if haveq(82505)
turnin Worldsoul: Darkflame Cleft##82506 |goto Dornogal/0 46.06,49.61 |only if haveq(82506)
turnin Worldsoul: Priory of the Sacred Flame##82507 |goto Dornogal/0 46.06,49.61 |only if haveq(82507)
turnin Worldsoul: The Rookery##82508 |goto Dornogal/0 46.06,49.61 |only if haveq(82508)
turnin Worldsoul: Nerub-ar Palace##82509 |goto Dornogal/0 46.06,49.61 |only if haveq(82509)
turnin Worldsoul: Nerub-ar Palace##82510 |goto Dornogal/0 46.06,49.61 |only if haveq(82510)
turnin Worldsoul: Awakening Machine##82511 |goto Dornogal/0 46.06,49.61 |only if haveq(82511)
turnin Worldsoul: World Boss##82512 |goto Dornogal/0 46.06,49.61 |only if haveq(82512)
turnin Worldsoul: Forging a Pact##82516 |goto Dornogal/0 46.06,49.61 |only if haveq(82516)
turnin Worldsoul: Nerub-ar Palace##82659 |goto Dornogal/0 46.06,49.61 |only if haveq(82659)
turnin Worldsoul: Dungeons##87417 |goto Dornogal/0 46.06,49.61 |only if haveq(87417)
turnin Worldsoul: Delves##87419 |goto Dornogal/0 46.06,49.61 |only if haveq(87419)
|only if haveq("82498-82512",82516,82659,87417,87419)
step
talk Faerin Lothar##223875
turnin Worldsoul: Horrific Visions Revisited##89514 |goto Dornogal/0 46.06,49.61 |only if haveq(89514)
turnin Worldsoul: World Bosses##87424 |goto Dornogal/0 46.06,49.61 |only if haveq(87424)
turnin Worldsoul: Undermine World Quests##87422 |goto Dornogal/0 46.06,49.61 |only if haveq(87422)
turnin Worldsoul: Nightfall##89502 |goto Dornogal/0 46.06,49.61 |only if haveq(89502)
turnin Worldsoul: Delves##87419 |goto Dornogal/0 46.06,49.61 |only if haveq(87419)
turnin Worldsoul: K'aresh World Quests##91855 |goto Dornogal/0 46.06,49.61 |only if haveq(91855)
|only if haveq(89514,87424,87422,89502,91855)
step
talk Dagran Thaurissan II##226543
turnin Archives: The First Disc##82678 |goto Vault of Memory/0 50.76,61.62 |only if haveq(82678) or completedq(82678)
turnin Archives: Seeking History##82679 |goto Vault of Memory/0 50.76,61.62 |only if haveq(82679) or completedq(82679)
|only if haveq(82678,82679) or completedq(82678,82679)
step
talk Archivist Frithrun##226919
turnin The Very Best##83357 |goto Dornogal/0 46.53,49.28 |only if haveq(83357) or completedq(83357)
turnin The Arena Calls##83358 |goto Dornogal/0 46.53,49.28 |only if haveq(83358) or completedq(83358)
turnin A Call to Battle##83345 |goto Dornogal/0 46.53,49.28 |only if haveq(83345) or completedq(83345)
turnin Emissary of War##83347 |goto Dornogal/0 46.53,49.28 |only if haveq(83347) or completedq(83347)
turnin A Shattered Path Through Time##83359 |goto Dornogal/0 46.53,49.28 |only if haveq(83359) or completedq(83359)
turnin A Shrouded Path Through Time##83362 |goto Dornogal/0 46.53,49.28 |only if haveq(83362) or completedq(83362)
turnin A Burning Path Through Time##83363 |goto Dornogal/0 46.53,49.28 |only if haveq(83363) or completedq(83363)
turnin A Savage Path Through Time##83364 |goto Dornogal/0 46.53,49.28 |only if haveq(83364) or completedq(83364)
turnin A Frozen Path Through Time##83365 |goto Dornogal/0 46.53,49.28 |only if haveq(83365) or completedq(83365)
turnin A Fel Path Through Time##83360 |goto Dornogal/0 46.53,49.28 |only if haveq(83360) or completedq(83360)
turnin The World Awaits##83366 |goto Dornogal/0 46.53,49.28 |only if haveq(83366) or completedq(83366)
turnin A Call to Delves##84776 |goto Dornogal/0 46.53,49.28 |only if haveq(84776) or completedq(84776)
|only if haveq("83357-83360","83362-83366",83345,83347,84776) or completedq("83357-83360","83362-83366",83345,83347,84776)
step
talk Biergoth##226623
turnin Darkflame Cleft##83443 |goto Dornogal/0 46.74,48.29 |only if haveq(83443) or completedq(83443)
turnin The Stonevault##83457 |goto Dornogal/0 46.74,48.29 |only if haveq(83457) or completedq(83457)
turnin Priory of the Sacred Flame##83458 |goto Dornogal/0 46.74,48.29 |only if haveq(83458) or completedq(83458)
turnin The Dawnbreaker##83459 |goto Dornogal/0 46.74,48.29 |only if haveq(83459) or completedq(83459)
turnin Ara-Kara, City of Echoes##83465 |goto Dornogal/0 46.74,48.29 |only if haveq(83465) or completedq(83465)
turnin City of Threads##83469 |goto Dornogal/0 46.74,48.29 |only if haveq(83469) or completedq(83469)
turnin The Rookery##83432 |goto Dornogal/0 46.74,48.29 |only if haveq(83432) or completedq(83432)
turnin Cinderbrew Meadery##83436 |goto Dornogal/0 46.74,48.29 |only if haveq(83436) or completedq(83436)
turnin Operation: Floodgate##86203 |goto Dornogal/0 46.74,48.29 |only if haveq(86203) or completedq(86203)
|only if haveq(83443,83457,83458,83459,83465,83469,83432,83436,86203) or completedq(83443,83457,83458,83459,83465,83469,83432,83436,86203)
step
talk Brann Bronzebeard##206017
turnin Delves: Breaking Tough to Loot Stuff##82746 |goto Dornogal/0 47.40,44.41 |only if haveq(82746) or completedq(82746)
turnin Delves: Earthen Defense##82707 |goto Dornogal/0 47.40,44.41 |only if haveq(82707) or completedq(82707)
turnin Delves: Empire-ical Exploration##82710 |goto Dornogal/0 47.40,44.41 |only if haveq(82710) or completedq(82710)
turnin Delves: Worldwide Research##82706 |goto Dornogal/0 47.40,44.41 |only if haveq(82706) or completedq(82706)
turnin Delves: Lost and Found##82711 |goto Dornogal/0 47.40,44.41 |only if haveq(82711) or completedq(82711)
turnin Delves: Nerubian Menace##82708 |goto Dornogal/0 47.40,44.41 |only if haveq(82708) or completedq(82708)
turnin Delves: Percussive Archaeology##82709 |goto Dornogal/0 47.40,44.41 |only if haveq(82709) or completedq(82709)
turnin Delves: Trouble Up and Down Khaz Algar##82712 |goto Dornogal/0 47.40,44.41 |only if haveq(82712) or completedq(82712)
|only if haveq(82746,"82706-82712") or completedq(82746,"82706-82712")
step
You have completed the weekly quest this week
|tip This guide will reset when another becomes available.
'|complete not completedq(82678,82746,"82706-82712",83345,83347,"83357-83360",84776,"83362-83366",83443,"83457-83459",83465,83469,83432,83436) |next "Begin_Weekly_Quest"
'|complete not completedq(82452,82453,82458,"82482-82512",82516,82659,87417,87419,89514,87424,87422,89502,91855) |next "Begin_Weekly_Quest" |only if not questactive(82678,82679) and not completedq(82678,82679)
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\Spreading the Light Keyflame Weekly Quests",{
startlevel=80,
areapoiid={8064},
patch='110002',
},[[
step
talk Auralia Steelstrike##213145
accept The Light's Call##81990 |goto Hallowfall/0 41.27,53.05
step
talk Keyrra Flamestonge##215527
turnin The Light's Call##81990 |goto Hallowfall/0 65.45,32.23
step
label "Begin_Weekly_Quests"
talk Keyrra Flamestonge##215527
accept Defender of the Flame##76588 |goto Hallowfall/0 65.45,32.23
stickystart "Slay_Rare_Creatures"
step
kill Kobyss Harvester##214389+
|tip You can find them all over the waterway.
|tip Most mobs drop shards, but these drop Shadowblind Grouper for a weekly quest and a rare.
click Radiant Remnant+
|tip They look like tiny crystals on the ground all over this area.
collect 24 Radiant Remnant##206350 |goto Hallowfall/0 63.13,24.76
|tip You can skip this step and collect them as you complete each Keyflame if you wish.
step
kill Kobyss Harvester##214389+
|tip You can find them all over the waterway.
|tip Most mobs drop shards, but these drop Shadowblind Grouper for a weekly quest and a rare.
click Radiant Remnant+
|tip They look like tiny crystals on the ground all over this area.
collect 3 Radiant Remnant##206350 |goto Hallowfall/0 63.13,24.76 |q 79383 |future
step
click Lesser Keyflame
accept Web of Manipulation - Activate##79383 |goto Hallowfall/0 63.32,29.43
step
click Lesser Keyflame
|tip Click it twice to turn in the quest.
turnin Web of Manipulation - Activate##79383 |goto Hallowfall/0 63.32,29.43
step
talk Erol Ellimoore##206150
|tip He runs to this location.
|autoacceptany 79216,79173
Accept the Daily Quest |complete haveq(79216,79173) or completedq(79216,79173) |goto Hallowfall/0 63.21,29.42
step
Investigate the Location |q 79216/1 |goto Hallowfall/0 66.81,21.49
|only if haveq(79216) or completedq(79216)
step
kill Sakret'na##215841 |q 79216/2 |goto Hallowfall/0 66.83,21.52
|tip It walks around this area.
|only if haveq(79216) or completedq(79216)
step
Click various objects
|tip Click Arathi Toolboxes, Fallow Corn, Harvest Wine, and Hallowfall Farm Supplies
Recover Any Supplies you Can Find |q 79173/1 |goto Hallowfall/0 64.67,29.94
|only if haveq(79173) or completedq(79173)
step
talk Erol Ellimoore##206150
turnin Web of Manipulation##79216 |goto Hallowfall/0 63.21,29.42 |only if haveq(79216) or completedq(79216)
turnin Supply the Effort##79173 |goto Hallowfall/0 63.21,29.42 |only if haveq(79173) or completedq(79173)
|only if haveq(79216,79173) or completedq(79216,79173)
step
kill Kobyss Harvester##214389+
|tip You can find them all over the waterway.
|tip Most mobs drop shards, but these drop Shadowblind Grouper for a weekly quest and a rare.
click Radiant Remnant+
|tip They look like tiny crystals on the ground all over this area.
collect 3 Radiant Remnant##206350 |goto Hallowfall/0 63.13,24.76 |q 76599 |future
step
click Lesser Keyflame
accept Right Between Gyro-Optics - Activate##76599 |goto Hallowfall/0 65.39,28.10
step
click Lesser Keyflame
|tip Click it twice to turn in the quest.
turnin Right Between Gyro-Optics - Activate##76599 |goto Hallowfall/0 65.39,28.10
step
talk Auebry Irongear##206441
|tip She runs to this location.
|autoacceptany 79158,76733,76600
Accept the Daily Quest |complete haveq(79158,76733,76600) or completedq(79158,76733,76600) |goto Hallowfall/0 65.25,28.05
step
click Harvest Seed Supply##416413+
|tip They look like small bags on the ground around this area.
|tip They also drop from harvesters when they die.
kill Dark-Crazed Harvester##206067+
collect Harvest Seed Supply##211947 |n
clicknpc Seed-Ready Soil##215300+
|tip They look like piles of soil on the ground around this area.
Plant #8# Harvest Seeds |q 79158/2 |goto Hallowfall/0 64.95,26.80
|only if haveq(79158) or completedq(79158)
stickystart "Collect_Firelight_Spuds"
step
clicknpc Dark-Crazed Harvester##206067
Light the Harvest Torch |q 76733/1 |goto Hallowfall/0 66.17,28.26 |count 1
|only if haveq(76733) or completedq(76733)
step
clicknpc Dark-Crazed Harvester##206067
Light the Harvest Torch |q 76733/1 |goto Hallowfall/0 65.69,29.32 |count 2
|only if haveq(76733) or completedq(76733)
step
clicknpc Dark-Crazed Harvester##206067
Light the Harvest Torch |q 76733/1 |goto Hallowfall/0 64.42,28.94 |count 3
|only if haveq(76733) or completedq(76733)
step
clicknpc Dark-Crazed Harvester##206067
Light the Harvest Torch |q 76733/1 |goto Hallowfall/0 65.02,28.57 |count 4
|only if haveq(76733) or completedq(76733)
step
clicknpc Dark-Crazed Harvester##206067
Light the Harvest Torch |q 76733/1 |goto Hallowfall/0 65.49,27.19 |count 5
|only if haveq(76733) or completedq(76733)
step
label "Collect_Firelight_Spuds"
click Firelight Truffle+
|tip They look like small potatoes that drop after clicking torches.
collect 15 Firelight Spud##210745 |q 76733/2 |goto Hallowfall/0 65.38,28.24
|only if haveq(76733) or completedq(76733)
step
use Auebry's Marker Pistol##207084
|tip Use it on harvesters to mark them for Auebry's attack.
kill 8 Dark-Crazed Harvester##206067 |q 76600/1 |goto Hallowfall/0 64.82,26.44
|only if haveq(76600) or completedq(76600)
step
talk Auebry Irongear##206441
turnin Seeds of Salvation##79158 |goto Hallowfall/0 65.25,28.05 |only if haveq(79158) or completedq(79158)
turnin Tater Trawl##76733 |goto Hallowfall/0 65.25,28.05 |only if haveq(76733) or completedq(76733)
turnin Right Between the Gyro-Optics##76600 |goto Hallowfall/0 65.25,28.05 |only if haveq(76600) or completedq(76600)
|only if haveq(79158,76733,76600) or completedq(79158,76733,76600)
step
kill Kobyss Harvester##214389+
|tip You can find them all over the waterway.
|tip Most mobs drop shards, but these drop Shadowblind Grouper for a weekly quest and a rare.
click Radiant Remnant+
|tip They look like tiny crystals on the ground all over this area.
collect 3 Radiant Remnant##206350 |goto Hallowfall/0 63.13,24.76 |q 78452 |future
step
click Lesser Keyflame
accept Reinforcements - Activate##78452 |goto Hallowfall/0 64.56,30.58
step
click Lesser Keyflame
|tip Click it twice to turn in the quest.
turnin Reinforcements - Activate##78452 |goto Hallowfall/0 64.56,30.58
step
talk Yorvas Flintstrike##208186
|autoacceptany 81574,76997
Accept the Daily Quest |complete haveq(81574,76997) or completedq(81574,76997) |goto Hallowfall/0 64.59,30.69
stickystart "Burn_Gloomgrowth"
step
kill Gloomsprout##215501 |q 81574/2 |goto Hallowfall/0 68.10,27.37
|only if haveq(81574) or completedq(81574)
step
label "Burn_Gloomgrowth"
use the Patrol Torch##211872
|tip Use it on Gloomgrowth on the ground around this area.
kill Mature Gloomgrowth##220938+
Burn #15# Gloomgrowth with the Patrol Torch |q 81574/1 |goto Hallowfall/0 68.10,27.37
|only if haveq(81574) or completedq(81574)
step
extraaction Show The Light##430551
|tip It appears as a button on your screen.
Rally the Demoralized Recruit |q 76997/1 |goto Hallowfall/0 63.75,25.86 |count 1
|only if haveq(76997) or completedq(76997)
step
extraaction Show The Light##430551
|tip It appears as a button on your screen.
Rally the Demoralized Recruit |q 76997/1 |goto Hallowfall/0 66.40,28.22 |count 2
|only if haveq(76997) or completedq(76997)
step
extraaction Show The Light##430551
|tip It appears as a button on your screen.
Rally the Demoralized Recruit |q 76997/1 |goto Hallowfall/0 67.80,28.74 |count 3
|only if haveq(76997) or completedq(76997)
step
talk Yorvas Flintstrike##208186
turnin Sporadic Growth##81574 |goto Hallowfall/0 64.59,30.69 |only if haveq(81574) or completedq(81574)
turnin Lost in Shadows##76997 |goto Hallowfall/0 64.59,30.69 |only if haveq(76997) or completedq(76997)
|only if haveq(81574,76997) or completedq(81574,76997)
step
kill Kobyss Harvester##214389+
|tip You can find them all over the waterway.
|tip Most mobs drop shards, but these drop Shadowblind Grouper for a weekly quest and a rare.
click Radiant Remnant+
|tip They look like tiny crystals on the ground all over this area.
collect 3 Radiant Remnant##206350 |goto Hallowfall/0 63.13,24.76 |q 78466 |future
step
click Lesser Keyflame
accept Shadows of Flavor - Activate##78466 |goto Hallowfall/0 64.42,30.94
step
click Lesser Keyflame
|tip Click it twice to turn in the quest.
turnin Shadows of Flavor - Activate##78466 |goto Hallowfall/0 64.42,30.94
step
talk Chef Dinaire##206533
|autoacceptany 78933,80562,76394
Accept the Daily Quest |complete haveq(78933,80562,76394) or completedq(78933,80562,76394) |goto Hallowfall/0 64.47,31.08
step
click Ethereal Sugar##414700
|tip Inside the building.
collect Ethereal Sugar##219808 |q 78933/3 |q 78933/3 |goto Hallowfall/0 64.19,28.08
|only if haveq(78933) or completedq(78933)
step
click Darkroot Persimmon##414699+
|tip They look like large fruit on the ground and on vines around this area.
collect 8 Darkroot Persimmon##211478 |q 78933/2 |goto Hallowfall/0 65.72,31.78
|only if haveq(78933) or completedq(78933)
step
kill Shadowstarved Bullfrog##214406+
collect 30 Frog-Kissed Caviar##211479 |q 78933/1 |goto Hallowfall/0 66.19,24.93
|only if haveq(78933) or completedq(78933)
step
Enter the cave |goto Hallowfall/0 70.90,31.00 < 10 |walk
click Ever-Blossoming Fungi+
|tip They look like clusters of blue mushrooms inside the Mycomancer Cavern delve.
collect 20 Ever-Blossoming Fungi##218127 |q 80562/1 |goto Mycomancer Cavern/0 42.95,62.08
|only if haveq(80562) or completedq(80562)
step
click Shadowrooted Vine##206820+
|tip Click weeds and run away to pull them.
|tip Be sure to have the tendril targeted.
collect 5 Dark-Nurtured Scallions##206601 |q 76394/1 |goto Hallowfall/0 63.99,32.27
|only if haveq(76394) or completedq(76394)
step
talk Marisa Korwahl##206151
|tip You may need to free her from webs.
buy Twilight Spice##211475 |q 76394/3 |goto Hallowfall/0 63.14,28.41
|only if haveq(76394) or completedq(76394)
step
kill Kobyss Harvester##214389+
|tip You can find them all over the waterway.
click Shadowblind Grouper+
|tip They look like fish laying in the water along the waterway.
collect 10 Shadowblind Grouper##211474 |q 76394/2 |goto Hallowfall/0 63.13,24.76
|only if haveq(76394) or completedq(76394)
step
talk Chef Dinaire##206533
turnin The Sweet Eclipse##78933 |goto Hallowfall/0 64.47,31.08 |only if haveq(78933) or completedq(78933)
turnin Blossoming Delight##80562 |goto Hallowfall/0 64.47,31.08 |only if haveq(80562) or completedq(80562)
turnin Shadows of Flavor##76394 |goto Hallowfall/0 64.47,31.08 |only if haveq(76394) or completedq(76394)
|only if haveq(78933,80562,76394) or completedq(78933,80562,76394)
step
kill Kobyss Harvester##214389+
|tip You can find them all over the waterway.
|tip Most mobs drop shards, but these drop Shadowblind Grouper for a weekly quest and a rare.
click Radiant Remnant+
|tip They look like tiny crystals on the ground all over this area.
collect 3 Radiant Remnant##206350 |goto Hallowfall/0 63.13,24.76 |q 78458 |future
step
click Lesser Keyflame
accept Havrest Havoc - Activator##78458 |goto Hallowfall/0 63.64,33.63
step
click Lesser Keyflame
|tip Click it twice to turn in the quest.
turnin Havrest Havoc - Activator##78458 |goto Hallowfall/0 63.64,33.63
step
talk Seraphine Seedheart##214428
|autoacceptany 78915,78972
Accept the Daily Quest |complete haveq(78915,78972) or completedq(78915,78972) |goto Hallowfall/0 63.66,33.91
stickystart "Remove_Shadow-Soured_Squash"
step
kill Shadow-Sour Mite##214317
|tip They also spawn from squash.
Slay #10# Shadow-Sour Mites |q 78915/2 |goto Hallowfall/0 62.30,32.68
You can find more around [Hallowfall/0 63.84,32.83]
|only if haveq(78915) or completedq(78915)
step
label "Remove_Shadow-Soured_Squash"
click Shadow-Soured Squash+
|tip They look like giant pumpkins on the ground around this area.
Remove #8# Shadow-Soured Squash |q 78915/1 |goto Hallowfall/0 62.40,32.50
You can find more around [Hallowfall/0 63.84,32.83] |notinsticky
|only if haveq(78915) or completedq(78915)
step
clicknpc Harvestbot Remy##207134
Control Harvestbot Remy |q 78972/1 |goto Hallowfall/0 63.66,33.49
|only if haveq(78972) or completedq(78972)
step
Cross the bridge |goto Hallowfall/0 63.02,32.04 < 10 |walk |only if not subzone("Duskrise Acreage")
Load #4# Cabbage onto the Cart |q 78972/2 |goto Hallowfall/0 62.14,32.38
|tip Stand on the cabbage and use the {o}Throw Cabbage{} ability on Cabbage Cart-Pushers walking around.
'|clicknpc Cabbage Cart-Pusher##214567
|only if haveq(78972) or completedq(78972)
step
Load #4# Carrots onto the Cart |q 78972/3 |goto Hallowfall/0 61.64,31.58
|tip Stand on the cabbage and use the {o}Throw Carrot{} ability on Cabbage Cart-Pushers walking around.
'|clicknpc Cabbage Cart-Pusher##214567
|only if haveq(78972) or completedq(78972)
step
clicknpc Strange Dirt##207165
|tip Use the {o}Remy Jump{} ability on your vehicle bar on piles of Strange Dirt to spawn mites.
|tip Use the {o}Bug Broiler{} ability on your vehicle bar to kill them.
Slay #12# Shadow-Sour Mites |q 78972/4 |goto Hallowfall/0 62.23,32.97
|only if haveq(78972) or completedq(78972)
step
Leave the Harvestbot |outvehicle |script VehicleExit()
|only if haveq(78972) or completedq(78972)
step
talk Seraphine Seedheart##214428
turnin Squashing the Threat##78915 |goto Hallowfall/0 63.66,33.91 |only if haveq(78915) or completedq(78915)
turnin Harvest Havoc##78972 |goto Hallowfall/0 63.66,33.91 |only if haveq(78972) or completedq(78972)
|only if haveq(78915,78972) or completedq(78915,78972)
step
kill Kobyss Harvester##214389+
|tip You can find them all over the waterway.
|tip Most mobs drop shards, but these drop Shadowblind Grouper for a weekly quest and a rare.
click Radiant Remnant+
|tip They look like tiny crystals on the ground all over this area.
collect 3 Radiant Remnant##206350 |goto Hallowfall/0 63.13,24.76 |q 79295 |future
step
click Lesser Keyflame
accept Hose 'Em Down - Activate##79295 |goto Hallowfall/0 65.83,24.42
step
click Lesser Keyflame
|tip Click it twice to turn in the quest.
turnin Hose 'Em Down - Activate##79295 |goto Hallowfall/0 65.83,24.42
step
talk Taerry Bilgestone##215956
|autoacceptany 79346,78656
Accept the Daily Quest |complete haveq(79346,78656) or completedq(79346,78656) |goto Hallowfall/0 65.77,24.40
step
click Duskstem Stalk##423714+
|tip They look like sparkling flowers on the tops of giant green plants all over this area.
collect 20 Duskstem##215447 |q 79346/1 |goto Hallowfall/0 67.25,28.33
|only if haveq(79346) or completedq(79346)
step
clicknpc Baeny the Barrel##215971
Activate Baeny The Barrel |q 78656/1 |goto Hallowfall/0 65.80,24.30
|only if haveq(78656) or completedq(78656)
step
extraaction Water Hose##430811
|tip Use the button on the screen on big and small yellow bubbles on the ground near the water around this area.
Wash Away #40# Contaminated Goo |q 78656/2 |goto Hallowfall/0 66.48,23.72
|only if haveq(78656) or completedq(78656)
step
talk Taerry Bilgestone##215956
turnin Chew On That##79346 |goto Hallowfall/0 65.77,24.40 |only if haveq(79346) or completedq(79346)
turnin Hose It Down##78656 |goto Hallowfall/0 65.77,24.40 |only if haveq(78656) or completedq(78656)
|only if haveq(79346,78656) or completedq(79346,78656)
step
kill Kobyss Harvester##214389+
|tip You can find them all over the waterway.
|tip Most mobs drop shards, but these drop Shadowblind Grouper for a weekly quest and a rare.
click Radiant Remnant+
|tip They look like tiny crystals on the ground all over this area.
collect 3 Radiant Remnant##206350 |goto Hallowfall/0 63.13,24.76 |q 78472 |future |only if default
collect 9 Radiant Remnant##206350 |goto Hallowfall/0 63.13,24.76 |q 78472 |future |only if not hasbuff(439572) and itemcount(217344) == 0 and not completedq(82007)
|tip You will need 6 more remnants than normal to buy an item for a one-time quest. |only if not hasbuff(439572) and itemcount(217344) == 0 and not completedq(82007)
step
click Lesser Keyflame
accept Glow In The Dark - Activate##78472 |goto Hallowfall/0 64.38,18.74
step
click Lesser Keyflame
|tip Click it twice to turn in the quest.
turnin Glow In The Dark - Activate##78472 |goto Hallowfall/0 64.38,18.74
step
talk Attica Whiskervale##212419
Select _"Who is Captain Lancekat?"_ |gossip 121078
Select _"What happened to the Lynx?"_ |gossip 121086
Unlock the Extra Quest |q 82006 |goto Hallowfall/0 64.45,18.82 |future
|tip You can unlock an additional non-weekly quest through dialogue.
|only if not completedq(82006)
step
talk Attica Whiskervale##212419
accept Tale of Tails##82007 |goto Hallowfall/0 64.45,18.82
|only if not completedq(82007)
step
talk Attica Whiskervale##212419
|autoacceptany 76169,81632
Accept the Daily Quest |complete haveq(76169,81632) or completedq(76169,81632) |goto Hallowfall/0 64.45,18.82
step
talk Attica Whiskervale##212419
Select _"Let me browse your goods."_ |gossip 120981
buy Sentry Flare Launcher##217344 |goto Hallowfall/0 64.45,18.82 |q 82007
|only if haveq(82007)
step
Enter the cave |goto Hallowfall/0 65.84 18.77 < 10 |walk
extraaction Sentry Flare##427993
|tip Use the ability on the screen inside the cave at this location to reveal Beef.
clicknpc Beef##222373
|tip Inside the cave.
Find Lynx Kitten Beef |q 82007/1 |goto Hallowfall/0 66.31,15.69
|only if haveq(82007)
step
clicknpc Beans##222372
|tip It runs around the large keyflame.
Find Lynx Kitten Beans |q 82007/2 |goto Hallowfall/0 63.90,19.70
|only if haveq(82007)
step
clicknpc Thunder##222375
Find Lynx Kitten Thunder |q 82007/3 |goto Hallowfall/0 61.98,20.78
|only if haveq(82007)
step
clicknpc Cap'n Alaena##222374
|tip It walks around this area.
Find Lynx Kitten Cap'n Alaena |q 82007/4 |goto Hallowfall/0 66.82,21.18
|only if haveq(82007)
step
Enter the cave |goto Hallowfall/0 65.91,18.69 < 15 |walk
use Attica's Cave Torch##219198
Activate Attica's Cave Torch |q 76169/1 |goto Hallowfall/0 66.20,16.10
|only if haveq(76169) or completedq(76169)
stickystart "Collect_Dauntless_Draught"
step
talk "Peevish" Paeton Berncort##205797
Select _"Attica asked me to find you."_ |gossip 121304
|tip Walk near Shadowy Forms until one becomes friendly.
|tip Look for the one with a yellow quest ring below it.
Locate Peevish Paeton Berncort |q 76169/2 |goto Hallowfall/0 65.18,16.60
|only if haveq(76169) or completedq(76169)
step
label "Collect_Dauntless_Draught"
click Dauntless Draught##403458+
|tip They look like tiny bottles that show up near your light.
collect 8 Dauntless Draught##206203 |q 76169/3 |goto Hallowfall/0 65.95,15.88
|only if haveq(76169) or completedq(76169)
stickystart "Recover_Camp_Supplies"
step
kill Reekscale##221076 |q 81632/2 |goto Hallowfall/0 61.60,20.51
|only if haveq(81632) or completedq(81632)
step
label "Recover_Camp_Supplies"
click Camp Supplies+
|tip They look like small brown crates on the ground around this area.
Recover #8# Camp Supplies |q 81632/1 |goto Hallowfall/0 63.46,20.20
|only if haveq(81632) or completedq(81632)
step
talk Attica Whiskervale##212419
turnin Glow in the Dark##76169 |goto Hallowfall/0 64.45,18.82 |only if haveq(76169) or completedq(76169)
turnin Lizard Looters##81632 |goto Hallowfall/0 64.45,18.82 |only if haveq(81632) or completedq(81632)
turnin Tale of Tails##82007 |goto Hallowfall/0 64.45,18.82 |only if haveq(82007)
|only if haveq(76169,81632,82007) or completedq(76169,81632)
step
kill Kobyss Harvester##214389+
|tip You can find them all over the waterway.
|tip Most mobs drop shards, but these drop Shadowblind Grouper for a weekly quest and a rare.
click Radiant Remnant+
|tip They look like tiny crystals on the ground all over this area.
collect 3 Radiant Remnant##206350 |goto Hallowfall/0 63.13,24.76 |q 80005 |future
step
click Lesser Keyflame
accept Crab Grab - Activate##80005 |goto Hallowfall/0 61.50,17.47
step
click Lesser Keyflame
|tip Click it twice to turn in the quest.
turnin Crab Grab - Activate##80005 |goto Hallowfall/0 61.50,17.47
step
click Empty Crab Cage##424347
accept Crab Grab##80004 |goto Hallowfall/0 61.54,17.43
step
clicknpc Shadowtide Hardshell##217477+
|tip Be careful not to kill them.
collect 12 Shadowtide Crab##216693 |q 80004/1 |goto Hallowfall/0 60.55,16.62
|only if haveq(80004) or completedq(80004)
step
Click the Complete Quest Box
turnin Crab Grab##80004
|only if haveq(80004) or completedq(80004)
step
label "Slay_Rare_Creatures"
Slay #2# Rare Creatures that Threaten the Keyflames |q 76588/1 |goto Hallowfall/0 65.45,32.23
|tip Collect remnants, contribue to large keyflames, and complete activities around the area.
|tip Rares spawn fairly frequently.
|only if haveq(76588) or completedq(76588)
step
talk Keyrra Flamestonge##215527
turnin Defender of the Flame##76588 |goto Hallowfall/0 65.45,32.23
|only if haveq(76588) or completedq(76588)
step
You have completed the weekly keyflame quests
|tip This guide will reset when more become available.
|tip You can prepare for next week ahead of time by farming another 24 Radiant Remnants.
'|complete not completedq(76169,76394,76588,76600,76733,76997,78656,78915,78933,78972,79158,79173,79216,79346,80004,80562,81574,81632) |next "Begin_Weekly_Quests"
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\Siren Isle Weekly Quests",{
description="This guide will assist you in completing the weekly quests across Siren Isle.",
condition_valid=function() return completedq(84725) end,
condition_valid_msg="You must complete \"The Circlet Calls\" quest in the Siren Isle guide to unlock weekly quests.",
startlevel=80,
patch='110007',
},[[
step
label "Begin_Daily_Quests"
Complete {y}The Circlet Calls{} Quest |complete completedq(84725)
|tip Complete the Siren Isle guide to accomplish this.
step
talk Stellin Verasa##229716
accept Historical Documents##83932 |goto Siren Isle/0 71.04,39.68 |only if haveq(84852) or completedq(84852)
accept Ruffled Pages##85589 |goto Siren Isle/0 71.04,39.70 |only if haveq(84850) or completedq(84850)
accept Ooker Dooker Literature Club##84619 |goto Siren Isle/0 71.04,39.68 |only if haveq(84851) or completedq(84851)
step
talk Sky-Captain Elaena Lancekat##227796
accept Secure the Perimeter##84222 |goto Siren Isle/0 69.42,42.86 |only if haveq(84852) or completedq(84852)
accept Crystal Crusade##84430 |goto Siren Isle/0 69.42,42.86 |only if haveq(84850) or completedq(84850)
accept Three Heads of the Deep##84627 |goto Siren Isle/0 69.42,42.86 |only if haveq(84850) or completedq(84850)
|only if haveq(84852,84850) or completedq(84852,84850)
step
talk Dawn##228096
accept Longship Landing##84432 |goto Siren Isle/0 69.13,43.08 |only if haveq(84852) or completedq(84852)
accept Rock 'n Stone Revival##84680 |goto Siren Isle/0 69.13,43.08 |only if haveq(84852) or completedq(84852)
|only if haveq(84852) or completedq(84852)
step
talk Skaggit##227818
accept Cannon Karma##83753 |goto Siren Isle/0 69.32,43.47 |only if haveq(84851) or completedq(84851)
accept Pirate Plunder##84299 |goto Siren Isle/0 69.32,43.47 |only if haveq(84851) or completedq(84851)
|only if haveq(84851) or completedq(84851)
stickystart "Add_Interesting_Notes"
stickystart "Slay_Rare_Siren_Isle_Enemies"
step
kill Warlord Thresh##229877 |q 84627/1 |goto Siren Isle/0 67.24,61.94
|only if haveq(84627) or completedq(84627)
step
kill Nereu of the Silent Wave##227654 |q 84627/3 |goto Siren Isle/0 61.62,67.20
|tip She walks around this area.
|only if haveq(84627) or completedq(84627)
stickystart "Kill_Bloodbrine_Horrors"
stickystart "Animate_Restless_Stones_and_Pebbles"
stickystart "Collect_Crystal_Chunks"
stickystart "Collect_Crystal_Fragments"
stickystart "Disrupt_the_Bilge_Rat_Forces"
step
kill Bloodwake Deathdealer##229095, kill Bloodwake Marauder##229101, Bloodwake Spellslinger##229100
Slay #15# Bloodwake Vrykul |q 84432/1 |goto Siren Isle/0 60.42,68.60
|only if haveq(84432) or completedq(84432)
step
label "Animate_Restless_Stones_and_Pebbles"
clicknpc Restless Pebbles##230126
clicknpc Restless Stone##230206+
|tip They look like bits of rock on the ground all over Siren Isle.
use the Rock Reviver##228988
Animate #8# Restless Stones and Pebbles |q 84680/1 |goto Siren Isle/0 60.42,68.60
|only if haveq(84680) or completedq(84680)
step
label "Kill_Bloodbrine_Horrors"
kill 8 Bloodbrine Horror##229973 |q 84680/2 |goto Siren Isle/0 60.42,68.60
You can find more around [Siren Isle/0 47.50,73.49]
|only if haveq(84680) or completedq(84680)
step
label "Collect_Crystal_Chunks"
click Water Shell##229882
|tip They look like globes of water surrounding clusters of crystals all over the isle.
click Crystal Chunk+
|tip When you remove a water shell they fall on the ground.
|tip They look like small shiny crystals.
collect 10 Crystal Chunk##228780 |q 84430/1 |goto Siren Isle/0 58.55,69.10
|only if haveq(84430) or completedq(84430)
step
label "Collect_Crystal_Fragments"
kill Darktide Oracle##227656, Darktide Conqueror##227655, Darktide Punisher##227653, Darktide Aggressor##229851
collect 30 Crystal Fragment##228787 |q 84430/2 |goto Siren Isle/0 58.55,69.10
|only if haveq(84430) or completedq(84430)
step
label "Disrupt_the_Bilge_Rat_Forces"
click Kaja'Cola Can+
|tip They look like small cans on the ground all over this area.
kill Ookin Scoundrel##227641, Bert and Benny##229190, Brinescale Reaver##228422, Spineskin Horker##227643, Vulpera Toe-Slasher##227677
Disrupt the Bilge Rat Forces |q 84299/1 |goto Siren Isle/0 58.43,64.42
|only if haveq(84299) or completedq(84299)
step
click Bilge Rat Trunk
collect Ookler's Diary##231786 |q 84619/4 |goto Siren Isle/0 54.76,83.26
|only if haveq(84619) or completedq(84619)
step
click Siren Isle Manifest
|tip On the uppper deck of the ship.
|tip Click the rope on the side of the ship to board it. |only if walking
collect Siren Isle Manifest##231813 |q 84619/2 |goto Siren Isle/0 55.10,92.95
|only if haveq(84619) or completedq(84619)
step
kill First Mate Dat-Dat##232825
|tip On the upper deck of the ship.
|tip Click the rope on the side of the ship to board it. |only if walking
collect First Mate Dat-Dat's Key##231809 |goto Siren Isle/0 62.84,96.83 |q 84619
|only if haveq(84619) or completedq(84619)
step
click Songs of the Siren
|tip On the upper deck of the ship.
|tip Click the rope on the side of the ship to board it. |only if walking
collect Songs of the Siren##231788 |q 84619/5 |goto Siren Isle/0 62.69,97.43
|only if haveq(84619) or completedq(84619)
step
click Dat-Dat's Book Stash
|tip On the middle deck of the ship.
|tip Click the rope on the side of the ship to board it. |only if walking
collect Ashvane Co. Survey Report##231802 |q 84619/1 |goto Siren Isle/0 60.38,97.99
|only if haveq(84619) or completedq(84619)
step
click Hozen Poetry##232788
collect Hozen Poetry##231812 |q 84619/3 |goto Siren Isle/0 66.55,87.26
|only if haveq(84619) or completedq(84619)
step
kill Extractor Silisai##229870 |q 84627/2 |goto Siren Isle/0 48.84,74.61
|only if haveq(84627) or completedq(84627)
step
click Blacksteel Cannonballs
|tip Cannon Master Jin'chu will attack you.
kill Cannon Master Jin'chu##227485 |q 83753/1 |goto Siren Isle/0 47.61,64.97
|only if haveq(83753) or completedq(83753)
step
collect Blacksteel Cannonball##226133 |q 83753/2 |goto Siren Isle/0 47.61,64.97
|tip Loot it from Cannon Master Jin'chu.
|only if haveq(83753) or completedq(83753)
step
click Bilge Rat Cannon
Control the Bilge Rat Cannon |q 83753/3 |goto Siren Isle/0 47.93,65.86
|only if haveq(83753) or completedq(83753)
step
Destroy the Bilge Rat Forces |q 83753/4 |goto Siren Isle/0 47.95,66.03
|tip Use the ability on your vehicle bar to kill the enemies in the Dregs.
|only if haveq(83753) or completedq(83753)
step
Leave the Cannon |outvehicle |script VehicleExit()
|only if haveq(83753) or completedq(83753)
step
talk Regald Hornfyre##232753
accept Silence the Song##83827 |goto Siren Isle/0 45.29,67.78
|only if questactive(83827) or haveq(84851,83827) or completedq(84851,83827)
stickystart "Dispel_Charmed_Troops"
stickystart "Kill_Brined_Monstrosity"
step
use Sonic Scrambler##226261
|tip Use it on Macabea.
kill Macabea The Sea Banshee##227717 |q 83827/1 |goto Siren Isle/0 33.13,73.94
|only if haveq(83827) or completedq(83827)
step
label "Dispel_Charmed_Troops"
use the Sonic Scrambler##226261
|tip Use it on Acquisitioners or kill them.
kill Greaseguard Acquisitioner##227721
Dispel #7# Charmed Troops |q 83827/2 |goto Siren Isle/0 38.28,70.98
|only if haveq(83827) or completedq(83827)
stickystop "Kill_Brined_Monstrosity"
step
talk Regald Hornfyre##232753
turnin Silence the Song##83827 |goto Siren Isle/0 45.29,67.78
|only if haveq(83827) or completedq(83827)
step
talk Machinist Kromleg##231783
accept Beach Comber##85051 |goto Siren Isle/0 41.95,68.09
|only if questactive(85051) or haveq(85051,84850) or completedq(85051,84850)
stickystart "Collect_Salvageable_Scrap"
stickystart "Kill_Brined_Monstrosity"
step
Escort Kerchunk as He Searches the Beach |q 85051/1 |goto Siren Isle/0 34.81,72.74
|tip Follow Kerchunk around and kill enemies that attack.
|tip You will get progress at each stop.
|only if haveq(85051) or completedq(85051)
step
label "Collect_Salvageable_Scrap"
collect 24 Salvageable Scrap##229967 |q 85051/2 |goto Siren Isle/0 34.81,72.74
|tip Follow Kerchunk around and kill enemies that attack.
|tip Click on various objects that he uncovers to collect scrap.
|only if haveq(85051) or completedq(85051)
stickystop "Kill_Brined_Monstrosity"
step
talk Machinist Kromleg##231783
turnin Beach Comber##85051 |goto Siren Isle/0 41.95,68.09
|only if haveq(85051) or completedq(85051)
step
label "Kill_Brined_Monstrosity"
kill Brined Monstrosity##230263 |q 84680/3 |goto Siren Isle/0 39.20,73.65
|only if haveq(84680) or completedq(84680)
step
click Ruffled Pages+
|tip They look like groups of papers in nests all over the cliffs.
|tip You can click Grappling Holds on various cliffs to boost yourself up.
kill Cliffreach Pridetalon##229522+
Retrieve #15# Ruffled Pages |q 85589/1 |goto Siren Isle/0 29.88,61.32
|only if haveq(85589) or completedq(85589)
step
talk Machinist Kromleg##232730
accept Cart Blanche##84001 |goto Siren Isle/0 48.53,53.08
|only if questactive(84001) or haveq(84851,84001) or completedq(84851,84001)
stickystart "Collect_Ore_Samples"
step
click Crashed Ore Cart
|tip Up on the tracks.
Clear the Crashed Mine Cart |q 84001/2 |goto Siren Isle/0 51.12,58.45 |count 1
|only if haveq(84001) or completedq(84001)
step
click Crashed Ore Cart
|tip Up on the tracks.
Clear the Crashed Mine Cart |q 84001/2 |goto Siren Isle/0 51.21,58.48 |count 2
|only if haveq(84001) or completedq(84001)
step
click Mine Track
|tip Up on the tracks.
Repair the Mine Tracks |q 84001/1 |goto Siren Isle/0 52.62,59.01 |count 1
|only if haveq(84001) or completedq(84001)
step
click Crashed Ore Cart
|tip Up on the tracks.
Clear the Crashed Mine Cart |q 84001/2 |goto Siren Isle/0 55.90,61.22 |count 3
|only if haveq(84001) or completedq(84001)
step
click Crashed Ore Cart
|tip Up on the tracks.
Clear the Crashed Mine Cart |q 84001/2 |goto Siren Isle/0 55.96,61.47 |count 4
|only if haveq(84001) or completedq(84001)
step
click Crashed Ore Cart
|tip Up on the tracks.
Clear the Crashed Mine Cart |q 84001/2 |goto Siren Isle/0 56.11,61.32 |count 5
|only if haveq(84001) or completedq(84001)
step
click Mine Track
|tip Up on the tracks.
Repair the Mine Tracks |q 84001/1 |goto Siren Isle/0 58.42,62.65 |count 2
|only if haveq(84001) or completedq(84001)
step
label "Collect_Ore_Samples"
click Ore Sample+
|tip They look like piles of rocks and blue ore on the ground and tracks around this area.
collect 12 Ore Sample##226853 |q 84001/3 |goto Siren Isle/0 49.29,57.72
|only if haveq(84001) or completedq(84001)
step
talk Machinist Kromleg##232730
turnin Cart Blanche##84001 |goto Siren Isle/0 48.53,53.08
|only if haveq(84001) or completedq(84001)
step
talk Machinist Kromleg##233139
accept A Ritual of Runes##84248 |goto Siren Isle/0 51.51,48.28
|only if questactive(84248) or haveq(84248,84852) or completedq(84248,84852)
stickystop "Add_Interesting_Notes"
stickystop "Slay_Rare_Siren_Isle_Enemies"
step
Enter the cave |goto Siren Isle/0 50.15,42.43 < 10 |walk
click Summoning Runes
|tip Inside the cave.
Destroy the Summoning Runes |q 84248/1 |goto Siren Isle/0 53.10,40.66 |count 1
|only if haveq(84248) or completedq(84248)
step
click Summoning Runes
|tip Inside the cave.
Destroy the Summoning Runes |q 84248/1 |goto Siren Isle/0 54.11,37.71 |count 2
|only if haveq(84248) or completedq(84248)
step
click Summoning Runes
|tip Inside the cave.
Destroy the Summoning Runes |q 84248/1 |goto Siren Isle/0 53.84,36.83 |count 3
|only if haveq(84248) or completedq(84248)
step
click Summoning Runes
|tip Inside the cave.
Destroy the Summoning Runes |q 84248/1 |goto Siren Isle/0 53.32,35.56 |count 4
|only if haveq(84248) or completedq(84248)
step
click Summoning Runes
|tip Inside the cave.
Destroy the Summoning Runes |q 84248/1 |goto Siren Isle/0 51.41,37.57 |count 5
|only if haveq(84248) or completedq(84248)
step
kill Inhyldir the Cursed##233137 |q 84248/2 |goto Siren Isle/0 52.67,38.28
|tip Inside the cave.
|only if haveq(84248) or completedq(84248)
step
talk Machinist Kromleg##233139
turnin A Ritual of Runes##84248 |goto Siren Isle/0 51.51,48.28
|only if haveq(84248) or completedq(84248)
step
label "Add_Interesting_Notes"
click Faded Pages+
|tip They look like small sheets of paper on the ground all over Siren Isle.
collect Interesting Notes##227406 |n
use the Research Journal##227405
Add #12# Interesting Notes to the Research Journal |q 83932/1 |goto Siren Isle/0 52.98,54.92
You can find more around [Siren Isle/0 47.50,73.49]
|only if haveq(83932) or completedq(83932)
step
label "Slay_Rare_Siren_Isle_Enemies"
Slay #2# Rare Siren Isle Enemies |q 84222/1 |goto Siren Isle/0 52.98,54.92
|only if haveq(84222) or completedq(84222)
step
talk Stellin Verasa##229716
turnin Historical Documents##83932 |goto Siren Isle/0 71.04,39.68 |only if haveq(83932) or completedq(83932)
turnin Ruffled Pages##85589 |goto Siren Isle/0 71.04,39.70 |only if haveq(85589) or completedq(85589)
turnin Ooker Dooker Literature Club##84619 |goto Siren Isle/0 71.04,39.70 |only if haveq(84619) or completedq(84619)
|only if haveq(83932,85589,84619) or completedq(83932,85589,84619)
step
talk Sky-Captain Elaena Lancekat##227796
turnin Secure the Perimeter##84222 |goto Siren Isle/0 69.42,42.86 |only if haveq(84222) or completedq(84222)
turnin Crystal Crusade##84430 |goto Siren Isle/0 69.42,42.86 |only if haveq(84430) or completedq(84430)
turnin Three Heads of the Deep##84627 |goto Siren Isle/0 69.42,42.86 |only if haveq(84627) or completedq(84627)
|only if haveq(84222,84430,84627) or completedq(84222,84430,84627)
step
talk Dawn##228096
turnin Longship Landing##84432 |goto Siren Isle/0 69.13,43.08 |only if haveq(84432) or completedq(84432)
turnin Rock 'n Stone Revival##84680 |goto Siren Isle/0 69.13,43.08 |only if haveq(84680) or completedq(84680)
|only if haveq(84432,84680) or completedq(84432,84680)
step
talk Skaggit##227818
turnin Cannon Karma##83753 |goto Siren Isle/0 69.32,43.47 |only if haveq(83753) or completedq(83753)
turnin Pirate Plunder##84299 |goto Siren Isle/0 69.32,43.47 |only if haveq(84299) or completedq(84299)
|only if haveq(83753,84299) or completedq(83753,84299)
step
Unlock or Complete {o}Special Assignment: Storm's a Brewin{} Quest |complete haveq(85113) or completedq(85113)
|tip You must unlock access to this world quest for the week to enter the storm phase.
|only if questactive(84225) or questactive(84241)
step
talk Suzie Boltwrench##227815
Select _"I'll defend the camp during the storm."_ |gossip 123657
Speak with Suzie to Await the Storm |complete hasbuff(458069) |goto Siren Isle/0 69.08,49.25
|tip You must enter the storm to the remaining weekly quests.
|only if questactive(84225) or questactive(84241)
step
talk Sally Boltwrench##231937
accept Eggstinction##84225 |goto Siren Isle/0 63.45,66.38
|only if questactive(84225) or haveq(84851,84225) or completedq(84851,84225)
step
click Boltwrench Broiler
Equip the Boltwrench Broiler |havebuff Boltwrench Broiler##471459 |goto Siren Isle/0 63.57,66.26 |q 84225
|only if haveq(84225) or completedq(84225)
step
extraaction Boltwrench Broiler##471460
|tip Use it on the Spawning Clutches.
kill 12 Spawning Clutch##231811 |q 84225/2 |goto Siren Isle/0 59.68,70.55
|only if haveq(84225) or completedq(84225)
step
kill 12 Deepwater Eggtender##232080 |q 84225/1 |goto Siren Isle/0 59.68,70.55
|only if haveq(84225) or completedq(84225)
step
talk Sally Boltwrench##231937
turnin Eggstinction##84225 |goto Siren Isle/0 63.45,66.38
|only if haveq(84225) or completedq(84225)
step
talk Regald Hornfyre##232297
accept Shoreline Stand##84241 |goto Siren Isle/0 43.74,23.87
|only if questactive(84241) or haveq(84851,84241) or completedq(84851,84241)
step
kill 15 Brinebound Wraith##232303 |q 84241/1 |goto Siren Isle/0 42.28,26.56
|only if haveq(84241) or completedq(84241)
step
kill Tide-Champion Korval##232368 |q 84241/2 |goto The Forgotten Vault/0 55.06,29.98
|only if haveq(84241) or completedq(84241)
step
talk Regald Hornfyre##232297
turnin Shoreline Stand##84241 |goto Siren Isle/0 43.74,23.87
|only if haveq(84241) or completedq(84241)
step
Wait for Additional Weekly Quests |complete not completedq(83827,85051,84001,84248,83932,85589,84619,84222,84430,84627,84432,84680,83753,84299,84225,84241) |next "Begin_Daily_Quests"
|tip This guide will reset when more become available.
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\Intercontinental Hotel Weeklies",{
startlevel=80,
patch='110100',
},[[
step
label "Begin_Weekly_Quests"
talk Smaks Topskimmer##231409
accept Many Jobs, Handle It!##85869 |goto Undermine/0 43.86,50.82 |only if questactive(85869)
accept Urge to Surge##86775 |goto Undermine/0 43.86,50.82 |only if questactive(86775)
accept Reduce, Reuse, Resell##85879 |goto Undermine/0 43.86,50.82 |only if questactive(85879)
step
talk Kaydee Racketring##231049
|tip Inside the building.
Select _"I'm ready to sign a contract."_ |gossip 124652
|tip Choose the faction you would like to align with for the week.
|tip This decision affects your warband.
Sign an Undermine Cartel Contract |q 85879/1 |goto Undermine/0 42.90,52.31
|only if haveq(85879) or completedq(85879)
step
talk Kaydee Racketring##231049
|tip Inside the building.
Select _"I'm ready to sign a contract."_ |gossip 124652
|tip Choose the faction you would like to align with for the week.
|tip This decision affects your warband.
Sign an Undermine Cartel Contract |q 85869/1 |goto Undermine/0 42.90,52.31
|only if haveq(85869) or completedq(85869)
step
talk Kaydee Racketring##231049
|tip Inside the building.
Select _"I'm ready to sign a contract."_ |gossip 124652
|tip Choose the faction you would like to align with for the week.
|tip This decision affects your warband.
Sign an Undermine Cartel Contract |q 86775/1 |goto Undermine/0 42.90,52.31
|only if haveq(86775) or completedq(86775)
stickystart "Give_Sample_Potions"
step
talk Carlo Greasegrind##231221
Select _"Let's start!"_ |gossip 124527 |notautogossip
click S.C.R.A.P. Heap
|tip Click the pile and continue to shovel trash until the timer expires.
Complete #3# S.C.R.A.P. Jobs |q 85879/2 |goto Undermine/0 31.74,21.33
You can also find them at:
[Undermine/0 50.45,62.90]
[Undermine/0 70.15,76.56]
[Undermine/0 36.45,44.41]
[Undermine/0 67.65,28.59]
|only if haveq(85879) or completedq(85879)
step
label "Give_Sample_Potions"
click Potential Customer##232990
use the Sample Potion##231900
|tip Throw the potions at Potential Customers
Give #8# Sample Potions |q 85515/1 |goto Undermine/0 30.87,29.03
|only if haveq(85515) or completedq(85515)
stickystart "Participate_in_Surge_Pricing"
step
Complete #10# Shipping & Handling Jobs |q 85869/2 |goto Undermine/0 51.64,44.51
|tip Use the "Start Job" ability on your G-99 Breakneck to start a job.
|tip Complete 10 jobs total.
|only if haveq(85869) or completedq(85869)
step
label "Participate_in_Surge_Pricing"
cast G-99 Breakneck##460013
Participate in Surge Pricing |q 86775/2 |goto Undermine/0 37.70,47.05
|tip Use the "Start Job" ability on your G-99 Breakneck to start a job during Surge Pricing.
|tip Surge Pricing occurs every hour on the half hour mark and lasts for 10 minutes.
|tip Complete jobs while this event is active.
|only if haveq(86775) or completedq(86775)
step
talk Smaks Topskimmer##231409
turnin Many Jobs, Handle It!##85869 |goto Undermine/0 43.86,50.82 |only if haveq(85869) or completedq(85869)
turnin Urge to Surge##86775 |goto Undermine/0 43.86,50.82 |only if haveq(86775) or completedq(86775)
turnin Reduce, Reuse, Resell##85879 |goto Undermine/0 43.86,50.82 |only if haveq(85879) or completedq(85879)
step
You Have Completed the Intercontinental Hotel Weekly Quests |complete not completedq(85869,86775,85879) |next "Begin_Weekly_Quests"
|tip This guide will reset when more weekly quests become available.
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\Slam Central Station Weeklies",{
startlevel=80,
patch='110100',
},[[
step
label "Begin_Weekly_Quests"
talk Captain Crudeshank##231064
accept Side Gig: Feeling Crabby##85553 |goto Undermine/0 19.83,52.94 |only if questactive(85553)
accept Side Gig: The Tides Provide##86177 |goto Undermine/0 19.83,52.94 |only if questactive(86177)
accept Side Gig: It's Always Sunny Side Up##85554 |goto Undermine/0 19.83,52.94 |only if questactive(85554)
|only if questactive(85553,86177,85554)
step
talk Freddi Powergrind##231065
accept Side Gig: Cleanin' the Coast##86178 |goto Undermine/0 19.75,53.00 |only if questactive(86178)
accept Side Gig: Infested Waters##86180 |goto Undermine/0 19.75,53.00 |only if questactive(86180)
accept Side Gig: Lucky Break's Big Break##86179 |goto Undermine/0 19.75,53.00 |only if questactive(86179)
|only if questactive(86178,86180,86179)
step
talk Solden Blitzfuse##231063
accept Side Gig: Lost in the Sauce##85960 |goto Undermine/0 16.80,52.36 |only if questactive(85960)
accept Side Gig: Coolant Matters##85914 |goto Undermine/0 16.80,52.36 |only if questactive(85914)
accept Side Gig: Cleanup Detail##85913 |goto Undermine/0 16.80,52.36 |only if questactive(85913)
|only if questactive(85914,85913,85960)
step
talk Torky Greasepalm##231062
accept Side Gig: Unseemly Reagents##85962 |goto Undermine/0 16.75,52.24 |only if questactive(85962)
accept Side Gig: Blood-B-Gone##85945 |goto Undermine/0 16.75,52.24 |only if questactive(85945)
accept Side Gig: Blood Type##85944 |goto Undermine/0 16.75,52.24 |only if questactive(85944)
|only if questactive(85962,85945,85944)
stickystart "Collect_Shiny_Treasures"
step
kill Resourceful Bombshell##229650+ Cranky Bombling##229647
collect 15 Powdery Crab Meat##235339 |q 85553/1 |goto Zuldazar/0 21.47,57.43
You can find more around:
[Zuldazar/0 19.11,56.42]
[Zuldazar/0 19.01,59.14]
[Zuldazar/0 20.82,62.49]
|only if haveq(85553) or completedq(85553)
step
label "Collect_Shiny_Treasures"
click Shifty Sand+
|tip They look like small piles of white sand on the beach around this area.
click Buried Treasure+
|tip An enemy will attack you or a treasure will appear.
collect 5 Shiny Treasure##235346 |q 86177/1 |goto Zuldazar/0 19.81,60.88
|only if haveq(86177) or completedq(86177)
step
kill Kaja-Carrying Razormaw##237934
collect Swallowed Kaja'mite##236773 |q 86180/1 |goto Zuldazar/0 19.13,52.99
|only if haveq(86180) or completedq(86180)
stickystart "Slay_Kaja'mentals"
step
Enter the cave |goto Zuldazar/0 23.13,60.13 < 7 |walk
click Support Beam
|tip Inside the mine.
Place the Support Beam |q 86179/1 |goto Zuldazar/0 24.05,60.14 |count 1 hidden
|only if haveq(86179) or completedq(86179)
step
click Support Beam
|tip Inside the mine.
Place the Support Beam |q 86179/1 |goto Zuldazar/0 24.46,60.01 |count 2 hidden
|only if haveq(86179) or completedq(86179)
step
click Support Beam
|tip Inside the mine.
Place the Support Beam |q 86179/1 |goto Zuldazar/0 25.05,59.50 |count 3 hidden
|only if haveq(86179) or completedq(86179)
step
click Support Beam
|tip Inside the mine.
Place the Support Beam |q 86179/1 |goto Zuldazar/0 25.28,58.35 |count 4 hidden
|only if haveq(86179) or completedq(86179)
step
click Support Beam
|tip Inside the mine.
Place the Support Beam |q 86179/1 |goto Zuldazar/0 24.60,57.89 |count 5 hidden
|only if haveq(86179) or completedq(86179)
step
click Support Beam
|tip Inside the mine.
Place the Support Beam |q 86179/1 |goto Zuldazar/0 24.20,58.76 |count 6 hidden
|only if haveq(86179) or completedq(86179)
step
label "Slay_Kaja'mentals"
Enter the cave |goto Zuldazar/0 23.13,60.13 < 7 |walk |only if not subzone("Lucky Break Mines") |notinsticky
kill Agitated Kaja'mental##228558,kill Agitated Kaja'crawler##228556
Slay #10# Kaja'mentals |q 86178/1 |goto Zuldazar/0 24.70,60.08
|only if haveq(86178) or completedq(86178)
step
Leave the mine |goto Zuldazar/0 23.13,60.13 < 10 |walk |only if subzone("Lucky Break Mines")
click Pterrordax Egg+
|tip They look like large white ggs in nets on the ground around this area.
"Ethically" Collect #8# Pterrordax Eggs |q 85554/1 |goto Zuldazar/0 24.62,63.34
|only if haveq(85554) or completedq(85554)
step
click Pamsy's Rocketboard##228750
Ride Pamsy's Rocketboard |q 85914/1 |goto The Ringing Deeps/0 70.33,89.55
|only if haveq(85914) or completedq(85914)
step
Freeze #12# Pipes |q 85914/2
|tip Use the ability on your vehicle bar to freeze the pipes at the areas with the green swirls.
|only if haveq(85914) or completedq(85914)
stickystart "Kill_Blood_Monstrosities"
stickystart "Clean_Blood_Slimes"
step
click Leaking Black Blood Container+
|tip They look like small metal containers with red liquid inside.
Obtain 25+ Stacks of Unseeming Shift |q 85962/1 |goto The Ringing Deeps/0 70.56,93.72
|only if haveq(85962) or completedq(85962)
step
click Leaking Black Blood Container+
|tip They look like small metal containers with red liquid inside.
Obtain 25+ Stacks of Unseeming Shift |q 85960/1 |goto The Ringing Deeps/0 70.56,93.72
|only if haveq(85960) or completedq(85960)
step
kill Bloodmad Operator##234003,kill Bloodmad Orderly##234002
click Unseemly Growth+
|tip They look like small clusters of tumors on the ground around this area.
Clear #10# Unseemly Growth |q 85962/2 |goto The Ringing Deeps/0 70.56,93.72
|only if haveq(85962) or completedq(85962)
step
clicknpc Lost Goblin##234079+
|tip They appear on your minimap as yellow dots.
|tip They will attack you sometimes.
|tip You must have 25+ stacks of Unseeming Shift to see them.
Rescue #8# Lost Goblins |q 85960/2 |goto The Ringing Deeps/0 70.56,93.72
|only if haveq(85960) or completedq(85960)
step
Enter the cave |goto The Ringing Deeps/0 71.76,89.36 < 10 |walk
kill Darkfuse Blood Technician##234001,Darkfuse Blood Researcher##234000
|tip Inside the cave.
click Darkfuse Research Notes+
|tip They look like papers and books in various locations inside the cave.
Collect #8# Darkfuse Research Notes |q 85944/1 |goto The Ringing Deeps/0 71.82,87.20
|only if haveq(85944) or completedq(85944)
step
label "Kill_Blood_Monstrosities"
kill Bloated Abscess##232594, Engorged Bloodtick##230930, Enveloping Bloodeater##228300
Kill Blood Monstrosities |q 85913/1 |goto The Ringing Deeps/0 70.51,93.69
|only if haveq(85913) or completedq(85913)
step
label "Clean_Blood_Slimes"
use the Blood-B-Gone##232897
|tip The slimes will often attack you.
kill Bloated Abscess##232594, Chillgut Slime##225885
Clean #8# Blood Slimes |q 85945/1 |goto The Ringing Deeps/0 70.60,93.74
|only if haveq(85945) or completedq(85945)
step
talk Captain Crudeshank##231064
turnin Side Gig: Feeling Crabby##85553 |goto Undermine/0 19.83,52.94 |only if haveq(85553) or completedq(85553)
turnin Side Gig: The Tides Provide##86177 |goto Undermine/0 19.83,52.94 |only if haveq(86177) or completedq(86177)
turnin Side Gig: It's Always Sunny Side Up##85554 |goto Undermine/0 19.83,52.94 |only if haveq(85554) or completedq(85554)
|only if haveq(85553,86177) or completedq(85553,86177,85554)
step
talk Freddi Powergrind##231065
turnin Side Gig: Cleanin' the Coast##86178 |goto Undermine/0 19.75,53.00 |only if haveq(86178) or completedq(86178)
turnin Side Gig: Infested Waters##86180 |goto Undermine/0 19.75,53.00 |only if haveq(86180) or completedq(86180)
turnin Side Gig: Lucky Break's Big Break##86179 |goto Undermine/0 19.75,53.00 |only if haveq(86179) or completedq(86179)
|only if haveq(86178,86180,86179) or completedq(86178,86180,86179)
step
talk Solden Blitzfuse##231063
turnin Side Gig: Lost in the Sauce##85960 |goto Undermine/0 16.80,52.36 |only if haveq(85960) or completedq(85960)
turnin Side Gig: Coolant Matters##85914 |goto Undermine/0 16.80,52.36 |only if haveq(85914) or completedq(85914)
turnin Side Gig: Cleanup Detail##85913 |goto Undermine/0 16.80,52.36 |only if haveq(85913) or completedq(85913)
|only if haveq(85914,85913,85960) or completedq(85914,85913,85960)
step
talk Torky Greasepalm##231062
turnin Side Gig: Unseemly Reagents##85962 |goto Undermine/0 16.75,52.24 |only if haveq(85962) or completedq(85962)
turnin Side Gig: Blood-B-Gone##85945 |goto Undermine/0 16.75,52.24 |only if haveq(85945) or completedq(85945)
turnin Side Gig: Blood Type##85944 |goto Undermine/0 16.75,52.24 |only if haveq(85944) or completedq(85944)
|only if haveq(85962,85945,85944) or completedq(85962,85945,85944)
step
You have completed the weekly quests for this area |complete not completedq(85553,86177,85554,86178,86180,86179,85914,85913,85962,85945,85944,85960) |next "Begin_Weekly_Quests"
|tip This guide will reset when more weekly quests become available.
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\Nightfall Dailies",{
description="This guide will assist you in completing the \"Nightfall\" daily content content.",
startlevel=80,
patch='110105',
},[[
step
accept A Radiant Call##85005 |goto Dornogal/0 44.61,32.54
|tip You should accept this quest automatically.
|tip If not, you can find it in your Adventure Guide under {o}Nightfall{}.
step
talk Mylton Wyldbraun##234774
turnin A Radiant Call##85005 |goto Hallowfall/0 28.26,56.11
step
label "Begin_Dailies"
talk Mylton Wyldbraun##234774
accept Flame Fortification##89331 |goto Hallowfall/0 28.26,56.11 |only if not completedq(89331)
accept Boot Camp##89332 |goto Hallowfall/0 28.26,56.11 |only if not completedq(89332)
|autoacceptany 88916,88711,88945,87475,87477,87480,89295,91173
Accept the Daily Quests |complete counthaveq(88916,88711,88945,87475,87477,87480,89295,91173) == 4 or countcompletedq(88916,88711,88945,87475,87477,87480,89295,91173) == 4
step
click Sureki Elixir+
|tip They look like smoking green bottles on the ground around the area.
click Nerubian Burrow+
|tip They look like large patches of disturbed dirt with smoke coming from them around this area.
click Sureki Shadecaster+
|tip They look like devices projecting purple images on the ground around this area.
kill Sureki Marauder##238772, Sureki Acolyte##238771, Sureki Eradicator##238773, Sureki Skitterling##238769, Sureki Siegelord##239208, Sureki Battle Drone##238770, kill Sureki Burrower##240375
Repel the Sureki Forces |q 87475/1 |goto Hallowfall/0 41.06,60.44
|only if haveq(87475) or completedq(87475)
step
talk Auralia Steelstrike##241344
turnin Sureki Incursion: Hold the Wall##87475 |goto Hallowfall/0 40.58,57.94
|only if haveq(87475) or completedq(87475)
step
kill Sureki Swarmherder##238972, Sureki Swarmer##238928, Swarming Spitmite##238930, Sureki Jawcrawler##238931, Sureki Undercrawler##238932, Sureki Burrower##242736, Sureki Siegelord##238935
|tip Elite enemies give large chunks of progress.
click Pulsing Swarm Sac+
|tip They look like large white egg sacks on the ground around this area.
click Maturing Swarm Cluster+
|tip They look like patches of webbing around this area.
click Swarm Tunnel+
|tip They look like tunnel entrances around hills in this area.
Thwart the Sureki Swarm |q 87477/1 |goto Hallowfall/0 50.04,67.99
|only if haveq(87477) or completedq(87477)
step
talk Meradyth Lacke##241340
turnin Sureki Incursion: Southern Swarm##87477 |goto Hallowfall/0 52.00,66.35
|only if haveq(87477) or completedq(87477)
step
kill Sureki Acolyte##239202, Sureki Swarmite##239201, Sureki Commander##242088, Sureki Needler##239197, Sureki Sentryblade##239198, Sureki Drone##239196
|tip Elite enemies give large chunks of progress.
click Aqirite Barricade+
|tip They look like large barriers around this area.
clicknpc Grub Borer##239541+
|tip They look like small worms on the ground around this area.
click Sureki Supply Cache+
|tip They look like large chests on the ground around this area.
Disrupt the Sureki Invasion |q 87480/1 |goto Hallowfall/0 73.74,43.73
|only if haveq(87480) or completedq(87480)
step
talk Izaeh Strongiron##241093
|tip Up on the wall.
turnin Sureki Incursion: The Eastern Assault##87480 |goto Hallowfall/0 76.51,45.85
|only if haveq(87480) or completedq(87480)
step
talk Sacred Alchemist##242016
Select _"<Take the elixir.>"_ |gossip 132981
Take the Field Elixir |q 88916/1 |goto Azj-Kahet/0 62.99,8.02
|only if haveq(88916) or completedq(88916)
step
kill Battlefront Hauler##222719, Crimson Deathweaver##222692, Deepcrawler Tx'kesh##222624, Skitterling Soldier##222724, Stagshell Mite##222729, Sureki Priestess##222688, Sureki Raider##222677, Sureki Warrior##222693, Toxic Swarmite##222721, Venomous Flyer##222722
click Arathi Prisoner##222119+
|tip They look like web-wrapped NPCs on the ground around this area.
click Hallowfall Invasion Plans+
|tip They look like bundles of scrolls around this area.
Disrupt the Sureki Forces |q 88916/2 |goto Azj-Kahet/0 64.47,6.68
|only if haveq(88916) or completedq(88916)
step
kill Dependable Skitterling##222153, Stalwart Hauler##214935, Kaheti Skirmisher##214940, Kaheti Threadmancer##214939, Cache Courier##220399, Kaheti Overseer##214941
click Sureki Shadecaster+
|tip They look like large egg-shaped devices with purple mist coming off them.
click Sureki Communications+
|tip They look like small devices with two rolled scrolls on them.
Disrupt the Sureki Sureki Sympathizers |q 88945/1 |goto Azj-Kahet/0 62.67,28.89
|only if haveq(88945) or completedq(88945)
step
talk Ysabel Gleamgaard##241100
turnin Radiant Incursion: Sureki's End##88916 |goto Azj-Kahet/0 60.65,18.72 |only if haveq(88916) or completedq(88916)
turnin Radiant Incursion: Rak-Zakaz##88945 |goto Azj-Kahet/0 60.65,18.72 |only if haveq(88945) or completedq(88945)
|only if haveq(88916,88945) or completedq(88916,88945)
step
kill Sureki Harvest Drone##239563, Sureki Harvest Guard##239562, Sureki Harvest Worm##239566, Sureki Spore Keeper##239564, Sureki Valley Warder##240637, Sureki Sporesniffer##239565
click Toxin Cannister+
|tip They look like large hollow containers on the ground around this area.
click Spore Sample+
|tip They look like small racks with vials on them.
Disrupt the Sureki Forces |q 88711/1 |goto Azj-Kahet/0 68.25,54.77
|only if haveq(88711) or completedq(88711)
step
talk Lamplighter Kaerter##242591
turnin Radiant Incursion: Toxins and Pheromones##88711 |goto Azj-Kahet/0 65.99,59.65
|only if haveq(88711) or completedq(88711)
step
Complete the "Nightfall" Scenario |q 89331/1 |goto Hallowfall/0 28.26,56.11
|tip The scenario begins at the start of every hour and lasts for 10 minutes.
|loadguide "Events Guides\\The War Within (70-80)\\Nightfall"
|only if haveq(89331)
step
Complete the "Nightfall" Scenario |q 89295/1 |goto Hallowfall/0 28.31,56.08
|tip The scenario begins at the start of every hour and lasts for 10 minutes.
|loadguide "Events Guides\\The War Within (70-80)\\Nightfall"
|only if haveq(89295)
step
Complete the "Nightfall" Scenario |q 91173/1 |goto Hallowfall/0 28.31,56.08
|tip The scenario begins at the start of every hour and lasts for 10 minutes.
|loadguide "Events Guides\\The War Within (70-80)\\Nightfall"
|only if haveq(91173)
step
talk Mylton Wyldbraun##234774
turnin Flame Fortification##89331 |goto Hallowfall/0 28.26,56.11 |only if readyq(89331)
turnin Boot Camp##89332 |goto Hallowfall/0 28.26,56.11 |only if readyq(89332)
turnin Radiant Incursion: Toxins and Pheromones##88711 |goto Hallowfall/0 28.26,56.11 |only if readyq(88711)
turnin Radiant Incursion: Sureki's End##88916 |goto Hallowfall/0 28.26,56.11 |only if readyq(88916)
turnin Radiant Incursion: Rak-Zakaz##88945 |goto Hallowfall/0 28.26,56.11 |only if readyq(88945)
turnin Sureki Incursion: Southern Swarm##87477 |goto Hallowfall/0 28.26,56.11 |only if readyq(87477)
turnin Sureki Incursion: The Eastern Assault##87480 |goto Hallowfall/0 28.26,56.11 |only if readyq(87480)
turnin The Flame Burns Eternal##89295 |goto Hallowfall/0 28.26,56.11 |only if readyq(89295)
turnin The Flame Burns Eternal##91173 |goto Hallowfall/0 28.26,56.11 |only if readyq(91173)
|only if haveq(89331,89332,88711,88916,88945,87477,87480,89295,91173)
step
You Have Completed Today's Daily Quests |complete false |or
|tip Check back tomorrow for another set.
|tip This guide will reset when more daily quests become available.
'|complete not completedq(88711,88916,88945,87477,87480,87475) |or |next "Begin_Dailies"
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\Ecological Succession Weeklies",{
author="QuestCore",
areapoiid={8272},
areapoitype="Ecological Succession",
startlevel=80,
patch='110200',
getquestonmap={2371},
},[[
step
Complete the Introduction to Ecological Succession |achieve 41808/1
|tip Completing the first chapter of Otherwordly Ecologist opens up intial weekly quests.
|loadguide "Leveling Guides\\The War Within (70-80)\\Ecological Succession"
step
label "Accept_Weekly_Quests"
talk Rhubarn##234316, Om'talad##230736, Ve'nari##231820, Hemet Nesingwary##235353, Botanist Alaenra##232385
Accept the Available Weekly Quests |autoacceptany 85459,85461,88980,89242,89297,89254,89192,90545,85481,89240,89056,85710,89213,85462,89065,88981,89194,89195,85470,89221,89198,89057,89212,89238,89209,86342,85465,89197,88659,88975,85721,89210
confirm |goto K'aresh/0 75.89,34.18
step
click Portal to Nagrand
Travel to Nagrand |complete zone("Nagrand") or completedq(88659) |goto K'aresh/0 75.89,33.83
|only if haveq(88659) or completedq(88659)
stickystart "Collect_Smooth_Stone"
step
click Marsh Moss+
|tip They look like clumps of plants on buildings and mushrooms around this area.
kill Darkcrest Slaver##19946, Darkcrest Sorceress##19947
collect 10 Marsh Moss##237757 |q 88659/1 |goto Zangarmarsh/0 71.91,75.74
|only if haveq(88659) or completedq(88659)
step
click Fragrant Dreaming Glory+
|tip They look like white flowers with orange mist around them near snake nests around this area.
collect 20 Fragrant Dreaming Glory##237604 |q 88659/1 |goto Nagrand/0 58.81,54.93
|only if haveq(88659) or completedq(88659)
step
label "Collect_Smooth_Stone"
kill Tortured Earth Spirit##17156
collect 10 Smooth Stone##237572 |q 88659/3 |goto Nagrand/0 60.14,54.88
You can find more around:
[Nagrand/0 71.94,43.53]
[Nagrand/0 67.46,36.80]
|only if haveq(88659) or completedq(88659)
step
click Portal to the Oasis
Travel to the Oasis |complete zone("K'aresh") or completedq(88659) |goto Nagrand/0 71.61,40.85
|only if haveq(88659) or completedq(88659)
step
click Portal to Stormsong Valley
Travel to Stormsong Valley |complete zone("Stormsong Valley") or completedq(89195) |goto K'aresh/0 75.94,34.14
|only if haveq(89195) or completedq(89195)
step
use the Anima Vacuum##238904
'|clicknpc Honey Bee##131376
Vacuum #20# Honey Bees |q 89195/1 |goto Stormsong Valley/0 73.07,69.13
|only if haveq(89195) or completedq(89195)
step
click Portal to K'aresh
Travel to K'aresh |complete zone("K'aresh") or completedq(89195) |goto Stormsong Valley/0 72.64,65.80
|only if haveq(89195) or completedq(89195)
step
Return to the Oasis |q 89195/3 |goto K'aresh/0 75.93,34.33
|only if haveq(89195) or completedq(89195)
step
use the Anima Orb##238915
|tip Watch the ground around you and run into the yellow circles when they appear to catch the ball.
|tip If you miss it, use the orb again and repeat.
Catch the Ball #10# Times |q 89056/1 |goto K'aresh/0 76.29,34.56
|only if haveq(89056) or completedq(89056)
step
use the Anima Orb##238907
|tip Watch the ground around you and run into the yellow circles when they appear to catch the ball.
|tip If you miss it, use the orb again and repeat.
Catch the Ball #10# Times |q 85465/1 |goto K'aresh/0 76.29,34.56
|only if haveq(85465) or completedq(85465)
step
use the Appropriated Azerothian Camera##238903
'|clicknpc Queen Bee##232208
Document the Queen |q 89210/2 |goto K'aresh/0 72.96,36.60
|only if haveq(89210) or completedq(89210)
step
use the Appropriated S.E.L.F.I.E. Camera##238933
|tip Face away from it and use the first ability on your bar.
Photograph Bosun |q 89254/1 |goto K'aresh/0 75.88,33.02
|only if haveq(89254) or completedq(89254)
step
Complete the Eastern Waggle Dance |q 89194/3 |goto K'aresh/0 76.65,32.88
|tip Walk around the circles on the ground until they disappear.
|only if haveq(89194) or completedq(89194)
step
talk Zooming Necroray##237954
Select _"<Signal that you are ready to race.>"_ |gossip 131968
Challenge the Zooming Necroray |q 89065/1 |goto K'aresh/0 77.41,33.13
|only if haveq(89065) or completedq(89065)
step
Run the Race |q 89065/2
|tip Run the course, following the arrows.
|tip Pick up the speed boosts along the way.
|tip You can go right at the fork to take a shortcut.
|only if haveq(89065) or completedq(89065)
step
use the Appropriated Azerothian Camera##238903
'|clicknpc Queen Bee##232208
Document the Queen |q 89210/2 |goto K'aresh/0 72.96,36.60
|only if haveq(89210) or completedq(89210)
step
talk Slateback Alpha##232780
Select _"<Signal that you are ready to race.>"_ |gossip 124986
Challenge the Slateback Alpha |q 85481/1 |goto K'aresh/0 73.64,37.54
|only if haveq(85481) or completedq(85481)
step
Run the Race |q 85481/2
|tip Run the course, following the arrows.
|tip Pick up the speed boosts along the way.
|tip You do not need to win the race, just complete it.
|only if haveq(85481) or completedq(85481)
stickystart "Collect_Blood_Samples"
stickystart "Detangle_Stuck_Lapbugs"
stickystart "Shrink_and_Collect_Slateback_Roamers"
stickystart "Clean_Congealed_Lumps"
stickystart "Document_Domineering_K'arrocs"
stickystart "Shrink_and_Collect_Domineering_K'arrocs"
stickystart "Wash_Domineering_K'arrocs"
stickystart "Douse_Regal_Thorntails"
stickystart "Collect_Chopped_Oasis_Plants"
stickystart "Document_Regal_Thorntails"
stickystart "Pick_Up_Overworked_Honey_Bees"
stickystart "Document_Honey_Bees"
stickystart "Sooth_Agitated_Snakes"
step
talk Slateback Alpha##232648
Select _"<Roar at the alpha.>"_ |gossip 124958
|tip It will attack you.
kill Slateback Alpha##232648
Challenge the Slateback Alpha |q 85462/1 |goto K'aresh/0 73.08,32.65
|only if haveq(85462) or completedq(85462)
step
click Fragrant Dreaming Glory
Summon the Fresh Fragrant Dreaming Glory |q 88981/1 |goto K'aresh/0 74.52,31.20
|only if haveq(88981) or completedq(88981)
step
click Extra Cushiony Moss
Summon More Extra Cushiony Moss |q 88981/2 |goto K'aresh/0 74.52,31.20
|only if haveq(88981) or completedq(88981)
step
click Cozy Heat Lamp
Summon the Refueled Cozy Heat Lamp |q 88981/3 |goto K'aresh/0 74.53,31.16
|only if haveq(88981) or completedq(88981)
step
click Guardian Bot##239957
Summon the Replacement Guardian Bot |q 88981/4 |goto K'aresh/0 74.56,31.20
|only if haveq(88981) or completedq(88981)
step
use the Appropriated S.E.L.F.I.E. Camera##238933
|tip Face away from it and use the first ability on your bar.
Photograph Chef |q 89254/3 |goto K'aresh/0 74.13,32.02
|only if haveq(89254) or completedq(89254)
step
use the Appropriated S.E.L.F.I.E. Camera##238933
|tip Face away from it and use the first ability on your bar.
Photograph Sir Cuteington |q 89254/4 |goto K'aresh/0 71.57,33.90
|only if haveq(89254) or completedq(89254)
step
Complete the Western Waggle Dance |q 89194/2 |goto K'aresh/0 71.79,32.33
|tip Walk around the circles on the ground until they disappear.
|only if haveq(89194) or completedq(89194)
step
talk Thorntail Matriarch##233346
Select _"<Beckon the thorntail matriarch to follow you.>"_ |gossip 125325
Retrieve the Thorntail Matriarch |q 85721/1 |goto K'aresh/0 72.07,30.84
|only if haveq(85721) or completedq(85721)
stickystart "Hunt_Lapbug_Skitterers"
step
Complete the Northern Waggle Dance |q 89194/1 |goto K'aresh/0 74.65,30.38
|tip Walk around the circles on the ground until they disappear.
|only if haveq(89194) or completedq(89194)
step
use the Appropriated S.E.L.F.I.E. Camera##238933
|tip Face away from it and use the first ability on your bar.
Photograph Myrtelle |q 89254/2 |goto K'aresh/0 74.68,29.68
|only if haveq(89254) or completedq(89254)
step
cast Fishing##131474
collect 7 Hydrobite##241352 |q 90545/1 |goto K'aresh/0 74.95,31.37
|only if haveq(90545) or completedq(90545)
step
clicknpc Tranquil Necroray##236953+
use the Lasso##235851
|tip Use it on the necrorays around this area.
Lasso #6# Tranquil Necrorays |q 89197/1 |goto K'aresh/0 73.85,34.18
|only if haveq(89197) or completedq(89197)
step
Deliver #6# Lassoed Necrorays |q 89197/2 |goto K'aresh/0 76.08,34.97
|tip Walk near the post.
|only if haveq(89197) or completedq(89197)
step
label "Hunt_Lapbug_Skitterers"
clicknpc Lapbug Skitterer##230466+
|tip Use the ability on your screen on the skitterers.
Hunt #10# Lapbug Skitterers |q 85721/2 |goto K'aresh/0 73.60,32.52
|only if haveq(85721) or completedq(85721)
step
label "Collect_Blood_Samples"
use the Tranquilizing Dart##238912
|tip Use it on Regal Thorntails.
clicknpc Regal Thorntail##230795
|tip Click them when they fall asleep.
Collect #5# Blood Samples |q 89240/1 |goto K'aresh/0 72.65,31.27
|only if haveq(89240) or completedq(89240)
step
label "Detangle_Stuck_Lapbugs"
clicknpc Stuck Lapbug##232728+
|tip Run away from them to detangle them.
Detangle #10# Stuck Lapbugs |q 85470/1 |goto K'aresh/0 73.72,31.76
|only if haveq(85470) or completedq(85470)
step
label "Shrink_and_Collect_Slateback_Roamers"
use the Condenser Disc##238905
|tip Use it near a Slateback Roamer.
|tip Aim the orb at the roamer and use the button on your bar to throw it.
clicknpc Slateback Roamer##230457
|tip After the roamer shrinks, click it.
|tip You can find them in and out of Untethered Space.
Shrink and Collect #10# Slateback Roamers |q 85710/1 |goto K'aresh/0 73.16,33.02
|only if haveq(85710) or completedq(85710)
step
label "Clean_Congealed_Lumps"
use the Anima Vacuum##238916
Clean #25# Congealed Lumps |q 89242/1 |goto K'aresh/0 73.91,32.34
|only if haveq(89242) or completedq(89242)
step
talk Om'torid##234643
Select _"I'd like to try the course."_ |gossip 131306
Prepare for the Race |havebuff Race Starting##473850 |goto K'aresh/0 75.72,30.61 |q 86342
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|only if haveq(86342) or completedq(86342)
step
Wait for the Race to Start |havebuff Racing##369968 |goto K'aresh/0 75.66,30.68 |q 86342
|tip This will take about 5 seconds.
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|only if haveq(86342) or completedq(86342)
step
Complete the Race |q 86342/1
|tip Follow the indicated path, flying through rings and any wind gusts you see.
|tip Use your dragonriding abilities frequently to maintain a swift pace.
|tip The immediate next path appears in orange, while future paths appear in blue.
|only if haveq(86342) or completedq(86342)
step
label "Document_Domineering_K'arrocs"
use the Appropriated Azerothian Camera##238908
|tip Use it and activate the button on the bar while facing Domineering K'arrocs around this area.
|tip When a pillar of light comes off them, you will get credit for the picture.
|tip They fly around and land on rocks at the indicated locations.
'|clicknpc Domineering K'arroc##230464
Document #7# Domineering K'arrocs |q 89213/1 |goto K'aresh/0 76.16,30.06
You can find more around [K'aresh/0 72.90,30.25]
|only if haveq(89213) or completedq(89213)
step
label "Shrink_and_Collect_Domineering_K'arrocs"
use the Condenser Disc##238913
|tip Use it and activate the button on the bar to throw a shrinking device at a Domineering K'arroc.
|tip Click them to collect them.
|tip They fly around and land on rocks at the indicated locations.
clicknpc Domineering K'arroc##230464
Shrink and Collect #8# Domineering K'arrocs |q 89238/1 |goto K'aresh/0 76.16,30.06
You can find more around [K'aresh/0 72.90,30.25]
|only if haveq(89238) or completedq(89238)
step
label "Wash_Domineering_K'arrocs"
use the Anima Vacuum##238909
|tip Use it on Domineering K'arrocs around this area.
|tip They fly around and land on rocks at the indicated locations.
'|clicknpc Domineering K'arroc##230464
Wash #10# Domineering K'arrocs |q 89198/1 |goto K'aresh/0 76.16,30.06
You can find more around [K'aresh/0 72.90,30.25]
|only if haveq(89198) or completedq(89198)
step
label "Douse_Regal_Thorntails"
use the Pheromone Disperser##238911
|tip Use it on Regal Thorntails all over this area.
'|clicknpc Regal Thorntail##230795
Douse #8# Regal Thorntails |q 89057/1 |goto K'aresh/0 73.38,31.14
|only if haveq(89057) or completedq(89057)
step
label "Collect_Chopped_Oasis_Plants"
click Pricklebloom+
|tip They look like green and orange plants near bigger trees around this area.
|tip They appear on your minimap as yellow dots.
collect 7 Chopped Oasis Plants##235914 |q 89221/1 |goto K'aresh/0 73.60,32.52
|only if haveq(89221) or completedq(89221)
step
label "Document_Regal_Thorntails"
clicknpc Regal Thorntail##230795+
use the Appropriated Azerothian Camera##238906
|tip Use the ability on your bar to take pictures of Regal Thorntails around the dome.
Document #10# Regal Thorntails |q 89212/1 |goto K'aresh/0 74.27,31.81
|only if haveq(89212) or completedq(89212)
step
label "Pick_Up_Overworked_Honey_Bees"
clicknpc Overworked Honey Bee##232487+
|tip They look like small bees sleeping on the ground all over the dome.
Pick Up #10# Overworked Honey Bees |q 89209/1 |goto K'aresh/0 74.51,31.58
|only if haveq(89209) or completedq(89209)
step
label "Document_Honey_Bees"
use the Appropriated Azerothian Camera##238903
|tip Use it on Honey Bees around this area.
'|clicknpc Honey Bee##232209
Document #10# Honey Bees |q 89210/1 |goto K'aresh/0 48.11,61.69
|only if haveq(89210) or completedq(89210)
step
label "Sooth_Agitated_Snakes"
clicknpc Agitated Snake##240011+
use Hemet's Soothin' Flute##238216
|tip Use it on Agitated Snakes.
Sooth #15# Agitated Snakes |q 88975/1 |goto K'aresh/0 73.96,31.66
|only if haveq(88975) or completedq(88975)
step
click Plant Platter
Place the Plant Platter |q 89221/2 |goto K'aresh/0 72.96,31.50 |count 1 hidden
|only if haveq(89221) or completedq(89221)
step
click Plant Platter
Place the Plant Platter |q 89221/2 |goto K'aresh/0 71.99,33.47 |count 2 hidden
|only if haveq(89221) or completedq(89221)
step
click Plant Platter
Place the Plant Platter |q 89221/2 |goto K'aresh/0 72.92,34.37 |count 3 hidden
|only if haveq(89221) or completedq(89221)
step
click Overworked Honey Bee##232503
Return the Bees |q 89209/2 |goto K'aresh/0 76.25,29.76
|only if haveq(89209) or completedq(89209)
step
talk Ve'nari##238577
Select _"I'm ready."_ |gossip 132312
Speak with Ve'nari Outside the Oasis |q 89192/1 |goto K'aresh/0 79.94,32.40
|only if haveq(89192) or completedq(89192)
step
click Arcane Filters
click Quad-lateral Bypass System
click Phase Capacitor
click Bag of Screws
|tip Click objects in front of you as Ve'nari calls them out.
|tip Keep matching the correct object until you are finished crafting.
|tip If you make a mistake, talk to Ve'nari again.
|tip Match 6 times correctly to finish.
'|gossip 132312
Craft the Void Shield |q 89192/2 |goto K'aresh/0 79.87,32.46
|only if haveq(89192) or completedq(89192)
step
click Void Shield
collect Void Shield##237021 |q 89192/3 |goto K'aresh/0 79.94,32.40
|only if haveq(89192) or completedq(89192)
step
use Guise of the Phase Diver##246903 |only if hastoy(246903)
click Phase Conduit
Enter Untethered Space |q 88980/1 |goto K'aresh/0 75.88,33.11
|only if haveq(88980) or completedq(88980)
step
use Guise of the Phase Diver##246903 |only if hastoy(246903)
click Phase Conduit
Enter Untethered Space |q 89297/1 |goto K'aresh/0 75.88,33.11
|only if haveq(89297) or completedq(89297)
step
kill Enraged Slateback Shade##239830
collect 10 Slateback Essence##229395 |q 88980/2 |goto K'aresh/0 62.55,47.94
|only if haveq(88980) or completedq(88980)
step
kill Enraged Lapbug Shade##239835+
collect 10 Lapbug Essence##229393 |q 89297/2 |goto K'aresh/0 59.15,59.46
|only if haveq(89297) or completedq(89297)
step
kill Shadowguard Darkweaver##236883, Shadowguard Destroyer##236806, Shadowguard Duskwalker##236882, Shadowguard Infiltrator##236880, Shadowguard Voidripper##236881
collect 15 Stolen Food Shipment##231508 |q 85461/1 |goto Tazavesh/0 41.92,63.48
|only if haveq(85461) or completedq(85461)
step
kill Hungry Trashmite##238473, Scavenger Worm##238413
collect 20 Devourer Anima##229412 |q 85459/1 |goto Tazavesh/0 67.77,41.64
You can find more around [Tazavesh/0 53.69,30.59]
|only if haveq(85459) or completedq(85459)
step
talk Ve'nari##231820
turnin Anima Reclamation Program##85459 |goto K'aresh/0 75.89,34.18 |only if haveq(85459) or completedq(85459)
turnin Food Run##85461 |goto K'aresh/0 75.89,34.18 |only if haveq(85461) or completedq(85461)
turnin Who You Gonna Call?##88980 |goto K'aresh/0 75.89,34.18 |only if haveq(88980) or completedq(88980)
turnin I Want a Golden Ooze!##89242 |goto K'aresh/0 75.89,34.18 |only if haveq(89242) or completedq(89242)
turnin Not as Cute When They Are Bigger and Angrier##89297 |goto K'aresh/0 75.89,34.18 |only if haveq(89297) or completedq(89297)
turnin Shutterbug##89254 |goto K'aresh/0 75.89,34.18 |only if haveq(89254) or completedq(89254)
turnin A Hard Day's Work##89192 |goto 75.89,34.18 |only if haveq(89192) or completedq(89192)
|only if haveq(85459,85461,88980,89242,89297,89254,89192) or completedq(85459,85461,88980,89242,89297,89254,89192)
step
talk Om'talad##230736
turnin A Reel Problem##90545 |goto K'aresh/0 75.81,34.20 |only if haveq(90545) or completedq(90545)
turnin Ridge Racer##85481 |goto K'aresh/0 75.81,34.20 |only if haveq(85481) or completedq(85481)
turnin Dream-Dream-Dream-Dream-Dreameringeding!##89240 |goto K'aresh/0 75.81,34.20 |only if haveq(89240) or completedq(89240)
turnin Ray-ket Ball, Redux##89056 |goto K'aresh/0 75.81,34.20 |only if haveq(89056) or completedq(89056)
turnin Sizing Them Up##85710 |goto K'aresh/0 75.81,34.20 |only if haveq(85710) or completedq(85710)
turnin Flights of Fancy##89213 |goto K'aresh/0 75.81,34.20 |only if haveq(89213) or completedq(89213)
turnin A Challenge for Dominance##85462 |goto K'aresh/0 75.81,34.20 |only if haveq(85462) or completedq(85462)
turnin Royal Photographer##89212 |goto K'aresh/0 75.81,34.20 |only if haveq(89212) or completedq(89212)
turnin Follow-up Appointment##89238 |goto K'aresh/0 75.81,34.20 |only if haveq(89238) or completedq(89238)
turnin Soaring over K'aresh##86342 |goto K'aresh/0 75.81,34.20 |only if haveq(86342) or completedq(86342)
turnin Play Ball##85465 |goto K'aresh/0 75.81,34.20 |only if haveq(85465) or completedq(85465)
turnin Ray Ranching##89197 |goto K'aresh/0 75.81,34.20 |only if haveq(89197) or completedq(89197)
|only if haveq(90545,85481,89240,89056,85710,89213,85462,89212,89238,86342,85465,89197) or completedq(90545,85481,89240,89056,85710,89213,85462,89212,89238,86342,85465,89197)
step
talk Hemet Nesingwary##235353
turnin Ray-cing for the Future##89065 |goto K'aresh/0 75.81,34.04 |only if haveq(89065) or completedq(89065)
turnin Nesting Upkeep##88981 |goto K'aresh/0 75.81,34.04 |only if haveq(88981) or completedq(88981)
turnin More Cozy Beds##88659 |goto K'aresh/0 75.81,34.04 |only if haveq(88659) or completedq(88659)
turnin Spooked Slitherin' Snakes##88975 |goto K'aresh/0 75.81,34.04 |only if haveq(88975) or completedq(88975)
turnin Killer Instinct##85721 |goto K'aresh/0 75.81,34.04 |only if haveq(85721) or completedq(85721)
|only if haveq(89065,88981,88659,88975,85721) or completedq(89065,88981,88659,88975,85721)
step
talk Botanist Alaenra##232385
turnin Shake your Bee-hind##89194 |goto K'aresh/0 75.76,33.85 |only if haveq(89194) or completedq(89194)
turnin Funny Buzzness##89195 |goto K'aresh/0 75.76,33.85 |only if haveq(89195) or completedq(89195)
turnin Root Redux##85470 |goto K'aresh/0 75.76,33.85 |only if haveq(85470) or completedq(85470)
turnin Leafing Things on the Ground##89221 |goto K'aresh/0 75.76,33.85 |only if haveq(89221) or completedq(89221)
turnin Bu-zzz##89209 |goto K'aresh/0 75.76,33.85 |only if haveq(89209) or completedq(89209)
turnin Photography is the Bee's Knees##89210 |goto K'aresh/0 75.76,33.85 |only if haveq(89210) or completedq(89210)
|only if haveq(89194,89195,85470,89221,89209,89210) or completedq(89194,89195,85470,89221,89209,89210)
step
talk Rhubarn##234316
turnin Dry Cleaning##89198 |goto K'aresh/0 75.94,34.56 |only if haveq(89198) or completedq(89198)
turnin Pee-Yew de Foxy##89057 |goto K'aresh/0 75.94,34.56 |only if haveq(89057) or completedq(89057)
|only if haveq(89198,89057) or completedq(89198,89057)
step
You have completed the Ecological Succession weeklies this week
|tip This guide will reset when more become available.
Click Here to Restart and Accept Mid-Week Quests |confirm |or |next "Accept_Weekly_Quests"
|tip If you unlock new dailies or new dailies spawn mid-week, click to restart the guide manually.
'|complete not completedq(85459,85461,88980,89242,89297,89254,89192,90545,89194,89195,85481,89240,89056,85710,89213,85462,89212,89238,86342,85465,89197,89065,88981,88659,88975,85470,89221,89209,89210,89198,89057) |or |next "Accept_Weekly_Quests"
]])
QuestCore:RegisterGuide("Daily Guides\\The War Within (70-80)\\Warrants",{
author="QuestCore",
getquestonmap={2472},
},[[
step
Complete "The Tabiqa" Quest in K'aresh |complete completedq(84910)
|tip You must complete the third chapter of the K'aresh story to access warrants.
|loadguide "Leveling Guides\\The War Within (70-80)\\Story Campaigns\\K'aresh (Story Only)"
step
talk Constable Zo'ardaz##238255
accept A Key Threat##87344 |goto Tazavesh/0 48.56,57.75
step
label "Begin_Warrant_Quests"
Accept a Warrant |complete haveq(87546,87001,87405,87343,87345,89490) or itemcount(239276) >= 1 or itemcount(236353) >= 1 or itemcount(236967) >= 1 or itemcount(236957) >= 1 or itemcount(239314) >= 1 |autoacceptany 87546,87001,87405,87343,87345,89490 |goto Tazavesh/0 48.47,58.41
|tip A new warrant becomes available each weekly reset.
step
talk Constable Zo'ardaz##238255
accept More Than Just a Phase##91093 |goto Tazavesh/0 48.56,57.75
step
talk Engineer Om'loof##238057
accept Energy Encapsulation##87404 |goto K'aresh/0 47.95,57.35
accept Untethered Battery##87301 |goto K'aresh/0 47.95,57.35
|only if haveq(87546)
step
talk Botanist Mo'chee##238069
accept Large Sticky Voidmass##87425 |goto K'aresh/0 49.38,54.33
|only if haveq(87546)
step
kill Void-Tainted Growth##238003+
|tip They look like purple flower patches in green areas around the dome.
kill Void Mass##238085, Void Residue##238028
|tip They will attack you after destroying the growths.
collect 5 Corrupted Sap##237019 |q 87425/1 |goto K'aresh/0 48.03,56.11
|only if haveq(87546)
step
talk Myi Koo##237996
Select _"Can you assist me?"_ |gossip 132948
Speak with Myi Koo |q 87301/1 |goto K'aresh/0 51.35,48.59
|only if haveq(87546)
step
click Phase Conduit
Use the Phase Conduit to Enter Untethered Space |q 87301/3 |goto K'aresh/0 51.21,48.57
|only if haveq(87546)
step
Collect #10# Untethered Energy Samples |q 87301/2 |goto K'aresh/0 53.41,48.70
|tip Walk near jars shooting purple looking liquid out the top.
|tip They appear on your minimap as yellow dots.
|only if haveq(87546)
step
|script local d=C_UnitAuras.GetPlayerAuraBySpellID(1214374) if d then CancelSpellByName(d.name) end
Exit Phase Diving |complete not hasbuff(1214374) or completedq(87404) |goto K'aresh/0 51.22,48.57
|only if haveq(87546)
stickystart "Kill_Crackling_Wyrms"
step
kill Crackling Wyrm##236191+
click Power Harvester+
|tip They look like large glowing pylons on the ground around this area.
Collect #12# Energy |q 87404/1 |goto K'aresh/0 60.83,45.83
|only if haveq(87546)
step
label "Kill_Crackling_Wyrms"
kill 8 Crackling Wyrm##236191 |q 87404/2 |goto K'aresh/0 60.83,46.19
|only if haveq(87546)
step
talk Botanist Mo'chee##238069
turnin Large Sticky Voidmass##87425 |goto K'aresh/0 49.38,54.33
|only if haveq(87546)
step
collect Large Sticky Voidmass##236964 |q 87546/1 |goto K'aresh/0 49.38,54.33
|only if haveq(87546)
step
talk Engineer Om'loof##238057
turnin Energy Encapsulation##87404 |goto K'aresh/0 47.95,57.36
turnin Untethered Battery##87301 |goto K'aresh/0 47.95,57.36
|only if haveq(87546)
step
collect Energy Encapsulation##236937 |q 87546/2 |goto K'aresh/0 47.95,57.36
|only if haveq(87546)
step
collect Untethered Battery##239249 |q 87546/3 |goto K'aresh/0 47.95,57.36
|only if haveq(87546)
step
Click the Complete Quest Box
turnin Warrant: Purple Peat##87546 |goto K'aresh/0 47.95,57.36
|only if haveq(87546)
step
use the Purple Peat Cell Key##239276
accept Eliminate Purple Peat##90125 |goto K'aresh/0 48.02,57.29
|only if itemcount(239276) >= 1
step
collect Purple Peat Cell Key##239276 |q 90125/2 |goto K'aresh/0 48.02,57.29
|only if haveq(90125) or completedq(90125)
step
click Stasis Cell: Purple Peat
|tip This will spawn a rare mob with a large amount of health.
|tip You may require assistance to defeat Purple Peat.
kill Purple Peat##241920 |q 90125/1 |goto K'aresh/0 42.50,57.57
|only if haveq(90125) or completedq(90125)
step
talk Engineer Om'loof##238057
accept Calculation Container##87010 |goto K'aresh/0 47.95,57.35
accept Marking Matrix##87285 |goto K'aresh/0 47.95,57.35
|only if haveq(87001)
step
talk Botanist Mo'chee##238069
accept Void Fused Resin##87298 |goto K'aresh/0 49.38,54.33
|only if haveq(87001)
step
kill Void-Tainted Growth##238003+
|tip Destroy the white and purple flowers around green areas of the dome.
kill Void Residue##238028, Void Mass##238085
|tip Some of the growths will spawn these.
collect 35 Corrupted Granules##235918 |q 87298/1 |goto K'aresh/0 48.91,55.99
|only if haveq(87001)
step
talk Botanist Mo'chee##238069
turnin Void Fused Resin##87298 |goto K'aresh/0 49.38,54.33
|only if haveq(87001)
step
collect Void Fused Resin##235982 |q 87001/3 |goto K'aresh/0 49.38,54.33
|only if haveq(87001)
stickystart "Retrieve_Weighty_Variable_Rods"
step
use the Containment Trap##235898
|tip Use it on Shadowguard Voidblade to trap them.
|tip Click them to extract the markings.
kill Shadowguard Voidblade##230777+
|tip Kill the voidblades after extracting.
Extract #8# Void Markings |q 87285/1 |goto K'aresh/0 53.49,49.14
|only if haveq(87001)
step
label "Retrieve_Weighty_Variable_Rods"
kill Shadowguard Voidblade##230777, Shadowguard Speardancer##230776
|tip These sometimes drop rods.
click Weighty Variable Rod+
|tip They drop from Shadowguard mobs and can sometimes be found near tents and objects around this area.
|tip Gather 5 of them before returning.
|tip They will prevent you from flying and reduce your walking and mounted speed by 7% each.
Retrieve 5 Weighty Variable Rods |complete hasbuff(1218526,5) |goto K'aresh/0 53.49,49.14
|only if haveq(87001)
step
Deliver the Weighty the Variable Rods Back to Om'loof |q 87010/1 |goto K'aresh/0 48.00,57.35
|only if haveq(87001)
step
talk Engineer Om'loof##238057
turnin Calculation Container##87010 |goto K'aresh/0 47.95,57.35
turnin Marking Matrix##87285 |goto K'aresh/0 47.95,57.35
|only if haveq(87001)
step
collect Calculation Container##235866 |q 87001/1 |goto K'aresh/0 47.95,57.35
|only if haveq(87001)
step
collect Marking Matrix##235913 |q 87001/2 |goto K'aresh/0 47.95,57.35
|only if haveq(87001)
step
Click the Complete Quest Box
turnin Warrant: Shatterpulse##87001 |goto K'aresh/0 47.95,57.30
|only if haveq(87001)
step
use the Shatterpulse Cell Key##236353
accept Eliminate Shatterpulse##90124
|only if itemcount(236353) >= 1
step
click Stasis Cell: Shatterpulse
|tip This will spawn a rare mob with a large amount of health.
|tip You may require assistance to defeat Shatterpulse.
kill Shatterpulse##238135 |q 90124/1 |goto K'aresh/0 49.18,28.26
|only if haveq(90124) or completedq(90124)
step
talk Zo'kita##238474
accept Basket of Zo'kita Fruit##87420 |goto Tazavesh/0 52.45,57.87
|only if haveq(87405)
step
talk Citizen Om'sto##238486
accept A Dozen Veilshards##87548 |goto Tazavesh/0 46.65,50.23
|only if haveq(87405)
step
label "Collect_Stolen_Veilshards"
clicknpc Thieving Scurrier##238971, Thieving Scurrier##239019, Thieving Scurrier##239015, Thieving Scurrier##239021,Thieving Scurrier##239022
|tip Follow them around the city until they stop to reveal a shard.
click Stolen Veilshard
|tip They look like glowing orbs on the ground after a Thieving Scurrier reveals them.
collect 12 Stolen Veilshard##237266 |q 87548/1 |goto Tazavesh/0 46.31,51.00
|only if haveq(87405)
step
talk Citizen Om'sto##238486
turnin A Dozen Veilshards##87548 |goto Tazavesh/0 46.65,50.23
|only if haveq(87405)
step
collect A Dozen Veilshards##237352 |q 87405/2 |goto Tazavesh/0 46.65,50.23
|only if haveq(87405)
step
talk Zo'nog##238591
accept Flavorful Scraps##87426 |goto Tazavesh/0 68.57,42.44
|only if haveq(87405)
step
kill Hungry Trashmite##238473+
click Tazavesh Trash+
|tip They look like large piles of trash and debris on the ground around this area.
collect 24 Discarded Items##237022 |q 87426/1 |goto Tazavesh/0 69.40,35.35
You can find more around [Tazavesh/0 54.31,30.39]
|only if haveq(87405)
step
talk Zo'nog##238591
turnin Flavorful Scraps##87426 |goto Tazavesh/0 68.57,42.44
|only if haveq(87405)
step
collect Flavorful Scraps##236966 |q 87405/3 |goto Tazavesh/0 68.57,42.44
|only if haveq(87405)
step
use the Zo'kita Safety Gear##237009
|tip You must use this to see the fruit.
click Zo'kita Fruit+
|tip They look like red fruit surrounded by red light on the ground around this area.
collect 8 Freshly Picked Zo'kita##236972 |q 87420/1 |goto K'aresh/0 47.96,56.46
|only if haveq(87405)
step
talk Zo'kita##238474
turnin Basket of Zo'kita Fruit##87420 |goto Tazavesh/0 52.45,57.87
|only if haveq(87405)
step
collect Basket of Zo'kita Fruit##236962 |q 87405/1 |goto Tazavesh/0 52.45,57.87
|only if haveq(87405)
step
Click the Complete Quest Box
turnin Warrant: Grubber##87405 |goto Tazavesh/0 52.45,57.87
|only if haveq(87405)
step
use the Grubber Lure##236967
accept Eliminate Grubber##90126
|only if itemcount(236967) >= 1
step
click Grubber Lure
kill Grubber##238540 |q 90126/1 |goto Tazavesh/0 71.13,57.14
|only if haveq(90126) or completedq(90126)
step
talk Citizen Om'sto##238486
accept A Bag of Veilshards##87597 |goto Tazavesh/0 46.65,50.23
|only if haveq(87343)
step
clicknpc Thieving Scurrier##239016+
|tip They look like large rats all around this area.
|tip Follow them through the city until they stop and reveal a veilshard.
click Stolen Veilshard+
|tip They look like tiny red crystals that are revealed by scurriers.
collect 18 Om'sto's Veilshards##237353 |q 87597/1 |goto Tazavesh/0 41.92,55.22
|only if haveq(87343)
step
talk Citizen Om'sto##238486
turnin A Bag of Veilshards##87597 |goto Tazavesh/0 46.65,50.23
|only if haveq(87343)
step
collect A Bag of Veilshards##237354 |q 87343/3 |goto Tazavesh/0 46.65,50.23
|only if haveq(87343)
step
talk Acquisitioner Xy'gui##238181
accept Pile of Voidbane Gems##87324 |goto K'aresh/0 53.89,26.93
accept Umbral Facade##87358 |goto K'aresh/0 53.89,26.93
|only if haveq(87343)
step
click Phase Conduit
Enter Phase Diving |complete hasbuff(1214374) or completedq(87324) |goto K'aresh/0 53.92,26.75
|only if haveq(87343)
stickystart "Collect_Voidbane_Gems"
step
clicknpc Phaseblade Bandit##238312
use the Essence Scanner##236679
|tip Use it on Phaseblade Bandits before killing them.
Scan #18# Shadowguard Essences |q 87358/1 |goto K'aresh/0 49.73,23.41
|only if haveq(87343)
step
label "Collect_Voidbane_Gems"
click Voidbane Stash+
|tip They look like half-buried objects on the ground around this area.
click Voidbane Gem+
|tip They look like small gems on the ground around this area.
kill Phaseblade Bandit##238312+
collect 20 Voidbane Gem##236407 |q 87324/1 |goto K'aresh/0 49.73,23.41
|only if haveq(87343)
step
talk Acquisitioner Xy'gui##238181
turnin Pile of Voidbane Gems##87324 |goto K'aresh/0 53.89,26.93
turnin Umbral Facade##87358 |goto K'aresh/0 53.89,26.93
|only if haveq(87343)
step
collect Pile of Voidbane Gems##235917 |q 87343/1
|only if haveq(87343)
step
collect Umbral Facade##236688 |q 87343/2
|only if haveq(87343)
step
Click the Complete Quest Box
turnin Warrant: Hollowbane##87343 |goto Tazavesh/0 52.45,57.87
|only if haveq(87343)
step
use the Hollowbane Portal Key##236957
accept Eliminate Hollowbane##90123
|only if itemcount(236957) >= 1
step
|script local d=C_UnitAuras.GetPlayerAuraBySpellID(1214374) if d then CancelSpellByName(d.name) end
Leave Untethered Space |complete not hasbuff(1214374) or completedq(90123)
|tip Cancel the {b}Phase Diving{} buff to return to normal space.
|only if haveq(90123)
step
click Hollowbane Portal
kill Hollowbane##238536 |q 90123/1 |goto K'aresh/0 48.41,16.91
|only if haveq(90123) or completedq(90123)
step
talk Citizen Om'sto##238486
accept Smuggler's Mark##89505 |goto Tazavesh/0 46.65,50.24
|only if haveq(89490)
step
click Missing Scrolls+
|tip They look like bundles of paper in crates around this area.
click Missing Token Box+
|tip They look like small boxes around this area.
click Missing Luggage+
|tip They look like large containers around this area.
kill Sufaadi Bladetamer##230352, Sufaadi Soulbinder##230354, Sufaadi Pactspeaker##231694, Sufaadi Enforcer##231689, Sufaadi Headhunter##231692
|tip Loot them to collect various items
Fill Vesto's Pack with Items |q 89505/1 |goto K'aresh/0 78.82,49.75
|only if haveq(89490)
step
talk Engineer Om'loof##238057
accept Charged Crystal##89501 |goto K'aresh/0 47.95,57.35
|only if haveq(89490)
step
talk Acquisitioner Xy'gui##238181
accept Arcane Runed Sigil##90081 |goto K'aresh/0 51.21,48.24
|only if haveq(89490)
step
talk Myi Koo##237996
Select _"Can you assist me?"_ |gossip 132948
Speak with Myi Koo |q 89501/1 |goto K'aresh/0 51.35,48.59
|only if haveq(89490)
step
Enter the Archival Assault Delve |q 90081/1 |goto Archival Assault/3 42.01,85.80
|tip You can do this on any difficulty.
|only if haveq(89490)
step
Enter the Archival Assault Delve |q 89501/1 |goto Archival Assault/3 42.01,85.80
|tip You can do this on any difficulty.
|only if haveq(89490)
stickystart "Collect_Arcane_Energy_Samples"
stickystart "Collect_Etched_Fragments"
step
click Uncharged Crystal
collect Uncharged Crystal##239446 |q 89501/4 |goto Archival Assault/1 42.52,76.34
|only if haveq(89490)
step
label "Collect_Arcane_Energy_Samples"
Collect #6# Arcane Energy Samples |q 89501/3 |goto Archival Assault/2 65.81,90.13
|tip They look like large blue orbs all over the delve near clusters of crystals and broken energy tanks.
|tip Walk near them to take a sample.
You can find more around:
[Archival Assault/2 76.09,78.51]
[Archival Assault/1 70.60,60.34]
[Archival Assault/1 52.40,70.27]
[Archival Assault/1 51.64,78.89]
[Archival Assault/1 40.73,87.28]
[Archival Assault/1 46.05,81.89]
|only if haveq(89490)
step
label "Collect_Etched_Fragments"
kill Shadowguard Void Adept##244111, Shadowguard Arcanotech##244137, Shadowguard Phasecutter##244101, Shadowguard Steelsoul##244140, Shadeye Observer##244138, Prowling Voidstalker##244099, Failed Aspirant##244095
collect 24 Etched Fragment##245740 |q 90081/2 |goto Archival Assault/2 66.75,76.08
|only if haveq(89490)
step
talk Acquisitioner Xy'gui##238181
turnin Arcane Runed Sigil##90081 |goto K'aresh/0 51.21,48.24
|only if haveq(89490)
step
collect Arcane Runed Sigil##239564 |q 89490/3 |goto K'aresh/0 51.21,48.24
|only if haveq(89490)
step
talk Engineer Om'loof##238057
turnin Charged Crystal##89501 |goto K'aresh/0 47.95,57.35
|only if haveq(89490)
step
collect Charged Crystal##239607 |q 89490/1 |goto K'aresh/0 47.95,57.34
|only if haveq(89490)
step
talk Citizen Om'sto##238486
turnin Smuggler's Mark##89505 |goto Tazavesh/0 46.65,50.24
|only if haveq(89490)
step
collect Smuggler's Mark##239484 |q 89490/2 |goto Tazavesh/0 46.65,50.24
|only if haveq(89490)
step
Click the Complete Quest Box
turnin Warrant: Arcana-Monger So'zer##89490 |goto Tazavesh/0 52.45,57.87
|only if haveq(89490)
step
use the Arcane Lure##239314
accept Eliminate Arcana-Monger So'zer##90127
|only if itemcount(239314) >= 1
step
click Arcane Lure
kill Arcana-Monger So'zer##241956 |q 90127/1 |goto Tazavesh/0 35.01,36.47
|only if haveq(90127) or completedq(90127)
step
talk Zo'kita##238474
accept Zo'kita Fruit##87380 |goto Tazavesh/0 52.45,57.88
|only if haveq(87345)
step
talk Citizen Om'sto##238486
accept Ethereal Seal##87376 |goto Tazavesh/0 46.65,50.24
|only if haveq(87345)
step
click Tazavesh Trash+
|tip They look like large piles of trash on the ground around the sandy areas.
kill Hungry Trashmite##238398+
|tip They sometimes spawn and attack from trash.
collect 12 Discarded Shadow Writ##236781 |q 87376/1 |goto Tazavesh/0 49.62,31.00
|only if haveq(87345)
step
talk Citizen Om'sto##238486
turnin Ethereal Seal##87376 |goto Tazavesh/0 46.65,50.24
|only if haveq(87345)
step
collect Ethereal Seal##236783 |q 87345/2 |goto Tazavesh/0 46.65,50.24
|only if haveq(87345)
step
talk Deputy Zo'mi##238387
|tip Inside the building.
accept Tazavesh Facade##87363 |goto Tazavesh/0 46.88,57.48
|only if haveq(87345)
step
click Phase Conduit
|tip Inside the building.
Use the Phase Conduit Enter Untethered Space |q 87380/2 |goto Tazavesh/0 46.80,56.86
|only if haveq(87345)
step
kill Untethered Bumpskull##238479, Untethered Jawhead##238478
collect 8 Untethered Hide##236859 |q 87380/1 |goto Tazavesh/0 44.37,60.72
|only if haveq(87345)
step
|script local d=C_UnitAuras.GetPlayerAuraBySpellID(1214374) if d then CancelSpellByName(d.name) end
Leave Untethered Space |complete not hasbuff(1214374) or completedq(87363)
|tip Cancel the {b}Phase Diving{} buff to return to normal space.
|only if haveq(87345)
step
clicknpc Shadowguard Darkweaver##236883, Shadowguard Duskwalker##236882, Shadowguard Infiltrator##236880, Shadowguard Voidripper##236881
use the Essence Scanner##236766
|tip Use it on NPCs before you kill them.
Scan #15# Shadowguard Essence |q 87363/1 |goto Tazavesh/0 40.55,61.08
|only if haveq(87345)
step
talk Zo'kita##238474
turnin Zo'kita Fruit##87380 |goto Tazavesh/0 52.45,57.88
|only if haveq(87345)
step
collect Zo'kita Fruit##236858 |q 87345/3 |goto Tazavesh/0 52.45,57.88
|only if haveq(87345)
step
talk Deputy Zo'mi##238387
|tip Inside the building.
turnin Tazavesh Facade##87363 |goto Tazavesh/0 46.88,57.48
|only if haveq(87345)
step
collect Tazavesh Facade##236762 |q 87345/1 |goto Tazavesh/0 46.88,57.48
|only if haveq(87345)
step
Click the Complete Quest Box
turnin Warrant: Xy'vox the Twisted##87345 |goto Tazavesh/0 52.45,57.87
|only if haveq(89490)
step
use the Xy'vox Refuge Dampener##236753
accept Eliminate Xy'vox the Twisted##90122
|only if itemcount(236753) >= 1
step
click Xy'vox Concealed Refuge
kill Xy'vox the Twisted##238384 |q 90122/1 |goto Tazavesh/0 35.01,36.47
|only if haveq(90122) or completedq(90122)
step
Use a Warrant Key and Eliminate a Warrant Target |q 87344/1
|only if haveq(87344)
step
talk Constable Zo'ardaz##238255
turnin Eliminate Purple Peat##90125 |goto Tazavesh/0 48.58,57.75 |noautoaccept |only if haveq(90125) or completedq(90125)
turnin Eliminate Shatterpulse##90124 |goto Tazavesh/0 48.58,57.75 |noautoaccept |only if haveq(90124) or completedq(90124)
turnin Eliminate Grubber##90126 |goto Tazavesh/0 48.58,57.75 |noautoaccept |only if haveq(90126) or completedq(90126)
turnin Eliminate Hollowbane##90123 |goto Tazavesh/0 48.58,57.75 |noautoaccept |only if haveq(90123) or completedq(90123)
turnin Eliminate Xy'vox the Twisted##90122 |goto Tazavesh/0 48.58,57.75 |noautoaccept |only if haveq(90122) or completedq(90122)
turnin Eliminate Arcana-Monger So'zer##90127 |goto Tazavesh/0 48.58,57.75 |noautoaccept |only if haveq(90127) or completedq(90127)
|tip You can turn this quest in now or you can wait until the end of the week.
|tip If you wait, you can summon the rare each day with the item.
turnin A Key Threat##87344 |goto Tazavesh/0 48.58,57.75 |only if readyq(87344)
|only if haveq(90125,90124,90126,90123,90122,90127) or completedq(90125,90124,90126,90123,90122,90127) or readyq(87344)
step
You Have Completed the Warrant for This Week |complete not completedq(90125,90124,90126,90123,90122,90127) or itemcount(239276) >= 1 or itemcount(236353) >= 1 or itemcount(236967) >= 1 or itemcount(236957) >= 1 or itemcount(239314) >= 1 |next "Begin_Warrant_Quests"
|tip A new warrant will be available at the next weekly reset.
]])
