-- QuestCore bundled guide (mists)
if not QuestCore then return end
QuestCore:RegisterGuide("Reputation Guides\\Burning Crusade Reputations\\The Aldor",{
expansion="mists",
description="This guide will walk you through becoming exalted with The Aldor faction.",
condition_suggested=function() return level >= 80 and level <= 85 and rep('The Aldor') < Exalted end,
achieveid={903,1205},
patch='30001',
},[[
step
talk Haggard War Veteran##19684
accept A'dal##10210 |goto Shattrath City,61.20,12.60
step
talk A'dal##18481
turnin A'dal##10210 |goto Shattrath City 54,44.80
step
talk Khadgar##18166
accept City of Light##10211 |goto Shattrath City 54.80,44.30
Follow Khadgar's Servant
step
Follow Khadgar's Servant until the tour is over |q 10211/1
step
talk Khadgar##18166
turnin City of Light##10211 |goto Shattrath City 54.80,44.30
accept Allegiance to the Aldor##10551 |goto Shattrath City 54.80,44.30
step
talk Khadgar##18166
accept Ishanah##10554 |goto Shattrath City 54.80,44.30
step
Ride the elevator up to the Aldor Rise |goto Shattrath City,41.70,38.60 < 5 |q 11038 |only if walking
talk Vindicator Kaan##23271
accept Assist Exarch Orelis##11038 |goto Shattrath City,35.10,32.40
step
talk Adyen the Lightwarden##18537
accept Marks of Kil'jaeden##10325 |goto Shattrath City 30.70,34.60
accept Marks of Sargeras##10653 |goto Shattrath City 30.70,34.60
step
talk Ishanah##18538
turnin Ishanah##10554 |goto Shattrath City 24,29.70
accept Restoring the Light##10021 |goto Shattrath City 24,29.70
accept A Cleansing Light##10420 |goto Shattrath City 24,29.70
step
talk Sha'nir##18597
accept A Cure for Zahlia##10020 |goto Shattrath City 64.50,15.10
step
kill Cabal Spell-weaver##21902+,Cabal Initiate##21907+,Cabal Skirmisher##21661+
collect 10 Mark of Kil'jaeden##29425 |goto Terokkar Forest,39.00,59.70
step
click the Eastern Altar##182565
Purify the Eastern Altar |q 10021/2 |goto Terokkar Forest,49.20,20.30
step
click the Northern Altar##182563
Purify the Northern Altar |q 10021/1 |goto Terokkar Forest 50.70,16.60
step
click the Western Altar##182566
Purify the Western Altar |q 10021/3 |goto Terokkar Forest 48.10,14.50
step
kill Stonegazer##18648+
collect Stonegazer's Blood##25815 |q 10020/1 |goto Terokkar Forest,61.30,25.30
step
talk Adyen the Lightwarden##18537
turnin Marks of Kil'jaeden##10325 |goto Shattrath City 30.70,34.60
step
talk Sha'nir##18597
turnin A Cure for Zahlia##10020 |goto Shattrath City 64.50,15.10
step
talk Ishanah##18538
turnin Restoring the Light##10021 |goto Shattrath City,24,29.70
step
talk Vindicator Kaan##23271
accept Assist Exarch Orelis##11038 |goto Shattrath City,35.10,32.40
step
talk Exarch Orelis##19466
turnin Assist Exarch Orelis##11038 |goto Netherstorm 32.10,64.20
accept Distraction at Manaforge B'naar##10241 |goto Netherstorm 32.10,64.20
step
kill 8 Sunfury Magister##18855+ |q 10241/1 |goto Netherstorm 26.30,66.70
kill 8 Sunfury Bloodwarder##18853+ |q 10241/2 |goto Netherstorm 26.30,66.70
step
talk Exarch Orelis##19466
turnin Distraction at Manaforge B'naar##10241 |goto Netherstorm 32.10,64.20
accept Measuring Warp Energies##10313 |goto Netherstorm 32.10,64.20
step
talk Anchorite Karja##19467
accept Naaru Technology##10243 |goto Netherstorm 32.10,64.20
step
Stand next to the Northern Pipeline
Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
Measure the Northern Pipeline |q 10313/1 |goto Netherstorm 25.70,60.60
step
Stand next to the Western Pipeline
Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
Measure the Western Pipeline |q 10313/4 |goto Netherstorm 20.90,66.90
step
Stand next to the Southern Pipeline
Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
Measure the Southern Pipeline |q 10313/3 |goto Netherstorm 20.70,70.70
step
click the B'naar Control Console
|tip Inside the doorway northeast of the Southern Pipeline, to the left.
turnin Naaru Technology##10243 |goto Netherstorm 23.20,68.20
accept B'naar Console Transcription##10245 |goto Netherstorm 23.20,68.20
step
Stand next to the Eastern Pipeline
Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
Measure the Eastern Pipeline |q 10313/2 |goto Netherstorm 29,72.70
step
talk Exarch Orelis##19466
turnin Measuring Warp Energies##10313 |goto Netherstorm 32.10,64.20
step
talk Anchorite Karja##19467
turnin B'naar Console Transcription##10245 |goto Netherstorm 32.10,64.20
accept Shutting Down Manaforge B'naar##10299 |goto Netherstorm 32.10,64.20
step
Go inside Manaforge B'naar |goto Netherstorm 23.90,70.70
kill Overseer Theredis##20416
collect B'naar Access Crystal##29366 |q 10299/2
step
Kill all Warp-Engineers in the nearest area to make your life easier.
click the B'naar Control Console
click "<Begin emergency shutdown>"
Kill the technicians as they come to try to save the Manaforge
Only takes 2 minutes
Shut Down Manaforge B'naar |q 10299/1 |goto Netherstorm 23.20,68.10
step
talk Anchorite Karja##19467
turnin Shutting Down Manaforge B'naar##10299 |goto Netherstorm 32.10,64.20
accept Shutting Down Manaforge Coruu##10321 |goto Netherstorm 32.10,64.20
step
talk Exarch Orelis##19466
accept Attack on Manaforge Coruu##10246 |goto Netherstorm 32.10,64.20
step
kill 8 Sunfury Arcanist##20134+ |q 10246/2 |goto Netherstorm 45.90,79.40
step
Go inside Manaforge Coruu
kill 5 Sunfury Researcher##20136+ |q 10246/1 |goto Netherstorm 49,81.50
Kill Overseer Seylanna
collect Coruu Access Crystal##29396 |q 10321 |goto Netherstorm 49,81.50
click the Coruu Control Console##183956
click "<Begin emergency shutdown>"
Kill the technicians as they come to try to save the Manaforge
Only takes 2 minutes
Shut Down Manaforge Coruu |q 10321/1 |goto Netherstorm 49,81.50
step
talk Anchorite Karja##19467
turnin Shutting Down Manaforge Coruu##10321 |goto Netherstorm 32.10,64.20
accept Shutting Down Manaforge Duro##10322 |goto Netherstorm 32.10,64.20
step
talk Exarch Orelis##19466
turnin Attack on Manaforge Coruu##10246 |goto Netherstorm 32.10,64.20
accept Sunfury Briefings##10328 |goto Netherstorm 32.10,64.20
step
kill Sunfury Conjurer##20139+
collect 1 Sunfury Arcane Briefing##29546|q 10328/2 |goto Netherstorm 57.90,63.40
kill Sunfury Bowman##20207+, Sunfury Centurion##20140+
collect 1 Sunfury Military Briefing##29545|q 10328/1 |goto Netherstorm 57.90,63.40
step
Go inside Manaforge Duro
kill Overseer Athanel##20435
collect 1 Duro Access Crystal##29397|q 10322/2 |goto Netherstorm 60.00,68.50
step
click the Duro Control Console##184311
click "<Begin emergency shutdown>"
Kill the technicians as they come to try to save the Manaforge
Only takes 2 minutes
Shut Down Manaforge Duro |q 10322/1 |goto Netherstorm 59.10,66.80
step
talk Exarch Orelis##19466
turnin Sunfury Briefings##10328 |goto Netherstorm 32.10,64.20
accept Outside Assistance##10431 |goto Netherstorm 32.10,64.20
step
talk Anchorite Karja##19467
turnin Shutting Down Manaforge Duro##10322 |goto Netherstorm 32.10,64.20
accept Shutting Down Manaforge Ara##10323 |goto Netherstorm 32.10,64.20
step
talk Kaylaan##20780
turnin Outside Assistance##10431 |goto Netherstorm 34.80,38.30
accept A Dark Pact##10380 |goto Netherstorm 34.80,38.30
stickystart "ganmoarg"
step
kill 3 Daughter of Destiny##18860+ |q 10380/2 |goto Netherstorm 30.80,40.80
step
label "ganmoarg"
kill 6 Gan'arg Warp-Tinker##20285+ |q 10380/1 |goto Netherstorm 26.40,42.30
kill 6 Mo'arg Warp-Master##20326+ |q 10380/3 |goto Netherstorm 26.40,42.30
step
It's inside Manaforge Ara.
kill Overseer Azarad##20685
|tip He walks around inside Manaforge Ara and stops in at this small side room.
collect Ara Access Crystal##29411 |q 10323/2 |goto Netherstorm 26.70,36.80
step
click the Ara Control Console##184312
click "<Begin emergency shutdown>"
Kill the technicians as they come to try to save the Manaforge
Only takes 2 minutes
Shut Down Manaforge Duro |q 10323/1 |goto Netherstorm 26.00,38.80
step
talk Kaylaan##20780
turnin A Dark Pact##10380 |goto Netherstorm 34.80,38.30
accept Aldor No More##10381 |goto Netherstorm 34.80,38.30
step
talk Exarch Orelis##19466
turnin Aldor No More##10381 |goto Netherstorm 32.10,64.20
step
talk Anchorite Karja##19467
turnin Shutting Down Manaforge Ara##10323 |goto Netherstorm 32.00,64.20
accept Socrethar's Shadow##10407 |goto Netherstorm 32.00,64.20
stickystart "markarma"
step
kill Forgemaster Morug##20800
collect First Half of Socrethar's Stone##29624 |q 10407/1 |goto Netherstorm 37.10,27.80
step
kill Silroth##20801+
collect Second Half of Socrethar's Stone##29625 |q 10407/2 |goto Netherstorm 40.80,19.60
step
label "markarma"
kill Terrorguard Protector##21923+, Gan'arg Mekgineer##16949+, Wrathbringer##18858+, Cyber-Rage Forgelord##16943+
collect 10 Mark of Sargeras##30809+ |q 10653/1 |goto Netherstorm 38.00,27.40
collect 1 Fel Armament##29740 |q 10420/1 |goto Netherstorm 38.00,27.40
More can be found at :
[40.40,22.90]
[42.40,21.50]
step
talk Anchorite Karja##19467
turnin Socrethar's Shadow##10407 |goto Netherstorm 32.00,64.20
accept Ishanah's Help##10410 |goto Netherstorm 32.00,64.20
step
kill Adyen the Lightwarden##18537+
turnin Marks of Sargeras##10653 |goto Shattrath City,30.80,34.60
step
talk Ishanah##18538
turnin Ishanah's Help##10410 |goto Shattrath City 24,29.70
turnin A Cleansing Light##10420 |goto Shattrath City 24,29.70
accept Deathblow to the Legion##10409 |goto Shattrath City 24,29.70
step
Click Voren'thal's Package in your inventory. |use Voren'thal's Package##30260
collect 1 Socrethar's Teleportation Stone##29796 |q 10409 |n
collect 1 Voren'thal's Presence##30259 |q 10409 |goto Netherstorm,36.40,18.40 |n
Step into the teleporter
Use the Socrethar's Teleportation Stone that was provided |use Socrethar's Teleportation Stone##29796 |goto Netherstorm 30.60,17.60,1 |noway|c
step
Use Voren'thal's Presence on Socrethar. |use Voren'thal's Presence##30259
Defeat Socrethar.
Deathblow to the Legion. |q 10409/1 |goto Netherstorm 29.60,14.20
step
talk Ishanah##18538
turnin Deathblow to the Legion##10409 |goto Shattrath City 24,29.70
step
talk Exarch Onaala##21860
accept Karabor Training Grounds##10587 |goto Shadowmoon Valley,61.20,29.20
step
talk Vindicator Aluumen##21822
accept The Ashtongue Tribe##10619 |goto Shadowmoon Valley 61.20,29.10
step
talk Anchorite Ceyla##21402
accept Tablets of Baa'ri##10568 |goto Shadowmoon Valley 62.60,28.40
step
kill 3 Ashtongue Handler##21803+ |q 10619/1 |goto Shadowmoon Valley 58.80,36.50
kill 4 Ashtongue Warrior##21454+ |q 10619/2 |goto Shadowmoon Valley 58.80,36.50
kill 6 Ashtongue Shaman##21453+ |q 10619/3 |goto Shadowmoon Valley 58.80,36.50
click Baar'ri Tablet Fragment##6420
kill Ashtongue Worker##21455
collect 12 Baa'ri Tablet Fragment##30596 |q 10568/1 |goto Shadowmoon Valley 58.80,36.50
step
kill Demon Hunter Initiate##21180+, Demon Hunter Supplicant##21179+
collect 8 Sunfury Glaive##30679 |q 10587/1 |goto Shadowmoon Valley 71.10,52.00
step
talk Vindicator Aluumen##21822
turnin The Ashtongue Tribe##10619 |goto Shadowmoon Valley 61.20,29.10
accept Reclaiming Holy Grounds##10816 |goto Shadowmoon Valley 61.20,29.10
step
talk Anchorite Ceyla##21402
turnin Tablets of Baa'ri##10568 |goto Shadowmoon Valley 62.60,28.40
accept Oronu the Elder##10571 |goto Shadowmoon Valley 62.60,28.40
step
talk Exarch Onaala##21860
turnin Karabor Training Grounds##10587 |goto Shadowmoon Valley 61.20,29.20
accept A Necessary Distraction##10637 |goto Shadowmoon Valley 61.20,29.20
step
kill Oronu the Elder##21663
collect Orders From Akama##30649 |q 10571/1 |goto Shadowmoon Valley 57.20,32.90
step
kill 8 Shadowmoon Slayer##22082+ |q 10816/1 |goto Shadowmoon Valley 67.40,37.60
kill 8 Shadowmoon Chosen##22084+ |q 10816/2 |goto Shadowmoon Valley 67.40,37.60
kill 4 Shadowmoon Darkweaver##22081+ |q 10816/3 |goto Shadowmoon Valley 67.40,37.60
step
kill Sunfury Warlock##21503+
collect 1 Scroll of Demonic Unbanishing##30811 |n
Use the Scroll of Demonic Unbanishing on Azaloth |use Scroll of Demonic Unbanishing##30811
Free Azaloth |q 10637/1 |goto Shadowmoon Valley 70.00,51.40
step
talk Exarch Onaala##21860
turnin A Necessary Distraction##10637 |goto Shadowmoon Valley 61.20,29.20
accept Altruis##10640 |goto Shadowmoon Valley 61.20,29.20
step
talk Vindicator Aluumen##21822
turnin Reclaiming Holy Grounds##10816 |goto Shadowmoon Valley 61.20,29.10
step
talk Anchorite Ceyla##21402
turnin Oronu the Elder##10571 |goto Shadowmoon Valley 62.60,28.40
accept The Ashtongue Corruptors##10574 |goto Shadowmoon Valley 62.60,28.40
step
kill Lakaan##21416
|tip You must destroy the totems first before you can attack him.
collect Lakaan's Medallion Fragment##30693 |q 10574/3 |goto Shadowmoon Valley 49.80,23.10
step
kill Uylaru##21710 |tip You must destroy the totems first before you can attack him.
collect Uylaru's Medallion Fragment##30694 |q 10574/4 |goto Shadowmoon Valley 48.20,39.80
step
kill Eykenen##21709
|tip You must destroy the totems first before you can attack him.
collect Eykenen's Medallion Fragment##30692 |q 10574/1 |goto Shadowmoon Valley 51.30,52.90
step
kill Haalum##21711
|tip You must destroy the totems first before you can attack him.
collect Haalum's Medallion Fragment##30691 |q 10574/2 |goto Shadowmoon Valley 57.10,73.30
step
talk Anchorite Ceyla##21402
turnin The Ashtongue Corruptors##10574 |goto Shadowmoon Valley 62.60,28.40
accept The Warden's Cage##10575 |goto Shadowmoon Valley 62.60,28.40
step
talk Sanoru##21826
turnin The Warden's Cage##10575 |goto Shadowmoon Valley 57.30,49.60
step
talk Altruis the Sufferer##18417
turnin Altruis##10640 |goto Nagrand,27.20,43.00
accept Against All Odds##10669 |goto Nagrand,27.20,43.00
accept Against the Illidari##10668 |goto Nagrand,27.20,43.00
accept Against the Legion##10641 |goto Nagrand,27.20,43.00
step
Use your Imbued Silver Spear in this spot |use Imbued Silver Spear##30853
kill Xeleth##21894 |q 10669/1 |goto Zangarmarsh,16.20,40.70
step
kill Wrath Priestess##18859+
collect Freshly Drawn Blood##30850 |n
Use the Freshly Drawn Blood immediately |use Freshly Drawn Blood##30850
|tip It only last 1 minute, then it disappears if you don't use it in time.
kill Avatar of Sathal##21925 |q 10641/1 |goto Netherstorm,39.60,20.50
step
kill Lothros##21928 |q 10668/1 |goto Shadowmoon Valley,28.30,49.50
|tip He walks around this area, so you may need to search for him.
step
talk Altruis the Sufferer##18417
turnin Against the Legion##10641 |goto Nagrand,27.30,43.10
turnin Against the Illidari##10668 |goto Nagrand,27.30,43.10
turnin Against All Odds##10669 |goto Nagrand,27.30,43.10
accept Illidan's Pupil##10646 |goto Nagrand,27.30,43.10
step
talk Altruis the Sufferer##18417
Ask him to tell you about the demon hunter training grounds at the Ruins of Karabor
Listen to Illidan's Pupil |q 10646/1 |goto Nagrand 27.30,43.10
step
talk Altruis the Sufferer##18417
turnin Illidan's Pupil##10646 |goto Nagrand 27.30,43.10
accept The Book of Fel Names##10649 |goto Nagrand 27.30,43.10
step
Click the doors to the Shadow Labyrinth. |goto Terokkar Forest,39.60,71.00 |n
Go forth into the Shadow Labyrinth. |goto Shadow Labyrinth |noway|c
step
Kill through the instance until you reach Blackheart the Inciter.
kill Blackheart the Inciter##18667
collect 1 Book of Fel Names##30808|q 10649/1
step
talk Altruis the Sufferer##18417
turnin The Book of Fel Names##10649 |goto Nagrand,27.30,43.10
accept Return to the Aldor##10650 |goto Nagrand,27.30,43.10
step
talk Exarch Onaala##21860
turnin Return to the Aldor##10650 |goto Shadowmoon Valley,61.20,29.20
accept Varedis Must Be Stopped##10651 |goto Shadowmoon Valley,61.20,29.20
step
kill Netharel##21164 |q 10651/2 |goto Shadowmoon Valley,68.60,52.70
|tip He is walking amongst the Demon Hunter Supplicants.
step
kill Alandien##21171 |q 10651/4 |goto Shadowmoon Valley 69.60,54.10
step
kill Varedis##21178 |q 10651/1 |goto Shadowmoon Valley 72.20,53.70
When he begins to cast _Metamorphosis_, you will need to use your _Book of Fel Names_ to weaken him. |use Book of Fel Names##30854
step
kill Theras##21168 |q 10651/3 |goto Shadowmoon Valley 72.40,48.40
step
talk Exarch Onaala##21860
turnin Return to the Aldor##10650 |goto Shadowmoon Valley,61.20,29.20
step
At this point, you will need to grind repeatable quests.
You can grind Marks of Kil'jaeden if you are below Honored, or you can farm Marks of Sargeras.
Every spot that drops either of these marks also drops Fel Armaments, which give 100 more rep than 10 marks.
Click here to proceed. |confirm
step
label "farming"
kill Wrathwalker##19740+, Terrormaster##21314+, Makazradon##21501+, Shadow Council Warlock##21302+, Mo'arg Weaponsmith##19755+
collect Mark of Sargeras###30809 |goto Shadowmoon Valley 22.50,34.60
|tip You will need to collect these in multiples of 10.
collect Fel Armament##29740 |goto Shadowmoon Valley 22.50,34.60
When you're ready to turn in, click here. |confirm
step
label "marks"
talk Adyen the Lightwarden##18537
accept More Marks of Sargeras##10654 |n |goto Shattrath City,30.80,34.60
Click here to go back to farming. |next "farming" |confirm
Click here to turn in Fel Armaments |next "fel" |confirm
Earn Exalted Status with The Aldor |complete rep('The Aldor')==Exalted
step
label "fel"
talk Ishanah##18538
accept Fel Armaments##10421 |n |goto Shattrath City 24.00,29.70
Click here to go back to farming. |next "farming"
Click here to turn in Marks of Sargeras |next "marks"
Earn Exalted Status with The Aldor |complete rep('The Aldor')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Burning Crusade Reputations\\Cenarion Expedition",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Cenarion Expedition faction.",
condition_suggested=function() return level >= 80 and level <= 85 and rep('Cenarion Expedition') < Exalted end,
achieveid={953},
patch='30001',
},[[
step
You will need to farm Cenarion Circle and Cenarion Expedition reputation.
Farming rep in the dungeons Slave Pens and Underbog is a good way to gain reputation up to honoroed.
You can also kill naga or any mobs for Unidentified Plant Parts until friendly.
You can also grind reputation from Heroic Coilfang Instances up to exalted if you would rather do that.
|confirm always
step
kill Crust Burster##16844+
|tip They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks.
collect Eroded Leather Case##23338 |n |goto Hellfire Peninsula,47.80,65.80
Click the Eroded Leather Case |use Eroded Leather Case##23338
accept Missing Missive##9373
step
talk Thiah Redmane##16991
turnin Missing Missive##9373 |goto Hellfire Peninsula 15.70,52
accept Demonic Contamination##9372 |goto Hellfire Peninsula 15.70,52
step
kill Hulking Helboar##16880+
collect 6 Helboar Blood Sample##23336 |q 9372/1 |goto Hellfire Peninsula 24.90,54.30
step
talk Thiah Redmane##16991
turnin Demonic Contamination##9372 |goto Hellfire Peninsula 15.70,52
accept Testing the Antidote##10255 |goto Hellfire Peninsula 15.70,52
step
talk Mahuram Stouthoof##16888
accept Keep Thornfang Hill Clear!##10159 |goto Hellfire Peninsula 15.70,52
step
Use the Cenarion Antidote on a Hulking Helboar |use Cenarion Antidote##23337
kill Dreadtusk##16992
Administer the Antidote |q 10255/1 |goto Hellfire Peninsula 25,54
step
talk Thiah Redmane##16991
turnin Testing the Antidote##10255 |goto Hellfire Peninsula 15.70,52
step
kill 8 Thornfang Ravager##19349+ |q 10159/1 |goto Hellfire Peninsula 10.10,53.20
kill 8 Thornfang Venomspitter##19350+ |q 10159/2 |goto Hellfire Peninsula 10.10,53.20
step
talk Mahuram Stouthoof##16888
turnin Keep Thornfang Hill Clear!##10159 |goto Hellfire Peninsula,15.70,52
step
talk Tola'thion##19293
accept Colossal Menace##10132 |goto Hellfire Peninsula 15.60,52.00
step
kill 5 Raging Colossus##19188+ |q 10132/1 |goto Hellfire Peninsula 14.70,44.60
collect Crimson Crystal Shard##29476 |n
Click the Crimson Crystal Shard in your bags |use Crimson Crystal Shard##29476
accept Crimson Crystal Clue##10134
step
talk Tola'thion##19293
turnin Colossal Menace##10132 |goto Hellfire Peninsula 15.60,52.00
turnin Crimson Crystal Clue##10134 |goto Hellfire Peninsula 15.60,52.00
accept The Earthbinder##10349 |goto Hellfire Peninsula 15.60,52.00
step
talk Earthbinder Galandria Nightbreeze##19294
turnin The Earthbinder##10349 |goto Hellfire Peninsula 16.00,51.60
accept Natural Remedies##10351 |goto Hellfire Peninsula 16.00,51.60
step
Use your Seed of Revitalization while standing on the Earthbinder's Circle |use Seed of Revitalization##29478
|tip It's a bright green symbol on the ground.
kill Goliathon##19305
Revitalize Fallen Sky Ridge |q 10351/1 |goto Hellfire Peninsula 13.60,39.10
step
talk Earthbinder Galandria Nightbreeze##19294
turnin Natural Remedies##10351 |goto Hellfire Peninsula 16.00,51.60
step
talk Lauranna Thar'well##17909
accept Plants of Zangarmarsh##9802 |goto Zangarmarsh,80.40,64.20
talk Ikeyen##17956
accept The Umbrafen Tribe##9747 |goto Zangarmarsh,80.40,64.20
step
talk Warden Hamoot##17858
accept A Warm Welcome##9728 |goto Zangarmarsh 79.10,65.30
step
talk Lethyn Moonfire##17834
accept The Dying Balance##9895 |goto Zangarmarsh 78.50,63.10
step
talk Ysiel Windsinger##17841
turnin The Cenarion Expedition##9912 |goto Zangarmarsh 78.40,62
accept Disturbance at Umbrafen Lake##9716 |goto Zangarmarsh 78.40,62
stickystart "plantparts"
step
kill Boglash##18281 |q 9895/1 |goto Zangarmarsh 81,72.20
|tip He is a tall, alien-looking, spore walker who walks in the river around here.
step
label "plantparts"
Kill all mobs in this area
collect 10 Unidentified Plant Parts##24401 |q 9802/1 |goto Zangarmarsh 80.10,73.30
step
talk Lauranna Thar'well##17909
turnin Plants of Zangarmarsh##9802 |goto Zangarmarsh 80.40,64.20
step
talk Lethyn Moonfire##17834
turnin The Dying Balance##9895 |goto Zangarmarsh 78.50,63.10
stickystart "umbraoracle"
step
kill Kataru##18080 |q 9747/1 |goto Zangarmarsh 85.30,90.90
|tip In the big building, all the way at the top.
step
label "umbraoracle"
kill 6 Umbrafen Oracle##18077+ |q 9747/2 |goto Zangarmarsh 83.10,85.20
kill 8 Umbrafen Seer##18079+ |q 9747/3 |goto Zangarmarsh 83.10,85.20
kill 6 Umbrafen Witchdoctor##20115+ |q 9747/4 |goto Zangarmarsh 83.10,85.20
step
talk Kayra Longmane##17969
accept Escape from Umbrafen##9752 |goto Zangarmarsh 83.40,85.50
Escort Kayra Longmane to safety |q 9752/1 |goto Zangarmarsh 83.40,85.50
step
talk Ikeyen##17956
turnin The Umbrafen Tribe##9747 |goto Zangarmarsh 80.40,64.20
accept A Damp, Dark Place##9788 |goto Zangarmarsh 80.40,64.20
talk Lauranna Thar'well##17909
accept Saving the Sporeloks##10096 |goto Zangarmarsh 80.40,64.20
step
talk Windcaller Blackhoof##18070
accept Safeguarding the Watchers##9894 |goto Zangarmarsh 80.40,64.70
step
talk Ysiel Windsinger##17841
turnin Escape from Umbrafen##9752 |goto Zangarmarsh 78.40,62
step
The path to 'Ikeyen's Belongings' starts here |goto Zangarmarsh,74.70,91.60 < 10 |q 9788
Go southwest inside the cave |goto Zangarmarsh 70.50,97.90 |walk
click Ikeyen's Belongings##182122
collect Ikeyen's Belongings##24411 |q 9788/1
stickystart "marshlurkdredge"
step
Go northeast inside the cave |goto Zangarmarsh 72.50,94.00 |walk
kill Lord Klaq##18282 |q 9894/1
|tip On the bottom level of the cave, in the small round room all the way in the back.
step
label "marshlurkdredge"
kill 10 Marsh Lurker##18136+ |q 10096/2 |goto Zangarmarsh 75.70,90.20
kill 10 Marsh Dredger##18137+ |q 10096/1 |goto Zangarmarsh 75.70,90.20
step
Stand here to Investigate Umbrafen Lake |q 9716/1 |goto Zangarmarsh 70.90,82.10
kill Darkcrest Slaver##19946+,Darkcrest Sorceress##19947+
collect 10 Unidentified Plant Parts##24401|q 9802/1
collect 30 Naga Claws##24280|q 9728/1 |goto Zangarmarsh 70.90,82.10
You can find more Naga at:
[73.40,82.30]
[72.20,75.80]
step
talk Windcaller Blackhoof##18070
turnin Safeguarding the Watchers##9894 |goto Zangarmarsh 80.40,64.70
step
talk Ikeyen##17956
turnin A Damp, Dark Place##9788 |goto Zangarmarsh 80.40,64.20
talk Lauranna Thar'well##17909
turnin Saving the Sporeloks##10096 |goto Zangarmarsh 80.40,64.20
Turn in any stacks of 10 Unidentified Plant Parts you have
If you found an Uncatalogued Species, turn that in also
step
talk Warden Hamoot##17858
turnin A Warm Welcome##9728 |goto Zangarmarsh 79.10,65.30
step
talk Lethyn Moonfire##17834
accept What's Wrong at Cenarion Thicket?##9957 |goto Zangarmarsh 78.50,63.10
step
talk Ysiel Windsinger##17841
turnin Disturbance at Umbrafen Lake##9716|goto Zangarmarsh 78.40,62
accept As the Crow Flies##9718 |goto Zangarmarsh 78.40,62
step
Use your Stormcrow Amulet |use Stormcrow Amulet##25465
Watch yourself fly as a crow.
Explore the Lakes of Zangarmarsh |q 9718/1
step
talk Ysiel Windsinger##17841
turnin As the Crow Flies##9718 |goto Zangarmarsh 78.40,62
accept Balance Must Be Preserved##9720 |goto Zangarmarsh 78.40,62
step
talk Windcaller Blackhoof##18070
accept Blessings of the Ancients##9785 |goto Zangarmarsh 80.40,64.70
step
talk Keleth##17901
Get the Mark of War |q 9785/2 |goto Zangarmarsh 78.10,63.80
step
talk Ashyen##17900
Get the Mark of Lore |q 9785/1 |goto Zangarmarsh 81.10,63.90
step
talk Windcaller Blackhoof##18070
turnin Blessings of the Ancients##9785 |goto Zangarmarsh 80.40,64.70
step
Use your Ironvine Seeds on the Umbrafen Lake Pump Controls |use Ironvine Seeds##24355
Disable the Umbrafen Lake Pump Controls |q 9720/1 |goto Zangarmarsh 70.60,80.30
|tip The pump controls look like a little box with some levers on it
step
Use your Ironvine Seeds on the Lagoon Pump Controls |use Ironvine Seeds##24355
Disable the Lagoon Pump Controls |q 9720/4 |goto Zangarmarsh 63.10,64.10
|tip The pump controls look like a little box with some levers on it
step
Use your Ironvine Seeds on the Serpent Lake Controls |use Ironvine Seeds##24355
|tip The pump controls look like a little box with some levers on it
Disable the Serpent Lake Controls |q 9720/3 |goto Zangarmarsh 62,40.80
kill Steam Pump Overseer##18340+, Bloodscale Overseer##20088+, and Bloodscale Wavecaller##20089+
Get a Drain Schematics
Click the Drain Schematics in your bags |use Drain Schematics##24330
accept Drain Schematics##9731
step
Swim straight down into the big bubbling pipe opening below until you discover the drain
Locate the drain in Serpent Lake |q 9731/1 |goto Zangarmarsh 50.40,40.80
step
Use your Ironvine Seeds on the Umbrafen Lake Pump Controls |use Ironvine Seeds##24355
Disable the Umbrafen Lake Pump Controls |q 9720/2 |goto Zangarmarsh 25.40,42.90
|tip The pump controls look like a little box with some levers on it
step
talk Ysiel Windsinger##17841
turnin Balance Must Be Preserved##9720 |goto Zangarmarsh 78.40,62
turnin Drain Schematics##9731 |goto Zangarmarsh 78.40,62
accept Warning the Cenarion Circle##9724 |goto Zangarmarsh 78.40,62
step
talk Lethyn Moonfire##17834
accept What's Wrong at Cenarion Thicket?##9957 |goto Zangarmarsh 78.50,63.10
step
talk Amythiel Mistwalker##16885
turnin Warning the Cenarion Circle##9724 |goto Hellfire Peninsula,16,52.20
accept Return to the Marsh##9732 |goto Hellfire Peninsula,16,52.20
step
talk Ysiel Windsinger##17841
turnin Return to the Marsh##9732 |goto Zangarmarsh,78.40,62
accept Checking Up##29566 |goto Zangarmarsh,78.40,62
accept Storming the Steamvault##29616 |goto Zangarmarsh,78.40,62
step
talk Watcher Jhang##54667
turnin Checking Up##29566 |goto The Slave Pens 18.90,11.30
step
talk Watcher Jhang##54667
accept Lost in Action##29563 |goto The Slave Pens 18.90,11.30
accept The Heart of the Matter##29565 |goto The Slave Pens 18.90,11.30
step
talk Nahuud##54668
accept A Brother Betrayed##29564 |goto The Slave Pens 17.90,12.10
step
Follow the path and go straight through this main room |goto The Slave Pens 25.00,51.20 < 10 |q 29565 |walk
Follow this hallway |goto The Slave Pens 40.20,35.50 < 10 |q 29565 |walk
You can either stand back and pull Mennu from the ramp, or clear the enemies first so they won't aggro.
kill Mennu the Betrayer##17941 |q 29564/1 |goto The Slave Pens 48.80,24.30
step
talk Weeder Greenthumb##17890
Discover Weeder Greenthumb |q 29563/2 |goto The Slave Pens 48.90,83.40
step
kill Rokmar the Crackler##17991+
collect The Invader's Claw##72118 |q 29565/1 |goto The Slave Pens 57.30,45.40
step
Follow this path up |goto The Slave Pens 74.90,51.40 < 5 |q 29565
talk Naturalist Bite##17893
Discover Naturalist Bite |q 29563/2 |goto The Slave Pens 95.70,66.20
step
Be ready to fight a couple mobs
kill Coilfang Champion##17957+, Coilfang Enchantress##17961+
talk Naturalist Bite##17893 |goto The Slave Pens 95.70,66.20
Tell him: "_Naturalist, please grant me your boon_"
Receive the Mark of Bite |havebuff Mark of Bite##34906 |goto The Slave Pens 95.70,66.20 |q 29565
step
kill Quagmirran##17942+
collect The Slave Master's Eye##72119 |q 29565/2 |goto The Slave Pens 86.20,67.90
step
talk Nahuud##54668
turnin A Brother Betrayed##29564 |goto The Slave Pens 17.90,12.20
step
talk Watcher Jhang##54667
turnin Lost in Action##29563 |goto The Slave Pens 18.80,11.30
step
talk Naturalist Bite##54678
accept A Necessary Evil##29568 |goto The Underbog 29.50,64.70
step
talk Watcher Jhang##54675
accept Rescuing the Expedition##29570 |goto The Underbog 30.90,65.30
step
talk T'shu##54674
accept Stalk the Stalker##29567 |goto The Underbog 31.50,65.50
accept Bring Me A Shrubbery!##29691 |goto The Underbog 31.50,65.50
stickystart "sanghib"
step
Keep following this straight path |goto The Underbog 42.50,62.00 < 5 |walk
Follow this path up and around |goto The Underbog 57.40,82.90 < 5 |walk
He will summon mushrooms, these will explode to deal damage to player, and heal the boss
Keep moving him so that doesn't happen
kill Hungarfen##17770 |q 29568/1 |goto The Underbog 70.00,90.00
step
Follow the path around until you get here
kill Ghaz'an##18105 |goto The Underbog 77.20,43.80
|confirm
step
Jump down in the water here  |goto The Underbog 78.90,24.50 < 10 |walk
Swim across the water and jump down here |goto The Underbog 79.60,15.20 < 10 |walk
talk Earthbinder Rayge##17885
Discover Earthbinder Rayge |q 29570/1 |goto The Underbog 67.40,21.30
step
Follow this path down and to the right |goto The Underbog 67.00,14.00 < 10 |walk
kill Swamplord Musel'ek##17826, Claw##17827
Talk to Windcaller Claw
Discover Windcaller Claw |q 29570/2 |goto The Underbog 41.50,25.40
step
kill The Black Stalker##17882
collect Black Stalker's Brain##24248 |q 29567/1 |goto The Underbog 25.90,45.50
step
label "sanghib"
As you go through the dungeon, look for Sanguine Hibiscus
click Sanguine Hibiscus##183385
collect 5 Sanguine Hibiscus##24246 |q 29691/1
step
talk Naturalist Bite##54678
turnin A Necessary Evil##29568 |goto The Underbog 29.50,64.50
step
talk Watcher Jhang##54675
turnin Rescuing the Expedition##29570 |goto The Underbog 30.80,65.30
step
talk T'shu##54674
turnin Stalk the Stalker##29567 |goto The Underbog 31.60,65.50
turnin Bring Me A Shrubbery!##29691 |goto The Underbog 31.60,65.50
step
talk Watcher Jhang##54848
turnin Storming the Steamvault##29616 |goto The Steamvault 17.90,27.30
accept A Proper Fate##29613 |goto The Steamvault 17.90,27.30
step
talk Naturalist Bite##54849
accept Containment is Key##29614 |goto The Steamvault 17.50,25.90
step
talk Windcaller Claw##54851
accept Windcaller Claw and the Water Thief##29615 |goto The Steamvault 18.90,27.80
step
kill 3 Bog Overlord##21694+|q 29614/1 |goto The Steamvault 33.70,22.70
step
kill Hydromancer Thespia##17797 |q 29615/1 |goto The Steamvault 54.30,12.40
step
click Main Chambers Access Panel##7147 |goto The Steamvault 54.20,10.60
You hear a faint echo...
|confirm always
step
Go through the opening on your left. |goto The Steamvault 42.10,32.90 < 10 |walk
Go up the ramp |goto The Steamvault 49.30,42.80 < 10 |walk
Go up to the bridge on the right side |goto The Steamvault 55.80,47.30 < 10 |walk
Cross the bridge and go through the hallway |goto The Steamvault 39.70,69.00 < 10 |walk
kill Mekgineer Steamrigger##17796
collect Irradiated Gear##72574 |q 29614/3 |goto The Steamvault 33.60,81.20
kill 6 Coilfang Leper##21338+ |q 29614/2 |goto The Steamvault 33.60,81.20
step
click Main Chambers Access Panel##7147 |goto The Steamvault 31.80,84.00
You hear a faint echo... and You hear a loud rumble of metal grinding on stone....
|confirm always
step
Follow the tunnel back to the bridge |goto The Steamvault 54.00,51.40 < 10 |walk
Take a right after crossing the bridge, and go up a ramp |goto The Steamvault 69.80,43.40 < 10 |walk
kill Warlord Kalithresh##17798 |q 29613/1 |goto The Steamvault 78.70,43.30 |n
step
Follow the path down to the ramp |goto The Steamvault 49.10,42.60 < 10 |walk
Enter this doorway |goto The Steamvault 42.50,33.00 < 10 |walk
talk Windcaller Claw##54851
turnin Windcaller Claw and the Water Thief##29615 |goto The Steamvault 18.80,27.60
step
talk Watcher Jhang##54848
turnin A Proper Fate##29613 |goto The Steamvault 18.00,27.20
step
talk Naturalist Bite##54849
turnin Containment is Key##29614 |goto The Steamvault 17.60,25.90
step
click Wanted Poster##184945
accept Leader of the Darkcrest##9730 |goto Zangarmarsh 79.10,64.80
accept Leader of the Bloodscale##9817 |goto Zangarmarsh 79.10,64.80
step
kill Rajah Haghazed##18046 |q 9730/1 |goto Zangarmarsh 65.10,68.70
step
kill Rajis Fyashe##18044 |q 9817/1 |goto Zangarmarsh 65.10,40.90
step
talk Warden Hamoot##17858
turnin Leader of the Darkcrest##9730 |goto Zangarmarsh 79.10,65.20
turnin Leader of the Bloodscale##9817 |goto Zangarmarsh 79.10,65.20
step
talk Earthbinder Tavgren##18446
turnin What's Wrong at Cenarion Thicket?##9957 |goto Terokkar Forest,44.30,26.30
accept Strange Energy##9968 |goto Terokkar Forest,44.30,26.30
accept Clues in the Thicket##9971 |goto Terokkar Forest,44.30,26.30
step
talk Warden Treelos##18424
accept It's Watching You!##9951 |goto Terokkar Forest 45,22.50
step
click Strange Object##183789
Examine the Strange Object |q 9971/1 |goto Terokkar Forest 45.10,21.80
|tip Inside the building, looks like a white ball on the floor next to a dead guy.
step
kill Naphthal'ar##18438 |q 9951/1 |goto Terokkar Forest 43.40,22.10
|tip At the top of the big tower.
step
talk Warden Treelos##18424
turnin It's Watching You!##9951 |goto Terokkar Forest 45,22.50
step
talk Earthbinder Tavgren##18446
turnin Clues in the Thicket##9971 |goto Terokkar Forest 44.30,26.30
step
kill Vicious Teromoth##18437+
collect 4 Vicious Teromoth Sample##24279 |q 9968/2 |goto Terokkar Forest 44.10,23.80
step
kill Teromoth##18468+
collect 4 Teromoth Sample##25672 |q 9968/1 |goto Terokkar Forest 45.80,29.80
step
talk Earthbinder Tavgren##18446
turnin Strange Energy##9968 |goto Terokkar Forest 44.30,26.30
accept By Any Means Necessary##9978 |goto Terokkar Forest 44.30,26.30
step
talk Empoor##18482
Fight Empoor until he's almost dead
turnin By Any Means Necessary##9978 |goto Terokkar Forest 47.10,27
accept Wind Trader Lathrai##9979 |goto Terokkar Forest 47.10,27
step
talk Wind Trader Lathrai##18484
turnin Wind Trader Lathrai##9979 |goto Shattrath City,72.20,30.70
accept A Personal Favor##10112 |goto Shattrath City,72.20,30.70
step
kill Skithian Windripper##18453+
kill Skithian Dreadhawk##18452+
collect 5 Lathrai's Stolen Goods##27861 |q 10112/1 |goto Terokkar Forest 30.90,42.00
step
talk Wind Trader Lathrai##18484
turnin A Personal Favor##10112 |goto Shattrath City 72.30,30.90
accept Investigate Tuurem##9990 |goto Shattrath City 72.30,30.90
step
click Sealed Box##182542
collect Sealed Box##25727 |q 9990/1 |goto Terokkar Forest 54.00,30.00
step
talk Earthbinder Tavgren##18446
turnin Investigate Tuurem##9990 |goto Terokkar Forest 44.40,26.30
accept What Are These Things?##9995 |goto Terokkar Forest 44.40,26.30
step
talk Tooki##18447
turnin What Are These Things?##9995 |goto Terokkar Forest 50.00,45.90
accept Report to Stonebreaker Camp##10448 |goto Terokkar Forest 50.00,45.90
step
talk Sergeant Chawni##21007
turnin Report to Stonebreaker Camp##10448 |goto Terokkar Forest 63.30,42.00
accept Attack on Firewing Point##9997 |goto Terokkar Forest 63.30,42.00
step
kill 10 Firewing Defender##5355+ |q 9997/1 |goto Terokkar Forest 70.50,37.40
kill 10 Firewing Bloodwarder##1410+ |q 9997/2 |goto Terokkar Forest 70.50,37.40
kill 10 Firewing Warlock##16769+ |q 9997/3 |goto Terokkar Forest 70.50,37.40
step
talk Sergeant Chawni##21007
turnin Attack on Firewing Point##9997 |goto Terokkar Forest 63.30,42.40
accept The Final Code##10447 |goto Terokkar Forest 63.30,42.40
step
Enter this building |goto Terokkar Forest 73.40,36.30 < 10 |walk
click Orb of Translocation##184500
Run up the ramp |goto Terokkar Forest 73.90,35.80
kill Sharth Voldoun##18554+
collect The Final Code##29912 |q 10447/1 |goto Terokkar Forest 73.30,34.60
step
click Orb of Translocation##184500
Teleport to the bottom of the tower |goto Terokkar Forest 73.30,36.30 < 10
step
click Mana Bomb##184725
Activate Mana Bomb |q 10447/1 |goto Terokkar Forest 71.30,37.40
step
talk Tooki##18447
turnin The Final Code##10447 |goto Terokkar Forest 50.00,45.90
accept Letting Earthbinder Tavgren Know##10006 |goto Terokkar Forest 50.00,45.90
step
talk Earthbinder Tavgren##18446
turnin Letting Earthbinder Tavgren Know##10006 |goto Terokkar Forest,44.30,26.30
step
talk Lakotae##22420
accept The Infested Protectors##10896 |goto Terokkar Forest 37.90,51.70
step
kill Infested Root-walker##22095+
Kill the Wood Mites that come out of their corpses
kill 25 Wood Mite##22419 |q 10896/1 |goto Terokkar Forest 35.20,48.80
You can find more Infested Root-walkers at [39.10,47.00]
step
talk Lakotae##22420
turnin The Infested Protectors##10896 |goto Terokkar Forest 37.90,51.70
step
talk Timeon##21782
accept Creating the Pendant##10567 |goto Blade's Edge Mountains 62.20,39.10
step
talk Tree Warden Chawn##22007
accept A Time for Negotiation...##10682 |goto Blade's Edge Mountains 62.00,39.50
step
talk Faradrella##22133
accept Culling the Wild##10753 |goto Blade's Edge Mountains 62.50,38.20
step
talk Mosswood the Ancient##22053
accept From the Ashes##10771 |goto Blade's Edge Mountains 61.30,38.40
accept Little Embers##10770 |goto Blade's Edge Mountains 61.30,38.40
step
talk Overseer Nuaar##21981
|tip He wanders around the Wyrmcult camps.
Negotiate with Overseer Nuaar |q 10682/1 |goto Blade's Edge Mountains 58.80,39.10
step
talk Tree Warden Chawn##22007
turnin A Time for Negotiation...##10682 |goto Blade's Edge Mountains 62,39.50
accept ...and a Time for Action##10713 |goto Blade's Edge Mountains 62,39.50
step
talk Samia Inkling##21983
accept Poaching from Poachers##10717 |goto Blade's Edge Mountains 61.80,39.60
step
kill 10 Wyrmcult Hewer##21810+ |q 10713/1 |goto Blade's Edge Mountains 59.90,37.80
kill Wyrmcult Poacher##21809+
collect 5 Wyrmcult Net##31119 |q 10717/1 |goto Blade's Edge Mountains 59.90,37.80
collect Meeting Note##31120 |n
Click the Meeting Note in your bags |use Meeting Note##31120
accept Did You Get The Note?##10719
step
kill Ruuan'ok Ravenguard##19987+, Ruuan'ok Skyfury##19986+, Ruuan'ok Cloudgazer##19985+, Ruuan'ok Matriarch##20211+
collect 6 Ruuan'ok Claw##30704 |q 10567 |goto Blade's Edge Mountains 63.90,31.50
step
Use the 6 Ruuan'ok Claws inside the glowing circle |use Ruuan'ok Claw##30704
kill Harbinger of the Raven##21767
|tip On the little island in the pond.
collect Harbinger's Pendant##30706 |q 10567/1 |goto Blade's Edge Mountains 64.50,33.10
step
talk Timeon##21782
turnin Creating the Pendant##10567 |goto Blade's Edge Mountains 62.20,39.10
accept Whispers of the Raven God##10607 |goto Blade's Edge Mountains 62.20,39.10
step
talk Samia Inkling##21983
turnin Poaching from Poachers##10717 |goto Blade's Edge Mountains 62,39.50
step
talk Tree Warden Chawn##22007
turnin ...and a Time for Action##10713 |goto Blade's Edge Mountains 62.00,39.60
turnin Did You Get The Note?##10719 |goto Blade's Edge Mountains 62.00,39.60
accept Wyrmskull Watcher##10894 |goto Blade's Edge Mountains 62.00,39.60
step
talk Watcher Moonshade##22386
turnin Wyrmskull Watcher##10894 |goto Blade's Edge Mountains 49.90,35.90
accept Longtail is the Lynchpin##10893 |goto Blade's Edge Mountains 49.90,35.90
step
kill Draaca Longtail##22396 |q 10893/1 |goto Blade's Edge Mountains 46.70,32.90
|tip She walks near the Raven's Wood end of the cave.
step
talk Watcher Moonshade##22386
turnin Longtail is the Lynchpin##10893 |goto Blade's Edge Mountains 49.90,35.90
accept Meeting at the Blackwing Coven##10722 |goto Blade's Edge Mountains 49.90,35.90
step
kill Grishna Scorncrow##19990+, Grishna Falconwing##19988+, Grishna Harbinger##19989+ |goto Blade's Edge Mountains 42.20,25.10
Get the Understanding Ravenspeech Buff |havebuff Understanding Ravenspeech##37642
|tip Must be within melee range to receive the buff.
Anytime the buff wears off, kill Grishna mobs again to get it back
step
Stand next to the wooden totem with the Understanding Ravenspeech buff on you
|tip On the ground, next to a pond with basilisks in it.
Receive the Third Prophecy |q 10607/3 |goto Blade's Edge Mountains 40.70,18.70
step
Stand next to the wooden totem with the Understanding Ravenspeech buff on you
|tip Up the left ramp, then left across the hanging bridge.
Receive the First Prophecy |q 10607/1 |goto Blade's Edge Mountains 39,17.20
step
Stand next to the wooden totem with the Understanding Ravenspeech buff on you
|tip Up the right ramp, then go right across the hanging bridge, then down the stairs to the left.
Receive the Second Prophecy |q 10607/2 |goto Blade's Edge Mountains 42.50,21.60
step
Stand next to the wooden totem with the Understanding Ravenspeech buff on you
|tip On the ground, in front of a hut.
Receive the Fourth Prophecy |q 10607/4 |goto Blade's Edge Mountains 40.20,23
step
Go inside the cave
kill Wyrmcult Scout##21637+, Wyrmcult Acolyte##21383+, Wyrmcult Zealot##21382+
collect 5 Costume Scraps##31121 |q 10722 |goto Blade's Edge Mountains 32.30,34.90
step
use the Costume Scraps##31121
|tip Combine your 5 Costume Scraps to make an Overseer Disguise.
use the Overseer Disguise##31122
Put on the Overseer Disguise |havebuff Overseer Disguise##38157 |q 10722
step
talk Kolphis Darkscale##22019
Attend the meeting with Kolphis Darkscale |q 10722/1 |goto Blade's Edge Mountains 32.60,37.50
step
talk Tree Warden Chawn##22007
turnin Meeting at the Blackwing Coven##10722 |goto Blade's Edge Mountains 62.00,39.50
accept Maxnar Must Die!##10748 |goto Blade's Edge Mountains 62.00,39.50
step
Go inside the cave |goto Blade's Edge Mountains,32.10,34.10 < 5 |walk
kill Maxnar the Ashmaw##21389 |q 10748/1 |goto Blade's Edge Mountains 33.90,35.40
|tip Follow the cave path until it dead ends into him.
step
Leave the cave. |goto Blade's Edge Mountains,32.10,34.10 < 5 |walk
talk Tree Warden Chawn##22007
turnin Maxnar Must Die!##10748 |goto Blade's Edge Mountains 62,39.50
step
talk Timeon##21782
turnin Whispers of the Raven God##10607 |goto Blade's Edge Mountains 62.20,39.10
step
kill 4 Felsworn Scalewing##21123+ |q 10753/1 |goto Blade's Edge Mountains 68.90,35.60
kill 4 Felsworn Daggermaw##21124+ |q 10753/2 |goto Blade's Edge Mountains 68.90,35.60
kill 2 Fel Corrupter##21300+ |q 10753/3 |goto Blade's Edge Mountains 68.90,35.60
collect Damaged Mask##31384|n
Click the Damaged Mask |use Damaged Mask##31384
accept Damaged Mask##10810
stickystart "scimp"
step
click Fertile Volcanic Soil##185148
Plant the Ironroot Seeds |q 10771/1 |goto Blade's Edge Mountains 71.70,22.40
step
click Fertile Volcanic Soil##185148
Plant the Ironroot Seeds|q 10771/2 |goto Blade's Edge Mountains 71.60,20.30
step
click Fertile Volcanic Soil##185148
Plant the Ironroot Seeds |q 10771/3 |goto Blade's Edge Mountains 71.60,18.50
step
label "scimp"
kill 8 Scorch Imp##21021+ |q 10770/1 |goto Blade's Edge Mountains 70.70,20.20
step
talk O'Mally Zapnabber##22020
turnin Damaged Mask##10810 |goto Blade's Edge Mountains 62.70,40.40
accept Mystery Mask##10812 |goto Blade's Edge Mountains 62.70,40.40
step
talk Wildlord Antelarion##22127
turnin Mystery Mask##10812 |goto Blade's Edge Mountains 62.20,40.10
accept Felsworn Gas Mask##10819 |goto Blade's Edge Mountains 62.20,40.10
step
talk Faradrella##22133
turnin Culling the Wild##10753 |goto Blade's Edge Mountains 62.60,38.20
step
talk Mosswood the Ancient##22053
turnin Little Embers##10770 |goto Blade's Edge Mountains 61.20,38.40
turnin From the Ashes##10771 |goto Blade's Edge Mountains 61.20,38.40
step
Make sure you have your Felsworn Gas Mask in your bags |collect Felsworn Gas Mask##31366 |q 10819
It has a 60 minute timer on it
If you need another one, talk to Wildlord Antelarion |goto Blade's Edge Mountains 62.60,39.60
Click here to continue. |confirm always
step
Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366
Wear the Felsworn Gas Mask |havebuff Felsworn Gas Mask##38448 |c |q 10819
Click the Legion Communicator
|tip Between 2 big green floating crystals. You must be wearing the Felsworn Gas Mask to use the Legion Communicator
turnin Felsworn Gas Mask##10819 |goto Blade's Edge Mountains 73.30,40.10
accept Deceive thy Enemy##10820 |goto Blade's Edge Mountains 73.30,40.10
step
kill 4 Doomforge Attendant##19961+ |q 10820/1 |goto Blade's Edge Mountains 74.90,39.90
kill 4 Doomforge Engineer##19960+ |q 10820/2 |goto Blade's Edge Mountains 74.90,39.90
step
Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366
Wear the Felsworn Gas Mask |havebuff Felsworn Gas Mask##38448 |c |q 10819
Click the Legion Communicator
turnin Deceive thy Enemy##10820 |goto Blade's Edge Mountains 73.30,40.10
|tip Between 2 big green floating crystals. Click the Legion Communicator. You must be wearing the Felsworn Gas Mask to use the Legion Communicator
accept You're Fired!##10821 |goto Blade's Edge Mountains 73.30,40.10
step
kill Anger Guard##16952+
collect 5 Camp Anger Key##31536 |q 10821 |goto Blade's Edge Mountains 73.00,41.00
step
Click the Legion Obelisk to activate it |goto Blade's Edge Mountains 73.50,43.50
|tip It's a metal structure with a floating tall metal piece in the middle of it.
Click here to proceed. |confirm always
step
Click the Legion Obelisk to activate it |goto Blade's Edge Mountains 75.30,41.70
|tip It's a metal structure with a floating tall metal piece in the middle of it.
Click here to proceed. |confirm always
step
Click the Legion Obelisk to activate it |goto Blade's Edge Mountains 73.80,41.00
|tip It's a metal structure with a floating tall metal piece in the middle of it.
Click here to proceed. |confirm always
step
Click the Legion Obelisk to activate it |goto Blade's Edge Mountains 75.40,40.60
|tip It's a metal structure with a floating tall metal piece in the middle of it.
Click here to proceed. |confirm always
step
Click the Legion Obelisk to activate it |goto Blade's Edge Mountains 74.00,39.90
|tip It's a metal structure with a floating tall metal piece in the middle of it.
Click here to proceed. |confirm always
step
kill Doomcryer##19963 |q 10821/1 |goto Blade's Edge Mountains 74.30,42.50
step
talk Wildlord Antelarion##22127
turnin You're Fired!##10821 |goto Blade's Edge Mountains 62.40,38.40
accept Death's Door##10910 |goto Blade's Edge Mountains 62.40,38.40
step
Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
Talk to Evergrove Druid
turnin Death's Door##10910 |goto Blade's Edge Mountains 63.20,65.50
accept Harvesting the Fel Ammunition##10904 |goto Blade's Edge Mountains 63.20,65.50
step
kill Death's Might##21519+, Deathforge Over-Smith##19978+, Death's Watch##21516+
collect 5 Fel Cannonball##31757 |q 10904/1 |goto Blade's Edge Mountains 63.80,66.50
step
Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
Talk to Evergrove Druid
turnin Harvesting the Fel Ammunition##10904
accept Fire At Will!##10911
step
Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807
|tip It looks like a big metal green-glowing bullet shaped machine.
Use the Artillery on the Warp-Gate ability 7 times |cast Artillery on the Warp-Gate##39221
Destroy the South Warp-Gate |q 10911/1 |goto Blade's Edge Mountains 64.80,68.30
step
Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807
|tip It looks like a big metal green-glowing bullet shaped machine.
Use the Artillery on the Warp-Gate ability 7 times |cast Artillery on the Warp-Gate##39221
Destroy the North Warp-Gate |q 10911/2 |goto Blade's Edge Mountains 62.00,60.30
step
Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
Talk to Evergrove Druid
turnin Fire At Will!##10911
accept The Hound-Master##10912
step
kill Baelmon the Hound-Master##19747 |q 10912/1 |goto Blade's Edge Mountains 63.60,59.10
step
talk Wildlord Antelarion##22127
turnin The Hound-Master##10912 |goto Blade's Edge Mountains 62.70,39.40
step
talk Aurine Moonblaze##20871
accept Flora of the Eco-Domes##10426 |goto Netherstorm,42.30,32.60
step
Use Energy Field Modulator on Farahlon Lashers |use Energy Field Modulator##29818
kill Mutated Farahlon Lasher##20774+
Test Energy Modulator 10 times |q 10426/1 |goto Netherstorm 41.20,32.20
step
talk Aurine Moonblaze##20871
turnin Flora of the Eco-Domes##10426 |goto Netherstorm 42.30,32.60
accept Creatures of the Eco-Domes##10427 |goto Netherstorm 42.30,32.60
step
kill Talbuk Doe##20610+, Talbuk Sire##20777
Use the Talbuk Tagger on talbuks when they are below 20 percent health. |use Talbuk##29817
Tag 12 Talbuk |q 10427/1 |goto Netherstorm 40.40,35.50
step
talk Aurine Moonblaze##20871
turnin Creatures of the Eco-Domes##10427 |goto Netherstorm 42.30,32.60
accept When Nature Goes Too Far##10429 |goto Netherstorm 42.30,32.60
step
kill Markaru##20775+
collect Hulking Hydra Heart##29768 |q 10429/1 |goto Netherstorm 44.30,28.50
step
talk Aurine Moonblaze##20871
turnin When Nature Goes Too Far##10429 |goto Netherstorm 42.30,32.60
step
talk Arch Druid Lathorius##25809
accept A Mission Statement##11864 |goto Borean Tundra,57,44.30
accept Ears of Our Enemies##11866 |goto Borean Tundra,57,44.30
accept Help Those That Cannot Help Themselves##11876 |goto Borean Tundra,57,44.30
step
talk Hierophant Cenius##25810
accept Happy as a Clam##11869 |goto Borean Tundra 57.30,44.10
step
talk Killinger the Den Watcher##25812
accept Ned, Lord of Rhinos...##11884 |goto Borean Tundra 57,44
step
talk Zaza##25811
accept Unfit for Death##11865 |goto Borean Tundra 56.80,44
stickystart "lootear"
step
Use your D.E.H.T.A. Trap Smasher while standing next to Trapped Mammoth Calves|use D.E.H.T.A. Trap Smasher##35228
|tip They look like baby elephants laying on the ground in a trap.
Free 8 Mammoth Calves |q 11876/1 |goto Borean Tundra 53.80,40.60
step
label "lootear"
kill 10 Loot Crazed Diver##25836 |q 11869/1 |goto Borean Tundra 53.40,42.70
kill Loot Crazed Diver##25836s|n
collect 15 Nesingwary Lackey Ear##35188|q 11866/1 |goto Borean Tundra 53.40,42.70
step
Find and kill "Lunchbox"##25968|kill "Lunchbox"##25968|q 11884/2 |goto Borean Tundra 46.40,40
kill Nedar Lord of Rhinos##25801|q 11884/1 |goto Borean Tundra 46.40,40
|tip He walks around this area.  Kill 'Lunchbox' and then Nedar, Lord of Rhinos will jump off.
step
Stand inside the Caribou Traps on the ground
|tip They look like metal spiked traps on the ground.
Use your Pile of Fake Furs|use Pile of Fake Furs##35127
Trap 8 Nesingwary Trappers |q 11865/1 |goto Borean Tundra 56.20,50.50
step
talk Arch Druid Lathorius##25809
turnin Ears of Our Enemies##11866 |goto Borean Tundra 57,44.30
turnin Help Those That Cannot Help Themselves##11876 |goto Borean Tundra 57,44.30
accept Khu'nok Will Know##11878 |goto Borean Tundra 57,44.30
After you turn in Ears of Our Enemies, you will get a repeatable quest called Can't Get Ear-nough...
step
talk Hierophant Cenius##25810
turnin Happy as a Clam##11869 |goto Borean Tundra 57.30,44.10
accept The Abandoned Reach##11870 |goto Borean Tundra 57.30,44.10
step
talk Killinger the Den Watcher##25812
turnin Ned, Lord of Rhinos...##11884 |goto Borean Tundra 57,44
step
talk Zaza##25811
turnin Unfit for Death##11865 |goto Borean Tundra 56.80,44
accept The Culler Cometh##11868 |goto Borean Tundra 56.80,44
step
Deliver the Orphaned Mammoth Calf to Khu'nok |q 11878/1 |goto Borean Tundra 59.50,30.40
step
talk Khu'nok the Behemoth##25862
turnin Khu'nok Will Know##11878 |goto Borean Tundra 59.50,30.40
accept Kaw the Mammoth Destroyer##11879 |goto Borean Tundra 59.50,30.40
step
Ride around and find a Wooly Mammoth Bull |n
Click it to ride it |invehicle |c
step
Use the skills on your mammoth action bar to do the following:
kill Kaw the Mammoth Destroyer##25802
Click Kaw's War Halberd on the ground
collect Kaw's War Halberd##35234|q 11879/1 |goto Borean Tundra 53.70,23.90
step
talk Arch Druid Lathorius##25809
turnin Kaw the Mammoth Destroyer##11879 |goto Borean Tundra 57,44.30
step
kill 1 Karen "I Don't Caribou" the Culler##25803 |q 11868/1 |goto Borean Tundra 57.30,56.50
|tip She walks around in this spot.  Be careful, she has 2 stealthed guards that come with her.
step
talk Hierophant Liandra##25838
turnin The Abandoned Reach##11870 |goto Borean Tundra 57.80,55.10
accept Not On Our Watch##11871 |goto Borean Tundra 57.80,55.10
step
kill Northsea Thugs##25843 |n
Click the Shipment of Animal Parts containers on the ground
|tip They look like brown bags and crates sitting on the ground around this area.
collect 12 Shipment of Animal Parts##35222|q 11871/1 |goto Borean Tundra 59.10,55.90
step
talk Hierophant Liandra##25838
turnin Not On Our Watch##11871
accept The Nefarious Clam Master...##11872 |goto Borean Tundra 57.80,55.10
step
kill 1 Clam Master K##25800 |q 11872/1 |goto Borean Tundra 61.50,66.50
|tip He's walking around underwater.
step
talk Hierophant Cenius##25810
turnin The Nefarious Clam Master...##11872 |goto Borean Tundra 57.30,44.10
step
talk Zaza##25811
turnin The Culler Cometh##11868 |goto Borean Tundra 56.80,44
step
talk King Mrgl-Mrgl##25197
accept Learning to Communicate##11571 |goto Borean Tundra 43.50,14
stickystart "winterfinclam"
step
Go underwater |goto Borean Tundra 42.50,15.90
kill Scalder##25226
Use The King's Empty Conch on Scalder's corpse |use The King's Empty Conch##34598
collect The King's Filled Conch##34623 |q 11571/1
step
label "winterfinclam"
click Winterfin Clam##187367
collect 5 Winterfin Clam##34597 |goto Borean Tundra 42.50,16.40
step
talk King Mrgl-Mrgl##25197
turnin Learning to Communicate##11571 |goto Borean Tundra 43.50,14
accept Winterfin Commerce##11559 |goto Borean Tundra 43.50,14
step
talk Ahlurglgr##25206
turnin Winterfin Commerce##11559 |goto Borean Tundra 43,13.80
step
click Winterfin Clam##187367
|tip They are on the ground underwater.
collect 5 Winterfin Clam##34597|q 11559/1 |goto Borean Tundra 41.50,13.40
step
talk Ahlurglgr##25206
turnin Winterfin Commerce##11559 |goto Borean Tundra 43,13.80
step
talk Brglmurgl##25199
accept Them!##11561 |goto Borean Tundra 42.80,13.70
step
talk King Mrgl-Mrgl##25197
accept Oh Noes, the Tadpoles!##11560 |goto Borean Tundra 43.50,14
step
kill 15 Winterfin murlocs|q 11561/1 |goto Borean Tundra 40.60,17.50
click the yellow cage##1787+
Rescue 20 Winterfin Tadpoles |q 11560/1 |goto Borean Tundra 40.60,17.50
step
talk Brglmurgl##25199
turnin Them!##11561 |goto Borean Tundra 42.80,13.70
step
talk King Mrgl-Mrgl##25197
turnin Oh Noes, the Tadpoles!##11560 |goto Borean Tundra 43.50,14
accept I'm Being Blackmailed By My Cleaner##11562 |goto Borean Tundra 43.50,14
step
talk Mrmrglmr##25205
turnin I'm Being Blackmailed By My Cleaner##11562 |goto Borean Tundra 42,12.80
accept Grmmurggll Mrllggrl Glrggl!!!##11563 |goto Borean Tundra 42,12.80
step
talk Cleaver Bmurglbrm##25211
accept Succulent Orca Stew##11564 |goto Borean Tundra 42,13.20
stickystart "succulentorca"
step
kill Glrggl##25203
collect Glrggl's Head##34617|q 11563/1 |goto Borean Tundra 37.40,9.80
step
label "succulentorca"
kill Glimmer Bay Orcas##25204+ |n
collect 7 Succulent Orca Blubber##34618|q 11564/1 |goto Borean Tundra 40.30,12.40
step
talk Mrmrglmr##25205
turnin Grmmurggll Mrllggrl Glrggl!!!##11563 |goto Borean Tundra 42,12.80
accept The Spare Suit##11565 |goto Borean Tundra 42,12.80
step
talk Cleaver Bmurglbrm##25211
turnin Succulent Orca Stew##11564 |goto Borean Tundra 42,13.20
step
talk King Mrgl-Mrgl##25197
turnin The Spare Suit##11565 |goto Borean Tundra 43.50,14
accept Surrender... Not!##11566 |goto Borean Tundra 43.50,14
step
Go southwest to Winterfin Village |n
Use King Mrgl-Mrgl's Spare Suit |havebuff King Mrgl-Mrgl's Spare Suit##45278 |use King Mrgl-Mrgl's Spare Suit##34620
step
Go inside the cave |goto Borean Tundra 37.80,23.20
talk Glrglrglr##28375
accept Keymaster Urmgrgl##11569
step
Go down the path and underneath you |goto Borean Tundra 38.40,22.70
kill Keymaster Urmgrgl##25210
collect Urmgrgl's Key##34600|q 11569/1
step
Follow the path up and to the back of the cave |goto Borean Tundra 37.60,27.40
kill Claximus##25209
collect Claw of Claximus##34621|q 11566/1
step
Go back up the path |goto Borean Tundra 37.80,23.20
talk Glrglrglr##28375
turnin Keymaster Urmgrgl##11569
step
talk Lurgglbr##25208
accept Escape from the Winterfin Caverns##11570 |goto Borean Tundra 37.80,23
Escort Lurgglbr to safety |q 11570/1 |goto Borean Tundra 37.80,23
step
talk King Mrgl-Mrgl##25197
turnin Surrender... Not!##11566 |goto Borean Tundra 43.50,14
turnin Escape from the Winterfin Caverns##11570 |goto Borean Tundra 43.50,14
step
If you are not Exalted with the Cenarion Expedition, you can turn in Lackey Ears for a repeatable quest, or run Heroic Dungeons.
The Heroic Dungeons are Slave Pens, Underbog and Steamvault.
Click here to do the repeatable quest |confirm
step
label "ears"
kill Northsea Mercenary##25839+, Northsea Thug##25843+
collect Nesingwary Lackey Ear##35188 |goto Borean Tundra 60.90,63.40
Collect Lackey Ears in stacks of 15. |goto Borean Tundra 60.90,63.40
When you want to turn in Lackey Ears, click here. |next "turnin" |confirm
step
label "turnin"
talk Arch Druid Lathorius##25809
accept Can't Get Ear-Nough##11867 |n |goto Borean Tundra 57.10,44.30
Click here to go back to farming ears. |next "ears" |confirm
Keep repeating this quest until you are Exalted with the Cenarion Expedition |complete rep('Cenarion Expedition')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Cataclysm Reputations\\Therazane",{
expansion="mists",
cataready=true,
description="This guide will walk you through becoming exalted with the Therazane faction.",
condition_suggested=function() return level >= 80 and level <= 85 and rep('Therazane') < Exalted end,
achieveid={4881},
patch='40003',
},[[
step
Complete the Deepholm Leveling Guide |q 26709 |future
|tip Refer to the leveling guide to accomplish this.
Click here to Load the "Deepholm (82-83)" Leveling Guide |confirm |next "Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)"
#include "Therazane_Dailies"
Earn Exalted reputation with Therazane |complete rep('Therazane')==Exalted
]])
QuestCore:RegisterGuide("Reputation Guides\\Cataclysm Reputations\\Guardians of Hyjal",{
expansion="mists",
description="This guide will walk you through becoming exalted with the Guardians of Hyjal faction.",
condition_suggested=function() return level >= 80 and level <= 85 and rep('Guardians of Hyjal') < Exalted end,
achieveid={5827},
patch='40200',
},[[
step
click Hero's Call Board##250720 |only if Alliance
accept Hero's Call: Mount Hyjal!##27726 |goto Stormwind City/0 62.90,71.60 |only if Alliance
click Warchief's Command Board##207325 |only if Horde
accept Warchief's Command: Mount Hyjal!##27721 |goto Orgrimmar/1 39.94,50.89 |only if Horde
step
talk Cenarion Emissary Blackhoof##15188 |goto Orgrimmar/1 39.90,50.90
Select _"Could you please send me to Moonglade, Emissary?"_ |gossip 112849
Secure Transportation to Moonglade |goto Moonglade/0 45.15,43.15 < 50 |noway |c |q 27721
|only if Horde
step
talk Emissary Windsong##39865
turnin Hero's Call: Mount Hyjal!##27726 |goto Moonglade/0 45.48,44.86 |only if Alliance
turnin Warchief's Command: Mount Hyjal!##27721 |goto Moonglade/0 45.48,44.86 |only if Horde
accept As Hyjal Burns##25316 |goto Moonglade/0 45.48,44.86
step
talk Sebelia##40843
home Nordrassil Inn |goto Mount Hyjal/0 63.10,24.10
step
talk Ysera##40928
turnin As Hyjal Burns##25316 |goto Mount Hyjal/0 62.05,24.90
accept Protect the World Tree##25317 |goto Mount Hyjal/0 62.05,24.90
step
talk Fayran Elthas##41861
fpath Nordrassil |goto Mount Hyjal/0 62.10,21.60
step
talk Anren Shadowseeker##39925
accept The Earth Rises##25460 |goto Mount Hyjal/0 63.99,22.66
step
talk Tholo Whitehoof##40278
accept Inciting the Elements##25370 |goto Mount Hyjal/0 64.05,22.49
stickystart "Kill_Scalding_Rock_Elementals"
step
click Juniper Berry##28+
|tip They look like tufts of grass with red orbs near the base of trees/tree roots around this area.
collect 4 Juniper Berries##53009 |n
use the Juniper Berries##53009
|tip Use it on Faerie Dragons around the area.
|tip Follow the Faerie Dragons to find Twilight Inciters.
kill 4 Twilight Inciter##39926 |q 25370/1 |goto Mount Hyjal/0 65.99,21.36
step
label "Kill_Scalding_Rock_Elementals"
kill 8 Scalding Rock Elemental##40229 |q 25460/1 |goto Mount Hyjal/0 65.29,23.07
step
talk Tholo Whitehoof##40278
turnin Inciting the Elements##25370 |goto Mount Hyjal/0 64.05,22.49
accept Flames from Above##25574 |goto Mount Hyjal/0 64.05,22.49
step
talk Anren Shadowseeker##39925
turnin The Earth Rises##25460 |goto Mount Hyjal/0 63.99,22.66
step
use Tholo's Horn##55122
|tip Use it next to the Infiltrators' Encampment.
Burn the Infiltrators' Encampment |q 25574/1 |goto Mount Hyjal/0 55.98,15.82
step
talk Tholo Whitehoof##40278
turnin Flames from Above##25574 |goto Mount Hyjal/0 64.05,22.49
step
talk Malfurion Stormrage##39857
turnin Protect the World Tree##25317 |goto Mount Hyjal/0 47.73,35.51
accept War on the Twilight's Hammer##25319 |goto Mount Hyjal/0 47.73,35.51
step
talk Windspeaker Tamila##39869
accept The Flameseer's Staff##25472 |goto Mount Hyjal/0 47.65,35.51
stickystart "Kill_Twilight_Flamecallers"
stickystart "Kill_Twilight_Vanquishers"
step
click Charred Staff Fragment##202846
collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto Mount Hyjal/0 48.09,28.62
You can find more around [44.84,32.92]
step
label "Kill_Twilight_Flamecallers"
kill 4 Twilight Flamecaller##38926+ |q 25319/1 |goto Mount Hyjal/0 47.20,25.60
step
label "Kill_Twilight_Vanquishers"
kill 10 Twilight Vanquisher##38913+ |q 25319/2 |goto Mount Hyjal/0 47.21,29.95
step
talk Malfurion Stormrage##39857
turnin War on the Twilight's Hammer##25319 |goto Mount Hyjal/0 47.73,35.51
turnin The Flameseer's Staff##25472 |goto Mount Hyjal/0 47.73,35.51
accept Flamebreaker##25323 |goto Mount Hyjal/0 47.73,35.51
step
use the Flameseer's Staff##53107
|tip Target the Blazebound Elementals.
kill 30 Unbound Flame Spirit##33838+ |q 25323/1 |goto Mount Hyjal/0 44.50,33.40
step
talk Malfurion Stormrage##39857
turnin Flamebreaker##25323 |goto Mount Hyjal/0 47.73,35.51
accept The Return of Baron Geddon##25464 |goto Mount Hyjal/0 47.73,35.51
step
use the Flameseer's Staff##54463
|tip Use it on Baron Geddon.
|tip Watch for Galrond of the Claw's callouts.
|tip You'll need to step away from Baron Geddon during this time.
Weaken Baron Geddon 20 Times |q 25464/1 |goto Mount Hyjal/0 44.06,26.87
step
talk Malfurion Stormrage##39857
turnin The Return of Baron Geddon##25464 |goto Mount Hyjal/0 47.73,35.51
step
talk Windspeaker Tamila##39869
accept Emerald Allies##25430 |goto Mount Hyjal/0 47.65,35.51
step
talk Alysra##38917
turnin Emerald Allies##25430 |goto Mount Hyjal/0 48.42,18.95
accept The Captured Scout##25320 |goto Mount Hyjal/0 48.42,18.95
step
talk Scout Larandia##40096
turnin The Captured Scout##25320 |goto Mount Hyjal/0 44.50,18.85
accept Twilight Captivity##25321 |goto Mount Hyjal/0 44.50,18.85
step
kill Twilight Overseer##40123
collect Twilight Overseer's Key##53139 |q 25321/1 |goto Mount Hyjal/0 44.32,20.78
step
talk Scout Larandia##40096
turnin Twilight Captivity##25321 |goto Mount Hyjal/0 44.50,18.85
accept Return to Alysra##25424 |goto Mount Hyjal/0 44.50,18.85
step
talk Alysra##38917
turnin Return to Alysra##25424 |goto Mount Hyjal/0 48.42,18.95
accept A Prisoner of Interest##25324 |goto Mount Hyjal/0 47.65,35.51
step
Enter the cave |goto Mount Hyjal/0 52.56,17.30 < 10 |walk
talk Captain Saynna Stormrunner##40139
|tip Inside the cave.
turnin A Prisoner of Interest##25324 |goto Mount Hyjal/0 52.12,17.42
accept Through the Dream##25325 |goto Mount Hyjal/0 52.12,17.42
step
Run up the ramp |goto Mount Hyjal/0 53.81,19.30 < 10 |walk
|tip Follow the path up.
Deliver Arch Druid Fandral Staghelm from the Dream |q 25325/1 |goto Mount Hyjal/0 52.60,17.30
step
Leave the cave |goto Mount Hyjal/0 52.56,17.30 < 10 |walk
talk Alysra##40178
|tip Move close to the Hyjal Barrows Den entrance if Alysra vanishes.
turnin Through the Dream##25325 |goto Mount Hyjal/0 52.20,17.40
accept Return to Nordrassil##25578 |goto Mount Hyjal/0 52.20,17.40
step
talk Ysera##40289
turnin Return to Nordrassil##25578 |goto Mount Hyjal/0 62.05,24.90
accept The Return of the Ancients##25584 |goto Mount Hyjal/0 62.05,24.90
step
talk Oomla Whitehorn##39429
turnin The Return of the Ancients##25584 |goto Mount Hyjal/0 35.70,19.42
accept Harrying the Hunters##25255 |goto Mount Hyjal/0 35.70,19.42
step
talk Jadi Falaryn##39427
accept End of the Supply Line##25233 |goto Mount Hyjal/0 35.75,19.68
accept In the Rear With the Gear##25234 |goto Mount Hyjal/0 35.75,19.68
stickystart "Kill_Twilight_Hunter"
stickystart "Kill_Twilight_Proveditor"
step
click Twilight Supplies##202652
|tip The slaves will drop them after you kill the Twilight Slavedriver.
collect 36 Twilight Supplies##52568 |q 25234/1 |goto Mount Hyjal/0 38.10,23.00
step
label "Kill_Twilight_Hunter"
kill 6 Twilight Hunter##39437+ |q 25255/1 |goto Mount Hyjal/0 38.10,23.00
step
label "Kill_Twilight_Proveditor"
kill 4 Twilight Proveditor##39436+ |q 25233/1 |goto Mount Hyjal/0 38.10,23.00
step
talk Jadi Falaryn##39427
turnin End of the Supply Line##25233 |goto Mount Hyjal/0 35.75,19.68
turnin In the Rear With the Gear##25234 |goto Mount Hyjal/0 35.75,19.68
accept The Voice of Goldrinn##25268 |goto Mount Hyjal/0 35.75,19.68 |only if Alliance
step
talk Oomla Whitehorn##39429
turnin Harrying the Hunters##25255 |goto Mount Hyjal/0 35.70,19.42
accept The Voice of Lo'Gosh##25269 |goto Mount Hyjal/0 35.70,19.42 |only if Horde
step
talk Ian Duran##39433
|tip Inside the cage.
turnin The Voice of Goldrinn##25268 |goto Mount Hyjal/0 30.12,31.30
accept Goldrinn's Ferocity##25271 |goto Mount Hyjal/0 30.12,31.30
|only if Alliance
step
kill Lycanthoth Vandal##39445+
collect 6 Polluted Incense##52658 |q 25271/1 |goto Mount Hyjal/0 29.30,30.30
|only if Alliance
step
talk Ian Duran##39433
|tip Inside the cage.
turnin Goldrinn's Ferocity##25271 |goto Mount Hyjal/0 30.10,31.30
accept Lycanthoth the Corruptor##25273 |goto Mount Hyjal/0 30.10,31.30
|only if Alliance
step
use Lycanthoth's Incense##52682
|tip Inside the cave.
kill Lycanthoth##39446 |q 25273/1 |goto Mount Hyjal/0 32.40,37.30
|only if Alliance
step
talk Spirit of Goldrinn##39627
turnin Lycanthoth the Corruptor##25273 |goto Mount Hyjal/0 32.30,37.00
|only if Alliance
step
talk Spirit of Goldrinn##39627
accept The Shrine Reclaimed##25280 |goto Mount Hyjal/0 29.65,29.26
|only if Alliance
step
talk Ian Duran##39433
turnin The Shrine Reclaimed##25280 |goto Mount Hyjal/0 28.22,29.75
accept Cleaning House##25278 |goto Mount Hyjal/0 28.22,29.75
|only if Alliance
step
talk Takrik Ragehowl##39432
|tip Inside the cage.
turnin The Voice of Lo'Gosh##25269 |goto Mount Hyjal/0 30.16,31.72
accept Howling Mad##25270 |goto Mount Hyjal/0 30.16,31.72
|only if Horde
step
kill Lycanthoth Vandal##39445+
collect 6 Polluted Incense |q 25270/1 |goto Mount Hyjal/0 29.00,31.40
|only if Horde
step
talk Takrik Ragehowl##39432
|tip Inside the cage.
turnin Howling Mad##25270 |goto Mount Hyjal/0 30.16,31.72
accept Lycanthoth the Corruptor##25272 |goto Mount Hyjal/0 30.16,31.72
|only if Horde
step
use the Lycanthoth's Incense##52682
|tip Use it at the altar inside the cave.
kill Lycanthoth##39446 |q 25272/1 |goto Mount Hyjal/0 32.42,37.28
|only if Horde
step
talk Spirit of Lo'Gosh##39622
|tip Appears inside the cave.
turnin Lycanthoth the Corruptor##25272 |goto Mount Hyjal/0 32.33,37.12
|only if Horde
step
talk Spirit of Lo'Gosh##39622
|tip This NPC will eventually disappear.
|tip Once gone, you won't be able to accept this quest.
|tip Skip ahead if you missed it.
accept The Shrine Reclaimed##25279 |goto Mount Hyjal/0 29.65,29.26 |or
'|complete completedq(25277) |or
|only if Horde
step
talk Takrik Ragehowl##39432
turnin The Shrine Reclaimed##25279 |goto Mount Hyjal/0 28.45,29.88
accept Cleaning House##25277 |goto Mount Hyjal/0 28.45,29.88
|only if Horde
step
talk Rio Duran##39434
accept From the Mouth of Madness##25297 |goto Mount Hyjal/0 28.17,29.88
step
talk Royce Duskwhisper##39435
|tip Walking around this area.
accept The Eye of Twilight##25300 |goto Mount Hyjal/0 28.62,30.21
step
click Bitterblossom##202703
collect Bitterblossom##52727 |q 25297/2 |goto Mount Hyjal/0 28.89,32.24
step
click Stonebloom##202702
collect Stonebloom##52726 |q 25297/1 |goto Mount Hyjal/0 27.55,34.15
step
click Eye of Twilight##206569
turnin The Eye of Twilight##25300 |goto Mount Hyjal/0 27.18,35.18
accept Mastering Puppets##25301 |goto Mount Hyjal/0 27.18,35.18
step
click Darkflame Ember##202705
|tip Inside the brazier.
collect Darkflame Ember##52728 |q 25297/3 |goto Mount Hyjal/0 28.45,35.78
step
click Twilight Cauldron##202706
turnin From the Mouth of Madness##25297 |goto Mount Hyjal/0 28.42,36.41
accept Free Your Mind, the Rest Follows##25298 |goto Mount Hyjal/0 28.42,36.41
stickystart "Kill_Minions_Of_Gar'gol"
stickystart "Free_Twilight_Servitors"
step
Enter the cave |goto Mount Hyjal/0 27.01,36.01 < 10 |walk
talk Kristoff Manheim##39640
accept Gar'gol's Gotta Go##25328 |goto Mount Hyjal/0 27.20,40.80
step
click Gar'gol's Personal Treasure Chest##204580
|tip Inside the cave.
collect Rusted Skull Key##52789 |q 25328/1 |goto Mount Hyjal/0 26.46,38.51
step
click The Twilight Apocrypha##202712
turnin Mastering Puppets##25301 |goto Mount Hyjal/0 25.81,41.68
accept Elementary!##25303 |goto Mount Hyjal/0 25.81,41.68
step
clicknpc Crucible of Fire##39730
Activate the Crucible of Fire |q 25303/3 |goto Mount Hyjal/0 25.96,41.82
step
clicknpc Crucible of Earth##39737
Activate the Crucible of Earth |q 25303/1 |goto Mount Hyjal/0 25.69,41.66
step
clicknpc Crucible of Air##39736
Activate the Crucible of Air |q 25303/2 |goto Mount Hyjal/0 25.80,41.83
step
clicknpc Crucible of Water##39738
Activate the Crucible of Water |q 25303/4 |goto Mount Hyjal/0 25.96,41.61
step
click Twilight Apocrypha##470
turnin Elementary!##25303 |goto Mount Hyjal/0 25.81,41.68
accept Return to Duskwhisper##25312 |goto Mount Hyjal/0 25.81,41.68
step
label "Kill_Minions_Of_Gar'gol"
kill Hovel Brute##39642, Hovel Shadowcaster##39643
|tip Inside and outside the cave. |notinsticky
Slay 8 Minion of Gar'gol |q 25278/1 |goto Mount Hyjal/0 27.05,35.95 |only if Alliance
Slay 8 Minion of Gar'gol |q 25277/1 |goto Mount Hyjal/0 27.05,35.95  |only if Horde
step
label "Free_Twilight_Servitors"
talk Twilight Servitor##39644
|tip Inside and outside the cave. |notinsticky
Select  _"<Administer the draught.>"_ |gossip 112150
Free #8# Twilight Servitors |q 25298/1 |goto Mount Hyjal/0 27.05,35.95
step
talk Kristoff Manheim##39640
turnin Gar'gol's Gotta Go##25328 |goto Mount Hyjal/0 27.20,40.80
accept Get Me Outta Here!##25332 |goto Mount Hyjal/0 27.20,40.80
step
Escort Kristoff Out of the Cave |q 25332/1 |goto Mount Hyjal/0 27.04,35.97
step
talk Royce Duskwhisper##39435
|tip Walking around this area.
turnin Return to Duskwhisper##25312 |goto Mount Hyjal/0 28.60,30.20
turnin Get Me Outta Here!##25332 |goto Mount Hyjal/0 28.60,30.20
step
talk Ian Duran##39433
turnin Cleaning House##25278 |goto Mount Hyjal/0 28.22,29.75
accept Sweeping the Shelf##25352 |goto Mount Hyjal/0 28.22,29.75
accept Lightning in a Bottle##25353 |goto Mount Hyjal/0 28.22,29.75
|only if Alliance
step
talk Takrik Ragehowl##39432
turnin Cleaning House##25277 |goto Mount Hyjal/0 28.45,29.89
accept Sweeping the Shelf##25354 |goto Mount Hyjal/0 28.45,29.89
accept Lightning in a Bottle##25355 |goto Mount Hyjal/0 28.45,29.89
|only if Horde
step
talk Rio Duran##39434
turnin Free Your Mind, the Rest Follows##25298 |goto Mount Hyjal/0 28.17,29.88
stickystart "Kill_Twilight_Stormcaller"
stickystart "kill_Howling_Riftdweller"
step
click Lightning Channel##202743
collect Charged Condenser Jar##52834 |q 25353/1 |goto Mount Hyjal/0 28.17,39.84 |only if Alliance
collect Charged Condenser Jar##52834 |q 25355/1 |goto Mount Hyjal/0 28.17,39.84 |only if Horde
step
click Lightning Channel##202731
Charge the Condenser Jar |q 25353/1 |goto Mount Hyjal/0 28.17,39.86 |only if Alliance
Charge the Condenser Jar |q 25355/1 |goto Mount Hyjal/0 28.17,39.86 |only if Horde
step
label "Kill_Twilight_Stormcaller"
kill 8 Twilight Stormcaller##39843+ |q 25352/1 |goto Mount Hyjal/0 26.86,40.23 |only if Alliance
kill 8 Twilight Stormcaller##39843+ |q 25354/1 |goto Mount Hyjal/0 26.86,40.23 |only if Horde
You can find more around:
[29.23,39.54]
[31.95,39.73]
step
label "kill_Howling_Riftdweller"
kill 5 Howling Riftdweller##39844+ |q 25352/2 |goto Mount Hyjal/0 28.17,39.84 |only if Alliance
kill 5 Howling Riftdweller##39844+ |q 25354/2 |goto Mount Hyjal/0 28.17,39.84 |only if Horde
You can find more around: |notinsticky
[29.23,39.54] |notinsticky
[31.95,39.73] |notinsticky
step
_Next to you:_
use the Totem of Goldrinn##52853
talk Spirit of Goldrinn##39627
turnin Lightning in a Bottle##25353
accept Into the Maw!##25618
|only if Alliance
step
_Next to you:_
use Totem of Lo'Gosh##52854
talk Spirit of Lo'Gosh##39622
turnin Lightning in a Bottle##25355
accept Into the Maw!##25617
|only if Horde
step
Enter the blue portal |goto Mount Hyjal/0 26.20,41.00 < 5 |walk
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Into the Maw!##25618 |goto Mount Hyjal/0 26.25,41.92 |only if Alliance
turnin Into the Maw!##25617 |goto Mount Hyjal/0 26.25,41.92 |only if Horde
accept Forged of Shadow and Flame##25575 |goto Mount Hyjal/0 26.25,41.92
accept Crushing the Cores##25577 |goto Mount Hyjal/0 26.25,41.92
step
talk Yargra Blackscar##40837
|tip Inside the cave.
accept Rage of the Wolf Ancient##25576 |goto Mount Hyjal/0 26.32,41.96
stickystart "Destroy_Smoldering_Cores"
stickystart "Kill_Dark_Iron_Laborer"
step
click Twilight Arms Crate##9393+
Destroy #10# Twilight Arms Crates |q 25575/1 |goto Mount Hyjal/0 27.66,42.69
You can find more around [28.56,39.40]
step
label "Destroy_Smoldering_Cores"
kill Searing Guardian##40841+
collect 8 Smoldering Core##55123 |n
use the Smoldering Core##55123
|tip Use it next to Twilight Anvils on the ground around this area.
Destroy 8 Smoldering Cores |q 25577/1 |goto Mount Hyjal/0 27.70,42.99
You can find more around: |notinsticky
[30.16,39.43] |notinsticky
[28.48,39.13] |notinsticky
step
label "Kill_Dark_Iron_Laborer"
kill 12 Dark Iron Laborer##40838+ |q 25576/1 |goto Mount Hyjal/0 28.82,40.20
step
talk Yargra Blackscar##40837
|tip Inside the cave.
turnin Rage of the Wolf Ancient##25576 |goto Mount Hyjal/0 26.32,41.96
step
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Forged of Shadow and Flame##25575 |goto Mount Hyjal/0 26.25,41.92
turnin Crushing the Cores##25577 |goto Mount Hyjal/0 26.25,41.92
accept Cindermaul, the Portal Master##25599 |goto Mount Hyjal/0 26.25,41.92
step
kill Cindermaul##40844 |q 25599/1 |goto Mount Hyjal/0 30.74,41.70
step
click Battered Stone Chest##203089
|tip Appears after Cindermaul is killed.
collect Tome of Openings##55136 |q 25599/2 |goto Mount Hyjal/0 30.74,41.70
step
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Cindermaul, the Portal Master##25599 |goto Mount Hyjal/0 26.25,41.92
accept Forgemaster Pyrendius##25600 |goto Mount Hyjal/0 26.25,41.92
step
click Portal Rune
|tip There are 5 of them around the area.
|tip They are brown metal plates on the ground on this small circular island in the lava.
|tip Lure Forgemaster Pyrendius onto the activated Portal Runes.
|tip This will weaken him and allow you to kill him.
kill Forgemaster Pyrendius##40845 |q 25600/1 |goto Mount Hyjal/0 32.00,46.33
step
talk Jordan Olafson##40834
|tip Inside the cave.
turnin Forgemaster Pyrendius##25600 |goto Mount Hyjal/0 26.25,41.92
accept Return from the Firelands##25611 |goto Mount Hyjal/0 26.25,41.92 |only if Alliance
accept Return from the Firelands##25612 |goto Mount Hyjal/0 26.25,41.92 |only if Horde
step
Go inside the blue portal |goto Mount Hyjal/0 25.90,40.90 < 5 |walk
talk Ian Duran##39433
turnin Sweeping the Shelf##25352 |goto Mount Hyjal/0 28.22,29.75
turnin Return from the Firelands##25611 |goto Mount Hyjal/0 28.22,29.75
|only if Alliance
step
Go inside the blue portal |goto Mount Hyjal/0 25.90,40.90 < 5 |walk
talk Takrik Ragehowl##39432
turnin Return from the Firelands##25612 |goto Mount Hyjal/0 28.45,29.89
turnin Sweeping the Shelf##25354 |goto Mount Hyjal/0 28.45,29.89
|only if Horde
step
talk Vision of Ysera##46987
accept Avian's Legacy##27874 |goto Mount Hyjal 28.42,29.81 |or
'|complete completedq(25985) |or
|tip Skip if you have completed Wings Over Mount Hyjal
step
talk Rio Duran##39434
accept The Fires of Mt. Hyjal##25630 |goto Mount Hyjal 28.17,29.88
step
talk Laina Nightsky##39927
turnin The Fires of Mt. Hyjal##25630 |goto Mount Hyjal 18.99,40.93
accept Fighting Fire With ... Anything##25381 |goto Mount Hyjal 18.99,40.93
accept Disrupting the Rituals##25382 |goto Mount Hyjal 18.99,40.93
step
talk Mylune##39930
accept Save the Wee Animals##25385 |goto Mount Hyjal 19.23,37.88
step
talk Matoclaw##39928
accept If You're Not Against Us...##25404 |goto Mount Hyjal 19.03,37.01
step
talk Elizil Wintermoth##41860
fpath Grove of Aessina |goto Mount Hyjal 19.60,36.40
step
talk Tyrus Blackhorn##39933
Select _"Yes, Blackhorn. I've been sent to request your aid, if you are willing."_ |gossip 112159
Persuade Blackhorn |q 25404/1 |goto Mount Hyjal 22.27,44.92
step
talk Tyrus Blackhorn##39933
turnin If You're Not Against Us...##25404 |goto Mount Hyjal 22.27,44.92
accept Seeds of Their Demise##25408 |goto Mount Hyjal 22.27,44.92
step
kill Wailing Weed##40066+
collect 8 Bileberry##53102 |q 25408/1 |goto Mount Hyjal 20.77,41.30
step
talk Tyrus Blackhorn##39933
turnin Seeds of Their Demise##25408 |goto Mount Hyjal 22.27,44.92
accept A New Master##25411 |goto Mount Hyjal 22.27,44.92
stickystart "Kill_Raging_Firestorm"
stickystart "Kill_Twilight_Inferno_Lord"
stickystart "Collect_Frightened Animals"
step
kill Twilight Inferno Lord##39974
|tip Walking around this area.
use the Bottled Bileberry Brew##53120
|tip Use it on the corpse.
Subjugate a Twilight Inferno Lord |q 25411/1 |goto Mount Hyjal 15.90,46.95
step
talk Subjugated Inferno Lord##40093
turnin A New Master##25411 |goto Mount Hyjal 15.90,46.95
accept The Name Never Spoken##25412 |goto Mount Hyjal 15.90,46.95
step
click Southern Firestone##202763
Examine the Southern Firestone |q 25412/3 |goto Mount Hyjal 14.29,45.39
step
click Central Firestone##202764
Examine the Central Firestone |q 25412/2 |goto Mount Hyjal 11.61,41.51
step
click Northern Firestone##202765
Examine the Northern Firestone |q 25412/1 |goto Mount Hyjal 9.63,36.45
step
label "Kill_Raging_Firestorm"
kill 10 Raging Firestorm##39939 |q 25381/1 |goto Mount Hyjal 13.30,41.40
step
label "Kill_Twilight_Inferno_Lord"
kill 6 Twilight Inferno Lord##39974 |q 25382/1 |goto Mount Hyjal 13.30,41.40
step
label "Collect_Frightened Animals"
'|clicknpc Terrified Squirrel##39998
'|clicknpc Panicked Bunny##39997
collect 10 Frightened Animal##53060 |q 25385/1 |goto Mount Hyjal 13.30,41.40
step
talk Laina Nightsky##39927
turnin Fighting Fire With ... Anything##25381 |goto Mount Hyjal 18.99,40.93
turnin Disrupting the Rituals##25382 |goto Mount Hyjal 18.99,40.93
step
talk Mylune##39930
turnin Save the Wee Animals##25385 |goto Mount Hyjal 19.23,37.88
accept Oh, Deer!##25392 |goto Mount Hyjal 19.23,37.88
step
talk Tyrus Blackhorn##39933
turnin The Name Never Spoken##25412 |goto Mount Hyjal 22.27,44.92
accept Black Heart of Flame##25428 |goto Mount Hyjal 22.27,44.92
step
use the Charred Branch##53464
kill Thol'embaar##40107
collect Black Heart of Thol'embaar##53454 |q 25428/1 |goto Mount Hyjal 12.56,41.05
step
clicknpc Injured Fawn##39999+
|tip You will gain a 10  minute buff for each you gather.
|tip Make sure you have 3 buffs before returning to Mylune.
Escort #3# Injured Fawns Home |q 25392/1 |goto Mount Hyjal 14.66,46.45
You can find more around [19.23,37.88]
Escort them to Mylune here [19.22,37.87]
step
talk Mylune##39930
turnin Oh, Deer!##25392 |goto Mount Hyjal 19.23,37.88
step
talk Tyrus Blackhorn##39933
turnin Black Heart of Flame##25428 |goto Mount Hyjal 22.27,44.92
step
talk Laina Nightsky##39927
accept Last Stand at Whistling Grove##25940 |goto Mount Hyjal 18.99,40.93
step
talk Keeper Taldros##39932
turnin Last Stand at Whistling Grove##25940 |goto Mount Hyjal 13.65,32.79
accept The Bears Up There##25462 |goto Mount Hyjal 13.65,32.79
step
clicknpc Climbing Tree##40190
|tip Click the ladders at the base of the tree.
clicknpc Hyjal Bear Cub##40240
|tip Use your Climb Up ability to climb to the top of the tree.
|tip Use your Chuck-a-bear ability to throw the cubs down.
|tip Aim the yellow arrow at the bearskin trampoline on the ground.
Rescue #6# Hyjal Bear Cubs |q 25462/1  |goto Mount Hyjal 14.20,32.10
step
talk Keeper Taldros##39932
turnin The Bears Up There##25462 |goto Mount Hyjal 13.65,32.79
accept Smashing Through Ashes##25490 |goto Mount Hyjal 13.65,32.79
step
kill 8 Charbringer##40336 |q 25490/1 |goto Mount Hyjal 21.60,59.10
step
talk Arch Druid Hamuul Runetotem##39858
turnin Smashing Through Ashes##25490 |goto Mount Hyjal 27.12,62.63
accept Durable Seeds##25491 |goto Mount Hyjal 27.12,62.63
accept Fresh Bait##25493 |goto Mount Hyjal 27.12,62.63
step
talk Rayne Feathersong##40331
accept Firebreak##25492 |goto Mount Hyjal 27.10,63.00
step
talk Ranela Featherglen##54392
fpath Sanctuary of Malorne |goto Mount Hyjal 27.80,63.40
stickystart "Kill_Lava_Surger"
stickystart "Kill_Core_Hound"
step
click Scorched Soil##202884
collect 10 Hyjal Seedling##54574 |q 25491/1 |goto Mount Hyjal 36.20,58.60
step
label "Kill_Lava_Surger"
kill 10 Lava Surger##46911+ |q 25492/1 |goto Mount Hyjal 36.20,58.60
step
label "Kill_Core_Hound"
kill Core Hound##46910+
collect 4 Core Hound Entrails##54609 |q 25493/1 |goto Mount Hyjal 36.20,58.60
step
talk Arch Druid Hamuul Runetotem##39858
turnin Durable Seeds##25491 |goto Mount Hyjal 27.12,62.63
turnin Fresh Bait##25493 |goto Mount Hyjal 27.12,62.63
accept Hell's Shells##25507 |goto Mount Hyjal 27.12,62.63
step
talk Rayne Feathersong##40331
turnin Firebreak##25492 |goto Mount Hyjal 27.05,63.02
accept Prepping the Soil##25502 |goto Mount Hyjal 27.05,63.02
step
clicknpc Activated Flameward##40460
|tip It's a floating stone in a golden claw stand.
Activate the Flameward |q 25502/1 |goto Mount Hyjal 33.00,64.60
step
Defend the Flameward |q 25502/2 |goto Mount Hyjal 33.00,64.60
|tip Kill enemies that spawn.
step
use the Heap of Core Hound Innards##54744
|tip Use it near Nemesis.
|tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
clicknpc Nemesis##40340
collect Nemesis Shell Fragment##54745 |q 25507/1 |goto Mount Hyjal 39.30,54.10
step
talk Arch Druid Hamuul Runetotem##39858
turnin Hell's Shells##25507 |goto Mount Hyjal 27.12,62.63
accept Tortolla Speaks##25510 |goto Mount Hyjal 27.12,62.63
step
talk Rayne Feathersong##40331
turnin Prepping the Soil##25502 |goto Mount Hyjal 27.05,63.02
step
talk Tortolla##41504
turnin Tortolla Speaks##25510 |goto Mount Hyjal 24.67,55.53
accept Breaking the Bonds##25514 |goto Mount Hyjal 24.67,55.53
accept Children of Tortolla##25519 |goto Mount Hyjal 24.67,55.53
step
click Rod of Subjugation##9469
|tip You will be attacked.
Disable the Rod of Subjugation |q 25514/1 |goto Mount Hyjal 23.95,55.89
step
click Rod of Subjugation##9469
|tip You will be attacked.
Disable the Rod of Subjugation |q 25514/2 |goto Mount Hyjal 25.21,54.88
step
talk Tortolla##41504
turnin Breaking the Bonds##25514 |goto Mount Hyjal 24.67,55.53
step
kill Deep Corruptor##40561+
|tip Underwater around this area.
Save #6# Tortolla's Eggs |q 25519/1 |goto Mount Hyjal 24.40,57.40
step
talk Tortolla##41504
turnin Children of Tortolla##25519 |goto Mount Hyjal 24.67,55.53
accept An Ancient Awakens##25520 |goto Mount Hyjal 24.67,55.53
step
talk Arch Druid Hamuul Runetotem##39858
turnin An Ancient Awakens##25520 |goto Mount Hyjal 27.12,62.63
step
talk Choluna##41005
|tip Downstairs inside the building.
turnin Aviana's Legacy##27874 |goto Mount Hyjal 44.44,46.23
accept An Offering for Aviana##25663 |goto Mount Hyjal 44.44,46.23
step
talk Thisalee Crow##41006
|tip Inside the building.
accept The Wormwing Problem##25655 |goto Mount Hyjal 42.18,45.44
accept Scrambling for Eggs##25656 |goto Mount Hyjal 42.18,45.44
step
talk Dinorae Swiftfeather##43481
fpath Shrine of Aviana |goto Mount Hyjal 41.20,42.60
step
use the Sacred Nectar##55208
|tip Use it on Aviana's Burial Circle.
Offer the Nectar |q 25663/1 |goto Mount Hyjal 40.34,44.33
step
talk Mysterious Winged Spirit##41068
turnin An Offering for Aviana##25663 |goto Mount Hyjal 40.34,44.33
accept A Plea From Beyond##25665 |goto Mount Hyjal 40.34,44.33
stickystart "Kill_Wormwing_Harpy"
step
click Stolen Hyjal Egg##203143
collect 8 Hyjal Egg##55189 |q 25656/1 |goto Mount Hyjal 38.50,43.00
step
label "Kill_Wormwing_Harpy"
kill Wormwing Screecher##41027, Wormwing Swifttalon##41028
Slay #10# Wormwing Harpies |q 25655/1 |goto Mount Hyjal 38.50,43.00
step
talk Thisalee Crow##41006
|tip Inside the building.
turnin The Wormwing Problem##25655 |goto Mount Hyjal 42.18,45.44
turnin Scrambling for Eggs##25656 |goto Mount Hyjal 42.18,45.44
accept A Bird in Hand##25731 |goto Mount Hyjal 42.18,45.44
step
talk Choluna##41005
|tip Downstairs inside the building.
turnin A Plea From Beyond##25665 |goto Mount Hyjal 44.44,46.23
accept A Prayer and a Wing##25664 |goto Mount Hyjal 44.44,46.23
step
click Harpy Signal Fire##7290
Fight Marion Wormwing until she gets captured |q 25731/1 |goto Mount Hyjal 38.33,44.19
step
talk Marion Wormwing##41112
Ask  _"Why are you stealing eggs?"_ |gossip 112233
Interrogate Marion Wormwing |q 25731/2 |goto Mount Hyjal 38.33,44.19
step
use the Enormous Bird Call##55211
|tip Use it at Blaithe's Roost.
|tip It's a huge bird nest sitting on top of this mountain peak.
kill Blaithe##41084
collect Ancient Feather##55210 |q 25664/1 |goto Mount Hyjal 35.67,42.31
step
talk Thisalee Crow##41006
|tip Inside the building.
turnin A Bird in Hand##25731 |goto Mount Hyjal 42.18,45.44
step
talk Choluna##41005
|tip Downstairs inside the building.
turnin A Prayer and a Wing##25664 |goto Mount Hyjal 44.44,46.23
step
talk Skylord Omnuron##40997
|tip Upstairs inside the building.
accept Fact-Finding Mission##25740 |goto Mount Hyjal 43.55,45.89
step
talk Thisalee Crow##41006
turnin Fact-Finding Mission##25740 |goto Mount Hyjal 32.79,70.75
accept Sethria's Brood##25746 |goto Mount Hyjal 32.79,70.75
accept A Gap in Their Armor##25758 |goto Mount Hyjal 32.79,70.75
stickystart "Kill_Sethria's_Minions"
step
click the Codex of Shadows##203207
accept The Codex of Shadows##25763 |goto Mount Hyjal 31.30,77.10
step
click Twilight Armor Plate##203198
collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto Mount Hyjal 30.90,76.90
step
label "Kill_Sethria's_Minions"
kill Twilight Dragonkin##41029, Twilight Dragonkin Armorers##41030
Slay #12# Sethria's Minions |q 25746/1 |goto Mount Hyjal 30.90,76.90
step
talk Thisalee Crow##41006
turnin Sethria's Brood##25746 |goto Mount Hyjal 32.79,70.75
turnin A Gap in Their Armor##25758 |goto Mount Hyjal 32.79,70.75
accept Disassembly##25761 |goto Mount Hyjal 32.79,70.75
turnin The Codex of Shadows##25763 |goto Mount Hyjal 32.79,70.75
accept Egg Hunt##25764 |goto Mount Hyjal 32.79,70.75
stickystart "Kill_Twilight_Juggernaut"
step
click Shadow Cloak Generator##203208
|tip It may not be in the first one, so keep searching.
Unveil and Defend Aviana's Egg |q 25764/1 |goto Mount Hyjal 31.60,75.80
step
label "Kill_Twilight_Juggernaut"
use Thisalee's Shiv##55883
|tip Use Thisalee's Shiv 5 times on Twilight Juggernauts to remove the Twilight Juggernauts' Armor Plating completely.
kill 3 Twilight Juggernaut##41031 |q 25761/1 |goto Mount Hyjal 31.60,75.80
step
talk Thisalee Crow##41006
turnin Disassembly##25761 |goto Mount Hyjal 32.79,70.75
turnin Egg Hunt##25764 |goto Mount Hyjal 32.79,70.75
accept Sethria's Demise##25776 |goto Mount Hyjal 32.79,70.75
step
kill Sethria##41255
use the Thisalee's Signal Rocket##56003
|tip Use it when Sethria turns into a dragon.
Defeat Sethria |q 25776/1 |goto Mount Hyjal 35.50,98.00
step
talk Thisalee Crow##41006
turnin Sethria's Demise##25776 |goto Mount Hyjal 32.79,70.75
accept Return to the Shrine##25795 |goto Mount Hyjal 32.79,70.75
step
talk Choluna##41005
|tip Downstairs inside the building.
turnin Return to the Shrine##25795 |goto Mount Hyjal 44.44,46.23
accept An Ancient Reborn##25807 |goto Mount Hyjal 44.44,46.23
step
clicknpc Aviana's Egg##41300
use the Herald's Incense##56016
|tip Use it on Aviana's Egg.
|tip Aviana's Egg is in the tree tower, in a side room.
Burn Herald's Incense |q 25807/1 |goto Mount Hyjal 44.30,48.00
step
talk Aviana##41308
|tip Inside the building.
turnin An Ancient Reborn##25807 |goto Mount Hyjal 44.33,47.97
step
talk Morthis Whisperwing##41003
|tip Inside the building.
accept The Hatchery Must Burn##25810 |goto Mount Hyjal 44.13,45.93
step
talk Vision of Ysera##47002
|tip Inside the building.
accept The Last Living Lorekeeper##25830 |goto Mount Hyjal 43.79,45.95
Check here if it's not available above [62.00,24.90]
step
Enter the blue portal |goto Mount Hyjal 38.77,58.01 < 10
talk Farden Talonshrike##40578
|tip Inside the cave.
turnin The Hatchery Must Burn##25810 |goto Mount Hyjal 37.21,56.18
accept Flight in the Firelands##25523 |goto Mount Hyjal 37.21,56.18
step
click the Twilight Weapon Rack##130
collect Twilight Firelance##52716 |q 25523 |goto Mount Hyjal 37.23,56.08
step
Equip the Twilight Firelance |equipped Twilight Firelance##52716 |q 25523 |goto Mount Hyjal 37.38,55.99
step
clicknpc Aviana's Guardian##40723 |goto Mount Hyjal 37.38,55.99
Ride Aviana's Guardian |invehicle |c |q 25523 |goto Mount Hyjal 37.38,55.99
step
Visit the Guardian Flag |q 25523/1 |goto Mount Hyjal 36.60,53.40
|tip Use your Flap ability on your hotbar repeatedly to fly to this green flag.
step
talk Farden Talonshrike##40578
|tip Use your Flap ability on your hotbar repeatedly to fly to here.
|tip Inside the cave.
turnin Flight in the Firelands##25523 |goto Mount Hyjal 37.21,56.18
accept Wave One##25525 |goto Mount Hyjal 37.21,56.18
step
kill 10 Twilight Knight Rider##39835+ |q 25525/1 |goto Mount Hyjal 35.40,51.70 |kill Twilight Buzzard##39833
|tip Use your Flap ability on your hotbar repeatedly to fly to here.
|tip Fly into Twilight Buzzards to joust them.
|tip The knights are riding buzzards.
step
talk Farden Talonshrike##40578 |goto Mount Hyjal 37.21,56.18
|tip Use your Flap ability on your hotbar repeatedly to fly to here.
|tip Inside the cave.
turnin Wave One##25525 |goto Mount Hyjal 37.21,56.18
accept Wave Two##25544 |goto Mount Hyjal 37.21,56.18
step
kill #10# Twilight Lancers##40660 |q 25544/1 |goto Mount Hyjal 35.40,51.70 |kill Twilight Firebird##40650
|tip Use your Flap ability on your hotbar repeatedly to fly to here.
|tip Fly into Twilight Buzzards to joust them.
|tip Avoid 'Falling Boulders'.
|tip The knights are riding buzzards.
|tip The lancers are riding buzzards.
step
talk Farden Talonshrike##40578
|tip Use your Flap ability on your hotbar repeatedly to fly to here.
|tip Inside the cave.
turnin Wave Two##25544 |goto Mount Hyjal 37.21,56.18
accept Egg Wave##25560 |goto Mount Hyjal 37.21,56.18
step
kill Firelands Egg##40762+
|tip Run over them with your mount.
|tip They look like blue eggs on the ground around this area.
|tip Use your Flap ability on your hotbar repeatedly to fly to here.
Destroy #40# Firelands Eggs |q 25560/1 |goto Mount Hyjal 36.60,53.30
You can find more around here [39.30,54.10]
step
talk Farden Talonshrike##40578
|tip Use your Flap ability on your hotbar repeatedly to fly to here.
|tip Inside the cave.
turnin Egg Wave##25560 |goto Mount Hyjal 37.21,56.18
accept Return to Aviana##25832 |goto Mount Hyjal 37.21,56.18
step
Go inside the blue glowing orb |goto Mount Hyjal 39.10,57.60 < 10 |walk
talk Aviana##41308
|tip Inside the building.
|tip Don't forget to equip your real weapon.
turnin Return to Aviana##25832 |goto Mount Hyjal 44.33,47.97
step
talk Nordu##41381
turnin The Last Living Lorekeeper##25830 |goto Mount Hyjal 27.40,55.57
accept Firefight##25842 |goto Mount Hyjal 27.40,55.57
step
kill 5 Fiery Tormentor##41396 |q 25842/1 |goto Mount Hyjal 27.10,54.50
step
talk Nordu##41381
turnin Firefight##25842 |goto Mount Hyjal 27.40,55.57
accept Aessina's Miracle##25372 |goto Mount Hyjal 27.40,55.57
step
talk Arch Druid Hamuul Runetotem##39858
turnin Aessina's Miracle##25372 |goto Mount Hyjal 19.53,37.82
Watch the dialogue
accept Tortolla's Revenge##25843 |goto Mount Hyjal 19.53,37.82
step
talk Tortolla##41504
turnin Tortolla's Revenge##25843 |goto Mount Hyjal 41.90,60.77
accept The Hammer and the Key##25904 |goto Mount Hyjal 41.90,60.77
step
talk Niden##41507
accept Lost Wardens##25881 |goto Mount Hyjal 42.25,60.56
accept Breakthrough##25899 |goto Mount Hyjal 42.25,60.56
stickystart "Collect_Glyph_Of_Opening"
stickystart "Kill_Twilight_Schorchlord"
step
talk Lost Warden##41499
Select _"On your feet, soldier. The ancients are with us, and the mountain is healed!"_ |gossip 112283
Rescue 8 Lost Wardens |q 25881/1 |goto Mount Hyjal 46.80,58.70
step
label "Collect_Glyph_Of_Opening"
kill Twilight Field Captain##41502
|tip Walking around this area.
collect Glyph of Opening##56177 |q 25904/1 |goto Mount Hyjal 48.21,57.45
step
label "Kill_Twilight_Schorchlord"
kill 10 Twilight Scorchlord##41500 |q 25899/1 |goto Mount Hyjal 46.80,58.70
step
talk Tortolla##41504
turnin The Hammer and the Key##25904 |goto Mount Hyjal 41.90,60.77
accept The Third Flamegate##25906 |goto Mount Hyjal 41.90,60.77
step
talk Captain Irontree##41492
|tip Inside the building.
turnin Lost Wardens##25881 |goto Mount Hyjal 57.12,55.95
accept Pressing the Advantage##25886 |goto Mount Hyjal 57.12,55.95
turnin Breakthrough##25899 |goto Mount Hyjal 57.12,55.95
step
talk Logram##41497
|tip Inside the building.
accept Hyjal Recycling Program##25901 |goto Mount Hyjal 56.85,56.01
stickystart "Kill_Twilight_Field_Captain"
step
click Warden's Arrows##203310
collect 15 Warden's Arrow##56176 |q 25901/1 |goto Mount Hyjal 58.24,58.27
step
label "Kill_Twilight_Field_Captain"
kill 4 Twilight Field Captain##41502+ |q 25886/1 |goto Mount Hyjal 49.00,54.00
|tip They are uncommon, so you may need to search for them.
You may find more around here:
[53.77,54.89]
[58.57,60.53]
[60.60,58.83]
step
talk Logram##41497
|tip Inside the building.
turnin Hyjal Recycling Program##25901 |goto Mount Hyjal 56.85,56.01
step
talk Captain Irontree##41492
|tip Inside the building.
turnin Pressing the Advantage##25886 |goto Mount Hyjal 57.12,55.95
step
Go inside the blue portal |goto Mount Hyjal 64.53,53.54 < 5 |walk
talk Garunda Mountainpeak##41498
|tip Inside the cave.
turnin The Third Flamegate##25906 |goto Mount Hyjal 64.27,53.60
accept The Time for Mercy has Passed##25910 |goto Mount Hyjal 64.27,53.60
accept The Strength of Tortolla##25915 |goto Mount Hyjal 64.27,53.60
stickystart "Kill_Shadowflame_Master"
stickystart "Kill_Molten_Tormentor"
step
Follow the path down |goto Mount Hyjal 61.92,55.45 < 15 |walk
|tip Make sure you have Child of Tortolla summoned next to you.
Examine the Nemesis Crystal |q 25915/1 |goto Mount Hyjal 65.90,58.11
step
label "Kill_Shadowflame_Master"
kill 4 Shadowflame Master##41563 |q 25910/1 |goto Mount Hyjal 61.44,56.88
You can find more around:
[63.90,57.54]
[65.68,60.29]
step
label "Kill_Molten_Tormentor"
kill 10 Molten Tormentor##41565 |q 25910/2 |goto Mount Hyjal 61.44,56.88
You can find more around: |notinsticky
[63.90,57.54] |notinsticky
[65.68,60.29] |notinsticky
step
talk Garunda Mountainpeak##41498
|tip Inside the cave.
turnin The Time for Mercy has Passed##25910 |goto Mount Hyjal 64.27,53.60
turnin The Strength of Tortolla##25915 |goto Mount Hyjal 64.27,53.60
accept Finish Nemesis##25923 |goto Mount Hyjal 64.27,53.60
step
use the Totem of Tortolla##56207
|tip Use it when Nemesis is close to completing the 'Molten Fury' cast.
kill Nemesis##40340 |q 25923/1 |goto Mount Hyjal 63.20,62.20
step
talk Garunda Mountainpeak##41498
|tip Inside the cave.
turnin Finish Nemesis##25923 |goto Mount Hyjal 64.27,53.60
accept Tortolla's Triumph##25928 |goto Mount Hyjal 64.27,53.60
step
Go inside the blue portal |goto Mount Hyjal 64.80,53.60 < 10 |q 25928 |walk
talk Tortolla##41504
turnin Tortolla's Triumph##25928 |goto Mount Hyjal 41.90,60.77
accept The Ancients are With Us##25653 |goto Mount Hyjal 41.90,60.77
step
talk Ysera##40289
turnin The Ancients are With Us##25653 |goto Mount Hyjal 62.05,24.91
accept Commander Jarod Shadowsong##25597 |goto Mount Hyjal 62.05,24.91
step
talk Elementalist Ortell##39621
turnin Commander Jarod Shadowsong##25597 |goto Mount Hyjal 71.92,58.07
accept Signed in Blood##25274 |goto Mount Hyjal 71.92,58.07
step
talk Twilight Recruit##39619
Lure the Twilight Recruit away from the group to [72.30,58.90]
|use the Blackjack##52683
|tip Use it on Twilight Recruits.
kill Twilight Recruit##39619
collect Twilight Recruitment Papers##52685 |q 25274/1 |goto Mount Hyjal 73.50,60.50
step
talk Elementalist Ortell##39621
turnin Signed in Blood##25274 |goto Mount Hyjal 71.92,58.07
accept Your New Identity##25276 |goto Mount Hyjal 71.92,58.07
step
talk Condenna the Pitiless##39442
turnin Your New Identity##25276 |goto Mount Hyjal 76.94,62.03
accept Trial By Fire##25223 |goto Mount Hyjal 76.94,62.03
accept In Bloom##25224 |goto Mount Hyjal 76.94,62.03
step
talk Instructor Cargall##39451
accept Waste of Flesh##25330 |goto Mount Hyjal 77.05,62.14
stickystart "Kill_Fiery_Instructor"
stickystart "Collect_Flame_Blossom"
step
use the Frostgale Crystal##52819
'|talk Immolated Supplicant##39453
|tip Use it on 'Immolated Supplicants'.
|tip They are on fire running around this area.
|tip They must be alive for you to be able to save them.
|tip You may need to search for one of them.
Save #4# Immolated Supplicants |q 25330/1 |goto Mount Hyjal 81.23,65.23
step
label "Kill_Fiery_Instructor"
kill 8 Fiery Instructor##39344 |q 25223/1 |goto Mount Hyjal 83.23,62.95
step
label "Collect_Flame_Blossom"
click Flame Blossom##202619
collect 5 Flame Blossom##52537 |q 25224/1 |goto Mount Hyjal 83.23,62.95
step
talk Instructor Cargall##39451
turnin Waste of Flesh##25330 |goto Mount Hyjal 77.05,62.14
step
talk Condenna the Pitiless##39442
turnin Trial By Fire##25223 |goto Mount Hyjal 76.94,62.03
turnin In Bloom##25224 |goto Mount Hyjal 76.94,62.03
accept Twilight Training##25291 |goto Mount Hyjal 76.94,62.03
step
talk Instructor Mylva##39413
turnin Twilight Training##25291 |goto Mount Hyjal 89.57,59.09
accept Physical Training: Forced Labor##25509 |goto Mount Hyjal 89.57,59.09
step
click Outhouse Hideout##202701
accept Gather the Intelligence##25296 |goto Mount Hyjal 88.26,58.56
step
talk Instructor Devoran##39406
accept Walking the Dog##25294 |goto Mount Hyjal 90.15,56.39
stickystart "Collect_Charred_Basilisk_Meat"
stickystart "Break_Darkwhisper_Lodestones"
step
click Crate of Scrolls##202968
|tip It looks like a box of scrolls sitting on top of a cart.
collect Twilight Communique##52724 |q 25296/1 |goto Mount Hyjal 89.49,55.45
step
click Hyjal Battleplans##202969
|tip It looks like a map sitting on top of a cart.
collect Hyjal Battleplans##52725 |q 25296/2 |goto Mount Hyjal 91.98,51.52
step
label "Collect_Charred_Basilisk_Meat"
kill Spinescale Basilisk##39658+
collect 5 Charred Basilisk Meat##52708 |q 25294 |goto Mount Hyjal 90.77,49.33
You can find more around:
[88.09,49.76]
[89.20,53.21]
[85.89,53.55]
[83.69,55.76]
step
label "Break_Darkwhisper_Lodestones"
click Darkwhisper Lodestone##202952
Break 5 Darkwhisper Lodestones |q 25509/1 |goto Mount Hyjal 90.77,49.33
You can find more around: |notinsticky
[88.09,49.76] |notinsticky
[89.20,53.21] |notinsticky
[85.89,53.55] |notinsticky
[83.69,55.76] |notinsticky
step
use the Fiery Leash##52717
|tip You will summon the Spawn of Smolderos.
use the Charred Basilisk Meat##52708
Feed the Spawn of Smolderos 5 Times |q 25294/1
step
click Outhouse Hideout##202701
turnin Gather the Intelligence##25296 |goto Mount Hyjal 88.26,58.56
accept Seeds of Discord##25308 |goto Mount Hyjal 88.26,58.56
step
talk Instructor Mylva##39413
turnin Physical Training: Forced Labor##25509 |goto Mount Hyjal 89.57,59.09
accept Agility Training: Run Like Hell!##25499 |goto Mount Hyjal 89.57,59.09
step
Complete your Physical Training |q 25499/1 |goto Mount Hyjal 89.20,58.00
|tip Run away from the 'Blazing Trainer' for 1 minute.
|tip Run around the circular structure in the middle of the camp while the Blazing Trainer chases you.
step
talk Instructor Mylva##39413
turnin Agility Training: Run Like Hell!##25499 |goto Mount Hyjal 89.57,59.09
accept Mental Training: Speaking the Truth to Power##25299 |goto Mount Hyjal 89.57,59.09
step
use the Orb of Ascension##52828
|tip Use the abilities on your action bar to answer Yes or No as the Orb of Ascenion asks questions.
|tip You must answer 10 questions correct.
Complete your Mental Training |q 25299/1
step
talk Instructor Mylva##39413
turnin Mental Training: Speaking the Truth to Power##25299 |goto Mount Hyjal 89.57,59.09
accept Spiritual Training: Mercy is for the Weak##25309 |goto Mount Hyjal 89.57,59.09
step
talk Instructor Devoran##39406
turnin Walking the Dog##25294 |goto Mount Hyjal 90.15,56.39
accept A Champion's Collar##25494 |goto Mount Hyjal 90.15,56.39
step
kill 5 Failed Supplicant##39752 |q 25309/1 |goto Mount Hyjal 92.10,48.90
step
kill Spinescale Matriarch##40403
collect Spiked Basilisk Hide##54610 |q 25494/1 |goto Mount Hyjal 84.90,47.00
step
use the Ogre Disguise##55137
Put on your Ogre Disguise |havebuff Seeds of Discord##75724 |q 25308 |goto Mount Hyjal 77.50,48.10
step
talk Karr'gonn##40489
Select _"Boss, one of the boys is causing some trouble outside."_ |gossip 112199
kill High Cultist Azennios##40491 |q 25308/1 |goto Mount Hyjal 76.55,49.07
step
Remove your Ogre Disguise |nobuff Seeds of Discord##75724 |q 25308
step
click Outhouse Hideout##202701
turnin Seeds of Discord##25308 |goto Mount Hyjal 88.26,58.56
step
talk Instructor Mylva##39413
turnin Spiritual Training: Mercy is for the Weak##25309 |goto Mount Hyjal 89.57,59.09
step
talk Instructor Devoran##39406
turnin A Champion's Collar##25494 |goto Mount Hyjal 90.15,56.39
accept Grudge Match##25496 |goto Mount Hyjal 90.15,56.39
step
talk Gromm'ko##40409
|tip Inside the building.
Select _"Instructor Devoran sends a contender against your raptor."_ |gossip 112194
Watch the dialogue
kill Gromm'ko##40409
Complete the Grudge Match |q 25496/1 |goto Mount Hyjal 77.79,51.44
step
talk Instructor Devoran##39406
turnin Grudge Match##25496 |goto Mount Hyjal 90.15,56.39
step
talk Instructor Mylva##39413
accept The Greater of Two Evils##25310 |goto Mount Hyjal 89.57,59.09
accept Twilight Territory##25311 |goto Mount Hyjal 89.57,59.09
stickystart "Kill_Horrorguard"
step
use the Talisman of Flame Ascendancy##54814
|tip Use the abilities on your hotbar to fight Garnoth.
kill Garnoth Fist of the Legion##39726 |q 25310/1 |goto Mount Hyjal 64.76,64.67
step
label "Kill_Horrorguard"
kill 10 Horrorguard##39724 |q 25311/1 |goto Mount Hyjal 66.60,66.90
You can find more around [73.25,67.92]
step
talk Instructor Mylva##39413
turnin The Greater of Two Evils##25310 |goto Mount Hyjal 89.57,59.09
turnin Twilight Territory##25311 |goto Mount Hyjal 89.57,59.09
step
click Outhouse Hideout##202701
accept Speech Writing for Dummies##25314 |goto Mount Hyjal 88.26,58.56
step
kill Okrog##40922 |q 25314/1 |goto Mount Hyjal 78.80,56.40
|tip Patrolling the road from the south.
step
click Outhouse Hideout##202701
turnin Speech Writing for Dummies##25314 |goto Mount Hyjal 88.26,58.56
accept Head of the Class##25601 |goto Mount Hyjal 88.26,58.56
step
talk Instructor Mylva##39413
turnin Head of the Class##25601 |goto Mount Hyjal 89.57,59.09
accept Graduation Speech##25315 |goto Mount Hyjal 89.57,59.09
step
click Initiation Podium##9481
|tip Use the abilities on your hotbar to respond to what the crowd says.
|tip If the crowd says something angry, use your "Incite!" ability.
|tip
|tip If the crowd says something crazy, use your "Pander!" ability.
|tip
|tip If the crowd says something to make it seem like they are bored or unsure, use your "Inspire!" ability.
|tip Please the crowd 10 times.
Give your Graduation Speech |q 25315/1 |goto Mount Hyjal 95.20,51.30
step
Use the Step Down ability on your action bar to stop standing at the podium |nobuff Twilight Speech##74948 |q 25315
step
talk Commander Jarod Shadowsong##40619
turnin Graduation Speech##25315 |goto Mount Hyjal 95.35,51.32
accept Twilight Riot##25531 |goto Mount Hyjal 95.35,51.32
step
talk Commander Jarod Shadowsong##41025
turnin Twilight Riot##25531 |goto Mount Hyjal 72.22,74.69
accept Slash and Burn##25608 |goto Mount Hyjal 72.22,74.69
step
clicknpc Emerald Drake##40934
Ride the Emerald Drake |invehicle |q 25608 |goto Mount Hyjal 72.56,75.06
stickystart "Kill_Twiight_Stormwaker"
step
kill Twilight Initiate##40562, Fiery Instructor##40564
|tip Use your Acid Blast ability on Fiery Instructors and Twilight Initiates on the ground.
Slay #40# Twilight's Hammer Units |q 25608/2 |goto Mount Hyjal 77.90,61.20
You can find more around [84.09,55.62]
step
label "Kill_Twiight_Stormwaker"
kill 5 Twilight Stormwaker##40573+ |q 25608/1 |goto Mount Hyjal 77.90,61.20
|tip Use your Aerial Swipe ability on Twilight Stormwakers.
step
Click the red arrow on your hotbar to stop riding on the Emerald Drake |outvehicle |goto Mount Hyjal 72.22,74.69
step
talk Commander Jarod Shadowsong##41025
turnin Slash and Burn##25608 |goto Mount Hyjal 72.22,74.69
step
talk Commander Jarod Shadowsong##40772
accept Might of the Firelord##25548 |goto Mount Hyjal 72.08,74.02
step
talk Cenarius##40773
accept Secrets of the Flame##25554 |goto Mount Hyjal 71.92,74.09
step
talk Althera##43549
fpath Gates of Sothann |goto Mount Hyjal 71.60,75.30
stickystart "Kill_Flame_Ascendant"
stickystart "Kill_Twilight_Subjugator"
step
click Burning Litanies##203047
|tip On the table inside the tent.
collect The Burning Litanies##54906 |q 25554/2 |goto Mount Hyjal 59.66,80.81
step
click Tome of Flame##203046
|tip On a crate inside the tent.
collect Tome of Flame##54905 |q 25554/3 |goto Mount Hyjal 58.14,78.89
step
click Ascendant's Codex##203048
|tip On the table inside the tent.
collect Ascendant's Codex##54907 |q 25554/1 |goto Mount Hyjal 56.84,83.86
step
click Pure Twilight Egg##207359
accept The Twilight Egg##25644 |goto Mount Hyjal 59.13,83.89
step
label "Kill_Flame_Ascendant"
kill 4 Flame Ascendant##40709+ |q 25548/1 |goto Mount Hyjal 58.60,81.30
step
label "Kill_Twilight_Subjugator"
kill 5 Twilight Subjugator##40463+ |q 25548/2 |goto Mount Hyjal 58.60,81.30
step
talk Cenarius##40773
turnin Secrets of the Flame##25554 |goto Mount Hyjal 71.92,74.09
accept The Gatekeeper##25555 |goto Mount Hyjal 71.92,74.09
step
talk Commander Jarod Shadowsong##40772
turnin Might of the Firelord##25548 |goto Mount Hyjal 72.08,74.02
accept The Sanctum of the Prophets##25549 |goto Mount Hyjal 72.08,74.02
step
talk Aronus##40816
turnin The Twilight Egg##25644 |goto Mount Hyjal 72.25,73.96
accept Brood of Evil##25552 |goto Mount Hyjal 72.25,73.96
stickystart "Kill_Twilight_Augur"
stickystart "Kill_Twilight_Retainer"
step
kill Young Twilight Drake##40687+
collect Young Twilight Drake Skull##54973 |q 25552/1 |goto Mount Hyjal 59.10,78.50
step
use the Horn of Cenarius##55153
kill Azralon the Gatekeeper##40814 |q 25555/1 |goto Mount Hyjal 57.34,67.91
step
kill 1 Emissary of Flame##40755 |q 25549/3 |goto Mount Hyjal 57.00,69.40
The Emissary of Flame patrols between the following locations:
Location 1 [54.70,67.00]
Location 2 [60.70,72.60]
step
label "Kill_Twilight_Augur"
kill 4 Twilight Augur##40713+ |q 25549/1 |goto Mount Hyjal 57.00,69.40
step
label "Kill_Twilight_Retainer"
kill 4 Twilight Retainer##40767+ |q 25549/2 |goto Mount Hyjal 57.00,69.40
step
talk Aronus##40816
turnin Brood of Evil##25552 |goto Mount Hyjal 72.25,73.96
accept Death to the Broodmother##25553 |goto Mount Hyjal 72.25,73.96
step
talk Commander Jarod Shadowsong##40772
turnin The Sanctum of the Prophets##25549 |goto Mount Hyjal 72.08,74.02
accept Magma Monarch##25550 |goto Mount Hyjal 72.08,74.02
step
talk Cenarius##40773
turnin The Gatekeeper##25555 |goto Mount Hyjal 71.92,74.09
step
use the Young Twilight Drake Skull##55173
kill Desperiona##40974 |q 25553/1 |goto Mount Hyjal 54.48,85.70
step
use the Drums of the Turtle God##55179
kill King Moltron##40998 |q 25550/1 |goto Mount Hyjal 43.38,83.21
step
talk Commander Jarod Shadowsong##40772
turnin Magma Monarch##25550 |goto Mount Hyjal 72.08,74.02
step
talk Aronus##40816
turnin Death to the Broodmother##25553 |goto Mount Hyjal 72.25,73.96
step
talk Cenarius##40773
accept The Firelord##25551 |goto Mount Hyjal 71.92,74.09
step
Go through the blue portal |goto Mount Hyjal 55.50,66.30 < 10 |walk
talk Cenarius##41631
Select _"I am ready to begin the battle against Ragnaros."_ |gossip 112204 |goto Mount Hyjal 44.66,79.16
Watch the dialogue
kill Ragnaros##41634 |q 25551/1 |goto Mount Hyjal 49.13,76.65
step
Wait for Hamuul to open a portal back to Hyjal |goto Mount Hyjal 48.95,77.08
click Portal to Hyjal##203135
Teleport to Hyjal |goto Mount Hyjal/0 72.15,74.80 < 20 |c  |q 25551
step
talk Commander Jarod Shadowsong##40772
turnin The Firelord##25551 |goto Mount Hyjal/0 72.08,74.02
step
talk Provisioner Whitecloud##50314
buy 1 Tabard of the Guardians of Hyjal##65906 |goto Mount Hyjal,62.80,23.80
step
Use the Guardians of Hyjal tabard and run through instances with it |equipped Tabard of the Guardians of Hyjal##65906 |use Tabard of the Guardians of Hyjal##65906
Earn Exalted reputation with the Guardians of Hyjal |complete rep('Guardians of Hyjal')==Exalted
]])
