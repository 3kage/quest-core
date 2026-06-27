-- Bundled QuestCore guide
if not QuestCore then return end

QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Midnight Intro & Campaign (Story Only)",{
},[[
step
accept Midnight##91281 |goto Stormwind City/0 53.26,54.32
|tip Automatically.
|only if Alliance
step
Locate the Image of Lady Liadrin |q 91281/1 |goto Stormwind City/0 53.26,54.32
|only if Alliance
step
talk Image of Lady Liadrin##241677
turnin Midnight##91281 |goto Stormwind City/0 53.26,54.32
|only if Alliance
step
talk Image of Lady Liadrin##241677
accept A Voice from the Light##88719 |goto Stormwind City/0 53.26,54.32 |only if default
accept A Voice from the Light##88719 |goto Stormwind City/0 53.26,54.32 |noautoaccept |only if achieved(42045)
_Or_ |only if achieved(42045)
Select _"I have heard this tale before. <Skip the Midnight introduction and travel to the Sanctum of Light.>"_ |gossip 138201 |noautogossip |only if achieved(42045)
|tip This will skip the introductory portion of the campaign and start you at the first zone choice. |only if achieved(42045)
|only if Alliance
step
accept Midnight##91281 |goto Orgrimmar/1 52.97,77.46
|tip Automatically.
|only if Horde
step
Locate the Image of Lady Liadrin |q 91281/1 |goto Orgrimmar/1 53.43,77.32
|only if Horde
step
talk Image of Lady Liadrin##241677
turnin Midnight##91281 |goto Orgrimmar/1 53.43,77.32
|only if Horde
step
talk Image of Lady Liadrin##241677
accept A Voice from the Light##88719 |goto Orgrimmar/1 53.43,77.32 |only if default
accept A Voice from the Light##88719 |goto Orgrimmar/1 53.43,77.32 |noautoaccept |only if achieved(42045)
_Or_ |only if achieved(42045)
Select _"I have heard this tale before. <Skip the Midnight introduction and travel to the Sanctum of Light.>"_ |gossip 138201 |noautogossip |only if achieved(42045)
|tip This will skip the introductory portion of the campaign and start you at the first zone choice. |only if achieved(42045)
|only if Horde
step
use Light's Summon##239151
Travel to Quel'Danas |q 88719/2
step
talk Lady Liadrin##236692
turnin A Voice from the Light##88719 |goto Isle of Quel Danas (Intro)/0 48.49,38.37
accept Last Bastion of the Light##86769 |goto Isle of Quel Danas (Intro)/0 48.49,38.37
step
Watch the dialogue
|tip Follow Lady Liadrin.
talk Lady Liadrin##236693
turnin Last Bastion of the Light##86769 |goto Isle of Quel Danas (Intro)/0 46.00,44.36
accept Champions of Quel'Danas##86770 |goto Isle of Quel Danas (Intro)/0 46.00,44.36
step
talk High Exarch Turalyon##236906
accept Where Heroes Hold##86780 |goto Isle of Quel Danas (Intro)/0 45.97,44.65
accept My Son##89271 |goto Isle of Quel Danas (Intro)/0 45.97,44.65
stickystart "Hinder_The_Attacking_Forces"
step
talk Lothraxion##236657
Select _"The Vanguard rallies at Sunstrider Rise."_ |gossip 132514
Recruit Lothraxion |q 86770/3 |goto Isle of Quel Danas (Intro)/1 51.17,50.07
step
talk Faerin Lothar##237211
Select _"The Vanguard rallies at Sunstrider Rise."_ |gossip 132513
Recruit Faerin Lothar |q 86770/1 |goto Isle of Quel Danas (Intro)/1 70.34,17.31
step
talk Arator##236959
Select _"Your father sent me to find you."_ |gossip 132388
Gain Arator's Assistance |q 89271/1 |goto Isle of Quel Danas (Intro)/1 65.38,87.70
step
talk Alonsus Faol##236789
Select _"The Vanguard rallies at Sunstrider Rise."_ |gossip 132515
Recruit Alonsus Faol |q 86770/2 |goto Isle of Quel Danas (Intro)/1 54.18,84.11
step
label "Hinder_The_Attacking_Forces"
kill Voidborn Reserve##238874, Voidfront Conjurer##252487, Voidfront Defiler##238855, Voidfront Linebreaker##239390, Voidfront Pummeler##238856, Voidgorged Reserve##238872, Voidmarked Reserve##238790, Voidmarked Reserve##249655, Voidswarm Reserve##238788
clicknpc Parhelion Lightguard##238756+
|tip Blood elf allies.
Select _"Join me in battle!"_ |gossip 132365
click Lightspire Spear+
click Sun-Blessed Ballista+
|tip Wooden artillery machines.
click Healing Salve+
|tip Blue glass vials.
click Medical Supplies+
|tip Wooden crates.
clicknpc Injured Defenders##239455+
|tip Allies laying down.
Hinder the Attacking Void Forces |q 86780/1 |goto Isle of Quel Danas (Intro)/1 30.56,77.08
step
talk High Exarch Turalyon##236954
|tip Upper level.
turnin Where Heroes Hold##86780 |goto Isle of Quel Danas (Intro)/0 35.34,43.79
turnin My Son##89271 |goto Isle of Quel Danas (Intro)/0 35.34,43.79
step
talk Lor'themar Theron##236896
|tip Walks around.
turnin Champions of Quel'Danas##86770 |goto Isle of Quel Danas (Intro)/0 35.38,44.05
accept The Hour of Need##86805 |goto Isle of Quel Danas (Intro)/0 35.38,44.05
step
_Next to you:_
talk Arator##237222 |usename Arator##236959
accept A Safe Path##89012
step
talk Scared Civilian##240068, Scared Civilian##240073, Scared Civilian##240152, Scared Civilian##240075, Scared Civilian##240156, Scared Civilian##240125
|tip Scared allies.
|tip On your minimap.
Select _"Arator and I will see you safely to the boats."_ |gossip 132653, 132656, 132685, 132654, 132686, 132670
clicknpc Injured Citizens##240543+
|tip Allies laying down.
click Stone Debris+
|tip Piles of grey rocks.
Rescue #20# Civilians |q 86805/1 |goto Isle of Quel Danas (Intro)/1 36.65,55.10
step
kill Gloomstress##240478 |q 89012/1 |goto Isle of Quel Danas (Intro)/1 49.29,74.74
step
Proceed to the Silver Landing |q 86805/2 |goto Isle of Quel Danas (Intro)/0 41.15,52.26
step
talk Lor'themar Theron##236961
turnin The Hour of Need##86805 |goto Isle of Quel Danas (Intro)/0 41.32,56.81
turnin A Safe Path##89012 |goto Isle of Quel Danas (Intro)/0 41.32,56.81
accept Luminous Wings##86806 |goto Isle of Quel Danas (Intro)/0 41.32,56.81
step
clicknpc Empowered Dragonhawk##237221
Mount an Empowered Dragonhawk |q 86806/1 |goto Isle of Quel Danas (Intro)/0 41.03,58.17
stickystart "Slay_Void_Invaders"
step
Rescue #3# Distressed Civilian |q 86806/3 |goto Isle of Quel Danas (Intro)/0 32.07,75.01
|tip Use the {o}Grappling Rope{} ability near {o}Distressed Civilians{}.
|tip Near the ground.
|tip On your minimap.
step
label "Slay_Void_Invaders"
kill Umbral Slickette##241807, Voidborn Soarling##240263
Slay #16# Void Invaders |q 86806/2 |goto Isle of Quel Danas (Intro)/0 32.07,75.01
step
Watch the dialogue
Return to Lor'themar Theron |outvehicle |goto Isle of Quel Danas (Intro)/0 41.05,57.25 |q 86806 |notravel
step
talk Lor'themar Theron##236961
turnin Luminous Wings##86806 |goto Isle of Quel Danas (Intro)/0 41.32,56.80
step
talk Arator##243091
accept The Gate##86807 |goto Isle of Quel Danas (Intro)/0 41.31,56.58
step
Reach the North Gate |q 86807/1 |goto Isle of Quel Danas (Intro)/1 49.06,22.26
step
talk High Exarch Turalyon##236974
turnin The Gate##86807 |goto Isle of Quel Danas (Intro)/1 49.06,22.26
step
talk Arator##236964
accept Severing the Void##91274 |goto Isle of Quel Danas (Intro)/1 49.68,21.24
accept Voidborn Banishing##86834 |goto Isle of Quel Danas (Intro)/1 49.68,21.24
step
clicknpc Quel'Danas Sentinel##246245
Activate the Sentinel |q 91274/1 |goto Isle of Quel Danas (Intro)/0 42.82,35.74 |count 1 hidden
step
clicknpc Quel'Danas Sentinel##246255
Activate the Sentinel |q 91274/1 |goto Isle of Quel Danas (Intro)/0 38.85,31.92 |count 2 hidden
step
kill Latrunculon##240598 |q 86834/3 |goto Isle of Quel Danas (Intro)/0 36.97,29.75
|tip Walks around.
stickystart "Kill_The_Wasting"
step
clicknpc Quel'Danas Sentinel##246251
Activate the Sentinel |q 91274/1 |goto Isle of Quel Danas (Intro)/0 42.47,25.52 |count 3 hidden
step
label "Kill_The_Wasting"
kill The Wasting##240600 |q 86834/1 |goto Isle of Quel Danas (Intro)/0 41.76,26.41
|tip Large blue humanoid.
|tip Walks around.
step
clicknpc Quel'Danas Sentinel##246239
|tip Under the bridge.
Activate the Sentinel |q 91274/1 |goto Isle of Quel Danas (Intro)/0 43.26,29.51 |count 4 hidden
step
clicknpc Quel'Danas Sentinel##246227
Activate the Sentinel |q 91274/1 |goto Isle of Quel Danas (Intro)/0 44.42,35.47 |count 5 hidden
Destroy the Void-Breach Pylon |q 91274/2 |goto Isle of Quel Danas (Intro)/0 44.42,35.47
step
kill Blightclaw##240601 |q 86834/2 |goto Isle of Quel Danas (Intro)/0 46.37,33.62
step
talk High Exarch Turalyon##236978
turnin Severing the Void##91274 |goto Isle of Quel Danas (Intro)/0 45.38,26.98
turnin Voidborn Banishing##86834 |goto Isle of Quel Danas (Intro)/0 45.38,26.98
accept Ethereal Eradication##86811 |goto Isle of Quel Danas (Intro)/0 45.38,26.98
step
talk Lady Liadrin##237253
accept Light's Arsenal##86848 |goto Isle of Quel Danas (Intro)/0 45.23,26.92
stickystart "Slay_Shadowguard_Forces"
step
click Staff of Disintegration
|tip Inside the building.
Collect the Weapon |q 86848/1 |goto Isle of Quel Danas (Intro)/0 44.80,24.20 |count 1 hidden
step
click Translocation Portal
|tip Upstairs inside the building.
Click Here to Continue |confirm |goto Isle of Quel Danas (Intro)/0 44.76,23.83 |q 86848
step
click Cosmic Infuser
|tip Upstairs inside the building.
Collect the Weapon |q 86848/1 |goto Isle of Quel Danas (Intro)/0 45.15,23.61 |count 2 hidden
step
click Infinity Blades
|tip {o}Ground floor{} inside the building.
Collect the Weapon |q 86848/1 |goto Isle of Quel Danas (Intro)/0 48.00,28.71 |count 3 hidden
step
click Scourgebane
|tip {o}Middle floor{} inside the building.
Collect the Weapon |q 86848/1 |goto Isle of Quel Danas (Intro)/0 47.78,28.96 |count 4 hidden
step
click Netherstrand Longbow
|tip {o}Top floor{} inside the building.
Collect the Weapon |q 86848/1 |goto Isle of Quel Danas (Intro)/0 47.24,28.70 |count 5 hidden
step
click Devastation
|tip {o}Top floor{} inside the building.
Collect the Weapon |q 86848/1 |goto Isle of Quel Danas (Intro)/0 48.17,28.96 |count 6 hidden
step
kill Norkonahl the Looter##240892 |q 86811/2 |goto Isle of Quel Danas (Intro)/0 49.44,22.37
|tip Use the {o}Devastation{} button ability.
|tip Use it when he's casting {o}Repurposed Plunder{}.
|tip Stuns him and prevents his {o}powerful AoE summon{}.
|tip Walks around.
|tip {o}Ground floor{} inside the building.
step
click Warp Slicer
|tip {o}Middle floor{} inside the building.
Collect the Weapon |q 86848/1 |goto Isle of Quel Danas (Intro)/0 49.18,23.39 |count 7 hidden
step
label "Slay_Shadowguard_Forces"
kill Shadowguard Fatestealer##245706, Shadowguard Pillager##238186, Shadowguard Spoiler##245707
Slay #12# Shadowguard Forces |q 86811/1 |goto Isle of Quel Danas (Intro)/0 48.98,25.77
step
talk Lady Liadrin##237253
turnin Light's Arsenal##86848 |goto Isle of Quel Danas (Intro)/0 45.23,26.92
step
talk High Exarch Turalyon##236978
turnin Ethereal Eradication##86811 |goto Isle of Quel Danas (Intro)/0 45.38,26.99
accept Wrath Unleashed##86849 |goto Isle of Quel Danas (Intro)/0 45.38,26.99
step
talk High Exarch Turalyon##237255
|tip Heal in the {o}yellow bubbles{}.
Select _"Let's drive this threat back!"_ |gossip 133285
Aid Turalyon in Attacking the Voidwake Behemoth |q 86849/1 |goto Isle of Quel Danas (Intro)/0 45.65,11.23
step
Channel the Light Against the Voidwake Behemoth |q 86849/2 |goto Isle of Quel Danas (Intro)/0 45.78,11.35
|tip Use the {o}Channel Light{} button ability.
step
Watch the dialogue
Drive Back Vorasius |q 86849/3 |goto Isle of Quel Danas (Intro)/0 45.78,11.35
step
talk Lady Liadrin##237277
turnin Wrath Unleashed##86849 |goto Isle of Quel Danas (Intro)/0 45.84,11.52
accept Broken Sun##86850 |goto Isle of Quel Danas (Intro)/0 45.84,11.52
step
clicknpc Empowered Dragonhawk##237388
Escape on the Dragonhawk |q 86850/1 |goto Isle of Quel Danas (Intro)/0 39.69,16.43
step
Watch the dialogue
Arrive at the Sunwell |q 86850/2
step
talk Lady Liadrin##237278
|tip Inside the building.
turnin Broken Sun##86850 |goto Isle of Quel Danas (Intro)/2 51.74,81.31
accept Light's Last Stand##86852 |goto Isle of Quel Danas (Intro)/2 51.74,81.31
step
talk Lady Liadrin##237278
|tip Inside the building.
Select _"Nothing will get past me!"_ |gossip 132924
Speak with Liadrin to Begin the Ritual |q 86852/1 |goto Isle of Quel Danas (Intro)/2 51.74,81.31
step
kill Voidmarked Berserker##241617, Voidmarked Intruder##244053
|tip Inside the building.
Repel the Void Forces |q 86852/2 |goto Isle of Quel Danas (Intro)/2 50.62,48.88
step
kill Imperatus##244088 |q 86852/4 |goto Isle of Quel Danas (Intro)/2 51.18,23.19
|tip Inside the building.
step
talk Lady Liadrin##241068
turnin Light's Last Stand##86852 |goto Isle of Quel Danas M/0 52.66,88.19
step
talk Lor'themar Theron##236779
accept Silvermoon Negotiations##86733 |goto Isle of Quel Danas M/0 52.53,88.19
step
Arrive at Sanctum of Light |q 86733/1 |goto Silvermoon City M/0 45.44,70.34
|tip Upstairs inside the building.
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Silvermoon Negotiations##86733 |goto Silvermoon City M/0 45.44,70.34
accept Diplomacy##86734 |goto Silvermoon City M/0 45.44,70.34
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
Select _"<Listen to the discussion.>"_ |gossip 132633 |noautogossip
Watch the dialogue
Listen to the Discussion |q 86734/1 |goto Silvermoon City M/0 45.44,70.34
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Diplomacy##86734 |goto Silvermoon City M/0 45.44,70.34
accept Paved in Ash##86735 |goto Silvermoon City M/0 45.44,70.34 |only if Alliance
accept Paved in Ash##86736 |goto Silvermoon City M/0 45.44,70.34 |only if Horde
step
talk General Amias Bellamy##248629
Select _"<Offer greeting.>"_ |gossip 135224
Greet the Vanguard of the Light |q 86735/7 |goto Silvermoon City M/0 45.69,62.83
|only if Alliance
step
talk Ceera##239664
|tip Inside the building.
Select _"Lor'themar has requested that we be allowed to use your services."_ |gossip 132676
Check in with the Head Bank Teller |q 86735/4 |goto Silvermoon City M/0 50.81,65.21
|only if Alliance
step
talk Skymaster Skyles##239639
|tip On the bridge.
Select _"Lor'themar has requested that we be allowed to use your dragonhawks for travel."_ |gossip 132674
Speak with the Skymaster of Silvermoon |q 86735/3 |goto Silvermoon City M/0 50.97,71.25
|only if Alliance
step
talk Skymaster Skyles##239639
|tip On the bridge.
fpath Sanctum of Light |goto Silvermoon City M/0 50.97,71.25
|only if Alliance
step
talk Valeera Sanguinar##242381
|tip Inside the building.
Select _"Lor'themar will need the services of the Reliquary."_ |gossip 133099
Check in with the Reliquary |q 86735/5 |goto Silvermoon City M/0 52.54,78.26
|only if Alliance
step
talk Magistrix Narinth##239673
|tip Inside the building.
Select _"Lor'themar has allowed us to stay in the city for the time being. We'll need access to your portals."_ |gossip 132678
Check on the Portal Network |q 86735/2 |goto Silvermoon City M/0 52.62,65.19
|only if Alliance
step
talk Innkeeper Jovia##239630
|tip Inside the building.
Select _"Lor'themar has allowed us to stay for now. We'll need lodging."_ |gossip 132666
Check in at Wayfarer's Rest |q 86735/1 |goto Silvermoon City M/0 56.46,70.37
|only if Alliance
step
talk Guard Captain Goldblade##240936
Select _"The Alliance will be staying here slightly longer than expected."_ |gossip 132828
Check in with Guard Captain Goldblade |q 86735/6 |goto Silvermoon City M/0 60.22,70.34
|only if Alliance
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Paved in Ash##86735 |goto Silvermoon City M/0 45.44,70.34
|only if Alliance
step
talk General Amias Bellamy##248629
Select _"<Offer greeting.>"_ |gossip 135224
Greet the Vanguard of the Light |q 86736/7 |goto Silvermoon City M/0 45.69,62.83
|only if Horde
step
talk Ceera##239664
|tip Inside the building.
Select _"The Alliance will be staying here temporarily."_ |gossip 134013
Check in with the Head Bank Teller |q 86736/4 |goto Silvermoon City M/0 50.81,65.21
|only if Horde
step
talk Skymaster Skyles##239639
|tip On the bridge.
Select _"The Alliance will be staying here temporarily. They'll need transportation."_ |gossip 134010
Speak with the Skymaster of Silvermoon |q 86736/3 |goto Silvermoon City M/0 50.97,71.25
|only if Horde
step
talk Skymaster Skyles##239639
|tip On the bridge.
fpath Sanctum of Light |goto Silvermoon City M/0 50.97,71.25
|only if Horde
step
talk Valeera Sanguinar##242381
|tip Inside the building.
Select _"Lor'themar will need the services of the Reliquary."_ |gossip 133099
Check in with the Reliquary |q 86736/5 |goto Silvermoon City M/0 52.54,78.26
|only if Horde
step
talk Magistrix Narinth##239673
|tip Inside the building.
Select _"The Alliance will be staying longer than expected. We'll need your Stormwind portal to remain."_ |gossip 134011
Check on the Portal Network |q 86736/2 |goto Silvermoon City M/0 52.62,65.19
|only if Horde
step
talk Innkeeper Jovia##239630
|tip Inside the building.
Select _"The Alliance will be staying here temporarily - lodging will be needed."_ |gossip 134012
Check in at Wayfarer's Rest |q 86736/1 |goto Silvermoon City M/0 56.46,70.37
|only if Horde
step
talk Magistrix Nizara##240940
Select _"The Alliance will be staying here slightly longer than expected."_ |gossip 134014
Check in with Magistrix Nizara |q 86736/6 |goto Silvermoon City M/0 69.12,67.56
|only if Horde
step
talk Anathos##246564
fpath The Royal Exchange |goto Silvermoon City M/0 69.36,63.31
|only if Horde
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Paved in Ash##86736 |goto Silvermoon City M/0 45.44,70.34
|only if Horde
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
accept Fair Breeze, Light Bloom##86737 |goto Silvermoon City M/0 45.44,70.34 |next "Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Eversong Woods (Story Only)" |or
|only if not achieved(42045) and not completedq(86650)
step
click Scouting Map
|tip Upstairs inside the building.
accept The Gates of Zul'Aman##86708 |goto Silvermoon City M/0 45.62,70.33 |noautoaccept |next "Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Zul'Aman (Story Only)" |or |only if not completedq(91062)
accept Harandar##89402 |goto Silvermoon City M/0 45.62,70.33 |noautoaccept |next "Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Harandar (Story Only)" |or |only if not completedq(86898)
accept Arator##89193 |goto Silvermoon City M/0 45.62,70.33 |noautoaccept |next "Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Arator's Journey (Story Only)" |or |only if not completedq(91787)
|tip If the appropriate intro quest is not offered, click the line.
|only if not achieved(42045) and completedq(86650) and not completedallq(91062,86898,91787)
step
Reach Level 86 |ding 86
|tip To start Voidstorm, you need to be level 86+.
|tip You should now be able to complete the full zone guides for Eversong Woods, Zul'Aman, and Harandar.
|tip Load one of these guides to reach the appropriate level or complete other activities.
|loadguide "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Eversong Woods (Full Zone)"
|loadguide "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Zul'Aman (Full Zone)"
|loadguide "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Harandar (Full Zone)"
|only if not achieved(42045) and not completedq(86522) and completedallq(86650,91062,86898,91787)
step
Proceeding to Voidstorm |complete true |next "Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Voidstorm (Story Only)"
|only if not achieved(42045) and not completedq(86522) and completedallq(86650,91062,86898,91787)
step
Reach Level 90 |ding 90
|tip Use full zone guides or other activities to reach level 90.
|only if completedallq(86650,91062,86898,91787,86522) and not achieved(42045)
step
click Scouting Map
|tip Upstairs inside the building.
accept The Gates of Zul'Aman##86708	|goto Silvermoon City M/0 45.62,70.33	|or	|next "Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Zul'Aman (Story Only)"	|only if not completedq(91062)
accept Arator##89193			|goto Silvermoon City M/0 45.62,70.33	|or	|next "Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Arator's Journey (Story Only)"	|only if not completedq(91787)
accept Harandar##89402			|goto Silvermoon City M/0 45.62,70.33	|or	|next "Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Harandar (Story Only)"	|only if not completedq(86898)
accept Eversong##94871			|goto Silvermoon City M/0 45.62,70.33	|or	|next "Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Eversong Woods (Story Only)"	|only if not completedq(86650)
accept Voidstorm##89388			|goto Silvermoon City M/0 45.62,70.33	|or	|next "Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Voidstorm (Story Only)"	|only if not completedq(86522)
|tip If the quest is not offered, click the line.
|only if not (completedq(86898) and completedq(91787) and completedq(91062) and completedq(86650) and completedq(86522)) and achieved(42045)
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Eversong Woods (Story Only)",{
},[[
step
Click the Complete Quest Box
turnin Adventuring in Midnight##94993
|only if readyq(94993)
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Eversong##94871 |goto Silvermoon City M/0 45.44,70.34 |only if (haveq(94871) or completedq(94871)) and not achieved(42045)
accept Fair Breeze, Light Bloom##86737 |goto Silvermoon City M/0 45.44,70.34
step
click Arcane Projector
|tip Upstairs inside the building.
Obtain the Arcane Projector from Rommath |q 86737/1 |goto Silvermoon City M/0 45.31,70.51
step
talk Vael'thas Dawnsoar##242913
|tip Up on the platform.
fpath Fairbreeze Village##3133 |goto Eversong Woods M/0 44.70,44.98
step
Reach Fairbreeze Village |q 86737/3 |goto Eversong Woods M/0 46.71,45.75
step
talk Magistrix Landra Dawnstrider##236739
turnin Eversong##94871 |goto Eversong Woods M/0 46.71,45.75
|only if haveq(94871) or completedq(94871)
step
talk Magistrix Landra Dawnstrider##236739
turnin Fair Breeze, Light Bloom##86737 |goto Eversong Woods M/0 46.71,45.75
accept Sharpmaw##86738 |goto Eversong Woods M/0 46.71,45.75
accept Fairbreeze Favors##86739 |goto Eversong Woods M/0 46.71,45.75
step
talk Orweyna##236743
accept Displaced Denizens##86740 |goto Eversong Woods M/0 46.66,45.71
stickystart "Trap_Lynx_For_Relocation"
stickystart "Shoo_Hawkstriders"
stickystart "Kill_Invasive_Light_Wyrms"
step
clicknpc Injured Pet##243960
Help the Citizen |q 86739/4 |goto Eversong Woods M/0 46.51,45.91 |count 1 hidden
step
click Trampled Bush
Investigate the Disturbance |q 86740/1 |goto Eversong Woods M/0 47.21,46.28 |count 1 hidden
step
click Strange Lightbloom Plant
Examine the Strange Plant |q 86740/2 |goto Eversong Woods M/0 47.65,46.45 |count 1 hidden
step
Approach Sharpmaw |q 86738/1 |goto Eversong Woods M/0 45.81,47.90
step
clicknpc Sharpmaw##237392
Examine Sharpmaw |q 86738/2 |goto Eversong Woods M/0 45.81,47.90
step
click Strange Lightbloom Plant
Examine the Strange Plant |q 86740/2 |goto Eversong Woods M/0 45.60,46.76 |count 2 hidden
step
click Hasty Nest
Investigate the Disturbance |q 86740/1 |goto Eversong Woods M/0 45.49,46.03 |count 2 hidden
step
click Territorial Dispute
Investigate the Disturbance |q 86740/1 |goto Eversong Woods M/0 45.94,45.51 |count 3 hidden
step
clicknpc Mr. Fluff##244042
|tip Top of the statue.
Watch the dialogue
Help the Citizen |q 86739/4 |goto Eversong Woods M/0 45.64,45.46 |count 2 hidden
step
click Dropped Tome+
|tip Red and blue books.
Help the Citizen |q 86739/4 |goto Eversong Woods M/0 44.72,44.97 |count 3 hidden
step
click Strange Lightbloom Plant
Examine the Strange Plant |q 86740/2 |goto Eversong Woods M/0 44.83,43.99 |count 3 hidden
step
label "Trap_Lynx_For_Relocation"
kill Displaced Lynx##237400+
|tip Dark grey large cats.
|tip They become friendly.
clicknpc Displaced Lynx##237400+
Trap #3# Lynx for Relocation |q 86739/3 |goto Eversong Woods M/0 45.96,45.41
step
label "Shoo_Hawkstriders"
Shoo #6# Hawkstriders |q 86739/2 |goto Eversong Woods M/0 45.73,45.71
|tip Use the {o}Shoo Hawkstrider{} button ability near {o}Displaced Hawkstriders{}.
|tip Large walking birds.
step
label "Kill_Invasive_Light_Wyrms"
kill 8 Invasive Light Wyrm##237399 |q 86739/1 |goto Eversong Woods M/0 45.73,45.71
|tip Floating yellow eels.
step
talk Magistrix Landra Dawnstrider##236739
turnin Sharpmaw##86738 |goto Eversong Woods M/0 46.71,45.75
turnin Fairbreeze Favors##86739 |goto Eversong Woods M/0 46.71,45.75
step
talk Orweyna##236743
turnin Displaced Denizens##86740 |goto Eversong Woods M/0 46.66,45.71
accept Lightbloom Looming##86741 |goto Eversong Woods M/0 46.66,45.71
step
talk Orweyna##236743
Select _"Let's follow the trail you found."_ |gossip 133725
Speak with Orweyna |q 86741/1 |goto Eversong Woods M/0 46.66,45.71
step
Follow the Trail Out of Fairbreeze |q 86741/2 |goto Eversong Woods M/0 41.50,47.61
step
Follow the Trail |q 86741/3 |goto Eversong Woods M/0 39.72,49.20
step
Watch the dialogue
Follow the Trail Further |q 86741/4 |goto Eversong Woods M/0 40.02,49.18
step
kill Lightbloom Monstrosity##244383 |q 86741/5 |goto Eversong Woods M/0 39.72,50.74
step
Follow the Trail to the End |q 86741/6 |goto Eversong Woods M/0 39.64,51.54
step
Watch the dialogue
talk Orweyna##236903
turnin Lightbloom Looming##86741 |goto Eversong Woods M/0 39.67,51.55
accept Trimming the Lightbloom##86743 |goto Eversong Woods M/0 39.67,51.55
accept Curious Cultivation##86742 |goto Eversong Woods M/0 39.67,51.55
stickystart "Slay_Lightbloom_Creatures"
step
click Lightbloom Flower Growth
Examine the Lightbloom Growth |q 86742/1 |goto Eversong Woods M/0 40.71,53.06 |count 1 hidden
step
clicknpc Infested Lynx##251764
Examine the Lightbloom Growth |q 86742/1 |goto Eversong Woods M/0 40.08,55.41 |count 2 hidden
step
clicknpc Infested Magister##251769
Examine the Lightbloom Growth |q 86742/1 |goto Eversong Woods M/0 42.27,55.62 |count 3 hidden
step
Find and Meet Up with Arator |q 86742/2 |goto Eversong Woods M/0 43.85,56.59
step
kill Rutaani Fighter##237394 |q 86742/3 |goto Eversong Woods M/0 43.85,56.59
step
click Strange Seed
Pick Up the Strange Seed |q 86742/4 |goto Eversong Woods M/0 43.83,56.58
step
label "Slay_Lightbloom_Creatures"
kill Light Wyrm##237408, Lightbloom Hydra##237414, Lightbloom Lasher##237395, Lightbloom Petalwing##237402, Lightfed Growth##246523
Slay Lightbloom Creatures |q 86743/1 |goto Eversong Woods M/0 42.42,55.82
step
_Next to you:_
talk Orweyna##240663 |usename Orweyna##236743
turnin Trimming the Lightbloom##86743
step
Meet Arator in a Safer Location |q 86742/5 |goto Eversong Woods M/0 45.88,55.50
step
Watch the dialogue
talk Orweyna##236903
turnin Curious Cultivation##86742 |goto Eversong Woods M/0 45.88,55.46
accept Seeking Truth##86744 |goto Eversong Woods M/0 45.88,55.46
step
talk Orweyna##236903
Select _"I'm ready when you are."_ |gossip 132833
Speak with Orweyna |q 86744/1 |goto Eversong Woods M/0 45.88,55.46
step
Watch the dialogue
Kill the enemies that attack in waves
Defend Orweyna |q 86744/2 |goto Eversong Woods M/0 46.22,55.15
step
talk Orweyna##236903
turnin Seeking Truth##86744 |goto Eversong Woods M/0 47.36,55.31
step
talk Arator##236716
accept Silvermoon Must Know##86745 |goto Eversong Woods M/0 47.35,55.35
step
talk Arator##236716
Select _"<Contact Silvermoon.>"_ |gossip 132860 |noautogossip
Contact Silvermoon |q 86745/1 |goto Eversong Woods M/0 47.35,55.35
step
talk Arator##236716
turnin Silvermoon Must Know##86745 |goto Eversong Woods M/0 47.35,55.35
accept The Wayward Magister##86621 |goto Eversong Woods M/0 47.35,55.35
step
Meet with Arator on the Road to Tranquillien |q 86621/1 |goto Eversong Woods M/0 49.24,58.94
step
click Mysterious Corpse
Examine the Mysterious Corpse |q 86621/3 |goto Eversong Woods M/0 49.24,58.94
step
talk Skymaster Sunwing##238480
fpath Tranquillien |goto Eversong Woods M/0 47.80,67.13
step
Meet with Umbric in Tranquillien |q 86621/4 |goto Eversong Woods M/0 47.69,69.79
|tip Inside the building.
step
talk Magister Umbric##236087
|tip Inside the building.
turnin The Wayward Magister##86621 |goto Eversong Woods M/0 47.69,69.79
accept Appeal to the Void##86623 |goto Eversong Woods M/0 47.69,69.79
step
talk Arator##236100
|tip Inside the building.
accept Rational Explanation##86624 |goto Eversong Woods M/0 47.68,69.73
step
click Umbric's Channeling Focus
Kill the enemies that attack
Complete the Eastern Ritual |q 86623/1 |goto Eversong Woods M/0 48.85,72.65
step
click Umbric's Channeling Focus
Kill the enemies that attack in waves
Complete the Western Ritual |q 86623/2 |goto Eversong Woods M/0 46.71,71.49
step
click Umbric's Channeling Focus
Kill the enemies that attack in waves
Complete the Northern Ritual |q 86623/3 |goto Eversong Woods M/0 45.42,67.48
step
click Sermon Book
Find the Clue in Tranquillien |q 86624/2 |goto Eversong Woods M/0 47.73,65.10 |count 15 hidden
step
talk Matron Narsilla##242568
Select _"What problems ail the people of Tranquillien?"_ |gossip 133913
Question the Townsfolk |q 86624/1 |goto Eversong Woods M/0 47.71,65.26 |count 1 hidden
step
click Religious Leaflet
Find the Clue in Tranquillien |q 86624/2 |goto Eversong Woods M/0 47.84,65.54 |count 25 hidden
step
click Strange Shipment
|tip You will be attacked.
Find the Clue in Tranquillien |q 86624/2 |goto Eversong Woods M/0 48.91,66.51 |count 40 hidden
step
talk Quartermaster Lymel##244840
Select _"Have there been any issues around town lately?"_ |gossip 133888
Question the Townsfolk |q 86624/1 |goto Eversong Woods M/0 48.93,66.59 |count 2 hidden
step
click Welcoming Brochure
Find the Clue in Tranquillien |q 86624/2 |goto Eversong Woods M/0 48.70,66.70 |count 50 hidden
step
click Vandalized Cart
Find the Clue in Tranquillien |q 86624/2 |goto Eversong Woods M/0 48.54,67.36 |count 65 hidden
step
click Clandestine Note
Find the Clue in Tranquillien |q 86624/2 |goto Eversong Woods M/0 49.16,67.49 |count 75 hidden
step
talk Guard Captain Leonic##239457
|tip Inside the building.
Select _"Have you seen anything suspicious lately?"_ |gossip 132706
Question the Townsfolk |q 86624/1 |goto Eversong Woods M/0 49.32,67.37 |count 3 hidden
step
click Guard Schedule
|tip Inside the building.
Find the Clue in Tranquillien |q 86624/2 |goto Eversong Woods M/0 49.44,67.60 |count 90 hidden
step
click Recruitment Flyer
Find the Clue in Tranquillien |q 86624/2 |goto Eversong Woods M/0 48.84,69.50 |count 100 hidden
step
talk Ranger Belonis##239406
Select _"You've had scouts go missing?"_ |gossip 132894
Question the Townsfolk |q 86624/1 |goto Eversong Woods M/0 48.86,69.61 |count 4 hidden
step
talk Innkeeper Kalarin##236149
|tip Inside the building.
Select _"Have you seen anything strange recently?"_ |gossip 132744
Speak with Innkeeper Kalarin |q 86624/3 |goto Eversong Woods M/0 48.97,68.59
step
click Discarded Journal
|tip Upstairs inside the building.
Find Kasiea's Journal |q 86624/4 |goto Eversong Woods M/0 49.00,68.54
step
talk Arator##236100
|tip Inside the building.
turnin Rational Explanation##86624 |goto Eversong Woods M/0 47.68,69.74
step
talk Magister Umbric##236087
|tip Inside the building.
turnin Appeal to the Void##86623 |goto Eversong Woods M/0 47.69,69.79
accept The First to Know##90907 |goto Eversong Woods M/0 47.69,69.79
step
Meet at Lord Antenorian's Office |q 90907/1 |goto Eversong Woods M/0 47.18,68.33
|tip Inside the building.
step
Watch the dialogue
|tip Inside the building.
talk Secretary Faloria##239405
Select _"We need to speak to Lord Antenorian."_ |gossip 132741
Question Secretary Faloria |q 90907/2 |goto Eversong Woods M/0 47.18,68.33
step
click Suspicious Lockbox
|tip Inside the building.
Investigate the Strange Lockbox |q 90907/3 |goto Eversong Woods M/0 47.12,68.36
step
Watch the dialogue
|tip Inside the building.
talk Lord Antenorian##245004
Select _"<Lie to Lord Antenorian about how much you know.>"_ |gossip 134001
Inform Antenorian of Your Findings |q 90907/4 |goto Eversong Woods M/0 47.20,68.24
step
talk Lord Antenorian##245004
|tip Inside the building.
turnin The First to Know##90907 |goto Eversong Woods M/0 47.20,68.24
accept Chance Meeting##86622 |goto Eversong Woods M/0 47.20,68.24
step
Rendez-vous with Lord Antenorian's Scout |q 86622/1 |goto Eversong Woods M/0 46.74,63.91
|tip You will be attacked.
step
kill Cultist Ambusher##244434 |q 86622/2 |goto Eversong Woods M/0 46.74,63.91
step
collect Suspicious Missive##243221 |q 86622/3 |goto Eversong Woods M/0 46.74,63.91
|tip Loot it from the Cultist Ambusher.
step
talk Arator##236100
|tip Inside the building.
turnin Chance Meeting##86622 |goto Eversong Woods M/0 47.71,69.69
step
talk Magister Umbric##242143
|tip Inside the building.
accept The Ransacked Lab##86626 |goto Eversong Woods M/0 47.71,69.77
step
click Rumpled Papers+
|tip Grey piles of debris.
|tip Inside the building.
click Void Sample+
|tip Blue and purple crystals.
Find #3# Void Samples |q 86626/1 |goto Eversong Woods M/0 47.66,69.81
step
click Forgotten Pendant
|tip Inside the building.
Examine the Forgotten Pendant |q 86626/2 |goto Eversong Woods M/0 47.76,69.86
step
talk Magister Umbric##236687
|tip Inside the building.
turnin The Ransacked Lab##86626 |goto Eversong Woods M/0 47.72,69.76
accept The Battle for Tranquillien##86632 |goto Eversong Woods M/0 47.72,69.76
step
talk Arator##236686
|tip Inside the building.
accept The Traitors of Tranquillien##90509 |goto Eversong Woods M/0 47.69,69.69
accept The Heart of Tranquillien##90493 |goto Eversong Woods M/0 47.69,69.69
stickystart "Rescue_Tranquillien_Citizens"
stickystart "Fight_Back_Against_The_Twilights_Blade"
step
kill Ranger Lethvalin##241723 |q 90509/1 |goto Eversong Woods M/0 47.60,67.56
step
kill Matron Narsilla##236631 |q 90509/2 |goto Eversong Woods M/0 47.73,65.19
step
kill Guard Captain Leonic##236777 |q 90509/3 |goto Eversong Woods M/0 49.39,67.47
|tip Inside the building.
step
label "Rescue_Tranquillien_Citizens"
clicknpc Tranquillien Citizen##236683+
|tip Scared friendly allies.
|tip Various names.
Rescue #8# Tranquillien Citizens |q 90493/1 |goto Eversong Woods M/0 48.37,67.37
step
label "Fight_Back_Against_The_Twilights_Blade"
kill Advisor Valwyn##245804, Arcanist Vandril##245803, Magister Darenis##245802, Magistrix Aminel##245801, Terellia##245805, Twilight's Blade Adherent##236627, Twilight's Blade Recruit##236628, Unfettered Shadow##241678
click Various Objects
Fight Back Against the Twilight's Blade |q 86632/1 |goto Eversong Woods M/0 48.37,67.37
step
talk Arator##243984
|tip Inside the building.
turnin The Battle for Tranquillien##86632 |goto Eversong Woods M/0 48.95,68.53
turnin The Traitors of Tranquillien##90509 |goto Eversong Woods M/0 48.95,68.53
turnin The Heart of Tranquillien##90493 |goto Eversong Woods M/0 48.95,68.53
accept The Missing Magister##90494 |goto Eversong Woods M/0 48.95,68.53
step
Find Umbric |q 90494/1 |goto Eversong Woods M/0 47.19,68.30
|tip Inside the building.
step
kill Secretary Faloria##241674 |q 90494/2 |goto Eversong Woods M/0 47.19,68.30
|tip Inside the building.
step
collect Jeweled Key##243468 |q 90494/3 |goto Eversong Woods M/0 47.19,68.30
|tip Loot it from Secretary Faloria inside the building.
step
click Ominous Lockbox
|tip Inside the building.
collect Plans of Infiltration##239134 |q 90494/4 |goto Eversong Woods M/0 47.12,68.36
step
talk Magister Umbric##242143
|tip Inside the building.
turnin The Missing Magister##90494 |goto Eversong Woods M/0 47.71,69.77
accept Face the Past##86781 |goto Eversong Woods M/0 47.71,69.77
step
Regroup in Windrunner Village |q 86781/2 |goto Eversong Woods M/0 36.98,74.01
step
talk Magister Umbric##236363
turnin Face the Past##86781 |goto Eversong Woods M/0 36.98,74.01
step
talk Arator##236391
accept The Past Keeps Watch##86634 |goto Eversong Woods M/0 36.97,74.09
step
label "Activate_Decrepit_Ranger_Contructs"
clicknpc Decrepit Ranger Construct##236360+
|tip Humanoid machines.
|tip You will be attacked.
Activate #6# Decrepit Ranger Constructs |q 86634/1 |goto Eversong Woods M/0 37.05,73.90
step
talk Arator##236391
turnin The Past Keeps Watch##86634 |goto Eversong Woods M/0 36.98,74.09
step
talk Magister Umbric##236363
accept Comprehend the Void##86633 |goto Eversong Woods M/0 36.99,74.01
step
Meet Umbric at the Ritual Site |q 86633/1 |goto Eversong Woods M/0 37.34,74.70
|tip Upstairs inside the building.
step
click Void Shard
|tip Upstairs inside the building.
Carry the Void Shard |havebuff Carrying Void Shard##1227973 |goto Eversong Woods M/0 37.12,74.88 |q 86633
step
Subsume the Void Shard |q 86633/3 |goto Eversong Woods M/0 37.39,74.72 |count 1 hidden
|tip Upstairs inside the building.
step
click Void Shard
|tip Upstairs inside the building.
Carry the Void Shard |havebuff Carrying Void Shard##1227974 |goto Eversong Woods M/0 37.31,74.43 |q 86633
step
Subsume the Void Shard |q 86633/3 |goto Eversong Woods M/0 37.39,74.72 |count 2 hidden
|tip Upstairs inside the building.
step
click Void Shard
|tip Upstairs inside the building.
Carry the Void Shard |havebuff Carrying Void Shard##1240751 |goto Eversong Woods M/0 37.57,74.62 |q 86633
step
Subsume the Void Shard |q 86633/3 |goto Eversong Woods M/0 37.39,74.72 |count 3 hidden
|tip Upstairs inside the building.
step
click Void Shard
|tip Upstairs inside the building.
Carry the Void Shard |havebuff Carrying Void Shard##1227972 |goto Eversong Woods M/0 37.49,75.12 |q 86633
step
Subsume the Void Shard |q 86633/3 |goto Eversong Woods M/0 37.39,74.72 |count 4 hidden
|tip Upstairs inside the building.
step
Watch the dialogue
|tip Upstairs inside the building.
talk Magister Umbric##237240
turnin Comprehend the Void##86633 |goto Eversong Woods M/0 37.33,74.70
accept To Deatholme##86635 |goto Eversong Woods M/0 37.33,74.70
step
talk Galendror Whitewing##244537
fpath Silverglade Refuge |goto Eversong Woods M/0 31.01,90.07
|only if Alliance
step
Journey to the Ruins of Deatholme |q 86635/1 |goto Eversong Woods M/0 44.34,84.70
step
talk Valeera Sanguinar##242099
Select _"I'm ready."_ |gossip 136049
Speak to Valeera Sanguinar |q 86635/2 |goto Eversong Woods M/0 44.34,84.70
step
talk Magister Umbric##236730
turnin To Deatholme##86635 |goto Eversong Woods M/0 44.33,84.66
accept Void Walk With Me##86636 |goto Eversong Woods M/0 44.33,84.66
step
Enter the cave |goto Eversong Woods M/0 45.16,85.54 < 20 |walk |only if not (subzone("Ruins of Deatholme") and indoors())
Enter the Deathholme Delve |scenariostart |goto Eversong Woods M/0 45.56,86.32 |q 86636
|tip Walk into the wall of smoke.
step
Enter the Deathholme Delve |q 86636/1
|tip Walk to the campfire.
step
click Delvers' Supplies##207283
Select _"<View companion supplies.>"_ |gossip 135011
Open the Delvers' Supplies |q 86636/2 |goto Voidholme/0 34.12,69.53
step
Select a Combat Role for Valeera Sanguinar |q 86636/3 |goto Voidholme/0 34.12,69.53
|tip Choose what you prefer.
step
kill Lord Antenorian##246717 |q 86636/4
|tip Complete the delve.
step
Reclaim the Stolen Knowledge |q 86636/5
|tip Loot it from Lord Antenorian.
step
Leave the Delve |scenarioend |q 86636
step
talk Magister Umbric##236730
turnin Void Walk With Me##86636 |goto Eversong Woods M/0 44.65,85.19
step
talk Arator##242433
accept Anything but Reprieve##86637 |goto Eversong Woods M/0 44.63,85.30
step
talk Arator##242433
Select _"Let's contact Silvermoon."_ |gossip 133784 |noautogossip
Contact Silvermoon |q 86637/1 |goto Eversong Woods M/0 44.63,85.31
step
talk Lady Liadrin##236099
turnin Anything but Reprieve##86637 |goto Eversong Woods M/0 52.67,61.55
accept What's Left##86639 |goto Eversong Woods M/0 52.67,61.55
step
talk Arator##236132
accept Choking Tendrils##86638 |goto Eversong Woods M/0 52.64,61.59
stickystart "Aid_Suncrown_Survivors"
stickystart "Slay_Lightbloom_Creatures_86638"
step
talk Magistrix Silanna##251539
Select _"I'll cover your escape. Go quickly!"_ |gossip 132680
|tip You will be attacked.
Rescue Magistrix Silanna |q 86639/3 |goto Eversong Woods M/0 54.67,60.94
step
talk Apprentice Erilia##251540
|tip {o}Ground floor{} inside the building.
Select _"<Instruct the defender go to the Runestone Shan'dor, where it is safe.>"_ |gossip 132652
Rescue Apprentice Erilia |q 86639/2 |goto Eversong Woods M/0 53.54,59.35
step
talk Trainee Solanin##251543
|tip Inside the building.
Select _"<Instruct the defender go to the Runestone Shan'dor, where it is safe.>"_ |gossip 132684
Rescue Trainee Solanin |q 86639/5 |goto Eversong Woods M/0 54.85,57.86
step
talk Outrunner Alarion##251542
|tip Up on the platform.
Select _"<Instruct the defender go to the Runestone Shan'dor, where it is safe.>"_ |gossip 135781
Rescue Outrunner Alarion |q 86639/4 |goto Eversong Woods M/0 55.86,57.44
step
label "Aid_Suncrown_Survivors"
clicknpc Suncrown Survivor##240067+
|tip Blood elves.
|tip Kill enemies channeling on them.
click Choking Roots+
|tip Tree roots.
Aid #10# Suncrown Survivors |q 86639/1 |goto Eversong Woods M/0 54.73,60.05
step
label "Slay_Lightbloom_Creatures_86638"
kill Bloom Dominator##236369, Bloom Propagator##236367, Bloom Propagator##240103, Incubating Lasher##251645, Infused Seedling##239866, Lightbloat Trampler##236552, Lightfrenzied Lasher##236557, Lucent Hookbeak##236560, Lucent Hookbeak##244533
Slay Lightbloom Creatures |q 86638/1 |goto Eversong Woods M/0 54.73,60.05
step
talk Lady Liadrin##236099
turnin What's Left##86639 |goto Eversong Woods M/0 53.60,54.60
step
talk Arator##236568
turnin Choking Tendrils##86638 |goto Eversong Woods M/0 53.55,54.63
step
talk Lor'themar Theron##236572
accept Premonition##86640 |goto Eversong Woods M/0 53.51,54.58
step
talk Lor'themar Theron##241206
turnin Premonition##86640 |goto Eversong Woods M/0 59.19,51.03
accept Old Scars##86641 |goto Eversong Woods M/0 59.19,51.03
step
talk Arator##236567
accept A Foe Unseen##86642 |goto Eversong Woods M/0 59.13,51.04
stickystart "Disrupt_The_Troll_Lumber_Operations"
step
Investigate the Amani Operations |q 86642/1 |goto Eversong Woods M/0 60.78,51.85 |count 1 hidden
step
click Shipment Crate
Investigate the Amani Operations |q 86642/1 |goto Eversong Woods M/0 60.63,52.40 |count 2 hidden
step
clicknpc Dead Amani Feller##245219
Investigate the Amani Operations |q 86642/1 |goto Eversong Woods M/0 63.02,53.08 |count 3 hidden
step
click Amani Missive
Investigate the Amani Operations |q 86642/1 |goto Eversong Woods M/0 62.11,50.26 |count 4 hidden
step
click Lightbloom Lumber Stack
Investigate the Amani Operations |q 86642/1 |goto Eversong Woods M/0 63.35,48.37 |count 5 hidden
step
label "Disrupt_The_Troll_Lumber_Operations"
kill Amani Enforcer##236374, Amani Feller##236372, Amani Watcher##237344, Cre'van##250719
click Various Objects
Disrupt the Troll Lumber Operations |q 86641/1 |goto Eversong Woods M/0 62.67,50.41
step
talk Lor'themar Theron##241272
turnin Old Scars##86641 |goto Eversong Woods M/0 64.46,48.73
step
talk Arator##241205
turnin A Foe Unseen##86642 |goto Eversong Woods M/0 64.52,48.69
accept Following the Root##86643 |goto Eversong Woods M/0 64.52,48.69
step
Meet Arator at the Entrance of Watha'nan Crypts |q 86643/1 |goto Eversong Woods M/0 56.69,65.77
step
click Shrouding Totem
|tip Inside the crypt.
Destroy the Warding Totem |q 86643/3 |goto Wartha'nan Crypts/0 86.80,32.12 |count 1 hidden
step
click Shrouding Totem
|tip Inside the crypt.
Destroy the Warding Totem |q 86643/3 |goto Wartha'nan Crypts/0 86.28,36.75 |count 2 hidden
step
clicknpc Grimfire Totem##251863
|tip Inside the crypt.
Destroy the Warding Totem |q 86643/3 |goto Wartha'nan Crypts/0 64.80,29.19 |count 3 hidden
step
clicknpc Stranglemist Totem##251866
|tip Inside the crypt.
Destroy the Warding Totem |q 86643/3 |goto Wartha'nan Crypts/0 55.81,27.05 |count 4 hidden
step
talk Arator##236610
|tip Inside the crypt.
Select _"<Stay silent.>"_ |gossip 132886
Speak to Arator |q 86643/4 |goto Wartha'nan Crypts/0 52.53,27.74
step
Watch the dialogue
talk Arator##236610
|tip Inside the crypt.
turnin Following the Root##86643 |goto Wartha'nan Crypts/0 43.78,30.05
accept Gods Before Us##86644 |goto Wartha'nan Crypts/0 43.78,30.05
step
click Embossed Tablet
|tip Inside the crypt.
Inspect the Amani Riddle |q 86644/2 |goto Wartha'nan Crypts/0 38.23,28.85
step
kill Spawn of Shadra##244858
|tip Inside the crypt.
collect Bonecarapace Fangs##244143 |n
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 41.30,52.43 |q 86644
step
kill Child of Hir'eek##244857
|tip Downstairs inside the crypt.
collect Bloodvein Clot##244144 |n
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 58.75,50.19 |q 86644
step
click Ritual Vase
|tip Inside the crypt.
Select _"<Place Bonecarapace Fangs into the vase.>"_ |gossip 133889
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 37.96,30.43 |q 86644
step
click Ritual Vase
|tip Inside the crypt.
Select _"<Place Bloodvein Clot into the vase.>"_ |gossip 133890
Solve the Amani Riddle |q 86644/3 |goto Wartha'nan Crypts/0 38.23,27.04
step
Venture Deeper into the Crypt |q 86644/4 |goto Wartha'nan Crypts/0 22.95,31.07
|tip Downstairs inside the crypt.
step
clicknpc Carved Tile##240710
|tip Red symbol.
|tip Downstairs inside the crypt.
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 19.75,32.38 |q 86644
step
clicknpc Carved Tile##240711
|tip Red symbol.
|tip Downstairs inside the crypt.
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 13.89,30.96 |q 86644
step
clicknpc Carved Tile##240709
|tip White symbol.
|tip Downstairs inside the crypt.
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 16.72,31.56 |q 86644
step
clicknpc Carved Tile##240708
|tip White symbol.
|tip Downstairs inside the crypt.
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 13.47,34.51 |q 86644
step
clicknpc Carved Tile##240707
|tip Purple symbol.
|tip Downstairs inside the crypt.
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 13.10,38.01 |q 86644
step
clicknpc Carved Tile##240697
|tip Purple symbol.
|tip Downstairs inside the crypt.
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 19.29,36.02 |q 86644
step
clicknpc Carved Tile##236650
|tip Green symbol.
|tip Downstairs inside the crypt.
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 18.83,39.55 |q 86644
step
clicknpc Carved Tile##240685
|tip Green symbol.
|tip Downstairs inside the crypt.
Match the Carved Tiles |q 86644/5 |goto Wartha'nan Crypts/0 15.96,38.98
step
_Next to you:_
talk Arator##240662 |usename Arator##236610
|tip Downstairs inside the crypt.
turnin Gods Before Us##86644
accept An Impasse##86646
step
kill Vanatha##237386
|tip Downstairs inside the crypt.
Confront Vanatha |q 86646/1 |goto Wartha'nan Crypts/0 24.33,61.61
step
Leave the crypt |goto Wartha'nan Crypts/0 43.55,88.73 < 5 |walk |only if subzone("Watha'nan Crypts") and indoors()
talk Arator##236737
turnin An Impasse##86646 |goto Eversong Woods M/0 54.74,68.20
accept Beat of Blood##86647 |goto Eversong Woods M/0 54.74,68.20
step
talk Arator##236611
turnin Beat of Blood##86647 |goto Eversong Woods M/0 55.18,81.43
step
talk Lor'themar Theron##236612
accept Light Guide Us##86648 |goto Eversong Woods M/0 55.12,81.42
step
talk Eversong Farstrider##258559
Select _"Stop! The Amani are not the real threat here."_ |gossip 137985
Dissuade the Sin'dorei Forces |q 86648/2 |goto Eversong Woods M/0 55.54,81.39 |count 1 hidden
step
talk Eversong Spellbreaker##258560
Select _"Stop! The Amani are not the real threat here."_ |gossip 137986
Dissuade the Sin'dorei Forces |q 86648/2 |goto Eversong Woods M/0 55.88,81.42 |count 2 hidden
step
talk Eversong Arch Magister##258561
Select _"Stop! The Amani are not the real threat here."_ |gossip 137987
Dissuade the Sin'dorei Forces |q 86648/2 |goto Eversong Woods M/0 56.07,81.46 |count 3 hidden
step
talk Blessed Lightbringer##258562
Select _"Stop! The Amani are not the real threat here."_ |gossip 137988
Dissuade the Sin'dorei Forces |q 86648/2 |goto Eversong Woods M/0 56.22,81.46 |count 4 hidden
step
talk Veteran Blood Knight##258563
Select _"Stop! The Amani are not the real threat here."_ |gossip 137989
Dissuade the Sin'dorei Forces |q 86648/2 |goto Eversong Woods M/0 57.30,81.46 |count 5 hidden
step
talk Blessed Lightbringer##258564
Select _"Stop! The Amani are not the real threat here."_ |gossip 137990
Dissuade the Sin'dorei Forces |q 86648/2 |goto Eversong Woods M/0 57.59,81.46 |count 6 hidden
step
talk Eversong Magister##258565
Select _"Stop! The Amani are not the real threat here."_ |gossip 137991
Dissuade the Sin'dorei Forces |q 86648/2 |goto Eversong Woods M/0 58.14,81.38 |count 7 hidden
step
talk Veteran Blood Knight##258566
Select _"Stop! The Amani are not the real threat here."_ |gossip 137992
Dissuade the Sin'dorei Forces |q 86648/2 |goto Eversong Woods M/0 59.00,81.37 |count 8 hidden
Resolve the Battle at Amani Pass |q 86648/1 |goto Eversong Woods M/0 59.00,81.37
step
Find Arator and Liadrin in Amani Pass |q 86648/4 |goto Eversong Woods M/0 59.51,81.36
step
Find Lor'themar at the Top of Amani Pass |q 86648/5 |goto Eversong Woods M/0 60.25,81.45
step
talk Lor'themar Theron##236612
turnin Light Guide Us##86648 |goto Eversong Woods M/0 60.25,81.45
step
talk High Exarch Turalyon##241654
accept Past Redemption##86649 |goto Eversong Woods M/0 60.23,81.50
step
talk High Exarch Turalyon##241654
Select _"I'm ready."_ |gossip 132931
Speak to Turalyon |q 86649/1 |goto Eversong Woods M/0 60.23,81.50
step
talk Lor'themar Theron##237433
turnin Past Redemption##86649 |goto Eversong Woods M/0 60.59,81.49
accept Fractured##86650 |goto Eversong Woods M/0 60.59,81.49
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
Select _"What now?"_ |gossip 134143
Speak to Lor'themar |q 86650/1 |goto Silvermoon City M/0 45.44,70.34
step
Watch the dialogue
|tip Upstairs inside the building.
talk Lor'themar Theron##235787
turnin Fractured##86650 |goto Silvermoon City M/0 45.44,70.34
|tip You may need to relog to turn this in.
step
|next "Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Midnight Intro & Campaign (Story Only)" |only if level < 90
|next "Leveling Guides\\Midnight (80-90)\\The War of Light and Shadow Campaign" |only if level >= 90
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Zul'Aman (Story Only)",{
},[[
step
Click the Complete Quest Box
turnin Adventuring in Midnight##94993
|only if readyq(94993)
step
talk Lady Liadrin##236436
turnin The Gates of Zul'Aman##86708 |goto Eversong Woods M/0 60.14,81.45 |only if haveq(86708) or completedq(86708)
accept The Line Must be Drawn Here##86710 |goto Eversong Woods M/0 60.14,81.45
step
talk Zul'jan##249211
Select _"Return to Zul'Aman."_ |gossip 135099
Speak to Zul'jan |q 86710/1 |goto Eversong Woods M/0 60.29,81.46
step
Watch the dialogue
Calm the Situation |q 86710/2 |goto Eversong Woods M/0 60.29,81.46
step
kill Void Beast##249083 |q 86710/3 |goto Eversong Woods M/0 60.37,81.45
step
talk Lady Liadrin##236436
turnin The Line Must be Drawn Here##86710 |goto Eversong Woods M/0 60.14,81.45
accept Our Mutual Enemy##90749 |goto Eversong Woods M/0 60.14,81.45
step
Pass Through the Amani Gate with Lady Liadrin |q 90749/1 |goto Atal Aman M/1 5.47,46.99
|tip Inside the building.
step
talk Lady Liadrin##236485
|tip Inside the building.
turnin Our Mutual Enemy##90749 |goto Atal Aman M/1 5.47,46.99
accept Goodwill Tour##86868 |goto Atal Aman M/1 5.47,46.99
step
talk Zul'jarra##236468
|tip Inside the building.
accept Amani Clarion Call##86711 |goto Atal Aman M/1 5.66,47.76
stickystart "Kill_Invading_Shadows"
step
click Amani War Drum
Sound the Amani War Drum |q 86711/1 |goto Atal Aman M/1 16.51,47.61 |count 1 hidden
step
click Amani War Drum
Sound the Amani War Drum |q 86711/1 |goto Atal Aman M/1 24.79,48.49 |count 2 hidden
step
click Amani War Drum
Sound the Amani War Drum |q 86711/1 |goto Atal Aman M/1 35.83,49.24 |count 3 hidden
step
label "Kill_Invading_Shadows"
kill 10 Invading Shadow##244740 |q 86868/1 |goto Atal Aman M/1 24.33,47.35
|tip Purple bone elementals.
step
talk Lady Liadrin##236570
turnin Goodwill Tour##86868 |goto Atal Aman M/1 46.04,48.41
step
talk Zul'jarra##236559
turnin Amani Clarion Call##86711 |goto Atal Aman M/1 46.29,48.82
accept Show Us Your Worth##86717 |goto Atal Aman M/1 46.29,48.82
step
talk Zul'jan##236558
accept Important Amani##86719 |goto Atal Aman M/1 46.30,48.39
step
talk Eagletender Po'vari##241031
fpath Atal'Aman |goto Atal Aman M/1 39.79,40.79
stickystart "Disrupt_The_Twilight_Forces"
step
talk Elder Doru##236590
Select _"Zul'jan sent me to find you.."_ |gossip 132579
Tell Elder Doru to Evacuate |q 86719/1 |goto Atal Aman M/1 50.66,19.93
step
talk Torundo the Grizzled##236591
|tip Inside the building.
Select _"Yes. Zul'jan sent me to find you."_ |gossip 132582
Tell Torundo the Grizzled to Evacuate |q 86719/2 |goto Atal Aman M/1 35.66,24.66
step
talk Loa Speaker Kinduru##237301
Select _"It is time to evacuate, Loa Speaker Kinduru."_ |gossip 132584
Tell Kinduru to Evacuate |q 86719/3 |goto Atal Aman M/1 16.83,20.56
step
click Hastily Packed Belongings
Search for Hash'ey Staff |q 86719/4 |goto Atal Aman M/1 17.03,19.95 |count 1 hidden
step
click Hastily Packed Belongings
Search for Hash'ey Staff |q 86719/4 |goto Atal Aman M/1 17.10,19.85 |count 2 hidden
step
click Hastily Packed Belongings
collect Hash'ey Staff##237768 |q 86719/5 |goto Atal Aman M/1 16.52,20.73
step
talk Zul'jan##236522
turnin Important Amani##86719 |goto Atal Aman M/1 16.62,20.43
step
label "Disrupt_The_Twilight_Forces"
kill Twilight Acolyte##236580, Twilight Lynxskinner##236578, Twilight Slasher##236581, Twilight Spellmaster##236579, Untethered Shadow##236576
click Various Objects
clicknpc Injured Amani##245196+
|tip Kneeling trolls.
Disrupt the Twilight Forces |q 86717/1 |goto Atal Aman M/1 34.45,24.86
step
talk Zul'jan##236522
turnin Show Us Your Worth##86717 |goto Atal Aman M/1 16.62,20.46
accept Armed by Light##86716 |goto Atal Aman M/1 16.62,20.46
accept Everything We Worked For##86721 |goto Atal Aman M/1 16.62,20.46
stickystart "Collect_Lightwood_Weapons"
step
click Lightwood Pile
Extinguish the Lightwood Fire |q 86721/1 |goto Atal Aman M/1 16.45,59.36 |count 1 hidden
step
click Lightwood Pile
Extinguish the Lightwood Fire |q 86721/1 |goto Atal Aman M/1 22.47,61.14 |count 2 hidden
step
click Lightwood Pile
Extinguish the Lightwood Fire |q 86721/1 |goto Atal Aman M/1 23.67,67.91 |count 3 hidden
step
click Lightwood Pile
Extinguish the Lightwood Fire |q 86721/1 |goto Atal Aman M/1 17.93,76.17 |count 4 hidden
step
label "Collect_Lightwood_Weapons"
kill Twilight Lightburner##244744, Twilight Thief##236519
collect 8 Lightwood Weapon##237767 |q 86716/1 |goto Atal Aman M/1 20.09,67.80
step
click Huge Lightwood Pile
Extinguish the Huge Lightwood Pile |q 86721/2 |goto Atal Aman M/1 22.63,80.33
step
talk Zul'jan##236540
turnin Armed by Light##86716 |goto Atal Aman M/1 22.58,79.86
turnin Everything We Worked For##86721 |goto Atal Aman M/1 22.58,79.85
accept The Amani Stand Strong##86712 |goto Atal Aman M/1 22.58,79.85
step
talk Zul'jarra##236541
accept Twilight Bled##86718 |goto Atal Aman M/1 22.89,79.31
step
talk Lady Liadrin##236542
accept Rituals Cut Short##86715 |goto Atal Aman M/1 23.12,79.85
stickystart "Kill_Twilight_Ritualists"
stickystart "Kill_Twilight_Trollbreakers"
stickystart "Arm_Demoralized_Defenders"
step
kill Benvis Bladespatter##236562 |q 86718/1 |goto Atal Aman M/1 34.66,80.34
|tip Walks around.
step
label "Kill_Twilight_Ritualists"
kill 6 Twilight Ritualist##236546 |q 86715/1 |goto Atal Aman M/1 35.07,72.93
step
label "Kill_Twilight_Trollbreakers"
kill 6 Twilight Trollbreaker##236550 |q 86715/2 |goto Atal Aman M/1 35.07,72.93
step
label "Arm_Demoralized_Defenders"
clicknpc Demoralized Defender##236518+
|tip Kneeling trolls.
Arm #8# Demoralized Defenders |q 86712/1 |goto Atal Aman M/1 33.18,69.92
step
talk Lady Liadrin##236586
turnin Rituals Cut Short##86715 |goto Atal Aman M/1 47.22,46.88
step
talk Zul'jarra##236587
turnin Twilight Bled##86718 |goto Atal Aman M/1 47.54,46.79
step
talk Zul'jan##236588
turnin The Amani Stand Strong##86712 |goto Atal Aman M/1 49.06,46.67
step
talk Zul'jarra##236587
accept Break the Blade##86720 |goto Atal Aman M/1 47.51,46.78
step
clicknpc Lightwood Ballista##241695
Use the Lightwood Ballista |q 86720/1 |goto Atal Aman M/1 49.16,47.13
step
kill Empowering Shadow##258901+
|tip Purple elementals channeling a spell.
Watch the dialogue
|tip Use the {o}Fire EVERYTHING!{} ability.
Destroy Mor'duun's Scrying Focus |q 86720/2
step
talk Zul'jarra##236601
turnin Break the Blade##86720 |goto Atal Aman M/1 47.74,47.81
accept Heart of the Amani##86722 |goto Atal Aman M/1 47.74,47.81
step
talk Zul'jarra##236602
turnin Heart of the Amani##86722 |goto Zul Aman M/0 42.65,66.85
accept Isolation##86723 |goto Zul Aman M/0 42.65,66.85
step
talk Eagletender Vikovu##241036
fpath Amani'Zar Village |goto Zul Aman M/0 44.82,65.43
step
talk Zul'jarra##236659
|tip Inside the building.
Select _"<Find a seat for the meeting>"_ |gossip 135893
Speak with Zul'jarra at the Village Hall |q 86723/1 |goto Zul Aman M/0 45.75,65.51
step
Watch the dialogue
talk Zul'jarra##236659
|tip Inside the building.
turnin Isolation##86723 |goto Zul Aman M/0 45.75,65.51
accept Left in the Shadows##86652 |goto Zul Aman M/0 45.75,65.51
step
click Rations Cauldron
Prepare Meals with Torundo for the Atal'Aman Refugees |q 86652/1 |goto Zul Aman M/0 46.86,67.32
step
talk Lilaju##245589
Select _"<Request lightwood report.>"_ |gossip 132891
Get a Report on the Lightwood from Lilaju |q 86652/2 |goto Zul Aman M/0 45.14,67.70
step
talk Tak'lejo##244562
|tip {o}Ground floor{} inside the building.
Select _"Where are the shamans?"_ |gossip 135286
Request Shadowpine Shamans from Tak'lejo |q 86652/3 |goto Zul Aman M/0 43.97,65.06
step
talk Loa Speaker Kinduru##244479
Select _"I will help Zul'jarra."_ |gossip 133822
Speak with Kinduru |q 86652/4 |goto Zul Aman M/0 43.78,68.41
step
talk Zul'jarra##236126
turnin Left in the Shadows##86652 |goto Zul Aman M/0 43.80,68.34
accept The Path of the Amani##86653 |goto Zul Aman M/0 43.80,68.34
step
Meet Zul'jarra at Akil'zon's Reach |q 86653/1 |goto Zul Aman M/0 51.63,70.80
step
talk Zul'jarra##236140
turnin The Path of the Amani##86653 |goto Zul Aman M/0 51.63,70.80
accept De Ancient Path##86655 |goto Zul Aman M/0 51.63,70.80
accept Ahead of the Issue##89334 |goto Zul Aman M/0 51.63,70.80
step
talk Lady Liadrin##236143
accept Gnarldin Bashing##86654 |goto Zul Aman M/0 51.62,70.73
stickystart "Slay_Gnarldins"
step
clicknpc Ancient Incense##249326
|tip Up on the cliff.
Light the Eagle Hash'ey Shrine |q 86655/1 |goto Zul Aman M/0 53.67,72.96 |count 1 hidden
step
kill Cragward Gaahl##241423
collect Head of Cragward Gaahl##243188 |q 89334/2 |goto Zul Aman M/0 53.29,74.22
step
clicknpc Ancient Incense##249323
Light the Eagle Hash'ey Shrine |q 86655/1 |goto Zul Aman M/0 55.24,76.27 |count 2 hidden
step
kill Pulverizer Helthra##241424
collect Head of Pulverizer Helthra##243189 |q 89334/3 |goto Zul Aman M/0 55.27,77.85
step
kill Brulagh the Crusher##241422
|tip Inside the small cave.
collect Head of Brulagh the Crusher##239083 |q 89334/1 |goto Zul Aman M/0 56.19,74.97
step
clicknpc Ancient Incense##249335
Light the Eagle Hash'ey Shrine |q 86655/1 |goto Zul Aman M/0 56.26,73.82 |count 3 hidden
step
clicknpc Ancient Incense##249321
Light the Eagle Hash'ey Shrine |q 86655/1 |goto Zul Aman M/0 55.29,70.86 |count 4 hidden
step
label "Slay_Gnarldins"
kill Gnarldin Clubfist##236129, Gnarldin Nestcrusher##236130 |notinsticky
Slay #12# Gnarldins |q 86654/1 |goto Zul Aman M/0 54.50,72.95
step
talk Lady Liadrin##236146
|tip Up on the cliff.
turnin Gnarldin Bashing##86654 |goto Zul Aman M/0 51.96,76.03
step
clicknpc Ancient Incense##249344
Light the Final Eagle Hash'ey Shrine |q 86655/2 |goto Zul Aman M/0 51.91,76.03
step
talk Zul'jarra##236147
turnin De Ancient Path##86655 |goto Zul Aman M/0 51.91,75.95
turnin Ahead of the Issue##89334 |goto Zul Aman M/0 51.91,75.95
accept Brutal Feast##86656 |goto Zul Aman M/0 51.91,75.95
step
Meet Zul'jarra at the Temple of Akil'zon |q 86656/1 |goto Zul Aman M/0 52.40,81.06
|tip Top of the mountain.
step
clicknpc Sack of Gnarldin Heads##244965
Retrieve the Gnarldin Heads from the Sack |q 86656/2 |goto Zul Aman M/0 52.40,81.06
step
click Gnarldin Head
Place the Gnarldin Head |q 86656/4 |goto Zul Aman M/0 52.40,82.37 |count 1 hidden
step
click Gnarldin Head
Place the Gnarldin Head |q 86656/4 |goto Zul Aman M/0 53.19,81.08 |count 2 hidden
step
click Gnarldin Head
Place the Gnarldin Head |q 86656/4 |goto Zul Aman M/0 53.25,80.66 |count 3 hidden
step
talk Zul'jarra##244422
turnin Brutal Feast##86656 |goto Zul Aman M/0 52.36,81.03
accept Test of Conviction##86809 |goto Zul Aman M/0 52.36,81.03
step
Reach the Temple Ledge |q 86809/1 |goto Zul Aman M/0 51.05,78.99
step
JUMP! |q 86809/2 |goto Zul Aman M/0 51.05,78.99
|tip Jump off the cliff.
|tip You won't die.
step
talk Zul'jarra##236141
turnin Test of Conviction##86809 |goto Zul Aman M/0 52.36,81.03
accept Shadebasin Watch##86657 |goto Zul Aman M/0 52.36,81.03
step
Meet Kul'amara at Shadebasin Watch |q 86657/2 |goto Zul Aman M/0 44.08,34.50
step
talk Zul'jarra##244438
turnin Shadebasin Watch##86657 |goto Zul Aman M/0 44.08,34.50
accept The Crypt in the Mist##86658 |goto Zul Aman M/0 44.08,34.50
accept Rescue from the Shadows##86660 |goto Zul Aman M/0 44.08,34.50
step
talk Eagletender Ful'nac##251081
fpath Shadebasin Watch |goto Zul Aman M/0 44.01,33.61
stickystart "Slay_Vilebranch_Trolls"
step
Enter the crypt |goto Zul Aman M/0 39.14,39.04 < 10 |walk |only if not (subzone("Numazon Crypts") and indoors())
clicknpc Captured Witherbark##244565+
|tip Friendly trolls.
|tip Inside the crypt.
clicknpc Captured Witherbark Lynx##236186+
|tip Large cats.
Rescue #8# Captured Witherbarks |q 86660/1 |goto Zul Aman M/0 37.81,37.13
step
label "Slay_Vilebranch_Trolls"
kill Vilebranch Hexwarder##236185, Vilebranch Siphoner##236184
|tip Inside the crypt. |notinsticky
Slay #8# Vilebranch Trolls |q 86658/2 |goto Zul Aman M/0 37.81,37.13
step
Follow the path and run up the stairs |goto Zul Aman M/0 36.89,37.33 < 10 |walk
kill Ritualist Zongha##245442 |q 86658/3 |goto Zul Aman M/0 37.55,36.00
|tip Upstairs inside the crypt.
step
Run up the stairs and leave the crypt |goto Zul Aman M/0 37.57,35.04 < 10 |walk |only if subzone("Numazon Crypts") and indoors()
talk Zul'jarra##244588
turnin The Crypt in the Mist##86658 |goto Zul Aman M/0 36.76,34.97
turnin Rescue from the Shadows##86660 |goto Zul Aman M/0 36.76,34.97
accept Breaching the Mist##86659 |goto Zul Aman M/0 36.76,34.97
step
clicknpc Ancient Incense##249371
Find the First Hash'ey Shrine |q 86659/1 |goto Zul Aman M/0 35.46,36.11
step
click Ancient Incense##249375
Activate the Lynx Hash'ey Shrine |q 86659/2 |goto Zul Aman M/0 33.40,34.48 |count 1 hidden
step
click Ancient Incense##249377
Activate the Lynx Hash'ey Shrine |q 86659/2 |goto Zul Aman M/0 33.96,32.02 |count 2 hidden
step
click Ancient Incense##249372
Activate the Lynx Hash'ey Shrine |q 86659/2 |goto Zul Aman M/0 34.84,30.92 |count 3 hidden
step
click Ancient Incense##249379
Activate the Final Lynx Hash'ey Shrine |q 86659/3 |goto Zul Aman M/0 32.83,32.62
step
talk Zul'jarra##236155
|tip Inside the building.
turnin Breaching the Mist##86659 |goto Zul Aman M/0 32.40,31.61
accept Halazzi's Guile##92084 |goto Zul Aman M/0 32.40,31.61
step
talk Loa Speaker Tobui##250068
|tip Inside the building.
Select _"How do we speak to Halazzi?"_ |gossip 135472
Speak to Loa Speaker Tobui |q 92084/1 |goto Zul Aman M/0 32.25,31.56
step
talk Zul'jarra##236155
|tip Inside the building.
turnin Halazzi's Guile##92084 |goto Zul Aman M/0 32.40,31.61
accept Coals of a Dead Loa##86661 |goto Zul Aman M/0 32.40,31.61
step
talk Vun'zarah##244591
|tip {o}Ground floor{} inside the building.
Select _"Do you know anything that will help us speak to Jan'alai?"_ |gossip 134081
Speak with Vun'zarah |q 86661/1 |goto Zul Aman M/0 38.57,22.40
step
talk Zul'jarra##244592
|tip {o}Ground floor{} inside the building.
turnin Coals of a Dead Loa##86661 |goto Zul Aman M/0 38.53,22.46
accept The Riddled Speaker##86808 |goto Zul Aman M/0 38.53,22.46
step
talk Eagletender Do'nac##251073
fpath Witherbark Bluffs |goto Zul Aman M/0 38.89,23.21
step
talk Scroll of Flight##242011
fpath Camp Stonewash |goto Zul Aman M/0 47.31,25.52
step
Meet Zul'jarra at the Temple of Jan'alai |q 86808/1 |goto Zul Aman M/0 55.00,18.34
|tip Inside the building.
step
Watch the dialogue
|tip Inside the building.
talk Zul'jarra##236162
turnin The Riddled Speaker##86808 |goto Zul Aman M/0 55.00,18.34
accept Embers to a Flame##86663 |goto Zul Aman M/0 55.00,18.34
step
clicknpc Coal of Jan'alai##252208
|tip Inside the building.
Take the Coal of Jan'alai |q 86663/2 |goto Zul Aman M/0 55.09,18.24
step
kill Cinderdig Amazard##236168, Cinderscale Amazard##236169
Empower the Coal of Jan'alai |q 86663/3 |goto Zul Aman M/0 53.68,21.91
step
click Infused Coal
|tip Inside the building.
Place the Empowered Coal |q 86663/4 |goto Zul Aman M/0 55.08,18.25
step
talk Zul'jarra##236162
|tip Inside the building.
turnin Embers to a Flame##86663 |goto Zul Aman M/0 55.00,18.34
accept Seer or Sear##86664 |goto Zul Aman M/0 55.00,18.34
step
click First Coal of Jan'alai##240866
kill Manifestation of Zul'jin##245352
Light the First Hash'ey Shrine |q 86664/1 |goto Zul Aman M/0 54.90,21.57
step
clicknpc Second Coal of Jan'alai##240879
kill Manifestation of Zul'jan##245365
Light the Second Hash'ey Shrine |q 86664/2 |goto Zul Aman M/0 52.91,18.56
step
click Coalesced Fire
|tip Inside the building.
Place the Coalesced Flame |q 86664/3 |goto Zul Aman M/0 55.11,18.20
step
talk Zul'jarra##236162
|tip Inside the building.
turnin Seer or Sear##86664 |goto Zul Aman M/0 55.00,18.34
accept Face in the Fire##86665 |goto Zul Aman M/0 55.00,18.34
step
clicknpc Coalesced Fire##240916
|tip Inside the building.
Touch the Coal |q 86665/1 |goto Zul Aman M/0 55.11,18.20
step
kill Manifestation of Zul'jarra##236171
|tip Inside the building.
Slay the Final Manifestation |q 86665/2 |goto Zul Aman M/0 55.20,18.06
step
talk Zul'jarra##236162
|tip Inside the building.
turnin Face in the Fire##86665 |goto Zul Aman M/0 55.00,18.34
accept The Flames Rise Higher##90772 |goto Zul Aman M/0 55.00,18.34
step
talk Loa Speaker Brek##245512
|tip Inside the building.
Select _"Where is Jan'alai?"_ |gossip 134196
Speak with Loa Speaker Brek |q 90772/1 |goto Zul Aman M/0 55.11,18.32
step
talk Zul'jarra##236162
|tip Inside the building.
turnin The Flames Rise Higher##90772 |goto Zul Aman M/0 55.00,18.34
accept In the Shadow of Rebirth##86666 |goto Zul Aman M/0 55.00,18.34
step
talk Zul'jarra##240186
turnin In the Shadow of Rebirth##86666 |goto Zul Aman M/0 43.84,68.28
accept Den of Nalorakk: A Taste of Vengeance##86681 |goto Zul Aman M/0 43.84,68.28
step
click Kinduru's Mortar
Use Kinduru's Mortar to Grind the Bog Herbs |q 86681/1 |goto Zul Aman M/0 43.57,68.38
step
Pour the Death Rites Mixture into the Fire |q 86681/2 |goto Zul Aman M/0 43.59,68.24 |count 1 hidden
|tip Use the {o}Pour Death Rite Mixture{} button ability.
step
Pour the Death Rites Mixture into the Fire |q 86681/2 |goto Zul Aman M/0 43.67,68.54 |count 2 hidden
|tip Use the {o}Pour Death Rite Mixture{} button ability.
step
Pour the Death Rites Mixture into the Fire |q 86681/2 |goto Zul Aman M/0 43.85,68.66 |count 3 hidden
|tip Use the {o}Pour Death Rite Mixture{} button ability.
step
talk Zul'jarra##240186
turnin Den of Nalorakk: A Taste of Vengeance##86681 |goto Zul Aman M/0 43.84,68.28
accept Den of Nalorakk: Waking de Bear##86682 |goto Zul Aman M/0 43.84,68.28
step
talk Eagletender Tha'mon##249150
fpath Torntusk Overlook |goto Zul Aman M/0 33.90,78.32
step
talk Lilaju##245664
Select _"We will. But we need to speak to Nalorakk to do so."_ |gossip 134139
Speak with Lilaju |q 86682/1 |goto Zul Aman M/0 33.59,78.82
step
talk Zul'jarra##240215
turnin Den of Nalorakk: Waking de Bear##86682 |goto Zul Aman M/0 33.61,78.77
accept Den of Nalorakk: Unforgiven##91958 |goto Zul Aman M/0 33.61,78.77
step
talk Zul'jarra##240215
Select _"<Enter the Den of Nalorakk with Zul'jarra.>"_ |gossip 134140
Talk to Zul'jarra to Begin a Follower Dungeon |q 91958/2 |goto Zul Aman M/0 33.61,78.77
step
Defeat Nalorakk, Loa of War in Combat |q 91958/3
|tip Complete the follower dungeon.
step
_Inside the Follower Dungeon:_
talk Zul'jarra##246409
Select _"<Leave Nalorakk's Den.>"_ |gossip 136468
Return to Zul Aman |complete zone("Zul Aman M") |q 91958
step
talk Zul'jarra##240215
Select _"What is next?"_ |gossip 138171
Watch the dialogue
Speak with Zul'jarra |q 91958/4 |goto Zul Aman M/0 31.58,83.87
step
talk Zul'jarra##240215
turnin Den of Nalorakk: Unforgiven##91958 |goto Zul Aman M/0 31.58,83.87
accept Hash'ey Away##86683 |goto Zul Aman M/0 31.58,83.87
step
Arrive in Amani'Zar Village |q 86683/1 |goto Zul Aman M/0 43.80,68.67
step
talk Zul'jarra##240216
Select _"Is there nothing we can do?"_ |gossip 132827
Watch the dialogue
Speak with Zul'jarra |q 86683/2 |goto Zul Aman M/0 43.80,68.67
step
talk Zul'jarra##240216
turnin Hash'ey Away##86683 |goto Zul Aman M/0 43.48,68.82
accept The Blade's Edge##86684 |goto Zul Aman M/0 43.48,68.82
step
Arrive at Broken Throne |q 86684/1 |goto Zul Aman M/0 28.35,77.38
step
talk Zul'jarra##240033
turnin The Blade's Edge##86684 |goto Zul Aman M/0 28.35,77.38
accept Conduit Crisis##86687 |goto Zul Aman M/0 28.35,77.38
accept Chip and Shatter##86685 |goto Zul Aman M/0 28.35,77.38
step
talk Lady Liadrin##240039
accept Light Indiscriminate##86686 |goto Zul Aman M/0 28.41,77.41
stickystart "Slay_Twilights_Blade"
step
click Void Conduit+
|tip Floating shattered orbs.
|tip On your minimap.
Destroy #3# Conduits Near Nalorakk |q 86687/4 |goto Zul Aman M/0 27.29,81.33
step
click Void Conduit+
|tip Floating shattered orbs.
|tip On your minimap.
Destroy #3# Conduits Near Akil'zon |q 86687/3 |goto Zul Aman M/0 23.72,80.07
step
click Void Conduit+
|tip Floating shattered orbs.
|tip On your minimap.
Destroy #3# Conduits Near Halazzi |q 86687/2 |goto Zul Aman M/0 23.84,74.83
step
click Void Conduit+
|tip Floating shattered orbs.
|tip On your minimap.
Destroy #3# Conduits Near Jan'alai |q 86687/1 |goto Zul Aman M/0 25.11,71.37
step
clicknpc Injured Amani Warrior##240843+
|tip Kneeling trolls.
|tip On your minimap. |notinsticky
Heal #10# Injured Amani Warriors |q 86686/1 |goto Zul Aman M/0 26.22,77.18
step
label "Slay_Twilights_Blade"
kill Blade Commander##239753, Bound Shadow##239757, Flittering Shadow##239758, Lurking Shadeblade##239752, Ogre Hexwright##239749, Ogre Rampager##239748, Shadowy Stalker##239750, Twilight Breaker##239751, Twilight Sage##239755, Umbral Force##239756, Void Ascendant##239754
Slay the Twilight's Blade |q 86685/1 |goto Zul Aman M/0 25.05,76.99
step
talk Lady Liadrin##245271
turnin Light Indiscriminate##86686 |goto Zul Aman M/0 25.70,77.66
step
talk Zul'jarra##245270
turnin Conduit Crisis##86687 |goto Zul Aman M/0 25.70,77.62
turnin Chip and Shatter##86685 |goto Zul Aman M/0 25.70,77.62
accept Clear de Way##91001 |goto Zul Aman M/0 25.70,77.62
step
Meet at Conquerer's Sanctum |q 91001/1 |goto Zul Aman M/0 22.53,77.38
step
talk Zul'jarra##240034
turnin Clear de Way##91001 |goto Zul Aman M/0 22.53,77.38
accept Blade Shattered##86692 |goto Zul Aman M/0 22.53,77.38
step
talk Zul'jarra##240034
Select _"I am ready to battle Mor'duun."_ |gossip 135208
Speak to Zul'jarra |q 86692/1 |goto Zul Aman M/0 22.53,77.38
step
Watch the dialogue
kill Mor'duun##241301 |q 86692/2 |goto Zul Aman M/0 21.37,77.37
|tip Inside the building.
step
talk Zul'jarra##240037
|tip Inside the building.
turnin Blade Shattered##86692 |goto Zul Aman M/0 21.43,77.37
accept De Legend of de Hash'ey##86693 |goto Zul Aman M/0 21.43,77.37
step
talk Zul'jarra##241306
Select _"<Start the celebration.>"_ |gossip 134131
Watch the dialogue
Talk to Zul'jarra at Amani'Zar Village |q 86693/1 |goto Zul Aman M/0 45.28,66.20
step
talk Zul'jarra##249653
|tip Inside the building.
turnin De Legend of de Hash'ey##86693 |goto Zul Aman M/0 45.76,65.50
accept Broken Bridges##91062 |goto Zul Aman M/0 45.76,65.50
step
talk Zul'jan##245646
|tip On the bridge.
Select _"Are you okay, Zul'jan?"_ |gossip 134133
Check on Zul'jan |q 91062/1 |goto Zul Aman M/0 51.26,54.36
step
Watch the dialogue
talk Lady Liadrin##241308
|tip On the bridge.
turnin Broken Bridges##91062 |goto Zul Aman M/0 50.75,54.47
step
Watch the dialogue
|tip On the bridge.
talk Lady Liadrin##241308
accept Reports Returned##91087 |goto Zul Aman M/0 50.75,54.47
|tip If this quest is not offered, skip this step.
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Reports Returned##91087 |goto Silvermoon City M/0 45.44,70.33
|only if haveq(91087) or completedq(91087)
step
|next "Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Midnight Intro & Campaign (Story Only)" |only if level < 90
|next "Leveling Guides\\Midnight (80-90)\\The War of Light and Shadow Campaign" |only if level >= 90
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Harandar (Story Only)",{
},[[
step
Click the Complete Quest Box
turnin Adventuring in Midnight##94993
|only if readyq(94993)
step
talk Orweyna##236704
turnin Harandar##89402 |goto Eversong Woods M/0 45.40,45.52 |only if haveq(89402) or completedq(89402)
accept The Root Cause##86899 |goto Eversong Woods M/0 45.40,45.52
step
talk Orweyna##236704
Select _"I'm ready. Let's go!"_ |gossip 135559
Talk to Orweyna |q 86899/1 |goto Eversong Woods M/0 45.40,45.52
step
Watch the dialogue
click Mysterious Rootway
Take the Portal to Harandar |q 86899/2 |goto Eversong Woods M/0 45.14,46.93
step
talk Orweyna##237480
turnin The Root Cause##86899 |goto Harandar/0 75.64,53.58
accept To Har'athir##86900 |goto Harandar/0 75.64,53.58
step
Follow Orweyna |q 86900/1 |goto Harandar/0 75.38,51.75
step
talk Ku'paal##237209
Select _"We are friends of Orweyna and we are here to help."_ |gossip 132537
Talk to Ku'paal |q 86900/2 |goto Harandar/0 75.38,51.75
step
talk Oorla##237866
Select _"Ku'paal and Orweyna sent me. It's safe to return to the village."_ |gossip 133721
Talk to Oorla |q 86900/3 |goto Harandar/0 76.18,50.26
step
talk Danul##237865
|tip It may take a moment for him to appear on the tree.
Select _"Ku'paal and Orweyna sent me. It's safe to return to the village."_ |gossip 133726
Talk to Danul |q 86900/4 |goto Harandar/0 74.43,52.44
step
talk Orweyna##237210
Select _"<Take in the view.>"_ |gossip 131842
Talk to Orweyna |q 86900/5 |goto Harandar/0 74.03,51.07
step
talk Halduron Brightwing##237343
Select _"Let's head down."_ |gossip 133774
Check on Halduron |q 86900/6 |goto Harandar/0 73.98,50.90
step
talk Ruia##239525
turnin To Har'athir##86900 |goto Harandar/0 70.03,51.54
step
talk Orweyna##237483
accept The Rift and the Den##86901 |goto Harandar/0 69.98,51.54
step
Follow Orweyna to the Den |q 86901/2 |goto Harandar/0 54.79,51.21
step
talk Halduron Brightwing##237345
turnin The Rift and the Den##86901 |goto Harandar/0 54.79,51.21
accept The Council Assembles##86929 |goto Harandar/0 54.79,51.21
step
talk Halduron Brightwing##237345
Select _"Let's go."_ |gossip 133792
Talk to Halduron |q 86929/1 |goto Harandar/0 54.79,51.21
step
talk Hagar##237332
|tip Inside the cave.
turnin The Council Assembles##86929 |goto Harandar/2 43.77,54.29
accept The Den of Echoes##86907 |goto Harandar/2 43.77,54.29
step
talk Hagar##237567
turnin The Den of Echoes##86907 |goto Harandar/0 38.84,46.90
accept Echoes and Memories##86911 |goto Harandar/0 38.84,46.90
step
talk Zur'ashar Kassameh##237837
Select _"I am ready to begin the trials."_ |gossip 131932
Talk to Zur'ashar Kassameh |q 86911/2 |goto Harandar/0 37.49,47.68
step
click Ancient Visionstone
Activate the Visionstone |q 86911/3 |goto Harandar/0 37.57,47.70
step
clicknpc Obscuring Bush##244629+
|tip Larger orange bushes.
|tip Use them to {o}hide from elite enemies{}.
click Iceberry Bush+
|tip Small orange bushes
collect 6 Iceberries##239014 |q 86911/4 |goto Harandar/0 36.40,45.96
step
talk Zur'ashar Kassameh##239650
turnin Echoes and Memories##86911 |goto Harandar/0 36.11,44.25
accept Echo of the Hunt##90094 |goto Harandar/0 36.11,44.25
step
click Ancient Visionstone
Activate the Second Visionstone |q 90094/1 |goto Harandar/0 36.21,44.15
stickystart "Kill_Panquill_Reminiscences"
step
kill 4 Razorquill Remembrance##239668 |q 90094/2 |goto Harandar/0 35.60,46.59
|tip Smaller beasts with wings.
step
label "Kill_Panquill_Reminiscences"
kill 4 Pangquill Reminiscence##239744 |q 90094/3 |goto Harandar/0 35.60,46.59
|tip Larger beasts without wings.
step
talk Zur'ashar Kassameh##239795
turnin Echo of the Hunt##90094 |goto Harandar/0 34.86,42.80
accept Echo of the Call##90095 |goto Harandar/0 34.86,42.80
step
click Ancient Visionstone
Activate the Third Visionstone |q 90095/1 |goto Harandar/0 34.85,42.70
step
kill Observer Talos##240749 |q 90095/2 |goto Harandar/0 34.24,43.68
step
talk Zur'ashar Kassameh##243884
turnin Echo of the Call##90095 |goto Harandar/0 33.93,44.82
accept Down the Rootways##86912 |goto Harandar/0 33.93,44.82
step
Enter the Gulf of Memory |q 86912/1 |goto Harandar/0 36.71,49.74
|tip Drop down and enter the cave.
|tip Walk into the wall of smoke.
step
click Fragment of Revelation
|tip In the final boss treasure room.
|tip Complete the delve.
collect Fragment of Revelation |q 86912/2
step
Leave the Delve |scenarioend |q 86912
step
talk Orweyna##253343
Select _"<Hand Orweyna the Fragment of Revelation.>"_ |gossip 136444
Speak to Orweyna |q 86912/3 |goto Harandar/0 34.16,43.11
step
talk Hagar##240839
|tip {o}Top floor{} inside the building.
turnin Down the Rootways##86912 |goto Harandar/0 34.81,25.03
accept A Hut in Har'mara##86913 |goto Harandar/0 34.81,25.03
step
talk Orweyna##237786
|tip {o}Ground floor{} inside the building.
turnin A Hut in Har'mara##86913 |goto Harandar/0 34.89,24.93
step
talk Hagar##237572
|tip {o}Ground floor{} inside the building.
accept Tending to Har'mara##86914 |goto Harandar/0 34.88,24.97
step
talk Halduron Brightwing##237787
|tip {o}Ground floor{} inside the building.
accept The Traveling Flowers##86956 |goto Harandar/0 34.88,25.08
step
talk Sa'neya##247997
fpath Har'mara |goto Harandar/0 35.53,23.81
stickystart "Complete_Tasks"
step
talk Eonka##240225
Select _"<Ask if they have lightbloom in their village.>"_ |gossip 132714
Question Eonka |q 86956/3 |goto Harandar/0 34.93,27.38
step
talk Keem##243930
Select _"<Ask if they have lightbloom in their village.>"_ |gossip 133684
Question Keem |q 86956/4 |goto Harandar/0 35.72,27.52
step
talk Rizam##240239
Select _"<Ask if they have lightbloom in their village.>"_ |gossip 132927
Question Rizam |q 86956/1 |goto Harandar/0 36.97,25.76
step
talk Teetem##240238
Select _"<Ask if they have lightbloom in their village.>"_ |gossip 132713
Question Teetem |q 86956/2 |goto Harandar/0 36.85,24.04
step
label "Complete_Tasks"
clicknpc Hungry Rotling##237623+
|tip Small mushroom people.
click Various Objects
|tip You may be attacked.
Complete Tasks |q 86914/1 |goto Harandar/0 35.72,25.28
step
talk Halduron Brightwing##237787
|tip {o}Ground floor{} inside the building.
turnin The Traveling Flowers##86956 |goto Harandar/0 34.88,25.08
step
talk Hagar##237572
|tip {o}Ground floor{} inside the building.
turnin Tending to Har'mara##86914 |goto Harandar/0 34.88,24.97
accept Koozat's Trample##86910 |goto Harandar/0 34.88,24.97
step
Follow Orweyna |q 86910/1 |goto Harandar/0 35.67,25.33
step
talk Orweyna##240533
turnin Koozat's Trample##86910 |goto Harandar/0 35.67,25.33
accept Halting Harm in Har'mara##86973 |goto Harandar/0 35.67,25.33
accept Culling the Spread##86942 |goto Harandar/0 35.67,25.33
step
talk Halduron Brightwing##240630
accept Burning Bitterblooms##89034 |goto Harandar/0 35.69,25.20
stickystart "Burn_Bitterblooms"
stickystart "Slay_Lightbloom_Rutaani"
step
kill Koozat##237737 |q 86942/1 |goto Harandar/0 35.72,27.56
kill Keem##237654 |q 86942/2 |goto Harandar/0 35.72,27.56
step
kill Rizam##240388 |q 86942/3 |goto Harandar/0 36.90,25.65
step
kill Teetem##240389 |q 86942/4 |goto Harandar/0 36.89,24.09
|tip Walks around.
step
label "Burn_Bitterblooms"
click Light-infected Bitterbloom+
|tip Large yellow flowers.
Burn #6# Bitterblooms |q 89034/1 |goto Harandar/0 35.91,25.33
step
label "Slay_Lightbloom_Rutaani"
kill Lightbloom Grovewarden##240344, Lightbloom Grovewarden##240457, Lightbloom Sap Weaver##240343, Lightbloom Sap Weaver##240656, Lightbloom Thornguard##240342
Slay #8# Lightbloom Rutaani |q 86973/1 |goto Harandar/0 36.20,25.40
step
talk Halduron Brightwing##240630
turnin Burning Bitterblooms##89034 |goto Harandar/0 35.69,25.20
step
talk Orweyna##240533
turnin Halting Harm in Har'mara##86973 |goto Harandar/0 35.67,25.33
turnin Culling the Spread##86942 |goto Harandar/0 35.67,25.33
accept Seeds of the Rift##86944 |goto Harandar/0 35.67,25.33
step
talk Eonka##244126
|tip {o}Top floor{} inside the building.
Select _"Are you still feeling well?"_ |gossip 133712
Question Eonka Again |q 86944/1 |goto Harandar/0 34.86,25.12
step
click Glistening Seed Bag
|tip {o}Top floor{} inside the building.
collect Glistening Seed Bag##258623 |q 86944/2 |goto Harandar/0 34.85,25.14
step
talk Halduron Brightwing##237787
|tip {o}Ground floor{} inside the building.
Select _"<Hand Halduron the glimmering bag of seeds.>"_ |gossip 138702
Give the Seed to Halduron |q 86944/3 |goto Harandar/0 34.88,25.08
step
talk Orweyna##237786
|tip {o}Ground floor{} inside the building.
turnin Seeds of the Rift##86944 |goto Harandar/0 34.88,24.93
accept To Sow the Seed##86930 |goto Harandar/0 34.88,24.93
step
talk Lo'miko##254935
fpath Har'kuai |goto Harandar/0 64.59,23.15
step
talk Orweyna##237860
|tip Inside the large cave.
turnin To Sow the Seed##86930 |goto Harandar/2 44.15,52.62
accept Watch The Den##86864 |goto Harandar/2 44.15,52.62
step
talk Doecha##255056
|tip Inside the large cave.
fpath The Den |goto Harandar/2 70.74,53.23
step
talk Doecha##255056
|tip Inside the large cave.
Select _"What can you tell me about the Rift of Aln?"_ |gossip 133777
Speak to the Flight Master |q 86864/3 |goto Harandar/2 70.74,53.23
step
talk Yinaa##240404
|tip Inside the building.
|tip Outside above the cave.
Select _"What can you tell me about the Rift of Aln?"_ |gossip 132851
Speak to the Innkeeper |q 86864/1 |goto Harandar/0 50.86,55.61
step
talk Naynar##240407
Select _"What can you tell me about the Rift of Aln?"_ |gossip 132852
Speak to the Quartermaster |q 86864/2 |goto Harandar/0 50.95,50.73
step
talk Ku'paal##241045
|tip Up on the cliff.
Select _"What can you tell me about the Rift of Aln?"_ |gossip 132858
Speak to Ku'paal |q 86864/4 |goto Harandar/0 54.27,55.67
step
talk Orweyna##237234
|tip Up on the cliff.
turnin Watch The Den##86864 |goto Harandar/0 54.28,55.75
step
talk Ku'paal##241045
|tip Up on the cliff.
accept The Hunter Awaits##86836 |goto Harandar/0 54.27,55.67
step
Find Orweyna in the Shrine of Mists |q 86836/1 |goto Harandar/0 61.99,54.62
step
talk Amarakk##237236
turnin The Hunter Awaits##86836 |goto Harandar/0 61.99,54.62
accept Consequences of Our Duty##86855 |goto Harandar/0 61.99,54.62
accept The Foundation of Aln##86851 |goto Harandar/0 61.99,54.62
stickystart "Collect_Diminished_Alndust"
step
clicknpc Wounded Defender##241220+
|tip Dazed allies.
|tip On your minimap.
Help #5# Wounded Defenders |q 86855/1 |goto Harandar/0 60.11,54.55
step
label "Collect_Diminished_Alndust"
kill Blighted Rift Spirit##237605, Rift Shade##237606
collect 6 Diminished Alndust##238417 |q 86851/1 |goto Harandar/0 61.83,54.42
step
talk Orweyna##241070
turnin Consequences of Our Duty##86855 |goto Harandar/0 61.93,54.54
turnin The Foundation of Aln##86851 |goto Harandar/0 61.93,54.54
accept Dampening the Call##86856 |goto Harandar/0 61.93,54.54
step
click Diminished Alndust##241280
Place the Alndust |q 86856/1 |goto Harandar/0 61.95,54.53
step
Watch the dialogue
talk Orweyna##241070
turnin Dampening the Call##86856 |goto Harandar/0 61.92,54.54
accept Descent into the Rift##86857 |goto Harandar/0 61.92,54.54
step
click Ward of the Shul'ka
Look for the Wards of the Shul'ka |q 86857/1 |goto Harandar/0 64.06,56.36
step
click Ward of the Shul'ka
Look for the Wards of the Shul'ka |q 86857/2 |goto Harandar/0 63.97,58.42
step
Look for the Wards of the Shul'ka |q 86857/3 |goto Harandar/0 61.67,56.14
step
Watch the dialogue
talk Amarakk##237284
turnin Descent into the Rift##86857 |goto Harandar/0 61.67,56.14
accept The Madness Roots Deep##86858 |goto Harandar/0 61.67,56.14
step
kill On'hiea##237668
Subdue On'hiea |q 86858/1 |goto Harandar/0 59.86,57.47
step
talk Amarakk##237284
turnin The Madness Roots Deep##86858 |goto Harandar/0 61.10,57.30
accept Before They Grow##86860 |goto Harandar/0 61.10,57.30
accept Grinding Out a Solution##86859 |goto Harandar/0 61.10,57.30
accept Herding Manifestations##86861 |goto Harandar/0 61.10,57.30
stickystart "Collect_Alngrown_Fungus"
stickystart "Defeat_Alnsnorned_Enemies_In_The_Rift_Of_Aln"
step
click Ward of the Shul'ka+
|tip Yellow poles with flags.
|tip On your minimap.
|tip Avoid elite enemies.
Place #3# Wards |q 86861/1 |goto Harandar/0 62.87,58.75
step
label "Collect_Alngrown_Fungus"
click Aln Mushroom+
|tip Green tube plants.
|tip Avoid elite enemies. |notinsticky
collect 5 Alngrown Fungus##238651 |q 86859/1 |goto Harandar/0 64.92,61.44
step
label "Defeat_Alnsnorned_Enemies_In_The_Rift_Of_Aln"
kill Coalesced Spirit##237684, Decaying Essence##237681, Rift Shade##241646
|tip Avoid elite enemies. |notinsticky
use Amarakk's Influence##239131
|tip On enemies.
kill Aln Mites##241639+
Defeat Alnscorned Enemies in the Rift of Aln |q 86860/2 |goto Harandar/0 64.27,60.11
step
Enter the cave |goto Harandar/0 63.21,57.59 < 15 |walk |only if not (subzone("Rift of Aln") and indoors())
talk Amarakk##237284
|tip Inside the cave.
turnin Grinding Out a Solution##86859 |goto Harandar/0 63.14,56.76
turnin Before They Grow##86860 |goto Harandar/0 63.14,56.76
turnin Herding Manifestations##86861 |goto Harandar/0 63.14,56.76
accept The Greater They Aln##86862 |goto Harandar/0 63.14,56.76
step
kill Lured Manifestation##237658 |q 86862/1 |goto Harandar/0 64.91,57.31
|tip Allies will help you.
|tip Inside the cave.
step
click Greater Alndust
|tip Inside the cave.
Gather the Greater Alndust |q 86862/2 |goto Harandar/0 65.03,57.38
step
talk Amarakk##237284
|tip Inside the cave.
turnin The Greater They Aln##86862 |goto Harandar/0 63.13,56.76
step
talk Orweyna##237234
|tip Inside the cave.
accept In Search of the Problem##86865 |goto Harandar/0 63.12,56.82
step
talk Byarc##237295
turnin In Search of the Problem##86865 |goto Harandar/0 31.34,64.89
step
talk Orweyna##237325
accept Can we Heal This?##86866 |goto Harandar/0 31.43,64.91
accept The Missing Rootwarden##94677 |goto Harandar/0 31.43,64.91
step
click Ruia's Storage
|tip Inside the building.
Find Ruia's Notes |q 94677/1 |goto Harandar/0 30.97,64.70 |count 1 hidden
step
click Ruia's Musings
Find Ruia's Notes |q 94677/1 |goto Harandar/0 32.97,65.06 |count 2 hidden
step
click Ruia's Musings
Find Ruia's Notes |q 94677/1 |goto Harandar/0 30.45,67.54 |count 3 hidden
step
talk Ka'mura##254936
fpath Har'alnor |goto Harandar/0 31.73,67.43
step
talk Orweyna##237356
|tip Inside the small cave.
turnin The Missing Rootwarden##94677 |goto Harandar/0 31.98,61.40
step
clicknpc Afflicted Rutaani##237393
|tip Inside the small cave.
Use the Alndust on the Afflicted Rutaani |q 86866/1 |goto Harandar/0 31.93,61.14
step
talk Orweyna##237356
|tip Inside the small cave.
turnin Can we Heal This?##86866 |goto Harandar/0 31.98,61.40
accept Alndust in Right Hands##86882 |goto Harandar/0 31.98,61.40
step
talk Eager Volunteer##241690+
|tip On your minimap.
Select _"This alndust will protect you from the Lightbloom so we can fight them."_ |gossip 132939
Innoculate #5# Haranir |q 86882/1 |goto Harandar/0 32.46,64.07
step
talk Hannan##241655
Select _"<Ask about this area.>"_ |gossip 132933
Talk to Hannan at the Blinding Bloom |q 86882/2 |goto Harandar/0 33.17,75.92
step
talk Orweyna##237356
turnin Alndust in Right Hands##86882 |goto Harandar/0 33.20,76.02
accept Into the Lightbloom##86867 |goto Harandar/0 33.20,76.02
step
clicknpc Haranir Petalwing##241799
Ride the Haranir Petalwing |q 86867/1 |goto Harandar/0 33.27,75.88
step
_As You Fly:_
kill Lightbloom Shield##241824+
|tip Large pink flower bulbs.
|tip On your minimap.
Destroy #4# Lightbloom Spreader Shields |q 86867/2
kill enemies
Defeat the Lightbloom Rutaani |q 86867/3
step
Return to Orweyna |outvehicle |goto Harandar/0 30.54,77.26 |q 86867 |notravel
step
talk Orweyna##237356
turnin Into the Lightbloom##86867 |goto Harandar/0 30.59,77.16
accept At the Root##86881 |goto Harandar/0 30.59,77.16
accept Our Beloved, Returned##86880 |goto Harandar/0 30.59,77.16
accept Righteous Pruning##86877 |goto Harandar/0 30.59,77.16
stickystart "Recover_Artifacts"
step
kill 4 Lightblinded Sap Weaver##237582 |q 86877/1 |goto Harandar/0 31.45,76.40
|tip Larger humanoids.
|tip On your minimap.
step
click Lightbloom Spreader+
|tip Large pink flower bulbs {o}next to water{}.
Destroy #5# Lightbloom Spreaders |q 86881/1 |goto Harandar/0 31.59,82.56
step
label "Recover_Artifacts"
click Haranir Heirloom+
|tip Green sacks.
|tip On your minimap.
Recover #6# Artifacts |q 86880/1 |goto Harandar/0 31.21,78.25
step
talk Orweyna##237356
turnin At the Root##86881 |goto Harandar/0 30.59,77.16
turnin Our Beloved, Returned##86880 |goto Harandar/0 30.59,77.16
turnin Righteous Pruning##86877 |goto Harandar/0 30.59,77.16
accept Tell the People What You Have Seen##86890 |goto Harandar/0 30.59,77.16
step
Return to the Den |q 86890/1 |goto Harandar/0 50.09,54.11
step
talk Halduron Brightwing##250363
Select _"I am ready."_ |gossip 135501
Address the Council |q 86890/2 |goto Harandar/0 50.09,54.11
step
talk Orweyna##241742
|tip Inside the large cave.
turnin Tell the People What You Have Seen##86890 |goto Harandar/0 53.21,55.44
accept The Frenzied March##86883 |goto Harandar/0 53.21,55.44
step
click Eversong Rootway
|tip Inside the large cave.
Take the Emergency Rootway |q 86883/1 |goto Harandar/0 53.36,55.42
step
talk Orweyna##237361
turnin The Frenzied March##86883 |goto Eversong Woods M/0 62.24,59.47
accept Cull and Burn##86884 |goto Eversong Woods M/0 62.24,59.47
step
talk Halduron Brightwing##237465
accept Stem the Tides##86885 |goto Eversong Woods M/0 62.25,59.53
stickystart "Collect_Lightbleached_Rootbones"
step
click Lightfrenzy Portalway+
|tip Plants next to yellow portals.
Destroy #5# Lightfrenzy Rootways |q 86885/1 |goto Eversong Woods M/0 60.93,59.33
step
label "Collect_Lightbleached_Rootbones"
kill Invasive Shinesipper##237500, Lash'ra Mistcaller##237479, Lash'ra Thornguard##237478, Lightmad Saptor##237496
collect 10 Lightbleached Rootbone##238196 |q 86884/1 |goto Eversong Woods M/0 60.69,58.89
step
talk Orweyna##237361
turnin Cull and Burn##86884 |goto Eversong Woods M/0 62.24,59.47
step
talk Halduron Brightwing##237465
turnin Stem the Tides##86885 |goto Eversong Woods M/0 62.25,59.53
accept Expeditious Retreat##86887 |goto Eversong Woods M/0 62.25,59.53
accept A Last Resort##86891 |goto Eversong Woods M/0 62.25,59.53
step
kill Swarming Lightsaptor##241466 |q 86887/2 |goto Eversong Woods M/0 61.63,60.36
step
click Palehill Runestone
Disable the Palehill Runestone |q 86891/1 |goto Eversong Woods M/0 61.52,59.69
step
click Lakegrove Runestone
Disable the Lakegrove Runestone |q 86891/2 |goto Eversong Woods M/0 60.09,59.10
step
kill Swarming Shinesipper##241465 |q 86887/1 |goto Eversong Woods M/0 59.99,58.54
|tip Flying around.
step
click Barksnarl Runestone
Disable the Barksnarl Runestone |q 86891/3 |goto Eversong Woods M/0 60.47,57.40
step
kill Swarming Shinemaw##240495 |q 86887/3 |goto Eversong Woods M/0 60.33,56.98
step
talk Halduron Brightwing##241130
turnin Expeditious Retreat##86887 |goto Eversong Woods M/0 58.66,57.24
turnin A Last Resort##86891 |goto Eversong Woods M/0 58.66,57.24
step
talk Orweyna##237361
accept Survive##86892 |goto Eversong Woods M/0 58.66,57.28
step
talk Grand Magister Rommath##240532
Select _"Begin the ritual."_ |gossip 132750
Kill the enemies that attack in waves
Survive the Lightfrenzy Onslaught |q 86892/2 |goto Eversong Woods M/0 58.62,57.10
step
talk Orweyna##237361
turnin Survive##86892 |goto Eversong Woods M/0 58.67,57.28
accept The Gift of Aln'hara##86894 |goto Eversong Woods M/0 58.67,57.28
step
talk Halduron Brightwing##241130
accept Light Finds a Way##86896 |goto Eversong Woods M/0 58.66,57.25
stickystart "Rout_The_Lightbloom_Frenzy"
step
kill 3 Lightfrenzy Tyrannosaptor##237635 |q 86896/1 |goto Eversong Woods M/0 60.92,55.05
|tip Large vine elite t-rex enemies.
|tip Use the {o}Gift of Aln'hara{} button ability.
|tip Weakens them.
|tip On your minimap.
step
label "Rout_The_Lightbloom_Frenzy"
kill Lightfrenzy Demolisher##237634, Lightfrenzy Devourer##237633, Lightfrenzy Shinesipper##240577
click Lightfrenzy Spore-Pod+
|tip Pink flower bulb structures.
Empower Allies
|tip Use the {o}Gift of Aln'hara{} button ability.
|tip Next to allies.
Rout the Lightbloom Frenzy |q 86894/1 |goto Eversong Woods M/0 61.25,56.32
step
talk Halduron Brightwing##237465
turnin Light Finds a Way##86896 |goto Eversong Woods M/0 60.72,56.77
step
talk Orweyna##237361
turnin The Gift of Aln'hara##86894 |goto Eversong Woods M/0 60.76,56.84
accept Quelling the Frenzy##86897 |goto Eversong Woods M/0 60.76,56.84
step
kill Lightwarden Ruia##241386 |q 86897/1 |goto Eversong Woods M/0 62.89,55.36
step
talk Orweyna##241704
turnin Quelling the Frenzy##86897 |goto Eversong Woods M/0 58.38,55.44
accept Rise of the Haranir##86898 |goto Eversong Woods M/0 58.38,55.44
step
talk Orweyna##255822
turnin Rise of the Haranir##86898 |goto Silvermoon City M/0 36.60,68.51
step
talk Elder Hagar##255819
accept The War Beyond the Roots##95324 |goto Silvermoon City M/0 36.55,68.42
|tip If this quest is not offered, skip this step.
step
talk Elder Hagar##255819
accept Looming Shadows##91084 |goto Silvermoon City M/0 36.56,68.42
|tip If this quest is not offered, skip this step.
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin The War Beyond the Roots##95324 |goto Silvermoon City M/0 45.45,70.33
|only if haveq(95324) or completedq(95324)
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Looming Shadows##91084 |goto Silvermoon City M/0 45.45,70.33
|only if haveq(91084) or completedq(91084)
step
Watch the dialogue
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
accept You Know This Evil?##91967 |goto Silvermoon City M/0 45.44,70.34
|tip If this quest is not offered, skip this step.
|only if haveq(91084) or completedq(91084)
step
talk Magister Umbric##249272
Find Umbric |q 91967/1 |goto Silvermoon City M/0 45.55,36.58
|only if haveq(91967) or completedq(91967)
step
talk Grand Magister Rommath##249270
Select _"<Explain that Lor'themar wants to see Umbric freed.>"_ |gossip 135139
Select _"<Explain how Umbric is researching a way into the Voidstorm.>"_ |gossip 135140
Petition Grand Magister Rommath |q 91967/4 |goto Silvermoon City M/0 45.79,36.26
|only if haveq(91967) or completedq(91967)
step
talk War Chaplain Senn##248628
Select _"<Explain that Lor'themar wants to see Umbric freed.>"_ |gossip 135148
Select _"<Explain that Umbric is researching ways into the Voidstorm.>"_ |gossip 135147
Select _"<Ask how they would enter the Voidstorm without Umbric's help.>"_ |gossip 135149
Petition War Chaplain Senn |q 91967/3 |goto Silvermoon City M/0 45.66,36.08
|only if haveq(91967) or completedq(91967)
step
talk Lothraxion##249268
Select _"<Explain that Lor'themar wants to see Umbric freed.>"_ |gossip 135157
Select _"<Explain that Umbric is researching ways into the Voidstorm.>"_ |gossip 135156
Petition Lothraxion |q 91967/2 |goto Silvermoon City M/0 45.49,36.03
|only if haveq(91967) or completedq(91967)
step
talk Anduin Wrynn##249289
Select _"<Explain that Lor'themar wants to see Umbric freed.>"_ |gossip 135179
Select _"<Explain that Umbric is researching ways into the Voidstorm.>"_ |gossip 135178
Petition Anduin Wrynn |q 91967/5 |goto Silvermoon City M/0 45.56,36.41
|only if haveq(91967) or completedq(91967)
step
click Lor'themar Theron##235787
|tip Upstairs inside the building.
Report to Lor'themar Theron |q 91967/6 |goto Silvermoon City M/0 45.44,70.34
|only if haveq(91967) or completedq(91967)
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin You Know This Evil?##91967 |goto Silvermoon City M/0 45.44,70.34
|only if haveq(91967) or completedq(91967)
step
|next "Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Midnight Intro & Campaign (Story Only)" |only if level < 90
|next "Leveling Guides\\Midnight (80-90)\\The War of Light and Shadow Campaign" |only if level >= 90
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Arator's Journey (Story Only)",{
},[[
step
Click the Complete Quest Box
turnin Adventuring in Midnight##94993
|only if readyq(94993)
step
talk Alonsus Faol##237565
turnin Arator##89193 |goto Silvermoon City M/0 45.78,65.78 |only if haveq(89193) or completedq(89193)
accept Meet at the Sunwell##86837 |goto Silvermoon City M/0 45.78,65.78
step
talk Arator##244644
Select _"Alonsus Faol asks that we meet him at the Sunwell."_ |gossip 133853
Select _"Let's go."_ |gossip 133856
Speak with Arator |q 86837/1 |goto Silvermoon City M/0 45.29,60.41
step
talk Alonsus Faol##240240
turnin Meet at the Sunwell##86837 |goto Isle of Quel Danas M/0 52.88,55.17
accept Renewal for the Weary##86838 |goto Isle of Quel Danas M/0 52.88,55.17
step
use Faol's Benediction##237811
|tip On Taelia Fordragon.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 52.94,45.80 |count 1 hidden
'|clicknpc Taelia Fordragon##242608
step
use Faol's Benediction##237811
|tip On Valunei.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 53.45,45.31 |count 2 hidden
'|clicknpc Valunei##242606
step
use Faol's Benediction##237811
|tip On Anduin Wrynn.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 53.51,44.55 |count 3 hidden
'|clicknpc Anduin Wrynn##244867
step
use Faol's Benediction##237811
|tip On Captain Fareeya.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 53.40,43.87 |count 4 hidden
'|clicknpc Captain Fareeya##242614
step
use Faol's Benediction##237811
|tip On Tahu Sagewind.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 52.90,43.16 |count 5 hidden
'|clicknpc Tahu Sagewind##242613
step
use Faol's Benediction##237811
|tip On Nolaki.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 52.25,43.25 |count 6 hidden
'|clicknpc Nolaki##242607
step
use Faol's Benediction##237811
|tip On Faerin Lothar.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 51.85,43.72 |count 7 hidden
'|clicknpc Faerin Lothar##242609
step
use Faol's Benediction##237811
|tip On Mariella Ward.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 51.70,44.44 |count 8 hidden
'|clicknpc Mariella Ward##242615
step
use Faol's Benediction##237811
|tip On Mehlar Dawnblade.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 51.68,45.17 |count 9 hidden
'|clicknpc Mehlar Dawnblade##242611
step
use Faol's Benediction##237811
|tip On Salandria.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 52.06,45.62 |count 10 hidden
'|clicknpc Salandria##242610
step
talk Alonsus Faol##240240
turnin Renewal for the Weary##86838 |goto Isle of Quel Danas M/0 52.88,55.17
accept Relics of Light's Hope##86839 |goto Isle of Quel Danas M/0 52.88,55.17
step
talk Skymistress Gloaming##246560
fpath Terrace of the Sun |goto Isle of Quel Danas M/0 57.55,33.85
|tip You can skip this step if you would rather go to Light's Hope immediately.
step
talk Alonsus Faol##240240
Select _"<Tell Alonsus you are ready to go to Light's Hope.>"_ |gossip 138693
Speak with Alonsus Faol |q 86839/2 |goto Isle of Quel Danas M/0 52.88,55.17
step
talk Lord Maxwell Tyrosus##237594
turnin Relics of Light's Hope##86839 |goto Eastern Plaguelands/0 73.90,53.56
accept Flickering Hope##86840 |goto Eastern Plaguelands/0 73.90,53.56
step
kill Ravaging Abomination##237731, Scourge Remnant##237739
Defend Light's Hope |q 86840/1 |goto Eastern Plaguelands/0 72.93,53.18
step
talk Lord Maxwell Tyrosus##237594
turnin Flickering Hope##86840 |goto Eastern Plaguelands/0 73.90,53.56
accept Relics of Paladins Past##86841 |goto Eastern Plaguelands/0 73.90,53.56
step
Enter Light's Hope Chapel |q 86841/1 |goto Eastern Plaguelands/20 42.40,88.78
|tip Inside the building.
step
click Lena's Stein
|tip Inside the building.
collect Lena Stormpike's Stein##237518 |q 86841/2 |goto Eastern Plaguelands/20 60.15,27.57
step
click Maraad's Meditation Crystal
|tip Inside the building.
collect Vindicator Maraad's Meditation Crystal##237513 |q 86841/3 |goto Eastern Plaguelands/20 70.38,42.48
step
click Krohm's Smithing Hammer
|tip Inside the building.
collect Krohm Dawnhammer's Smithing Hammer##237574 |q 86841/5 |goto Eastern Plaguelands/20 76.49,32.60
step
click Mara's Prayer Book
|tip Inside the building.
collect Mara Fordragon's Prayer Book##237573 |q 86841/6 |goto Eastern Plaguelands/20 79.16,23.63
step
click Uther's Healing Kit
|tip Inside the building.
collect Uther's Healing Kit##237519 |q 86841/4 |goto Eastern Plaguelands/20 72.24,13.72
step
talk Lord Maxwell Tyrosus##237594
turnin Relics of Paladins Past##86841 |goto Eastern Plaguelands/0 73.90,53.56
step
talk Alonsus Faol##237601
accept Scarlet Power##86842 |goto Eastern Plaguelands/0 73.80,53.52
step
Enter the Scarlet Monastery |q 86842/2 |goto Tirisfal Glades/13 17.00,81.13
step
Meet Faol Inside the Monastery |q 86842/3 |goto Tirisfal Glades/13 79.69,54.35
|tip Inside the building.
step
Enter the Scarlet Halls |q 86842/4 |goto Tirisfal Glades/13 78.96,60.02
|tip Walk into the portal.
|tip Inside the building.
step
talk Arator##241311
turnin Scarlet Power##86842 |goto Scarlet Halls Arator/0 46.94,89.92
step
talk Alonsus Faol##237602
accept Light Miswielded##86843 |goto Scarlet Halls Arator/0 47.30,90.78
accept Light Repurposed##86844 |goto Scarlet Halls Arator/0 47.30,90.78
stickystart "Defeat_The_Scarlet_Forces"
step
kill Instructor Meyer##237783
|tip Walks around.
|tip On your minimap.
collect Meyer's Rod of Castigation##237579 |q 86844/1 |goto Scarlet Halls Arator/0 56.95,80.45
step
kill Champion Aelyse##237803
Watch the dialogue
collect Aelyse's Gleaming Falchion##237761 |q 86844/2 |goto Scarlet Halls Arator/0 61.74,45.16
step
kill Abbot Benthar##238033
collect Benthar's Scarlet Spire##237576 |q 86844/3 |goto Scarlet Halls Arator/0 39.16,15.53
step
label "Defeat_The_Scarlet_Forces"
kill Instructor Meyer##237783, Scarlet Footman##237801, Scarlet Initiate##237772, Scarlet Cleric##237802, Scarlet Mage##237782, Champion Aelyse##237803, Abbot Benthar##238033
|tip Throughout the Scarlet Halls.
Defeat the Scarlet Forces |q 86843/1
step
talk Alonsus Faol##237602
turnin Light Miswielded##86843 |goto Scarlet Halls Arator/0 41.42,28.87
turnin Light Repurposed##86844 |goto Scarlet Halls Arator/0 41.42,28.87
accept Infusion of Hope##92136 |goto Scarlet Halls Arator/0 41.42,28.87
step
talk Alonsus Faol##237602
Select _"<Tell Alonsus you are ready to return to Silvermoon.>"_ |gossip 132903
Tell Alonsus You're Ready to Depart |q 92136/1 |goto Scarlet Halls Arator/0 41.42,28.87
step
Watch the dialogue
click Borrowed Portal
Take the Portal to Silvermoon |q 92136/2 |goto Scarlet Halls Arator/0 40.93,28.86
step
talk Alonsus Faol##251355
turnin Infusion of Hope##92136 |goto Isle of Quel Danas M/0 52.55,55.88
accept Relinquishing Relics##86902 |goto Isle of Quel Danas M/0 52.55,55.88
step
talk Taelia Fordragon##248323
|tip Inside the building.
Select _"I have a relic to sustain you. It's Mara Fordragon's prayer book."_ |gossip 134818
Give a Relic to Taelia |q 86902/2 |goto Isle of Quel Danas M/0 52.94,45.79
step
talk Valunei##248326
|tip Inside the building.
Select _"Vindicator Maraad found peace and strength from this meditation crystal."_ |gossip 134855
Give a Relic to Valunei |q 86902/3 |goto Isle of Quel Danas M/0 53.45,45.30
step
talk Salandria##248322
|tip Inside the building.
Select _"Take this sword. It has a great deal of Light within it, but needs a new cause."_ |gossip 134853
Give a Relic to Salandria |q 86902/4 |goto Isle of Quel Danas M/0 52.05,45.62
step
talk Mehlar Dawnblade##248321
|tip Inside the building.
Select _"This is Uther's kit from his work as a healer. You should have it, and let its Light support you."_ |gossip 134854
Give a Relic to Mehlar |q 86902/5 |goto Isle of Quel Danas M/0 51.69,44.95
step
talk Prophet Velen##239623
|tip Inside the building.
Select _"<Give Velen the remaining relics to distribute.>"_ |gossip 136038
Give the Remaining Relics to Velen |q 86902/6 |goto Isle of Quel Danas M/0 52.48,45.87
step
talk Alonsus Faol##251355
turnin Relinquishing Relics##86902 |goto Isle of Quel Danas M/0 52.55,55.89
accept The Sunwalker Path##86845 |goto Isle of Quel Danas M/0 52.55,55.89
step
talk Alonsus Faol##251355
Select _"<Tell Faol you are ready to go to Hammerfall.>"_ |gossip 135480
Tell Alonsus You're Ready to Depart |q 86845/1 |goto Isle of Quel Danas M/0 52.55,55.89
step
Watch the dialogue
click Borrowed Portal
Take the Portal to Hammerfall |q 86845/2 |goto Isle of Quel Danas M/0 52.50,55.98
step
talk Sunwalker Dezco##245186
turnin The Sunwalker Path##86845 |goto Arathi Highlands/0 68.92,37.68
accept A Humble Servant##91000 |goto Arathi Highlands/0 68.92,37.68
accept Resupplying our Suppliers##86846 |goto Arathi Highlands/0 68.92,37.68
stickystart "Aid_Hammerfall"
step
talk Jun'ha##232033
|tip Inside the building.
Select _"Dezco sent these supplies for you."_ |gossip 134006
Deliver the Tailoring Supplies for Jun'ha |q 86846/1 |goto Arathi Highlands/0 68.06,37.73
step
talk Tunkk##232036
|tip Inside the building.
Select _"Dezco sent these supplies for you."_ |gossip 134008
Deliver the Leatherworking Supplies for Tunkk |q 86846/3 |goto Arathi Highlands/0 70.06,35.60
step
talk Slagg##232031
Select _"Dezco sent these supplies for you."_ |gossip 134003
Deliver the Butcher Supplies for Slagg |q 86846/2 |goto Arathi Highlands/0 69.17,34.85
step
talk Keena##232035
Select _"Dezco sent these supplies for you."_ |gossip 138704
Deliver the Trade Goods for Keena |q 86846/5 |goto Arathi Highlands/0 69.26,33.42
step
talk Mu'uta##232037
Select _"Dezco sent these supplies for you."_ |gossip 134042
Deliver the Bowyer Supplies for Mu'uta |q 86846/4 |goto Arathi Highlands/0 68.34,31.87
step
label "Aid_Hammerfall"
clicknpc Injured Peon##245257+
|tip Sitting orcs.
click Various Objects
|tip You may be attacked.
Aid Hammerfall |q 91000/1 |goto Arathi Highlands/0 68.68,35.17
step
talk Sunwalker Dezco##247299
turnin A Humble Servant##91000 |goto Arathi Highlands/0 68.54,32.20
turnin Resupplying our Suppliers##86846 |goto Arathi Highlands/0 68.54,32.20
accept Gathering Plowshares##89338 |goto Arathi Highlands/0 68.54,32.20
stickystart "Collect_Forgotten_Skullcleavers"
step
click Fallen Longsword+
|tip Swords stuck in the ground.
collect 4 Fallen Longsword##238516 |q 89338/2 |goto Arathi Highlands/0 67.03,43.37
step
label "Collect_Forgotten_Skullcleavers"
click Forgotten Skullcleaver+
|tip Axes stuck in the ground.
collect 4 Forgotten Skullcleaver##238515 |q 89338/3 |goto Arathi Highlands/0 67.03,43.37
step
talk Sunwalker Dezco##247299
turnin Gathering Plowshares##89338 |goto Arathi Highlands/0 68.54,32.20
step
talk Alonsus Faol##240747
accept One Final Relic##86822 |goto Arathi Highlands/0 68.65,32.03
step
talk Alonsus Faol##240747
Select _"Let's fly to Blackrock."_ |gossip 132918
Let Alonsus Know You Are Ready |q 86822/1 |goto Arathi Highlands/0 68.65,32.03
step
Watch the dialogue
talk Alonsus Faol##246863
Select _"What are we here for?"_ |gossip 138706 |noautogossip
Speak with Alonsus Faol |q 86822/2 |goto Burning Steppes/0 33.40,48.28
step
talk Danath Trollbane##242120
turnin One Final Relic##86822 |goto Burning Steppes/0 33.45,48.62
step
talk Eitrigg##237224
accept The Dark Horde##86823 |goto Burning Steppes/0 33.54,48.62
accept None Left Standing##86824 |goto Burning Steppes/0 33.54,48.62
accept Faithful Servant, Faithless Cause##86825 |goto Burning Steppes/0 33.54,48.62
stickystart "Burn_Dark_Horde_Banners"
stickystart "Slay_Blackrock_Soldiers"
step
kill Mar'kag##245718 |q 86825/1 |goto Burning Steppes/0 37.45,54.55
|tip Armored ogre.
|tip Walks around.
|tip On your minimap.
Recover the Relic Fragment |q 86825/2 |goto Burning Steppes/0 37.45,54.55
|tip Loot him.
He spawns at [Burning Steppes/0 30.79,53.98]
step
label "Burn_Dark_Horde_Banners"
use Torch##239130
|tip On Dark Horde Banners.
|tip Wooden poles with red flags.
|tip On your minimap. |notinsticky
Burn #6# Dark Horde Banners |q 86824/1 |goto Burning Steppes/0 37.56,52.58
step
label "Slay_Blackrock_Soldiers"
kill Blackrock Slayer##7027, Blackrock Sorcerer##7026, Firegut Reaver##48120, Smolderthorn Shaman##48118
Slay #16# Blackrock Soldiers |q 86823/1 |goto Burning Steppes/0 37.39,53.84
step
talk Eitrigg##237224
turnin The Dark Horde##86823 |goto Burning Steppes/0 33.53,48.63
turnin None Left Standing##86824 |goto Burning Steppes/0 33.53,48.63
turnin Faithful Servant, Faithless Cause##86825 |goto Burning Steppes/0 33.53,48.63
accept Still Scouting##91391 |goto Burning Steppes/0 33.53,48.63
step
talk Kurdran Wildhammer##237268
|tip On the bridge.
turnin Still Scouting##91391 |goto Burning Steppes/0 21.13,39.80
accept Due Recognition##86827 |goto Burning Steppes/0 21.13,39.80
accept Nagosh the Scarred##86826 |goto Burning Steppes/0 21.13,39.80
accept Disarm the Dark Horde##91842 |goto Burning Steppes/0 21.13,39.80
stickystart "Destroy_Weapon_Racks"
stickystart "Collect_Stone_Guards_Badges"
step
Enter Blackrock Mountain |goto Burning Steppes/0 20.98,37.84 < 15 |walk |only if not (subzone("Blackrock Mountain") or subzone("The Molten Span"))
kill Nagosh the Scarred##245719 |q 86826/1 |goto Burning Steppes/14 65.63,54.14
|tip Walks around.
|tip On your minimap.
|tip Inside Blackrock Mountain.
Recover the Relic Fragment |q 86826/2 |goto Burning Steppes/14 65.63,54.14
|tip Loot him.
step
label "Destroy_Weapon_Racks"
click Dark Horde Weapon Rack+
|tip Inside Blackrock Mountain. |notinsticky
Destroy #8# Weapon Racks |q 91842/1 |goto Burning Steppes/14 45.91,80.05
step
label "Collect_Stone_Guards_Badges"
kill Dark Horde Warrior##237322, Hulking Crusher##237548
|tip Inside Blackrock Mountain. |notinsticky
collect 8 Stone Guard's Badge##247218 |q 86827/1 |goto Burning Steppes/14 45.91,80.05
step
Leave Blackrock Mountain |goto Burning Steppes/14 51.28,95.68 < 15 |walk |only if (subzone("Blackrock Mountain") or subzone("The Molten Span"))
talk Kurdran Wildhammer##237268
|tip On the bridge.
turnin Due Recognition##86827 |goto Burning Steppes/0 21.13,39.80
turnin Nagosh the Scarred##86826 |goto Burning Steppes/0 21.13,39.80
turnin Disarm the Dark Horde##91842 |goto Burning Steppes/0 21.13,39.80
accept Not Just a Troll's Bane##86828 |goto Burning Steppes/0 21.13,39.80
step
talk Danath Trollbane##242120
turnin Not Just a Troll's Bane##86828 |goto Burning Steppes/0 31.57,37.60
accept Warriors without a Warlord##86831 |goto Burning Steppes/0 31.57,37.60
accept A True Horde of Dark Horde##86830 |goto Burning Steppes/0 31.57,37.60
stickystart "Defeat_Dark_Horde_Sergeants"
stickystart "Defeat_Dark_Horde_Troops"
step
kill Warlord Grazla##242343
|tip Walks around.
|tip Inside the building.
Defeat the Dark Horde Leader |q 86831/1 |goto Burning Steppes/0 31.08,34.00
Recover the Third Fragment |q 86831/2 |goto Burning Steppes/0 31.08,34.00
|tip Loot her.
step
label "Defeat_Dark_Horde_Sergeants"
kill Blackrock Sergeant##48201+
|tip Orcs riding wolves.
Defeat #3# Dark Horde Sergeants |q 86830/2 |goto Burning Steppes/0 36.20,36.62
step
label "Defeat_Dark_Horde_Troops"
kill Dark Horde Trainee##248160, Firegut Apprentice##248159, Smolderthorn Cadet##248158
Defeat #15# Dark Horde Troops |q 86830/1 |goto Burning Steppes/0 36.20,36.62
step
talk Danath Trollbane##242120
turnin Warriors without a Warlord##86831 |goto Burning Steppes/0 31.58,37.60
turnin A True Horde of Dark Horde##86830 |goto Burning Steppes/0 31.58,37.60
accept A Landmark Moment##86829 |goto Burning Steppes/0 31.58,37.60
step
talk Alonsus Faol##248263
turnin A Landmark Moment##86829 |goto Burning Steppes/0 36.83,51.03
step
talk Kurdran Wildhammer##248250
accept Unstoppable Force##91726 |goto Burning Steppes/0 36.78,51.08
step
talk Kurdran Wildhammer##248250
Select _"What happened?"_ |gossip 134709
Ask Kurdran What Happened |q 91726/1 |goto Burning Steppes/0 36.78,51.08
step
talk Arator##237508
Select _"<Ask Arator how he is doing.>"_ |gossip 136312
Check on Arator |q 91726/2 |goto Burning Steppes/0 36.71,51.09
step
talk Kurdran Wildhammer##248250
turnin Unstoppable Force##91726 |goto Burning Steppes/0 36.78,51.08
step
talk Arator##237508
accept A Worthy Forge##86832 |goto Burning Steppes/0 36.70,51.09
step
Watch the dialogue
click Borrowed Portal
Take the Portal to Silvermoon |q 86832/1 |goto Burning Steppes/0 36.77,50.87
step
talk Alonsus Faol##237511
turnin A Worthy Forge##86832 |goto Silvermoon City M/0 45.77,65.48
accept A Bulwark Remade##86833 |goto Silvermoon City M/0 45.77,65.48
step
talk Arator##237510
Select _"I'm ready!"_ |gossip 133121
Speak with Arator |q 86833/1 |goto Silvermoon City M/0 40.47,66.01
step
Watch the dialogue
|tip Follow Arator's instructions.
|tip Click the objects nearby.
Assist Arator in Reforging |q 86833/2 |goto Silvermoon City M/0 40.47,66.01
step
talk Arator##237510
Select _"<Ask Arator how he is.>"_ |gossip 136359
Watch the dialogue
Check on Arator |q 86833/3 |goto Silvermoon City M/0 40.47,66.01
step
talk Arator##237510
turnin A Bulwark Remade##86833 |goto Silvermoon City M/0 40.47,66.01
step
talk Kurdran Wildhammer##253125
accept The Arcantina##86903 |goto Silvermoon City M/0 40.70,66.06
step
use Key to the Arcantina##248131
Teleport to the Arcantina |q 86903/1
step
talk Bartender Bob##250495
buy A Round of Drinks##254838 |n
Buy a Round |q 86903/2 |goto Arcantina/0 62.72,67.02
step
click Drink+
|tip Yellow mugs.
Serve #4# Drinks |q 86903/3 |goto Arcantina/0 50.64,58.66
|tip You may need to relog or wait for this objective to become available.
step
talk Arator##237502
Select _"What are you going to do with the shield?"_ |gossip 134861 |noautogossip
Watch the dialogue
Speak with Arator |q 86903/4 |goto Arcantina/0 52.02,60.43
step
talk Arator##253988
turnin The Arcantina##86903 |goto Arcantina/0 52.02,60.43
accept The Journey Ends##91787 |goto Arcantina/0 52.02,60.43
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin The Journey Ends##91787 |goto Silvermoon City M/0 45.44,70.34
step
talk Commander Koruth Mountainfist##248631
|tip Upstairs inside the building.
accept Deepening Shadows##91854 |goto Silvermoon City M/0 45.37,70.14
|tip If this quest is not offered, skip this step.
stickystart "Rebuff_Doomsayers"
step
talk Sin'dorei Fruit Vendor##249174
Select _"<Explain the events of the Sunwell.>"_ |gossip 135112
De-escalate the City Dispute |q 91854/1 |goto Silvermoon City M/0 47.18,59.33
|only if haveq(91854) or completedq(91854)
step
talk Commander Venel Lightblood##248630
Select _"Why are you seizing people?"_ |gossip 135203
Select _"Arresting citizens is not why the Vanguard are here."_ |gossip 135204
Release the Prisoner |q 91854/2 |goto Silvermoon City M/0 45.77,81.61
|only if haveq(91854) or completedq(91854)
step
label "Rebuff_Doomsayers"
talk Doomsayer##248826+
|tip Blood elves in red robes wearing wooden signs.
Select _"<Hail the victories of the Vanguard and sin'dorei you have seen so far.>"_ |gossip 135052
|tip They may attack you.
Rebuff #5# Doomsayers |q 91854/3 |goto Silvermoon City M/0 42.10,70.33
|only if haveq(91854) or completedq(91854)
step
talk Commander Koruth Mountainfist##248631
|tip Upstairs inside the building.
turnin Deepening Shadows##91854 |goto Silvermoon City M/0 45.37,70.14
|only if haveq(91854) or completedq(91854)
step
|next "Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Midnight Intro & Campaign (Story Only)" |only if level < 90
|next "Leveling Guides\\Midnight (80-90)\\The War of Light and Shadow Campaign" |only if level >= 90
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Voidstorm (Story Only)",{
condition_valid=function() return level >= 86  or achieved(42045) end,
condition_valid_msg="You must earn the Midnight achievement by completing the story only campaign and hitting 90 once or reach at least level 86 to begin this guide.",
},[[
step
Click the Complete Quest Box
turnin Adventuring in Midnight##94993
|only if readyq(94993)
step
Watch the dialogue
talk Magister Umbric##235386
|tip Upstairs inside the building.
turnin Voidstorm##89388 |goto Silvermoon City M/0 45.31,70.17 |only if haveq(89388) or completedq(89388)
accept Magisters' Terrace: Homecoming##86543 |goto Silvermoon City M/0 45.31,70.17
|only if haveq(89388) or completedq(89388)
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
accept Rising Storm##92061 |goto Silvermoon City M/0 45.44,70.34
step
talk High Exarch Turalyon##250580
|tip Up on the platform.
Select _"Lor'themar requires a report."_ |gossip 135523
Consult High Exarch Turalyon |q 92061/1 |goto Silvermoon City M/0 38.77,47.00
step
talk General Amias Bellamy##250587
Select _"Lor'themar requires a report."_ |gossip 135530
Consult the Vanguard of the Light |q 92061/2 |goto Silvermoon City M/0 45.65,46.41
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Rising Storm##92061 |goto Silvermoon City M/0 45.45,70.34
step
talk Magister Umbric##235386
|tip Upstairs inside the building.
accept Magisters' Terrace: Homecoming##86543 |goto Silvermoon City M/0 45.31,70.16
step
Meet Magister Umbric on the Isle of Quel'Danas |q 86543/1 |goto Isle of Quel Danas M/0 62.11,14.55
step
talk Magister Umbric##235395
Select _"<Tell Umbric you'd like to enter Magisters' Terrace with assistance.>"_ |gossip 131939
Talk to Umbric to Queue for the Follower Dungeon |q 86543/2 |goto Isle of Quel Danas M/0 62.11,14.55
step
Retrieve the Cynosure of Twilight from Magisters' Terrace |q 86543/3
|tip Complete the follower dungeon.
step
Leave the Follower Dungeon |complete not zone("Magisters Terrace M") |q 86543
step
talk Magister Umbric##235405
turnin Magisters' Terrace: Homecoming##86543 |goto Silvermoon City M/0 35.15,65.85
accept No Fear of the Dark##86549 |goto Silvermoon City M/0 35.15,65.85
step
click Shadow Focus
Begin Calibrating the Shadow Focus |havebuff Calibrating##1232060 |goto Silvermoon City M/0 35.01,65.45 |q 86549
step
click Shadow Focus
Connect the Shadow Focus |q 86549/1 |goto Silvermoon City M/0 35.42,65.12 |count 1 hidden
step
click Shadow Focus
Begin Calibrating the Shadow Focus |havebuff Calibrating##1232059 |goto Silvermoon City M/0 35.42,65.12 |q 86549
step
click Shadow Focus
Connect the Shadow Focus |q 86549/1 |goto Silvermoon City M/0 35.44,66.00 |count 2 hidden
step
click Shadow Focus
Begin Calibrating the Shadow Focus |havebuff Calibrating##1232058 |goto Silvermoon City M/0 35.44,66.00 |q 86549
step
click Shadow Focus
Connect the Shadow Focus |q 86549/1 |goto Silvermoon City M/0 35.01,65.45 |count 3 hidden
step
click Portal to Voidstorm
Enter the Portal |q 86549/3 |goto Silvermoon City M/0 35.28,66.18
step
talk Magister Umbric##235411
turnin No Fear of the Dark##86549 |goto Voidstorm/0 34.25,60.45
accept Save a Piece of Mind##86558 |goto Voidstorm/0 34.25,60.45
step
Watch the dialogue
talk Lothraxion##235486
accept A Matter of Strife and Death##86557 |goto Voidstorm/0 34.37,60.53
stickystart "Slay_Ingress_Monsters"
step
click Shadestar Locus
Activate the Shadestar Locus |q 86558/1 |goto Voidstorm/0 34.67,58.78 |count 1 hidden
step
click Shadestar Locus
Activate the Shadestar Locus |q 86558/1 |goto Voidstorm/0 36.21,57.98 |count 2 hidden
step
click Shadestar Locus
Activate the Shadestar Locus |q 86558/1 |goto Voidstorm/0 36.21,60.11 |count 3 hidden
step
label "Slay_Ingress_Monsters"
kill Cunning Harrower##235416, Hungry Kilivore##235415, Hungry Kilivore##242369, Ravenous Shredclaw##235414
Slay #12# Ingress Monsters |q 86557/1 |goto Voidstorm/0 35.35,59.50
step
talk Lothraxion##235522
turnin Save a Piece of Mind##86558 |goto Voidstorm/0 36.95,58.65
turnin A Matter of Strife and Death##86557 |goto Voidstorm/0 36.95,58.65
accept The Far, Far Frontier##86559 |goto Voidstorm/0 36.95,58.65
step
talk Lothraxion##235522
Select _"<Tell Lothraxion you're ready to survey Voidstorm.>"_ |gossip 132585
Watch the dialogue
Survey Voidstorm |q 86559/1 |goto Voidstorm/0 36.95,58.65
step
talk Alleria Windrunner##235521
Select _"<Ask Alleria how you can help.>"_ |gossip 132609
Speak with Alleria |q 86559/2 |goto Voidstorm/0 36.94,58.75
step
talk Lothraxion##235530
turnin The Far, Far Frontier##86559 |goto Voidstorm/0 31.28,54.40
accept Dancing with Death##86562 |goto Voidstorm/0 31.28,54.40
step
talk Alleria Windrunner##235532
accept A Strange, Different World##86561 |goto Voidstorm/0 31.34,54.34
stickystart "Collect_Shadowgraft_Fragments"
step
kill Scytheryp the Slicer##243142 |q 86562/3 |goto Voidstorm/0 27.84,53.53
step
kill Vathen the Rebel##243141 |q 86562/2 |goto Voidstorm/0 26.10,53.17
step
kill Voidgrasper##243140 |q 86562/1 |goto Voidstorm/0 28.06,50.33
step
label "Collect_Shadowgraft_Fragments"
kill Clawing Voidwalker##235561, Duskcry Voidwalker##235560, Hovering Siphoid##235563, Lurking Creepling##235564, Scytheryp the Slicer##243142, Sundereth the Caller##244272, Towering Ultradon##238409, Vathen the Rebel##243141, Voidgrasper##243140, Whipwind Shredclaw##238369
collect 12 Shadowgraft Fragment##242390 |q 86561/1 |goto Voidstorm/0 28.76,52.56
step
talk Lothraxion##235535
turnin Dancing with Death##86562 |goto Voidstorm/0 27.44,50.96
turnin A Strange, Different World##86561 |goto Voidstorm/0 27.44,50.96
accept No Prayer for the Wicked##86565 |goto Voidstorm/0 27.44,50.96
step
click Grafting Metal
Watch the dialogue
Modify the Shadowgraft Fragments |q 86565/1 |goto Voidstorm/0 27.44,51.02
step
kill Sinewshredder##235570 |q 86565/2 |goto Voidstorm/0 26.22,51.54
|tip Up on the platform.
step
click Stellar Vortex
Pursue Domanaar Through the Stellar Vortex |q 86565/3 |goto Voidstorm/0 26.40,51.16
step
talk Lothraxion##235606
turnin No Prayer for the Wicked##86565 |goto Voidstorm/0 35.37,59.09
accept Reliable Enemies##86536 |goto Voidstorm/0 35.37,59.09
step
talk Decimus##235607
Select _"<Apply force.>"_ |gossip 132998 |noautogossip
kill Decimus##235607
Interrogate Decimus |q 86536/1 |goto Voidstorm/0 35.37,58.99
step
talk Severenar Stargazer##240683
fpath The Ingress |goto Voidstorm/0 36.91,58.98
step
Meet Up at the Overlook Above the Ethereum Refinery |q 86536/2 |goto Voidstorm/0 36.72,72.93
step
talk Decimus##235392
Select _"How did Xal'atath take control of the ethereals?"_ |gossip 135469
Talk to Decimus |q 86536/3 |goto Voidstorm/0 36.72,72.93
step
talk Alleria Windrunner##235389
turnin Reliable Enemies##86536 |goto Voidstorm/0 36.64,72.97
accept Work Disruption##86531 |goto Voidstorm/0 36.64,72.97
step
talk Lothraxion##235394
accept First, The Shells##86530 |goto Voidstorm/0 36.72,73.07
stickystart "Collect_Empty_Manacells"
stickystart "Disrupt_The_Manaforge"
step
kill Manaforge Netherdrifter##236859, Manaforge Siphoner##236857
|tip Siphoners and Netherdrifters.
|tip Loot them.
accept A Cracked Holokey##86528 |goto Voidstorm/0 36.12,76.21
step
label "Collect_Empty_Manacells"
kill Manaforge Netherdrifter##236859, Manaforge Siphoner##236857, Manaforge Warder##237886, Recommissioned Mech##238581
collect 5 Empty Manacell##237380 |q 86530/1 |goto Voidstorm/0 36.12,76.21
step
label "Disrupt_The_Manaforge"
kill Devouring Enforcer##236860, Manaforge Netherdrifter##236859, Manaforge Siphoner##236857, Manaforge Warder##237886, Netherbreaker##241040, Recommissioned Mech##238581
clicknpc Unraveling Captive##235710+
|tip Friendly NPCs in bubbles.
click Various Objects
Disrupt the Manaforge |q 86531/1 |goto Voidstorm/0 36.12,76.21
step
talk Alleria Windrunner##235717
turnin Work Disruption##86531 |goto Voidstorm/0 36.28,80.43
turnin A Cracked Holokey##86528 |goto Voidstorm/0 36.28,80.43
step
talk Lothraxion##235713
turnin First, The Shells##86530 |goto Voidstorm/0 36.26,80.59
accept Second, The Fuel##86538 |goto Voidstorm/0 36.26,80.59
step
talk Alleria Windrunner##235717
accept Network Insecurity##86537 |goto Voidstorm/0 36.28,80.43
stickystart "Collect_Arcane_Remnants"
step
click Ethereal Console
Decode the First Message |q 86537/1 |goto Voidstorm/0 34.20,80.05
step
click Ethereal Console
Decode the Second Message |q 86537/2 |goto Voidstorm/0 33.52,81.57
step
click Ethereal Console
Decode the Third Message |q 86537/3 |goto Voidstorm/0 33.67,79.39
step
click Ethereal Console
|tip You will be attacked.
|tip Inside the building.
Decode the Final Message |q 86537/4 |goto Voidstorm/0 34.61,77.97
step
kill Tempest Keeper##235388
|tip Loot him.
|tip Inside the building.
Recover the Final Message |q 86537/5 |goto Voidstorm/0 34.57,78.01
step
label "Collect_Arcane_Remnants"
kill Conflux Monstrosity##236864, Forge Manacapturer##236093, Mana Coalescence##236863, Manaforge Engineer##238588, Manaforge Netherrider##241041
click Arcane Remnant+
|tip Small metal and glass pyramids.
collect 50 Arcane Remnant##237744 |q 86538/1 |goto Voidstorm/0 33.72,79.18
step
talk Alleria Windrunner##235717
turnin Network Insecurity##86537 |goto Voidstorm/0 36.28,80.43
step
Watch the dialogue
talk Lothraxion##235713
turnin Second, The Fuel##86538 |goto Voidstorm/0 36.27,80.59
accept A Naaru!##86539 |goto Voidstorm/0 36.26,80.59
step
talk Lothraxion##235648
turnin A Naaru!##86539 |goto Voidstorm/0 39.35,82.21
accept Third, Blow It Up##86540 |goto Voidstorm/0 39.35,82.21
step
talk Alleria Windrunner##235660
accept Agents of Darkness##88768 |goto Voidstorm/0 39.40,82.20
step
talk Decimus##235650
accept Just In Case...##86541 |goto Voidstorm/0 39.45,82.15
stickystart "Combine_The_Fragments"
step
kill Insatiable Watcher##239807 |q 88768/2 |goto Voidstorm/0 41.13,85.03
step
kill Darkened Unbound##239808 |q 88768/1 |goto Voidstorm/0 38.73,87.43
step
click Overcharged Manacell
|tip On the platform.
Place an Overcharged Manacell |q 86540/1 |goto Voidstorm/0 37.41,88.34 |count 1 hidden
step
click Overcharged Manacell
|tip On the platform.
Place an Overcharged Manacell |q 86540/1 |goto Voidstorm/0 37.45,88.76 |count 2 hidden
step
click Overcharged Manacell
|tip On the platform.
Place an Overcharged Manacell |q 86540/1 |goto Voidstorm/0 37.35,88.59 |count 3 hidden
step
click Overcharged Manacell
|tip On the platform.
Place an Overcharged Manacell |q 86540/1 |goto Voidstorm/0 37.23,88.40 |count 4 hidden
step
click Overcharged Manacell
|tip On the platform.
Place an Overcharged Manacell |q 86540/1 |goto Voidstorm/0 37.13,88.48 |count 5 hidden
step
kill Nethermade Protector##244153 |q 88768/3 |goto Voidstorm/0 37.77,85.45
step
label "Combine_The_Fragments"
kill Assimilated Netherdrifter##239611, Assimilated Ultradon##239923, Collapsing Voidcaller##236926, Entropy Orbiter##236927, Lightbreaker##241133, Stasis Channeler##236924
collect 8 Fragmented Keystone##237895+ |n
use Fragmented Keystone##237895
Combine the Fragments |q 86541/2 |goto Voidstorm/0 38.94,85.62
step
Enter the building |goto Voidstorm/0 38.55,83.81 < 15 |walk |only if not (subzone("Nexus-Point Mid'Ar") and indoors())
talk Alleria Windrunner##235662
|tip Inside the building.
turnin Agents of Darkness##88768 |goto Voidstorm/0 37.96,83.35
step
talk Lothraxion##235649
|tip Inside the building.
turnin Third, Blow It Up##86540 |goto Voidstorm/0 37.96,83.24
step
talk Decimus##235652
|tip Inside the building.
turnin Just In Case...##86541 |goto Voidstorm/0 37.92,83.16
step
talk Lothraxion##235649
|tip Inside the building.
accept Flicker in the Dark##86542 |goto Voidstorm/0 37.97,83.23
step
click Shield Control
|tip Inside the building.
Override the Shield Console |q 86542/1 |goto Voidstorm/0 37.92,83.32
step
Return to T'era |q 86542/2 |goto Voidstorm/0 38.58,83.87
step
kill 15 Dark Splinter##236923 |q 86542/3 |goto Voidstorm/0 38.72,85.70
step
kill T'era##240272
Subdue T'era |q 86542/4 |goto Voidstorm/0 38.70,85.57
step
talk Alleria Windrunner##235664
turnin Flicker in the Dark##86542 |goto Voidstorm/0 41.61,78.79
step
talk Arator##241109
accept Overwhelmed##89249 |goto Voidstorm/0 41.62,78.79
step
talk Arator##235724
turnin Overwhelmed##89249 |goto Voidstorm/0 41.71,74.71
accept Post-Mortem##86544 |goto Voidstorm/0 41.71,74.71
step
talk Riftwalker Hieron##239724
|tip Inside the tent.
Select _"<Ask for his report on the wilds.>"_ |gossip 132751
Receive Hieron's Report |q 86544/2 |goto Voidstorm/0 41.83,74.77
step
click Overwhelmed Scout##240546
Assist the Overwhelmed Scout |q 86544/4 |goto Voidstorm/0 41.66,74.57 |count 1 hidden
step
click Overwhelmed Scout##240546
Assist the Overwhelmed Scout |q 86544/4 |goto Voidstorm/0 42.11,75.27 |count 2 hidden
step
click Overwhelmed Scout##240546
|tip You will be attacked.
Assist the Overwhelmed Scout |q 86544/4 |goto Voidstorm/0 42.34,75.44 |count 3 hidden
step
talk Riftblade Maella##240538
|tip Inside the tent.
Select _"<Ask for her report on the wilds.>"_ |gossip 132752
Receive Maella's Report |q 86544/3 |goto Voidstorm/0 42.18,74.25
step
talk Vyana Vespersong##244636
fpath Locus Point |goto Voidstorm/0 42.29,73.73
step
talk Decimus##235653
Select _"Explain yourself."_ |gossip 132757
Check with Decimus |q 86544/6 |goto Voidstorm/0 41.64,73.18
step
talk Lothraxion##235725
Select _"<Ask how Lothraxion is doing.>"_ |gossip 132756
Check with Lothraxion |q 86544/5 |goto Voidstorm/0 41.46,73.78
step
talk Arator##235724
turnin Post-Mortem##86544 |goto Voidstorm/0 41.72,74.71
step
Watch the dialogue
talk Arator##235724
accept The Light's Brand##86545 |goto Voidstorm/0 41.72,74.71
step
Find Lothraxion and Decimus on the Outskirts of Locus Point |q 86545/1 |goto Voidstorm/0 41.04,72.74
step
Gather and Deliver Burning Light to Arator |q 86545/3 |goto Voidstorm/0 41.04,72.74
|tip Walk into {o}Burning Light{} to collect them.
|tip Yellow orbs nearby.
|tip Bring them to this location.
|tip Talk to {o}Arathor{} if you need healing.
step
Watch the dialogue
click Decimus##240690
Reveal Decimus |q 86545/4 |goto Voidstorm/0 41.16,72.66
step
talk Alleria Windrunner##235726
turnin The Light's Brand##86545 |goto Voidstorm/0 41.14,72.72
step
talk Decimus##240691
accept Friend or Fiend##86509 |goto Voidstorm/0 41.16,72.65
step
Travel to the Howling Ridge |q 86509/1 |goto Voidstorm/0 51.41,72.86
step
talk Decimus##235697
turnin Friend or Fiend##86509 |goto Voidstorm/0 51.41,72.86
accept Domus Penumbra##86510 |goto Voidstorm/0 51.41,72.86
step
talk Void Researcher Anomander##248328
Select _"<Inquire about Anomander's research.>"_ |gossip 138232
Speak to Void Researcher Anomander |q 86510/1 |goto Voidstorm/0 52.59,72.90
step
click Well-Gnawed Bones
Help Umbric Establish a Portal |q 86510/3 |goto Voidstorm/0 51.62,70.03
step
click Fresh Meat
Aid Flight Master Malloril |q 86510/4 |goto Voidstorm/0 51.23,69.29
step
talk Riftwalker Malloril##235703
fpath Howling Ridge |goto Voidstorm/0 51.14,69.26
step
talk Hospitus##235701
|tip Inside the building.
Speak to Innkeeper Hospitus |q 86510/2 |goto Voidstorm/0 53.16,68.17
step
talk Decimus##235697
turnin Domus Penumbra##86510 |goto Voidstorm/0 51.03,67.90
accept The Lay of the Beast##90571 |goto Voidstorm/0 51.03,67.90
step
click Ciphus##238289
Assume Control of Decimus' Pet |invehicle |goto Voidstorm/0 50.97,68.00 |q 90571
step
Watch the dialogue
Travel to the Approach |complete subzone("The Approach") |q 90571
step
_NOTE:_
During the Next Steps
|tip Avoid {o}Hunting Voidscythes{}.
|tip Flying with blue circles above them.
Click Here to Continue |confirm |q 90571
step
Scout the Devouring Citadel |q 90571/2 |goto Voidstorm/0 47.51,61.52 |count 1 hidden
|tip Use the {o}Scry{} ability.
|tip Near the bouncing blue arrow.
step
Scout the Devouring Citadel |q 90571/2 |goto Voidstorm/0 49.32,58.96 |count 2 hidden
|tip Use the {o}Scry{} ability.
|tip Near the bouncing blue arrow.
|tip Up on the platform.
step
Scout the Devouring Citadel |q 90571/2 |goto Voidstorm/0 51.40,55.93 |count 3 hidden
|tip Use the {o}Scry{} ability.
|tip Near the bouncing blue arrow.
step
Watch the dialogue
Return to Decimus |outvehicle |q 90571
step
talk Decimus##235697
turnin The Lay of the Beast##90571 |goto Voidstorm/0 51.03,67.89
step
talk Alleria Windrunner##238296
accept Edge of the Abyss##86511 |goto Voidstorm/0 51.06,68.02
step
talk Riftblade Maella##239349
Select _"<Hear the scouting report.>"_ |gossip 132535
Watch the dialogue
Listen to the Scouting Report |q 86511/1 |goto Voidstorm/0 54.35,74.26
step
talk Alleria Windrunner##235471
turnin Edge of the Abyss##86511 |goto Voidstorm/0 54.36,74.29
step
talk Decimus##235633
accept The Harvest##86512 |goto Voidstorm/0 54.35,74.35
step
talk Arator##235469
accept Face the Tide##86513 |goto Voidstorm/0 54.30,74.32
stickystart "Seal_Void_Gates"
stickystart "Free_Captives"
stickystart "Attract_Torentias_Attention"
step
click Void-Tainted Flesh+
|tip Red blobs.
Destroy #4# Void-Tainted Flesh |q 86513/1 |goto Voidstorm/0 55.95,72.58
step
label "Seal_Void_Gates"
click Void Gate+
|tip Blue portals.
Seal #4# Void Gates |q 86513/2 |goto Voidstorm/0 55.95,72.58
step
label "Free_Captives"
click Cage+
|tip On your minimap.
Free #6# Captives |q 86513/3 |goto Voidstorm/0 55.95,72.58
step
label "Attract_Torentias_Attention"
kill Drifting Siphoid##240736, Hungering Voidwraith##235638, Marrowmouth Consumptor##242750, Ravenous Voidwalker##235639, Ravenous Voidwalker##238163, Scrabbling Voidspawn##235640, Siphoid Overlord##242666, Trench Shredclaw##238162, Trench Shredclaw##240089, Trench Stalker##240737
Attract Torentia's Attention |q 86512/1 |goto Voidstorm/0 55.95,72.58
step
talk Arator##236944
turnin Face the Tide##86513 |goto Voidstorm/0 55.62,72.73
step
talk Alleria Windrunner##236945
turnin The Harvest##86512 |goto Voidstorm/0 55.57,72.85
accept Lady of the Pit##86514 |goto Voidstorm/0 55.57,72.85
step
kill Torentia##235708
|tip Use the {o}Challenge Torentia{} button ability.
Defeat Torentia |q 86514/2 |goto Voidstorm/0 55.54,76.64
step
Watch the dialogue
|tip Inside the building.
click Torentia
collect Torentia's Sigil##238779 |q 86514/3 |goto Voidstorm/0 55.59,78.64
step
Consume Torentia's Sigil |q 86514/4 |goto Voidstorm/0 55.59,78.64
|tip Use the {o}Consume Torentia's Sigil{} button ability.
|tip Inside the building.
step
Enter the building |goto Voidstorm/0 60.77,74.30 < 15 |walk |only if not (subzone("Obscurion Citadel") and indoors())
talk Alleria Windrunner##235502
|tip Inside the building.
turnin Lady of the Pit##86514 |goto Voidstorm/0 60.79,73.62
accept All Become Prey##86516 |goto Voidstorm/0 60.79,73.62
step
talk Arator##235503
|tip Inside the building.
accept Vanished in the Void##86517 |goto Voidstorm/0 60.82,73.55
step
talk Lothraxion##235504
|tip Inside the building.
accept Hollow Hunger##86515 |goto Voidstorm/0 60.71,73.62
stickystart "Kill_Slavering_Ultradons"
step
Watch the dialogue
talk Riftblade Maella##238531
Select _"Regroup with Alleria and Arator."_ |gossip 132554
Find Riftblade Maella |q 86517/1 |goto Voidstorm/0 60.42,78.86
step
talk Lady Darkglen##241170
Select _"I'll find Hieron. Regroup with the others."_ |gossip 132555
Find Lady Darkglen |q 86517/2 |goto Voidstorm/0 61.18,80.81
step
talk Riftwalker Hieron##238530
|tip Inside the building.
Select _"Darkglen and Maella are fine."_ |gossip 132556
Find Riftwalker Hieron |q 86517/3 |goto Voidstorm/0 62.42,82.43
step
click Hieron's Journal
|tip Inside the building.
collect Hieron's Journal##240831 |q 86517/4 |goto Voidstorm/0 62.41,82.45
step
kill Severum##235495
|tip Inside the building.
collect Severum's Sigil##236752 |q 86515/1 |goto Voidstorm/0 64.17,75.61
step
Consume Severum's Sigil |q 86515/2 |goto Voidstorm/0 64.17,75.61
|tip Use the {o}Consume Severum's Sigil{} button ability.
|tip Inside the building.
step
label "Kill_Slavering_Ultradons"
kill Obscurion Subjugator##235637, Obscurion Tormentor##235636, Prowling Harrower##240492, Ravenous Voidwalker##240488, Scouring Voidshaper##243694, Void-Yoked Shredclaw##243658
click Slain Beast+
|tip Dead grey beasts.
collect Carrion Essence##237807+ |n
use Carrion Essence##237807+
|tip On {o}Slavering Ultradons{}.
|tip Large humanoid elite enemies.
|tip Weakens them.
kill 5 Slavering Ultradon##235498 |q 86516/2 |goto Voidstorm/0 59.97,75.61
step
Enter the building |goto Voidstorm/0 60.77,74.30 < 15 |walk |only if not (subzone("Obscurion Citadel") and indoors())
talk Arator##235503
|tip Inside the building.
turnin Vanished in the Void##86517 |goto Voidstorm/0 60.80,73.71
step
talk Alleria Windrunner##235502
|tip Inside the building.
turnin All Become Prey##86516 |goto Voidstorm/0 60.79,73.62
step
talk Lothraxion##235504
|tip Inside the building.
turnin Hollow Hunger##86515 |goto Voidstorm/0 60.71,73.62
step
talk Alleria Windrunner##235502
|tip Inside the building.
accept The Mantle of Predation##86518 |goto Voidstorm/0 60.79,73.62
step
talk Alleria Windrunner##235502
|tip Inside the building.
Select _"<Tell Alleria you're ready to claim the Mantle.>"_ |gossip 132795
Speak to Alleria when you're Ready |q 86518/2 |goto Voidstorm/0 60.79,73.62
step
click Vault Seal
|tip Inside the building.
Undo the Seal |q 86518/3 |goto Voidstorm/0 63.39,78.51 |count 1 hidden
step
click Vault Seal
|tip Inside the building.
Undo the Seal |q 86518/3 |goto Voidstorm/0 62.59,80.05 |count 2 hidden
step
click Terminas' Vault
Watch the dialogue
Claim the Mantle of Predation |q 86518/4 |goto Voidstorm/0 64.40,80.87
step
talk Alleria Windrunner##235715
turnin The Mantle of Predation##86518 |goto Voidstorm/0 60.34,76.39
accept Abyssus, Abyssum##86519 |goto Voidstorm/0 60.34,76.39
step
kill Baleful Subjugator##238399, Dwindling Wraith##240519, Enraged Ultradon##239374, Gaunt Harrower##243378, Scathing Voidcaller##239409, Starved Voidwalker##239373, Swarming Pitspawn##239380
|tip Use the button ability.
Slaughter #30# Enemies |q 86519/1 |goto Voidstorm/0 60.52,76.73
step
Watch the dialogue
kill Alleria Windrunner##238386
Fight Alleria Windrunner |q 86519/2 |goto Voidstorm/0 60.89,76.93
step
talk Alleria Windrunner##239574
turnin Abyssus, Abyssum##86519 |goto Voidstorm/0 60.09,76.19
accept Hunt the Light##86520 |goto Voidstorm/0 60.09,76.19
step
Travel to Nexus-Point Xenas |q 86520/1 |goto Voidstorm/0 64.10,61.84
step
talk Alleria Windrunner##235763
turnin Hunt the Light##86520 |goto Voidstorm/0 64.10,61.84
accept Nexus-Point Xenas: Eclipse##86521 |goto Voidstorm/0 64.10,61.84
step
talk Alleria Windrunner##235763
Select _"<Tell Alleria you're ready to enter Nexus-Point Xenas.>"_ |gossip 132672
Speak to Alleria to Queue for Follower Dungeon |q 86521/1 |goto Voidstorm/0 64.10,61.84
step
Enter Nexus-Point Xenas and Stop Lothraxion |q 86521/3
|tip Complete the follower dungeon.
step
_Inside the Nexus-Point Xenas Follower Dungeon:_
Watch the dialogue
|tip After killing the final boss.
click Void Portal
Leave the Follower Dungeon |complete not zone("Nexus Point Xenas") |q 86521
step
talk Decimus##243276
Select _"Shut it down!"_ |gossip 132673
Weaken the Storm |q 86521/4 |goto Voidstorm/0 45.93,64.61
step
talk Alleria Windrunner##235765
turnin Nexus-Point Xenas: Eclipse##86521 |goto Voidstorm/0 45.96,64.56
accept Daylight is Breaking##86522 |goto Voidstorm/0 45.96,64.56
step
click Portal to Silvermoon
Travel to Silvermoon City |q 86522/1 |goto Voidstorm/0 51.56,70.29
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Daylight is Breaking##86522 |goto Silvermoon City M/0 45.44,70.33
step
|next "Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Midnight Intro & Campaign (Story Only)" |only if level < 90
|next "Leveling Guides\\Midnight (80-90)\\The War of Light and Shadow Campaign" |only if level >= 90
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Midnight Intro & Campaign (Full Zone)",{
},[[
step
accept Midnight##91281 |goto Stormwind City/0 53.26,54.32
|tip Automatically.
|only if Alliance
step
Locate the Image of Lady Liadrin |q 91281/1 |goto Stormwind City/0 53.26,54.32
|only if Alliance
step
talk Image of Lady Liadrin##241677
turnin Midnight##91281 |goto Stormwind City/0 53.26,54.32
|only if Alliance
step
talk Image of Lady Liadrin##241677
accept A Voice from the Light##88719 |goto Stormwind City/0 53.26,54.32 |only if default
accept A Voice from the Light##88719 |goto Stormwind City/0 53.26,54.32 |noautoaccept |only if achieved(42045)
_Or_ |only if achieved(42045)
Select _"I have heard this tale before. <Skip the Midnight introduction and travel to the Sanctum of Light.>"_ |gossip 138201 |noautogossip |only if achieved(42045)
|tip This will skip the introductory portion of the campaign and start you at the first zone choice. |only if achieved(42045)
|only if Alliance
step
accept Midnight##91281 |goto Orgrimmar/1 52.97,77.46
|tip Automatically.
|only if Horde
step
Locate the Image of Lady Liadrin |q 91281/1 |goto Orgrimmar/1 53.43,77.32
|only if Horde
step
talk Image of Lady Liadrin##241677
turnin Midnight##91281 |goto Orgrimmar/1 53.43,77.32
|only if Horde
step
talk Image of Lady Liadrin##241677
accept A Voice from the Light##88719 |goto Orgrimmar/1 53.43,77.32 |only if default
accept A Voice from the Light##88719 |goto Orgrimmar/1 53.43,77.32 |noautoaccept |only if achieved(42045)
_Or_ |only if achieved(42045)
Select _"I have heard this tale before. <Skip the Midnight introduction and travel to the Sanctum of Light.>"_ |gossip 138201 |noautogossip |only if achieved(42045)
|tip This will skip the introductory portion of the campaign and start you at the first zone choice. |only if achieved(42045)
|only if Horde
step
use Light's Summon##239151
Travel to Quel'Danas |q 88719/2
step
talk Lady Liadrin##236692
turnin A Voice from the Light##88719 |goto Isle of Quel Danas (Intro)/0 48.49,38.37
accept Last Bastion of the Light##86769 |goto Isle of Quel Danas (Intro)/0 48.49,38.37
step
Watch the dialogue
|tip Follow Lady Liadrin.
talk Lady Liadrin##236693
turnin Last Bastion of the Light##86769 |goto Isle of Quel Danas (Intro)/0 46.00,44.36
accept Champions of Quel'Danas##86770 |goto Isle of Quel Danas (Intro)/0 46.00,44.36
step
talk High Exarch Turalyon##236906
accept Where Heroes Hold##86780 |goto Isle of Quel Danas (Intro)/0 45.97,44.65
accept My Son##89271 |goto Isle of Quel Danas (Intro)/0 45.97,44.65
stickystart "Hinder_The_Attacking_Forces"
step
talk Lothraxion##236657
Select _"The Vanguard rallies at Sunstrider Rise."_ |gossip 132514
Recruit Lothraxion |q 86770/3 |goto Isle of Quel Danas (Intro)/1 51.17,50.07
step
talk Faerin Lothar##237211
Select _"The Vanguard rallies at Sunstrider Rise."_ |gossip 132513
Recruit Faerin Lothar |q 86770/1 |goto Isle of Quel Danas (Intro)/1 70.34,17.31
step
talk Arator##236959
Select _"Your father sent me to find you."_ |gossip 132388
Gain Arator's Assistance |q 89271/1 |goto Isle of Quel Danas (Intro)/1 65.38,87.70
step
talk Alonsus Faol##236789
Select _"The Vanguard rallies at Sunstrider Rise."_ |gossip 132515
Recruit Alonsus Faol |q 86770/2 |goto Isle of Quel Danas (Intro)/1 54.18,84.11
step
label "Hinder_The_Attacking_Forces"
kill Voidborn Reserve##238874, Voidfront Conjurer##252487, Voidfront Defiler##238855, Voidfront Linebreaker##239390, Voidfront Pummeler##238856, Voidgorged Reserve##238872, Voidmarked Reserve##238790, Voidmarked Reserve##249655, Voidswarm Reserve##238788
clicknpc Parhelion Lightguard##238756+
|tip Blood elf allies.
Select _"Join me in battle!"_ |gossip 132365
click Lightspire Spear+
click Sun-Blessed Ballista+
|tip Wooden artillery machines.
click Healing Salve+
|tip Blue glass vials.
click Medical Supplies+
|tip Wooden crates.
clicknpc Injured Defenders##239455+
|tip Allies laying down.
Hinder the Attacking Void Forces |q 86780/1 |goto Isle of Quel Danas (Intro)/1 30.56,77.08
step
talk High Exarch Turalyon##236954
|tip Upper level.
turnin Where Heroes Hold##86780 |goto Isle of Quel Danas (Intro)/0 35.34,43.79
turnin My Son##89271 |goto Isle of Quel Danas (Intro)/0 35.34,43.79
step
talk Lor'themar Theron##236896
|tip Walks around.
turnin Champions of Quel'Danas##86770 |goto Isle of Quel Danas (Intro)/0 35.38,44.05
accept The Hour of Need##86805 |goto Isle of Quel Danas (Intro)/0 35.38,44.05
step
_Next to you:_
talk Arator##237222 |usename Arator##236959
accept A Safe Path##89012
step
talk Scared Civilian##240068, Scared Civilian##240073, Scared Civilian##240152, Scared Civilian##240075, Scared Civilian##240156, Scared Civilian##240125
|tip Scared allies.
|tip On your minimap.
Select _"Arator and I will see you safely to the boats."_ |gossip 132653, 132656, 132685, 132654, 132686, 132670
clicknpc Injured Citizens##240543+
|tip Allies laying down.
click Stone Debris+
|tip Piles of grey rocks.
Rescue #20# Civilians |q 86805/1 |goto Isle of Quel Danas (Intro)/1 36.65,55.10
step
kill Gloomstress##240478 |q 89012/1 |goto Isle of Quel Danas (Intro)/1 49.29,74.74
step
Proceed to the Silver Landing |q 86805/2 |goto Isle of Quel Danas (Intro)/0 41.15,52.26
step
talk Lor'themar Theron##236961
turnin The Hour of Need##86805 |goto Isle of Quel Danas (Intro)/0 41.32,56.81
turnin A Safe Path##89012 |goto Isle of Quel Danas (Intro)/0 41.32,56.81
accept Luminous Wings##86806 |goto Isle of Quel Danas (Intro)/0 41.32,56.81
step
clicknpc Empowered Dragonhawk##237221
Mount an Empowered Dragonhawk |q 86806/1 |goto Isle of Quel Danas (Intro)/0 41.03,58.17
stickystart "Slay_Void_Invaders"
step
Rescue #3# Distressed Civilian |q 86806/3 |goto Isle of Quel Danas (Intro)/0 32.07,75.01
|tip Use the {o}Grappling Rope{} ability near {o}Distressed Civilians{}.
|tip Near the ground.
|tip On your minimap.
step
label "Slay_Void_Invaders"
kill Umbral Slickette##241807, Voidborn Soarling##240263
Slay #16# Void Invaders |q 86806/2 |goto Isle of Quel Danas (Intro)/0 32.07,75.01
step
Watch the dialogue
Return to Lor'themar Theron |outvehicle |goto Isle of Quel Danas (Intro)/0 41.05,57.25 |q 86806 |notravel
step
talk Lor'themar Theron##236961
turnin Luminous Wings##86806 |goto Isle of Quel Danas (Intro)/0 41.32,56.80
step
talk Arator##243091
accept The Gate##86807 |goto Isle of Quel Danas (Intro)/0 41.31,56.58
step
Reach the North Gate |q 86807/1 |goto Isle of Quel Danas (Intro)/1 49.06,22.26
step
talk High Exarch Turalyon##236974
turnin The Gate##86807 |goto Isle of Quel Danas (Intro)/1 49.06,22.26
step
talk Arator##236964
accept Severing the Void##91274 |goto Isle of Quel Danas (Intro)/1 49.68,21.24
accept Voidborn Banishing##86834 |goto Isle of Quel Danas (Intro)/1 49.68,21.24
step
clicknpc Quel'Danas Sentinel##246245
Activate the Sentinel |q 91274/1 |goto Isle of Quel Danas (Intro)/0 42.82,35.74 |count 1 hidden
step
clicknpc Quel'Danas Sentinel##246255
Activate the Sentinel |q 91274/1 |goto Isle of Quel Danas (Intro)/0 38.85,31.92 |count 2 hidden
step
kill Latrunculon##240598 |q 86834/3 |goto Isle of Quel Danas (Intro)/0 36.97,29.75
|tip Walks around.
stickystart "Kill_The_Wasting"
step
clicknpc Quel'Danas Sentinel##246251
Activate the Sentinel |q 91274/1 |goto Isle of Quel Danas (Intro)/0 42.47,25.52 |count 3 hidden
step
label "Kill_The_Wasting"
kill The Wasting##240600 |q 86834/1 |goto Isle of Quel Danas (Intro)/0 41.76,26.41
|tip Large blue humanoid.
|tip Walks around.
step
clicknpc Quel'Danas Sentinel##246239
|tip Under the bridge.
Activate the Sentinel |q 91274/1 |goto Isle of Quel Danas (Intro)/0 43.26,29.51 |count 4 hidden
step
clicknpc Quel'Danas Sentinel##246227
Activate the Sentinel |q 91274/1 |goto Isle of Quel Danas (Intro)/0 44.42,35.47 |count 5 hidden
Destroy the Void-Breach Pylon |q 91274/2 |goto Isle of Quel Danas (Intro)/0 44.42,35.47
step
kill Blightclaw##240601 |q 86834/2 |goto Isle of Quel Danas (Intro)/0 46.37,33.62
step
talk High Exarch Turalyon##236978
turnin Severing the Void##91274 |goto Isle of Quel Danas (Intro)/0 45.38,26.98
turnin Voidborn Banishing##86834 |goto Isle of Quel Danas (Intro)/0 45.38,26.98
accept Ethereal Eradication##86811 |goto Isle of Quel Danas (Intro)/0 45.38,26.98
step
talk Lady Liadrin##237253
accept Light's Arsenal##86848 |goto Isle of Quel Danas (Intro)/0 45.23,26.92
stickystart "Slay_Shadowguard_Forces"
step
click Staff of Disintegration
|tip Inside the building.
Collect the Weapon |q 86848/1 |goto Isle of Quel Danas (Intro)/0 44.80,24.20 |count 1 hidden
step
click Translocation Portal
|tip Upstairs inside the building.
Click Here to Continue |confirm |goto Isle of Quel Danas (Intro)/0 44.76,23.83 |q 86848
step
click Cosmic Infuser
|tip Upstairs inside the building.
Collect the Weapon |q 86848/1 |goto Isle of Quel Danas (Intro)/0 45.15,23.61 |count 2 hidden
step
click Infinity Blades
|tip {o}Ground floor{} inside the building.
Collect the Weapon |q 86848/1 |goto Isle of Quel Danas (Intro)/0 48.00,28.71 |count 3 hidden
step
click Scourgebane
|tip {o}Middle floor{} inside the building.
Collect the Weapon |q 86848/1 |goto Isle of Quel Danas (Intro)/0 47.78,28.96 |count 4 hidden
step
click Netherstrand Longbow
|tip {o}Top floor{} inside the building.
Collect the Weapon |q 86848/1 |goto Isle of Quel Danas (Intro)/0 47.24,28.70 |count 5 hidden
step
click Devastation
|tip {o}Top floor{} inside the building.
Collect the Weapon |q 86848/1 |goto Isle of Quel Danas (Intro)/0 48.17,28.96 |count 6 hidden
step
kill Norkonahl the Looter##240892 |q 86811/2 |goto Isle of Quel Danas (Intro)/0 49.44,22.37
|tip Use the {o}Devastation{} button ability.
|tip Use it when he's casting {o}Repurposed Plunder{}.
|tip Stuns him and prevents his {o}powerful AoE summon{}.
|tip Walks around.
|tip {o}Ground floor{} inside the building.
step
click Warp Slicer
|tip {o}Middle floor{} inside the building.
Collect the Weapon |q 86848/1 |goto Isle of Quel Danas (Intro)/0 49.18,23.39 |count 7 hidden
step
label "Slay_Shadowguard_Forces"
kill Shadowguard Fatestealer##245706, Shadowguard Pillager##238186, Shadowguard Spoiler##245707
Slay #12# Shadowguard Forces |q 86811/1 |goto Isle of Quel Danas (Intro)/0 48.98,25.77
step
talk Lady Liadrin##237253
turnin Light's Arsenal##86848 |goto Isle of Quel Danas (Intro)/0 45.23,26.92
step
talk High Exarch Turalyon##236978
turnin Ethereal Eradication##86811 |goto Isle of Quel Danas (Intro)/0 45.38,26.99
accept Wrath Unleashed##86849 |goto Isle of Quel Danas (Intro)/0 45.38,26.99
step
talk High Exarch Turalyon##237255
|tip Heal in the {o}yellow bubbles{}.
Select _"Let's drive this threat back!"_ |gossip 133285
Aid Turalyon in Attacking the Voidwake Behemoth |q 86849/1 |goto Isle of Quel Danas (Intro)/0 45.65,11.23
step
Channel the Light Against the Voidwake Behemoth |q 86849/2 |goto Isle of Quel Danas (Intro)/0 45.78,11.35
|tip Use the {o}Channel Light{} button ability.
step
Watch the dialogue
Drive Back Vorasius |q 86849/3 |goto Isle of Quel Danas (Intro)/0 45.78,11.35
step
talk Lady Liadrin##237277
turnin Wrath Unleashed##86849 |goto Isle of Quel Danas (Intro)/0 45.84,11.52
accept Broken Sun##86850 |goto Isle of Quel Danas (Intro)/0 45.84,11.52
step
clicknpc Empowered Dragonhawk##237388
Escape on the Dragonhawk |q 86850/1 |goto Isle of Quel Danas (Intro)/0 39.69,16.43
step
Watch the dialogue
Arrive at the Sunwell |q 86850/2
step
talk Lady Liadrin##237278
|tip Inside the building.
turnin Broken Sun##86850 |goto Isle of Quel Danas (Intro)/2 51.74,81.31
accept Light's Last Stand##86852 |goto Isle of Quel Danas (Intro)/2 51.74,81.31
step
talk Lady Liadrin##237278
|tip Inside the building.
Select _"Nothing will get past me!"_ |gossip 132924
Speak with Liadrin to Begin the Ritual |q 86852/1 |goto Isle of Quel Danas (Intro)/2 51.74,81.31
step
kill Voidmarked Berserker##241617, Voidmarked Intruder##244053
|tip Inside the building.
Repel the Void Forces |q 86852/2 |goto Isle of Quel Danas (Intro)/2 50.62,48.88
step
kill Imperatus##244088 |q 86852/4 |goto Isle of Quel Danas (Intro)/2 51.18,23.19
|tip Inside the building.
step
talk Lady Liadrin##241068
turnin Light's Last Stand##86852 |goto Isle of Quel Danas M/0 52.66,88.19
step
talk Lor'themar Theron##236779
accept Silvermoon Negotiations##86733 |goto Isle of Quel Danas M/0 52.53,88.19
step
Arrive at Sanctum of Light |q 86733/1 |goto Silvermoon City M/0 45.44,70.34
|tip Upstairs inside the building.
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Silvermoon Negotiations##86733 |goto Silvermoon City M/0 45.44,70.34
accept Diplomacy##86734 |goto Silvermoon City M/0 45.44,70.34
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
Select _"<Listen to the discussion.>"_ |gossip 132633 |noautogossip
Watch the dialogue
Listen to the Discussion |q 86734/1 |goto Silvermoon City M/0 45.44,70.34
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Diplomacy##86734 |goto Silvermoon City M/0 45.44,70.34
accept Paved in Ash##86735 |goto Silvermoon City M/0 45.44,70.34 |only if Alliance
accept Paved in Ash##86736 |goto Silvermoon City M/0 45.44,70.34 |only if Horde
step
talk General Amias Bellamy##248629
Select _"<Offer greeting.>"_ |gossip 135224
Greet the Vanguard of the Light |q 86735/7 |goto Silvermoon City M/0 45.69,62.83
|only if Alliance
step
talk Ceera##239664
|tip Inside the building.
Select _"Lor'themar has requested that we be allowed to use your services."_ |gossip 132676
Check in with the Head Bank Teller |q 86735/4 |goto Silvermoon City M/0 50.81,65.21
|only if Alliance
step
talk Skymaster Skyles##239639
|tip On the bridge.
Select _"Lor'themar has requested that we be allowed to use your dragonhawks for travel."_ |gossip 132674
Speak with the Skymaster of Silvermoon |q 86735/3 |goto Silvermoon City M/0 50.97,71.25
|only if Alliance
step
talk Skymaster Skyles##239639
|tip On the bridge.
fpath Sanctum of Light |goto Silvermoon City M/0 50.97,71.25
|only if Alliance
step
talk Valeera Sanguinar##242381
|tip Inside the building.
Select _"Lor'themar will need the services of the Reliquary."_ |gossip 133099
Check in with the Reliquary |q 86735/5 |goto Silvermoon City M/0 52.54,78.26
|only if Alliance
step
talk Magistrix Narinth##239673
|tip Inside the building.
Select _"Lor'themar has allowed us to stay in the city for the time being. We'll need access to your portals."_ |gossip 132678
Check on the Portal Network |q 86735/2 |goto Silvermoon City M/0 52.62,65.19
|only if Alliance
step
talk Innkeeper Jovia##239630
|tip Inside the building.
Select _"Lor'themar has allowed us to stay for now. We'll need lodging."_ |gossip 132666
Check in at Wayfarer's Rest |q 86735/1 |goto Silvermoon City M/0 56.46,70.37
|only if Alliance
step
talk Guard Captain Goldblade##240936
Select _"The Alliance will be staying here slightly longer than expected."_ |gossip 132828
Check in with Guard Captain Goldblade |q 86735/6 |goto Silvermoon City M/0 60.22,70.34
|only if Alliance
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Paved in Ash##86735 |goto Silvermoon City M/0 45.44,70.34
|only if Alliance
step
talk General Amias Bellamy##248629
Select _"<Offer greeting.>"_ |gossip 135224
Greet the Vanguard of the Light |q 86736/7 |goto Silvermoon City M/0 45.69,62.83
|only if Horde
step
talk Ceera##239664
|tip Inside the building.
Select _"The Alliance will be staying here temporarily."_ |gossip 134013
Check in with the Head Bank Teller |q 86736/4 |goto Silvermoon City M/0 50.81,65.21
|only if Horde
step
talk Skymaster Skyles##239639
|tip On the bridge.
Select _"The Alliance will be staying here temporarily. They'll need transportation."_ |gossip 134010
Speak with the Skymaster of Silvermoon |q 86736/3 |goto Silvermoon City M/0 50.97,71.25
|only if Horde
step
talk Skymaster Skyles##239639
|tip On the bridge.
fpath Sanctum of Light |goto Silvermoon City M/0 50.97,71.25
|only if Horde
step
talk Valeera Sanguinar##242381
|tip Inside the building.
Select _"Lor'themar will need the services of the Reliquary."_ |gossip 133099
Check in with the Reliquary |q 86736/5 |goto Silvermoon City M/0 52.54,78.26
|only if Horde
step
talk Magistrix Narinth##239673
|tip Inside the building.
Select _"The Alliance will be staying longer than expected. We'll need your Stormwind portal to remain."_ |gossip 134011
Check on the Portal Network |q 86736/2 |goto Silvermoon City M/0 52.62,65.19
|only if Horde
step
talk Innkeeper Jovia##239630
|tip Inside the building.
Select _"The Alliance will be staying here temporarily - lodging will be needed."_ |gossip 134012
Check in at Wayfarer's Rest |q 86736/1 |goto Silvermoon City M/0 56.46,70.37
|only if Horde
step
talk Magistrix Nizara##240940
Select _"The Alliance will be staying here slightly longer than expected."_ |gossip 134014
Check in with Magistrix Nizara |q 86736/6 |goto Silvermoon City M/0 69.12,67.56
|only if Horde
step
talk Anathos##246564
fpath The Royal Exchange |goto Silvermoon City M/0 69.36,63.31
|only if Horde
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Paved in Ash##86736 |goto Silvermoon City M/0 45.44,70.34
|only if Horde
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
accept Fair Breeze, Light Bloom##86737 |goto Silvermoon City M/0 45.44,70.34 |next "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Eversong Woods (Full Zone)"
|only if not achieved(42045) and not completedq(86650)
step
_Important:_
|tip On your first character prior to earning the Midnight account-wide achievement, certain Sojourner chapters are locked behind campaign progress.
|tip For the following 3 zones, the recommended order is {o}Full Zone Zul'Aman{}, then {o}Full Zone Arator's Journey{}, then {o}Story Only Harandar{}.
|tip If you deviate from this path your first playthrough, you may encounter guide sections you cannot complete.
|tip You will also complete the Story Only version of Voidstorm first to unlock access to all Sojourner chapters there after completing the four other guides.
confirm
|only if not achieved(42045) and completedq(86650) and not completedallq(91062,86898,91787)
step
click Scouting Map
|tip Upstairs inside the building.
accept The Gates of Zul'Aman##86708 |goto Silvermoon City M/0 45.62,70.33 |noautoaccept |next "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Zul'Aman (Full Zone)" |or |only if not completedq(91062)
accept Harandar##89402 |goto Silvermoon City M/0 45.62,70.33 |noautoaccept |next "Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Harandar (Story Only)" |or |only if not completedq(86898)
|tip You will need to complete the Story Only version of Harandar first to unlock access to most Sojourner quests.
|tip The Bloomtown and A Goblin in Harandar Sojourner chapters require completion of the Light Repurposed quest in the Arator's Journey guide.
accept Arator##89193 |goto Silvermoon City M/0 45.62,70.33 |noautoaccept |next "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Arator's Journey (Full Zone)" |or |only if not completedq(91787)
|tip If the appropriate intro quest is not offered, click the line.
|only if not achieved(42045) and completedq(86650) and not completedallq(91062,86898,91787)
step
Reach Level 86 |ding 86
|tip To start Voidstorm, you need to be level 86+.
|tip You should now be able to complete the full zone guides for Eversong Woods, Zul'Aman, and Harandar.
|tip Load one of these guides to reach the appropriate level or complete other activities.
|loadguide "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Eversong Woods (Full Zone)"
|loadguide "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Zul'Aman (Full Zone)"
|loadguide "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Harandar (Full Zone)"
|only if not achieved(42045) and not completedq(86522) and completedallq(86650,91062,86898,91787)
step
Proceeding to Voidstorm |complete true |next "Leveling Guides\\Midnight (80-90)\\Story Campaigns\\Voidstorm (Story Only)"
|only if not achieved(42045) and not completedq(86522) and completedallq(86650,91062,86898,91787)
step
Reach Level 90 |ding 90
|tip Use full zone guides or other activities to reach level 90.
|only if completedallq(86650,91062,86898,91787,86522) and not achieved(42045)
step
click Scouting Map
|tip Upstairs inside the building.
accept The Gates of Zul'Aman##86708	|goto Silvermoon City M/0 45.62,70.33	|or	|next "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Zul'Aman (Full Zone)"	|only if not completedq(86708,91062)
accept Arator##89193			|goto Silvermoon City M/0 45.62,70.33	|or	|next "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Arator's Journey (Full Zone)"	|only if not completedq(89193,91787)
accept Harandar##89402			|goto Silvermoon City M/0 45.62,70.33	|or	|next "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Harandar (Full Zone)"	|only if not completedq(89402,86898)
accept Eversong##94871			|goto Silvermoon City M/0 45.62,70.33	|or	|next "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Eversong Woods (Full Zone)"	|only if not completedq(94871,86650)
accept Voidstorm##89388			|goto Silvermoon City M/0 45.62,70.33	|or	|next "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Voidstorm (Full Zone)"	|only if not completedq(89388,86522)
|tip If the quest is not offered, click the line.
|only if not (completedq(86898) and completedq(91787) and completedq(91062) and completedq(86650) and completedq(86522)) and achieved(42045)
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Eversong Woods (Full Zone)",{
},[[
step
Some chapters may be locked behind renown
|tip As prerequisites are determined, quests will be updated.
confirm
step
Click the Complete Quest Box
turnin Adventuring in Midnight##94993
|only if readyq(94993)
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Eversong##94871 |goto Silvermoon City M/0 45.44,70.34 |only if (haveq(94871) or completedq(94871)) and not achieved(42045)
accept Fair Breeze, Light Bloom##86737 |goto Silvermoon City M/0 45.44,70.34
step
click Arcane Projector
|tip Upstairs inside the building.
Obtain the Arcane Projector from Rommath |q 86737/1 |goto Silvermoon City M/0 45.31,70.51
step
talk Instructor Thalendir##245285
accept Career Counseling##94393 |goto Silvermoon City M/0 33.24,74.11
accept Down a Peg##94396 |goto Silvermoon City M/0 33.24,74.11
step
talk Ranger Telenus##252500
|tip He walks around the area.
accept Hounded and Hassled##92729 |goto Silvermoon City M/0 35.68,69.02
step
talk Magistrix Zaedana##253015
|tip Walks around.
turnin Hounded and Hassled##92729 |goto Silvermoon City M/0 35.44,57.73
accept Dogged Disturbances##92728 |goto Silvermoon City M/0 35.44,57.73
step
kill Rowdy Spark##252889+
|tip Small fire elementals.
Slay #8# Rowdy Elementals |q 92728/1 |goto Silvermoon City M/0 34.07,58.72
step
talk Magistrix Zaedana##253015
|tip Walks around.
turnin Dogged Disturbances##92728 |goto Silvermoon City M/0 35.44,57.73
accept He Went Thataway##92868 |goto Silvermoon City M/0 35.44,57.73
step
talk Drathen##253468
turnin He Went Thataway##92868 |goto Silvermoon City M/0 44.84,60.37
accept Fishy Dis-pondencies##92869 |goto Silvermoon City M/0 44.84,60.37
step
click Displaced Sunwhisker##255787+
|tip Fish around the edge of the pond.
Return #8# Displaced Sunwhisker |q 92869/1 |goto Silvermoon City M/0 45.66,60.37
step
talk Drathen##253468
turnin Fishy Dis-pondencies##92869 |goto Silvermoon City M/0 44.84,60.37
accept Scoot Along Now##92870 |goto Silvermoon City M/0 44.84,60.37
step
clicknpc Lil' Scoots##256394
|tip Small dog.
|tip Runs around.
|tip On your minimap.
Catch Lil' Scoots |q 92870/1 |goto Silvermoon City M/0 41.78,62.79
step
talk Solwin Brightstitch##247645
accept Mad to Measure##91386 |goto Silvermoon City M/0 48.40,54.54
step
click Fabric Shears##249852
|tip Inside the building.
Fetch the Fabric Shears |q 91386/1 |goto Silvermoon City M/0 48.57,54.43
step
click Bolt of Plush Velour##249972
|tip Inside the building.
Fetch the Plush Velour |q 91386/2 |goto Silvermoon City M/0 48.83,53.99
step
click Bolt of Glittering Chiffon##249969
|tip Inside the building.
Fetch the Glittering Chiffon |q 91386/3 |goto Silvermoon City M/0 48.63,54.83
step
click Bolt of Plush Velour##249972
|tip Inside the building.
Fetch the Plush Velour ... Again |q 91386/4 |goto Silvermoon City M/0 48.83,54.00
step
click Box of Suramar Sequins##249973
|tip Inside the building.
Fetch the Suramar Sequins |q 91386/5 |goto Silvermoon City M/0 48.85,54.27
step
Watch the dialogue
|tip Inside the building.
talk Gaari##247647
Select _"Mr. Brightstitch isn't accepting more work right now."_ |gossip 135588
Turn Away the Kindly Customer |q 91386/6 |goto Silvermoon City M/0 48.72,54.92
step
talk Solwin Brightstitch##247645
|tip Inside the building.
turnin Mad to Measure##91386 |goto Silvermoon City M/0 48.85,55.01
accept Material Gains##92408 |goto Silvermoon City M/0 48.85,55.01
step
talk Sarvi##243290
accept Gold is Gold##90669 |goto Silvermoon City M/0 54.53,61.45
step
talk Avara##244493
accept Murder Row: Rumors Abound##90835 |goto Silvermoon City M/0 55.99,63.58
step
talk Tarenar Sunstrike##238730
accept Trials and Tabulations##87455 |goto Silvermoon City M/0 57.63,68.83
step
talk Belath Dawnblade##244440
|tip Top of the building.
turnin Murder Row: Rumors Abound##90835 |goto Silvermoon City M/0 51.71,64.23
accept Murder Row: Loose Lips##90818 |goto Silvermoon City M/0 51.71,64.23
accept Murder Row: Traces of Fel##90837 |goto Silvermoon City M/0 51.71,64.23
step
Gather Information |q 90818/1 |goto Silvermoon City M/0 52.41,63.55 |count 1 hidden
|tip Use the {o}Eavesdrop{} button ability.
|tip Entrance of the building.
step
click Strewn Rags
Discover a Source of Fel Magic |q 90837/1 |goto Silvermoon City M/0 54.82,61.09 |count 1 hidden
step
Gather Information |q 90818/1 |goto Silvermoon City M/0 52.26,60.62 |count 2 hidden
|tip Use the {o}Eavesdrop{} button ability.
step
click Concealed Crate
Discover a Source of Fel Magic |q 90837/1 |goto Silvermoon City M/0 51.92,61.01 |count 2 hidden
step
click Inconspicuous Ledger
|tip Inside the building.
Discover a Source of Fel Magic |q 90837/1 |goto Silvermoon City M/0 51.10,56.17 |count 3 hidden
step
click Mislaid Bag
|tip Up on the platform.
Discover a Source of Fel Magic |q 90837/1 |goto Silvermoon City M/0 50.55,58.18 |count 4 hidden
step
Gather Information |q 90818/1 |goto Silvermoon City M/0 51.39,57.08 |count 3 hidden
|tip Use the {o}Eavesdrop{} button ability.
step
click "Empty" Wine Bottle
Discover a Source of Fel Magic |q 90837/1 |goto Silvermoon City M/0 52.19,55.92 |count 5 hidden
step
talk Belath Dawnblade##244443
|tip Up on the platform.
turnin Murder Row: Loose Lips##90818 |goto Silvermoon City M/0 56.15,56.73
turnin Murder Row: Traces of Fel##90837 |goto Silvermoon City M/0 56.15,56.73
accept Murder Row: Acting the Part##90819 |goto Silvermoon City M/0 56.15,56.73
step
click Drained Wyrm##244466
|tip Up on the platform.
collect Cracked Wyrm Core##244407 |q 90819/1 |goto Silvermoon City M/0 56.18,56.65
step
talk Miss Len'dali##244471
Select _"My employer sent me to purchase some "special" reagents."_ |gossip 133938
Question the Murder Row Merchant |q 90819/2 |goto Silvermoon City M/0 52.99,52.72 |count 1 hidden
step
talk Denorin##244469
|tip Inside the building.
Select _"My employer asked me to look for some unique mana wyrms. Do you have any in stock?"_ |gossip 133942
Question the Murder Row Merchant |q 90819/2 |goto Silvermoon City M/0 56.48,48.65 |count 2 hidden
step
talk Thiel##244470
|tip Inside the building.
Select _"<Hold up the wyrm core.> Where can I get more of these?"_ |gossip 133946
Question the Murder Row Merchant |q 90819/2 |goto Silvermoon City M/0 50.65,47.98 |count 3 hidden
step
talk Magister Aradis##241393
|tip Inside the building.
turnin Gold is Gold##90669 |goto Silvermoon City M/0 53.98,34.08
accept A Small Task##89199 |goto Silvermoon City M/0 53.98,34.08
step
click Depleted Wardbreaker
|tip Inside the building.
collect Depleted Wardbreaker##239511 |q 89199/1 |goto Silvermoon City M/0 53.97,33.97
step
click Arcane Reservoir
|tip Floating blue crystal.
|tip Inside the building.
Charge the Wardbreaker |q 89199/2 |goto Silvermoon City M/0 54.26,34.04 |count 1 hidden
step
click Arcane Reservoir
|tip Floating blue crystal.
|tip Inside the building.
Charge the Wardbreaker |q 89199/2 |goto Silvermoon City M/0 54.52,33.60 |count 2 hidden
step
click Arcane Reservoir
|tip Floating blue crystal.
|tip Inside the building.
Charge the Wardbreaker |q 89199/2 |goto Silvermoon City M/0 53.96,32.80 |count 3 hidden
step
click Arcane Reservoir
|tip Floating blue crystal.
|tip Inside the building.
Charge the Wardbreaker |q 89199/2 |goto Silvermoon City M/0 53.66,33.34 |count 4 hidden
step
talk Magister Aradis##241405
|tip Inside the building.
turnin A Small Task##89199 |goto Silvermoon City M/0 54.10,33.89
accept Unraveling Wards##89200 |goto Silvermoon City M/0 54.10,33.89
step
click Warded Conduit
|tip Inside the building.
Sabotage the Warded Conduit |q 89200/1 |goto Silvermoon City M/0 53.57,33.83 |count 1 hidden
step
click Warded Conduit
|tip You will be attacked.
|tip Top of the building.
Sabotage the Warded Conduit |q 89200/1 |goto Silvermoon City M/0 49.32,42.54 |count 2 hidden
step
click Warded Conduit
|tip You will be attacked.
|tip Top of the building.
Sabotage the Warded Conduit |q 89200/1 |goto Silvermoon City M/0 52.81,44.47 |count 3 hidden
step
Locate the Den of Indulgence |q 90819/3 |goto Silvermoon City M/0 56.33,54.13
step
Find Vira |q 90819/4 |goto Silvermoon City M/0 57.72,52.05
|tip Inside the building.
step
talk Vira Bloodsong##244472
|tip Inside the building.
Select _"<Show her the fel wyrm core.> I'm looking to purchase more of these."_ |gossip 133969
Speak to Vira |q 90819/5 |goto Silvermoon City M/0 57.72,52.05
step
click Crate of Fel Artifacts
|tip Inside the building.
Inspect the Crate of Fel Artifacts |q 90819/6 |goto Silvermoon City M/0 57.97,51.98
step
talk Belath Dawnblade##244454
turnin Murder Row: Acting the Part##90819 |goto Silvermoon City M/0 54.51,54.82
accept Murder Row: Harbored Secrets##90821 |goto Silvermoon City M/0 54.51,54.82
step
click Warded Conduit
|tip You will be attacked.
|tip Up on the floating platform.
Sabotage the Warded Conduit |q 89200/1 |goto Silvermoon City M/0 53.59,76.90 |count 4 hidden
step
clicknpc Gidwin Goldbraids##238834
|tip Inside the building.
turnin Trials and Tabulations##87455 |goto Silvermoon City M/0 33.38,89.41
step
Watch the dialogue
|tip Inside the building.
talk Gidwin Goldbraids##238732
accept Souvenirs Scattered##87456 |goto Silvermoon City M/0 33.38,89.41
accept What We Do Best##87457 |goto Silvermoon City M/0 33.38,89.41
step
click Satchel of Herbs
|tip Inside the building.
collect Satchel of Herbs##237165 |q 87456/2 |goto Silvermoon City M/0 33.03,89.20
step
kill Squatter##238739
|tip Upstairs inside the building.
collect Antique Necklace##237167 |q 87457/1 |goto Silvermoon City M/0 33.70,90.05
step
click Nondescript Bottle of Water
|tip Inside the building.
collect Nondescript Bottle of Water##237166 |q 87456/3 |goto Silvermoon City M/0 33.61,89.66
step
click Art and Architecture of Silvermoon: Vol. 3
|tip Inside the building.
collect Art and Architecture of Silvermoon: Vol. 3##237164 |q 87456/1 |goto Silvermoon City M/0 33.78,90.17
step
talk Gidwin Goldbraids##238748
turnin Souvenirs Scattered##87456 |goto Silvermoon City M/0 33.30,90.37
turnin What We Do Best##87457 |goto Silvermoon City M/0 33.30,90.37
accept Debts Paid##87458 |goto Silvermoon City M/0 33.30,90.37
step
talk Ranger Telenus##252500
turnin Scoot Along Now##92870 |goto Silvermoon City M/0 35.67,69.02
step
click Warded Conduit
|tip You will be attacked.
|tip Top of the building.
Sabotage the Warded Conduit |q 89200/1 |goto Silvermoon City M/0 31.59,67.77 |count 5 hidden
step
talk Magister Aradis##241400
|tip Up on the floating platform.
turnin Unraveling Wards##89200 |goto Silvermoon City M/0 37.41,74.28
accept Outschemed##89201 |goto Silvermoon City M/0 37.41,74.28
step
Destroy Dawnblaze's Ward |q 89201/1 |goto Silvermoon City M/0 37.86,75.15
|tip Use the {o}Exhaust Wardbreaker{} button ability.
step
click Magister's Chest
|tip Inside the building.
collect Incriminating Documents##239608 |q 89201/2 |goto Silvermoon City M/0 38.88,75.47
step
Watch the dialogue
|tip Inside the building.
talk Magister Dawnblaze##241398
turnin Outschemed##89201 |goto Silvermoon City M/0 38.75,75.68
accept Stir the Nest##89202 |goto Silvermoon City M/0 38.75,75.68
step
talk Tarenar Sunstrike##238730
turnin Debts Paid##87458 |goto Silvermoon City M/0 57.63,68.82
step
talk Row Rat##241425+
|tip Blood elves wearing black clothes.
|tip You may be attacked.
Select _"I'm looking for Jaeth. Do you know where he is?"_ |gossip 132989
Question #8# Row Rats |q 89202/1 |goto Silvermoon City M/0 52.99,60.34
step
talk Jaeth##241399
|tip Downstairs inside the building.
turnin Stir the Nest##89202 |goto Silvermoon City M/0 51.84,63.79
accept Mutual Benefit##89203 |goto Silvermoon City M/0 51.84,63.79
step
talk Jaeth##241399
|tip Downstairs inside the building.
Select _"<Lay the documents on the table, including the reports on kidnappings in Murder Row.>"_ |gossip 132992
Show the Documents to Jaeth |q 89203/1 |goto Silvermoon City M/0 51.84,63.79
step
Watch the dialogue
|tip Downstairs inside the building.
talk Jaeth##241399
turnin Mutual Benefit##89203 |goto Silvermoon City M/0 51.84,63.79
accept Five Finger Discount##89204 |goto Silvermoon City M/0 51.84,63.79
step
talk Lendranil##242200
|tip Inside the building.
Select _"I have some very specific upgrade needs for these gloves. Let me explain in extreme detail..."_ |gossip 133247
Distract Lendranil |q 89204/1 |goto Silvermoon City M/0 48.64,61.57
step
click Thrumming Amulet
|tip Avoid NPCs with blue circles.
|tip Inside the building.
Steal the Thrumming Amulet |q 89204/2 |goto Silvermoon City M/0 49.57,62.29
step
talk Lothene##241458
|tip Inside the building.
Select _"I have a bag full of creature parts and random substances. I need every single one priced individually."_ |gossip 133298
Distract Lothene |q 89204/3 |goto Silvermoon City M/0 35.92,61.98
step
click Basket of Spell Reagents
|tip Avoid NPCs with blue circles.
|tip Upstairs inside the building.
Steal the Basket of Spell Reagents |q 89204/4 |goto Silvermoon City M/0 35.74,61.50
step
talk Belil##241455
|tip Inside the building.
Select _"I've never seen a rock in my life. Please tell me everything you know."_ |gossip 133290
Distract Belil |q 89204/5 |goto Silvermoon City M/0 42.59,52.86
step
click Arcane Sword
|tip Avoid NPCs with blue circles.
|tip Upstairs inside the building.
Steal the Arcane Sword |q 89204/6 |goto Silvermoon City M/0 40.45,52.57
step
talk Jaeth##241401
|tip Upstairs inside the building.
turnin Five Finger Discount##89204 |goto Silvermoon City M/0 50.81,61.08
accept Cutting a Key##89205 |goto Silvermoon City M/0 50.81,61.08
step
click Depleted Wardbreaker
|tip Upstairs inside the building.
Place the Wardbreaker |q 89205/1 |goto Silvermoon City M/0 50.96,60.94
step
click Thrumming Amulet##242999
|tip Upstairs inside the building.
Disenchant the Thrumming Amulet |q 89205/2 |goto Silvermoon City M/0 50.82,61.25
step
click Arcane Sword##243002
|tip Upstairs inside the building.
Disenchant the Arcane Sword |q 89205/3 |goto Silvermoon City M/0 50.84,60.92
step
click Basket of Spell Reagents##243003
|tip Upstairs inside the building.
Disenchant the Spell Reagents |q 89205/4 |goto Silvermoon City M/0 50.75,61.27
step
click Recharged Wardbreaker
|tip Upstairs inside the building.
collect Recharged Wardbreaker##242253 |q 89205/5 |goto Silvermoon City M/0 50.96,60.93
step
talk Jaeth##241402
|tip Inside the building.
turnin Cutting a Key##89205 |goto Silvermoon City M/0 54.27,33.78
accept Break and Enter##89206 |goto Silvermoon City M/0 54.27,33.78
step
Destroy the Fel Ward |q 89206/1 |goto Silvermoon City M/0 54.33,33.70
|tip Use the {o}Exhaust Wardbreaker{} button ability.
|tip Inside the building.
step
click Coalescing Soul Shard
|tip You will be attacked.
|tip Downstairs inside the building.
Destroy the Soul Shard |q 89206/2 |goto Silvermoon City M/0 54.18,33.77 |count 1 hidden
step
click Coalescing Soul Shard
|tip You will be attacked.
|tip Downstairs inside the building.
Destroy the Soul Shard |q 89206/2 |goto Silvermoon City M/0 53.84,33.69 |count 2 hidden
step
click Coalescing Soul Shard
|tip You will be attacked.
|tip Downstairs inside the building.
Destroy the Soul Shard |q 89206/2 |goto Silvermoon City M/0 53.69,33.18 |count 3 hidden
step
click Coalescing Soul Shard
|tip You will be attacked.
|tip Downstairs inside the building.
Destroy the Soul Shard |q 89206/2 |goto Silvermoon City M/0 53.94,32.72 |count 4 hidden
step
click Coalescing Soul Shard
|tip You will be attacked.
|tip Downstairs inside the building.
Destroy the Soul Shard |q 89206/2 |goto Silvermoon City M/0 54.35,32.96 |count 5 hidden
step
click Coalescing Soul Shard
|tip You will be attacked.
|tip Downstairs inside the building.
Destroy the Soul Shard |q 89206/2 |goto Silvermoon City M/0 54.41,33.34 |count 6 hidden
step
talk Jaeth##241403
|tip Downstairs inside the building.
turnin Break and Enter##89206 |goto Silvermoon City M/0 54.26,33.85
accept Rats Can Bite##89207 |goto Silvermoon City M/0 54.26,33.85
step
kill Magister Aradis##241483 |q 89207/1 |goto Silvermoon City M/0 54.06,33.25
|tip Downstairs inside the building.
step
talk Jaeth##241404
|tip Outside the building.
turnin Rats Can Bite##89207 |goto Silvermoon City M/0 53.01,33.20
accept What We're Owed##89208 |goto Silvermoon City M/0 53.01,33.20
step
talk Magister Dawnblaze##241490
Select _"We killed Aradis and freed the people he took from Murder Row."_ |gossip 133545
Inform Dawnblaze the job was done |q 89208/1 |goto Silvermoon City M/0 37.38,74.50
step
talk Magister Dawnblaze##241490
turnin What We're Owed##89208 |goto Silvermoon City M/0 37.38,74.50
step
Meet Belath at the Harbor |q 90821/1 |goto Silvermoon City M/0 32.19,25.99
step
talk Tarelin##244474
|tip On the ship deck.
Select _"I'm picking up a shipment for Zaen."_ |gossip 134044
|tip You will be attacked.
|tip You may need to wait for him to respawn.
Speak to the dockmaster |q 90821/2 |goto Silvermoon City M/0 33.99,26.47
step
kill Tarelin##244474
|tip On the ship deck.
Search Tarelin's Body |q 90821/3 |goto Silvermoon City M/0 33.99,26.47
|tip Loot him.
step
talk Belath Dawnblade##245297
turnin Murder Row: Harbored Secrets##90821 |goto Silvermoon City M/0 32.19,25.99
step
talk Kyltus Bloodburn##245192
turnin Career Counseling##94393 |goto Eversong Woods M/0 42.59,14.57
accept A Path Not Yet Chosen##91284 |goto Eversong Woods M/0 42.59,14.57
step
talk Magister Jaronis##245201
|tip Inside the building.
accept A Test of the Arcane##91292 |goto Eversong Woods M/0 43.21,14.69
step
talk Jesthenis Sunstriker##245200
accept A Test of Blood##91291 |goto Eversong Woods M/0 42.96,13.77
step
Watch the dialogue
talk Jesthenis Sunstriker##245200
step
talk Jesthenis Sunstriker##247085
|tip Top of the building.
Select _"<I am ready to fight.>"_ |gossip 134482
kill Jesthenis Sunstriker##247085
Spar with Jesthenis Sunstriker |q 91291/2 |goto Eversong Woods M/0 43.43,14.72
step
talk Jesthenis Sunstriker##245200
turnin A Test of Blood##91291 |goto Eversong Woods M/0 42.96,13.77
collect Blood Knight Recommendation##246167 |q 91284/2 |goto Eversong Woods M/0 42.96,13.77
step
talk Ranger Hannovia##245202
accept A Test of the Hunt##91288 |goto Eversong Woods M/0 42.18,13.27
step
kill Encroaching Lynx##246365, Invasive Lynx##246580
collect 8 Invasive Lynx Pelt##246153 |q 91288/1 |goto Eversong Woods M/0 41.76,15.27
step
talk Tytalor Goldenblade##237873
turnin Down a Peg##94396 |goto Eversong Woods M/0 39.42,17.46
accept Spellbook Scuffle##86997 |goto Eversong Woods M/0 39.42,17.46
step
kill Fiendish Inkbound Codex##237885+
|tip Flying books.
|tip Up on the platform.
click Sedated Spellbook+
|tip Red books.
collect 9 Torn Spellbook Page##235808 |q 86997/1 |goto Eversong Woods M/0 38.37,17.36
You can find more around: |notinsticky
[Eversong Woods M/0 39.22,18.81]
[Eversong Woods M/0 38.13,18.90]
step
talk Tytalor Goldenblade##237904
|tip Up on the platform.
turnin Spellbook Scuffle##86997 |goto Eversong Woods M/0 37.40,18.73
accept Training Arc##86998 |goto Eversong Woods M/0 37.40,18.73
step
talk Mage Follower##237890, Brutish Follower##238112, Magus Superior##238113
|tip {o}Follower{} or {o}Superior{} in their names.
|tip On the higher {o}middle tier{} platforms.
|tip Studious Students won't count.
Select _"<Explain situation and ask to spar.>"_ |gossip 132313
|tip Fight them.
Best #6# Mages |q 86998/1 |goto Eversong Woods M/0 38.32,18.68
step
talk Tytalor Goldenblade##237905
|tip Inside the higher up building.
turnin Training Arc##86998 |goto Eversong Woods M/0 38.52,18.70
accept Academic Aspirations##87002 |goto Eversong Woods M/0 38.52,18.70
step
kill Tytalor Goldenblade##237912
|tip Top of the building.
Defeat Tytalor Goldenblade |q 87002/2 |goto Eversong Woods M/0 38.16,18.37
step
talk Tytalor Goldenblade##237907
turnin Academic Aspirations##87002 |goto Eversong Woods M/0 39.32,17.26
step
click Arcane Relay Crystal+
|tip Baskets of purple crystals.
Charge the Staff #4# Times |q 91292/1 |goto Eversong Woods M/0 42.03,20.47
step
talk Ranger Hannovia##245202
turnin A Test of the Hunt##91288 |goto Eversong Woods M/0 42.18,13.27
collect Farstrider Recommendation##246166 |q 91284/1 |goto Eversong Woods M/0 42.18,13.27
step
talk Magister Jaronis##245201
|tip Inside the building.
turnin A Test of the Arcane##91292 |goto Eversong Woods M/0 43.21,14.69
collect Magister Recommendation##246168 |q 91284/3 |goto Eversong Woods M/0 43.21,14.69
step
talk Kyltus Bloodburn##246557
turnin A Path Not Yet Chosen##91284 |goto Eversong Woods M/0 42.60,14.59
accept How to Train Your Protege##91301 |goto Eversong Woods M/0 42.60,14.59
step
talk Kyltus Bloodburn##246557
Select _"<Pick the one that showed the most courage.>"_ |gossip 134090
Assist Kyltus |q 91301/1 |goto Eversong Woods M/0 42.60,14.59
step
talk Instructor Thalendir##245285
Select _"<Give Recommendation.>"_ |gossip 134484
Submit the Recommendation |q 91301/2 |goto Silvermoon City M/0 33.24,74.11
step
talk Instructor Thalendir##245285
turnin How to Train Your Protege##91301 |goto Silvermoon City M/0 33.24,74.11
step
talk Vaelith Sunplume##241553
accept One Adventurous Hatchling##89383 |goto Eversong Woods M/0 56.84,35.56
accept A Hungry Flock##89384 |goto Eversong Woods M/0 56.84,35.56
accept A Roost-ed Development##89386 |goto Eversong Woods M/0 56.84,35.56
|only if completedq(86650) or achieved(42045)
step
talk Arcanist Taemin##246806
accept If You Want It Done Right##91342 |goto Eversong Woods M/0 57.42,39.94
accept Range of Knowledge##91452 |goto Eversong Woods M/0 57.42,39.94
stickystart "Kill_Ornery_Sweepers"
step
click Index of Ranger Corps Recipes Vol. VII
|tip Inside the building.
collect Index of Ranger Corps Recipes Vol. VII##254557 |q 91452/2 |goto Eversong Woods M/0 56.49,40.65
step
click Herbalist's Handbook: Eversong Medicinals
collect Herbalist's Handbook: Eversong Medicinals##254558 |q 91452/1 |goto Eversong Woods M/0 57.24,42.15
step
click Songs for the Silver Streams
collect Songs for the Silver Streams##254559 |q 91452/3 |goto Eversong Woods M/0 56.89,43.08
step
Return the Books to the Farstrider Library |q 91452/4 |goto Eversong Woods M/0 56.66,41.01
|tip Use the {o}Return Books{} button ability.
|tip Inside the building.
step
click Thalassian Legends
|tip Inside the building.
Examine Taemin's Favorite Book |q 91452/5 |goto Eversong Woods M/0 56.65,40.98
step
talk Arcanist Taemin##246806
|tip Inside the building.
turnin Range of Knowledge##91452 |goto Eversong Woods M/0 56.66,41.01
step
label "Kill_Ornery_Sweepers"
kill 8 Ornery Sweeper##247199 |q 91342/1 |goto Eversong Woods M/0 56.77,40.54
|tip Brooms.
step
talk Arcanist Taemin##246806
|tip Inside the building.
turnin If You Want It Done Right##91342 |goto Eversong Woods M/0 56.66,41.01
step
Watch the dialogue
|tip Inside the building.
talk Captain Dawnrunner##246866
accept To the North Tower##91345 |goto Eversong Woods M/0 56.68,40.81
accept To the Central Tower##91462 |goto Eversong Woods M/0 56.68,40.81
step
click Lost Hawkstrider Fledgling##243837
Send the Hawkstrider Fledgling Back |q 89383/1 |goto Eversong Woods M/0 53.66,35.23
|only if haveq(89383) or completedq(89383)
stickystart "Collect_Juicy_Frog_Legs"
step
click Golden Sunleaf+
|tip Plants around the edge of the pond.
collect 6 Golden Sunleaf##245531 |q 89386/1 |goto Eversong Woods M/0 53.39,36.14
|only if haveq(89386) or completedq(89386)
step
label "Collect_Juicy_Frog_Legs"
kill Gloombelly Toad##243171
collect 6 Juicy Frog Leg##244214 |q 89384/1 |goto Eversong Woods M/0 53.28,36.04
|only if haveq(89384) or completedq(89384)
step
talk Vaelith Sunplume##241553
turnin One Adventurous Hatchling##89383 |goto Eversong Woods M/0 56.84,35.56 |only if haveq(89383) or completedq(89383)
turnin A Hungry Flock##89384 |goto Eversong Woods M/0 56.84,35.56 |only if haveq(89384) or completedq(89384)
turnin A Roost-ed Development##89386 |goto Eversong Woods M/0 56.84,35.56 |only if haveq(89386) or completedq(89386)
accept First Step Into Parenthood##89385 |goto Eversong Woods M/0 56.84,35.56
|only if haveq(89383,89384,89386) or completedq(89383,89384,89386)
step
talk Terel Bloodfate##250791
accept Calling in the Cavalry##92396 |goto Eversong Woods M/0 50.12,34.24
step
click Delivery Crate
Pick Up the Package |q 92396/1 |goto Eversong Woods M/0 50.11,34.28
step
talk Solwin Brightstitch##250888
turnin Material Gains##92408 |goto Eversong Woods M/0 46.93,35.58
accept Uncommon Threads##91388 |goto Eversong Woods M/0 46.93,35.58
step
kill Engorged Silk Wyrm##247649+
|tip They become friendly.
click Engorged Silk Wyrm##247649+
collect 8 Full Bobbin of Manasilk##251521 |q 91388/1 |goto Eversong Woods M/0 46.77,34.86
step
talk Solwin Brightstitch##250888
turnin Uncommon Threads##91388 |goto Eversong Woods M/0 46.93,35.58
accept Clothes Make the Man##91389 |goto Eversong Woods M/0 46.93,35.58
step
talk Solwin Brightstitch##252156
|tip Inside the building.
Select _"I'm ready for anything!"_ |gossip 135911
Kill the enemies that attack in waves
Repair the Arcanoweave Cloak |q 91389/2 |goto Eversong Woods M/0 46.26,34.79
step
Find Gaari |q 91389/3 |goto Eversong Woods M/0 45.11,34.35
step
talk Solwin Brightstitch##252179
turnin Clothes Make the Man##91389 |goto Eversong Woods M/0 45.11,34.35
step
talk Magister Meledor##240403
accept Reenact the Crime##88977 |goto Eversong Woods M/0 41.11,38.50
step
talk Ranger Vardis##240408
accept Tracking the Trail##88978 |goto Eversong Woods M/0 41.09,38.50
stickystart "Collect_Digested_Objects"
step
use Arcane Timepiece##238730
Use the Arcane Timepiece |q 88977/1 |goto Eversong Woods M/0 41.16,39.15
step
use Arcane Timepiece##238730 |only if not hasbuff("1226081")
talk Magister Meledor##240411
Investigate the Frozen Moment |q 88977/2 |goto Eversong Woods M/0 41.16,39.15 |count 1 hidden
step
use Arcane Timepiece##238730 |only if not hasbuff("1226081")
talk Magister Meledor##240947
Investigate the Frozen Moment |q 88977/2 |goto Eversong Woods M/0 40.31,38.71 |count 2 hidden
step
use Arcane Timepiece##238730 |only if not hasbuff("1226081")
talk Magister Meledor##240948
Investigate the Frozen Moment |q 88977/2 |goto Eversong Woods M/0 39.65,38.85 |count 3 hidden
step
talk Magister Meledor##240420
turnin Reenact the Crime##88977 |goto Eversong Woods M/0 39.63,39.16
step
label "Collect_Digested_Objects"
kill Encroaching Forest Lynx##242604, Encroaching Mana Wyrm##242520, Encroaching Mana Wyrm##242521
|tip Loot them.
Collect #8# Digested Objects |q 88978/1 |goto Eversong Woods M/0 40.39,38.95
step
talk Ranger Vardis##240421
turnin Tracking the Trail##88978 |goto Eversong Woods M/0 39.62,39.13
step
Watch the dialogue
talk Magister Meledor##240422
accept Caught Red-Handed##88979 |goto Eversong Woods M/0 38.50,39.58
step
kill Hot-Headed Lynx##240416 |q 88979/1 |goto Eversong Woods M/0 38.20,39.08
|tip Walks around.
step
click Missing Journal
collect Chewed-Up Journal##241192 |q 88979/2 |goto Eversong Woods M/0 38.09,39.19
step
talk Magister Meledor##242663
turnin Caught Red-Handed##88979 |goto Eversong Woods M/0 39.76,39.27
step
talk Luma##242688
accept Thief at Bark##90544 |goto Eversong Woods M/0 39.89,39.32
step
Watch the dialogue
talk Luma##242688
|tip Luma will take about 45 seconds to get here.
Select _"<Pet Luma.>"_ |gossip 133262
Follow Luma |q 90544/1 |goto Eversong Woods M/0 38.93,38.64
step
Watch the dialogue
talk Luma##242688
turnin Thief at Bark##90544 |goto Eversong Woods M/0 38.93,38.64
step
talk Vael'thas Dawnsoar##242913
|tip Up on the platform.
fpath Fairbreeze Village##3133 |goto Eversong Woods M/0 44.70,44.98
step
Reach Fairbreeze Village |q 86737/3 |goto Eversong Woods M/0 46.71,45.75
step
talk Magistrix Landra Dawnstrider##236739
turnin Eversong##94871 |goto Eversong Woods M/0 46.71,45.75
|only if haveq(94871) or completedq(94871)
step
talk Magistrix Landra Dawnstrider##236739
turnin Fair Breeze, Light Bloom##86737 |goto Eversong Woods M/0 46.71,45.75
accept Sharpmaw##86738 |goto Eversong Woods M/0 46.71,45.75
accept Fairbreeze Favors##86739 |goto Eversong Woods M/0 46.71,45.75
step
talk Orweyna##236743
accept Displaced Denizens##86740 |goto Eversong Woods M/0 46.66,45.71
stickystart "Trap_Lynx_For_Relocation"
stickystart "Shoo_Hawkstriders"
stickystart "Kill_Invasive_Light_Wyrms"
step
talk Lyssara Duskmourne##238490
accept Cargo Conspiracy##87392 |goto Eversong Woods M/0 46.91,45.17
step
click Hiding Bush
Find a Place to Eavesdrop on Sunrun Salvage |q 87392/1 |goto Eversong Woods M/0 46.25,44.09
step
clicknpc Injured Pet##243960
Help the Citizen |q 86739/4 |goto Eversong Woods M/0 46.51,45.91 |count 1 hidden
step
click Trampled Bush
Investigate the Disturbance |q 86740/1 |goto Eversong Woods M/0 47.21,46.28 |count 1 hidden
step
click Strange Lightbloom Plant
Examine the Strange Plant |q 86740/2 |goto Eversong Woods M/0 47.65,46.45 |count 1 hidden
step
Approach Sharpmaw |q 86738/1 |goto Eversong Woods M/0 45.81,47.90
step
clicknpc Sharpmaw##237392
Examine Sharpmaw |q 86738/2 |goto Eversong Woods M/0 45.81,47.90
step
click Strange Lightbloom Plant
Examine the Strange Plant |q 86740/2 |goto Eversong Woods M/0 45.60,46.76 |count 2 hidden
step
click Hasty Nest
Investigate the Disturbance |q 86740/1 |goto Eversong Woods M/0 45.49,46.03 |count 2 hidden
step
click Territorial Dispute
Investigate the Disturbance |q 86740/1 |goto Eversong Woods M/0 45.94,45.51 |count 3 hidden
step
click Hiding Spot
Find a Place to Eavesdrop on Duskflight Exports |q 87392/2 |goto Eversong Woods M/0 45.92,45.09
step
clicknpc Mr. Fluff##244042
|tip Top of the statue.
Watch the dialogue
Help the Citizen |q 86739/4 |goto Eversong Woods M/0 45.64,45.46 |count 2 hidden
step
click Dropped Tome+
|tip Red and blue books.
Help the Citizen |q 86739/4 |goto Eversong Woods M/0 44.72,44.97 |count 3 hidden
step
click Strange Lightbloom Plant
Examine the Strange Plant |q 86740/2 |goto Eversong Woods M/0 44.83,43.99 |count 3 hidden
step
label "Trap_Lynx_For_Relocation"
kill Displaced Lynx##237400+
|tip Dark grey large cats.
|tip They become friendly.
clicknpc Displaced Lynx##237400+
Trap #3# Lynx for Relocation |q 86739/3 |goto Eversong Woods M/0 45.96,45.41
step
label "Shoo_Hawkstriders"
Shoo #6# Hawkstriders |q 86739/2 |goto Eversong Woods M/0 45.73,45.71
|tip Use the {o}Shoo Hawkstrider{} button ability near {o}Displaced Hawkstriders{}.
|tip Large walking birds.
step
label "Kill_Invasive_Light_Wyrms"
kill 8 Invasive Light Wyrm##237399 |q 86739/1 |goto Eversong Woods M/0 45.73,45.71
|tip Floating yellow eels.
step
talk Magistrix Landra Dawnstrider##236739
turnin Sharpmaw##86738 |goto Eversong Woods M/0 46.71,45.75
turnin Fairbreeze Favors##86739 |goto Eversong Woods M/0 46.71,45.75
step
talk Orweyna##236743
turnin Displaced Denizens##86740 |goto Eversong Woods M/0 46.66,45.71
accept Lightbloom Looming##86741 |goto Eversong Woods M/0 46.66,45.71
step
talk Orweyna##236743
Select _"Let's follow the trail you found."_ |gossip 133725
Speak with Orweyna |q 86741/1 |goto Eversong Woods M/0 46.66,45.71
step
click Hiding Bush
Find a Place to Eavesdrop on Tideborne Freight |q 87392/3 |goto Eversong Woods M/0 46.98,46.04
step
click Dropped Note
|tip Inside the building.
collect Abandoned Note##237722 |q 87392/4 |goto Eversong Woods M/0 47.07,46.26
step
talk Lyssara Duskmourne##238490
turnin Cargo Conspiracy##87392 |goto Eversong Woods M/0 46.91,45.17
accept Warranted Search##87393 |goto Eversong Woods M/0 46.91,45.17
accept Supplier Surveillance##87394 |goto Eversong Woods M/0 46.91,45.17
step
Follow the Trail Out of Fairbreeze |q 86741/2 |goto Eversong Woods M/0 41.50,47.61
stickystart "Interrogate_Tideborne_Freight_Sailors"
step
click Arcane Recorder
Place the Side View Recorder |q 87394/1 |goto Eversong Woods M/0 40.50,44.27
step
click Arcane Recorder
|tip Top of the building.
Place the Upper View Recorder |q 87394/2 |goto Eversong Woods M/0 39.46,45.24
step
click Arcane Recorder
Place the Front View Recorder |q 87394/3 |goto Eversong Woods M/0 39.62,44.12
step
Watch the dialogue
Surveil the Ship |q 87394/4 |goto Eversong Woods M/0 39.62,44.12
step
label "Interrogate_Tideborne_Freight_Sailors"
kill Freight Barker##241909, Tideborne Deckwalker##239547, Tideborne Freight Runner##239549
"Interrogate" #12# Tideborne Freight Sailors |q 87393/1 |goto Eversong Woods M/0 39.20,44.45
step
talk Lyssara Duskmourne##238505
|tip Up on the platform.
turnin Warranted Search##87393 |goto Eversong Woods M/0 39.46,44.95
turnin Supplier Surveillance##87394 |goto Eversong Woods M/0 39.46,44.95
accept Below the Brine##87395 |goto Eversong Woods M/0 39.46,44.95
step
Investigate the Submerged Cargo |q 87395/1 |goto Eversong Woods M/0 39.38,43.72
|tip Underwater.
step
use Elixir of the Sea's Bounty##239022
kill Tideborne Courier##241592+
|tip Naga.
click Submerged Cargo+
|tip Wooden crates.
Retrieve #12# Submerged Cargo Items |q 87395/2 |goto Eversong Woods M/0 38.74,43.40
step
talk Lyssara Duskmourne##239368
turnin Below the Brine##87395 |goto Eversong Woods M/0 35.80,43.84
accept Cargo Collateral##87397 |goto Eversong Woods M/0 35.80,43.84
accept Dead to Rights##87396 |goto Eversong Woods M/0 35.80,43.84
stickystart "Slay_Tideborne_Naga"
step
click Smuggled Cargo+
|tip Wooden crates.
Destroy #5# Smuggled Cargo |q 87397/1 |goto Eversong Woods M/0 34.78,44.82
step
label "Slay_Tideborne_Naga"
kill Tideborne Freighter##239521, Tideborne Smuggler##239519
Slay #10# Tideborne Naga |q 87396/1 |goto Eversong Woods M/0 34.78,44.82
step
talk Lyssara Duskmourne##239368
turnin Cargo Collateral##87397 |goto Eversong Woods M/0 35.80,43.85
turnin Dead to Rights##87396 |goto Eversong Woods M/0 35.80,43.85
accept Smuggler Showdown##87398 |goto Eversong Woods M/0 35.80,43.85
step
kill Captain Dorynth Bloodwake##239459 |q 87398/2 |goto Eversong Woods M/0 37.50,44.36
|tip On the middle ship deck.
step
talk Lyssara Duskmourne##244870
|tip Runs to this location.
turnin Smuggler Showdown##87398 |goto Eversong Woods M/0 37.76,44.60
step
Follow the Trail |q 86741/3 |goto Eversong Woods M/0 39.72,49.20
step
Watch the dialogue
Follow the Trail Further |q 86741/4 |goto Eversong Woods M/0 40.02,49.18
step
kill Lightbloom Monstrosity##244383 |q 86741/5 |goto Eversong Woods M/0 39.72,50.74
step
Follow the Trail to the End |q 86741/6 |goto Eversong Woods M/0 39.64,51.54
step
Watch the dialogue
talk Orweyna##236903
turnin Lightbloom Looming##86741 |goto Eversong Woods M/0 39.67,51.55
accept Trimming the Lightbloom##86743 |goto Eversong Woods M/0 39.67,51.55
accept Curious Cultivation##86742 |goto Eversong Woods M/0 39.67,51.55
stickystart "Slay_Lightbloom_Creatures"
step
click Lightbloom Flower Growth
Examine the Lightbloom Growth |q 86742/1 |goto Eversong Woods M/0 40.71,53.06 |count 1 hidden
step
clicknpc Infested Lynx##251764
Examine the Lightbloom Growth |q 86742/1 |goto Eversong Woods M/0 40.08,55.41 |count 2 hidden
stickystop "Slay_Lightbloom_Creatures"
step
Deliver Supplies to Lightbloom Ath'ran's Runestone |q 92396/2 |goto Eversong Woods M/0 39.25,56.73
|tip Use the {o}Make Delivery!{} button ability.
stickystart "Slay_Lightbloom_Creatures"
step
clicknpc Infested Magister##251769
Examine the Lightbloom Growth |q 86742/1 |goto Eversong Woods M/0 42.27,55.62 |count 3 hidden
step
Find and Meet Up with Arator |q 86742/2 |goto Eversong Woods M/0 43.85,56.59
step
kill Rutaani Fighter##237394 |q 86742/3 |goto Eversong Woods M/0 43.85,56.59
step
click Strange Seed
Pick Up the Strange Seed |q 86742/4 |goto Eversong Woods M/0 43.83,56.58
step
label "Slay_Lightbloom_Creatures"
kill Light Wyrm##237408, Lightbloom Hydra##237414, Lightbloom Lasher##237395, Lightbloom Petalwing##237402, Lightfed Growth##246523
Slay Lightbloom Creatures |q 86743/1 |goto Eversong Woods M/0 42.42,55.82
step
_Next to you:_
talk Orweyna##240663 |usename Orweyna##236743
turnin Trimming the Lightbloom##86743
step
Meet Arator in a Safer Location |q 86742/5 |goto Eversong Woods M/0 45.88,55.50
step
Watch the dialogue
talk Orweyna##236903
turnin Curious Cultivation##86742 |goto Eversong Woods M/0 45.88,55.46
accept Seeking Truth##86744 |goto Eversong Woods M/0 45.88,55.46
step
talk Orweyna##236903
Select _"I'm ready when you are."_ |gossip 132833
Speak with Orweyna |q 86744/1 |goto Eversong Woods M/0 45.88,55.46
step
Watch the dialogue
Kill the enemies that attack in waves
Defend Orweyna |q 86744/2 |goto Eversong Woods M/0 46.22,55.15
step
talk Orweyna##236903
turnin Seeking Truth##86744 |goto Eversong Woods M/0 47.36,55.31
step
talk Arator##236716
accept Silvermoon Must Know##86745 |goto Eversong Woods M/0 47.35,55.35
step
talk Arator##236716
Select _"<Contact Silvermoon.>"_ |gossip 132860 |noautogossip
Contact Silvermoon |q 86745/1 |goto Eversong Woods M/0 47.35,55.35
step
talk Arator##236716
turnin Silvermoon Must Know##86745 |goto Eversong Woods M/0 47.35,55.35
accept The Wayward Magister##86621 |goto Eversong Woods M/0 47.35,55.35
step
talk Ranger Valsarin##247394
turnin To the North Tower##91345 |goto Eversong Woods M/0 49.66,48.29
accept Strider Stampede##91347 |goto Eversong Woods M/0 49.66,48.29
step
talk Ranger Valsarin##248307
Select _"Saddle me up!"_ |gossip 134809
Speak with Recruit Valsarin |q 91347/1 |goto Eversong Woods M/0 50.42,48.50
step
Prepare the Tranquil Repose |q 91347/2 |goto Eversong Woods M/0 50.81,49.60
|tip Run over various objects and grubs.
step
Return to Recruit Valsarin |q 91347/3 |goto Eversong Woods M/0 50.44,48.58 |script VehicleExit()
|tip Exit the Hawkstrider.
step
click Mysterious Bloom
collect Mysterious Bloom##249491 |q 91347/4 |goto Eversong Woods M/0 50.44,48.58
step
talk Ranger Valsarin##248307
turnin Strider Stampede##91347 |goto Eversong Woods M/0 50.42,48.49
step
talk Ranger Asterae##247395
turnin To the Central Tower##91462 |goto Eversong Woods M/0 48.59,57.65
accept See a Mana 'bout a Wyrm##91348 |goto Eversong Woods M/0 48.59,57.65
step
kill Agitated Wyrm##247392+
Assist #8# Agitated Wyrms |q 91348/1 |goto Eversong Woods M/0 48.46,56.33
step
Return to Ranger Astarae |q 91348/2 |goto Eversong Woods M/0 48.62,57.63
step
click Mysterious Bloom
collect Mysterious Bloom##249490 |q 91348/3 |goto Eversong Woods M/0 48.62,57.63
step
talk Ranger Asterae##247395
turnin See a Mana 'bout a Wyrm##91348 |goto Eversong Woods M/0 48.59,57.65
accept To the South Tower##91463 |goto Eversong Woods M/0 48.59,57.65
step
Meet with Arator on the Road to Tranquillien |q 86621/1 |goto Eversong Woods M/0 49.24,58.94
step
click Mysterious Corpse
Examine the Mysterious Corpse |q 86621/3 |goto Eversong Woods M/0 49.24,58.94
step
talk Skymaster Sunwing##238480
fpath Tranquillien |goto Eversong Woods M/0 47.80,67.13
step
Meet with Umbric in Tranquillien |q 86621/4 |goto Eversong Woods M/0 47.69,69.79
|tip Inside the building.
step
talk Magister Umbric##236087
|tip Inside the building.
turnin The Wayward Magister##86621 |goto Eversong Woods M/0 47.69,69.79
accept Appeal to the Void##86623 |goto Eversong Woods M/0 47.69,69.79
step
talk Arator##236100
|tip Inside the building.
accept Rational Explanation##86624 |goto Eversong Woods M/0 47.68,69.73
step
click Umbric's Channeling Focus
Kill the enemies that attack
Complete the Eastern Ritual |q 86623/1 |goto Eversong Woods M/0 48.85,72.65
step
click Umbric's Channeling Focus
Kill the enemies that attack in waves
Complete the Western Ritual |q 86623/2 |goto Eversong Woods M/0 46.71,71.49
step
click Umbric's Channeling Focus
Kill the enemies that attack in waves
Complete the Northern Ritual |q 86623/3 |goto Eversong Woods M/0 45.42,67.48
step
click Sermon Book
Find the Clue in Tranquillien |q 86624/2 |goto Eversong Woods M/0 47.73,65.10 |count 15 hidden
step
talk Matron Narsilla##242568
Select _"What problems ail the people of Tranquillien?"_ |gossip 133913
Question the Townsfolk |q 86624/1 |goto Eversong Woods M/0 47.71,65.26 |count 1 hidden
step
click Religious Leaflet
Find the Clue in Tranquillien |q 86624/2 |goto Eversong Woods M/0 47.84,65.54 |count 25 hidden
step
click Strange Shipment
|tip You will be attacked.
Find the Clue in Tranquillien |q 86624/2 |goto Eversong Woods M/0 48.91,66.51 |count 40 hidden
step
talk Quartermaster Lymel##244840
Select _"Have there been any issues around town lately?"_ |gossip 133888
Question the Townsfolk |q 86624/1 |goto Eversong Woods M/0 48.93,66.59 |count 2 hidden
step
click Welcoming Brochure
Find the Clue in Tranquillien |q 86624/2 |goto Eversong Woods M/0 48.70,66.70 |count 50 hidden
step
click Vandalized Cart
Find the Clue in Tranquillien |q 86624/2 |goto Eversong Woods M/0 48.54,67.36 |count 65 hidden
step
click Clandestine Note
Find the Clue in Tranquillien |q 86624/2 |goto Eversong Woods M/0 49.16,67.49 |count 75 hidden
step
talk Guard Captain Leonic##239457
|tip Inside the building.
Select _"Have you seen anything suspicious lately?"_ |gossip 132706
Question the Townsfolk |q 86624/1 |goto Eversong Woods M/0 49.32,67.37 |count 3 hidden
step
click Guard Schedule
|tip Inside the building.
Find the Clue in Tranquillien |q 86624/2 |goto Eversong Woods M/0 49.44,67.60 |count 90 hidden
step
click Recruitment Flyer
Find the Clue in Tranquillien |q 86624/2 |goto Eversong Woods M/0 48.84,69.50 |count 100 hidden
step
talk Ranger Belonis##239406
Select _"You've had scouts go missing?"_ |gossip 132894
Question the Townsfolk |q 86624/1 |goto Eversong Woods M/0 48.86,69.61 |count 4 hidden
step
talk Innkeeper Kalarin##236149
|tip Inside the building.
Select _"Have you seen anything strange recently?"_ |gossip 132744
Speak with Innkeeper Kalarin |q 86624/3 |goto Eversong Woods M/0 48.97,68.59
step
click Discarded Journal
|tip Upstairs inside the building.
Find Kasiea's Journal |q 86624/4 |goto Eversong Woods M/0 49.00,68.54
step
talk Arator##236100
|tip Inside the building.
turnin Rational Explanation##86624 |goto Eversong Woods M/0 47.68,69.74
step
talk Magister Umbric##236087
|tip Inside the building.
turnin Appeal to the Void##86623 |goto Eversong Woods M/0 47.69,69.79
accept The First to Know##90907 |goto Eversong Woods M/0 47.69,69.79
step
Meet at Lord Antenorian's Office |q 90907/1 |goto Eversong Woods M/0 47.18,68.33
|tip Inside the building.
step
Watch the dialogue
|tip Inside the building.
talk Secretary Faloria##239405
Select _"We need to speak to Lord Antenorian."_ |gossip 132741
Question Secretary Faloria |q 90907/2 |goto Eversong Woods M/0 47.18,68.33
step
click Suspicious Lockbox
|tip Inside the building.
Investigate the Strange Lockbox |q 90907/3 |goto Eversong Woods M/0 47.12,68.36
step
Watch the dialogue
|tip Inside the building.
talk Lord Antenorian##245004
Select _"<Lie to Lord Antenorian about how much you know.>"_ |gossip 134001
Inform Antenorian of Your Findings |q 90907/4 |goto Eversong Woods M/0 47.20,68.24
step
talk Lord Antenorian##245004
|tip Inside the building.
turnin The First to Know##90907 |goto Eversong Woods M/0 47.20,68.24
accept Chance Meeting##86622 |goto Eversong Woods M/0 47.20,68.24
step
Rendez-vous with Lord Antenorian's Scout |q 86622/1 |goto Eversong Woods M/0 46.74,63.91
|tip You will be attacked.
step
kill Cultist Ambusher##244434 |q 86622/2 |goto Eversong Woods M/0 46.74,63.91
step
collect Suspicious Missive##243221 |q 86622/3 |goto Eversong Woods M/0 46.74,63.91
|tip Loot it from the Cultist Ambusher.
step
talk Arator##236100
|tip Inside the building.
turnin Chance Meeting##86622 |goto Eversong Woods M/0 47.71,69.69
step
talk Magister Umbric##242143
|tip Inside the building.
accept The Ransacked Lab##86626 |goto Eversong Woods M/0 47.71,69.77
step
click Rumpled Papers+
|tip Grey piles of debris.
|tip Inside the building.
click Void Sample+
|tip Blue and purple crystals.
Find #3# Void Samples |q 86626/1 |goto Eversong Woods M/0 47.66,69.81
step
click Forgotten Pendant
|tip Inside the building.
Examine the Forgotten Pendant |q 86626/2 |goto Eversong Woods M/0 47.76,69.86
step
talk Magister Umbric##236687
|tip Inside the building.
turnin The Ransacked Lab##86626 |goto Eversong Woods M/0 47.72,69.76
accept The Battle for Tranquillien##86632 |goto Eversong Woods M/0 47.72,69.76
step
talk Arator##236686
|tip Inside the building.
accept The Traitors of Tranquillien##90509 |goto Eversong Woods M/0 47.69,69.69
accept The Heart of Tranquillien##90493 |goto Eversong Woods M/0 47.69,69.69
stickystart "Rescue_Tranquillien_Citizens"
stickystart "Fight_Back_Against_The_Twilights_Blade"
step
kill Ranger Lethvalin##241723 |q 90509/1 |goto Eversong Woods M/0 47.60,67.56
step
kill Matron Narsilla##236631 |q 90509/2 |goto Eversong Woods M/0 47.73,65.19
step
kill Guard Captain Leonic##236777 |q 90509/3 |goto Eversong Woods M/0 49.39,67.47
|tip Inside the building.
step
label "Rescue_Tranquillien_Citizens"
clicknpc Tranquillien Citizen##236683+
|tip Scared friendly allies.
|tip Various names.
Rescue #8# Tranquillien Citizens |q 90493/1 |goto Eversong Woods M/0 48.37,67.37
step
label "Fight_Back_Against_The_Twilights_Blade"
kill Advisor Valwyn##245804, Arcanist Vandril##245803, Magister Darenis##245802, Magistrix Aminel##245801, Terellia##245805, Twilight's Blade Adherent##236627, Twilight's Blade Recruit##236628, Unfettered Shadow##241678
click Various Objects
Fight Back Against the Twilight's Blade |q 86632/1 |goto Eversong Woods M/0 48.37,67.37
step
talk Arator##243984
|tip Inside the building.
turnin The Battle for Tranquillien##86632 |goto Eversong Woods M/0 48.95,68.53
turnin The Traitors of Tranquillien##90509 |goto Eversong Woods M/0 48.95,68.53
turnin The Heart of Tranquillien##90493 |goto Eversong Woods M/0 48.95,68.53
accept The Missing Magister##90494 |goto Eversong Woods M/0 48.95,68.53
step
Find Umbric |q 90494/1 |goto Eversong Woods M/0 47.19,68.30
|tip Inside the building.
step
kill Secretary Faloria##241674 |q 90494/2 |goto Eversong Woods M/0 47.19,68.30
|tip Inside the building.
step
collect Jeweled Key##243468 |q 90494/3 |goto Eversong Woods M/0 47.19,68.30
|tip Loot it from Secretary Faloria inside the building.
step
click Ominous Lockbox
|tip Inside the building.
collect Plans of Infiltration##239134 |q 90494/4 |goto Eversong Woods M/0 47.12,68.36
step
talk Magister Umbric##242143
|tip Inside the building.
turnin The Missing Magister##90494 |goto Eversong Woods M/0 47.71,69.77
accept Face the Past##86781 |goto Eversong Woods M/0 47.71,69.77
step
talk Arcanist Taemin##247500
turnin To the South Tower##91463 |goto Eversong Woods M/0 43.87,75.55
accept The Dark Part of the Woods##91349 |goto Eversong Woods M/0 43.87,75.55
step
clicknpc Skittish Springrunner##248646, Wandering Mauler##247504, Wandering Stalker##247505
|tip Various animals.
|tip You may be attacked.
Test #8# Animals |q 91349/1 |goto Eversong Woods M/0 44.71,78.48
step
Investigate the Roar |q 91349/2 |goto Eversong Woods M/0 42.85,79.09
step
click Wandering Cub##247557
Rescue the Bear Cub |q 91349/3 |goto Eversong Woods M/0 42.87,79.16 |count 1 hidden
step
click Wandering Cub##247557
Rescue the Bear Cub |q 91349/3 |goto Eversong Woods M/0 42.83,79.16 |count 2 hidden
step
click Mysterious Bloom
collect Mysterious Bloom##249492 |q 91349/4 |goto Eversong Woods M/0 42.84,79.24
step
talk Arcanist Taemin##247500
turnin The Dark Part of the Woods##91349 |goto Eversong Woods M/0 43.47,75.04
accept A Real Assignment##91350 |goto Eversong Woods M/0 43.47,75.04
step
talk Fern Shadestar##257393
accept Slithering Closer##94370 |goto Eversong Woods M/0 37.29,73.87
|only if not haveq(91493) and not completedq(91493)
step
Regroup in Windrunner Village |q 86781/2 |goto Eversong Woods M/0 36.98,74.01
step
talk Magister Umbric##236363
turnin Face the Past##86781 |goto Eversong Woods M/0 36.98,74.01
step
talk Arator##236391
accept The Past Keeps Watch##86634 |goto Eversong Woods M/0 36.97,74.09
stickystart "Activate_Decrepit_Ranger_Contructs"
step
talk Talandra Dawnsprite##249337
accept Graveblossom Gardening##92021 |goto Eversong Woods M/0 37.50,72.48
accept A Venomous Vocation##92022 |goto Eversong Woods M/0 37.50,72.48
stickystart "Collect_Pristine_Graveblossoms"
step
kill Elder Mournbat##254690, Venomous Mournbat##249421
|tip Bats.
collect 6 Potent Mournbat Venom##253869 |q 92022/1 |goto Eversong Woods M/0 38.96,74.73
step
label "Collect_Pristine_Graveblossoms"
click Blooming Graveblossom+
|tip Large flowers.
collect 8 Pristine Graveblossom##249471 |q 92021/1 |goto Eversong Woods M/0 38.96,74.73
step
talk Talandra Dawnsprite##249337
turnin Graveblossom Gardening##92021 |goto Eversong Woods M/0 37.50,72.48
turnin A Venomous Vocation##92022 |goto Eversong Woods M/0 37.50,72.48
accept Suspicious Sundries##92023 |goto Eversong Woods M/0 37.50,72.48
step
label "Activate_Decrepit_Ranger_Contructs"
clicknpc Decrepit Ranger Construct##236360+
|tip Humanoid machines.
|tip You will be attacked.
Activate #6# Decrepit Ranger Constructs |q 86634/1 |goto Eversong Woods M/0 37.05,73.90
step
talk Arator##236391
turnin The Past Keeps Watch##86634 |goto Eversong Woods M/0 36.98,74.09
step
talk Magister Umbric##236363
accept Comprehend the Void##86633 |goto Eversong Woods M/0 36.99,74.01
step
Meet Umbric at the Ritual Site |q 86633/1 |goto Eversong Woods M/0 37.34,74.70
|tip Upstairs inside the building.
step
click Void Shard
|tip Upstairs inside the building.
Carry the Void Shard |havebuff Carrying Void Shard##1227973 |goto Eversong Woods M/0 37.12,74.88 |q 86633
step
Subsume the Void Shard |q 86633/3 |goto Eversong Woods M/0 37.39,74.72 |count 1 hidden
|tip Upstairs inside the building.
step
click Void Shard
|tip Upstairs inside the building.
Carry the Void Shard |havebuff Carrying Void Shard##1227974 |goto Eversong Woods M/0 37.31,74.43 |q 86633
step
Subsume the Void Shard |q 86633/3 |goto Eversong Woods M/0 37.39,74.72 |count 2 hidden
|tip Upstairs inside the building.
step
click Void Shard
|tip Upstairs inside the building.
Carry the Void Shard |havebuff Carrying Void Shard##1240751 |goto Eversong Woods M/0 37.57,74.62 |q 86633
step
Subsume the Void Shard |q 86633/3 |goto Eversong Woods M/0 37.39,74.72 |count 3 hidden
|tip Upstairs inside the building.
step
click Void Shard
|tip Upstairs inside the building.
Carry the Void Shard |havebuff Carrying Void Shard##1227972 |goto Eversong Woods M/0 37.49,75.12 |q 86633
step
Subsume the Void Shard |q 86633/3 |goto Eversong Woods M/0 37.39,74.72 |count 4 hidden
|tip Upstairs inside the building.
step
Watch the dialogue
|tip Upstairs inside the building.
talk Magister Umbric##237240
turnin Comprehend the Void##86633 |goto Eversong Woods M/0 37.33,74.70
accept To Deatholme##86635 |goto Eversong Woods M/0 37.33,74.70
step
talk Numia Golden##250298
turnin Slithering Closer##94370 |goto Eversong Woods M/0 38.96,61.57
|only if haveq(94370) or completedq(94370)
step
talk Hathvelion Sungaze##247503
accept Not What I Ordered##91493 |goto Eversong Woods M/0 38.96,61.59
step
click Intercepted Shipment+
|tip Wooden crates.
Inspect #5# Intercepted Shipments |q 91493/1 |goto Eversong Woods M/0 38.93,61.44
step
talk Hathvelion Sungaze##247503
turnin Not What I Ordered##91493 |goto Eversong Woods M/0 38.96,61.60
accept Daggers in My Spine##91505 |goto Eversong Woods M/0 38.96,61.60
step
talk Numia Golden##250298
accept One Elf's Trash, Another Elf's Treasure##91494 |goto Eversong Woods M/0 38.96,61.57
step
talk Ranger Krenn'an##250291
accept Familiar Faces in Peril##91495 |goto Eversong Woods M/0 38.99,61.63
step
click Container of Unstable Arcane
Test the Discarded Wand |q 91494/1 |goto Eversong Woods M/0 38.98,61.58
stickystart "Siphon_Arcana"
stickystart "Slay_Daggerspine_Naga"
step
talk Apothecarist Enith##248060
Select _"Get to safety."_ |gossip 134652
Rescue Apothecary Enith |q 91495/1 |goto Eversong Woods M/0 36.84,60.74
step
talk Ranger Vedoran##248058
Select _"Get to safety."_ |gossip 134653
Rescue Ranger Vedoran |q 91495/3 |goto Eversong Woods M/0 37.54,65.05
step
talk Apprentice Varnis##248059
Select _"Get to safety."_ |gossip 134654
Rescue Apprentice Varnis |q 91495/2 |goto Eversong Woods M/0 35.62,67.93
step
label "Siphon_Arcana"
clicknpc Captured Mana Wyrm##247569+
|tip Fish in pink bubbles.
click Arcane Cannister+
|tip Metal containers.
Siphon Arcana |q 91494/2 |goto Eversong Woods M/0 36.72,64.99
step
label "Slay_Daggerspine_Naga"
kill Daggerspine Infuser##247966, Daggerspine Myrmidon##247551
Slay #12# Daggerspine Naga |q 91505/1 |goto Eversong Woods M/0 36.18,64.51
step
talk Ranger Krenn'an##250291
turnin Familiar Faces in Peril##91495 |goto Eversong Woods M/0 38.99,61.63
step
talk Numia Golden##250298
turnin One Elf's Trash, Another Elf's Treasure##91494 |goto Eversong Woods M/0 38.96,61.57
step
talk Hathvelion Sungaze##247503
turnin Daggers in My Spine##91505 |goto Eversong Woods M/0 38.96,61.59
accept Arcane Amassing##91504 |goto Eversong Woods M/0 38.96,61.59
step
kill Princess Naz'jena##247552 |q 91504/1 |goto Eversong Woods M/0 33.44,65.39
|tip Inside the building.
step
talk Vehn Sorrelstride##249436
buy Vial of Quicksilver##254280 |q 92023/1 |goto Eversong Woods M/0 39.25,61.09
step
talk Nara Fadebranch##249437
buy Flask of Dragon's Blood##254281 |q 92023/2 |goto Eversong Woods M/0 39.59,60.56
step
talk Limien Bountcask##249426
buy Bottle of Magister's Reserve##254282 |q 92023/3 |goto Eversong Woods M/0 40.72,60.11
step
talk Limien Bountcask##249426
turnin Suspicious Sundries##92023 |goto Eversong Woods M/0 40.72,60.11
accept House Call##92024 |goto Eversong Woods M/0 40.72,60.11
step
talk Hathvelion Sungaze##249870
|tip Inside the building.
turnin Arcane Amassing##91504 |goto Eversong Woods M/0 40.21,61.35
step
click Stained Tool Rack##253050
|tip Inside the building.
Select _"Something is watching you."_ |gossip 136353
Find the First Clue |q 92024/1 |goto Eversong Woods M/0 37.64,72.15
step
click Suspicious Urn##253054
|tip Inside the building.
Select _"Something is watching you."_ |gossip 136354
|tip You will be attacked.
Find the Second Clue |q 92024/2 |goto Eversong Woods M/0 37.49,72.28
step
click Well-Loved Tome##254710
|tip Inside the building.
Select _"Something is watching you."_ |gossip 136355
|tip You will be attacked.
Find the Final Clue |q 92024/3 |goto Eversong Woods M/0 37.45,72.06
step
clicknpc Well-Loved Tome##253058
|tip Inside the building.
turnin House Call##92024 |goto Eversong Woods M/0 37.45,72.06
accept Flowers for Amalthea##92025 |goto Eversong Woods M/0 37.45,72.06
step
Watch the dialogue
talk Talandra Dawnsprite##249337
Select _"Very well."_ |gossip 136372
Confront Talandra Dawnsprite |q 92025/1 |goto Eversong Woods M/0 32.82,78.78
step
click Gravewax Candle+
|tip Purple candles.
Light #4# Gravewax Candles |q 92025/2 |goto Eversong Woods M/0 32.83,78.83
step
Draw the Ritual Circle |q 92025/3 |goto Eversong Woods M/0 32.83,78.83
|tip Use the {o}Inscribe Ritual Circle{} button ability.
step
Watch the dialogue
Observe the Ritual |q 92025/4 |goto Eversong Woods M/0 32.83,78.83
step
talk Talandra Dawnsprite##249337
turnin Flowers for Amalthea##92025 |goto Eversong Woods M/0 32.82,78.78
step
talk Galendror Whitewing##244537
fpath Silverglade Refuge |goto Eversong Woods M/0 31.01,90.07
|only if Alliance
step
Journey to the Ruins of Deatholme |q 86635/1 |goto Eversong Woods M/0 44.34,84.70
step
talk Valeera Sanguinar##242099
Select _"I'm ready."_ |gossip 136049
Speak to Valeera Sanguinar |q 86635/2 |goto Eversong Woods M/0 44.34,84.70
step
talk Magister Umbric##236730
turnin To Deatholme##86635 |goto Eversong Woods M/0 44.33,84.66
accept Void Walk With Me##86636 |goto Eversong Woods M/0 44.33,84.66
step
Enter the cave |goto Eversong Woods M/0 45.16,85.54 < 20 |walk |only if not (subzone("Ruins of Deatholme") and indoors())
Enter the Deathholme Delve |scenariostart |goto Eversong Woods M/0 45.56,86.32 |q 86636
|tip Walk into the wall of smoke.
step
Enter the Deathholme Delve |q 86636/1
|tip Walk to the campfire.
step
click Delvers' Supplies##207283
Select _"<View companion supplies.>"_ |gossip 135011
Open the Delvers' Supplies |q 86636/2 |goto Voidholme/0 34.12,69.53
step
Select a Combat Role for Valeera Sanguinar |q 86636/3 |goto Voidholme/0 34.12,69.53
|tip Choose what you prefer.
step
kill Lord Antenorian##246717 |q 86636/4
|tip Complete the delve.
step
Reclaim the Stolen Knowledge |q 86636/5
|tip Loot it from Lord Antenorian.
step
Leave the Delve |scenarioend |q 86636
step
talk Magister Umbric##236730
turnin Void Walk With Me##86636 |goto Eversong Woods M/0 44.65,85.19
step
talk Arator##242433
accept Anything but Reprieve##86637 |goto Eversong Woods M/0 44.63,85.30
step
talk Arator##242433
Select _"Let's contact Silvermoon."_ |gossip 133784 |noautogossip
Contact Silvermoon |q 86637/1 |goto Eversong Woods M/0 44.63,85.31
step
talk Valdekar Solaar##245745
accept A Fish!##91271 |goto Eversong Woods M/0 48.76,76.73
step
talk Melandra##247800
Select _"Train me."_ |gossip 38266
|tip Learn {o}Fishing{}.
Train Fishing |complete hasprof("Fishing",1) or completedq(91271) |goto Eversong Woods M/0 48.67,76.09
step
talk Melandra##247800
Select _"Train me."_ |gossip 38266
|tip Learn {o}Midnight Fishing{}.
Train Midnight Fishing |complete hasprof("Midnight Fishing",1) or completedq(91271) |goto Eversong Woods M/0 48.67,76.09
step
cast Fishing##1239033
Catch the Best Fish |q 91271/1 |goto Eversong Woods M/0 49.74,75.13
|tip Cast {o}Fishing{}.
|tip Fish in the {o}Sunbath School{} nearby.
step
talk Valdekar Solaar##245745
Select _"<Hand over the fish.>"_ |gossip 134361
Deliver the Fish to Valdekar |q 91271/2 |goto Eversong Woods M/0 48.76,76.73
step
cast Fishing##1239033
Catch the Best Fish |q 91271/3 |goto Eversong Woods M/0 49.42,76.11
|tip Cast {o}Fishing{}.
|tip Fish in the {o}Sunbath School{} nearby.
step
talk Valdekar Solaar##245745
Select _"<Hand over the fish.>"_ |gossip 134506
Deliver the Fish to Valdekar |q 91271/4 |goto Eversong Woods M/0 48.76,76.73
step
cast Fishing##1239033
Catch the Best Fish |q 91271/5 |goto Eversong Woods M/0 48.73,75.32
|tip Cast {o}Fishing{}.
|tip Fish in the {o}Sunbath School{} nearby.
step
talk Valdekar Solaar##245745
Select _"<Hand over the fish.>"_ |gossip 134505
Deliver the Fish to Valdekar |q 91271/6 |goto Eversong Woods M/0 48.76,76.73
step
cast Fishing##1239033
Catch the Best Fish |q 91271/7 |goto Eversong Woods M/0 48.65,75.97
|tip Cast {o}Fishing{}.
|tip Fish in the {o}Sunbath School{} nearby.
step
talk Valdekar Solaar##245745
turnin A Fish!##91271 |goto Eversong Woods M/0 48.76,76.73
step
Watch the dialogue
talk Valdekar Solaar##245745
accept Secret Ingredients##91328 |goto Eversong Woods M/0 48.76,76.73
step
talk Kaliel Solaar##245748
accept Pesky Pests##91090 |goto Eversong Woods M/0 48.77,76.71
stickystart "Collect_Belanise_Blossoms"
stickystart "Kill_Sungrubs"
stickystart "Fly_Off_Persistent_Butterflies"
step
click Sinara Vine+
|tip Red bushes.
collect 5 Sinara Berry##246363 |q 91328/2 |goto Eversong Woods M/0 48.32,76.00
step
label "Collect_Belanise_Blossoms"
click Belanise Cluster+
|tip White bushes.
collect 6 Belanise Blossom##246364 |q 91328/1 |goto Eversong Woods M/0 48.32,76.00
step
label "Kill_Sungrubs"
kill 10 Sungrub##246574 |q 91090/2 |goto Eversong Woods M/0 48.62,75.89
|tip Large grubs.
step
label "Fly_Off_Persistent_Butterflies"
Fly Off #10# Persistent Butterflies |q 91090/1 |goto Eversong Woods M/0 48.62,75.89
|tip Large butterfies flying around.
|tip Fly through them.
step
talk Valdekar Solaar##245745
turnin Secret Ingredients##91328 |goto Eversong Woods M/0 48.76,76.74
step
talk Kaliel Solaar##245748
turnin Pesky Pests##91090 |goto Eversong Woods M/0 48.77,76.70
accept Lost in Light##91137 |goto Eversong Woods M/0 48.77,76.70
step
kill Liya Waterbloom##245942 |q 91137/1 |goto Eversong Woods M/0 50.26,74.14
step
talk Kaliel Solaar##245748
turnin Lost in Light##91137 |goto Eversong Woods M/0 48.77,76.71
step
talk Farstrider Sedina##238083
accept Facing the Sun##87399 |goto Eversong Woods M/0 50.52,78.16
step
kill Agitated Wyrm##238087, Territorial Dragonhawk##238089
Slay #8# Encroaching Wildlife |q 87399/1 |goto Eversong Woods M/0 51.26,76.77
step
talk Farstrider Sedina##238083
turnin Facing the Sun##87399 |goto Eversong Woods M/0 50.52,78.16
accept Scattered in Sunbeams##87400 |goto Eversong Woods M/0 50.52,78.16
step
talk Harris Lightsbreath##238084
accept Gardener Mishap##87401 |goto Eversong Woods M/0 50.49,78.11
step
kill Automated Gardener##238475
collect Humming Core##238677 |q 87401/1 |goto Eversong Woods M/0 52.44,75.89
step
click Odd Flower
Find Evidence of the Researchers |q 87400/1 |goto Eversong Woods M/0 52.35,74.84 |count 1 hidden
step
click Research Log
Find Evidence of the Researchers |q 87400/1 |goto Eversong Woods M/0 53.22,73.92 |count 2 hidden
step
click Mirveda Sunpetal
Find Evidence of the Researchers |q 87400/1 |goto Eversong Woods M/0 51.53,73.49 |count 3 hidden
step
talk Farstrider Sedina##238083
turnin Scattered in Sunbeams##87400 |goto Eversong Woods M/0 50.52,78.16
step
talk Harris Lightsbreath##238084
turnin Gardener Mishap##87401 |goto Eversong Woods M/0 50.49,78.11
accept The Light Provides##87402 |goto Eversong Woods M/0 50.49,78.11
step
use Humming Core##246441
Open the Door |q 87402/1 |goto Eversong Woods M/0 51.29,76.72
step
kill Hungering Lightroot##238495 |q 87402/2 |goto Eversong Woods M/0 51.43,76.41
|tip Inside the building.
step
talk Harris Lightsbreath##238084
turnin The Light Provides##87402 |goto Eversong Woods M/0 50.49,78.11
step
talk Captain Dawnrunner##247593
turnin A Real Assignment##91350 |goto Eversong Woods M/0 59.36,68.81
accept Recovery Mission##91384 |goto Eversong Woods M/0 59.36,68.81
step
talk Arcanist Taemin##247596
accept Tidy Up##91383 |goto Eversong Woods M/0 59.40,68.89
stickystart "Sweep_Webs"
stickystart "Collect_Scattered_Supplies"
step
click Messy Nest##249271+
|tip Large bird nests.
|tip You may be attacked.
Clear #5# Nests |q 91383/1 |goto Eversong Woods M/0 59.44,68.37
step
label "Sweep_Webs"
click Dusty Web##249273+
|tip Large spider webs.
|tip You may be attacked. |notinsticky
Sweep #5# Webs |q 91383/2 |goto Eversong Woods M/0 59.44,68.37
step
label "Collect_Scattered_Supplies"
kill Enclave Lurker##247603, Watchful Striker##247630
click Scattered Supplies+
|tip Wooden crates.
collect 12 Scattered Supplies##249272 |q 91384/1 |goto Eversong Woods M/0 59.45,69.14
step
talk Captain Dawnrunner##247593
turnin Recovery Mission##91384 |goto Eversong Woods M/0 59.36,68.81
turnin Tidy Up##91383 |goto Eversong Woods M/0 59.36,68.81
accept A Ranger's Spirit##91385 |goto Eversong Woods M/0 59.36,68.81
step
talk Arcanist Taemin##249398
Select _"What's on your mind?"_ |gossip 135184
Talk with Arcanist Taemin |q 91385/1 |goto Eversong Woods M/0 59.49,67.12
step
Follow the Flower Trail |q 91385/2 |goto Eversong Woods M/0 59.44,66.60
|tip Approach the green flower.
step
Follow the Flower Trail |q 91385/3 |goto Eversong Woods M/0 59.21,66.27
|tip Approach the green flower.
step
Follow the Flower Trail |q 91385/4 |goto Eversong Woods M/0 58.88,65.95
|tip Approach the green flower.
step
Follow the Flower Trail |q 91385/5 |goto Eversong Woods M/0 59.08,65.45
|tip Approach the green flower.
step
Follow the Flower Trail |q 91385/6 |goto Eversong Woods M/0 58.88,64.90
|tip Approach the green flower.
step
Follow the Flower Trail |q 91385/7 |goto Eversong Woods M/0 58.95,64.35
|tip Approach the green flower.
step
Follow the Flower Trail |q 91385/8 |goto Eversong Woods M/0 59.15,64.07
|tip Approach the green flower.
step
Follow the Flower Trail |q 91385/9 |goto Eversong Woods M/0 59.34,63.80
|tip Approach the green flower.
step
Follow the Flower Trail |q 91385/10 |goto Eversong Woods M/0 59.51,63.50
|tip Approach the green flower.
step
click Spirit of Lake Elrendar##247602
Greet the Spirit of Lake Elrendar |q 91385/11 |goto Eversong Woods M/0 59.49,63.00
step
talk Arcanist Taemin##249398
turnin A Ranger's Spirit##91385 |goto Eversong Woods M/0 59.49,67.11
step
talk Lady Liadrin##236099
turnin Anything but Reprieve##86637 |goto Eversong Woods M/0 52.67,61.55
accept What's Left##86639 |goto Eversong Woods M/0 52.67,61.55
step
talk Arator##236132
accept Choking Tendrils##86638 |goto Eversong Woods M/0 52.64,61.59
stickystart "Aid_Suncrown_Survivors"
stickystart "Slay_Lightbloom_Creatures_86638"
step
talk Magistrix Silanna##251539
Select _"I'll cover your escape. Go quickly!"_ |gossip 132680
|tip You will be attacked.
Rescue Magistrix Silanna |q 86639/3 |goto Eversong Woods M/0 54.67,60.94
step
talk Apprentice Erilia##251540
|tip {o}Ground floor{} inside the building.
Select _"<Instruct the defender go to the Runestone Shan'dor, where it is safe.>"_ |gossip 132652
Rescue Apprentice Erilia |q 86639/2 |goto Eversong Woods M/0 53.54,59.35
step
talk Trainee Solanin##251543
|tip Inside the building.
Select _"<Instruct the defender go to the Runestone Shan'dor, where it is safe.>"_ |gossip 132684
Rescue Trainee Solanin |q 86639/5 |goto Eversong Woods M/0 54.85,57.86
step
talk Outrunner Alarion##251542
|tip Up on the platform.
Select _"<Instruct the defender go to the Runestone Shan'dor, where it is safe.>"_ |gossip 135781
Rescue Outrunner Alarion |q 86639/4 |goto Eversong Woods M/0 55.86,57.44
step
label "Aid_Suncrown_Survivors"
clicknpc Suncrown Survivor##240067+
|tip Blood elves.
|tip Kill enemies channeling on them.
click Choking Roots+
|tip Tree roots.
Aid #10# Suncrown Survivors |q 86639/1 |goto Eversong Woods M/0 54.73,60.05
step
label "Slay_Lightbloom_Creatures_86638"
kill Bloom Dominator##236369, Bloom Propagator##236367, Bloom Propagator##240103, Incubating Lasher##251645, Infused Seedling##239866, Lightbloat Trampler##236552, Lightfrenzied Lasher##236557, Lucent Hookbeak##236560, Lucent Hookbeak##244533
Slay Lightbloom Creatures |q 86638/1 |goto Eversong Woods M/0 54.73,60.05
step
talk Lady Liadrin##236099
turnin What's Left##86639 |goto Eversong Woods M/0 53.60,54.60
step
talk Arator##236568
turnin Choking Tendrils##86638 |goto Eversong Woods M/0 53.55,54.63
step
talk Lor'themar Theron##236572
accept Premonition##86640 |goto Eversong Woods M/0 53.51,54.58
step
Deliver Supplies to Runestone Shan'dor |q 92396/3 |goto Eversong Woods M/0 53.41,54.26
|tip Use the {o}Make Delivery!{} button ability.
step
talk Lor'themar Theron##241206
turnin Premonition##86640 |goto Eversong Woods M/0 59.19,51.03
accept Old Scars##86641 |goto Eversong Woods M/0 59.19,51.03
step
talk Arator##236567
accept A Foe Unseen##86642 |goto Eversong Woods M/0 59.13,51.04
stickystart "Disrupt_The_Troll_Lumber_Operations"
step
Investigate the Amani Operations |q 86642/1 |goto Eversong Woods M/0 60.78,51.85 |count 1 hidden
step
click Shipment Crate
Investigate the Amani Operations |q 86642/1 |goto Eversong Woods M/0 60.63,52.40 |count 2 hidden
step
clicknpc Dead Amani Feller##245219
Investigate the Amani Operations |q 86642/1 |goto Eversong Woods M/0 63.02,53.08 |count 3 hidden
step
click Amani Missive
Investigate the Amani Operations |q 86642/1 |goto Eversong Woods M/0 62.11,50.26 |count 4 hidden
step
click Lightbloom Lumber Stack
Investigate the Amani Operations |q 86642/1 |goto Eversong Woods M/0 63.35,48.37 |count 5 hidden
step
label "Disrupt_The_Troll_Lumber_Operations"
kill Amani Enforcer##236374, Amani Feller##236372, Amani Watcher##237344, Cre'van##250719
click Various Objects
Disrupt the Troll Lumber Operations |q 86641/1 |goto Eversong Woods M/0 62.67,50.41
step
talk Lor'themar Theron##241272
turnin Old Scars##86641 |goto Eversong Woods M/0 64.46,48.73
step
talk Arator##241205
turnin A Foe Unseen##86642 |goto Eversong Woods M/0 64.52,48.69
accept Following the Root##86643 |goto Eversong Woods M/0 64.52,48.69
step
Deliver Supplies to Dawnstar Spire's Runestone |q 92396/4 |goto Eversong Woods M/0 61.55,62.65
|tip Use the {o}Make Delivery!{} button ability.
step
talk Alesil Dawnblood##250798
turnin Calling in the Cavalry##92396 |goto Eversong Woods M/0 61.74,62.88
accept Dawnstar Defense##92397 |goto Eversong Woods M/0 61.74,62.88
step
click Various Objects
Rebuild the Defenses |q 92397/1 |goto Eversong Woods M/0 61.90,62.78
step
talk Alesil Dawnblood##250798
turnin Dawnstar Defense##92397 |goto Eversong Woods M/0 61.74,62.88
accept And Then They Came##92398 |goto Eversong Woods M/0 61.74,62.88
step
talk Alesil Dawnblood##252599
Select _"I'll defend the runestone."_ |gossip 136288
Kill the enemies that attack in waves
Protect Alesil Dawnblood |q 92398/2 |goto Eversong Woods M/0 60.71,62.38
step
talk Alesil Dawnblood##250798
turnin And Then They Came##92398 |goto Eversong Woods M/0 61.74,62.88
step
Meet Arator at the Entrance of Watha'nan Crypts |q 86643/1 |goto Eversong Woods M/0 56.69,65.77
step
click Shrouding Totem
|tip Inside the crypt.
Destroy the Warding Totem |q 86643/3 |goto Wartha'nan Crypts/0 86.80,32.12 |count 1 hidden
step
click Shrouding Totem
|tip Inside the crypt.
Destroy the Warding Totem |q 86643/3 |goto Wartha'nan Crypts/0 86.28,36.75 |count 2 hidden
step
clicknpc Grimfire Totem##251863
|tip Inside the crypt.
Destroy the Warding Totem |q 86643/3 |goto Wartha'nan Crypts/0 64.80,29.19 |count 3 hidden
step
clicknpc Stranglemist Totem##251866
|tip Inside the crypt.
Destroy the Warding Totem |q 86643/3 |goto Wartha'nan Crypts/0 55.81,27.05 |count 4 hidden
step
talk Arator##236610
|tip Inside the crypt.
Select _"<Stay silent.>"_ |gossip 132886
Speak to Arator |q 86643/4 |goto Wartha'nan Crypts/0 52.53,27.74
step
Watch the dialogue
talk Arator##236610
|tip Inside the crypt.
turnin Following the Root##86643 |goto Wartha'nan Crypts/0 43.78,30.05
accept Gods Before Us##86644 |goto Wartha'nan Crypts/0 43.78,30.05
step
click Embossed Tablet
|tip Inside the crypt.
Inspect the Amani Riddle |q 86644/2 |goto Wartha'nan Crypts/0 38.23,28.85
step
kill Spawn of Shadra##244858
|tip Inside the crypt.
collect Bonecarapace Fangs##244143 |n
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 41.30,52.43 |q 86644
step
kill Child of Hir'eek##244857
|tip Downstairs inside the crypt.
collect Bloodvein Clot##244144 |n
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 58.75,50.19 |q 86644
step
click Ritual Vase
|tip Inside the crypt.
Select _"<Place Bonecarapace Fangs into the vase.>"_ |gossip 133889
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 37.96,30.43 |q 86644
step
click Ritual Vase
|tip Inside the crypt.
Select _"<Place Bloodvein Clot into the vase.>"_ |gossip 133890
Solve the Amani Riddle |q 86644/3 |goto Wartha'nan Crypts/0 38.23,27.04
step
Venture Deeper into the Crypt |q 86644/4 |goto Wartha'nan Crypts/0 22.95,31.07
|tip Downstairs inside the crypt.
step
clicknpc Carved Tile##240710
|tip Red symbol.
|tip Downstairs inside the crypt.
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 19.75,32.38 |q 86644
step
clicknpc Carved Tile##240711
|tip Red symbol.
|tip Downstairs inside the crypt.
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 13.89,30.96 |q 86644
step
clicknpc Carved Tile##240709
|tip White symbol.
|tip Downstairs inside the crypt.
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 16.72,31.56 |q 86644
step
clicknpc Carved Tile##240708
|tip White symbol.
|tip Downstairs inside the crypt.
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 13.47,34.51 |q 86644
step
clicknpc Carved Tile##240707
|tip Purple symbol.
|tip Downstairs inside the crypt.
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 13.10,38.01 |q 86644
step
clicknpc Carved Tile##240697
|tip Purple symbol.
|tip Downstairs inside the crypt.
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 19.29,36.02 |q 86644
step
clicknpc Carved Tile##236650
|tip Green symbol.
|tip Downstairs inside the crypt.
Click Here to Continue |confirm |goto Wartha'nan Crypts/0 18.83,39.55 |q 86644
step
clicknpc Carved Tile##240685
|tip Green symbol.
|tip Downstairs inside the crypt.
Match the Carved Tiles |q 86644/5 |goto Wartha'nan Crypts/0 15.96,38.98
step
_Next to you:_
talk Arator##240662 |usename Arator##236610
|tip Downstairs inside the crypt.
turnin Gods Before Us##86644
accept An Impasse##86646
step
kill Vanatha##237386
|tip Downstairs inside the crypt.
Confront Vanatha |q 86646/1 |goto Wartha'nan Crypts/0 24.33,61.61
step
Leave the crypt |goto Wartha'nan Crypts/0 43.55,88.73 < 5 |walk |only if subzone("Watha'nan Crypts") and indoors()
talk Arator##236737
turnin An Impasse##86646 |goto Eversong Woods M/0 54.74,68.20
accept Beat of Blood##86647 |goto Eversong Woods M/0 54.74,68.20
step
talk Arator##236611
turnin Beat of Blood##86647 |goto Eversong Woods M/0 55.18,81.43
step
talk Lor'themar Theron##236612
accept Light Guide Us##86648 |goto Eversong Woods M/0 55.12,81.42
step
talk Eversong Farstrider##258559
Select _"Stop! The Amani are not the real threat here."_ |gossip 137985
Dissuade the Sin'dorei Forces |q 86648/2 |goto Eversong Woods M/0 55.54,81.39 |count 1 hidden
step
talk Eversong Spellbreaker##258560
Select _"Stop! The Amani are not the real threat here."_ |gossip 137986
Dissuade the Sin'dorei Forces |q 86648/2 |goto Eversong Woods M/0 55.88,81.42 |count 2 hidden
step
talk Eversong Arch Magister##258561
Select _"Stop! The Amani are not the real threat here."_ |gossip 137987
Dissuade the Sin'dorei Forces |q 86648/2 |goto Eversong Woods M/0 56.07,81.46 |count 3 hidden
step
talk Blessed Lightbringer##258562
Select _"Stop! The Amani are not the real threat here."_ |gossip 137988
Dissuade the Sin'dorei Forces |q 86648/2 |goto Eversong Woods M/0 56.22,81.46 |count 4 hidden
step
talk Veteran Blood Knight##258563
Select _"Stop! The Amani are not the real threat here."_ |gossip 137989
Dissuade the Sin'dorei Forces |q 86648/2 |goto Eversong Woods M/0 57.30,81.46 |count 5 hidden
step
talk Blessed Lightbringer##258564
Select _"Stop! The Amani are not the real threat here."_ |gossip 137990
Dissuade the Sin'dorei Forces |q 86648/2 |goto Eversong Woods M/0 57.59,81.46 |count 6 hidden
step
talk Eversong Magister##258565
Select _"Stop! The Amani are not the real threat here."_ |gossip 137991
Dissuade the Sin'dorei Forces |q 86648/2 |goto Eversong Woods M/0 58.14,81.38 |count 7 hidden
step
talk Veteran Blood Knight##258566
Select _"Stop! The Amani are not the real threat here."_ |gossip 137992
Dissuade the Sin'dorei Forces |q 86648/2 |goto Eversong Woods M/0 59.00,81.37 |count 8 hidden
Resolve the Battle at Amani Pass |q 86648/1 |goto Eversong Woods M/0 59.00,81.37
step
Find Arator and Liadrin in Amani Pass |q 86648/4 |goto Eversong Woods M/0 59.51,81.36
step
Find Lor'themar at the Top of Amani Pass |q 86648/5 |goto Eversong Woods M/0 60.25,81.45
step
talk Lor'themar Theron##236612
turnin Light Guide Us##86648 |goto Eversong Woods M/0 60.25,81.45
step
talk High Exarch Turalyon##241654
accept Past Redemption##86649 |goto Eversong Woods M/0 60.23,81.50
step
talk High Exarch Turalyon##241654
Select _"I'm ready."_ |gossip 132931
Speak to Turalyon |q 86649/1 |goto Eversong Woods M/0 60.23,81.50
step
talk Lor'themar Theron##237433
turnin Past Redemption##86649 |goto Eversong Woods M/0 60.59,81.49
accept Fractured##86650 |goto Eversong Woods M/0 60.59,81.49
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
Select _"What now?"_ |gossip 134143
Speak to Lor'themar |q 86650/1 |goto Silvermoon City M/0 45.44,70.34
step
Watch the dialogue
|tip Upstairs inside the building.
talk Lor'themar Theron##235787
turnin Fractured##86650 |goto Silvermoon City M/0 45.44,70.34
|tip You may need to relog to turn this in.
step
talk Vaelith Sunplume##241553
accept One Adventurous Hatchling##89383 |goto Eversong Woods M/0 56.84,35.56
accept A Hungry Flock##89384 |goto Eversong Woods M/0 56.84,35.56
accept A Roost-ed Development##89386 |goto Eversong Woods M/0 56.84,35.56
|only if completedq(86650) and not achieved(42045)
step
click Lost Hawkstrider Fledgling##243837
Send the Hawkstrider Fledgling Back |q 89383/1 |goto Eversong Woods M/0 53.66,35.23
|only if completedq(86650) and not achieved(42045)
stickystart "Collect_Juicy_Frog_Legs_2"
step
click Golden Sunleaf+
|tip Plants around the edge of the pond.
collect 6 Golden Sunleaf##245531 |q 89386/1 |goto Eversong Woods M/0 53.39,36.14
|only if completedq(86650) and not achieved(42045)
step
label "Collect_Juicy_Frog_Legs_2"
kill Gloombelly Toad##243171
collect 6 Juicy Frog Leg##244214 |q 89384/1 |goto Eversong Woods M/0 53.28,36.04
|only if completedq(86650) and not achieved(42045)
step
talk Vaelith Sunplume##241553
turnin One Adventurous Hatchling##89383 |goto Eversong Woods M/0 56.84,35.56 |only if haveq(89383) or completedq(89383)
turnin A Hungry Flock##89384 |goto Eversong Woods M/0 56.84,35.56 |only if haveq(89384) or completedq(89384)
turnin A Roost-ed Development##89386 |goto Eversong Woods M/0 56.84,35.56 |only if haveq(89386) or completedq(89386)
accept First Step Into Parenthood##89385 |goto Eversong Woods M/0 56.84,35.56
|only if haveq(89383,89384,89386) or completedq(89383,89384,89386) and not achieved(42045)
step
talk Taelia Fordragon##242803
accept Missing Paladins##90546 |goto Silvermoon City M/0 53.14,69.51
|only if Alliance and level >= 90
step
talk Taelia Fordragon##242889
turnin Missing Paladins##90546 |goto Eversong Woods M/0 44.03,66.97
|only if Alliance and level >= 90
step
talk Salandria##242802
accept Missing Paladins##90547 |goto Silvermoon City M/0 53.20,69.54
|only if Horde and level >= 90
step
talk Salandria##242890
turnin Missing Paladins##90547 |goto Eversong Woods M/0 44.05,66.98
|only if Horde and level >= 90
step
talk Taelia Fordragon##242889
accept Signs of the Struggle##90549 |goto Eversong Woods M/0 44.03,66.97
|only if level >= 90
step
talk Salandria##242890
accept Twilight Missive##90548 |goto Eversong Woods M/0 44.05,66.98
|only if level >= 90
stickystart "Collect_Twilights_Blade_Missives"
step
click Dropped Weapon
Find the Arms |q 90549/1 |goto Eversong Woods M/0 43.15,67.99 |count 1 hidden
|only if level >= 90
step
click Dropped Shield
Find the Arms |q 90549/1 |goto Eversong Woods M/0 42.86,68.60 |count 2 hidden
|only if level >= 90
step
click Dropped Weapon
Find the Arms |q 90549/1 |goto Eversong Woods M/0 43.30,69.13 |count 3 hidden
|only if level >= 90
step
click Dropped Weapon
|tip Upstairs inside the building.
Find the Arms |q 90549/1 |goto Eversong Woods M/0 43.29,69.85 |count 4 hidden
|only if level >= 90
step
talk Crusader Sombersun##242811
|tip Upstairs inside the building.
accept A Somber Sun##90550 |goto Eversong Woods M/0 43.29,69.77
|only if level >= 90
step
click Dropped Shield
Find the Arms |q 90549/1 |goto Eversong Woods M/0 43.99,69.48 |count 5 hidden
|only if level >= 90
step
click Dropped Shield
Find the Arms |q 90549/1 |goto Eversong Woods M/0 44.38,69.69 |count 6 hidden
|only if level >= 90
step
label "Collect_Twilights_Blade_Missives"
kill Heavy Caster##242972, Twilight Blade##242970, Twilight Shadecaster##242971
collect 6 Twilight's Blade Missive##244844 |q 90548/1 |goto Eversong Woods M/0 43.46,68.87
|only if level >= 90
step
talk Taelia Fordragon##242889
turnin Signs of the Struggle##90549 |goto Eversong Woods M/0 44.03,66.97
|only if level >= 90
step
talk Salandria##242890
turnin Twilight Missive##90548 |goto Eversong Woods M/0 44.05,66.98
turnin A Somber Sun##90550 |goto Eversong Woods M/0 44.05,66.98
accept Captured Information##90551 |goto Eversong Woods M/0 44.05,66.98
|only if level >= 90
step
kill Isolated Shadecaster##245455
clicknpc Isolated Shadecaster##245455
Capture the Isolated Shadecaster |q 90551/1 |goto Eversong Woods M/0 42.16,69.31
|only if level >= 90
step
Bring the Cultist to Hollow Grove |q 90551/2 |goto Eversong Woods M/0 41.58,72.16
|only if level >= 90
step
talk Salandria##242893
turnin Captured Information##90551 |goto Eversong Woods M/0 41.58,72.16
accept Interrogation##90552 |goto Eversong Woods M/0 41.58,72.16
|only if level >= 90
step
talk Salandria##242893
Select _"I am ready to begin."_ |gossip 135497
Speak with Salandria to Begin |q 90552/1 |goto Eversong Woods M/0 41.58,72.16
|only if level >= 90
step
Interrogate the Captive |q 90552/2 |goto Eversong Woods M/0 41.56,72.28
|tip Use the abilities.
|only if level >= 90
step
talk Salandria##242893
turnin Interrogation##90552 |goto Eversong Woods M/0 41.58,72.15
|only if level >= 90
step
talk Taelia Fordragon##242894
accept To the Ruins of Deatholme##90570 |goto Eversong Woods M/0 41.63,72.21
|only if level >= 90
step
talk Taelia Fordragon##242898
turnin To the Ruins of Deatholme##90570 |goto Eversong Woods M/0 44.41,81.22
accept Blessing of Freedom##90555 |goto Eversong Woods M/0 44.41,81.22
|only if level >= 90
step
talk Salandria##242897
accept Executing the Blades##90553 |goto Eversong Woods M/0 44.43,81.23
accept Leave Ashes in Your Wake##90554 |goto Eversong Woods M/0 44.43,81.23
|only if level >= 90
stickystart "Wreck_The_Camp"
stickystart "Slay_Cultists"
step
click Cage
Rescue Sunwalker Atohmo |q 90555/1 |goto Eversong Woods M/0 41.82,82.96
|only if level >= 90
step
click Cage
Rescue Archivist Colin |q 90555/2 |goto Eversong Woods M/0 42.16,83.72
|only if level >= 90
step
click Cage
Rescue Crusader Lightspear |q 90555/4 |goto Eversong Woods M/0 41.27,85.90
|only if level >= 90
step
Enter the underground cave |goto Eversong Woods M/0 41.92,86.22 < 15 |walk
click Cage
|tip Inside the cave.
Rescue Crusader Newbery |q 90555/5 |goto Eversong Woods M/0 41.62,86.24
|only if level >= 90
step
click Cage
|tip Upstairs inside the cave.
Rescue Crusader Flaresong |q 90555/3 |goto Eversong Woods M/0 42.31,85.11
|only if level >= 90
step
talk Crusader Whitney##242818
Select _"<Close the paladin's eyes.>"_ |gossip 134237
Rescue Crusader Whitney |q 90555/6 |goto Eversong Woods M/0 43.38,85.77
|only if level >= 90
step
Enter the underground cave |goto Eversong Woods M/0 42.77,88.28 < 20 |walk
click Cage
|tip Inside the cave.
Rescue Crusader Dawnheart |q 90555/9 |goto Eversong Woods M/0 42.43,89.02
|only if level >= 90
step
click Cage
Rescue Motega Firemane |q 90555/8 |goto Eversong Woods M/0 44.09,88.47
|only if level >= 90
step
click Cage
Rescue Bloodknight Ithelis |q 90555/7 |goto Eversong Woods M/0 45.13,87.48
|only if level >= 90
step
_Next to you:_
talk Taelia Fordragon##245943 |usename Taelia Fordragon##242898
turnin Blessing of Freedom##90555
|only if level >= 90
step
label "Wreck_The_Camp"
click Various Objects
Wreck the Camp |q 90554/1 |goto Eversong Woods M/0 43.40,85.77
|only if level >= 90
step
label "Slay_Cultists"
kill Dark Caller##242979, Darkness Evoker##242976, Death Caster##242978, Twilight Bruiser##242982, Twilight Death-Dealer##242980
|tip Let your allies tank for you.
Slay #15# Cultists |q 90553/1 |goto Eversong Woods M/0 43.40,85.77
|only if level >= 90
step
_Next to you:_
talk Salandria##245944 |usename Salandria##242897
turnin Executing the Blades##90553
turnin Leave Ashes in Your Wake##90554
accept Cutting off the Head##90556
|only if level >= 90
step
kill Overseer Mognak##246100 |q 90556/1 |goto Eversong Woods M/0 41.32,88.48
|only if level >= 90
step
Meet the Saved Paladins Outside of Deatholme |q 90556/2 |goto Eversong Woods M/0 44.42,81.08
|only if level >= 90
step
_Next to you:_
talk Salandria##245944 |usename Salandria##242897
turnin Cutting off the Head##90556
|only if level >= 90
step
|next "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Midnight Intro & Campaign (Full Zone)" |only if level < 90
|next "Leveling Guides\\Midnight (80-90)\\The War of Light and Shadow Campaign" |only if level >= 90
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Zul'Aman (Full Zone)",{
condition_valid=function() return level >= 83 or achieved(42045) end,
condition_valid_msg="You must earn the Midnight achievement by completing the story only campaign and hitting 90 once or reach at least level 83 before you can access Sojourner quests.",
},[[
step
Some chapters may be locked behind renown
|tip As prerequisites are determined, quests will be updated.
confirm
step
Click the Complete Quest Box
turnin Adventuring in Midnight##94993
|only if readyq(94993)
step
talk Lady Liadrin##236436
turnin The Gates of Zul'Aman##86708 |goto Eversong Woods M/0 60.14,81.45 |only if haveq(86708) or completedq(86708)
accept The Line Must be Drawn Here##86710 |goto Eversong Woods M/0 60.14,81.45
step
talk Zul'jan##249211
Select _"Return to Zul'Aman."_ |gossip 135099
Speak to Zul'jan |q 86710/1 |goto Eversong Woods M/0 60.29,81.46
step
Watch the dialogue
Calm the Situation |q 86710/2 |goto Eversong Woods M/0 60.29,81.46
step
kill Void Beast##249083 |q 86710/3 |goto Eversong Woods M/0 60.37,81.45
step
talk Lady Liadrin##236436
turnin The Line Must be Drawn Here##86710 |goto Eversong Woods M/0 60.14,81.45
accept Our Mutual Enemy##90749 |goto Eversong Woods M/0 60.14,81.45
step
Pass Through the Amani Gate with Lady Liadrin |q 90749/1 |goto Atal Aman M/1 5.47,46.99
|tip Inside the building.
step
talk Lady Liadrin##236485
|tip Inside the building.
turnin Our Mutual Enemy##90749 |goto Atal Aman M/1 5.47,46.99
accept Goodwill Tour##86868 |goto Atal Aman M/1 5.47,46.99
step
talk Zul'jarra##236468
|tip Inside the building.
accept Amani Clarion Call##86711 |goto Atal Aman M/1 5.66,47.76
stickystart "Kill_Invading_Shadows"
step
click Amani War Drum
Sound the Amani War Drum |q 86711/1 |goto Atal Aman M/1 16.51,47.61 |count 1 hidden
step
click Amani War Drum
Sound the Amani War Drum |q 86711/1 |goto Atal Aman M/1 24.79,48.49 |count 2 hidden
step
click Amani War Drum
Sound the Amani War Drum |q 86711/1 |goto Atal Aman M/1 35.83,49.24 |count 3 hidden
step
label "Kill_Invading_Shadows"
kill 10 Invading Shadow##244740 |q 86868/1 |goto Atal Aman M/1 24.33,47.35
|tip Purple bone elementals.
step
talk Lady Liadrin##236570
turnin Goodwill Tour##86868 |goto Atal Aman M/1 46.04,48.41
step
talk Zul'jarra##236559
turnin Amani Clarion Call##86711 |goto Atal Aman M/1 46.29,48.82
accept Show Us Your Worth##86717 |goto Atal Aman M/1 46.29,48.82
step
talk Zul'jan##236558
accept Important Amani##86719 |goto Atal Aman M/1 46.30,48.39
step
talk Eagletender Po'vari##241031
fpath Atal'Aman |goto Atal Aman M/1 39.79,40.79
stickystart "Disrupt_The_Twilight_Forces"
step
talk Elder Doru##236590
Select _"Zul'jan sent me to find you.."_ |gossip 132579
Tell Elder Doru to Evacuate |q 86719/1 |goto Atal Aman M/1 50.66,19.93
step
talk Torundo the Grizzled##236591
|tip Inside the building.
Select _"Yes. Zul'jan sent me to find you."_ |gossip 132582
Tell Torundo the Grizzled to Evacuate |q 86719/2 |goto Atal Aman M/1 35.66,24.66
step
talk Loa Speaker Kinduru##237301
Select _"It is time to evacuate, Loa Speaker Kinduru."_ |gossip 132584
Tell Kinduru to Evacuate |q 86719/3 |goto Atal Aman M/1 16.83,20.56
step
click Hastily Packed Belongings
Search for Hash'ey Staff |q 86719/4 |goto Atal Aman M/1 17.03,19.95 |count 1 hidden
step
click Hastily Packed Belongings
Search for Hash'ey Staff |q 86719/4 |goto Atal Aman M/1 17.10,19.85 |count 2 hidden
step
click Hastily Packed Belongings
collect Hash'ey Staff##237768 |q 86719/5 |goto Atal Aman M/1 16.52,20.73
step
talk Zul'jan##236522
turnin Important Amani##86719 |goto Atal Aman M/1 16.62,20.43
step
label "Disrupt_The_Twilight_Forces"
kill Twilight Acolyte##236580, Twilight Lynxskinner##236578, Twilight Slasher##236581, Twilight Spellmaster##236579, Untethered Shadow##236576
click Various Objects
clicknpc Injured Amani##245196+
|tip Kneeling trolls.
Disrupt the Twilight Forces |q 86717/1 |goto Atal Aman M/1 34.45,24.86
step
talk Zul'jan##236522
turnin Show Us Your Worth##86717 |goto Atal Aman M/1 16.62,20.46
accept Armed by Light##86716 |goto Atal Aman M/1 16.62,20.46
accept Everything We Worked For##86721 |goto Atal Aman M/1 16.62,20.46
stickystart "Collect_Lightwood_Weapons"
step
click Lightwood Pile
Extinguish the Lightwood Fire |q 86721/1 |goto Atal Aman M/1 16.45,59.36 |count 1 hidden
step
click Lightwood Pile
Extinguish the Lightwood Fire |q 86721/1 |goto Atal Aman M/1 22.47,61.14 |count 2 hidden
step
click Lightwood Pile
Extinguish the Lightwood Fire |q 86721/1 |goto Atal Aman M/1 23.67,67.91 |count 3 hidden
step
click Lightwood Pile
Extinguish the Lightwood Fire |q 86721/1 |goto Atal Aman M/1 17.93,76.17 |count 4 hidden
step
label "Collect_Lightwood_Weapons"
kill Twilight Lightburner##244744, Twilight Thief##236519
collect 8 Lightwood Weapon##237767 |q 86716/1 |goto Atal Aman M/1 20.09,67.80
step
click Huge Lightwood Pile
Extinguish the Huge Lightwood Pile |q 86721/2 |goto Atal Aman M/1 22.63,80.33
step
talk Zul'jan##236540
turnin Armed by Light##86716 |goto Atal Aman M/1 22.58,79.86
turnin Everything We Worked For##86721 |goto Atal Aman M/1 22.58,79.85
accept The Amani Stand Strong##86712 |goto Atal Aman M/1 22.58,79.85
step
talk Zul'jarra##236541
accept Twilight Bled##86718 |goto Atal Aman M/1 22.89,79.31
step
talk Lady Liadrin##236542
accept Rituals Cut Short##86715 |goto Atal Aman M/1 23.12,79.85
stickystart "Kill_Twilight_Ritualists"
stickystart "Kill_Twilight_Trollbreakers"
stickystart "Arm_Demoralized_Defenders"
step
kill Benvis Bladespatter##236562 |q 86718/1 |goto Atal Aman M/1 34.66,80.34
|tip Walks around.
step
label "Kill_Twilight_Ritualists"
kill 6 Twilight Ritualist##236546 |q 86715/1 |goto Atal Aman M/1 35.07,72.93
step
label "Kill_Twilight_Trollbreakers"
kill 6 Twilight Trollbreaker##236550 |q 86715/2 |goto Atal Aman M/1 35.07,72.93
step
label "Arm_Demoralized_Defenders"
clicknpc Demoralized Defender##236518+
|tip Kneeling trolls.
Arm #8# Demoralized Defenders |q 86712/1 |goto Atal Aman M/1 33.18,69.92
step
talk Lady Liadrin##236586
turnin Rituals Cut Short##86715 |goto Atal Aman M/1 47.22,46.88
step
talk Zul'jarra##236587
turnin Twilight Bled##86718 |goto Atal Aman M/1 47.54,46.79
step
talk Zul'jan##236588
turnin The Amani Stand Strong##86712 |goto Atal Aman M/1 49.06,46.67
step
talk Zul'jarra##236587
accept Break the Blade##86720 |goto Atal Aman M/1 47.51,46.78
step
clicknpc Lightwood Ballista##241695
Use the Lightwood Ballista |q 86720/1 |goto Atal Aman M/1 49.16,47.13
step
kill Empowering Shadow##258901+
|tip Purple elementals channeling a spell.
Watch the dialogue
|tip Use the {o}Fire EVERYTHING!{} ability.
Destroy Mor'duun's Scrying Focus |q 86720/2
step
talk Zul'jarra##236601
turnin Break the Blade##86720 |goto Atal Aman M/1 47.74,47.81
accept Heart of the Amani##86722 |goto Atal Aman M/1 47.74,47.81
step
talk Zul'jarra##236602
turnin Heart of the Amani##86722 |goto Zul Aman M/0 42.65,66.85
accept Isolation##86723 |goto Zul Aman M/0 42.65,66.85
step
talk Recruit Dar'rak##255406
accept The Final Exam##93051 |goto Zul Aman M/0 43.14,67.13
|only if level >= 83 or achieved(42045)
step
talk Kagara##240976
accept A Lover Not a Fighter##89230 |goto Zul Aman M/0 44.04,66.23
|only if (level >= 83 and achieved(41803)) or achieved(42045)
step
talk Zak'kash##240977
accept A Fighter Not a Lover##89231 |goto Zul Aman M/0 43.89,65.96
|only if (level >= 83 and achieved(41803)) or achieved(42045)
step
talk Ri'kari##255907
|tip Top of the building.
Select _"<Tell Ri'kari you're ready to begin Dar'rak's challenge.>"_ |gossip 137188
|tip You will be attacked.
Tell Ri'kari You're Ready to Begin |q 93051/1 |goto Zul Aman M/0 43.85,64.70
|only if haveq(93051) or completedq(93051)
step
kill Dar'rak##255909 |q 93051/2 |goto Zul Aman M/0 43.85,64.70
|tip Top of the building.
|only if haveq(93051) or completedq(93051)
step
talk Ri'kari##255907
|tip Top of the building.
turnin The Final Exam##93051 |goto Zul Aman M/0 43.85,64.70
|only if haveq(93051) or completedq(93051)
step
talk Eagletender Vikovu##241036
fpath Amani'Zar Village |goto Zul Aman M/0 44.82,65.43
step
talk Zul'jarra##236659
|tip Inside the building.
Select _"<Find a seat for the meeting>"_ |gossip 135893
Speak with Zul'jarra at the Village Hall |q 86723/1 |goto Zul Aman M/0 45.75,65.51
step
Watch the dialogue
talk Zul'jarra##236659
|tip Inside the building.
turnin Isolation##86723 |goto Zul Aman M/0 45.75,65.51
accept Left in the Shadows##86652 |goto Zul Aman M/0 45.75,65.51
step
talk Old Teo'zan##257092
accept The Loa of Murlocs##92163 |goto Zul Aman M/0 46.02,65.06
|only if level >= 83 or achieved(42045)
step
talk Iklani##254142
|tip {o}Ground floor{} inside the building.
accept Got No Rhythm##93048 |goto Zul Aman M/0 46.79,66.19
|only if haveq(93051) or completedq(93051)
step
Demonstrate How to Dance |q 93048/1 |goto Zul Aman M/0 46.89,66.79
|tip Perform the {o}/dance{} emote. |script DoEmote("DANCE")
|only if haveq(93048) or completedq(93048)
step
talk Kovu##257807
Select _"<Tell Kovu to demonstrate his combat formations for the dance instructor.>"_ |gossip 137451
Talk to Kovu |q 93048/2 |goto Zul Aman M/0 46.88,66.75
|only if haveq(93048) or completedq(93048)
step
Dance with Kovu |q 93048/3 |goto Zul Aman M/0 46.82,66.34
|tip Perform the {o}/dance{} emote. |script DoEmote("DANCE")
|tip {o}Ground floor{} inside the building.
|only if haveq(93048) or completedq(93048)
step
talk Iklani##254142
|tip {o}Ground floor{} inside the building.
turnin Got No Rhythm##93048 |goto Zul Aman M/0 46.79,66.20
|only if haveq(93048) or completedq(93048)
step
click Rations Cauldron
Prepare Meals with Torundo for the Atal'Aman Refugees |q 86652/1 |goto Zul Aman M/0 46.86,67.32
step
talk An'jali##254144
|tip {o}Ground floor{} inside the building.
accept Homework Support##93049 |goto Zul Aman M/0 46.66,67.96
|only if haveq(93048) or completedq(93048)
stickystart "Collect_Dragonhawk_Fern_Fronds"
stickystart "Collect_Pristine_Shade_Lily"
step
talk Gijaniji##241072
accept Butchery Basics##93047 |goto Zul Aman M/0 45.58,69.42
|only if haveq(93048) or completedq(93048)
step
talk Chana##242014
accept The Path of Mourning##89565 |goto Zul Aman M/0 45.35,69.74
|only if level >= 83 or achieved(42045)
step
talk Ani##251258
accept Growing Up is Hard##92450 |goto Zul Aman M/0 45.19,69.78
|only if level >= 83 or achieved(42045)
step
talk Vakala##258950
accept Lost in Atal'Abasi##94867 |goto Zul Aman M/0 45.05,68.24
|only if level >= 83 or achieved(42045)
step
talk Lilaju##245589
Select _"<Request lightwood report.>"_ |gossip 132891
Get a Report on the Lightwood from Lilaju |q 86652/2 |goto Zul Aman M/0 45.14,67.70
step
talk Rakan##254146
accept Altar History##93050 |goto Zul Aman M/0 43.48,68.88
|only if haveq(93048) or completedq(93048)
stickystop "Collect_Dragonhawk_Fern_Fronds"
stickystop "Collect_Pristine_Shade_Lily"
step
Recharge the Eagle Altar |q 93050/4 |goto Zul Aman M/0 43.37,68.99
|tip Use the {o}Empowering Altar{} button ability.
|tip Inside the building.
|only if haveq(93050) or completedq(93050)
step
Recharge the Bear Altar |q 93050/1 |goto Zul Aman M/0 43.90,69.27
|tip Use the {o}Empowering Altar{} button ability.
|only if haveq(93050) or completedq(93050)
step
Recharge the Lynx Altar |q 93050/3 |goto Zul Aman M/0 43.15,68.38
|tip Use the {o}Empowering Altar{} button ability.
|only if haveq(93050) or completedq(93050)
step
Recharge the Dragonhawk Altar |q 93050/2 |goto Zul Aman M/0 43.12,68.05
|tip Use the {o}Empowering Altar{} button ability.
|only if haveq(93050) or completedq(93050)
step
talk Rakan##257797
|tip Inside the building.
turnin Altar History##93050 |goto Zul Aman M/0 43.37,69.05
|only if haveq(93050) or completedq(93050)
stickystart "Collect_Dragonhawk_Fern_Fronds"
stickystart "Collect_Pristine_Shade_Lily"
step
talk Tak'lejo##244562
|tip {o}Ground floor{} inside the building.
Select _"Where are the shamans?"_ |gossip 135286
Request Shadowpine Shamans from Tak'lejo |q 86652/3 |goto Zul Aman M/0 43.97,65.06
step
talk Loa Speaker Kinduru##244479
Select _"I will help Zul'jarra."_ |gossip 133822
Speak with Kinduru |q 86652/4 |goto Zul Aman M/0 43.78,68.41
step
talk Zul'jarra##236126
turnin Left in the Shadows##86652 |goto Zul Aman M/0 43.80,68.34
accept The Path of the Amani##86653 |goto Zul Aman M/0 43.80,68.34
step
talk Elder Doru##254665
accept Loa Disturbance##91206 |goto Zul Aman M/0 43.12,67.94
step
talk Torundo the Grizzled##241082
|tip {o}Ground floor{} inside the building.
accept Recuperating Returns##88985 |goto Zul Aman M/0 45.71,65.45
|only if (level >= 83 or achieved(42045)) and completedq(86652)
step
label "Collect_Dragonhawk_Fern_Fronds"
click Dragonhawk Fern+
|tip Small red plants.
collect 8 Dragonhawk Fern Frond##258892 |q 93049/2 |goto Zul Aman M/0 44.64,67.74
|only if haveq(93049) or completedq(93049)
step
label "Collect_Pristine_Shade_Lily"
click Shade Lily Cluster+
|tip Groups of small flowers.
|tip Beneath the buildings you can walk under.
collect 15 Pristine Shade Lily##258891 |q 93049/1 |goto Zul Aman M/0 45.64,65.74
You can find more around [Zul Aman M/0 46.81,66.50]
|only if haveq(93049) or completedq(93049)
step
Watch the dialogue
|tip {o}Ground floor{} inside the building.
talk An'jali##254144
turnin Homework Support##93049 |goto Zul Aman M/0 46.66,67.96
|only if haveq(93049) or completedq(93049)
step
talk Jak'zari##254488
accept Revantusk at Risk##93257 |goto Zul Aman M/0 45.90,70.77
|only if level >= 83 or achieved(42045)
stickystart "Collect_Boar_Carcasses"
step
talk Chana##247424
turnin The Path of Mourning##89565 |goto Zul Aman M/0 45.87,72.44
accept Somber Siblings##89503 |goto Zul Aman M/0 45.87,72.44
|only if haveq(89565) or completedq(89565)
stickystart "Collect_Weeping_Spores"
step
label "Collect_Boar_Carcasses"
kill Tearful Boar##242165, Weeping Swine##242166
|tip Boars. |notinsticky
collect 10 Boar Carcass##258890 |q 93047/1 |goto Zul Aman M/0 46.48,74.09
|only if haveq(93047) or completedq(93047)
step
label "Collect_Weeping_Spores"
kill Tearful Boar##242165, Weeping Swine##242166 |notinsticky
|tip Boars. |notinsticky
click Weeping Caps+
|tip Brown mushrooms.
|tip Nearby enemies will attack.
collect 30 Weeping Spores##239447 |q 89503/1 |goto Zul Aman M/0 46.48,74.09
|only if haveq(89503) or completedq(89503)
step
_Next to you:_
talk Chana##256867 |usename Chana##247424
turnin Somber Siblings##89503
accept Strong Ties##89506
|only if haveq(89503) or completedq(89503)
step
kill Solemn Watcher##241999, Valley Giant##241998
|tip Rock giants.
collect 3 Resilient Sinew##239480 |q 89506/1 |goto Zul Aman M/0 47.25,80.65
|only if haveq(89506) or completedq(89506)
step
_Next to you:_
talk Chana##256867 |usename Chana##247424
turnin Strong Ties##89506
accept Kindling Aplenty##89513
|only if haveq(89506) or completedq(89506)
step
click Fallen Branch+
|tip Brown logs.
collect 4 Fallen Branch of Kan'sha##239483 |q 89513/1 |goto Zul Aman M/0 48.59,84.56
|only if haveq(89513) or completedq(89513)
step
_Next to you:_
talk Chana##256867 |usename Chana##247424
turnin Kindling Aplenty##89513
accept Reasonless Worship##89559
|only if haveq(89513) or completedq(89513)
step
click Shrine Piece
collect Weathered Shrine Piece##239494 |q 89559/1 |goto Zul Aman M/0 47.30,87.63
|only if haveq(89559) or completedq(89559)
step
_Next to you:_
talk Chana##256867 |usename Chana##247424
turnin Reasonless Worship##89559
accept A Quiet Farewell##89560
|only if haveq(89559) or completedq(89559)
step
click Weathered Shrine Piece
Place the Shrine Piece |q 89560/1 |goto Zul Aman M/0 46.29,91.29
|only if haveq(89560) or completedq(89560)
step
click Rock Giant Sinew+
|tip Yellow rocks.
Arrange #6# Sinew |q 89560/2 |goto Zul Aman M/0 46.29,91.29
|only if haveq(89560) or completedq(89560)
step
click Bonfire
Place the Branches |q 89560/3 |goto Zul Aman M/0 46.29,91.29
|only if haveq(89560) or completedq(89560)
step
click Bonfire
Light the Fire |q 89560/4 |goto Zul Aman M/0 46.29,91.29
|only if haveq(89560) or completedq(89560)
step
click Bonfire
Pay Your Respects |q 89560/5 |goto Zul Aman M/0 46.29,91.29
|only if haveq(89560) or completedq(89560)
step
talk Chana##242014
turnin A Quiet Farewell##89560 |goto Zul Aman M/0 46.31,91.18
|only if haveq(89560) or completedq(89560)
step
click Boar Carcass##254134
Place the Boar Carcass |q 93047/2 |goto Zul Aman M/0 45.53,69.52
|only if haveq(93047) or completedq(93047)
step
talk Gijaniji##241072
turnin Butchery Basics##93047 |goto Zul Aman M/0 45.58,69.42
|only if haveq(93047) or completedq(93047)
step
Meet Zul'jarra at Akil'zon's Reach |q 86653/1 |goto Zul Aman M/0 51.63,70.80
step
talk Zul'jarra##236140
turnin The Path of the Amani##86653 |goto Zul Aman M/0 51.63,70.80
accept De Ancient Path##86655 |goto Zul Aman M/0 51.63,70.80
accept Ahead of the Issue##89334 |goto Zul Aman M/0 51.63,70.80
step
talk Lady Liadrin##236143
accept Gnarldin Bashing##86654 |goto Zul Aman M/0 51.62,70.73
stickystart "Collect_Threshadon_Tooth_Necklace"
stickystart "Collect_Eagle_Feathers"
stickystart "Slay_Gnarldins"
step
clicknpc Ancient Incense##249326
|tip Up on the cliff.
Light the Eagle Hash'ey Shrine |q 86655/1 |goto Zul Aman M/0 53.67,72.96 |count 1 hidden
step
kill Cragward Gaahl##241423
collect Head of Cragward Gaahl##243188 |q 89334/2 |goto Zul Aman M/0 53.29,74.22
step
clicknpc Ancient Incense##249323
Light the Eagle Hash'ey Shrine |q 86655/1 |goto Zul Aman M/0 55.24,76.27 |count 2 hidden
step
kill Pulverizer Helthra##241424
collect Head of Pulverizer Helthra##243189 |q 89334/3 |goto Zul Aman M/0 55.27,77.85
step
kill Brulagh the Crusher##241422
|tip Inside the small cave.
collect Head of Brulagh the Crusher##239083 |q 89334/1 |goto Zul Aman M/0 56.19,74.97
step
clicknpc Ancient Incense##249335
Light the Eagle Hash'ey Shrine |q 86655/1 |goto Zul Aman M/0 56.26,73.82 |count 3 hidden
step
clicknpc Ancient Incense##249321
Light the Eagle Hash'ey Shrine |q 86655/1 |goto Zul Aman M/0 55.29,70.86 |count 4 hidden
step
label "Collect_Threshadon_Tooth_Necklace"
kill Gnarldin Clubfist##236129, Gnarldin Nestcrusher##236130
collect Threshadon Tooth Necklace##249271 |q 89230/1 |goto Zul Aman M/0 54.32,72.90
|only if haveq(89230) or completedq(89230)
step
label "Collect_Eagle_Feathers"
click Eagle Feather+
|tip Red feathers.
collect 8 Eagle Feather##249231 |q 89231/1 |goto Zul Aman M/0 54.46,73.59
|only if haveq(89231) or completedq(89231)
step
use Eagle Feather##249231
collect Amani Headdress##249236 |q 89231/2
|only if haveq(89231) or completedq(89231)
step
label "Slay_Gnarldins"
kill Gnarldin Clubfist##236129, Gnarldin Nestcrusher##236130 |notinsticky
Slay #12# Gnarldins |q 86654/1 |goto Zul Aman M/0 54.50,72.95
step
talk Lady Liadrin##236146
|tip Up on the cliff.
turnin Gnarldin Bashing##86654 |goto Zul Aman M/0 51.96,76.03
step
clicknpc Ancient Incense##249344
Light the Final Eagle Hash'ey Shrine |q 86655/2 |goto Zul Aman M/0 51.91,76.03
step
talk Zul'jarra##236147
turnin De Ancient Path##86655 |goto Zul Aman M/0 51.91,75.95
turnin Ahead of the Issue##89334 |goto Zul Aman M/0 51.91,75.95
accept Brutal Feast##86656 |goto Zul Aman M/0 51.91,75.95
step
Meet Zul'jarra at the Temple of Akil'zon |q 86656/1 |goto Zul Aman M/0 52.40,81.06
|tip Top of the mountain.
step
clicknpc Sack of Gnarldin Heads##244965
Retrieve the Gnarldin Heads from the Sack |q 86656/2 |goto Zul Aman M/0 52.40,81.06
step
click Gnarldin Head
Place the Gnarldin Head |q 86656/4 |goto Zul Aman M/0 52.40,82.37 |count 1 hidden
step
click Gnarldin Head
Place the Gnarldin Head |q 86656/4 |goto Zul Aman M/0 53.19,81.08 |count 2 hidden
step
click Gnarldin Head
Place the Gnarldin Head |q 86656/4 |goto Zul Aman M/0 53.25,80.66 |count 3 hidden
step
talk Zul'jarra##244422
turnin Brutal Feast##86656 |goto Zul Aman M/0 52.36,81.03
accept Test of Conviction##86809 |goto Zul Aman M/0 52.36,81.03
step
Reach the Temple Ledge |q 86809/1 |goto Zul Aman M/0 51.05,78.99
step
JUMP! |q 86809/2 |goto Zul Aman M/0 51.05,78.99
|tip Jump off the cliff.
|tip You won't die.
step
talk Zul'jarra##236141
turnin Test of Conviction##86809 |goto Zul Aman M/0 52.36,81.03
accept Shadebasin Watch##86657 |goto Zul Aman M/0 52.36,81.03
step
talk Namaji##240975
turnin A Lover Not a Fighter##89230 |goto Zul Aman M/0 44.44,65.74 |only if haveq(89230) or completedq(89230)
turnin A Fighter Not a Lover##89231 |goto Zul Aman M/0 44.44,65.74 |only if haveq(89231) or completedq(89231)
accept Love Triangle##89233 |goto Zul Aman M/0 44.44,65.74
|only if haveq(89230,89231) or completedq(89230,89231)
step
talk Namaji##240975
Select _"Go with Kagara to the festival."_ |gossip 135138 |noautogossip
Help Namaji Decide |q 89233/1 |goto Zul Aman M/0 44.44,65.74
|only if haveq(89233) or completedq(89233)
step
talk Namaji##240975
turnin Love Triangle##89233 |goto Zul Aman M/0 44.44,65.74
|only if haveq(89233) or completedq(89233)
step
Speak to Ani at the Waterfall |q 92450/1 |goto Zul Aman M/0 48.11,67.61
|only if haveq(92450) or completedq(92450)
step
talk Ani##251258
turnin Growing Up is Hard##92450 |goto Zul Aman M/0 48.11,67.61
accept I Think I Can##92451 |goto Zul Aman M/0 48.11,67.61
|only if haveq(92450) or completedq(92450)
step
Watch the dialogue
|tip Use the {o}Cheer for Ani{} button ability.
Cheer On Ani |q 92451/1 |goto Zul Aman M/0 48.11,67.61
|only if haveq(92451) or completedq(92451)
step
Watch the dialogue
|tip Use the {o}Cheer for Ani... Again!{} button ability.
Cheer On Ani... Again |q 92451/2 |goto Zul Aman M/0 48.11,67.61
|only if haveq(92451) or completedq(92451)
step
Watch the dialogue
Observe Ani's Jump |q 92451/3 |goto Zul Aman M/0 48.11,67.61
|only if haveq(92451) or completedq(92451)
step
click Ani's Trinket Bag
turnin I Think I Can##92451 |goto Zul Aman M/0 48.70,66.07
accept Not According to Plan##92452 |goto Zul Aman M/0 48.70,66.07
|only if haveq(92451) or completedq(92451)
step
talk Jehnira##245669
turnin Lost in Atal'Abasi##94867 |goto Zul Aman M/0 53.12,62.82
accept Vengeance for Tolbani##91069 |goto Zul Aman M/0 53.12,62.82
accept Reclaim The Goods##91070 |goto Zul Aman M/0 53.12,62.82
accept The Menace of Atal'Abasi##91071 |goto Zul Aman M/0 53.12,62.82
|only if haveq(94867) or completedq(94867)
stickystart "Slay_Murlocs"
step
click Stolen Provisions
collect Food Provisions##245588 |q 91070/1 |goto Zul Aman M/0 52.58,62.27 |count 1 hidden
|only if haveq(91070) or completedq(91070)
step
click Stolen Provisions
collect Food Provisions##245588 |q 91070/1 |goto Zul Aman M/0 53.99,66.32 |count 2 hidden
|only if haveq(91070) or completedq(91070)
step
kill Mrruk the Musclefin##245676 |q 91071/1 |goto Zul Aman M/0 52.34,65.95
|tip Inside the building.
|only if haveq(91071) or completedq(91071)
step
click Stolen Provisions
collect Food Provisions##245588 |q 91070/1 |goto Zul Aman M/0 50.55,64.37 |count 3 hidden
|only if haveq(91070) or completedq(91070)
step
click Stolen Provisions
|tip Up on the huge tree stump.
collect Food Provisions##245588 |q 91070/1 |goto Zul Aman M/0 50.30,66.59 |count 4 hidden
|only if haveq(91070) or completedq(91070)
step
click Stolen Provisions
|tip Underwater.
collect Food Provisions##245588 |q 91070/1 |goto Zul Aman M/0 48.43,67.18 |count 5 hidden
|only if haveq(91070) or completedq(91070)
step
click Stolen Provisions
collect Food Provisions##245588 |q 91070/1 |goto Zul Aman M/0 48.79,64.01 |count 6 hidden
|only if haveq(91070) or completedq(91070)
step
click Ani's Feathered Totem
Recover Ani's Belongings |q 92452/1 |goto Zul Aman M/0 47.45,63.45 |count 33 hidden
|only if haveq(92452) or completedq(92452)
stickystop "Slay_Murlocs"
step
click Ani's Scented Strobilus
Recover Ani's Belongings |q 92452/1 |goto Zul Aman M/0 45.98,62.00 |count 66 hidden
|only if haveq(92452) or completedq(92452)
step
click Ani's Carved Effigy
Recover Ani's Belongings |q 92452/1 |goto Zul Aman M/0 45.26,61.06 |count 100 hidden
|only if haveq(92452) or completedq(92452)
step
click Ani's Carved Effigy
talk Ani##251258
turnin Not According to Plan##92452 |goto Zul Aman M/0 44.61,60.53
accept Fearless##92453 |goto Zul Aman M/0 44.61,60.53
|only if haveq(92452) or completedq(92452)
step
label "Slay_Murlocs"
kill Bogfin Tidechanter##245709, Mrrlokk##245975, Mrruk the Musclefin##245676, Murloc Behemoth##245714, Murloc Dredgecaller##245712, Murloc Fistfin##245710, Murloc Reefstalker##245711, Murloc Scaleguard##245713
Slay #12# Murlocs |q 91069/1 |goto Zul Aman M/0 50.83,65.11
|only if haveq(91069) or completedq(91069)
step
talk Jehnira##245669
turnin Vengeance for Tolbani##91069 |goto Zul Aman M/0 53.12,62.82 |only if haveq(91069) or completedq(91069)
turnin Reclaim The Goods##91070 |goto Zul Aman M/0 53.12,62.82 |only if haveq(91070) or completedq(91070)
turnin The Menace of Atal'Abasi##91071 |goto Zul Aman M/0 53.12,62.82 |only if haveq(91071) or completedq(91071)
accept Loa's Flame##91556 |goto Zul Aman M/0 53.12,62.82
|only if haveq(91069,91070,91071) or completedq(91069,91070,91071)
step
click Boat
Salvage the Amani Boat |q 91556/1 |goto Zul Aman M/0 53.12,62.75
|only if haveq(91556) or completedq(91556)
step
click Funeral Pyre
Build the Funeral Bonfire |q 91556/2 |goto Zul Aman M/0 53.06,62.74
|only if haveq(91556) or completedq(91556)
step
talk Jehnira##245669
turnin Loa's Flame##91556 |goto Zul Aman M/0 53.12,62.82
|only if haveq(91556) or completedq(91556)
step
talk King Mrgl-Mrgl##250196
|tip Inside the building.
turnin The Loa of Murlocs##92163 |goto Zul Aman M/0 52.88,60.22
accept Murloc Madness##92164 |goto Zul Aman M/0 52.88,60.22
accept Fish Are Food, Not Friends##92165 |goto Zul Aman M/0 52.88,60.22
accept Following Suit##92166 |goto Zul Aman M/0 52.88,60.22
|only if haveq(92163) or completedq(92163)
stickystart "Slay_Deepfin_Murlocs"
stickystart "Collect_Murloc_Skewered_Lynxfish"
step
click Out of Place Knapsack
|tip Inside the building.
Select _"<Collect the knapsack.>"_ |gossip 137476
Find the First Clue |q 92166/1 |goto Zul Aman M/0 50.54,62.65
|only if haveq(92166) or completedq(92166)
step
click Scattered Papers
Select _"<Collect the papers.>"_ |gossip 137477
Find the Second Clue |q 92166/2 |goto Zul Aman M/0 49.84,59.86
|only if haveq(92166) or completedq(92166)
step
Find the "Priestess" |q 92166/3 |goto Zul Aman M/0 47.81,56.20
|only if haveq(92166) or completedq(92166)
step
talk Assistant Grgl-Grgl##250292
Select _"King Mrgl-Mrgl is safe at the top of the temple."_ |gossip 137485
Save Assistant Grgl-Grgl |q 92166/4 |goto Zul Aman M/0 47.81,56.20
|only if haveq(92166) or completedq(92166)
step
label "Slay_Deepfin_Murlocs"
kill Deepfin Invader##250239, Deepfin Necromancer##250286, Deepfin Snatcher##250237
Slay #15# Deepfin Murlocs |q 92164/1 |goto Zul Aman M/0 50.04,59.66
|only if haveq(92164) or completedq(92164)
step
label "Collect_Murloc_Skewered_Lynxfish"
click Murloc-Skewered Lynxfish+
|tip Upright spears with fish on them.
collect 30 Murloc-Skewered Lynxfish##263202 |q 92165/1 |goto Zul Aman M/0 50.04,59.66
|only if haveq(92165) or completedq(92165)
step
talk King Mrgl-Mrgl##250196
|tip Inside the building.
turnin Murloc Madness##92164 |goto Zul Aman M/0 52.88,60.22 |only if haveq(92164) or completedq(92164)
turnin Fish Are Food, Not Friends##92165 |goto Zul Aman M/0 52.88,60.22 |only if haveq(92165) or completedq(92165)
turnin Following Suit##92166 |goto Zul Aman M/0 52.88,60.22 |only if haveq(92166) or completedq(92166)
|only if haveq(92164,92165,92166) or completedq(92164,92165,92166)
step
talk Assistant Grgl-Grgl##250197
|tip Inside the building.
accept There Can Be Only One##92167 |goto Zul Aman M/0 52.93,60.14
|only if haveq(92164,92165,92166) or completedq(92164,92165,92166)
step
use Spare Murloc Suit##263446
click Deepfin Tribute
|tip Underwater.
kill Lightwalker##250204
Slay the Deepfin Leader |q 92167/3 |goto Zul Aman M/0 57.42,59.64
|only if haveq(92167) or completedq(92167)
step
talk King Mrgl-Mrgl##250196
|tip Inside the building.
turnin There Can Be Only One##92167 |goto Zul Aman M/0 52.88,60.22
|only if haveq(92167) or completedq(92167)
step
Meet Ani at Amani'zar Village |q 92453/1 |goto Zul Aman M/0 45.19,69.78
|only if haveq(92453) or completedq(92453)
step
Watch the dialogue
talk Ani##251258
turnin Fearless##92453 |goto Zul Aman M/0 45.19,69.78
|only if haveq(92453) or completedq(92453)
step
talk Loa Speaker Sij'ta##237953
|tip Inside the small cave.
turnin Loa Disturbance##91206 |goto Zul Aman M/0 40.46,49.38
accept Curse Cleanse##87254 |goto Zul Aman M/0 40.46,49.38
accept Alternative Medicine##87256 |goto Zul Aman M/0 40.46,49.38
stickystart "Collect_Bloodclot_Branches"
step
kill Pango Matriarch##237960, Shrine Pango##237958
|tip Armored beasts.
collect Large Pango Liver##245982 |q 87254/1 |goto Zul Aman M/0 40.58,49.33
step
label "Collect_Bloodclot_Branches"
click Bloodclot Shrub+
|tip Small green bushes.
collect 15 Bloodclot Branch##235912 |q 87256/1 |goto Zul Aman M/0 40.64,49.07
step
talk Warlord Akutu##238063
|tip Inside the small cave.
Select _"Sij'ta said this will help you."_ |gossip 134247
Give the Liver to Warlord Akutu |q 87254/2 |goto Zul Aman M/0 40.45,49.30
step
talk Loa Speaker Sij'ta##237953
|tip Inside the small cave.
turnin Curse Cleanse##87254 |goto Zul Aman M/0 40.46,49.38
turnin Alternative Medicine##87256 |goto Zul Aman M/0 40.46,49.38
accept Demands Unmet##87267 |goto Zul Aman M/0 40.46,49.38
step
click Loa Incense
Burn the Incense to Summon Kulzi |q 87267/1 |goto Zul Aman M/0 38.91,44.81
step
Watch the dialogue
talk Kulzi##237956
Select _"What would help them to remember?"_ |gossip 134375
Speak with Kulzi |q 87267/2 |goto Zul Aman M/0 38.78,44.85
step
click Forgotten Staff
collect Shattered Staff##246210 |q 87267/3 |goto Zul Aman M/0 39.42,44.88
step
talk Loa Speaker Sij'ta##237953
|tip Inside the small cave.
turnin Demands Unmet##87267 |goto Zul Aman M/0 40.46,49.38
accept Required Repentance##87268 |goto Zul Aman M/0 40.46,49.38
step
clicknpc Forgetful Ghost##237952+
|tip Friendly troll ghosts.
|tip They will attack you.
Remind #8# Forgetful Ghosts |q 87268/1 |goto Zul Aman M/0 40.40,48.34
step
talk Loa Speaker Sij'ta##237953
|tip Inside the small cave.
turnin Required Repentance##87268 |goto Zul Aman M/0 40.46,49.38
accept Denial Denied##87317 |goto Zul Aman M/0 40.46,49.38
step
clicknpc Warlord Akutu##246532
|tip Inside the small cave.
Show the Staff to Warlord Akutu |q 87317/1 |goto Zul Aman M/0 40.45,49.30
step
Find Warlord Akutu |q 87317/2 |goto Zul Aman M/0 38.92,44.76
step
Watch the dialogue
talk Loa Speaker Sij'ta##246537
Select _"<Give Sij'ta the broken hexlord staff.>"_ |gossip 135825
Give the Staff to Sij'ta |q 87317/3 |goto Zul Aman M/0 38.92,44.76
step
Watch the dialogue
talk Warlord Akutu##246525
turnin Denial Denied##87317 |goto Zul Aman M/0 38.83,44.93
step
talk Kulzi##237956
accept The Medicine Loa's Shrine##92531 |goto Zul Aman M/0 38.78,44.85
step
Meet Kul'amara at Shadebasin Watch |q 86657/2 |goto Zul Aman M/0 44.08,34.50
step
talk Zul'jarra##244438
turnin Shadebasin Watch##86657 |goto Zul Aman M/0 44.08,34.50
accept The Crypt in the Mist##86658 |goto Zul Aman M/0 44.08,34.50
accept Rescue from the Shadows##86660 |goto Zul Aman M/0 44.08,34.50
step
talk Eagletender Ful'nac##251081
fpath Shadebasin Watch |goto Zul Aman M/0 44.01,33.61
step
talk Scout Zel'kanra##255852
accept Camp Stonewash##93667 |goto Zul Aman M/0 44.18,33.60
|only if level >= 83 or achieved(42045)
stickystart "Slay_Vilebranch_Trolls"
step
Enter the crypt |goto Zul Aman M/0 39.14,39.04 < 10 |walk |only if not (subzone("Numazon Crypts") and indoors())
clicknpc Captured Witherbark##244565+
|tip Friendly trolls.
|tip Inside the crypt.
clicknpc Captured Witherbark Lynx##236186+
|tip Large cats.
Rescue #8# Captured Witherbarks |q 86660/1 |goto Zul Aman M/0 37.81,37.13
step
label "Slay_Vilebranch_Trolls"
kill Vilebranch Hexwarder##236185, Vilebranch Siphoner##236184
|tip Inside the crypt. |notinsticky
Slay #8# Vilebranch Trolls |q 86658/2 |goto Zul Aman M/0 37.81,37.13
step
Follow the path and run up the stairs |goto Zul Aman M/0 36.89,37.33 < 10 |walk
kill Ritualist Zongha##245442 |q 86658/3 |goto Zul Aman M/0 37.55,36.00
|tip Upstairs inside the crypt.
step
Run up the stairs and leave the crypt |goto Zul Aman M/0 37.57,35.04 < 10 |walk |only if subzone("Numazon Crypts") and indoors()
talk Zul'jarra##244588
turnin The Crypt in the Mist##86658 |goto Zul Aman M/0 36.76,34.97
turnin Rescue from the Shadows##86660 |goto Zul Aman M/0 36.76,34.97
accept Breaching the Mist##86659 |goto Zul Aman M/0 36.76,34.97
step
clicknpc Ancient Incense##249371
Find the First Hash'ey Shrine |q 86659/1 |goto Zul Aman M/0 35.46,36.11
step
click Ancient Incense##249375
Activate the Lynx Hash'ey Shrine |q 86659/2 |goto Zul Aman M/0 33.40,34.48 |count 1 hidden
step
click Ancient Incense##249377
Activate the Lynx Hash'ey Shrine |q 86659/2 |goto Zul Aman M/0 33.96,32.02 |count 2 hidden
step
click Ancient Incense##249372
Activate the Lynx Hash'ey Shrine |q 86659/2 |goto Zul Aman M/0 34.84,30.92 |count 3 hidden
step
click Ancient Incense##249379
Activate the Final Lynx Hash'ey Shrine |q 86659/3 |goto Zul Aman M/0 32.83,32.62
step
talk Zul'jarra##236155
|tip Inside the building.
turnin Breaching the Mist##86659 |goto Zul Aman M/0 32.40,31.61
accept Halazzi's Guile##92084 |goto Zul Aman M/0 32.40,31.61
step
talk Loa Speaker Tobui##250068
|tip Inside the building.
Select _"How do we speak to Halazzi?"_ |gossip 135472
Speak to Loa Speaker Tobui |q 92084/1 |goto Zul Aman M/0 32.25,31.56
step
talk Zul'jarra##236155
|tip Inside the building.
turnin Halazzi's Guile##92084 |goto Zul Aman M/0 32.40,31.61
accept Coals of a Dead Loa##86661 |goto Zul Aman M/0 32.40,31.61
step
talk Kel'venko##253997
accept Gnarldin Trophies##93093 |goto Zul Aman M/0 28.93,33.51
accept Scavenged Victory##93094 |goto Zul Aman M/0 28.93,33.51
|only if level >= 83 or achieved(42045)
stickystart "Collect_Gnarldin_Trophies"
step
click Fallen Hunter
|tip Inside the small cave.
collect Hunter's Tablet##256685 |q 93094/1 |goto Zul Aman M/0 28.41,35.03 |count 1 hidden
|only if haveq(93094) or completedq(93094)
step
click Fallen Hunter
collect Hunter's Tablet##256685 |q 93094/1 |goto Zul Aman M/0 28.97,36.42 |count 2 hidden
|only if haveq(93094) or completedq(93094)
step
click Fallen Hunter
collect Hunter's Tablet##256685 |q 93094/1 |goto Zul Aman M/0 28.52,38.27 |count 3 hidden
|only if haveq(93094) or completedq(93094)
step
click Fallen Hunter
collect Hunter's Tablet##256685 |q 93094/1 |goto Zul Aman M/0 28.10,36.97 |count 4 hidden
|only if haveq(93094) or completedq(93094)
step
click Fallen Hunter
collect Hunter's Tablet##256685 |q 93094/1 |goto Zul Aman M/0 26.80,36.22 |count 5 hidden
|only if haveq(93094) or completedq(93094)
step
click Fallen Hunter
collect Hunter's Tablet##256685 |q 93094/1 |goto Zul Aman M/0 27.56,35.06 |count 6 hidden
|only if haveq(93094) or completedq(93094)
step
label "Collect_Gnarldin_Trophies"
kill Bark Breaker##253991, Bark Skullcracker##253992, Scaley Scratcher##253993
|tip Loot them.
Collect #35# Gnarldin Trophies |q 93093/1 |goto Zul Aman M/0 28.18,36.70
|only if haveq(93093) or completedq(93093)
step
talk Kel'venko##253997
turnin Gnarldin Trophies##93093 |goto Zul Aman M/0 28.93,33.51 |only if haveq(93093) or completedq(93093)
turnin Scavenged Victory##93094 |goto Zul Aman M/0 28.93,33.51 |only if haveq(93094) or completedq(93094)
accept Bitter Fury##93095 |goto Zul Aman M/0 28.93,33.51
|only if haveq(93093,93094) or completedq(93093,93094)
step
click Tusk Taker's Taken Tusk Trophy
|tip Inside the small cave.
Kill the enemies that attack in waves
kill Tusk Taker##254253 |q 93095/2 |goto Zul Aman M/0 25.60,37.47
|only if haveq(93095) or completedq(93095)
step
talk Kel'venko##253997
turnin Bitter Fury##93095 |goto Zul Aman M/0 28.93,33.51
accept Amani Honor##93096 |goto Zul Aman M/0 28.93,33.51
|only if haveq(93095) or completedq(93095)
step
talk Kel'venko##253999
Select _"<Silently stare at Kel'vujo as you unsheathe your weapon to attack him.>"_ |only if DeathKnight
Select _"<You ready your weapon.> I may be "blind," but I see you intend to betray me."_ |gossip 137655 |only if DemonHunter
Select _"Nature itself will shield me from your betrayal!"_ |gossip 137658 |only if Druid
Select _"I am one of the elite amongst the Dracthyr. Do you think you stand a chance?"_ |gossip 137654 |only if Evoker
Select _"Good luck fighting with your legs frozen to the ground."_ |gossip 137663 |only if Hunter
Select _"I have a polymorph spell for betrayals like this."_ |gossip 137662 |only if Mage
Select _"(Monk)Your stance displays your traitorous intentions. Do you really wish to strike me?"_ |gossip 138683 |only if Monk
Select _"(Paladin)The Light will punish you for this betrayal!"_ |gossip 137659 |only if Paladin
Select _"(Priest)You do not have to betray me. Turn away from this path."_ |gossip 137653 |only if Discipline Priest or Holy Priest
Select _"(Priest - Shadow)<Create a terrifying visage of void and shadow before Kel'vujo can attack!>"_ |gossip 137652 |only if Shadow Priest
Select _"<Vanish from Kel'vujo's sight to prepare for a counter attack.>"_ |gossip 137661 |only if Rogue
Select _"The elements themselves heed my call. Do you really want to attack me?"_ |gossip 137657 |only if Shaman
Select _"I wouldn't cross someone who regularly tames demons, Kel'vujo."_ |gossip 137660 |only if Warlock
Select _"Raise your weapon, and I'll knock you into next week."_ |gossip 137664 |only if Warrior
kill Kel'venko##253999
Receive the Amani Reward |q 93096/2 |goto Zul Aman M/0 29.33,41.69
|only if haveq(93096) or completedq(93096)
step
talk Woodcrafter Azai##240521
turnin Recuperating Returns##88985 |goto Zul Aman M/0 28.37,27.30
accept Blind the Bandits##88986 |goto Zul Aman M/0 28.37,27.30
accept Salvaged Sabotage##88987 |goto Zul Aman M/0 28.37,27.30
|only if haveq(88985) or completedq(88985)
stickystart "Kill_Twilights_Blade_Cultists"
step
click Stolen Equipment+
|tip Broken wooden crates.
collect 6 Stolen Equipment##238964 |q 88987/1 |goto Zul Aman M/0 29.86,29.05
|only if haveq(88987) or completedq(88987)
step
label "Kill_Twilights_Blade_Cultists"
kill Twilight Saboteur##240496, Twilight Scout##240491, Twilight Shrouder##241572
Kill #8# Twilight's Blade Cultists |q 88986/2 |goto Zul Aman M/0 30.40,29.57
|only if haveq(88986) or completedq(88986)
step
talk Woodcrafter Azai##241219
turnin Blind the Bandits##88986 |goto Zul Aman M/0 28.44,27.52 |only if haveq(88986) or completedq(88986)
turnin Salvaged Sabotage##88987 |goto Zul Aman M/0 28.44,27.52 |only if haveq(88987) or completedq(88987)
accept The Artisan's Apprentice##88988 |goto Zul Aman M/0 28.44,27.52
|only if haveq(88986,88987) or completedq(88986,88987)
step
click Lightwood Pile
collect Lightwood Chunk##239138 |q 88988/1 |goto Zul Aman M/0 28.58,27.60
|only if haveq(88988) or completedq(88988)
step
click Sanding Wheel
Sand the Lightwood Chunk |q 88988/2 |goto Zul Aman M/0 28.54,27.53
|only if haveq(88988) or completedq(88988)
step
click Work-In-Progress Javelin
Bind the Blade to the Lightwood |q 88988/3 |goto Zul Aman M/0 28.48,27.55
|only if haveq(88988) or completedq(88988)
step
Oil the Lightwood Javelin |q 88988/4 |goto Zul Aman M/0 28.48,27.55
|tip Use the {o}Apply Dragonhawk Ash Oil{} button ability.
|tip On the spear.
|only if haveq(88988) or completedq(88988)
step
talk Woodcrafter Azai##241219
turnin The Artisan's Apprentice##88988 |goto Zul Aman M/0 28.44,27.52
accept Another One Bites the Sawdust##88989 |goto Zul Aman M/0 28.44,27.52
|only if haveq(88988) or completedq(88988)
step
click Completed Javelin
Retrieve the Lightwood Javelin |q 88989/1 |goto Zul Aman M/0 28.48,27.55
|only if haveq(88989) or completedq(88989)
step
kill Covert Commander Tofir##240530 |q 88989/3 |goto Zul Aman M/0 31.77,29.94
|tip Use the {o}Lightwood Javelin{} button ability on him.
|tip Inside the small cave.
|only if haveq(88989) or completedq(88989)
step
talk Woodcrafter Azai##241219
turnin Another One Bites the Sawdust##88989 |goto Zul Aman M/0 28.44,27.52
|only if haveq(88989) or completedq(88989)
step
talk Nija Torntusk##247014
accept Far from the Hinterlands##91406 |goto Zul Aman M/0 36.10,24.80
step
talk Nerunda##254716
|tip Inside the building.
accept A Quiet Walk Interrupted##93178 |goto Zul Aman M/0 36.78,25.10
|only if level >= 83 or achieved(42045)
step
click Hinterlands Spear
|tip Inside the building.
Find the Hinterlands Evidence |q 91406/1 |goto Zul Aman M/0 37.13,26.25 |count 1 hidden
step
talk Haz'kel##256027
|tip Up on the wall.
Select _"Have you seen Kanza?"_ |gossip 137297
Speak to Haz'kel |q 93178/1 |goto Zul Aman M/0 38.37,26.66
|only if haveq(93178) or completedq(93178)
step
click Wildhammer Trophy
|tip Inside the building.
Find the Hinterlands Evidence |q 91406/1 |goto Zul Aman M/0 38.08,24.10 |count 2 hidden
step
click Zun'watha Ritual Scroll
|tip {o}Upper floor{} of the building.
Find the Hinterlands Evidence |q 91406/1 |goto Zul Aman M/0 37.12,23.47 |count 3 hidden
step
talk Vun'zarah##244591
|tip {o}Ground floor{} inside the building.
Select _"Do you know anything that will help us speak to Jan'alai?"_ |gossip 134081
Speak with Vun'zarah |q 86661/1 |goto Zul Aman M/0 38.57,22.40
step
talk Zul'jarra##244592
|tip {o}Ground floor{} inside the building.
turnin Coals of a Dead Loa##86661 |goto Zul Aman M/0 38.53,22.46
accept The Riddled Speaker##86808 |goto Zul Aman M/0 38.53,22.46
step
talk Eagletender Do'nac##251073
fpath Witherbark Bluffs |goto Zul Aman M/0 38.89,23.21
step
talk Nija Torntusk##247014
turnin Far from the Hinterlands##91406 |goto Zul Aman M/0 36.10,24.80
accept The Eye of the Loa##91407 |goto Zul Aman M/0 36.10,24.80
step
Request Halazzi's Aid |q 91407/1 |goto Zul Aman M/0 35.97,24.76
|tip Use the {o}Speak with Halazzi{} button ability.
step
Scare Away #20# Spiders |q 91407/2 |goto Zul Aman M/0 37.80,24.40
|tip Run near spiders.
step
talk Nija Torntusk##247014
turnin The Eye of the Loa##91407 |goto Zul Aman M/0 36.09,24.80
accept Halazzi's Hunt##91563 |goto Zul Aman M/0 36.09,24.80
step
talk Loa Speaker Tobui##250068
|tip Inside the building.
turnin Halazzi's Hunt##91563 |goto Zul Aman M/0 32.24,31.56
accept Probable Paralytic##91403 |goto Zul Aman M/0 32.24,31.56
accept A Most Vile Venom##91404 |goto Zul Aman M/0 32.24,31.56
step
kill Horned Frog##247011+
|tip Large frogs.
collect 8 Venomous Horn##246621 |q 91403/1 |goto Zul Aman M/0 39.00,30.78
step
Find the Log Bridge |q 93178/2 |goto Zul Aman M/0 41.09,30.45
|tip On the huge fallen tree.
|only if haveq(93178) or completedq(93178)
step
clicknpc Horned Frog##256094
Find the First Clue |q 93178/3 |goto Zul Aman M/0 41.47,31.64
|only if haveq(93178) or completedq(93178)
step
kill Venomhexxer Raxxis##236561 |q 91404/1 |goto Zul Aman M/0 40.18,35.61
|tip Walks around.
step
click Ritual Supplies
|tip Inside the building.
collect Ritual Fang##246681 |q 91404/2 |goto Zul Aman M/0 40.42,36.03
step
click Broken Picnic Basket
Find the Second Clue |q 93178/4 |goto Zul Aman M/0 43.20,32.45
|only if haveq(93178) or completedq(93178)
step
click Shattered Teapot
Find the Third Clue |q 93178/5 |goto Zul Aman M/0 45.83,33.95
|only if haveq(93178) or completedq(93178)
step
talk Amaxei##242388
turnin Camp Stonewash##93667 |goto Zul Aman M/0 46.26,26.16
|only if haveq(93667) or completedq(93667)
step
talk Seeker Crikkash##242383
accept I Have a Permit##90481 |goto Zul Aman M/0 46.27,26.10
|only if haveq(93667) or completedq(93667)
step
talk Scroll of Flight##242011
fpath Camp Stonewash |goto Zul Aman M/0 47.31,25.52
step
Meet Zul'jarra at the Temple of Jan'alai |q 86808/1 |goto Zul Aman M/0 55.00,18.34
|tip Inside the building.
step
Watch the dialogue
|tip Inside the building.
talk Zul'jarra##236162
turnin The Riddled Speaker##86808 |goto Zul Aman M/0 55.00,18.34
accept Embers to a Flame##86663 |goto Zul Aman M/0 55.00,18.34
step
clicknpc Coal of Jan'alai##252208
|tip Inside the building.
Take the Coal of Jan'alai |q 86663/2 |goto Zul Aman M/0 55.09,18.24
step
kill Cinderdig Amazard##236168, Cinderscale Amazard##236169
Empower the Coal of Jan'alai |q 86663/3 |goto Zul Aman M/0 53.68,21.91
step
click Infused Coal
|tip Inside the building.
Place the Empowered Coal |q 86663/4 |goto Zul Aman M/0 55.08,18.25
step
talk Zul'jarra##236162
|tip Inside the building.
turnin Embers to a Flame##86663 |goto Zul Aman M/0 55.00,18.34
accept Seer or Sear##86664 |goto Zul Aman M/0 55.00,18.34
step
click First Coal of Jan'alai##240866
kill Manifestation of Zul'jin##245352
Light the First Hash'ey Shrine |q 86664/1 |goto Zul Aman M/0 54.90,21.57
step
clicknpc Second Coal of Jan'alai##240879
kill Manifestation of Zul'jan##245365
Light the Second Hash'ey Shrine |q 86664/2 |goto Zul Aman M/0 52.91,18.56
step
click Coalesced Fire
|tip Inside the building.
Place the Coalesced Flame |q 86664/3 |goto Zul Aman M/0 55.11,18.20
step
talk Zul'jarra##236162
|tip Inside the building.
turnin Seer or Sear##86664 |goto Zul Aman M/0 55.00,18.34
accept Face in the Fire##86665 |goto Zul Aman M/0 55.00,18.34
step
clicknpc Coalesced Fire##240916
|tip Inside the building.
Touch the Coal |q 86665/1 |goto Zul Aman M/0 55.11,18.20
step
kill Manifestation of Zul'jarra##236171
|tip Inside the building.
Slay the Final Manifestation |q 86665/2 |goto Zul Aman M/0 55.20,18.06
step
talk Zul'jarra##236162
|tip Inside the building.
turnin Face in the Fire##86665 |goto Zul Aman M/0 55.00,18.34
accept The Flames Rise Higher##90772 |goto Zul Aman M/0 55.00,18.34
step
talk Loa Speaker Brek##245512
|tip Inside the building.
Select _"Where is Jan'alai?"_ |gossip 134196
Speak with Loa Speaker Brek |q 90772/1 |goto Zul Aman M/0 55.11,18.32
step
talk Zul'jarra##236162
|tip Inside the building.
turnin The Flames Rise Higher##90772 |goto Zul Aman M/0 55.00,18.34
accept In the Shadow of Rebirth##86666 |goto Zul Aman M/0 55.00,18.34
step
talk Elder Reh'shen##242464
Select _"Do you recognize this letter you sent?"_ |gossip 133102
Select _"I will let them know."_ |gossip 133101
Find Elder Reh'shen |q 90481/1 |goto Zul Aman M/0 38.30,20.92
|only if haveq(90481) or completedq(90481)
step
talk Nerunda##254716
|tip Inside the building.
turnin A Quiet Walk Interrupted##93178 |goto Zul Aman M/0 36.78,25.10
accept Child-like Devotion##93179 |goto Zul Aman M/0 36.78,25.10
|only if haveq(93178) or completedq(93178)
step
talk Loa Speaker Tobui##250068
|tip Inside the building.
turnin Probable Paralytic##91403 |goto Zul Aman M/0 32.24,31.56
turnin A Most Vile Venom##91404 |goto Zul Aman M/0 32.24,31.56
accept Validating the Venom##91405 |goto Zul Aman M/0 32.24,31.56
step
talk Vun'zarah##244591
|tip {o}Ground floor{} inside the building.
Select _"Halazzi has sent me to find a venom expert. Do you know of one?"_ |gossip 134561
Speak to Chief Vuk'arah |q 91405/1 |goto Zul Aman M/0 38.57,22.40
step
talk Mixer Jamanga##247201
|tip {o}Top floor{} of the building.
Select _"I have frog venom samples and a large spider fang. Can you make an anti-venom?"_ |gossip 134564
Watch the dialogue
Speak to Mixer Jamanga |q 91405/2 |goto Zul Aman M/0 37.18,23.46
step
talk Daki##253604
Select _"Head to Mixer Jamanga. He is making an anti-venom."_ |gossip 136586
Send Daki to Mixer Jamanga |q 91405/3 |goto Zul Aman M/0 36.25,25.04
step
talk Nija Torntusk##247014
turnin Validating the Venom##91405 |goto Zul Aman M/0 36.10,24.80
accept Seeking Shadra##91408 |goto Zul Aman M/0 36.10,24.80
step
Follow the Spiders |q 91408/1 |goto Zul Aman M/0 39.64,23.04
|tip Entrance of the crypt.
step
talk Mixer Jamanga##247254
|tip Inside the crypt.
Select _"What's going on here?"_ |gossip 134622
Speak to Mixer Jamanga |q 91408/2 |goto Wit'Kalar Crypt/0 59.50,57.11
step
talk Nija Torntusk##247251
|tip Inside the crypt.
turnin Seeking Shadra##91408 |goto Wit'Kalar Crypt/0 60.73,56.60
step
talk Mixer Jamanga##247254
|tip Inside the crypt.
accept Stolen Sight##91630 |goto Wit'Kalar Crypt/0 59.50,57.11
step
kill Venomhexxer Iki##247382
|tip Walks around.
|tip Downstairs inside the crypt.
collect Eye of Shadra##246744 |q 91630/1 |goto Wit'Kalar Crypt/0 50.83,30.91
step
talk Mixer Jamanga##247254
|tip Inside crypt.
turnin Stolen Sight##91630 |goto Wit'Kalar Crypt/0 59.50,57.11
accept Dreaming of Spiders##91409 |goto Wit'Kalar Crypt/0 59.50,57.11
step
click Fang of Shadra
|tip Downstairs inside the crypt.
Place the Fang of Shadra |q 91409/1 |goto Wit'Kalar Crypt/0 37.70,65.70
step
click Eye of Shadra
|tip Downstairs inside the crypt.
Place the Eye of Shadra |q 91409/2 |goto Wit'Kalar Crypt/0 40.47,61.32
step
Watch the dialogue
talk Mixer Jamanga##247254
|tip Downstairs inside the crypt.
turnin Dreaming of Spiders##91409 |goto Wit'Kalar Crypt/0 42.93,71.75
step
talk Nija Torntusk##247251
|tip Downstairs inside the crypt.
accept Deep in Maisara##91411 |goto Wit'Kalar Crypt/0 46.37,71.92
step
Enter the {y}Maisara Caverns{} Follower Dungeon |complete zone("Maisara Caverns") |q 91411
|tip Use the {o}Group Finder{}.
step
_Inside the Maisara Caverns Dungeon:_
kill Vordaza##248595
|tip Second boss.
collect Shell of Shadra##246586 |q 91411/1
step
Leave the Dungeon |complete not zone("Maisara Caverns") |q 91411
step
talk Nija Torntusk##247251
|tip Downstairs inside the crypt.
turnin Deep in Maisara##91411 |goto Wit'Kalar Crypt/0 46.37,71.92
step
talk Mixer Jamanga##247254
|tip Downstairs inside the crypt.
accept Return of the Venom Queen##91412 |goto Wit'Kalar Crypt/0 42.94,71.82
step
Complete the Shadra Ritual |q 91412/1 |goto Wit'Kalar Crypt/0 41.85,67.70
|tip Use the {o}Summon Shadra{} button ability.
|tip Downstairs inside the crypt.
step
click Egg of Shadra
|tip Downstairs inside the crypt.
Hatch the Egg of Shadra |q 91412/2 |goto Wit'Kalar Crypt/0 40.13,64.89
step
talk Nija Torntusk##247251
|tip Downstairs inside the crypt.
turnin Return of the Venom Queen##91412 |goto Wit'Kalar Crypt/0 46.37,71.92
step
talk Mixer Jamanga##247254
|tip Downstairs inside the crypt.
accept Shared Loa##91410 |goto Wit'Kalar Crypt/0 42.94,71.82
step
talk Vun'zarah##244591
|tip {o}Ground floor{} inside the building.
turnin Shared Loa##91410 |goto Zul Aman M/0 38.57,22.40
step
talk Seeker Crikkash##242383
turnin I Have a Permit##90481 |goto Zul Aman M/0 46.27,26.10
|only if haveq(90481) or completedq(90481)
step
Watch the dialogue
talk Trishe##242393
|tip It may take a moment for it to appear.
accept Sightseeing Stegadon##90484 |goto Zul Aman M/0 47.28,26.15
|only if haveq(90481) or completedq(90481)
step
Watch the dialogue
talk Amaxei##242394
|tip He will eventually walk to this location.
accept Cuisine Connection##90482 |goto Zul Aman M/0 47.16,24.62
|only if haveq(90481) or completedq(90481)
step
talk Seeker Crikkash##242391
accept A Witherbark Story##90483 |goto Zul Aman M/0 47.26,24.43
accept Afterthought Artifacts##90485 |goto Zul Aman M/0 47.26,24.43
|only if haveq(90481) or completedq(90481)
step
kill Hidegorger the Everburning##242397 |q 90484/1 |goto Zul Aman M/0 45.46,23.88
|only if haveq(90484) or completedq(90484)
step
clicknpc Steggy##242460
Reassure Steggy |q 90484/2 |goto Zul Aman M/0 45.36,23.96
|only if haveq(90484) or completedq(90484)
step
talk Trishe##242393
turnin Sightseeing Stegadon##90484 |goto Zul Aman M/0 47.28,26.14
|only if haveq(90484) or completedq(90484)
step
talk Witherbark Visitor##242392+
Select _"Tell me a Witherbark story."_ |gossip 133188
|tip They will attack you.
Reenact #5# Witherbark Stories |q 90483/1 |goto Zul Aman M/0 47.46,25.29
|only if haveq(90483) or completedq(90483)
step
talk Seeker Crikkash##242391
turnin A Witherbark Story##90483 |goto Zul Aman M/0 47.25,24.43
|only if haveq(90483) or completedq(90483)
step
_During the Next Steps:_
click Clinging Depthsroot+
|tip Short green plants underwater.
|tip Gives {o}waterbreathing{} and {o}swim speed{}.
Click Here to Continue |confirm |q 90482
|only if haveq(90482) or completedq(90482)
stickystart "Collect_Zapgut_Eel_Stomachs"
stickystart "Collect_Blisterskin_Kelp"
step
click Lost Amani Oar
|tip Underwater.
collect Lost Amani Oar##251272 |q 90485/2 |goto Zul Aman M/0 48.37,28.33
|only if haveq(90485) or completedq(90485)
step
click Lost Amani Bolt
|tip Underwater.
collect Lost Amani Bolt##251075 |q 90485/1 |goto Zul Aman M/0 48.91,28.39
|only if haveq(90485) or completedq(90485)
step
click Lost Amani Trinket
|tip Underwater.
collect Lost Amani Trinket##241615 |q 90485/3 |goto Zul Aman M/0 49.52,27.75
|only if haveq(90485) or completedq(90485)
step
click Pile of Rubble
|tip Underwater.
Clear the Rubble |q 90485/4 |goto Zul Aman M/0 48.65,28.70
|only if haveq(90485) or completedq(90485)
step
click Old Amani Pot
|tip Underwater.
collect Old Amani Pot##241614 |q 90485/5 |goto Zul Aman M/0 48.65,28.70
|only if haveq(90485) or completedq(90485)
step
label "Collect_Zapgut_Eel_Stomachs"
kill Zapgut Eel##242453, Zapgut Lunker##250687
|tip Eels.
|tip Underwater. |notinsticky
collect 6 Zapgut Eel Stomach##241013 |q 90482/2 |goto Zul Aman M/0 49.12,28.56
|only if haveq(90482) or completedq(90482)
step
label "Collect_Blisterskin_Kelp"
click Blisterskin Kelp+
|tip Tall brown plants.
|tip Underwater. |notinsticky
collect 60 Blisterskin Kelp##241014 |q 90482/3 |goto 49.22,27.52
|only if haveq(90482) or completedq(90482)
step
talk Amaxei##242394
turnin Cuisine Connection##90482 |goto Zul Aman M/0 47.16,24.63
accept Dangerous Delicacies##90486 |goto Zul Aman M/0 47.16,24.63
|only if haveq(90482) or completedq(90482)
step
clicknpc Prepared Zapgut##242778
Squeeze the Prepared Zapgut Eel |q 90486/1 |goto Zul Aman M/0 47.11,24.50 |count 1 hidden
|only if haveq(90486) or completedq(90486)
step
clicknpc Prepared Zapgut##242778
Squeeze the Prepared Zapgut Eel |q 90486/1 |goto Zul Aman M/0 47.09,24.51 |count 2 hidden
|only if haveq(90486) or completedq(90486)
step
Jump on the Blisterskin Kelp |q 90486/2 |goto Zul Aman M/0 47.03,24.63
|tip Jump repeatedly.
|only if haveq(90486) or completedq(90486)
step
click Prepared Saltleaf Boar##242780
Carve the Prepared Saltleaf Boar |q 90486/3 |goto Zul Aman M/0 47.09,24.83 |count 1 hidden
|only if haveq(90486) or completedq(90486)
step
click Prepared Saltleaf Boar##242780
Carve the Prepared Saltleaf Boar |q 90486/3 |goto Zul Aman M/0 47.14,24.80 |count 2 hidden
|only if haveq(90486) or completedq(90486)
step
click Prepared Saltleaf Boar##242780
Carve the Prepared Saltleaf Boar |q 90486/3 |goto Zul Aman M/0 47.14,24.76 |count 3 hidden
|only if haveq(90486) or completedq(90486)
step
click Blistereel Boar Skewer
Cook the Blistereel Boar Skewer |q 90486/4 |goto Zul Aman M/0 47.14,24.68
|only if haveq(90486) or completedq(90486)
step
talk Gushu##242390
turnin Dangerous Delicacies##90486 |goto Zul Aman M/0 47.15,24.57
|only if haveq(90486) or completedq(90486)
step
talk Seeker Crikkash##242391
turnin Afterthought Artifacts##90485 |goto Zul Aman M/0 47.26,24.43
accept Unlikely Friends##90568 |goto Zul Aman M/0 47.26,24.43
|only if haveq(90485) or completedq(90485)
step
talk Kanza##254719
Select _"Your mother sent me to take you home."_ |gossip 137771
Find Kanza |q 93179/2 |goto Zul Aman M/0 52.30,32.16
|only if haveq(93179) or completedq(93179)
step
talk Kanza##254719
turnin Child-like Devotion##93179 |goto Zul Aman M/0 52.30,32.16
accept Shrine Preparations##93180 |goto Zul Aman M/0 52.30,32.16
|only if haveq(93179) or completedq(93179)
step
talk Kanza##254719
Select _"I'll handle the stingers, Kanza. Anything else?"_ |gossip 137820
Follow Kanza |q 93180/1 |goto Zul Aman M/0 50.77,31.36
|only if haveq(93180) or completedq(93180)
step
talk Kanza##258014
Select _"You'd like me to pick some mushrooms as well?"_ |gossip 137830
Follow Kanza (Again) |q 93180/2 |goto Zul Aman M/0 51.44,30.62
|only if haveq(93180) or completedq(93180)
stickystart "Kill_Stinger_Hatchlings"
stickystart "Collect_Thorncaps"
step
kill 4 Stinger Matriarch##257945 |q 93180/4 |goto Zul Aman M/0 51.39,32.30
|tip Larger flying insects.
|only if haveq(93180) or completedq(93180)
step
label "Kill_Stinger_Hatchlings"
kill 8 Stinger Hatchling##257946 |q 93180/3 |goto Zul Aman M/0 51.39,32.30
|tip Smaller flying insects.
|only if haveq(93180) or completedq(93180)
step
label "Collect_Thorncaps"
kill Mudwallow Boar##258069, Tusksplitter Boar##258073
click Thorncap+
|tip Brown mushrooms.
collect 20 Thorncap##265341 |q 93180/5 |goto Zul Aman M/0 52.81,31.68
|only if haveq(93180) or completedq(93180)
step
talk Kanza##258014
turnin Shrine Preparations##93180 |goto Zul Aman M/0 51.44,30.62
accept Temple and a Teapot##93181 |goto Zul Aman M/0 51.44,30.62
|only if haveq(93180) or completedq(93180)
step
talk Honnu##254799
buy Antique Tuskarr Teapot##265401 |n
Buy a Teapot from Honnu |q 93181/1 |goto Zul Aman M/0 47.17,24.47
|only if haveq(93181) or completedq(93181)
step
talk Kanza##258363
Select _"Let's have a tea party!"_ |gossip 137968
Speak to Kanza |q 93181/2 |goto Zul Aman M/0 52.33,32.15
|only if haveq(93181) or completedq(93181)
step
click Antique Tuskarr Teapot
Place the Teapot |q 93181/3 |goto Zul Aman M/0 52.29,32.05
|only if haveq(93181) or completedq(93181)
step
talk Kanza##258363
turnin Temple and a Teapot##93181 |goto Zul Aman M/0 52.33,32.15
accept Healing Homeward##93182 |goto Zul Aman M/0 52.33,32.15
|only if haveq(93181) or completedq(93181)
step
talk Elder Reh'shen##242464
turnin Unlikely Friends##90568 |goto Zul Aman M/0 38.30,20.92
|only if haveq(90568) or completedq(90568)
step
talk Nerunda##258569
|tip Walks around.
|tip Inside the building.
Speak to Nerunda |q 93182/1 |goto Zul Aman M/0 36.78,25.10
|only if haveq(93182) or completedq(93182)
step
talk Nerunda##258569
|tip Inside the building.
turnin Healing Homeward##93182 |goto Zul Aman M/0 36.78,25.10
|only if haveq(93182) or completedq(93182)
step
talk Huntmaster Jinki##253998
turnin Amani Honor##93096 |goto Zul Aman M/0 44.27,66.58
|only if haveq(93096) or completedq(93096)
step
talk Elder Doru##254665
turnin The Medicine Loa's Shrine##92531 |goto Zul Aman M/0 43.12,67.94
step
talk Zul'jarra##240186
turnin In the Shadow of Rebirth##86666 |goto Zul Aman M/0 43.84,68.28
accept Den of Nalorakk: A Taste of Vengeance##86681 |goto Zul Aman M/0 43.84,68.28
step
click Kinduru's Mortar
Use Kinduru's Mortar to Grind the Bog Herbs |q 86681/1 |goto Zul Aman M/0 43.57,68.38
step
Pour the Death Rites Mixture into the Fire |q 86681/2 |goto Zul Aman M/0 43.59,68.24 |count 1 hidden
|tip Use the {o}Pour Death Rite Mixture{} button ability.
step
Pour the Death Rites Mixture into the Fire |q 86681/2 |goto Zul Aman M/0 43.67,68.54 |count 2 hidden
|tip Use the {o}Pour Death Rite Mixture{} button ability.
step
Pour the Death Rites Mixture into the Fire |q 86681/2 |goto Zul Aman M/0 43.85,68.66 |count 3 hidden
|tip Use the {o}Pour Death Rite Mixture{} button ability.
step
talk Zul'jarra##240186
turnin Den of Nalorakk: A Taste of Vengeance##86681 |goto Zul Aman M/0 43.84,68.28
accept Den of Nalorakk: Waking de Bear##86682 |goto Zul Aman M/0 43.84,68.28
step
talk Kahanea##254491
turnin Revantusk at Risk##93257 |goto Zul Aman M/0 40.22,79.16
accept Crab Clues##93258 |goto Zul Aman M/0 40.22,79.16
|only if haveq(93257) or completedq(93257)
step
click Suspicious Debris
Select _"Take note of this for Kahanea."_ |gossip 137687
Investigate the Suspicious Debris |q 93258/1 |goto Zul Aman M/0 39.64,80.09
|only if haveq(93258) or completedq(93258)
step
click Remains
|tip Under the purple crab.
Select _"Take note of this for Kahanea."_ |gossip 137685
Investigate the Remains |q 93258/2 |goto Zul Aman M/0 38.77,81.72
|only if haveq(93258) or completedq(93258)
step
click Empty Basket
|tip You will be attacked.
Investigate the Empty Basket |q 93258/3 |goto Zul Aman M/0 38.33,79.34
|only if haveq(93258) or completedq(93258)
step
talk Kahanea##254491
turnin Crab Clues##93258 |goto Zul Aman M/0 40.23,79.16
accept Caging Crawlers##93260 |goto Zul Aman M/0 40.23,79.16
accept Clobbering Crawlers##93259 |goto Zul Aman M/0 40.23,79.16
|only if haveq(93258) or completedq(93258)
stickystart "Collect_Mouthwatering_Crab_Meat"
step
click Crab Trap
Clean the Crab Trap |q 93260/1 |goto Zul Aman M/0 37.49,81.20 |count 1 hidden
|only if haveq(93260) or completedq(93260)
step
click Crab Trap
Clean the Crab Trap |q 93260/1 |goto Zul Aman M/0 36.31,81.15 |count 2 hidden
|only if haveq(93260) or completedq(93260)
step
click Crab Trap
Clean the Crab Trap |q 93260/1 |goto Zul Aman M/0 35.62,81.68 |count 3 hidden
|only if haveq(93260) or completedq(93260)
step
click Crab Trap
Clean the Crab Trap |q 93260/1 |goto Zul Aman M/0 34.76,82.21 |count 4 hidden
|only if haveq(93260) or completedq(93260)
step
click Crab Trap
Clean the Crab Trap |q 93260/1 |goto Zul Aman M/0 33.71,83.27 |count 5 hidden
|only if haveq(93260) or completedq(93260)
step
click Crab Trap
Clean the Crab Trap |q 93260/1 |goto Zul Aman M/0 32.25,84.22 |count 6 hidden
|only if haveq(93260) or completedq(93260)
step
label "Collect_Mouthwatering_Crab_Meat"
kill Carnivorous Crab##252222, Hungry Hatchling##251705, King Crab##252221, Slippery Snapper##251636
|tip Crabs.
collect 10 Mouthwatering Crab Meat##259471 |q 93259/1 |goto Zul Aman M/0 35.07,81.98
|only if haveq(93259) or completedq(93259)
step
talk Kahanea##254491
turnin Caging Crawlers##93260 |goto Zul Aman M/0 32.22,83.84 |only if haveq(93260) or completedq(93260)
turnin Clobbering Crawlers##93259 |goto Zul Aman M/0 32.22,83.84 |only if haveq(93259) or completedq(93259)
accept A Crab of Unusual Size##93261 |goto Zul Aman M/0 32.22,83.84
|only if haveq(93260,93259) or completedq(93260,93259)
step
kill Void-Crazed Crawler##254805 |q 93261/1 |goto Zul Aman M/0 33.52,86.01
|tip Loot it.
|tip Inside the small cave.
|only if haveq(93261) or completedq(93261)
step
Remove the Mania-Crab's Corruption  |q 93261/2 |goto Zul Aman M/0 33.52,86.01
|tip Loot the Void-Crazed Crawler.
|tip Inside the small cave.
|only if haveq(93261) or completedq(93261)
step
talk Eagletender Tha'mon##249150
fpath Torntusk Overlook |goto Zul Aman M/0 33.90,78.32
step
talk Lilaju##245664
Select _"We will. But we need to speak to Nalorakk to do so."_ |gossip 134139
Speak with Lilaju |q 86682/1 |goto Zul Aman M/0 33.59,78.82
step
talk Lilaju##245664
accept Honorin' de Sacrifice##92492 |goto Zul Aman M/0 33.59,78.82
|only if level >= 83 or achieved(42045)
step
talk Pel'na Torntusk##248657
accept The Spiritpaw##91813 |goto Zul Aman M/0 33.61,78.85
step
talk Zul'jarra##240215
turnin Den of Nalorakk: Waking de Bear##86682 |goto Zul Aman M/0 33.61,78.77
accept Den of Nalorakk: Unforgiven##91958 |goto Zul Aman M/0 33.61,78.77
step
talk Kahanea##254491
|tip Inside the small cave.
turnin A Crab of Unusual Size##93261 |goto Zul Aman M/0 33.10,79.03
|only if haveq(93261) or completedq(93261)
step
talk Zul'jarra##240215
Select _"<Enter the Den of Nalorakk with Zul'jarra.>"_ |gossip 134140
Talk to Zul'jarra to Begin a Follower Dungeon |q 91958/2 |goto Zul Aman M/0 33.61,78.77
step
Defeat Nalorakk, Loa of War in Combat |q 91958/3
|tip Complete the follower dungeon.
step
_Inside the Follower Dungeon:_
talk Zul'jarra##246409
Select _"<Leave Nalorakk's Den.>"_ |gossip 136468
Return to Zul Aman |complete zone("Zul Aman M") |q 91958
step
talk Zul'jarra##240215
Select _"What is next?"_ |gossip 138171
Watch the dialogue
Speak with Zul'jarra |q 91958/4 |goto Zul Aman M/0 31.58,83.87
step
talk Zul'jarra##240215
turnin Den of Nalorakk: Unforgiven##91958 |goto Zul Aman M/0 31.58,83.87
accept Hash'ey Away##86683 |goto Zul Aman M/0 31.58,83.87
step
talk Furgh##248121
turnin The Spiritpaw##91813 |goto Zul Aman M/0 41.36,80.10
accept Not Quite Nalorakk##91747 |goto Zul Aman M/0 41.36,80.10
step
talk Fleeg##248123
accept Too Much Twilight##91748 |goto Zul Aman M/0 41.30,80.11
stickystart "Collect_Nalorakk_Trinkets"
step
click Void-Tainted Training Stick
Destroy the Hidden Corruption |q 91748/1 |goto Zul Aman M/0 41.69,80.96 |count 1 hidden
step
click Void-Tainted Carving
Destroy the Hidden Corruption |q 91748/1 |goto Zul Aman M/0 42.97,82.80 |count 2 hidden
step
click Void-Tainted Totem
|tip Inside the huge tree.
Destroy the Hidden Corruption |q 91748/1 |goto Zul Aman M/0 42.91,80.12 |count 3 hidden
step
click Void-Tainted Light
Destroy the Hidden Corruption |q 91748/1 |goto Zul Aman M/0 42.42,78.99 |count 4 hidden
step
label "Collect_Nalorakk_Trinkets"
kill Spiritpaw Chosen##248371, Spiritpaw Den Watcher##248430
collect 8 Nalorakk Trinket##248300 |q 91747/1 |goto Zul Aman M/0 42.87,80.91
step
talk Fleeg##248123
turnin Too Much Twilight##91748 |goto Zul Aman M/0 41.30,80.11
step
talk Furgh##248121
turnin Not Quite Nalorakk##91747 |goto Zul Aman M/0 41.36,80.10
accept It's Just Not Right##91749 |goto Zul Aman M/0 41.36,80.10
step
kill Groffa the Guzzler##248349 |q 91749/1 |goto Zul Aman M/0 44.42,79.48
|tip Walks around.
step
click Groffa's Hoard
collect Groffa's Treasures##248659 |q 91749/2 |goto Zul Aman M/0 44.50,79.31
step
talk Furgh##248121
turnin It's Just Not Right##91749 |goto Zul Aman M/0 41.36,80.10
accept Precious Trinkets##93734 |goto Zul Aman M/0 41.36,80.10
step
Watch the dialogue
Carefully Observe Furgh |q 93734/1 |goto Zul Aman M/0 41.28,79.90
step
click Groffa's Treasure
Burn Groffa's Treasure in the Fire |q 93734/2 |goto Zul Aman M/0 41.28,79.90
step
Watch the dialogue
talk Furgh##256101
turnin Precious Trinkets##93734 |goto Zul Aman M/0 41.36,80.10
step
talk Fleeg##248123
accept Perils of Trust##91750 |goto Zul Aman M/0 41.30,80.10
step
kill Voice of Nalorakk##248350
|tip Inside the small cave.
Slay the Fake Voice of Nalorakk |q 91750/1 |goto Zul Aman M/0 43.97,82.27
step
talk Fleeg##248123
turnin Perils of Trust##91750 |goto Zul Aman M/0 41.30,80.11
step
Arrive in Amani'Zar Village |q 86683/1 |goto Zul Aman M/0 43.80,68.67
step
talk Zul'jarra##240216
Select _"Is there nothing we can do?"_ |gossip 132827
Watch the dialogue
Speak with Zul'jarra |q 86683/2 |goto Zul Aman M/0 43.80,68.67
step
talk Zul'jarra##240216
turnin Hash'ey Away##86683 |goto Zul Aman M/0 43.48,68.82
accept The Blade's Edge##86684 |goto Zul Aman M/0 43.48,68.82
step
talk Lilaju##251669
turnin Honorin' de Sacrifice##92492 |goto Zul Aman M/0 26.08,64.54
accept What Remains of Idago##92493 |goto Zul Aman M/0 26.08,64.54
accept Disruptin' de Blade##92495 |goto Zul Aman M/0 26.08,64.54
|only if haveq(92492) or completedq(92492)
stickystart "Kill_Baleful_Darkspawns"
stickystart "Kill_Twilight_Enforcers"
stickystart "Kill_Twilight_Shadowmages"
step
click Idago's Warspear
|tip Inside the building.
collect Idago's Warspear##252134 |q 92493/1 |goto Zul Aman M/0 25.00,63.25
|only if haveq(92493) or completedq(92493)
step
click Idago's Banner
|tip {o}Top floor{} of the building.
collect Idago's Banner##252135 |q 92493/2 |goto Zul Aman M/0 23.35,60.41
|only if haveq(92493) or completedq(92493)
step
click Lilaju's Hiding Spot
collect Idago's Letter##252136 |q 92493/3 |goto Zul Aman M/0 24.06,59.72
|only if haveq(92493) or completedq(92493)
step
label "Kill_Baleful_Darkspawns"
kill 3 Baleful Darkspawn##251693 |q 92495/3 |goto Zul Aman M/0 24.78,61.88
|tip Purple elementals.
|only if haveq(92495) or completedq(92495)
step
label "Kill_Twilight_Enforcers"
kill 8 Twilight Enforcer##251688 |q 92495/1 |goto Zul Aman M/0 24.78,61.88
|tip Armored humanoids.
|only if haveq(92495) or completedq(92495)
step
label "Kill_Twilight_Shadowmages"
kill 8 Twilight Shadowmage##251687 |q 92495/2 |goto Zul Aman M/0 24.78,61.88
|tip Humanoids in robes.
|only if haveq(92495) or completedq(92495)
step
talk Lilaju##251669
turnin What Remains of Idago##92493 |goto Zul Aman M/0 22.56,63.91 |only if haveq(92493) or completedq(92493)
turnin Disruptin' de Blade##92495 |goto Zul Aman M/0 22.56,63.91 |only if haveq(92495) or completedq(92495)
accept Spears Against de Shadow##92496 |goto Zul Aman M/0 22.56,63.91
|only if haveq(92493,92495) or completedq(92493,92495)
step
talk Idago##251522
|tip Inside the building.
accept Simply Magical##92497 |goto Revantusk Sedge/0 61.19,39.86
|only if haveq(92493,92495) or completedq(92493,92495)
step
click Tome of Pain
|tip Inside the building.
collect Page of Pain##260406 |q 92497/2 |goto Revantusk Sedge/0 35.97,38.94
|only if haveq(92497) or completedq(92497)
step
click Tome of Binding
|tip Inside the building.
collect Page of Binding##260407 |q 92497/1 |goto Revantusk Sedge/0 46.78,75.71
|only if haveq(92497) or completedq(92497)
step
kill Deathchanter Mish'mosh##251698 |q 92496/1 |goto Revantusk Sedge/0 55.20,68.84
|tip Inside the building.
|only if haveq(92496) or completedq(92496)
step
click Runic Binding
|tip Inside the building.
Release the Magical Binding |q 92497/3 |goto Revantusk Sedge/0 61.34,42.00 |count 1 hidden
|only if haveq(92497) or completedq(92497)
step
click Runic Binding
|tip Inside the building.
Release the Magical Binding |q 92497/3 |goto Revantusk Sedge/0 61.29,37.63 |count 2 hidden
|only if haveq(92497) or completedq(92497)
step
talk Idago##251522
turnin Simply Magical##92497 |goto Zul Aman M/0 22.54,63.94
|only if haveq(92497) or completedq(92497)
step
talk Lilaju##251669
turnin Spears Against de Shadow##92496 |goto Zul Aman M/0 22.57,63.91
accept The Wisest Leaders Follow##92499 |goto Zul Aman M/0 22.57,63.91
|only if haveq(92496) or completedq(92496)
step
Arrive at Broken Throne |q 86684/1 |goto Zul Aman M/0 28.35,77.38
step
talk Zul'jarra##240033
turnin The Blade's Edge##86684 |goto Zul Aman M/0 28.35,77.38
accept Conduit Crisis##86687 |goto Zul Aman M/0 28.35,77.38
accept Chip and Shatter##86685 |goto Zul Aman M/0 28.35,77.38
step
talk Lady Liadrin##240039
accept Light Indiscriminate##86686 |goto Zul Aman M/0 28.41,77.41
stickystart "Slay_Twilights_Blade"
step
click Void Conduit+
|tip Floating shattered orbs.
|tip On your minimap.
Destroy #3# Conduits Near Nalorakk |q 86687/4 |goto Zul Aman M/0 27.29,81.33
step
click Void Conduit+
|tip Floating shattered orbs.
|tip On your minimap.
Destroy #3# Conduits Near Akil'zon |q 86687/3 |goto Zul Aman M/0 23.72,80.07
step
click Void Conduit+
|tip Floating shattered orbs.
|tip On your minimap.
Destroy #3# Conduits Near Halazzi |q 86687/2 |goto Zul Aman M/0 23.84,74.83
step
click Void Conduit+
|tip Floating shattered orbs.
|tip On your minimap.
Destroy #3# Conduits Near Jan'alai |q 86687/1 |goto Zul Aman M/0 25.11,71.37
step
clicknpc Injured Amani Warrior##240843+
|tip Kneeling trolls.
|tip On your minimap. |notinsticky
Heal #10# Injured Amani Warriors |q 86686/1 |goto Zul Aman M/0 26.22,77.18
step
label "Slay_Twilights_Blade"
kill Blade Commander##239753, Bound Shadow##239757, Flittering Shadow##239758, Lurking Shadeblade##239752, Ogre Hexwright##239749, Ogre Rampager##239748, Shadowy Stalker##239750, Twilight Breaker##239751, Twilight Sage##239755, Umbral Force##239756, Void Ascendant##239754
Slay the Twilight's Blade |q 86685/1 |goto Zul Aman M/0 25.05,76.99
step
talk Lady Liadrin##245271
turnin Light Indiscriminate##86686 |goto Zul Aman M/0 25.70,77.66
step
talk Zul'jarra##245270
turnin Conduit Crisis##86687 |goto Zul Aman M/0 25.70,77.62
turnin Chip and Shatter##86685 |goto Zul Aman M/0 25.70,77.62
accept Clear de Way##91001 |goto Zul Aman M/0 25.70,77.62
step
Meet at Conquerer's Sanctum |q 91001/1 |goto Zul Aman M/0 22.53,77.38
step
talk Zul'jarra##240034
turnin Clear de Way##91001 |goto Zul Aman M/0 22.53,77.38
accept Blade Shattered##86692 |goto Zul Aman M/0 22.53,77.38
step
talk Zul'jarra##240034
Select _"I am ready to battle Mor'duun."_ |gossip 135208
Speak to Zul'jarra |q 86692/1 |goto Zul Aman M/0 22.53,77.38
step
Watch the dialogue
kill Mor'duun##241301 |q 86692/2 |goto Zul Aman M/0 21.37,77.37
|tip Inside the building.
step
talk Zul'jarra##240037
|tip Inside the building.
turnin Blade Shattered##86692 |goto Zul Aman M/0 21.43,77.37
accept De Legend of de Hash'ey##86693 |goto Zul Aman M/0 21.43,77.37
step
talk Lilaju##245664
turnin The Wisest Leaders Follow##92499 |goto Zul Aman M/0 33.59,78.82
|only if haveq(92499) or completedq(92499)
step
talk Zul'jarra##241306
Select _"<Start the celebration.>"_ |gossip 134131
Watch the dialogue
Talk to Zul'jarra at Amani'Zar Village |q 86693/1 |goto Zul Aman M/0 45.28,66.20
step
talk Zul'jarra##249653
|tip Inside the building.
turnin De Legend of de Hash'ey##86693 |goto Zul Aman M/0 45.76,65.50
accept Broken Bridges##91062 |goto Zul Aman M/0 45.76,65.50
accept Personal History##93440 |goto Zul Aman M/0 45.76,65.50 |only if level >= 83 or achieved(42045)
step
talk Zul'jan##245646
|tip On the bridge.
Select _"Are you okay, Zul'jan?"_ |gossip 134133
Check on Zul'jan |q 91062/1 |goto Zul Aman M/0 51.26,54.36
step
Watch the dialogue
talk Lady Liadrin##241308
|tip On the bridge.
turnin Broken Bridges##91062 |goto Zul Aman M/0 50.75,54.47
step
Watch the dialogue
|tip On the bridge.
talk Lady Liadrin##241308
accept Reports Returned##91087 |goto Zul Aman M/0 50.75,54.47
|tip If this quest is not offered, skip this step.
step
talk Torundo the Grizzled##254783
turnin Personal History##93440 |goto Atal Aman M/1 46.06,47.48
accept Swords to Plowshares##93432 |goto Atal Aman M/1 46.06,47.48
|only if haveq(93440) or completedq(93440)
step
talk Elder Doru##254827
accept Shrine, Sealed, Delivered##93433 |goto Atal Aman M/1 46.29,47.24
|only if haveq(93440) or completedq(93440)
stickystart "Collect_Ash_Remains"
step
talk Elder Vu'lona##254828
|tip Inside the building.
Select _"Elder Doru wants to know if your barriers are holding."_ |gossip 137195
Speak with Elder Vu'lona |q 93433/3 |goto Atal Aman M/1 34.48,67.04
|only if haveq(93433) or completedq(93433)
step
talk Elder Thak##254830
|tip Top of the building.
Select _"Elder Doru wants to know if your barriers are holding."_ |gossip 137197
Speak with Elder Thak |q 93433/2 |goto Atal Aman M/1 25.78,66.99
|only if haveq(93433) or completedq(93433)
step
talk Eagletender Rhyd##254842
Select _"Elder Doru wants to know if your barriers are holding."_ |gossip 137198
Speak with Eagletender Rhyd |q 93433/1 |goto Atal Aman M/1 20.73,13.64
|only if haveq(93433) or completedq(93433)
step
talk Elder Shimarra##254834
|tip Inside the building.
Select _"Elder Doru wants to know if your barriers are holding."_ |gossip 137196
Speak with Elder Shimarra |q 93433/4 |goto Atal Aman M/1 34.44,23.13
|only if haveq(93433) or completedq(93433)
step
label "Collect_Ash_Remains"
kill Budd Nedreck##255251, Harrison Jones##254851, Prigmon##255254, Raiding Caster##254734, Raiding Caster##255883, Raiding Rogue##254731, Raiding Rogue##255882, Raiding Warrior##254534, Raiding Warrior##255881
|tip All around Atal Aman. |notinsticky
collect 15 Raider Ash Remains##259204 |q 93432/1 |goto Atal Aman M/1 44.72,47.32
|only if haveq(93432) or completedq(93432)
step
talk Elder Doru##254827
turnin Shrine, Sealed, Delivered##93433 |goto Atal Aman M/1 45.23,44.88
|only if haveq(93433) or completedq(93433)
step
talk Torundo the Grizzled##254783
turnin Swords to Plowshares##93432 |goto Atal Aman M/1 45.43,44.66
accept Four Instigators##93435 |goto Atal Aman M/1 45.43,44.66
|only if haveq(93432) or completedq(93432)
step
talk Elder Doru##254827
accept Hex the Innocent, Disrupt the Guilty##93436 |goto Atal Aman M/1 45.23,44.88
|only if haveq(93432) or completedq(93432)
step
kill Zungam##255255 |q 93435/2 |goto Atal Aman M/1 44.24,32.39
|tip {o}Ground floor{} inside the building.
|only if haveq(93435) or completedq(93435)
step
clicknpc Tyllan##254878
|tip Top of the building.
Hex the Civilian |q 93436/2 |goto Atal Aman M/1 44.58,34.91 |count 1 hidden
|only if haveq(93436) or completedq(93436)
step
clicknpc Mitzi##254861
Hex the Civilian |q 93436/2 |goto Atal Aman M/1 49.33,18.75 |count 2 hidden
|only if haveq(93436) or completedq(93436)
step
click Raider's Feast
Poison the Feast |q 93436/1 |goto Atal Aman M/1 52.02,19.24 |count 1 hidden
|only if haveq(93436) or completedq(93436)
step
clicknpc Kyren##254862
|tip Swims around.
Hex the Civilian |q 93436/2 |goto Atal Aman M/1 57.42,20.70 |count 3 hidden
|only if haveq(93436) or completedq(93436)
step
clicknpc Kaldrick##254871
Hex the Civilian |q 93436/2 |goto Atal Aman M/1 52.07,30.63 |count 4 hidden
|only if haveq(93436) or completedq(93436)
step
clicknpc Rosa##254879
|tip Top of the waterfall.
|tip Runs around.
Hex the Civilian |q 93436/2 |goto Atal Aman M/1 52.28,37.72 |count 5 hidden
|only if haveq(93436) or completedq(93436)
step
click Warlord's Chest
Sabotage the Warlord's Chest |q 93436/3 |goto Atal Aman M/1 67.56,47.28
|only if haveq(93436) or completedq(93436)
step
clicknpc Melasong##254873
|tip Up on the rock.
Hex the Civilian |q 93436/2 |goto Atal Aman M/1 52.46,64.86 |count 6 hidden
|only if haveq(93436) or completedq(93436)
step
clicknpc Lenzo##254872
Hex the Civilian |q 93436/2 |goto Atal Aman M/1 45.18,69.19 |count 7 hidden
|only if haveq(93436) or completedq(93436)
step
kill Prigmon##255254 |q 93435/1 |goto Atal Aman M/1 34.59,80.96
|only if haveq(93435) or completedq(93435)
step
click Raider's Feast
Poison the Feast |q 93436/1 |goto Atal Aman M/1 22.56,80.71 |count 2 hidden
|only if haveq(93436) or completedq(93436)
step
kill Harrison Jones##254851 |q 93435/4 |goto Atal Aman M/1 8.58,40.53
|only if haveq(93435) or completedq(93435)
step
kill Budd Nedreck##255251 |q 93435/3 |goto Atal Aman M/1 10.35,27.62
|only if haveq(93435) or completedq(93435)
step
click Raider's Feast
Poison the Feast |q 93436/1 |goto Atal Aman M/1 7.92,9.01 |count 3 hidden
|only if haveq(93436) or completedq(93436)
step
talk Elder Doru##254827
turnin Hex the Innocent, Disrupt the Guilty##93436 |goto Atal Aman M/1 45.92,47.12
|only if haveq(93436) or completedq(93436)
step
talk Torundo the Grizzled##254783
turnin Four Instigators##93435 |goto Atal Aman M/1 46.01,47.49
accept In Their Own Blood##93437 |goto Atal Aman M/1 46.01,47.49
|only if haveq(93435) or completedq(93435)
step
Inhabit a Loa Avatar |q 93437/1 |goto Atal Aman M/1 34.45,65.25
|tip Use the {o}Surrender to the Flame{} button ability.
|tip Inside the building.
|only if haveq(93437) or completedq(93437)
step
kill Raiding Caster##254734, Raiding Caster##255883, Raiding Rogue##254731, Raiding Rogue##255882, Raiding Warrior##254534, Raiding Warrior##255881
|tip All around Atal Aman.
Slay #25# Echoes |q 93437/2 |goto Atal Aman M/1 34.68,47.21
|only if haveq(93437) or completedq(93437)
step
kill Raid Leader##254902 |q 93437/4 |goto Atal Aman M/1 63.89,47.28
|tip Use the {o}Time Flies{} ability to travel.
|only if haveq(93437) or completedq(93437)
step
Release the Loa Avatar |outvehicle |q 93437
|tip Click the arrow to leave the vehicle.
|only if haveq(93437) or completedq(93437)
step
talk Torundo the Grizzled##254783
turnin In Their Own Blood##93437 |goto Atal Aman M/1 46.00,47.49
|only if haveq(93437) or completedq(93437)
step
talk Vun'zarah##244591
|tip {o}Ground floor{} inside the building.
accept Dirty Deeps##91833 |goto Zul Aman M/0 38.57,22.40
|only if level >= 90
step
talk Dak'zor##248838
turnin Dirty Deeps##91833 |goto Zul Aman M/0 44.88,36.52
accept Send Dem Home##91835 |goto Zul Aman M/0 44.88,36.52
accept Respect De Totem##91836 |goto Zul Aman M/0 44.88,36.52
|only if level >= 90
step
talk Tan'zin##248787
accept De Vile Diminished##91838 |goto Zul Aman M/0 44.87,36.56
|only if level >= 90
stickystart "Free_Witherbark_Prisoners"
stickystart "Collect_Totem_Remnants"
step
click Vile Orb
|tip Inside the small cave.
Destroy the Vile Orb |q 91838/1 |goto Zul Aman M/0 46.54,37.53 |count 1 hidden
|only if level >= 90
step
click Vile Orb
Destroy the Vile Orb |q 91838/1 |goto Zul Aman M/0 46.07,39.30 |count 2 hidden
|only if level >= 90
step
click Vile Orb
Destroy the Vile Orb |q 91838/1 |goto Zul Aman M/0 47.18,39.85 |count 3 hidden
|only if level >= 90
step
click Vile Orb
Destroy the Vile Orb |q 91838/1 |goto Zul Aman M/0 46.38,40.71 |count 4 hidden
|only if level >= 90
step
click Vile Orb
Destroy the Vile Orb |q 91838/1 |goto Zul Aman M/0 45.52,42.24 |count 5 hidden
|only if level >= 90
step
label "Free_Witherbark_Prisoners"
clicknpc Witherbark Prisoner##248785+
|tip Friendly trolls.
Free #8# Witherbark Prisoners |q 91835/1 |goto Zul Aman M/0 45.98,40.14
|only if level >= 90
step
label "Collect_Totem_Remnants"
kill Hex Guardian##248756, Vile Boneguard##248773, Vile Boneservant##248782, Vile Pathcarver##248803, Vile Tormentor##248771, Vilebranch Souleater##248768, Wild Guardian##248775
|tip Use the {o}Shadra's Gift{} button ability.
collect 40 Totem Remnant##254430 |q 91836/1 |goto Zul Aman M/0 46.47,40.19
|only if level >= 90
step
_Next to you:_
talk Dak'zor##249106 |usename Dak'zor##248838
turnin Send Dem Home##91835
turnin Respect De Totem##91836
|only if level >= 90
step
talk Tan'zin##248787
turnin De Vile Diminished##91838 |goto Zul Aman M/0 47.16,41.23
|only if level >= 90
step
_Next to you:_
talk Dak'zor##249106 |usename Dak'zor##248838
accept One Will Not Rise##91840
|only if level >= 90
step
kill Knife Priestess Hezzia##248796
Watch the dialogue
collect Knife Priestess Hezzia's Head##250190 |q 91840/1 |goto Zul Aman M/0 48.41,43.09
|only if level >= 90
step
talk Vun'zarah##244591
|tip {o}Ground floor{} inside the building.
turnin One Will Not Rise##91840 |goto Zul Aman M/0 38.57,22.40
|only if level >= 90
step
talk Dak'zor##248838
|tip {o}Ground floor{} inside the building.
accept Sacrifice Denied##91839 |goto Zul Aman M/0 38.53,22.33
|only if level >= 90
step
talk Bin'zin##253326
Select _"<Speak with Bin'zin.>"_ |gossip 136456
Check on Bin'zin |q 91839/1 |goto Zul Aman M/0 37.31,25.09
|only if level >= 90
step
talk Bin'zin##253326
turnin Sacrifice Denied##91839 |goto Zul Aman M/0 37.31,25.09
|only if level >= 90
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Reports Returned##91087 |goto Silvermoon City M/0 45.44,70.33
|only if haveq(91087) or completedq(91087)
step
|next "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Midnight Intro & Campaign (Full Zone)" |only if level < 90
|next "Leveling Guides\\Midnight (80-90)\\The War of Light and Shadow Campaign" |only if level >= 90
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Harandar (Full Zone)",{
condition_valid=function() return (level >= 83 and completedq(86930)) or achieved(42045) end,
condition_valid_msg="You must earn the Midnight achievement by completing the story only campaign and hitting 90 once or reach at least level 83 and complete the Harandar campaign quest To Sow the Seed before you can access Sojourner quests.",
},[[
step
Click the Complete Quest Box
turnin Adventuring in Midnight##94993
|only if readyq(94993)
step
talk Orweyna##236704
turnin Harandar##89402 |goto Eversong Woods M/0 45.40,45.52 |only if haveq(89402) or completedq(89402)
accept The Root Cause##86899 |goto Eversong Woods M/0 45.40,45.52
step
talk Orweyna##236704
Select _"I'm ready. Let's go!"_ |gossip 135559
Talk to Orweyna |q 86899/1 |goto Eversong Woods M/0 45.40,45.52
step
Watch the dialogue
click Mysterious Rootway
Take the Portal to Harandar |q 86899/2 |goto Eversong Woods M/0 45.14,46.93
step
talk Orweyna##237480
turnin The Root Cause##86899 |goto Harandar/0 75.64,53.58
accept To Har'athir##86900 |goto Harandar/0 75.64,53.58
step
Follow Orweyna |q 86900/1 |goto Harandar/0 75.38,51.75
step
talk Ku'paal##237209
Select _"We are friends of Orweyna and we are here to help."_ |gossip 132537
Talk to Ku'paal |q 86900/2 |goto Harandar/0 75.38,51.75
step
talk Oorla##237866
Select _"Ku'paal and Orweyna sent me. It's safe to return to the village."_ |gossip 133721
Talk to Oorla |q 86900/3 |goto Harandar/0 76.18,50.26
step
talk Danul##237865
|tip It may take a moment for him to appear on the tree.
Select _"Ku'paal and Orweyna sent me. It's safe to return to the village."_ |gossip 133726
Talk to Danul |q 86900/4 |goto Harandar/0 74.43,52.44
step
talk Orweyna##237210
Select _"<Take in the view.>"_ |gossip 131842
Talk to Orweyna |q 86900/5 |goto Harandar/0 74.03,51.07
step
talk Halduron Brightwing##237343
Select _"Let's head down."_ |gossip 133774
Check on Halduron |q 86900/6 |goto Harandar/0 73.98,50.90
step
talk Zur'ashar Shay'neia##252871
accept Dusk Among Pigments##92694 |goto Harandar/0 70.53,51.19
step
talk Ney'tar##253312
accept Feeding the Buds##92865 |goto Harandar/0 69.54,50.56
accept Drift Them Away##92864 |goto Harandar/0 69.54,50.56
step
talk Ruia##239525
turnin To Har'athir##86900 |goto Harandar/0 70.03,51.54
step
talk Orweyna##237483
accept The Rift and the Den##86901 |goto Harandar/0 69.98,51.54
step
talk Nae'thali##248036
fpath Har'athir |goto Harandar/0 69.36,52.60
step
talk Ketan##253390
accept A Hunter's Plight##92882 |goto Harandar/0 69.42,52.84
step
talk Motta##254903
accept Be Grudge You##90615 |goto Harandar/0 70.33,52.90
step
talk Akazi##253392
|tip Inside the building.
Select _"<Ask about mentoring Ketan.>"_ |gossip 136773
Select _"<Accept the task.>"_ |gossip 136774
Talk to Elder Akazi About the Ka'dani Trials |q 92882/1 |goto Harandar/0 70.47,50.71
step
talk Akazi##253392
|tip Inside the building.
turnin A Hunter's Plight##92882 |goto Harandar/0 70.47,50.71
accept A Hunter's Duty##92883 |goto Harandar/0 70.47,50.71
step
talk Boletus##243226
|tip Inside the tunnel.
turnin Be Grudge You##90615 |goto Harandar/0 71.78,64.06
accept You Strong?##90616 |goto Harandar/0 71.78,64.06
step
kill Battling Moldstalker##243772, Battling Mycomancer##243771, Battling Rotseeker##243773, Battling Sporecaller##243774, Kragthar##243779, Malgar the Uprooter##248986, Opportunistic Sporeglider##243780
Demonstrate Your Abilities |q 90616/1 |goto Harandar/0 71.55,65.95
step
talk Boletus##243226
|tip Inside the tunnel.
turnin You Strong?##90616 |goto Harandar/0 71.78,64.06
accept A Few Fun Guys##90617 |goto Harandar/0 71.78,64.06
step
talk Tuktuk##243181
Select _"<Ask if they want to join your new team.>"_ |gossip 135600
Find the Recruit |q 90617/2 |goto Harandar/0 71.44,64.88 |count 1 hidden
step
talk Ziny##243180
Select _"<Ask if they want to join your new team.>"_ |gossip 135599
Find the Recruit |q 90617/2 |goto Harandar/0 70.71,66.00 |count 2 hidden
step
talk Brakko##243178
Select _"<Ask if they want to join your new team.>"_ |gossip 135601
Find the Recruit |q 90617/2 |goto Harandar/0 70.90,66.57 |count 3 hidden
step
talk Boletus##243226
|tip Inside the tunnel.
turnin A Few Fun Guys##90617 |goto Harandar/0 71.78,64.06
accept What Doesn't Kill Them##90619 |goto Harandar/0 71.78,64.06
step
talk Brakko##246208
Select _"<Ask your new teammate to spar.>"_ |gossip 135664
kill Brakko##246208
Spar with Brakko |q 90619/1 |goto Harandar/0 72.13,62.87
step
talk Ziny##246211
Select _"<Ask your new teammate to spar.>"_ |gossip 135666
kill Ziny##246211
Spar with Ziny |q 90619/2 |goto Harandar/0 72.07,62.54
step
talk Tuktuk##246210
Select _"<Ask your new teammate to spar.>"_ |gossip 135663
kill Tuktuk##246210
Spar with Tuktuk |q 90619/3 |goto Harandar/0 71.91,62.65
step
click Brakko##246208
turnin What Doesn't Kill Them##90619 |goto Harandar/0 72.13,62.87
accept We Ready Now##91450 |goto Harandar/0 72.13,62.87
step
talk Boletus##243226
|tip Inside the tunnel.
turnin We Ready Now##91450 |goto Harandar/0 71.78,64.06
step
Watch the dialogue
talk Tuktuk##251715
|tip Inside the tunnel.
accept The Most Important Thing##91270 |goto Harandar/0 71.80,63.93
step
talk Tuktuk##251715
|tip Inside the tunnel.
Select _"Do you have any good ideas we could use for a team name?"_ |gossip 136991
Consult Tuktuk |q 91270/3 |goto Harandar/0 71.80,63.93
step
talk Ziny##251723
|tip Inside the tunnel.
Select _"Do you have any good ideas we could use for a team name?"_ |gossip 136989
Consult Ziny |q 91270/2 |goto Harandar/0 71.83,63.99
step
talk Brakko##257287
|tip Inside the tunnel.
Select _"Do you have any good ideas we could use for a team name?"_ |gossip 136986
Consult Brakko |q 91270/1 |goto Harandar/0 71.75,63.96
step
talk Tuktuk##251715
|tip Inside the tunnel.
Select _"I'm ready to choose a team name, Tuktuk."_ |gossip 136990
Choose the Team Name |q 91270/4 |goto Harandar/0 71.80,63.93
step
talk Tuktuk##251715
|tip Inside the tunnel.
turnin The Most Important Thing##91270 |goto Harandar/0 71.80,63.93
step
talk Boletus##243226
|tip Inside the tunnel.
accept To the Ring##90620 |goto Harandar/0 71.78,64.06
step
Kill the enemies that attack in waves
Fight in the Grudge Pit |q 90620/3 |goto Harandar/0 71.49,65.97
step
Watch the dialogue
Be Disqualified |q 90620/4 |goto Harandar/0 71.49,65.97
step
talk Brakko##247245
|tip Inside the tunnel.
turnin To the Ring##90620 |goto Harandar/0 71.75,63.96
step
talk Boletus##243226
|tip Inside the tunnel.
accept Tiny Heroes' Journeys##90621 |goto Harandar/0 71.78,64.06
step
talk Brakko##247245
|tip Inside the tunnel.
accept Mushrooming Courage##92616 |goto Harandar/0 71.75,63.96
step
talk Tuktuk##251715
|tip Inside the tunnel.
accept Mushrooming Confidence##92618 |goto Harandar/0 71.80,63.94
step
talk Ziny##251723
|tip Inside the tunnel.
accept Mushrooming Resilience##92617 |goto Harandar/0 71.83,63.98
stickystart "Slay_Sporegliders_With_Brakko"
stickystart "Slay_Scary_Enemies_With_Ziny"
step
Find Tuktuk |q 92618/1 |goto Harandar/0 67.66,67.37
step
talk Tuktuk##247252
Select _"No one starts ready. That's why we train."_ |gossip 136164
Select _"You're right, Tuktuk won't be good enough, if Tukt... if you never try."_ |gossip 136163
Select _"If you stay, you'll get soggy. But we're friends, win or lose."_ |gossip 136162
Face #3# Feelings with Tuktuk |q 92618/2 |goto Harandar/0 67.66,67.37
step
Watch the dialogue
Convince Tuktuk to Return |q 92618/3 |goto Harandar/0 67.66,67.37
step
talk Tuktuk##247252
turnin Mushrooming Confidence##92618 |goto Harandar/0 67.66,67.37
step
Watch the dialogue
Assist Tuktuk |q 90621/4 |goto Harandar/0 67.66,67.37
step
label "Slay_Sporegliders_With_Brakko"
kill Foraging Sporeglider##246162+
|tip Flying higher.
Slay #4# Sporegliders with Brakko |q 92616/1 |goto Harandar/0 69.05,67.10
step
label "Slay_Scary_Enemies_With_Ziny"
kill Decomposing Shambler##254221, Grazing Root Drifter##254215, Scavenging Stalker##254203
|tip On the ground.
Slay #4# Scary Enemies with Ziny |q 92617/1 |goto Harandar/0 69.30,64.15
step
_Next to you:_
talk Brakko##251524 |usename Brakko##247245
turnin Mushrooming Courage##92616
step
Watch the dialogue
Assist Brakko |q 90621/2
step
_Next to you:_
talk Ziny##251723
turnin Mushrooming Resilience##92617
step
Watch the dialogue
Assist Ziny |q 90621/3
step
talk Boletus##243226
|tip Inside the tunnel.
turnin Tiny Heroes' Journeys##90621 |goto Harandar/0 71.78,64.06
accept Not-yet Defeated Champions##90622 |goto Harandar/0 71.78,64.06
step
Enter the Grudge Pit |q 90622/3 |goto Harandar/0 71.41,65.89
|tip You will be attacked.
step
Kill the enemies that attack
Defeat the #5# Glow Guard |q 90622/4 |goto Harandar/0 71.41,65.89
step
talk Boletus##243226
|tip Inside the tunnel.
turnin Not-yet Defeated Champions##90622 |goto Harandar/0 71.78,64.06
step
talk Orn'shan##252872
turnin Dusk Among Pigments##92694 |goto Harandar/0 74.04,53.07
accept The Stroke of Storms##92695 |goto Harandar/0 74.04,53.07
step
click Ancient Visionstone
Use the Visionstone to Enter the Painting |q 92695/1 |goto Harandar/0 72.29,55.69
step
kill Paint-Crazed Firefly##252994, Paint-Crazed Lasher##253000, Paint-Crazed Potatoad##252997, Paint-Crazed Skipper##252998, Paint-Crazed Thornmaw##255847
click Paint Globule+
|tip Small yellow puddles.
Clean Up the Painting |q 92695/2 |goto Harandar/0 72.60,54.23
step
click Ancient Visionstone
Use the Visonstone to Return to Your Body |q 92695/3 |goto Harandar/0 72.29,55.69
step
talk Orn'shan##252872
turnin The Stroke of Storms##92695 |goto Harandar/0 72.38,55.70
accept Colors Reborn Anew##92696 |goto Harandar/0 72.38,55.70
stickystart "Collect_Mushroom_Pigment"
step
click Withered Plant+
|tip Plants with yellow flowers.
|tip Run away from them.
Uproot #6# Plants |q 92696/2 |goto Harandar/0 72.40,57.67
step
label "Collect_Mushroom_Pigment"
kill Invasive Lashroom##253001, Noxious Lashroom##237037
collect 100 Mushroom Pigment##258571 |q 92696/1 |goto Harandar/0 72.40,57.67
step
talk Orn'shan##252872
turnin Colors Reborn Anew##92696 |goto Harandar/0 72.38,55.69
accept Hues of Tomorrow##92697 |goto Harandar/0 72.38,55.69
step
click Cauldron of Color##252874
|tip Up on the cliff.
Begin Painting |havebuff Painting##1257125 |goto Harandar/0 74.01,53.20 |q 92697
step
Create the Paintings |q 92697/1
|tip Connect the dots.
|tip Don't cross the path you create.
step
talk Orn'shan##252872
turnin Hues of Tomorrow##92697 |goto Harandar/0 74.01,53.15
stickystart "Collect_Grovecrawler_Fangs"
stickystart "Collect_Sporegliders_Tail_Spores"
step
kill Violet Chloroceros##253316+
collect Chloroceros Bone##255259 |q 92883/1 |goto Harandar/0 69.93,43.18
collect 4 Chloroceros Bud##255577 |q 92865/1 |goto Harandar/0 69.93,43.18
step
label "Collect_Grovecrawler_Fangs"
kill Slithering Grovecrawler##253397+
|tip Armored worms.
collect 4 Grovecrawler Fang##255258 |q 92883/2 |goto Harandar/0 70.06,42.98
step
label "Collect_Sporegliders_Tail_Spores"
click Sporeglider's Tail Spore+
|tip Small brown tails.
collect 4 Sporeglider's Tail Spore##255261 |q 92883/4 |goto Harandar/0 70.94,42.27
step
kill Spiteful Lasher##253398+
collect 4 Lasher Vine##255260 |q 92883/3 |goto Harandar/0 72.04,37.38
stickystart "Kill_Cascade_Drifters"
step
click Drifter Egg Sack+
|tip Large blue eggs.
|tip In the water.
Remove #5# Drifter Egg Sacks |q 92864/2 |goto Harandar/0 69.39,38.51
step
label "Kill_Cascade_Drifters"
kill 8 Cascade Drifter##253317 |q 92864/1 |goto Harandar/0 69.39,38.51
step
Feed Grumpy |q 92865/2 |goto Harandar/0 69.77,50.51
|tip Use the {o}Feed{} button ability on {o}Grumpy{}.
step
Feed T'omm |q 92865/4 |goto Harandar/0 69.51,50.49
|tip Use the {o}Feed{} button ability on {o}T'omm{}.
step
Feed N'ala |q 92865/5 |goto Harandar/0 69.38,50.62
|tip Use the {o}Feed{} button ability on {o}N'ala{}.
|tip Walks around.
step
Feed F'liks |q 92865/3 |goto Harandar/0 69.63,50.57
|tip Use the {o}Feed{} button ability on {o}F'liks{}.
|tip Walks around.
step
talk Ney'tar##253312
turnin Feeding the Buds##92865 |goto Harandar/0 69.54,50.57
turnin Drift Them Away##92864 |goto Harandar/0 69.54,50.57
accept Re-Hydra-ted##92866 |goto Harandar/0 69.54,50.57
step
talk N'ala##254622
|tip Walks around.
Select _"<Pick up the budling.>"_ |gossip 137321
Pick Up the Budling |q 92866/1 |goto Harandar/0 69.38,50.62 |count 1 hidden
step
talk T'omm##254621
Select _"<Pick up the budling.>"_ |gossip 137325
Pick Up the Budling |q 92866/1 |goto Harandar/0 69.51,50.50 |count 2 hidden
step
talk F'liks##254620
|tip Walks around.
Select _"<Pick up the budling.>"_ |gossip 137324
Pick Up the Budling |q 92866/1 |goto Harandar/0 69.63,50.57 |count 3 hidden
step
talk Grumpy##253313
Select _"<Pick up the budling.>"_ |gossip 137323
Pick Up the Budling |q 92866/1 |goto Harandar/0 69.78,50.51 |count 4 hidden
step
clicknpc T'omm##254659
|tip You will be attacked.
Release T'omm |q 92866/4 |goto Harandar/0 69.92,45.44
step
clicknpc Grumpy##254661
|tip You will be attacked.
Release Grumpy |q 92866/2 |goto Harandar/0 68.97,42.09
step
clicknpc F'liks##254660
|tip You will be attacked.
Release F'lix |q 92866/3 |goto Harandar/0 71.27,41.11
step
clicknpc N'ala##254658
|tip You will be attacked.
Release N'ala |q 92866/5 |goto Harandar/0 71.19,40.33
step
talk Ney'tar##253312
turnin Re-Hydra-ted##92866 |goto Harandar/0 69.54,50.57
step
talk Ketan##253433
turnin A Hunter's Duty##92883 |goto Harandar/0 69.98,52.88
accept A Hunter's Weapon##92884 |goto Harandar/0 69.98,52.88
step
click Chloroceros Bone
Add the Chloroceros' Bone to the Anvil |q 92884/1 |goto Harandar/0 70.01,52.70
step
click Sporeglider's Tail Spore
Use the Sporeglider's Tail Spore |q 92884/2 |goto Harandar/0 70.01,52.67
step
click Ka'dani Spear
Acquire the Ka'dani Spear |q 92884/3 |goto Harandar/0 69.95,52.79
step
talk Akazi##253392
|tip Inside the building.
Select _"<Present the Ka'dani spear.>"_ |gossip 136842
Watch the dialogue
Present the Ka'dani Spear to Elder Akazi |q 92884/4 |goto Harandar/0 70.47,50.71
step
talk Akazi##253392
|tip Inside the building.
turnin A Hunter's Weapon##92884 |goto Harandar/0 70.47,50.71
accept A Hunter's Prey##92885 |goto Harandar/0 70.47,50.71
step
talk Ketan##253443
Select _"I am ready!"_ |gossip 136855
Find Ketan Outside of Har'athir |q 92885/1 |goto Harandar/0 69.01,54.94
step
kill Radooni##253400 |q 92885/2 |goto Harandar/0 68.58,54.05
step
talk Akazi##253392
|tip Inside the building.
turnin A Hunter's Prey##92885 |goto Harandar/0 70.47,50.71
step
Follow Orweyna to the Den |q 86901/2 |goto Harandar/0 54.79,51.21
step
talk Halduron Brightwing##237345
turnin The Rift and the Den##86901 |goto Harandar/0 54.79,51.21
accept The Council Assembles##86929 |goto Harandar/0 54.79,51.21
step
talk Halduron Brightwing##237345
Select _"Let's go."_ |gossip 133792
Talk to Halduron |q 86929/1 |goto Harandar/0 54.79,51.21
step
talk Hagar##237332
|tip Inside the cave.
turnin The Council Assembles##86929 |goto Harandar/2 43.77,54.29
accept The Den of Echoes##86907 |goto Harandar/2 43.77,54.29
step
talk Kaleo##256313
|tip Outside above the cave.
accept Har'kuai, Village of Rain##93771 |goto Harandar/0 50.97,50.92
step
talk Monte Gazlowe##242593
accept Go Get Orweyna!##90533 |goto Harandar/0 47.08,45.79
step
talk Shao'mal##247640
accept A Game of Silence and Shadow##91550 |goto Harandar/0 48.76,44.31
step
talk Shao'mal##247640
Select _"<Begin the game.>"_ |gossip 134812
Talk to Shao'mal |q 91550/1 |goto Harandar/0 48.76,44.31
step
clicknpc Wenalo##247653
Find the Child |q 91550/3 |goto Harandar/0 49.54,43.10 |count 1 hidden
step
clicknpc Ilomai##247652
Find the Child |q 91550/3 |goto Harandar/0 50.38,40.79 |count 2 hidden
step
clicknpc Shao'mal##247651
|tip Middle layer of the huge mushroom.
Find the Child |q 91550/3 |goto Harandar/0 51.37,41.53 |count 3 hidden
step
clicknpc Nayeli##247654
Find the Child |q 91550/3 |goto Harandar/0 51.72,39.54 |count 4 hidden
step
talk Nayeli##247658
turnin A Game of Silence and Shadow##91550 |goto Harandar/0 53.90,41.26
accept De-nest-stration##91551 |goto Harandar/0 53.90,41.26
accept Feathered Fury##91552 |goto Harandar/0 53.90,41.26
stickystart "Slay_Petalwings"
step
click Nest+
|tip Large bird nests.
|tip You may be attacked.
Destroy #5# Nests |q 91551/1 |goto Harandar/0 55.56,45.75
step
label "Slay_Petalwings"
kill Pernicious Petalwing##249006, Territorial Petalwing##247772
|tip Birds.
Slay #8# Petalwings |q 91552/1 |goto Harandar/0 55.56,45.75
step
talk Nayeli##247736
turnin De-nest-stration##91551 |goto Harandar/0 57.30,49.02
turnin Feathered Fury##91552 |goto Harandar/0 57.30,49.02
accept Haranir Never Say Die!##91553 |goto Harandar/0 57.30,49.02
step
kill Behemoth Petalwing##247665 |q 91553/1 |goto Harandar/0 57.59,49.63
|tip Flies around.
step
talk Shao'mal##248574
turnin Haranir Never Say Die!##91553 |goto Harandar/0 58.44,49.14
step
talk Orweyna##242592
|tip Up on the cliff.
Select _"<Explain Gazlowe's predicament to Orweyna.>"_ |gossip 133239
Speak to Orweyna in the Den |q 90533/1 |goto Harandar/0 54.18,55.29
step
talk Imhayo##242596
buy Handcrafted Plush##241125 |n
Acquire a Handcrafted Plush for Nahuut |q 90533/2 |goto Harandar/0 53.90,55.22
step
clicknpc Nahuut##242594
Offer the Handcrafted Plush to Nahuut |q 90533/3 |goto Harandar/0 47.07,45.84
step
talk Orweyna##242592
turnin Go Get Orweyna!##90533 |goto Harandar/0 47.17,45.78
accept The Home of the Haranir##90534 |goto Harandar/0 47.17,45.78
step
click Monte Gazlowe##242693
Press the Button on Gazlowe's Shredder |q 90534/1 |goto Harandar/0 51.82,50.47
step
talk Ravi##256350
|tip Inside the building.
accept Har'mara, Village of Balance##93775 |goto Harandar/0 50.74,55.74
step
click Weapon Rack
|tip Upstairs inside the large cave.
Pick Up Hand Claws |q 90534/2 |goto Harandar/2 45.83,79.69
step
clicknpc Tasty Mushroom Soup##242935
|tip Inside the large cave.
Try the Tasty Mushroom Soup |q 90534/3 |goto Harandar/2 65.94,59.83
step
talk Orna##256245
|tip Inside the large cave.
accept Har'athir, Village of Memory##93745 |goto Harandar/2 71.22,54.18
step
talk Monte Gazlowe##242881
|tip Upstairs inside the large cave.
turnin The Home of the Haranir##90534 |goto Harandar/2 47.98,22.63
step
talk Orweyna##242882
|tip Upstairs inside the large cave.
accept Leave Your Mark##90535 |goto Harandar/2 48.03,22.33
step
click Paint Bowl
|tip Upstairs inside the large cave.
Apply the Paint |q 90535/1 |goto Harandar/2 48.06,23.23
step
click Leave Your Mark
|tip Sparkles on the wall.
|tip Upstairs inside the large cave.
Leave a Paint Mark |q 90535/2 |goto Harandar/2 48.27,22.94
step
talk Orweyna##242882
|tip Upstairs inside the large cave.
turnin Leave Your Mark##90535 |goto Harandar/2 48.03,22.33
step
talk Hagar##237567
turnin The Den of Echoes##86907 |goto Harandar/0 38.84,46.90
accept Echoes and Memories##86911 |goto Harandar/0 38.84,46.90
step
talk Zur'ashar Kassameh##237837
Select _"I am ready to begin the trials."_ |gossip 131932
Talk to Zur'ashar Kassameh |q 86911/2 |goto Harandar/0 37.49,47.68
step
click Ancient Visionstone
Activate the Visionstone |q 86911/3 |goto Harandar/0 37.57,47.70
step
clicknpc Obscuring Bush##244629+
|tip Larger orange bushes.
|tip Use them to {o}hide from elite enemies{}.
click Iceberry Bush+
|tip Small orange bushes
collect 6 Iceberries##239014 |q 86911/4 |goto Harandar/0 36.40,45.96
step
talk Zur'ashar Kassameh##239650
turnin Echoes and Memories##86911 |goto Harandar/0 36.11,44.25
accept Echo of the Hunt##90094 |goto Harandar/0 36.11,44.25
step
click Ancient Visionstone
Activate the Second Visionstone |q 90094/1 |goto Harandar/0 36.21,44.15
stickystart "Kill_Panquill_Reminiscences"
step
kill 4 Razorquill Remembrance##239668 |q 90094/2 |goto Harandar/0 35.60,46.59
|tip Smaller beasts with wings.
step
label "Kill_Panquill_Reminiscences"
kill 4 Pangquill Reminiscence##239744 |q 90094/3 |goto Harandar/0 35.60,46.59
|tip Larger beasts without wings.
step
talk Zur'ashar Kassameh##239795
turnin Echo of the Hunt##90094 |goto Harandar/0 34.86,42.80
accept Echo of the Call##90095 |goto Harandar/0 34.86,42.80
step
click Ancient Visionstone
Activate the Third Visionstone |q 90095/1 |goto Harandar/0 34.85,42.70
step
kill Observer Talos##240749 |q 90095/2 |goto Harandar/0 34.24,43.68
step
talk Zur'ashar Kassameh##243884
turnin Echo of the Call##90095 |goto Harandar/0 33.93,44.82
accept Down the Rootways##86912 |goto Harandar/0 33.93,44.82
step
Enter the Gulf of Memory |q 86912/1 |goto Harandar/0 36.71,49.74
|tip Drop down and enter the cave.
|tip Walk into the wall of smoke.
step
click Fragment of Revelation
|tip In the final boss treasure room.
|tip Complete the delve.
collect Fragment of Revelation |q 86912/2
step
Leave the Delve |scenarioend |q 86912
step
talk Orweyna##253343
Select _"<Hand Orweyna the Fragment of Revelation.>"_ |gossip 136444
Speak to Orweyna |q 86912/3 |goto Harandar/0 34.16,43.11
step
talk Hagar##240839
|tip {o}Top floor{} inside the building.
turnin Down the Rootways##86912 |goto Harandar/0 34.81,25.03
accept A Hut in Har'mara##86913 |goto Harandar/0 34.81,25.03
step
talk Orweyna##237786
|tip {o}Ground floor{} inside the building.
turnin A Hut in Har'mara##86913 |goto Harandar/0 34.89,24.93
step
talk Hagar##237572
|tip {o}Ground floor{} inside the building.
turnin Har'mara, Village of Balance##93775 |goto Harandar/0 34.88,24.97
accept Tending to Har'mara##86914 |goto Harandar/0 34.88,24.97
accept The Former Rootwarden##91872 |goto Harandar/0 34.88,24.97
step
talk Halduron Brightwing##237787
|tip {o}Ground floor{} inside the building.
accept The Traveling Flowers##86956 |goto Harandar/0 34.88,25.08
step
talk Sa'neya##247997
fpath Har'mara |goto Harandar/0 35.53,23.81
stickystart "Complete_Tasks"
step
talk Eonka##240225
Select _"<Ask if they have lightbloom in their village.>"_ |gossip 132714
Question Eonka |q 86956/3 |goto Harandar/0 34.93,27.38
step
talk Keem##243930
Select _"<Ask if they have lightbloom in their village.>"_ |gossip 133684
Question Keem |q 86956/4 |goto Harandar/0 35.72,27.52
step
talk Rizam##240239
Select _"<Ask if they have lightbloom in their village.>"_ |gossip 132927
Question Rizam |q 86956/1 |goto Harandar/0 36.97,25.76
step
talk Teetem##240238
Select _"<Ask if they have lightbloom in their village.>"_ |gossip 132713
Question Teetem |q 86956/2 |goto Harandar/0 36.85,24.04
step
label "Complete_Tasks"
clicknpc Hungry Rotling##237623+
|tip Small mushroom people.
click Various Objects
|tip You may be attacked.
Complete Tasks |q 86914/1 |goto Harandar/0 35.72,25.28
step
talk Halduron Brightwing##237787
|tip {o}Ground floor{} inside the building.
turnin The Traveling Flowers##86956 |goto Harandar/0 34.88,25.08
step
talk Hagar##237572
|tip {o}Ground floor{} inside the building.
turnin Tending to Har'mara##86914 |goto Harandar/0 34.88,24.97
accept Koozat's Trample##86910 |goto Harandar/0 34.88,24.97
step
Follow Orweyna |q 86910/1 |goto Harandar/0 35.67,25.33
step
talk Orweyna##240533
turnin Koozat's Trample##86910 |goto Harandar/0 35.67,25.33
accept Halting Harm in Har'mara##86973 |goto Harandar/0 35.67,25.33
accept Culling the Spread##86942 |goto Harandar/0 35.67,25.33
step
talk Halduron Brightwing##240630
accept Burning Bitterblooms##89034 |goto Harandar/0 35.69,25.20
stickystart "Burn_Bitterblooms"
stickystart "Slay_Lightbloom_Rutaani"
step
kill Koozat##237737 |q 86942/1 |goto Harandar/0 35.72,27.56
kill Keem##237654 |q 86942/2 |goto Harandar/0 35.72,27.56
step
kill Rizam##240388 |q 86942/3 |goto Harandar/0 36.90,25.65
step
kill Teetem##240389 |q 86942/4 |goto Harandar/0 36.89,24.09
|tip Walks around.
step
label "Burn_Bitterblooms"
click Light-infected Bitterbloom+
|tip Large yellow flowers.
Burn #6# Bitterblooms |q 89034/1 |goto Harandar/0 35.91,25.33
step
label "Slay_Lightbloom_Rutaani"
kill Lightbloom Grovewarden##240344, Lightbloom Grovewarden##240457, Lightbloom Sap Weaver##240343, Lightbloom Sap Weaver##240656, Lightbloom Thornguard##240342
Slay #8# Lightbloom Rutaani |q 86973/1 |goto Harandar/0 36.20,25.40
step
talk Halduron Brightwing##240630
turnin Burning Bitterblooms##89034 |goto Harandar/0 35.69,25.20
step
talk Orweyna##240533
turnin Halting Harm in Har'mara##86973 |goto Harandar/0 35.67,25.33
turnin Culling the Spread##86942 |goto Harandar/0 35.67,25.33
accept Seeds of the Rift##86944 |goto Harandar/0 35.67,25.33
step
talk Eonka##244126
|tip {o}Top floor{} inside the building.
Select _"Are you still feeling well?"_ |gossip 133712
Question Eonka Again |q 86944/1 |goto Harandar/0 34.86,25.12
step
click Glistening Seed Bag
|tip {o}Top floor{} inside the building.
collect Glistening Seed Bag##258623 |q 86944/2 |goto Harandar/0 34.85,25.14
step
talk Halduron Brightwing##237787
|tip {o}Ground floor{} inside the building.
Select _"<Hand Halduron the glimmering bag of seeds.>"_ |gossip 138702
Give the Seed to Halduron |q 86944/3 |goto Harandar/0 34.88,25.08
step
talk Orweyna##237786
|tip {o}Ground floor{} inside the building.
turnin Seeds of the Rift##86944 |goto Harandar/0 34.88,24.93
accept To Sow the Seed##86930 |goto Harandar/0 34.88,24.93
step
talk Ney'leia##242650
accept Late Bloomers##90537 |goto Harandar/0 36.96,25.98
step
talk Yu'relen##247936
accept Fresh from the Garden##91585 |goto Harandar/0 40.87,23.18
accept Soil-based Alternatives##91586 |goto Harandar/0 40.87,23.18
accept Carcass Cuisine##91587 |goto Harandar/0 40.87,23.18
stickystart "Collect_Root_Drift_Jelly"
stickystart "Collect_Frillfish_Fillets"
stickystart "Collect_Nutrient_Rich_Soil"
step
kill Sporeglider Bloomterror##248598 |q 91587/1 |goto Harandar/0 39.03,22.61
|tip Flies around.
step
collect Corpse Rind##246942 |q 91587/2 |goto Harandar/0 39.03,22.61
|tip Loot it from the Sporeglider Bloomterror.
step
talk Yu'relen##247936
turnin Carcass Cuisine##91587 |goto Harandar/0 40.87,23.18
step
click Yu'relen's Elixir
Drink Yu'relen's Elixir |q 91585/3 |goto Harandar/0 40.83,23.12
step
label "Collect_Root_Drift_Jelly"
kill Delectable Root Drifter##240113+
|tip Floating jellyfish.
|tip Above the water and around the pond.
collect 4 Root Drift Jelly##246924 |q 91585/2 |goto Harandar/0 40.27,24.56
step
label "Collect_Frillfish_Fillets"
kill Frothing Frillfish##240120+
collect 6 Frillfish Fillet##246923 |q 91585/1 |goto Harandar/0 40.27,24.56
step
label "Collect_Nutrient_Rich_Soil"
click Nutrient Rich Dirt+
|tip Brown mounds.
collect 6 Nutrient Rich Soil##246926 |q 91586/1 |goto Harandar/0 40.20,23.92
step
talk Yu'relen##247936
turnin Fresh from the Garden##91585 |goto Harandar/0 40.87,23.18
turnin Soil-based Alternatives##91586 |goto Harandar/0 40.87,23.18
accept Harandar's Kitchen##91588 |goto Harandar/0 40.87,23.18
step
click Campfire
|tip Nearby enemies will attack.
Cook the Food Over the Campfire |q 91588/3 |goto Harandar/0 41.05,23.53
step
click Fillet Knife
Fillet the Fish |q 91588/2 |goto Harandar/0 40.18,22.66
step
click Wash Bed
|tip Nearby enemies will attack.
Wash the Salad |q 91588/1 |goto Harandar/0 39.72,21.92
step
talk Yu'relen##247936
turnin Harandar's Kitchen##91588 |goto Harandar/0 40.87,23.18
accept Root Dash Delivery##91589 |goto Harandar/0 40.87,23.18
step
click Root Dash Delivery Crate
Pick Up the Delivery |q 91589/1 |goto Harandar/0 40.75,23.16
step
click Ribs
Serve the Ribs |q 91589/4 |goto Harandar/0 36.61,26.88
step
click Nutrient Rich Dirt
Serve the Nutrient Rich Dirt |q 91589/5 |goto Harandar/0 36.59,26.87
step
click Salad
Serve the Salad |q 91589/2 |goto Harandar/0 36.55,26.90
step
click Fish Plate
Serve the Fish |q 91589/3 |goto Harandar/0 36.53,26.87
step
talk Yu'relen##248117
turnin Root Dash Delivery##91589 |goto Harandar/0 36.67,26.85
step
talk Hagar##252495
turnin The Former Rootwarden##91872 |goto Harandar/0 42.55,34.12
accept Buffer Zone##91873 |goto Harandar/0 42.55,34.12
step
kill Foraging Potatoad##251915, Insatiable Saptor##251916, Voracious Thornmaw##251914
Protect the Shrine |q 91873/1 |goto Harandar/0 41.54,31.96
step
talk Hagar##252497
turnin Buffer Zone##91873 |goto Harandar/0 42.32,34.19
accept Natural Remedy##91875 |goto Harandar/0 42.32,34.19
step
kill Wandering Stalker##248890+
|tip In the water.
collect 8 Verdant Stalker Sludge##252649 |q 91875/1 |goto Harandar/0 42.09,33.84
step
talk Hagar##252496
turnin Natural Remedy##91875 |goto Harandar/0 42.44,34.42
accept Flare Up##91874 |goto Harandar/0 42.44,34.42
step
Douse #18# Smoldering Fires |q 91874/1 |goto Harandar/0 35.71,36.92
|tip Fly next to fires.
step
talk Hagar##248886
turnin Flare Up##91874 |goto Harandar/0 42.58,33.60
accept Tending Hope##91876 |goto Harandar/0 42.58,33.60
step
click Withered Root Segment+
|tip Skinny lumps on tree roots.
Apply Hagar's Salve #12# Times |q 91876/1 |goto Harandar/0 42.52,34.00
step
talk Hagar##252494
turnin Tending Hope##91876 |goto Harandar/0 42.52,33.81
step
Look for the Missing Caravan |q 90537/1 |goto Harandar/0 48.69,31.97
step
click Decaying Sporeguard##245022
Investigate the Corpse |q 90537/2 |goto Harandar/0 48.69,31.97
step
click Empty Seed Sack
collect Empty Seed Sack##244337 |q 90537/3 |goto Harandar/0 48.72,32.19
step
talk Ney'leia##242684
Select _"I'm ready. Let's go."_ |gossip 133929
Talk to Ney'leia |q 90537/4 |goto Harandar/0 48.81,32.14
step
talk Ney'leia##243053
turnin Late Bloomers##90537 |goto Harandar/0 48.94,29.74
accept Rutaani Rescue##90540 |goto Harandar/0 48.94,29.74
accept Back in the Bag##90569 |goto Harandar/0 48.94,29.74
stickystart "Collect_Stolen_Seeds"
step
clicknpc Captured Rutaani##237592+
|tip Humanoids trapped in vines.
Rescue #5# Captured Rutaani |q 90540/1 |goto Harandar/0 48.12,26.03
step
label "Collect_Stolen_Seeds"
kill Innoculated Moldstalker##246454, Moldy Mycomender##237437, Moldy Mycomender##237575, Mycotic Moldstalker##237576, Rancid Rotslasher##237574, Scabrous Sporeguard##237578, Spiteful Sporecaller##237573, Stinkstomp##237702, Widecap Blightbinder##237577
collect 6 Stolen Seeds##242226 |q 90569/1 |goto Harandar/0 48.17,26.17
step
talk Ney'leia##243053
turnin Rutaani Rescue##90540 |goto Harandar/0 48.94,29.74
turnin Back in the Bag##90569 |goto Harandar/0 48.94,29.74
accept Caves of the Cleft##90963 |goto Harandar/0 48.94,29.74
step
talk Ney'leia##245166
turnin Caves of the Cleft##90963 |goto Harandar/0 49.69,23.31
accept Gathering Glowshrooms##90601 |goto Harandar/0 49.69,23.31
accept Gomphusta##90602 |goto Harandar/0 49.69,23.31
stickystart "Collect_Glowshrooms"
step
Enter the cave |goto Harandar/0 48.95,23.15 < 15 |walk |only if not (subzone("Fungal Cleft") and indoors())
kill Gomphusta##242765 |q 90602/1 |goto Harandar/0 48.64,21.64
|tip Walks around.
|tip Inside the cave.
collect Carved Key##246117 |goto Harandar/0 48.64,21.64 |q 90602
step
click Gomphusta's Chest
|tip Upstairs inside the cave.
Loot Gomphusta's Chest |q 90602/2 |goto Harandar/0 48.63,22.40
step
label "Collect_Glowshrooms"
clicknpc Enspored Potatoad##242755+
|tip White mushrooms.
|tip Inside the cave. |notinsticky
collect 6 Glowshroom##244429 |q 90601/1 |goto Harandar/0 48.95,23.15
step
Leave the cave |goto Harandar/0 48.95,23.15 < 15 |walk |only if subzone("Fungal Cleft") and indoors()
talk Ney'leia##245166
turnin Gathering Glowshrooms##90601 |goto Harandar/0 49.69,23.31
turnin Gomphusta##90602 |goto Harandar/0 49.69,23.31
step
talk Kamari##256322
turnin Har'kuai, Village of Rain##93771 |goto Harandar/0 65.24,26.39
step
talk Kuri##242358
accept Tales of the Sky##90467 |goto Harandar/0 67.78,27.49
accept Ugh, Chores!##90468 |goto Harandar/0 67.78,27.49
stickystart "Collect_Intact_Saptor_Fronds"
step
click Stray Skyshards+
|tip Green rocks.
collect 6 Stray Skyshards##240484 |q 90467/1 |goto Harandar/0 69.27,31.12
step
label "Collect_Intact_Saptor_Fronds"
kill Cascades Fenhunter##242403
collect 8 Intact Saptor Frond##240485 |q 90468/1 |goto Harandar/0 69.27,31.12
step
talk Kamari##242689
turnin Tales of the Sky##90467 |goto Harandar/0 69.40,29.24
turnin Ugh, Chores!##90468 |goto Harandar/0 69.40,29.24
accept Carry On, Wayward Kuri##90469 |goto Harandar/0 69.40,29.24
step
Find Kuri |q 90469/1 |goto Harandar/0 69.69,26.55
|tip You will be attacked.
step
talk Kuri##242691
turnin Carry On, Wayward Kuri##90469 |goto Harandar/0 69.69,26.55
accept Skyglass Scavenging##90470 |goto Harandar/0 69.69,26.55
step
Enter the cave |goto Harandar/0 70.17,26.46 < 20 |walk |only if not (subzone("Dreth'amar Cavern") and indoors())
Watch the dialogue
|tip Use the {o}Signal Kuri{} button ability next to {o}Displaced Skyshards{}.
|tip Green rocks.
|tip Inside the cave.
Kill the enemies that attack
Recover the Skyglass |q 90470/1 |goto Harandar/0 70.37,25.90 |count 15 hidden
step
click Stray Skyshards
|tip Inside the cave.
Recover the Skyglass |q 90470/1 |goto Harandar/0 70.86,26.27 |count 20 hidden
step
Watch the dialogue
|tip Use the {o}Signal Kuri{} button ability next to {o}Displaced Skyshards{}.
|tip Green rocks.
|tip Inside the cave.
Kill the enemies that attack
Recover the Skyglass |q 90470/1 |goto Harandar/0 70.99,26.08 |count 35 hidden
step
click Stray Skyshards
|tip Inside the cave.
Recover the Skyglass |q 90470/1 |goto Harandar/0 70.84,26.68 |count 40 hidden
step
click Stray Skyshards
|tip Inside the cave.
Recover the Skyglass |q 90470/1 |goto Harandar/0 71.12,27.10 |count 45 hidden
step
click Stray Skyshards
|tip Inside the cave.
Recover the Skyglass |q 90470/1 |goto Harandar/0 71.33,27.08 |count 50 hidden
step
click Stray Skyshards
|tip Inside the cave.
Recover the Skyglass |q 90470/1 |goto Harandar/0 71.38,27.38 |count 55 hidden
step
click Stray Skyshards
|tip Inside the cave.
Recover the Skyglass |q 90470/1 |goto Harandar/0 71.67,27.57 |count 60 hidden
step
click Stray Skyshards
|tip Inside the cave.
Recover the Skyglass |q 90470/1 |goto Harandar/0 71.39,27.79 |count 65 hidden
step
Watch the dialogue
|tip Use the {o}Signal Kuri{} button ability next to {o}Displaced Skyshards{}.
|tip Green rocks.
|tip Inside the cave.
Kill the enemies that attack
Recover the Skyglass |q 90470/1 |goto Harandar/0 71.46,28.39 |count 80 hidden
step
click Stray Skyshards
|tip Upstairs inside the cave.
Recover the Skyglass |q 90470/1 |goto Harandar/0 71.13,28.17 |count 85 hidden
step
click Stray Skyshards
|tip Upstairs inside the cave.
Recover the Skyglass |q 90470/1 |goto Harandar/0 71.14,28.45 |count 90 hidden
step
click Stray Skyshards
|tip Upstairs inside the cave.
Recover the Skyglass |q 90470/1 |goto Harandar/0 71.25,28.60 |count 95 hidden
step
click Stray Skyshards
|tip Upstairs inside the cave.
Recover the Skyglass |q 90470/1 |goto Harandar/0 71.59,28.06 |count 100 hidden
step
Leave the cave |goto Harandar/0 70.17,26.46 < 20 |walk |only if subzone("Dreth'amar Cavern") and indoors()
talk Kuri##242691
turnin Skyglass Scavenging##90470 |goto Harandar/0 69.69,26.55
accept The Legend of Aln'sharan##90474 |goto Harandar/0 69.69,26.55
step
Throw the Skyshards |q 90474/1 |goto Harandar/0 66.16,25.50
|tip Use the {o}Offer Skyshards{} button ability.
|tip Up on the platform.
step
Watch the dialogue
|tip Up on the platform.
talk Kuri##242358
turnin The Legend of Aln'sharan##90474 |goto Harandar/0 66.16,25.50
step
talk Su'meera##245637
accept The Blooming Lattice##91063 |goto Harandar/0 65.38,22.64
step
talk Lo'miko##254935
fpath Har'kuai |goto Harandar/0 64.59,23.15
step
talk Su'meera##245639
turnin The Blooming Lattice##91063 |goto Harandar/0 60.82,29.88
accept Purloining Petals##91065 |goto Harandar/0 60.82,29.88
accept Nipping the Buds##91086 |goto Harandar/0 60.82,29.88
accept Petal Bristles##91085 |goto Harandar/0 60.82,29.88
stickystart "Collect_Petalwing_Plumes"
stickystart "Slay_Rutaani"
step
click Well-Worn Ladle
|tip Up on the platform.
collect Well-Worn Ladle##245569 |q 91065/1 |goto Harandar/0 55.34,28.33
step
click Pilfered Crafting Drill
|tip Up on the platform.
collect Pilfered Crafting Drill##245570 |q 91065/2 |goto Harandar/0 54.53,28.30
step
click Paint-Speckled Gourd
|tip Up on the platform.
collect Paint-Speckled Gourd##245886 |q 91065/4 |goto Harandar/0 55.32,30.62
step
kill Kazat##237655
|tip Inside the building.
|tip Up on the platform.
Slay Prime Bloodwarden Kazat |q 91086/2 |goto Harandar/0 54.90,31.62
step
click Splattered Scroll
|tip Outside the building.
|tip Up on the platform.
collect Splattered Scroll##245883 |q 91065/3 |goto Harandar/0 54.85,32.06
step
label "Collect_Petalwing_Plumes"
kill Pilfering Petalwing##237709
|tip Large birds.
click Petalwing Plume+
|tip Blue feathers.
collect 8 Petalwing Plume##245571 |q 91085/1 |goto Harandar/0 55.39,29.87
step
label "Slay_Rutaani"
kill Lattice Elder Root##237692, Lattice Grovewarden##237640, Lattice Mistcaller##237161, Lattice Sap Weaver##237641, Lattice Thornguard##237642, Makoot##237693
|tip Humanoids.
Slay #12# Rutaani |q 91086/1 |goto Harandar/0 54.92,29.71
step
talk Su'meera##245639
turnin Purloining Petals##91065 |goto Harandar/0 60.82,29.89
turnin Nipping the Buds##91086 |goto Harandar/0 60.82,29.89
turnin Petal Bristles##91085 |goto Harandar/0 60.82,29.89
accept Behind the Falls##91088 |goto Harandar/0 60.82,29.89
step
Enter the cave behind the water of the waterfall |goto Harandar/0 55.83,26.01 < 15 |walk |only if not (subzone("Blooming Lattice") and indoors())
talk Su'meera##245986
|tip Inside the cave.
turnin Behind the Falls##91088 |goto Harandar/0 56.10,24.83
accept Memories in Stone##91136 |goto Harandar/0 56.10,24.83
step
talk Su'meera##245986
|tip Inside the cave.
Select _"I'm ready."_ |gossip 134219
Talk to Su'meera |q 91136/1 |goto Harandar/0 56.10,24.83
step
Kill the enemies that attack in waves
|tip Inside the cave
Defend Su'meera |q 91136/2 |goto Harandar/0 56.06,25.02
step
talk Su'meera##245728
|tip Flies to this location.
|tip Middle of the waterfall.
turnin Memories in Stone##91136 |goto Harandar/0 55.71,26.53
step
talk Orweyna##237860
|tip Inside the large cave.
turnin To Sow the Seed##86930 |goto Harandar/2 44.15,52.62
accept Watch The Den##86864 |goto Harandar/2 44.15,52.62
step
talk Doecha##255056
|tip Inside the large cave.
fpath The Den |goto Harandar/2 70.74,53.23
step
talk Doecha##255056
|tip Inside the large cave.
Select _"What can you tell me about the Rift of Aln?"_ |gossip 133777
Speak to the Flight Master |q 86864/3 |goto Harandar/2 70.74,53.23
step
talk Yinaa##240404
|tip Inside the building.
|tip Outside above the cave.
Select _"What can you tell me about the Rift of Aln?"_ |gossip 132851
Speak to the Innkeeper |q 86864/1 |goto Harandar/0 50.86,55.61
step
talk Naynar##240407
Select _"What can you tell me about the Rift of Aln?"_ |gossip 132852
Speak to the Quartermaster |q 86864/2 |goto Harandar/0 50.95,50.73
step
talk Ku'paal##241045
|tip Up on the cliff.
Select _"What can you tell me about the Rift of Aln?"_ |gossip 132858
Speak to Ku'paal |q 86864/4 |goto Harandar/0 54.27,55.67
step
talk Orweyna##237234
|tip Up on the cliff.
turnin Watch The Den##86864 |goto Harandar/0 54.28,55.75
step
talk Ku'paal##241045
|tip Up on the cliff.
accept The Hunter Awaits##86836 |goto Harandar/0 54.27,55.67
step
Find Orweyna in the Shrine of Mists |q 86836/1 |goto Harandar/0 61.99,54.62
step
talk Amarakk##237236
turnin The Hunter Awaits##86836 |goto Harandar/0 61.99,54.62
accept Consequences of Our Duty##86855 |goto Harandar/0 61.99,54.62
accept The Foundation of Aln##86851 |goto Harandar/0 61.99,54.62
stickystart "Collect_Diminished_Alndust"
step
clicknpc Wounded Defender##241220+
|tip Dazed allies.
|tip On your minimap.
Help #5# Wounded Defenders |q 86855/1 |goto Harandar/0 60.11,54.55
step
label "Collect_Diminished_Alndust"
kill Blighted Rift Spirit##237605, Rift Shade##237606
collect 6 Diminished Alndust##238417 |q 86851/1 |goto Harandar/0 61.83,54.42
step
talk Orweyna##241070
turnin Consequences of Our Duty##86855 |goto Harandar/0 61.93,54.54
turnin The Foundation of Aln##86851 |goto Harandar/0 61.93,54.54
accept Dampening the Call##86856 |goto Harandar/0 61.93,54.54
step
click Diminished Alndust##241280
Place the Alndust |q 86856/1 |goto Harandar/0 61.95,54.53
step
Watch the dialogue
talk Orweyna##241070
turnin Dampening the Call##86856 |goto Harandar/0 61.92,54.54
accept Descent into the Rift##86857 |goto Harandar/0 61.92,54.54
step
click Ward of the Shul'ka
Look for the Wards of the Shul'ka |q 86857/1 |goto Harandar/0 64.06,56.36
step
click Ward of the Shul'ka
Look for the Wards of the Shul'ka |q 86857/2 |goto Harandar/0 63.97,58.42
step
Look for the Wards of the Shul'ka |q 86857/3 |goto Harandar/0 61.67,56.14
step
Watch the dialogue
talk Amarakk##237284
turnin Descent into the Rift##86857 |goto Harandar/0 61.67,56.14
accept The Madness Roots Deep##86858 |goto Harandar/0 61.67,56.14
step
kill On'hiea##237668
Subdue On'hiea |q 86858/1 |goto Harandar/0 59.86,57.47
step
talk Amarakk##237284
turnin The Madness Roots Deep##86858 |goto Harandar/0 61.10,57.30
accept Before They Grow##86860 |goto Harandar/0 61.10,57.30
accept Grinding Out a Solution##86859 |goto Harandar/0 61.10,57.30
accept Herding Manifestations##86861 |goto Harandar/0 61.10,57.30
stickystart "Collect_Alngrown_Fungus"
stickystart "Defeat_Alnsnorned_Enemies_In_The_Rift_Of_Aln"
step
click Ward of the Shul'ka+
|tip Yellow poles with flags.
|tip On your minimap.
|tip Avoid elite enemies.
Place #3# Wards |q 86861/1 |goto Harandar/0 62.87,58.75
step
label "Collect_Alngrown_Fungus"
click Aln Mushroom+
|tip Green tube plants.
|tip Avoid elite enemies. |notinsticky
collect 5 Alngrown Fungus##238651 |q 86859/1 |goto Harandar/0 64.92,61.44
step
label "Defeat_Alnsnorned_Enemies_In_The_Rift_Of_Aln"
kill Coalesced Spirit##237684, Decaying Essence##237681, Rift Shade##241646
|tip Avoid elite enemies. |notinsticky
use Amarakk's Influence##239131
|tip On enemies.
kill Aln Mites##241639+
Defeat Alnscorned Enemies in the Rift of Aln |q 86860/2 |goto Harandar/0 64.27,60.11
step
Enter the cave |goto Harandar/0 63.21,57.59 < 15 |walk |only if not (subzone("Rift of Aln") and indoors())
talk Amarakk##237284
|tip Inside the cave.
turnin Grinding Out a Solution##86859 |goto Harandar/0 63.14,56.76
turnin Before They Grow##86860 |goto Harandar/0 63.14,56.76
turnin Herding Manifestations##86861 |goto Harandar/0 63.14,56.76
accept The Greater They Aln##86862 |goto Harandar/0 63.14,56.76
step
kill Lured Manifestation##237658 |q 86862/1 |goto Harandar/0 64.91,57.31
|tip Allies will help you.
|tip Inside the cave.
step
click Greater Alndust
|tip Inside the cave.
Gather the Greater Alndust |q 86862/2 |goto Harandar/0 65.03,57.38
step
talk Amarakk##237284
|tip Inside the cave.
turnin The Greater They Aln##86862 |goto Harandar/0 63.13,56.76
step
talk Orweyna##237234
|tip Inside the cave.
accept In Search of the Problem##86865 |goto Harandar/0 63.12,56.82
step
talk Ku'paal##237331
turnin Har'athir, Village of Memory##93745 |goto Harandar/0 70.04,51.59
step
talk Cyenna##246607
accept Supplicants to The Goddess##91346 |goto Harandar/0 65.45,28.06
step
clicknpc Waters of Har'kuai##247660
Interact with the Waters of Har'kuai |q 91346/1 |goto Harandar/0 65.50,27.98
step
talk Cyenna##246607
turnin Supplicants to The Goddess##91346 |goto Harandar/0 65.45,28.06
accept Fungal Lashers B Gone##91359 |goto Harandar/0 65.45,28.06
accept Weeding Out the Unwanted##91360 |goto Harandar/0 65.45,28.06
stickystart "Pull_Allergenic_Weeds"
step
kill Feasting Lashroom##246712+
|tip Walking plants.
|tip Loot them.
Gather #6# Harmonious Lashes |q 91359/1 |goto Harandar/0 61.37,28.87
step
label "Pull_Allergenic_Weeds"
click Allergenic Weed+
|tip Small green plants.
|tip Run away from them.
|tip On your minimap.
Pull #8# Allergenic Weeds |q 91360/1 |goto Harandar/0 60.83,29.63
step
talk Cyenna##246607
turnin Fungal Lashers B Gone##91359 |goto Harandar/0 65.45,28.06
turnin Weeding Out the Unwanted##91360 |goto Harandar/0 65.45,28.06
accept Back on Duty?##91361 |goto Harandar/0 65.45,28.06
step
kill Aggressive Potatoad##246715, Harmonious Petalwing##246713
Slay #8# of Riverscale's Favorite Feasts |q 91361/1 |goto Harandar/0 66.22,26.73
step
talk Cyenna##246607
turnin Back on Duty?##91361 |goto Harandar/0 65.45,28.06
step
talk Ghikal##246777
accept Little Monsters##91376 |goto Harandar/0 43.91,71.71
accept Spawn of the Dead##91377 |goto Harandar/0 43.91,71.71
stickystart "Collect_Strange_Mycelium"
step
click Blooming Corpse##246849+
|tip On your minimap.
Investigate #4# Blooming Corpses |q 91377/1 |goto Harandar/0 45.87,70.21
step
label "Collect_Strange_Mycelium"
kill Decanimated Blightbringer##246780, Decanimated Rotling##246783, Decanimated Rotseeker##246782, Decanimated Sporeglider##246808
collect 10 Strange Mycelium##247243 |q 91376/1 |goto Harandar/0 45.54,67.66
step
talk Ghikal##246777
turnin Little Monsters##91376 |goto Harandar/0 44.12,66.44
turnin Spawn of the Dead##91377 |goto Harandar/0 44.12,66.44
accept You Are Legend##91378 |goto Harandar/0 44.12,66.44
accept Decayed Land##91379 |goto Harandar/0 44.12,66.44
stickystart "Slay_Decanimated_Creatures"
step
click Fruiting Mycelium+
|tip Red bubbles.
Destroy #8# Fruiting Mycelium |q 91379/1 |goto Harandar/0 43.29,66.18
step
label "Slay_Decanimated_Creatures"
kill Hulking Husk##246850, Limping Spore-Husk##246862, Shambling Rot-Husk##246857
Slay #15# Decanimated Creatures |q 91378/1 |goto Harandar/0 43.29,66.18
step
talk Ghikal##246777
turnin You Are Legend##91378 |goto Harandar/0 44.13,66.44
turnin Decayed Land##91379 |goto Harandar/0 44.13,66.44
accept Reticent Evil##91381 |goto Harandar/0 44.13,66.44
step
click Agericus Decanimatus
|tip You will be attacked.
|tip Underwater.
Destroy the Agericus Decanimatus |q 91381/1 |goto Harandar/0 45.77,66.80
step
kill Zombified Guardian##248125 |q 91381/2 |goto Harandar/0 45.77,66.80
|tip Underwater.
step
talk Ghikal##246777
turnin Reticent Evil##91381 |goto Harandar/0 44.12,66.44
step
talk Byarc##237295
turnin In Search of the Problem##86865 |goto Harandar/0 31.34,64.89
step
talk Hannan##241629
accept Light Disturbance##92732 |goto Harandar/0 31.40,64.97
step
talk Orweyna##237325
accept Can we Heal This?##86866 |goto Harandar/0 31.43,64.91
accept The Missing Rootwarden##94677 |goto Harandar/0 31.43,64.91
step
click Ruia's Storage
|tip Inside the building.
Find Ruia's Notes |q 94677/1 |goto Harandar/0 30.97,64.70 |count 1 hidden
step
click Ruia's Musings
Find Ruia's Notes |q 94677/1 |goto Harandar/0 32.97,65.06 |count 2 hidden
step
click Ruia's Musings
Find Ruia's Notes |q 94677/1 |goto Harandar/0 30.45,67.54 |count 3 hidden
step
talk Ka'mura##254936
fpath Har'alnor |goto Harandar/0 31.73,67.43
step
talk Orweyna##237356
|tip Inside the small cave.
turnin The Missing Rootwarden##94677 |goto Harandar/0 31.98,61.40
step
clicknpc Afflicted Rutaani##237393
|tip Inside the small cave.
Use the Alndust on the Afflicted Rutaani |q 86866/1 |goto Harandar/0 31.93,61.14
step
talk Orweyna##237356
|tip Inside the small cave.
turnin Can we Heal This?##86866 |goto Harandar/0 31.98,61.40
accept Alndust in Right Hands##86882 |goto Harandar/0 31.98,61.40
step
talk Eager Volunteer##241690+
|tip On your minimap.
Select _"This alndust will protect you from the Lightbloom so we can fight them."_ |gossip 132939
Innoculate #5# Haranir |q 86882/1 |goto Harandar/0 32.46,64.07
step
talk Luminescent Corpse##253087
turnin Light Disturbance##92732 |goto Harandar/0 40.64,62.99
accept Light Stroll##92736 |goto Harandar/0 40.64,62.99
step
click Suspicious Tracks
Find the Clue |q 92736/1 |goto Harandar/0 40.85,64.01 |count 1 hidden
step
click Sprouting Light Bulbs
Find the Clue |q 92736/1 |goto Harandar/0 40.84,65.29 |count 2 hidden
step
click Disturbed Earth
Find the Clue |q 92736/1 |goto Harandar/0 41.23,66.66 |count 3 hidden
step
click Fallen Infested##256243
Find the Clue |q 92736/1 |goto Harandar/0 41.65,67.44 |count 4 hidden
step
talk Hannan##253105
turnin Light Stroll##92736 |goto Harandar/0 41.68,67.81
accept Light Carnage##92737 |goto Harandar/0 41.68,67.81
accept Potatoad Tots##92738 |goto Harandar/0 41.68,67.81
stickystart "Kill_Lightfrenzied_Potatoads"
step
clicknpc Lightspored Potadpole##253539+
|tip Small walking fish.
Gather #8# Lightspored Potadpoles |q 92738/1 |goto Harandar/0 39.57,70.47
step
label "Kill_Lightfrenzied_Potatoads"
kill 12 Lightfrenzied Potatoad##198029 |q 92737/1 |goto Harandar/0 39.57,70.47
|tip Larger walking fish.
step
talk Hannan##253105
turnin Light Carnage##92737 |goto Harandar/0 37.34,72.33
turnin Potatoad Tots##92738 |goto Harandar/0 37.34,72.33
accept O.K. Bloomer##92739 |goto Harandar/0 37.34,72.33
step
kill Adzikel##253558 |q 92739/1 |goto Harandar/0 36.01,74.10
|tip Walks around.
|tip Inside the small cave.
step
talk Hannan##241655
Select _"<Ask about this area.>"_ |gossip 132933
Talk to Hannan at the Blinding Bloom |q 86882/2 |goto Harandar/0 33.17,75.92
step
talk Hannan##241655
accept Har'alnor, Village of Twilight##93776 |goto Harandar/0 33.17,75.92
step
talk Orweyna##237356
turnin Alndust in Right Hands##86882 |goto Harandar/0 33.20,76.02
accept Into the Lightbloom##86867 |goto Harandar/0 33.20,76.02
step
clicknpc Haranir Petalwing##241799
Ride the Haranir Petalwing |q 86867/1 |goto Harandar/0 33.27,75.88
step
_As You Fly:_
kill Lightbloom Shield##241824+
|tip Large pink flower bulbs.
|tip On your minimap.
Destroy #4# Lightbloom Spreader Shields |q 86867/2
kill enemies
Defeat the Lightbloom Rutaani |q 86867/3
step
Return to Orweyna |outvehicle |goto Harandar/0 30.54,77.26 |q 86867 |notravel
step
talk Orweyna##237356
turnin Into the Lightbloom##86867 |goto Harandar/0 30.59,77.16
accept At the Root##86881 |goto Harandar/0 30.59,77.16
accept Our Beloved, Returned##86880 |goto Harandar/0 30.59,77.16
accept Righteous Pruning##86877 |goto Harandar/0 30.59,77.16
stickystart "Recover_Artifacts"
step
kill 4 Lightblinded Sap Weaver##237582 |q 86877/1 |goto Harandar/0 31.45,76.40
|tip Larger humanoids.
|tip On your minimap.
step
click Lightbloom Spreader+
|tip Large pink flower bulbs {o}next to water{}.
Destroy #5# Lightbloom Spreaders |q 86881/1 |goto Harandar/0 31.59,82.56
step
label "Recover_Artifacts"
click Haranir Heirloom+
|tip Green sacks.
|tip On your minimap.
Recover #6# Artifacts |q 86880/1 |goto Harandar/0 31.21,78.25
step
talk Orweyna##237356
turnin At the Root##86881 |goto Harandar/0 30.59,77.16
turnin Our Beloved, Returned##86880 |goto Harandar/0 30.59,77.16
turnin Righteous Pruning##86877 |goto Harandar/0 30.59,77.16
accept Tell the People What You Have Seen##86890 |goto Harandar/0 30.59,77.16
step
talk Hannan##241629
turnin O.K. Bloomer##92739 |goto Harandar/0 31.39,64.97
turnin Har'alnor, Village of Twilight##93776 |goto Harandar/0 31.39,64.97
step
Return to the Den |q 86890/1 |goto Harandar/0 50.09,54.11
step
talk Halduron Brightwing##250363
Select _"I am ready."_ |gossip 135501
Address the Council |q 86890/2 |goto Harandar/0 50.09,54.11
step
talk Orweyna##241742
|tip Inside the large cave.
turnin Tell the People What You Have Seen##86890 |goto Harandar/0 53.21,55.44
accept The Frenzied March##86883 |goto Harandar/0 53.21,55.44
step
talk Chua##244163
|tip Outside above the cave.
accept My Brother's Alive!##90824 |goto Harandar/0 52.19,55.14
step
talk En'liahn##244242
turnin My Brother's Alive!##90824 |goto Harandar/0 43.05,61.41
accept The Healing Waters of Ahl'ua##90826 |goto Harandar/0 43.05,61.41
accept Only the Poisonous Parts##90827 |goto Harandar/0 43.05,61.41
stickystart "Collect_Phytogenic_Poison_Parts"
step
click Healing Waters of Ahl'ua+
|tip Blue tornados.
|tip In the water.
collect 6 Healing Waters of Ahl'ua##243196 |q 90826/1 |goto Harandar/0 41.65,55.48
step
label "Collect_Phytogenic_Poison_Parts"
kill Ahl'ua Bull##244376, Ahl'ua Chloroceros##244371, Lethal Lasher##244344, Lethal Lashling##244340, Poisonous Firefly##244363, Potatotoad Brute##244349, Toxic Potatotoadling##244326, Toxic Potatotoad##244325, Wetland Terror##244338
collect 8 Phytogenic Poison Part##243598 |q 90827/1 |goto Harandar/0 42.06,56.45
step
talk En'liahn##244242
turnin The Healing Waters of Ahl'ua##90826 |goto Harandar/0 43.05,61.41
turnin Only the Poisonous Parts##90827 |goto Harandar/0 43.05,61.41
accept Meeting My Mentor##90829 |goto Harandar/0 43.05,61.41
step
talk En'liahn##244394
turnin Meeting My Mentor##90829 |goto Harandar/0 63.85,54.68
accept The Path Will Reveal Itself##90830 |goto Harandar/0 63.85,54.68
step
talk En'liahn##244394
Select _"Let's go find your ritual site."_ |gossip 133898
Speak with En'liahn |q 90830/1 |goto Harandar/0 63.85,54.68
step
talk Amarakk##244419
accept Doing Is Becoming##90831 |goto Harandar/0 63.87,54.71
stickystart "Disrupt_The_Rift_Of_Aln"
step
Find the First Guide |q 90830/2 |goto Harandar/0 63.01,54.97
step
Find the Second Guide |q 90830/3 |goto Harandar/0 65.91,58.48
step
Find the Third Guide |q 90830/4 |goto Harandar/0 64.45,58.49
step
Find the Fourth Guide |q 90830/5 |goto Harandar/0 62.56,58.89
step
Find the Fifth Guide |q 90830/6 |goto Harandar/0 61.90,59.80
step
Find the Final Guide |q 90830/7 |goto Harandar/0 63.50,59.98
step
label "Disrupt_The_Rift_Of_Aln"
kill Aln Oozeling##237683, Blighted Rift Spirit##237605, Coalesced Spirit##237684, Decaying Essence##237681, Rift Shade##241646
click Aln'haran Tear+
|tip Small green portals.
|tip Run away from them.
Disrupt the Rift of Aln |q 90831/1 |goto Harandar/0 62.46,57.62
step
talk Amarakk##244455
turnin The Path Will Reveal Itself##90830 |goto Harandar/0 62.94,62.38
turnin Doing Is Becoming##90831 |goto Harandar/0 62.94,62.38
accept As Her Voice Goes Silent##90832 |goto Harandar/0 62.94,62.38
step
click Shul'ka Ward
Place the Shul'ka Ward |q 90832/1 |goto Harandar/0 63.01,62.05 |count 1 hidden
step
click Shul'ka Ward
Place the Shul'ka Ward |q 90832/1 |goto Harandar/0 62.81,62.06 |count 2 hidden
step
talk En'liahn##244456
Select _"The wards are placed. Let's begin."_ |gossip 133930
Begin the Ritual of Severing |q 90832/2 |goto Harandar/0 62.97,62.22
step
kill Coalesced Spirit##245206, Decaying Essence##245209, Rift Shade##245213
|tip Nearby to the {o}north{}.
Complete the Ritual of Severing |q 90832/3 |goto Harandar/0 62.94,62.29
step
talk Amarakk##244455
turnin As Her Voice Goes Silent##90832 |goto Harandar/0 62.94,62.38
accept The Final Rite##90833 |goto Harandar/0 62.94,62.38
step
Enter the cave |goto Harandar/0 61.43,60.45 < 15 |walk |only if not (subzone("The Shadow Cleft") and indoors())
talk En'liahn##244465
|tip Inside the cave.
Select _"Grim. I'm ready when you are."_ |gossip 134053
kill Morta'ka the Sundered Echo##244463 |q 90833/2 |goto Harandar/0 61.03,60.66
|tip Nearby.
step
talk En'liahn##244473
turnin The Final Rite##90833 |goto Harandar/0 61.54,60.15
accept From This Point Forward##90834 |goto Harandar/0 61.54,60.15
step
talk En'liahn##244394
|tip Up on the cliff.
turnin From This Point Forward##90834 |goto Harandar/0 63.85,54.68
step
click Eversong Rootway
|tip Inside the large cave.
Take the Emergency Rootway |q 86883/1 |goto Harandar/0 53.36,55.42
step
talk Orweyna##237361
turnin The Frenzied March##86883 |goto Eversong Woods M/0 62.24,59.47
accept Cull and Burn##86884 |goto Eversong Woods M/0 62.24,59.47
step
talk Halduron Brightwing##237465
accept Stem the Tides##86885 |goto Eversong Woods M/0 62.25,59.53
stickystart "Collect_Lightbleached_Rootbones"
step
click Lightfrenzy Portalway+
|tip Plants next to yellow portals.
Destroy #5# Lightfrenzy Rootways |q 86885/1 |goto Eversong Woods M/0 60.93,59.33
step
label "Collect_Lightbleached_Rootbones"
kill Invasive Shinesipper##237500, Lash'ra Mistcaller##237479, Lash'ra Thornguard##237478, Lightmad Saptor##237496
collect 10 Lightbleached Rootbone##238196 |q 86884/1 |goto Eversong Woods M/0 60.69,58.89
step
talk Orweyna##237361
turnin Cull and Burn##86884 |goto Eversong Woods M/0 62.24,59.47
step
talk Halduron Brightwing##237465
turnin Stem the Tides##86885 |goto Eversong Woods M/0 62.25,59.53
accept Expeditious Retreat##86887 |goto Eversong Woods M/0 62.25,59.53
accept A Last Resort##86891 |goto Eversong Woods M/0 62.25,59.53
step
kill Swarming Lightsaptor##241466 |q 86887/2 |goto Eversong Woods M/0 61.63,60.36
step
click Palehill Runestone
Disable the Palehill Runestone |q 86891/1 |goto Eversong Woods M/0 61.52,59.69
step
click Lakegrove Runestone
Disable the Lakegrove Runestone |q 86891/2 |goto Eversong Woods M/0 60.09,59.10
step
kill Swarming Shinesipper##241465 |q 86887/1 |goto Eversong Woods M/0 59.99,58.54
|tip Flying around.
step
click Barksnarl Runestone
Disable the Barksnarl Runestone |q 86891/3 |goto Eversong Woods M/0 60.47,57.40
step
kill Swarming Shinemaw##240495 |q 86887/3 |goto Eversong Woods M/0 60.33,56.98
step
talk Halduron Brightwing##241130
turnin Expeditious Retreat##86887 |goto Eversong Woods M/0 58.66,57.24
turnin A Last Resort##86891 |goto Eversong Woods M/0 58.66,57.24
step
talk Orweyna##237361
accept Survive##86892 |goto Eversong Woods M/0 58.66,57.28
step
talk Grand Magister Rommath##240532
Select _"Begin the ritual."_ |gossip 132750
Kill the enemies that attack in waves
Survive the Lightfrenzy Onslaught |q 86892/2 |goto Eversong Woods M/0 58.62,57.10
step
talk Orweyna##237361
turnin Survive##86892 |goto Eversong Woods M/0 58.67,57.28
accept The Gift of Aln'hara##86894 |goto Eversong Woods M/0 58.67,57.28
step
talk Halduron Brightwing##241130
accept Light Finds a Way##86896 |goto Eversong Woods M/0 58.66,57.25
stickystart "Rout_The_Lightbloom_Frenzy"
step
kill 3 Lightfrenzy Tyrannosaptor##237635 |q 86896/1 |goto Eversong Woods M/0 60.92,55.05
|tip Large vine elite t-rex enemies.
|tip Use the {o}Gift of Aln'hara{} button ability.
|tip Weakens them.
|tip On your minimap.
step
label "Rout_The_Lightbloom_Frenzy"
kill Lightfrenzy Demolisher##237634, Lightfrenzy Devourer##237633, Lightfrenzy Shinesipper##240577
click Lightfrenzy Spore-Pod+
|tip Pink flower bulb structures.
Empower Allies
|tip Use the {o}Gift of Aln'hara{} button ability.
|tip Next to allies.
Rout the Lightbloom Frenzy |q 86894/1 |goto Eversong Woods M/0 61.25,56.32
step
talk Halduron Brightwing##237465
turnin Light Finds a Way##86896 |goto Eversong Woods M/0 60.72,56.77
step
talk Orweyna##237361
turnin The Gift of Aln'hara##86894 |goto Eversong Woods M/0 60.76,56.84
accept Quelling the Frenzy##86897 |goto Eversong Woods M/0 60.76,56.84
step
kill Lightwarden Ruia##241386 |q 86897/1 |goto Eversong Woods M/0 62.89,55.36
step
talk Orweyna##241704
turnin Quelling the Frenzy##86897 |goto Eversong Woods M/0 58.38,55.44
accept Rise of the Haranir##86898 |goto Eversong Woods M/0 58.38,55.44
step
talk Orweyna##255822
turnin Rise of the Haranir##86898 |goto Silvermoon City M/0 36.60,68.51
step
talk Elder Hagar##255819
accept The War Beyond the Roots##95324 |goto Silvermoon City M/0 36.55,68.42
|tip If this quest is not offered, skip this step.
step
talk Elder Hagar##255819
accept Looming Shadows##91084 |goto Silvermoon City M/0 36.56,68.42
|tip If this quest is not offered, skip this step.
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin The War Beyond the Roots##95324 |goto Silvermoon City M/0 45.45,70.33
|only if haveq(95324) or completedq(95324)
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Looming Shadows##91084 |goto Silvermoon City M/0 45.45,70.33
|only if haveq(91084) or completedq(91084)
step
Watch the dialogue
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
accept You Know This Evil?##91967 |goto Silvermoon City M/0 45.44,70.34
|tip If this quest is not offered, skip this step.
|only if haveq(91084) or completedq(91084)
step
talk Magister Umbric##249272
Find Umbric |q 91967/1 |goto Silvermoon City M/0 45.55,36.58
|only if haveq(91967) or completedq(91967)
step
talk Grand Magister Rommath##249270
Select _"<Explain that Lor'themar wants to see Umbric freed.>"_ |gossip 135139
Select _"<Explain how Umbric is researching a way into the Voidstorm.>"_ |gossip 135140
Petition Grand Magister Rommath |q 91967/4 |goto Silvermoon City M/0 45.79,36.26
|only if haveq(91967) or completedq(91967)
step
talk War Chaplain Senn##248628
Select _"<Explain that Lor'themar wants to see Umbric freed.>"_ |gossip 135148
Select _"<Explain that Umbric is researching ways into the Voidstorm.>"_ |gossip 135147
Select _"<Ask how they would enter the Voidstorm without Umbric's help.>"_ |gossip 135149
Petition War Chaplain Senn |q 91967/3 |goto Silvermoon City M/0 45.66,36.08
|only if haveq(91967) or completedq(91967)
step
talk Lothraxion##249268
Select _"<Explain that Lor'themar wants to see Umbric freed.>"_ |gossip 135157
Select _"<Explain that Umbric is researching ways into the Voidstorm.>"_ |gossip 135156
Petition Lothraxion |q 91967/2 |goto Silvermoon City M/0 45.49,36.03
|only if haveq(91967) or completedq(91967)
step
talk Anduin Wrynn##249289
Select _"<Explain that Lor'themar wants to see Umbric freed.>"_ |gossip 135179
Select _"<Explain that Umbric is researching ways into the Voidstorm.>"_ |gossip 135178
Petition Anduin Wrynn |q 91967/5 |goto Silvermoon City M/0 45.56,36.41
|only if haveq(91967) or completedq(91967)
step
click Lor'themar Theron##235787
|tip Upstairs inside the building.
Report to Lor'themar Theron |q 91967/6 |goto Silvermoon City M/0 45.44,70.34
|only if haveq(91967) or completedq(91967)
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin You Know This Evil?##91967 |goto Silvermoon City M/0 45.44,70.34
|only if haveq(91967) or completedq(91967)
step
|next "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Midnight Intro & Campaign (Full Zone)" |only if level < 90
|next "Leveling Guides\\Midnight (80-90)\\The War of Light and Shadow Campaign" |only if level >= 90
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Arator's Journey (Full Zone)",{
condition_valid=function() return level >= 83 or achieved(42045) end,
condition_valid_msg="You must earn the Midnight achievement by completing the story only campaign and hitting 90 once or reach at least level 83 to accept the quests in this guide.",
},[[
step
Click the Complete Quest Box
turnin Adventuring in Midnight##94993
|only if readyq(94993)
step
talk Alonsus Faol##237565
turnin Arator##89193 |goto Silvermoon City M/0 45.78,65.78 |only if haveq(89193) or completedq(89193)
accept Meet at the Sunwell##86837 |goto Silvermoon City M/0 45.78,65.78
step
talk Arator##244644
Select _"Alonsus Faol asks that we meet him at the Sunwell."_ |gossip 133853
Select _"Let's go."_ |gossip 133856
Speak with Arator |q 86837/1 |goto Silvermoon City M/0 45.29,60.41
step
talk Alonsus Faol##240240
turnin Meet at the Sunwell##86837 |goto Isle of Quel Danas M/0 52.88,55.17
accept Renewal for the Weary##86838 |goto Isle of Quel Danas M/0 52.88,55.17
step
use Faol's Benediction##237811
|tip On Taelia Fordragon.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 52.94,45.80 |count 1 hidden
'|clicknpc Taelia Fordragon##242608
step
use Faol's Benediction##237811
|tip On Valunei.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 53.45,45.31 |count 2 hidden
'|clicknpc Valunei##242606
step
use Faol's Benediction##237811
|tip On Anduin Wrynn.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 53.51,44.55 |count 3 hidden
'|clicknpc Anduin Wrynn##244867
step
use Faol's Benediction##237811
|tip On Captain Fareeya.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 53.40,43.87 |count 4 hidden
'|clicknpc Captain Fareeya##242614
step
use Faol's Benediction##237811
|tip On Tahu Sagewind.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 52.90,43.16 |count 5 hidden
'|clicknpc Tahu Sagewind##242613
step
use Faol's Benediction##237811
|tip On Nolaki.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 52.25,43.25 |count 6 hidden
'|clicknpc Nolaki##242607
step
use Faol's Benediction##237811
|tip On Faerin Lothar.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 51.85,43.72 |count 7 hidden
'|clicknpc Faerin Lothar##242609
step
use Faol's Benediction##237811
|tip On Mariella Ward.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 51.70,44.44 |count 8 hidden
'|clicknpc Mariella Ward##242615
step
use Faol's Benediction##237811
|tip On Mehlar Dawnblade.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 51.68,45.17 |count 9 hidden
'|clicknpc Mehlar Dawnblade##242611
step
use Faol's Benediction##237811
|tip On Salandria.
|tip Inside the building.
|tip If the channeler is bugged and you can't renew it, look for other with no gold lines going to them.
Renew the Sunwell Channeler |q 86838/1 |goto Isle of Quel Danas M/0 52.06,45.62 |count 10 hidden
'|clicknpc Salandria##242610
step
talk Alonsus Faol##240240
turnin Renewal for the Weary##86838 |goto Isle of Quel Danas M/0 52.88,55.17
accept Relics of Light's Hope##86839 |goto Isle of Quel Danas M/0 52.88,55.17
step
talk Skymistress Gloaming##246560
fpath Terrace of the Sun |goto Isle of Quel Danas M/0 57.55,33.85
|tip You can skip this step if you would rather go to Light's Hope immediately.
step
talk Alonsus Faol##240240
Select _"<Tell Alonsus you are ready to go to Light's Hope.>"_ |gossip 138693
Speak with Alonsus Faol |q 86839/2 |goto Isle of Quel Danas M/0 52.88,55.17
step
talk Lord Maxwell Tyrosus##237594
turnin Relics of Light's Hope##86839 |goto Eastern Plaguelands/0 73.90,53.56
accept Flickering Hope##86840 |goto Eastern Plaguelands/0 73.90,53.56
step
kill Ravaging Abomination##237731, Scourge Remnant##237739
Defend Light's Hope |q 86840/1 |goto Eastern Plaguelands/0 72.93,53.18
step
talk Lord Maxwell Tyrosus##237594
turnin Flickering Hope##86840 |goto Eastern Plaguelands/0 73.90,53.56
accept Relics of Paladins Past##86841 |goto Eastern Plaguelands/0 73.90,53.56
step
Enter Light's Hope Chapel |q 86841/1 |goto Eastern Plaguelands/20 42.40,88.78
|tip Inside the building.
step
click Lena's Stein
|tip Inside the building.
collect Lena Stormpike's Stein##237518 |q 86841/2 |goto Eastern Plaguelands/20 60.15,27.57
step
click Maraad's Meditation Crystal
|tip Inside the building.
collect Vindicator Maraad's Meditation Crystal##237513 |q 86841/3 |goto Eastern Plaguelands/20 70.38,42.48
step
click Krohm's Smithing Hammer
|tip Inside the building.
collect Krohm Dawnhammer's Smithing Hammer##237574 |q 86841/5 |goto Eastern Plaguelands/20 76.49,32.60
step
click Mara's Prayer Book
|tip Inside the building.
collect Mara Fordragon's Prayer Book##237573 |q 86841/6 |goto Eastern Plaguelands/20 79.16,23.63
step
click Uther's Healing Kit
|tip Inside the building.
collect Uther's Healing Kit##237519 |q 86841/4 |goto Eastern Plaguelands/20 72.24,13.72
step
talk Lord Maxwell Tyrosus##237594
turnin Relics of Paladins Past##86841 |goto Eastern Plaguelands/0 73.90,53.56
step
talk Alonsus Faol##237601
accept Scarlet Power##86842 |goto Eastern Plaguelands/0 73.80,53.52
step
Enter the Scarlet Monastery |q 86842/2 |goto Tirisfal Glades/13 17.00,81.13
step
Meet Faol Inside the Monastery |q 86842/3 |goto Tirisfal Glades/13 79.69,54.35
|tip Inside the building.
step
Enter the Scarlet Halls |q 86842/4 |goto Tirisfal Glades/13 78.96,60.02
|tip Walk into the portal.
|tip Inside the building.
step
talk Arator##241311
turnin Scarlet Power##86842 |goto Scarlet Halls Arator/0 46.94,89.92
step
talk Alonsus Faol##237602
accept Light Miswielded##86843 |goto Scarlet Halls Arator/0 47.30,90.78
accept Light Repurposed##86844 |goto Scarlet Halls Arator/0 47.30,90.78
stickystart "Defeat_The_Scarlet_Forces"
step
kill Instructor Meyer##237783
|tip Walks around.
|tip On your minimap.
collect Meyer's Rod of Castigation##237579 |q 86844/1 |goto Scarlet Halls Arator/0 56.95,80.45
step
kill Champion Aelyse##237803
Watch the dialogue
collect Aelyse's Gleaming Falchion##237761 |q 86844/2 |goto Scarlet Halls Arator/0 61.74,45.16
step
kill Abbot Benthar##238033
collect Benthar's Scarlet Spire##237576 |q 86844/3 |goto Scarlet Halls Arator/0 39.16,15.53
step
label "Defeat_The_Scarlet_Forces"
kill Instructor Meyer##237783, Scarlet Footman##237801, Scarlet Initiate##237772, Scarlet Cleric##237802, Scarlet Mage##237782, Champion Aelyse##237803, Abbot Benthar##238033
|tip Throughout the Scarlet Halls.
Defeat the Scarlet Forces |q 86843/1
step
talk Alonsus Faol##237602
turnin Light Miswielded##86843 |goto Scarlet Halls Arator/0 41.42,28.87
turnin Light Repurposed##86844 |goto Scarlet Halls Arator/0 41.42,28.87
accept Infusion of Hope##92136 |goto Scarlet Halls Arator/0 41.42,28.87
step
talk Alonsus Faol##237602
Select _"<Tell Alonsus you are ready to return to Silvermoon.>"_ |gossip 132903
Tell Alonsus You're Ready to Depart |q 92136/1 |goto Scarlet Halls Arator/0 41.42,28.87
step
Watch the dialogue
click Borrowed Portal
Take the Portal to Silvermoon |q 92136/2 |goto Scarlet Halls Arator/0 40.93,28.86
step
talk Alonsus Faol##251355
turnin Infusion of Hope##92136 |goto Isle of Quel Danas M/0 52.55,55.88
accept Relinquishing Relics##86902 |goto Isle of Quel Danas M/0 52.55,55.88
step
talk Taelia Fordragon##248323
|tip Inside the building.
Select _"I have a relic to sustain you. It's Mara Fordragon's prayer book."_ |gossip 134818
Give a Relic to Taelia |q 86902/2 |goto Isle of Quel Danas M/0 52.94,45.79
step
talk Valunei##248326
|tip Inside the building.
Select _"Vindicator Maraad found peace and strength from this meditation crystal."_ |gossip 134855
Give a Relic to Valunei |q 86902/3 |goto Isle of Quel Danas M/0 53.45,45.30
step
talk Salandria##248322
|tip Inside the building.
Select _"Take this sword. It has a great deal of Light within it, but needs a new cause."_ |gossip 134853
Give a Relic to Salandria |q 86902/4 |goto Isle of Quel Danas M/0 52.05,45.62
step
talk Mehlar Dawnblade##248321
|tip Inside the building.
Select _"This is Uther's kit from his work as a healer. You should have it, and let its Light support you."_ |gossip 134854
Give a Relic to Mehlar |q 86902/5 |goto Isle of Quel Danas M/0 51.69,44.95
step
talk Prophet Velen##239623
|tip Inside the building.
Select _"<Give Velen the remaining relics to distribute.>"_ |gossip 136038
Give the Remaining Relics to Velen |q 86902/6 |goto Isle of Quel Danas M/0 52.48,45.87
step
talk Alonsus Faol##251355
turnin Relinquishing Relics##86902 |goto Isle of Quel Danas M/0 52.55,55.89
accept The Sunwalker Path##86845 |goto Isle of Quel Danas M/0 52.55,55.89
step
talk Alonsus Faol##251355
Select _"<Tell Faol you are ready to go to Hammerfall.>"_ |gossip 135480
Tell Alonsus You're Ready to Depart |q 86845/1 |goto Isle of Quel Danas M/0 52.55,55.89
step
Watch the dialogue
click Borrowed Portal
Take the Portal to Hammerfall |q 86845/2 |goto Isle of Quel Danas M/0 52.50,55.98
step
talk Sunwalker Dezco##245186
turnin The Sunwalker Path##86845 |goto Arathi Highlands/0 68.92,37.68
accept A Humble Servant##91000 |goto Arathi Highlands/0 68.92,37.68
accept Resupplying our Suppliers##86846 |goto Arathi Highlands/0 68.92,37.68
stickystart "Aid_Hammerfall"
step
talk Jun'ha##232033
|tip Inside the building.
Select _"Dezco sent these supplies for you."_ |gossip 134006
Deliver the Tailoring Supplies for Jun'ha |q 86846/1 |goto Arathi Highlands/0 68.06,37.73
step
talk Tunkk##232036
|tip Inside the building.
Select _"Dezco sent these supplies for you."_ |gossip 134008
Deliver the Leatherworking Supplies for Tunkk |q 86846/3 |goto Arathi Highlands/0 70.06,35.60
step
talk Slagg##232031
Select _"Dezco sent these supplies for you."_ |gossip 134003
Deliver the Butcher Supplies for Slagg |q 86846/2 |goto Arathi Highlands/0 69.17,34.85
step
talk Keena##232035
Select _"Dezco sent these supplies for you."_ |gossip 138704
Deliver the Trade Goods for Keena |q 86846/5 |goto Arathi Highlands/0 69.26,33.42
step
talk Mu'uta##232037
Select _"Dezco sent these supplies for you."_ |gossip 134042
Deliver the Bowyer Supplies for Mu'uta |q 86846/4 |goto Arathi Highlands/0 68.34,31.87
step
label "Aid_Hammerfall"
clicknpc Injured Peon##245257+
|tip Sitting orcs.
click Various Objects
|tip You may be attacked.
Aid Hammerfall |q 91000/1 |goto Arathi Highlands/0 68.68,35.17
step
talk Sunwalker Dezco##247299
turnin A Humble Servant##91000 |goto Arathi Highlands/0 68.54,32.20
turnin Resupplying our Suppliers##86846 |goto Arathi Highlands/0 68.54,32.20
accept Gathering Plowshares##89338 |goto Arathi Highlands/0 68.54,32.20
stickystart "Collect_Forgotten_Skullcleavers"
step
click Fallen Longsword+
|tip Swords stuck in the ground.
collect 4 Fallen Longsword##238516 |q 89338/2 |goto Arathi Highlands/0 67.03,43.37
step
label "Collect_Forgotten_Skullcleavers"
click Forgotten Skullcleaver+
|tip Axes stuck in the ground.
collect 4 Forgotten Skullcleaver##238515 |q 89338/3 |goto Arathi Highlands/0 67.03,43.37
step
talk Sunwalker Dezco##247299
turnin Gathering Plowshares##89338 |goto Arathi Highlands/0 68.54,32.20
step
talk Alonsus Faol##240747
accept One Final Relic##86822 |goto Arathi Highlands/0 68.65,32.03
step
talk Alonsus Faol##240747
Select _"Let's fly to Blackrock."_ |gossip 132918
Let Alonsus Know You Are Ready |q 86822/1 |goto Arathi Highlands/0 68.65,32.03
step
Watch the dialogue
talk Alonsus Faol##246863
Select _"What are we here for?"_ |gossip 138706 |noautogossip
Speak with Alonsus Faol |q 86822/2 |goto Burning Steppes/0 33.40,48.28
step
talk Danath Trollbane##242120
turnin One Final Relic##86822 |goto Burning Steppes/0 33.45,48.62
step
talk Eitrigg##237224
accept The Dark Horde##86823 |goto Burning Steppes/0 33.54,48.62
accept None Left Standing##86824 |goto Burning Steppes/0 33.54,48.62
accept Faithful Servant, Faithless Cause##86825 |goto Burning Steppes/0 33.54,48.62
stickystart "Burn_Dark_Horde_Banners"
stickystart "Slay_Blackrock_Soldiers"
step
kill Mar'kag##245718 |q 86825/1 |goto Burning Steppes/0 37.45,54.55
|tip Armored ogre.
|tip Walks around.
|tip On your minimap.
Recover the Relic Fragment |q 86825/2 |goto Burning Steppes/0 37.45,54.55
|tip Loot him.
He spawns at [Burning Steppes/0 30.79,53.98]
step
label "Burn_Dark_Horde_Banners"
use Torch##239130
|tip On Dark Horde Banners.
|tip Wooden poles with red flags.
|tip On your minimap. |notinsticky
Burn #6# Dark Horde Banners |q 86824/1 |goto Burning Steppes/0 37.56,52.58
step
label "Slay_Blackrock_Soldiers"
kill Blackrock Slayer##7027, Blackrock Sorcerer##7026, Firegut Reaver##48120, Smolderthorn Shaman##48118
Slay #16# Blackrock Soldiers |q 86823/1 |goto Burning Steppes/0 37.39,53.84
step
talk Eitrigg##237224
turnin The Dark Horde##86823 |goto Burning Steppes/0 33.53,48.63
turnin None Left Standing##86824 |goto Burning Steppes/0 33.53,48.63
turnin Faithful Servant, Faithless Cause##86825 |goto Burning Steppes/0 33.53,48.63
accept Still Scouting##91391 |goto Burning Steppes/0 33.53,48.63
step
talk Kurdran Wildhammer##237268
|tip On the bridge.
turnin Still Scouting##91391 |goto Burning Steppes/0 21.13,39.80
accept Due Recognition##86827 |goto Burning Steppes/0 21.13,39.80
accept Nagosh the Scarred##86826 |goto Burning Steppes/0 21.13,39.80
accept Disarm the Dark Horde##91842 |goto Burning Steppes/0 21.13,39.80
stickystart "Destroy_Weapon_Racks"
stickystart "Collect_Stone_Guards_Badges"
step
Enter Blackrock Mountain |goto Burning Steppes/0 20.98,37.84 < 15 |walk |only if not (subzone("Blackrock Mountain") or subzone("The Molten Span"))
kill Nagosh the Scarred##245719 |q 86826/1 |goto Burning Steppes/14 65.63,54.14
|tip Walks around.
|tip On your minimap.
|tip Inside Blackrock Mountain.
Recover the Relic Fragment |q 86826/2 |goto Burning Steppes/14 65.63,54.14
|tip Loot him.
step
label "Destroy_Weapon_Racks"
click Dark Horde Weapon Rack+
|tip Inside Blackrock Mountain. |notinsticky
Destroy #8# Weapon Racks |q 91842/1 |goto Burning Steppes/14 45.91,80.05
step
label "Collect_Stone_Guards_Badges"
kill Dark Horde Warrior##237322, Hulking Crusher##237548
|tip Inside Blackrock Mountain. |notinsticky
collect 8 Stone Guard's Badge##247218 |q 86827/1 |goto Burning Steppes/14 45.91,80.05
step
Leave Blackrock Mountain |goto Burning Steppes/14 51.28,95.68 < 15 |walk |only if (subzone("Blackrock Mountain") or subzone("The Molten Span"))
talk Kurdran Wildhammer##237268
|tip On the bridge.
turnin Due Recognition##86827 |goto Burning Steppes/0 21.13,39.80
turnin Nagosh the Scarred##86826 |goto Burning Steppes/0 21.13,39.80
turnin Disarm the Dark Horde##91842 |goto Burning Steppes/0 21.13,39.80
accept Not Just a Troll's Bane##86828 |goto Burning Steppes/0 21.13,39.80
step
talk Danath Trollbane##242120
turnin Not Just a Troll's Bane##86828 |goto Burning Steppes/0 31.57,37.60
accept Warriors without a Warlord##86831 |goto Burning Steppes/0 31.57,37.60
accept A True Horde of Dark Horde##86830 |goto Burning Steppes/0 31.57,37.60
stickystart "Defeat_Dark_Horde_Sergeants"
stickystart "Defeat_Dark_Horde_Troops"
step
kill Warlord Grazla##242343
|tip Walks around.
|tip Inside the building.
Defeat the Dark Horde Leader |q 86831/1 |goto Burning Steppes/0 31.08,34.00
Recover the Third Fragment |q 86831/2 |goto Burning Steppes/0 31.08,34.00
|tip Loot her.
step
label "Defeat_Dark_Horde_Sergeants"
kill Blackrock Sergeant##48201+
|tip Orcs riding wolves.
Defeat #3# Dark Horde Sergeants |q 86830/2 |goto Burning Steppes/0 36.20,36.62
step
label "Defeat_Dark_Horde_Troops"
kill Dark Horde Trainee##248160, Firegut Apprentice##248159, Smolderthorn Cadet##248158
Defeat #15# Dark Horde Troops |q 86830/1 |goto Burning Steppes/0 36.20,36.62
step
talk Danath Trollbane##242120
turnin Warriors without a Warlord##86831 |goto Burning Steppes/0 31.58,37.60
turnin A True Horde of Dark Horde##86830 |goto Burning Steppes/0 31.58,37.60
accept A Landmark Moment##86829 |goto Burning Steppes/0 31.58,37.60
step
talk Alonsus Faol##248263
turnin A Landmark Moment##86829 |goto Burning Steppes/0 36.83,51.03
step
talk Kurdran Wildhammer##248250
accept Unstoppable Force##91726 |goto Burning Steppes/0 36.78,51.08
step
talk Kurdran Wildhammer##248250
Select _"What happened?"_ |gossip 134709
Ask Kurdran What Happened |q 91726/1 |goto Burning Steppes/0 36.78,51.08
step
talk Arator##237508
Select _"<Ask Arator how he is doing.>"_ |gossip 136312
Check on Arator |q 91726/2 |goto Burning Steppes/0 36.71,51.09
step
talk Kurdran Wildhammer##248250
turnin Unstoppable Force##91726 |goto Burning Steppes/0 36.78,51.08
step
talk Arator##237508
accept A Worthy Forge##86832 |goto Burning Steppes/0 36.70,51.09
step
Watch the dialogue
click Borrowed Portal
Take the Portal to Silvermoon |q 86832/1 |goto Burning Steppes/0 36.77,50.87
step
talk Alonsus Faol##237511
turnin A Worthy Forge##86832 |goto Silvermoon City M/0 45.77,65.48
accept A Bulwark Remade##86833 |goto Silvermoon City M/0 45.77,65.48
step
talk Arator##237510
Select _"I'm ready!"_ |gossip 133121
Speak with Arator |q 86833/1 |goto Silvermoon City M/0 40.47,66.01
step
Watch the dialogue
|tip Follow Arator's instructions.
|tip Click the objects nearby.
Assist Arator in Reforging |q 86833/2 |goto Silvermoon City M/0 40.47,66.01
step
talk Arator##237510
Select _"<Ask Arator how he is.>"_ |gossip 136359
Watch the dialogue
Check on Arator |q 86833/3 |goto Silvermoon City M/0 40.47,66.01
step
talk Arator##237510
turnin A Bulwark Remade##86833 |goto Silvermoon City M/0 40.47,66.01
step
talk Kurdran Wildhammer##253125
accept The Arcantina##86903 |goto Silvermoon City M/0 40.70,66.06
step
use Key to the Arcantina##248131
Teleport to the Arcantina |q 86903/1
step
talk Bartender Bob##250495
buy A Round of Drinks##254838 |n
Buy a Round |q 86903/2 |goto Arcantina/0 62.72,67.02
step
click Drink+
|tip Yellow mugs.
Serve #4# Drinks |q 86903/3 |goto Arcantina/0 50.64,58.66
|tip You may need to relog or wait for this objective to become available.
step
talk Arator##237502
Select _"What are you going to do with the shield?"_ |gossip 134861 |noautogossip
Watch the dialogue
Speak with Arator |q 86903/4 |goto Arcantina/0 52.02,60.43
step
talk Arator##253988
turnin The Arcantina##86903 |goto Arcantina/0 52.02,60.43
accept The Journey Ends##91787 |goto Arcantina/0 52.02,60.43
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin The Journey Ends##91787 |goto Silvermoon City M/0 45.44,70.34
step
talk Commander Koruth Mountainfist##248631
|tip Upstairs inside the building.
accept Deepening Shadows##91854 |goto Silvermoon City M/0 45.37,70.14
|tip If this quest is not offered, skip this step.
stickystart "Rebuff_Doomsayers"
step
talk Sin'dorei Fruit Vendor##249174
Select _"<Explain the events of the Sunwell.>"_ |gossip 135112
De-escalate the City Dispute |q 91854/1 |goto Silvermoon City M/0 47.18,59.33
|only if haveq(91854) or completedq(91854)
step
talk Commander Venel Lightblood##248630
Select _"Why are you seizing people?"_ |gossip 135203
Select _"Arresting citizens is not why the Vanguard are here."_ |gossip 135204
Release the Prisoner |q 91854/2 |goto Silvermoon City M/0 45.77,81.61
|only if haveq(91854) or completedq(91854)
step
label "Rebuff_Doomsayers"
talk Doomsayer##248826+
|tip Blood elves in red robes wearing wooden signs.
Select _"<Hail the victories of the Vanguard and sin'dorei you have seen so far.>"_ |gossip 135052
|tip They may attack you.
Rebuff #5# Doomsayers |q 91854/3 |goto Silvermoon City M/0 42.10,70.33
|only if haveq(91854) or completedq(91854)
step
talk Commander Koruth Mountainfist##248631
|tip Upstairs inside the building.
turnin Deepening Shadows##91854 |goto Silvermoon City M/0 45.37,70.14
|only if haveq(91854) or completedq(91854)
step
|next "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Midnight Intro & Campaign (Full Zone)" |only if level < 90
|next "Leveling Guides\\Midnight (80-90)\\The War of Light and Shadow Campaign" |only if level >= 90
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Voidstorm (Full Zone)",{
condition_valid=function() return (level >= 83 and completedq(86522)) or achieved(42045) end,
condition_valid_msg="You must earn the Midnight achievement by completing the story only campaign and hitting 90 once or reach at least level 83 and complete the Voidstorm campaign quest Friend or Fiend before you can access Sojourner quests. Completing the Voidstorm campaign is required for full quest access.",
},[[
step
Click the Complete Quest Box
turnin Adventuring in Midnight##94993
|only if readyq(94993)
step
Watch the dialogue
talk Magister Umbric##235386
|tip Upstairs inside the building.
turnin Voidstorm##89388 |goto Silvermoon City M/0 45.31,70.17 |only if haveq(89388) or completedq(89388)
accept Magisters' Terrace: Homecoming##86543 |goto Silvermoon City M/0 45.31,70.17
|only if haveq(89388) or completedq(89388)
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
accept Rising Storm##92061 |goto Silvermoon City M/0 45.44,70.34
step
talk High Exarch Turalyon##250580
|tip Up on the platform.
Select _"Lor'themar requires a report."_ |gossip 135523
Consult High Exarch Turalyon |q 92061/1 |goto Silvermoon City M/0 38.77,47.00
step
talk General Amias Bellamy##250587
Select _"Lor'themar requires a report."_ |gossip 135530
Consult the Vanguard of the Light |q 92061/2 |goto Silvermoon City M/0 45.65,46.41
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Rising Storm##92061 |goto Silvermoon City M/0 45.45,70.34
step
talk Magister Umbric##235386
|tip Upstairs inside the building.
accept Magisters' Terrace: Homecoming##86543 |goto Silvermoon City M/0 45.31,70.16
step
Meet Magister Umbric on the Isle of Quel'Danas |q 86543/1 |goto Isle of Quel Danas M/0 62.11,14.55
step
talk Magister Umbric##235395
Select _"<Tell Umbric you'd like to enter Magisters' Terrace with assistance.>"_ |gossip 131939
Talk to Umbric to Queue for the Follower Dungeon |q 86543/2 |goto Isle of Quel Danas M/0 62.11,14.55
step
Retrieve the Cynosure of Twilight from Magisters' Terrace |q 86543/3
|tip Complete the follower dungeon.
step
Leave the Follower Dungeon |complete not zone("Magisters Terrace M") |q 86543
step
talk Magister Umbric##235405
turnin Magisters' Terrace: Homecoming##86543 |goto Silvermoon City M/0 35.15,65.85
accept No Fear of the Dark##86549 |goto Silvermoon City M/0 35.15,65.85
step
click Shadow Focus
Begin Calibrating the Shadow Focus |havebuff Calibrating##1232060 |goto Silvermoon City M/0 35.01,65.45 |q 86549
step
click Shadow Focus
Connect the Shadow Focus |q 86549/1 |goto Silvermoon City M/0 35.42,65.12 |count 1 hidden
step
click Shadow Focus
Begin Calibrating the Shadow Focus |havebuff Calibrating##1232059 |goto Silvermoon City M/0 35.42,65.12 |q 86549
step
click Shadow Focus
Connect the Shadow Focus |q 86549/1 |goto Silvermoon City M/0 35.44,66.00 |count 2 hidden
step
click Shadow Focus
Begin Calibrating the Shadow Focus |havebuff Calibrating##1232058 |goto Silvermoon City M/0 35.44,66.00 |q 86549
step
click Shadow Focus
Connect the Shadow Focus |q 86549/1 |goto Silvermoon City M/0 35.01,65.45 |count 3 hidden
step
click Portal to Voidstorm
Enter the Portal |q 86549/3 |goto Silvermoon City M/0 35.28,66.18
step
talk Magister Umbric##235411
turnin No Fear of the Dark##86549 |goto Voidstorm/0 34.25,60.45
accept Save a Piece of Mind##86558 |goto Voidstorm/0 34.25,60.45
step
Watch the dialogue
talk Lothraxion##235486
accept A Matter of Strife and Death##86557 |goto Voidstorm/0 34.37,60.53
stickystart "Slay_Ingress_Monsters"
step
click Shadestar Locus
Activate the Shadestar Locus |q 86558/1 |goto Voidstorm/0 34.67,58.78 |count 1 hidden
step
talk Researcher Verigien##248040
accept Message to the Molt##91557 |goto Voidstorm/0 35.48,58.78
step
talk Kelia Everglow##242700
accept Scholarly Pursuits##88755 |goto Voidstorm/0 35.79,58.62
step
click Shadestar Locus
Activate the Shadestar Locus |q 86558/1 |goto Voidstorm/0 36.21,57.98 |count 2 hidden
step
talk Lysikas##254510
accept The Brewing Storm##92657 |goto Voidstorm/0 36.03,59.87
step
click Shadestar Locus
Activate the Shadestar Locus |q 86558/1 |goto Voidstorm/0 36.21,60.11 |count 3 hidden
step
label "Slay_Ingress_Monsters"
kill Cunning Harrower##235416, Hungry Kilivore##235415, Hungry Kilivore##242369, Ravenous Shredclaw##235414
Slay #12# Ingress Monsters |q 86557/1 |goto Voidstorm/0 35.35,59.50
step
talk Riftwalker Alayshen##253038
accept It's Not Just a Rock!##92939 |goto Voidstorm/0 36.90,58.54
step
talk Lothraxion##235522
turnin Save a Piece of Mind##86558 |goto Voidstorm/0 36.95,58.65
turnin A Matter of Strife and Death##86557 |goto Voidstorm/0 36.95,58.65
accept The Far, Far Frontier##86559 |goto Voidstorm/0 36.95,58.65
step
talk Lothraxion##235522
Select _"<Tell Lothraxion you're ready to survey Voidstorm.>"_ |gossip 132585
Watch the dialogue
Survey Voidstorm |q 86559/1 |goto Voidstorm/0 36.95,58.65
step
talk Alleria Windrunner##235521
Select _"<Ask Alleria how you can help.>"_ |gossip 132609
Speak with Alleria |q 86559/2 |goto Voidstorm/0 36.94,58.75
step
kill Gluttonous Ultradon##257955, Gluttonous Ultradon##259099, Voidcraven Consumptor##255511
collect 6 Ancient Rubble##260363 |q 92939/1 |goto Voidstorm/0 38.56,58.76
step
talk Riftwalker Alayshen##253038
turnin It's Not Just a Rock!##92939 |goto Voidstorm/0 40.19,56.14
accept Sifting Through Void##92944 |goto Voidstorm/0 40.19,56.14
step
Enter the Stellar Vortex |q 92944/1 |goto Voidstorm/0 40.21,56.77
|tip Walk into the portal.
step
Collect #10# Anomalous Residue |q 92944/2 |goto Voidstorm/0 39.61,58.03
|tip Float through the {o}blue circles{}.
|tip Enter the {o}blue portals{} on the ground.
|tip Launches you back up.
step
talk Riftwalker Alayshen##253038
turnin Sifting Through Void##92944 |goto Voidstorm/0 40.19,56.14
accept Buried In the Dark##92946 |goto Voidstorm/0 40.19,56.14
step
Enter the Northernmost Stellar Vortex |q 92946/1 |goto Voidstorm/0 40.22,56.76
|tip Walk into the portal.
step
click Ancient Tablet
|tip Inside the cave.
Select _"<Ask Alayshen what he thinks.>"_ |gossip 138319
Watch the dialogue
Read the Tablet of Empire |q 92946/2 |goto Voidstorm/0 38.71,58.78
step
click Ancient Tablet
|tip Downstairs inside the cave.
Select _"<Ask Alayshen what he thinks.>"_ |gossip 138332
Watch the dialogue
Read the Tablet of Conquest |q 92946/3 |goto Voidstorm/0 39.34,57.89
step
click Ancient Tablet
|tip Downstairs inside the cave.
Select _"<Ask Alayshen what he thinks.>"_ |gossip 138333
Watch the dialogue
Read the Tablet of Annihilation |q 92946/4 |goto Voidstorm/0 39.68,58.32
step
click Ancient Tablet
|tip Downstairs inside the cave.
Return to Alayshen |complete not (subzone("Consumptor Cave") and indoors()) |goto Voidstorm/0 39.38,58.36 |q 92946
step
talk Riftwalker Alayshen##253038
turnin Buried In the Dark##92946 |goto Voidstorm/0 40.19,56.14
accept In Over My Head##92948 |goto Voidstorm/0 40.19,56.14
step
Enter the Northernmost Stellar Vortex |q 92948/1 |goto Voidstorm/0 40.22,56.76
|tip Walk into the portal.
step
kill Akintunde the Unstoppable##255680 |q 92948/2 |goto Voidstorm/0 39.66,55.85
|tip Inside the cave.
step
click Alayshen's Portal
|tip Inside the cave.
Return to Alayshen |complete not (subzone("Quiet Cavern") and indoors()) |goto Voidstorm/0 39.60,56.18 |q 92948
step
talk Riftwalker Alayshen##253038
turnin In Over My Head##92948 |goto Voidstorm/0 37.06,58.97
step
talk Lysikas##254509
turnin The Brewing Storm##92657 |goto Voidstorm/0 26.34,68.42
accept Tactical Acquisition##92658 |goto Voidstorm/0 26.34,68.42
accept Materiel Destruction##92659 |goto Voidstorm/0 26.34,68.42
stickystart "Gather_Void_Energy"
step
click Void Condenser+
|tip Various shaped objects.
|tip On your minimap.
Destroy #6# Void Condensers |q 92659/1 |goto Voidstorm/0 30.37,63.84
step
label "Gather_Void_Energy"
kill Laboring Voidwalker##252732, Ragged Siphoner##252733, Scavenging Voidspawn##252734, Seething Overseer##252731
|tip Loot them.
click Various Objects
Gather Void Energy |q 92658/1 |goto Voidstorm/0 30.37,63.84
step
talk Lysikas##252947
turnin Tactical Acquisition##92658 |goto Voidstorm/0 35.68,66.85
turnin Materiel Destruction##92659 |goto Voidstorm/0 35.68,66.85
accept Null Implements##92660 |goto Voidstorm/0 35.68,66.85
step
talk Riftblade Maella##252949
accept Hammer Meet Anvil##92661 |goto Voidstorm/0 35.72,66.90
stickystart "Slay_Stormarion_Keep_Forces"
step
click Null Stabilizer
collect Null Stabilizer##257729 |q 92660/1 |goto Voidstorm/0 33.53,67.74
step
click Voidway Energist
collect Voidway Energist##257730 |q 92660/2 |goto Voidstorm/0 32.88,67.57
step
kill Telumnus##248872 |q 92661/1 |goto Voidstorm/0 32.51,70.55
|tip Inside the building.
step
click Singularity Forceps
|tip Inside the building.
collect Singularity Forceps##257731 |q 92660/3 |goto Voidstorm/0 32.33,70.99
step
label "Slay_Stormarion_Keep_Forces"
kill Clotted Creepling##258333, Stormarion Artificer##252736, Stormarion Attendant##252739, Stormarion Subjugator##252737
Slay #8# Stormarion Keep Forces |q 92661/2 |goto Voidstorm/0 33.71,68.63
step
talk Lysikas##254515
turnin Null Implements##92660 |goto Voidstorm/0 31.19,68.27
step
talk Riftblade Maella##254513
turnin Hammer Meet Anvil##92661 |goto Voidstorm/0 31.19,68.20
accept Core Collapse##92662 |goto Voidstorm/0 31.19,68.20
step
click Defense Position
Place the Defenses |q 92662/1 |goto Voidstorm/0 31.57,68.42 |count 1 hidden
step
click Defense Position
Place the Defenses |q 92662/1 |goto Voidstorm/0 31.69,68.26 |count 2 hidden
step
click Defense Position
Place the Defenses |q 92662/1 |goto Voidstorm/0 31.72,68.50 |count 3 hidden
step
click Defense Position
Place the Defenses |q 92662/1 |goto Voidstorm/0 31.58,68.66 |count 4 hidden
step
click Singularity Stabilization Tools
Begin the Stabilization |q 92662/2 |goto Voidstorm/0 31.18,68.23
step
Defend Yourself |q 92662/3 |goto Voidstorm/0 31.79,69.50
|tip Shoot the enemies on the bridge.
step
Watch the dialogue
talk Riftblade Maella##254513
turnin Core Collapse##92662 |goto Voidstorm/0 31.19,68.20
step
talk Lothraxion##235530
turnin The Far, Far Frontier##86559 |goto Voidstorm/0 31.28,54.40
accept Dancing with Death##86562 |goto Voidstorm/0 31.28,54.40
step
talk Alleria Windrunner##235532
accept A Strange, Different World##86561 |goto Voidstorm/0 31.34,54.34
stickystart "Collect_Shadowgraft_Fragments"
step
kill Scytheryp the Slicer##243142 |q 86562/3 |goto Voidstorm/0 27.84,53.53
step
kill Vathen the Rebel##243141 |q 86562/2 |goto Voidstorm/0 26.10,53.17
step
kill Voidgrasper##243140 |q 86562/1 |goto Voidstorm/0 28.06,50.33
step
label "Collect_Shadowgraft_Fragments"
kill Clawing Voidwalker##235561, Duskcry Voidwalker##235560, Hovering Siphoid##235563, Lurking Creepling##235564, Scytheryp the Slicer##243142, Sundereth the Caller##244272, Towering Ultradon##238409, Vathen the Rebel##243141, Voidgrasper##243140, Whipwind Shredclaw##238369
collect 12 Shadowgraft Fragment##242390 |q 86561/1 |goto Voidstorm/0 28.76,52.56
step
talk Lothraxion##235535
turnin Dancing with Death##86562 |goto Voidstorm/0 27.44,50.96
turnin A Strange, Different World##86561 |goto Voidstorm/0 27.44,50.96
accept No Prayer for the Wicked##86565 |goto Voidstorm/0 27.44,50.96
step
click Grafting Metal
Watch the dialogue
Modify the Shadowgraft Fragments |q 86565/1 |goto Voidstorm/0 27.44,51.02
step
kill Sinewshredder##235570 |q 86565/2 |goto Voidstorm/0 26.22,51.54
|tip Up on the platform.
step
click Stellar Vortex
Pursue Domanaar Through the Stellar Vortex |q 86565/3 |goto Voidstorm/0 26.40,51.16
step
talk Lady Darkglen##247664
turnin Message to the Molt##91557 |goto Voidstorm/0 35.90,48.28
accept Pestilent Petals##91558 |goto Voidstorm/0 35.90,48.28
accept Virulent Vermin##91559 |goto Voidstorm/0 35.90,48.28
stickystart "Collect_Mature_Blood_Petals"
step
kill Ambush Consumptor##248038, Kilivore Hunter##248025, Steeljaw Trigore##253165
collect 6 Specialized Liver##251905 |q 91559/1 |goto Voidstorm/0 34.94,47.00
step
label "Collect_Mature_Blood_Petals"
click Mature Blood Petal+
|tip Large pink flowers.
collect 10 Mature Blood Petal##251902 |q 91558/1 |goto Voidstorm/0 35.12,47.16
step
talk Lady Darkglen##247674
turnin Pestilent Petals##91558 |goto Voidstorm/0 34.62,43.79
turnin Virulent Vermin##91559 |goto Voidstorm/0 34.62,43.79
accept Expunging Explorers##91560 |goto Voidstorm/0 34.62,43.79
step
click Mature Blood Petal
Mull the Blood Petals |q 91560/1 |goto Voidstorm/0 34.57,43.84
step
click Specialized Liver
Pulverize the Livers |q 91560/2 |goto Voidstorm/0 34.61,43.85
step
click Blocciniux's Cooking Pot
Mix the Concoction |q 91560/3 |goto Voidstorm/0 34.60,43.81
step
clicknpc Infected Scout Philanas##248001
Administer the Antidode |q 91560/4 |goto Voidstorm/0 34.66,43.87
step
Watch the dialogue
talk Scout Philanas##254402
accept Calculated Culling##93801 |goto Voidstorm/0 34.66,43.87
stickystart "Slay_Monsters_in_The_Molt"
step
clicknpc Infected Ren'dorei Scout##248000+
|tip Dazed friendly humanoids.
|tip On your minimap.
Cure #6# Ren'dorei Scouts |q 91560/5 |goto Voidstorm/0 33.72,46.68
step
clicknpc Riftwalker Lorn##248039
Cure Riftwalker Lorn |q 91560/6 |goto Voidstorm/0 33.29,43.97
step
label "Slay_Monsters_in_The_Molt"
kill Netherwasp Drone##253620, Rampaging Ultradon##258226, Sanguineous Blistercreep##253128
Slay Monsters in the Molt |q 93801/1 |goto Voidstorm/0 33.00,45.64
step
talk Lady Darkglen##247674
turnin Expunging Explorers##91560 |goto Voidstorm/0 34.62,43.79
turnin Calculated Culling##93801 |goto Voidstorm/0 34.62,43.79
accept Bloodborne Pathogen##91561 |goto Voidstorm/0 34.62,43.79
step
kill Mutated Pathogen##247672 |q 91561/1 |goto Voidstorm/0 32.19,44.62
step
talk Lady Darkglen##247674
turnin Bloodborne Pathogen##91561 |goto Voidstorm/0 34.62,43.79
step
talk Lothraxion##235606
turnin No Prayer for the Wicked##86565 |goto Voidstorm/0 35.37,59.09
accept Reliable Enemies##86536 |goto Voidstorm/0 35.37,59.09
step
talk Decimus##235607
Select _"<Apply force.>"_ |gossip 132998 |noautogossip
kill Decimus##235607
Interrogate Decimus |q 86536/1 |goto Voidstorm/0 35.37,58.99
step
talk Severenar Stargazer##240683
fpath The Ingress |goto Voidstorm/0 36.91,58.98
step
Watch the dialogue
talk Matrean Dawnfall##236908
turnin Scholarly Pursuits##88755 |goto Voidstorm/0 41.14,61.54
accept A Bigger Beast##87388 |goto Voidstorm/0 41.14,61.54
step
talk Kelia Everglow##236930
accept Sampling the Local Fare##87391 |goto Voidstorm/0 41.16,61.50
stickystart "Collect_Exotic_Tissue_Samples"
step
kill 8 Vicious Karion##238476 |q 87388/1 |goto Voidstorm/0 41.22,65.44
|tip Spiders with wings.
step
label "Collect_Exotic_Tissue_Samples"
kill Hulking Ultradon##243245, Hulking Ultradon##243281, Restless Consumptor##238504, Restless Consumptor##241153, Seething Shredclaw##238488, Seething Shredclaw##243264, Vicious Karion##238476
collect 30 Exotic Tissue Sample##235632 |q 87391/1 |goto Voidstorm/0 41.22,65.44
step
talk Matrean Dawnfall##236908
turnin A Bigger Beast##87388 |goto Voidstorm/0 41.14,61.54
step
click Exotic Tissue Samples
Place the Tissue Samples on the Table |q 87391/2 |goto Voidstorm/0 41.13,61.52
step
Watch the dialogue
talk Kelia Everglow##236930
turnin Sampling the Local Fare##87391 |goto Voidstorm/0 41.16,61.49
accept Void is in the Air##87672 |goto Voidstorm/0 41.16,61.49
step
talk Matrean Dawnfall##236908
accept Yolks on You##88653 |goto Voidstorm/0 41.14,61.54
stickystart "Squish_Blistercreep_Eggs"
step
Enter the the first underground cave |goto Voidstorm/0 41.05,64.10 < 15 |walk
click Void Surge
|tip You will be attacked.
|tip Inside the underground cave.
Test the First Void Surge |q 87672/1 |goto Voidstorm/0 40.02,65.12 |count 1 hidden
step
Enter the second underground cave |goto Voidstorm/0 42.01,64.65 < 10 |walk
click Void Surge
|tip You will be attacked.
|tip Inside the underground cave.
Test the Second Void Surge |q 87672/1 |goto Voidstorm/0 41.34,63.82 |count 2 hidden
step
Enter the third underground cave |goto Voidstorm/0 41.56,66.13 < 15 |walk
click Void Surge
|tip You will be attacked.
|tip Inside the underground cave.
Test the Third Void Surge |q 87672/1 |goto Voidstorm/0 40.39,66.47 |count 3 hidden
step
label "Squish_Blistercreep_Eggs"
Squish #15# Blistercreep Eggs |q 88653/1 |goto Voidstorm/0 41.56,66.13
|tip Large grey and blue eggs.
|tip Walk on them.
|tip Inside the underground caves. |notinsticky
You can find more cave entrances at: |notinsticky
[Voidstorm/0 41.56,65.18]
[Voidstorm/0 42.01,64.65]
[Voidstorm/0 42.24,63.49]
[Voidstorm/0 41.05,64.10]
step
talk Matrean Dawnfall##236908
turnin Yolks on You##88653 |goto Voidstorm/0 41.14,61.54
step
talk Kelia Everglow##236930
turnin Void is in the Air##87672 |goto Voidstorm/0 41.16,61.50
accept Violent Conclusions##88708 |goto Voidstorm/0 41.16,61.50
step
talk Matrean Dawnfall##236908
Select _"<Urge Matrean to give up his search and return to the Ingress.>"_ |gossip 132965
Watch the dialogue
Convince Matrean to Leave |q 88708/1 |goto Voidstorm/0 41.14,61.54
step
Enter the underground cave |goto Voidstorm/0 39.05,67.09 < 10 |walk |only if not (subzone("Underground Burrows") and indoors())
kill Matrean the Void-Consumed##239598 |q 88708/2 |goto Voidstorm/0 39.38,68.33
|tip Floats around.
|tip Inside the underground cave.
step
talk Kelia Everglow##236930
turnin Violent Conclusions##88708 |goto Voidstorm/0 41.16,61.50
step
Meet Up at the Overlook Above the Ethereum Refinery |q 86536/2 |goto Voidstorm/0 36.72,72.93
step
talk Decimus##235392
Select _"How did Xal'atath take control of the ethereals?"_ |gossip 135469
Talk to Decimus |q 86536/3 |goto Voidstorm/0 36.72,72.93
step
talk Alleria Windrunner##235389
turnin Reliable Enemies##86536 |goto Voidstorm/0 36.64,72.97
accept Work Disruption##86531 |goto Voidstorm/0 36.64,72.97
step
talk Lothraxion##235394
accept First, The Shells##86530 |goto Voidstorm/0 36.72,73.07
stickystart "Collect_Empty_Manacells"
stickystart "Disrupt_The_Manaforge"
step
kill Manaforge Netherdrifter##236859, Manaforge Siphoner##236857
|tip Siphoners and Netherdrifters.
|tip Loot them.
accept A Cracked Holokey##86528 |goto Voidstorm/0 36.12,76.21
step
label "Collect_Empty_Manacells"
kill Manaforge Netherdrifter##236859, Manaforge Siphoner##236857, Manaforge Warder##237886, Recommissioned Mech##238581
collect 5 Empty Manacell##237380 |q 86530/1 |goto Voidstorm/0 36.12,76.21
step
label "Disrupt_The_Manaforge"
kill Devouring Enforcer##236860, Manaforge Netherdrifter##236859, Manaforge Siphoner##236857, Manaforge Warder##237886, Netherbreaker##241040, Recommissioned Mech##238581
clicknpc Unraveling Captive##235710+
|tip Friendly NPCs in bubbles.
click Various Objects
Disrupt the Manaforge |q 86531/1 |goto Voidstorm/0 36.12,76.21
step
talk Alleria Windrunner##235717
turnin Work Disruption##86531 |goto Voidstorm/0 36.28,80.43
turnin A Cracked Holokey##86528 |goto Voidstorm/0 36.28,80.43
step
talk Lothraxion##235713
turnin First, The Shells##86530 |goto Voidstorm/0 36.26,80.59
accept Second, The Fuel##86538 |goto Voidstorm/0 36.26,80.59
step
talk Alleria Windrunner##235717
accept Network Insecurity##86537 |goto Voidstorm/0 36.28,80.43
stickystart "Collect_Arcane_Remnants"
step
click Ethereal Console
Decode the First Message |q 86537/1 |goto Voidstorm/0 34.20,80.05
step
click Ethereal Console
Decode the Second Message |q 86537/2 |goto Voidstorm/0 33.52,81.57
step
click Ethereal Console
Decode the Third Message |q 86537/3 |goto Voidstorm/0 33.67,79.39
step
click Ethereal Console
|tip You will be attacked.
|tip Inside the building.
Decode the Final Message |q 86537/4 |goto Voidstorm/0 34.61,77.97
step
kill Tempest Keeper##235388
|tip Loot him.
|tip Inside the building.
Recover the Final Message |q 86537/5 |goto Voidstorm/0 34.57,78.01
step
label "Collect_Arcane_Remnants"
kill Conflux Monstrosity##236864, Forge Manacapturer##236093, Mana Coalescence##236863, Manaforge Engineer##238588, Manaforge Netherrider##241041
click Arcane Remnant+
|tip Small metal and glass pyramids.
collect 50 Arcane Remnant##237744 |q 86538/1 |goto Voidstorm/0 33.72,79.18
step
talk Alleria Windrunner##235717
turnin Network Insecurity##86537 |goto Voidstorm/0 36.28,80.43
step
Watch the dialogue
talk Lothraxion##235713
turnin Second, The Fuel##86538 |goto Voidstorm/0 36.27,80.59
accept A Naaru!##86539 |goto Voidstorm/0 36.26,80.59
step
talk Lothraxion##235648
turnin A Naaru!##86539 |goto Voidstorm/0 39.35,82.21
accept Third, Blow It Up##86540 |goto Voidstorm/0 39.35,82.21
step
talk Alleria Windrunner##235660
accept Agents of Darkness##88768 |goto Voidstorm/0 39.40,82.20
step
talk Decimus##235650
accept Just In Case...##86541 |goto Voidstorm/0 39.45,82.15
stickystart "Combine_The_Fragments"
step
kill Insatiable Watcher##239807 |q 88768/2 |goto Voidstorm/0 41.13,85.03
step
kill Darkened Unbound##239808 |q 88768/1 |goto Voidstorm/0 38.73,87.43
step
click Overcharged Manacell
|tip On the platform.
Place an Overcharged Manacell |q 86540/1 |goto Voidstorm/0 37.41,88.34 |count 1 hidden
step
click Overcharged Manacell
|tip On the platform.
Place an Overcharged Manacell |q 86540/1 |goto Voidstorm/0 37.45,88.76 |count 2 hidden
step
click Overcharged Manacell
|tip On the platform.
Place an Overcharged Manacell |q 86540/1 |goto Voidstorm/0 37.35,88.59 |count 3 hidden
step
click Overcharged Manacell
|tip On the platform.
Place an Overcharged Manacell |q 86540/1 |goto Voidstorm/0 37.23,88.40 |count 4 hidden
step
click Overcharged Manacell
|tip On the platform.
Place an Overcharged Manacell |q 86540/1 |goto Voidstorm/0 37.13,88.48 |count 5 hidden
step
kill Nethermade Protector##244153 |q 88768/3 |goto Voidstorm/0 37.77,85.45
step
label "Combine_The_Fragments"
kill Assimilated Netherdrifter##239611, Assimilated Ultradon##239923, Collapsing Voidcaller##236926, Entropy Orbiter##236927, Lightbreaker##241133, Stasis Channeler##236924
collect 8 Fragmented Keystone##237895+ |n
use Fragmented Keystone##237895
Combine the Fragments |q 86541/2 |goto Voidstorm/0 38.94,85.62
step
Enter the building |goto Voidstorm/0 38.55,83.81 < 15 |walk |only if not (subzone("Nexus-Point Mid'Ar") and indoors())
talk Alleria Windrunner##235662
|tip Inside the building.
turnin Agents of Darkness##88768 |goto Voidstorm/0 37.96,83.35
step
talk Lothraxion##235649
|tip Inside the building.
turnin Third, Blow It Up##86540 |goto Voidstorm/0 37.96,83.24
step
talk Decimus##235652
|tip Inside the building.
turnin Just In Case...##86541 |goto Voidstorm/0 37.92,83.16
step
talk Lothraxion##235649
|tip Inside the building.
accept Flicker in the Dark##86542 |goto Voidstorm/0 37.97,83.23
step
click Shield Control
|tip Inside the building.
Override the Shield Console |q 86542/1 |goto Voidstorm/0 37.92,83.32
step
Return to T'era |q 86542/2 |goto Voidstorm/0 38.58,83.87
step
kill 15 Dark Splinter##236923 |q 86542/3 |goto Voidstorm/0 38.72,85.70
step
kill T'era##240272
Subdue T'era |q 86542/4 |goto Voidstorm/0 38.70,85.57
step
talk Alleria Windrunner##235664
turnin Flicker in the Dark##86542 |goto Voidstorm/0 41.61,78.79
step
talk Arator##241109
accept Overwhelmed##89249 |goto Voidstorm/0 41.62,78.79
step
talk Arator##235724
turnin Overwhelmed##89249 |goto Voidstorm/0 41.71,74.71
accept Post-Mortem##86544 |goto Voidstorm/0 41.71,74.71
step
talk Riftwalker Hieron##239724
|tip Inside the tent.
Select _"<Ask for his report on the wilds.>"_ |gossip 132751
Receive Hieron's Report |q 86544/2 |goto Voidstorm/0 41.83,74.77
step
click Overwhelmed Scout##240546
Assist the Overwhelmed Scout |q 86544/4 |goto Voidstorm/0 41.66,74.57 |count 1 hidden
step
click Overwhelmed Scout##240546
Assist the Overwhelmed Scout |q 86544/4 |goto Voidstorm/0 42.11,75.27 |count 2 hidden
step
click Overwhelmed Scout##240546
|tip You will be attacked.
Assist the Overwhelmed Scout |q 86544/4 |goto Voidstorm/0 42.34,75.44 |count 3 hidden
step
talk Lucia Nightbreaker##239720
accept Overwhelming Darkness##90910 |goto Voidstorm/0 42.40,75.38
step
clicknpc Kalgorg##241357
Sacrifice Kalgorg |q 90910/1 |goto Voidstorm/0 42.41,75.35
step
talk Riftblade Maella##240538
|tip Inside the tent.
Select _"<Ask for her report on the wilds.>"_ |gossip 132752
Receive Maella's Report |q 86544/3 |goto Voidstorm/0 42.18,74.25
step
talk Vyana Vespersong##244636
fpath Locus Point |goto Voidstorm/0 42.29,73.73
step
talk Decimus##235653
Select _"Explain yourself."_ |gossip 132757
Check with Decimus |q 86544/6 |goto Voidstorm/0 41.64,73.18
step
talk Lothraxion##235725
Select _"<Ask how Lothraxion is doing.>"_ |gossip 132756
Check with Lothraxion |q 86544/5 |goto Voidstorm/0 41.46,73.78
step
talk Scout Nefina##248881
accept The Illusion of Motion##91884 |goto Voidstorm/0 41.44,74.00
step
talk Arator##235724
turnin Post-Mortem##86544 |goto Voidstorm/0 41.72,74.71
step
Watch the dialogue
talk Arator##235724
accept The Light's Brand##86545 |goto Voidstorm/0 41.72,74.71
step
Find Lothraxion and Decimus on the Outskirts of Locus Point |q 86545/1 |goto Voidstorm/0 41.04,72.74
step
Gather and Deliver Burning Light to Arator |q 86545/3 |goto Voidstorm/0 41.04,72.74
|tip Walk into {o}Burning Light{} to collect them.
|tip Yellow orbs nearby.
|tip Bring them to this location.
|tip Talk to {o}Arathor{} if you need healing.
step
Watch the dialogue
click Decimus##240690
Reveal Decimus |q 86545/4 |goto Voidstorm/0 41.16,72.66
step
talk Alleria Windrunner##235726
turnin The Light's Brand##86545 |goto Voidstorm/0 41.14,72.72
step
talk Decimus##240691
accept Friend or Fiend##86509 |goto Voidstorm/0 41.16,72.65
step
talk Kifaan##244499
accept Distant Memories##90845 |goto Voidstorm/0 44.69,68.60
accept Fits of Lucidity##90844 |goto Voidstorm/0 44.69,68.60
stickystart "Collect_Interrogated_Intelligence"
step
click K'areshi Keepsake+
|tip Small metal and glass pyramids.
collect 8 K'areshi Keepsake##244775 |q 90845/1 |goto Voidstorm/0 47.20,70.14
step
label "Collect_Interrogated_Intelligence"
kill Overcroft Ascendant##239440, Overcroft Inquisitor##244836, Overcroft Militant##239422, Overcroft Skypiercer##239438, Overcroft Technician##239441
collect 8 Interrogated Data##244146 |q 90844/1 |goto Voidstorm/0 46.76,69.87
step
talk Kifaan##244499
Select _"<Hand Kifaan the Interrogated Data to interpret.>"_ |gossip 136789
Show Kifaan the Interrogated Data |q 90844/2 |goto Voidstorm/0 44.69,68.60
step
Watch the dialogue
talk Kifaan##244499
turnin Distant Memories##90845 |goto Voidstorm/0 44.69,68.60
turnin Fits of Lucidity##90844 |goto Voidstorm/0 44.69,68.60
accept Truth From Power##90847 |goto Voidstorm/0 44.69,68.60
step
Enter the building |goto Voidstorm/0 45.89,70.73 < 15 |walk |only if not (subzone("Ethereum Overcroft") and indoors())
kill Questioner Xen'daan##244638 |q 90847/1 |goto Voidstorm/0 44.88,71.29
|tip Walks around.
|tip Loot it from Questioner Xen'daan inside the building.
step
collect Sombersong's Necklace##245628 |q 90847/2 |goto Voidstorm/0 44.88,71.29
|tip Inside the building.
step
talk Kifaan##244499
turnin Truth From Power##90847 |goto Voidstorm/0 44.69,68.60
accept She Started the Fire##90848 |goto Voidstorm/0 44.69,68.60
step
talk Lucia Nightbreaker##239720
turnin Overwhelming Darkness##90910 |goto Voidstorm/0 47.94,78.55
accept Smothered in the Crib##91339 |goto Voidstorm/0 47.94,78.55
accept For Violence's Sake##91340 |goto Voidstorm/0 47.94,78.55
stickystart "Slay_Wildlife"
step
clicknpc Invasive Offspring##246642+
|tip Inside the small cave.
Drain the Young Wildlife |q 91339/1 |goto Voidstorm/0 49.16,78.63 |count 3 hidden
step
clicknpc Netherhunter Hatchling##246641+
Drain the Young Wildlife |q 91339/1 |goto Voidstorm/0 48.69,77.33 |count 6 hidden
step
clicknpc Netherhunter Hatchling##246641+
|tip Up on the cliff.
Drain the Young Wildlife |q 91339/1 |goto Voidstorm/0 47.57,76.84 |count 9 hidden
step
label "Slay_Wildlife"
kill Netherhunter Infestor##246640, Scavenging Biledrinker##247111, Trigore Denguard##246622
Slay #15# Wildlife |q 91340/1 |goto Voidstorm/0 47.58,78.29
step
talk Lucia Nightbreaker##239720
turnin Smothered in the Crib##91339 |goto Voidstorm/0 47.94,78.55
turnin For Violence's Sake##91340 |goto Voidstorm/0 47.94,78.55
accept Unlimited##91341 |goto Voidstorm/0 47.94,78.55
step
click Void Tear+
|tip Swirling blue portals.
|tip Inside the underground cave.
Collect Void Power |q 91341/1 |goto Lair of Predaxas/1 59.42,45.41
|tip Float through {o}blue rings{}.
|tip Enter the {o}hole{} at the {o}bottom of the cave{}.
|tip Shoots you back up.
step
talk Lucia Nightbreaker##239720
|tip {o}Bottom floor{} inside the underground cave.
turnin Unlimited##91341 |goto Lair of Predaxas/1 50.86,45.40
accept Ambition's Reward##91343 |goto Lair of Predaxas/1 50.86,45.40
step
kill Kalgorg the Unshackled##251728
|tip {o}Bottom floor{} inside the underground cave.
Subdue Kalgorg |q 91343/1 |goto Lair of Predaxas/1 31.35,75.20
step
Leave the Cave |complete not (subzone("Lair of Predaxas") and indoors()) |q 91343
|tip Enter the {o}hole{} at the {o}bottom of the cave{}.
|tip Shoots you back up.
step
talk Starving Voidwalker##248880
turnin The Illusion of Motion##91884 |goto Voidstorm/0 48.75,82.33
accept Drain You##91885 |goto Voidstorm/0 48.75,82.33
step
kill Albino Trigore##248938, Blistercreep Bottomfeeder##248939, Bloodthirsty Kilivore##248940, Corpsepicker Karion##248943
use Void Splinter##249433
|tip Near their corpses.
Satiate the Starving Voidwalker |q 91885/1 |goto Voidstorm/0 50.32,78.82
step
talk Sentient Voidwalker##256206
turnin Drain You##91885 |goto Voidstorm/0 48.75,82.33
accept Voices of Omens##91886 |goto Voidstorm/0 48.75,82.33
step
click Domanaar Scrystone
Power the First Scrystone |q 91886/1 |goto Voidstorm/0 43.36,86.18
step
click Domanaar Scrystone
Power the Second Scrystone |q 91886/2 |goto Voidstorm/0 45.56,87.18
step
click Domanaar Scrystone
Power the Third Scrystone |q 91886/3 |goto Voidstorm/0 47.54,89.27
step
talk Scout Nefina##248894
turnin Voices of Omens##91886 |goto Voidstorm/0 44.76,82.20
accept Dominion of Deceit##91887 |goto Voidstorm/0 44.76,82.20
step
kill Deceitful Voidwalker##248920 |q 91887/1 |goto Voidstorm/0 42.90,83.32
|tip Up on the cliff.
step
talk Lucia Nightbreaker##239720
turnin Ambition's Reward##91343 |goto Voidstorm/0 42.44,75.41
step
talk Scout Nefina##248881
turnin Dominion of Deceit##91887 |goto Voidstorm/0 41.44,73.99
step
Travel to the Howling Ridge |q 86509/1 |goto Voidstorm/0 51.41,72.86
step
talk Decimus##235697
turnin Friend or Fiend##86509 |goto Voidstorm/0 51.41,72.86
accept Domus Penumbra##86510 |goto Voidstorm/0 51.41,72.86
step
talk Void Researcher Anomander##248328
Select _"<Inquire about Anomander's research.>"_ |gossip 138232
Speak to Void Researcher Anomander |q 86510/1 |goto Voidstorm/0 52.59,72.90
step
talk Void Researcher Anomander##248328
accept Researching the Storm##93970 |goto Voidstorm/0 52.59,72.90
step
click Research Console
Select _"<Commune with the Console.>"_ |gossip 137576
Commune with the Console |q 93970/1 |goto Voidstorm/0 52.63,72.86
Process a Void Sample |q 93970/2 |goto Voidstorm/0 52.63,72.86
step
talk Void Researcher Anomander##248328
turnin Researching the Storm##93970 |goto Voidstorm/0 52.59,72.90
step
talk Knight Anais##245878
accept The Conquered Heroes##91145 |goto Voidstorm/0 51.82,71.90
step
click Well-Gnawed Bones
Help Umbric Establish a Portal |q 86510/3 |goto Voidstorm/0 51.62,70.03
step
click Fresh Meat
Aid Flight Master Malloril |q 86510/4 |goto Voidstorm/0 51.23,69.29
step
talk Riftwalker Malloril##235703
fpath Howling Ridge |goto Voidstorm/0 51.14,69.26
step
talk Decimus##235697
accept A Born Killer##90914 |goto Voidstorm/0 51.03,67.90
He may also be at [Voidstorm/0 51.20,68.45]
step
talk Perodius##254765
accept Masters' Perch##93810 |goto Voidstorm/0 51.35,67.60
step
talk Ravenia##246727
accept Harvest of Darkness##91363 |goto Voidstorm/0 52.06,67.42
step
talk Hospitus##235701
|tip Inside the building.
Speak to Innkeeper Hospitus |q 86510/2 |goto Voidstorm/0 53.16,68.17
step
talk Leona Darkstrider##252110
accept Truth of the Past##92505 |goto Voidstorm/0 53.23,70.42
|tip This quest is timegated and will be available at a later date after completing the max level campaign.
|only if level >= 90
step
Watch the dialogue
click Illidari Gateway to Argus
Enter the Illidari Gateway |q 92505/1 |goto Voidstorm/0 53.18,70.45
|only if level >= 90
step
Arrive in Argus |q 92505/2
|only if level >= 90
step
talk Allari the Souleater##256285
turnin Truth of the Past##92505 |goto Eredath/0 52.86,14.20
accept The Soul Price##92506 |goto Eredath/0 52.86,14.20
|only if level >= 90
step
kill Agitated Citizen##252212, Agitated Citizen##252213, Forsaken Denizen##252210, Forsaken Denizen##252216, Restless Novitiate##252214, Unstable Consul##252215
Release #8# Spirits |q 92506/1 |goto Eredath/0 50.10,17.82
|only if level >= 90
step
talk Allari the Souleater##256285
turnin The Soul Price##92506 |goto Eredath/0 52.87,14.19
accept A More Potent Foe##92507 |goto Eredath/0 52.87,14.19
|only if level >= 90
step
Watch the dialogue
Behold the Vision |q 92507/1 |goto Eredath/0 52.71,14.15
|only if level >= 90
step
click Illidari Gateway to Voidstorm
Take the Portal to Voidstorm |q 92507/2 |goto Eredath/0 53.25,13.41
|only if level >= 90
step
Watch the dialogue
talk Leona Darkstrider##252110
turnin A More Potent Foe##92507 |goto Voidstorm/0 53.23,70.42
|only if level >= 90
step
talk Allari the Souleater##252109
accept The Mark of Sacrifice##92508 |goto Voidstorm/0 53.22,70.39
accept One Cruel Implement##92509 |goto Voidstorm/0 53.22,70.39
|only if level >= 90
step
talk Decimus##235697
turnin Domus Penumbra##86510 |goto Voidstorm/0 51.03,67.90
accept The Lay of the Beast##90571 |goto Voidstorm/0 51.03,67.90
step
click Ciphus##238289
Assume Control of Decimus' Pet |invehicle |goto Voidstorm/0 50.97,68.00 |q 90571
step
Watch the dialogue
Travel to the Approach |complete subzone("The Approach") |q 90571
step
_NOTE:_
During the Next Steps
|tip Avoid {o}Hunting Voidscythes{}.
|tip Flying with blue circles above them.
Click Here to Continue |confirm |q 90571
step
Scout the Devouring Citadel |q 90571/2 |goto Voidstorm/0 47.51,61.52 |count 1 hidden
|tip Use the {o}Scry{} ability.
|tip Near the bouncing blue arrow.
step
Scout the Devouring Citadel |q 90571/2 |goto Voidstorm/0 49.32,58.96 |count 2 hidden
|tip Use the {o}Scry{} ability.
|tip Near the bouncing blue arrow.
|tip Up on the platform.
step
Scout the Devouring Citadel |q 90571/2 |goto Voidstorm/0 51.40,55.93 |count 3 hidden
|tip Use the {o}Scry{} ability.
|tip Near the bouncing blue arrow.
step
Watch the dialogue
Return to Decimus |outvehicle |q 90571
step
talk Decimus##235697
turnin The Lay of the Beast##90571 |goto Voidstorm/0 51.03,67.89
step
talk Alleria Windrunner##238296
accept Edge of the Abyss##86511 |goto Voidstorm/0 51.06,68.02
stickystart "Collect_Void_Infused_Protein"
stickystart "Collect_Void_Essences"
step
click Radiant Glowcap+
|tip Tall white mushroom clusters.
collect 6 Glaring Glowcap##246661 |q 91363/2 |goto Voidstorm/0 54.11,71.40
step
label "Collect_Void_Infused_Protein"
kill Drifting Stormray##247445, Infused Klaxid##247444, Larval Consumptor##247491, Mature Consumptor##247490
collect 10 Void-Infused Protein##246372 |q 91363/1 |goto Voidstorm/0 54.11,71.40
step
talk Riftblade Maella##239349
Select _"<Hear the scouting report.>"_ |gossip 132535
Watch the dialogue
Listen to the Scouting Report |q 86511/1 |goto Voidstorm/0 54.35,74.26
step
talk Alleria Windrunner##235471
turnin Edge of the Abyss##86511 |goto Voidstorm/0 54.36,74.29
step
talk Decimus##235633
accept The Harvest##86512 |goto Voidstorm/0 54.35,74.35
step
talk Arator##235469
accept Face the Tide##86513 |goto Voidstorm/0 54.30,74.32
stickystart "Seal_Void_Gates"
stickystart "Free_Captives"
stickystart "Attract_Torentias_Attention"
step
talk Juras the Nethersent##242233
accept The Nethersent##90782 |goto Voidstorm/0 56.20,71.91
step
click Cage
Free Juras |q 90782/1 |goto Voidstorm/0 56.20,71.91
step
click Void-Tainted Flesh+
|tip Red blobs.
Destroy #4# Void-Tainted Flesh |q 86513/1 |goto Voidstorm/0 55.95,72.58
step
label "Seal_Void_Gates"
click Void Gate+
|tip Blue portals.
Seal #4# Void Gates |q 86513/2 |goto Voidstorm/0 55.95,72.58
step
label "Free_Captives"
click Cage+
|tip On your minimap.
Free #6# Captives |q 86513/3 |goto Voidstorm/0 55.95,72.58
step
label "Attract_Torentias_Attention"
kill Drifting Siphoid##240736, Hungering Voidwraith##235638, Marrowmouth Consumptor##242750, Ravenous Voidwalker##235639, Ravenous Voidwalker##238163, Scrabbling Voidspawn##235640, Siphoid Overlord##242666, Trench Shredclaw##238162, Trench Shredclaw##240089, Trench Stalker##240737
Attract Torentia's Attention |q 86512/1 |goto Voidstorm/0 55.95,72.58
step
label "Collect_Void_Essences"
kill Drifting Siphoid##240736, Drifting Stormray##247445, Hungering Voidwraith##235638, Hunting Voidscythe##242164, Infused Klaxid##247444, Marrowmouth Consumptor##242750, Mature Consumptor##247490, Obscurion Subjugator##235637, Ravenous Voidwalker##235639, Ravenous Voidwalker##238163, Siphoid Overlord##242666, Slavering Ultradon##235498, Trench Shredclaw##238162, Trench Shredclaw##240089
collect 15 Void Essence##248086 |q 90914/1 |goto Voidstorm/0 55.95,72.58
step
talk Arator##236944
turnin Face the Tide##86513 |goto Voidstorm/0 55.62,72.73
step
talk Alleria Windrunner##236945
turnin The Harvest##86512 |goto Voidstorm/0 55.57,72.85
accept Lady of the Pit##86514 |goto Voidstorm/0 55.57,72.85
step
kill Torentia##235708
|tip Use the {o}Challenge Torentia{} button ability.
Defeat Torentia |q 86514/2 |goto Voidstorm/0 55.54,76.64
step
Watch the dialogue
|tip Inside the building.
click Torentia
collect Torentia's Sigil##238779 |q 86514/3 |goto Voidstorm/0 55.59,78.64
step
Consume Torentia's Sigil |q 86514/4 |goto Voidstorm/0 55.59,78.64
|tip Use the {o}Consume Torentia's Sigil{} button ability.
|tip Inside the building.
step
Enter the building |goto Voidstorm/0 60.77,74.30 < 15 |walk |only if not (subzone("Obscurion Citadel") and indoors())
talk Alleria Windrunner##235502
|tip Inside the building.
turnin Lady of the Pit##86514 |goto Voidstorm/0 60.79,73.62
accept All Become Prey##86516 |goto Voidstorm/0 60.79,73.62
step
talk Arator##235503
|tip Inside the building.
accept Vanished in the Void##86517 |goto Voidstorm/0 60.82,73.55
step
talk Lothraxion##235504
|tip Inside the building.
accept Hollow Hunger##86515 |goto Voidstorm/0 60.71,73.62
stickystart "Kill_Slavering_Ultradons"
step
Watch the dialogue
talk Riftblade Maella##238531
Select _"Regroup with Alleria and Arator."_ |gossip 132554
Find Riftblade Maella |q 86517/1 |goto Voidstorm/0 60.42,78.86
step
talk Lady Darkglen##241170
Select _"I'll find Hieron. Regroup with the others."_ |gossip 132555
Find Lady Darkglen |q 86517/2 |goto Voidstorm/0 61.18,80.81
step
talk Riftwalker Hieron##238530
|tip Inside the building.
Select _"Darkglen and Maella are fine."_ |gossip 132556
Find Riftwalker Hieron |q 86517/3 |goto Voidstorm/0 62.42,82.43
step
click Hieron's Journal
|tip Inside the building.
collect Hieron's Journal##240831 |q 86517/4 |goto Voidstorm/0 62.41,82.45
step
kill Severum##235495
|tip Inside the building.
collect Severum's Sigil##236752 |q 86515/1 |goto Voidstorm/0 64.17,75.61
step
Consume Severum's Sigil |q 86515/2 |goto Voidstorm/0 64.17,75.61
|tip Use the {o}Consume Severum's Sigil{} button ability.
|tip Inside the building.
step
label "Kill_Slavering_Ultradons"
kill Obscurion Subjugator##235637, Obscurion Tormentor##235636, Prowling Harrower##240492, Ravenous Voidwalker##240488, Scouring Voidshaper##243694, Void-Yoked Shredclaw##243658
click Slain Beast+
|tip Dead grey beasts.
collect Carrion Essence##237807+ |n
use Carrion Essence##237807+
|tip On {o}Slavering Ultradons{}.
|tip Large humanoid elite enemies.
|tip Weakens them.
kill 5 Slavering Ultradon##235498 |q 86516/2 |goto Voidstorm/0 59.97,75.61
step
Enter the building |goto Voidstorm/0 60.77,74.30 < 15 |walk |only if not (subzone("Obscurion Citadel") and indoors())
talk Arator##235503
|tip Inside the building.
turnin Vanished in the Void##86517 |goto Voidstorm/0 60.80,73.71
step
talk Alleria Windrunner##235502
|tip Inside the building.
turnin All Become Prey##86516 |goto Voidstorm/0 60.79,73.62
step
talk Lothraxion##235504
|tip Inside the building.
turnin Hollow Hunger##86515 |goto Voidstorm/0 60.71,73.62
step
talk Alleria Windrunner##235502
|tip Inside the building.
accept The Mantle of Predation##86518 |goto Voidstorm/0 60.79,73.62
step
talk Alleria Windrunner##235502
|tip Inside the building.
Select _"<Tell Alleria you're ready to claim the Mantle.>"_ |gossip 132795
Speak to Alleria when you're Ready |q 86518/2 |goto Voidstorm/0 60.79,73.62
step
click Vault Seal
|tip Inside the building.
Undo the Seal |q 86518/3 |goto Voidstorm/0 63.39,78.51 |count 1 hidden
step
click Vault Seal
|tip Inside the building.
Undo the Seal |q 86518/3 |goto Voidstorm/0 62.59,80.05 |count 2 hidden
step
click Terminas' Vault
Watch the dialogue
Claim the Mantle of Predation |q 86518/4 |goto Voidstorm/0 64.40,80.87
step
talk Alleria Windrunner##235715
turnin The Mantle of Predation##86518 |goto Voidstorm/0 60.34,76.39
accept Abyssus, Abyssum##86519 |goto Voidstorm/0 60.34,76.39
step
kill Baleful Subjugator##238399, Dwindling Wraith##240519, Enraged Ultradon##239374, Gaunt Harrower##243378, Scathing Voidcaller##239409, Starved Voidwalker##239373, Swarming Pitspawn##239380
|tip Use the button ability.
Slaughter #30# Enemies |q 86519/1 |goto Voidstorm/0 60.52,76.73
step
Watch the dialogue
kill Alleria Windrunner##238386
Fight Alleria Windrunner |q 86519/2 |goto Voidstorm/0 60.89,76.93
step
talk Alleria Windrunner##239574
turnin Abyssus, Abyssum##86519 |goto Voidstorm/0 60.09,76.19
accept Hunt the Light##86520 |goto Voidstorm/0 60.09,76.19
step
talk Decimus##243907
turnin A Born Killer##90914 |goto Voidstorm/0 51.20,68.45
accept Artifice of Aggression##90915 |goto Voidstorm/0 51.20,68.45
step
Watch the dialogue
talk Decimus##248583
Select _"I am ready to begin!"_ |gossip 134880
Speak with Decimus to begin |q 90915/1 |goto Voidstorm/0 51.30,68.58
step
Watch the dialogue
|tip Follow the instructions.
|tip Click the objects.
Forge the Blade |q 90915/2 |goto Voidstorm/0 51.27,68.66
step
click Light Shard
Find the Light Shard |q 90915/3 |goto Voidstorm/0 50.90,68.71
step
clicknpc Half-formed Blade##248549
Imbue the Blade with Light |q 90915/4 |goto Voidstorm/0 51.34,68.65
step
Watch the dialogue
talk Decimus##243907
turnin Artifice of Aggression##90915 |goto Voidstorm/0 51.20,68.45
accept Seek to Destroy##90916 |goto Voidstorm/0 51.20,68.45
step
talk Ravenia##246727
turnin Harvest of Darkness##91363 |goto Voidstorm/0 52.06,67.43
accept Belly of the Beast##91380 |goto Voidstorm/0 52.06,67.43
step
click Uncooked Void Meat
Add the Uncooked Void Meat to the Cookpot |q 91380/1 |goto Voidstorm/0 51.21,67.63
step
click Unprepared Glowcaps
Add the Unprepared Glowcaps to the Cookpot |q 91380/2 |goto Voidstorm/0 51.15,67.75
step
_Next to you:_
talk Fidoficus##246791
Select _"<Feed the delicious snack to Fidoficus>."_ |gossip 134827
Snack Fed to Fidoficus |q 91380/3
step
Exercise Dominance over Prey |q 91380/4 |goto Voidstorm/0 51.67,68.94
|tip Use the {o}Command: Exercise Dominance{} button ability.
step
Exercise Dominance over Elves |q 91380/5 |goto Voidstorm/0 52.43,69.45
|tip Use the {o}Command: Exercise Dominance{} button ability.
step
Exercise Dominance over Bones |q 91380/6 |goto Voidstorm/0 53.47,70.44
|tip Use the {o}Command: Exercise Dominance{} button ability.
step
talk Ravenia##246727
turnin Belly of the Beast##91380 |goto Voidstorm/0 52.06,67.43
accept Mighty and Superior##91382 |goto Voidstorm/0 52.06,67.43
step
Enter the cave |goto Voidstorm/0 48.02,75.62 < 15 |walk |only if not (subzone("Voidstorm") and indoors())
Watch Fidoficus Slay Den-Gorger Zitoc |q 91382/1 |goto Voidstorm/0 47.95,74.88
|tip Inside the cave.
step
kill Den-Gorger Zitoc##247559 |q 91382/2 |goto Voidstorm/0 47.95,74.88
|tip Inside the cave.
step
talk Ravenia##246727
Select _"I slew the Den-Gorger while Fidoficus cowered in fear."_ |gossip 134864
Watch the dialogue
Share the Conquest with Ravenia |q 91382/3 |goto Voidstorm/0 52.05,67.43
step
talk Ravenia##246727
turnin Mighty and Superior##91382 |goto Voidstorm/0 52.05,67.43
step
talk Decimus##244929
turnin Seek to Destroy##90916 |goto Voidstorm/0 61.27,61.89
accept Harvester of Savagery##90917 |goto Voidstorm/0 61.27,61.89
accept The Unforgiven##90918 |goto Voidstorm/0 61.27,61.89
stickystart "Quench_The_Nascent_Blade_In_Blood"
step
Travel to Nexus-Point Xenas |q 86520/1 |goto Voidstorm/0 64.10,61.84
step
talk Alleria Windrunner##235763
turnin Hunt the Light##86520 |goto Voidstorm/0 64.10,61.84
accept Nexus-Point Xenas: Eclipse##86521 |goto Voidstorm/0 64.10,61.84
step
kill Averus##244936 |q 90918/2 |goto Voidstorm/0 64.69,63.29
step
kill Noxian##244935 |q 90918/1 |goto Voidstorm/0 66.19,60.71
step
kill Tenebre##244937 |q 90918/3 |goto Voidstorm/0 64.87,59.96
step
label "Quench_The_Nascent_Blade_In_Blood"
kill Averus##244936, Marauding Trigore##244946, Noxian##244935, Rampant Shredclaw##244945, Tenebre##244937
use Nascent Blade##248593
|tip Near their corpses.
Quench the Nascent Blade in Blood |q 90917/1 |goto Voidstorm/0 64.26,62.65
step
talk Decimus##244929
turnin Harvester of Savagery##90917 |goto Voidstorm/0 61.27,61.89
turnin The Unforgiven##90918 |goto Voidstorm/0 61.27,61.89
accept The Fiend that Failed##90919 |goto Voidstorm/0 61.27,61.89
step
Enter the building |goto Voidstorm/0 63.50,59.21 < 15 |walk |only if not (subzone("Nexus-Point Xenas") and indoors())
kill Vortensiun##244939 |q 90919/1 |goto Voidstorm/0 63.37,58.49
|tip Inside the building.
step
talk Decimus##244948
turnin The Fiend that Failed##90919 |goto Voidstorm/0 59.07,56.67
accept Warmth for the Soul##90920 |goto Voidstorm/0 59.07,56.67
step
talk Decimus##244948
Select _"<Tell Decimus your favorite food is ripe, fresh fruit.>"_ |gossip 135125
Select _"<Tell Decimus you fear spiders.>"_ |gossip 135136
Select _"<Tell Decimus you regret all the lives you could not save.>"_ |gossip 135131
Speak with Decimus |q 90920/1 |goto Voidstorm/0 59.07,56.67
step
talk Decimus##244948
turnin Warmth for the Soul##90920 |goto Voidstorm/0 59.07,56.67
accept Shepherd of Fear##90923 |goto Voidstorm/0 59.07,56.67
step
_Next to you:_
talk Lingering Shade##251891
accept The Fallen Wake##90922
stickystart "Absorb_Void_Essence_In_The_Gnawing_Reach"
step
clicknpc Familiar Shade##244981
Free the Familiar Shade |q 90922/1 |goto Voidstorm/0 57.85,54.78 |count 1 hidden
step
clicknpc Familiar Shade##244981
Free the Familiar Shade |q 90922/1 |goto Voidstorm/0 58.45,48.12 |count 2 hidden
step
clicknpc Familiar Shade##244981
Free the Familiar Shade |q 90922/1 |goto Voidstorm/0 56.12,44.96 |count 3 hidden
step
clicknpc Glowering Shade##252455
|tip You will be attacked.
Free the Glowering Shade |q 90922/2 |goto Voidstorm/0 50.46,45.44
step
label "Absorb_Void_Essence_In_The_Gnawing_Reach"
kill Crawling Blistercreep##244967, Dredonus##249190, Glowering Siphoid##244962, Glowering Siphoid##244983, Shadestep Kilivore##244990, Sulking Ultradon##244963, Vengeful Shade##244987, Wallowing Harrower##244964
|tip Walk through {o}Void Essence{}.
|tip Small floating blue light orbs.
click Various Objects
|tip Some on your minimap.
Absorb Void Essence in the Gnawing Reach |q 90923/1 |goto Voidstorm/0 57.47,47.20
step
talk Alleria Windrunner##235763
Select _"<Tell Alleria you're ready to enter Nexus-Point Xenas.>"_ |gossip 132672
Speak to Alleria to Queue for Follower Dungeon |q 86521/1 |goto Voidstorm/0 64.10,61.84
step
Enter Nexus-Point Xenas and Stop Lothraxion |q 86521/3
|tip Complete the follower dungeon.
step
_Inside the Nexus-Point Xenas Follower Dungeon:_
Watch the dialogue
|tip After killing the final boss.
click Void Portal
Leave the Follower Dungeon |complete not zone("Nexus Point Xenas") |q 86521
step
talk Decimus##243276
Select _"Shut it down!"_ |gossip 132673
Weaken the Storm |q 86521/4 |goto Voidstorm/0 45.93,64.61
step
talk Alleria Windrunner##235765
turnin Nexus-Point Xenas: Eclipse##86521 |goto Voidstorm/0 45.96,64.56
accept Daylight is Breaking##86522 |goto Voidstorm/0 45.96,64.56
step
Locate the Missing Squad |q 91145/1 |goto Voidstorm/0 46.77,56.54
step
clicknpc Confessor Revik##245982
Investigate the Body |q 91145/2 |goto Voidstorm/0 46.77,56.54 |count 1 hidden
step
clicknpc Scout Danna##252590
Investigate the Body |q 91145/2 |goto Voidstorm/0 46.94,56.26 |count 2 hidden
step
clicknpc Knight Riandron##245987
Investigate the Body |q 91145/2 |goto Voidstorm/0 46.82,55.99 |count 3 hidden
step
Catch Up with Anais |q 91145/3 |goto Voidstorm/0 47.02,54.49
step
talk Decimus##252853
Select _"<Give Decimus the blade.>"_ |gossip 136300
Return the Blade to Decimus |q 90923/3 |goto Voidstorm/0 47.28,49.15
step
talk Decimus##252853
turnin Shepherd of Fear##90923 |goto Voidstorm/0 47.28,49.15
turnin The Fallen Wake##90922 |goto Voidstorm/0 47.28,49.15
accept The Wicked End##90924 |goto Voidstorm/0 47.28,49.15
step
Follow Decimus |q 90924/1 |goto Voidstorm/0 46.07,49.99
|tip Inside the building.
step
kill Decimus##245060 |q 90924/2 |goto Voidstorm/0 46.07,49.99
|tip Inside the building.
step
talk Knight Anais##246035
turnin The Conquered Heroes##91145 |goto Slayers Rise/0 53.97,84.04
accept Cut Her Strings##91147 |goto Slayers Rise/0 53.97,84.04
step
_Next to you:_
talk Knight Anais##252807 |usename Knight Anais##246035
accept Flickering Light##91146
stickystart "Attempt_To_Remove_Shadowgrafts"
step
click Callum's Shield
Find a Trace of Light |q 91146/1 |goto Slayers Rise/0 51.64,73.35 |count 1 hidden
step
click Callum's Tinder Box
Find a Trace of Light |q 91146/1 |goto Slayers Rise/0 50.79,78.00 |count 2 hidden
step
click Callum's Necklace
Find a Trace of Light |q 91146/1 |goto Slayers Rise/0 47.44,74.99 |count 3 hidden
step
_Next to you:_
talk Knight Anais##252807 |usename Knight Anais##246035
turnin Flickering Light##91146
step
label "Attempt_To_Remove_Shadowgrafts"
kill Alloyed Ultradon##252810, Alloyed Voidcrawler##246051
|tip Click their corpses.
Attempt to Remove #6# Shadowgrafts |q 91147/1 |goto Slayers Rise/0 50.20,77.69
step
_Next to you:_
talk Knight Anais##252807 |usename Knight Anais##246035
turnin Cut Her Strings##91147
accept Strung Along##91148
step
Regroup at Camp |q 91148/1 |goto Slayers Rise/0 53.97,83.90
step
talk Knight Anais##253594
Select _"I'm ready."_ |gossip 136581
Speak to Anais |q 91148/2 |goto Slayers Rise/0 53.97,83.90
step
Find Callum Ashvow |q 91148/3 |goto Slayers Rise/0 44.35,87.09
step
Watch the dialogue
talk Knight Anais##253523
turnin Strung Along##91148 |goto Slayers Rise/0 44.06,87.13
accept Bury Me Not##91149 |goto Slayers Rise/0 44.06,87.13
step
click Light-Infused Tinder Box
collect Light-Infused Tinder Box##256135 |q 91149/1 |goto Slayers Rise/0 44.08,87.15
step
click Void Portal
Use the Void Portal |q 91149/2 |goto Slayers Rise/0 44.42,87.43
step
kill Callum Ashvow##246040
Defeat Callum Ashvow |q 91149/3 |goto Slayers Rise/0 41.99,72.57
step
Watch the dialogue
|tip Next to Callum Ashvow.
clicknpc Imperia##253339
Destroy Imperia |q 91149/4 |goto Slayers Rise/0 41.99,72.57
step
talk Knight Anais##253577
turnin Bury Me Not##91149 |goto Slayers Rise/0 44.05,87.11
step
talk Orin Straylight##252510
accept O Lonely Star##92603 |goto Slayers Rise/0 39.93,84.25
step
clicknpc Orin Straylight##254113
Wake Up Orin Straylight |q 92603/1 |goto Slayers Rise/0 39.93,84.25
step
talk Orin Straylight##254114
Select _"Where does this voice lead?"_ |gossip 136761
Speak to Orin |q 92603/2 |goto Slayers Rise/0 39.93,84.25
step
talk Lanlae Noxa##250677
accept Risk for Research##92390 |goto Slayers Rise/0 39.75,84.18
step
talk Riftwarden Theremen##256557
turnin Masters' Perch##93810 |goto Slayers Rise/0 39.88,83.69
step
talk Sayra Starreacher##245356
fpath Master's Perch |goto Slayers Rise/0 38.13,79.92
step
talk Amari Lyndon##257479
accept Voidscar Arena: The Grief Spire##91565 |goto Slayers Rise/0 40.79,84.04
|only if Alliance
step
click Portal to Grief Spire
Use the Portal to The Grief Spire |q 91565/1 |goto Slayers Rise/0 41.33,83.43
|only if Alliance
step
Report to The Grief Spire |q 91565/2 |goto Slayers Rise/0 73.95,75.38
|only if Alliance
step
Watch the dialogue
talk Vidious##247375
turnin Voidscar Arena: The Grief Spire##91565 |goto Slayers Rise/0 73.95,75.38
accept For My Alliance##91597 |goto Slayers Rise/0 73.95,75.38
accept The Bastion of Valor##91583 |goto Slayers Rise/0 73.95,75.38
|only if Alliance
stickystart "Collect_Spiteful_Shadowgrafts"
step
clicknpc Griefbound Sicarius##259017, Griefbound Voidwalker##247748, Griefbound Voidwraith##259014
|tip Friendly void NPCS.
Empower #8# Griefbound Forces |q 91597/1 |goto Slayers Rise/0 62.12,74.70
|only if Alliance
step
label "Collect_Spiteful_Shadowgrafts"
kill Griefcrusher Harrower##247808, Griefcrusher Ultradon##247945, Prowling Griefshredder##247807, Rampaging Ultradon##247960
collect 12 Spiteful Shadowgraft##247422 |q 91583/1 |goto Slayers Rise/0 63.48,75.65
|only if Alliance
step
talk Dar'gul##257478
accept Voidscar Arena: The Hate Spire##91566 |goto Slayers Rise/0 34.92,80.36
|only if Horde
step
click Portal to Hate Spire
Use the Portal to The Hate Spire |q 91566/1 |goto Slayers Rise/0 34.14,79.21
|only if Horde
step
Report to The Hate Spire |q 91566/2 |goto Slayers Rise/0 23.42,54.31
|only if Horde
step
talk Ziadan##247374
|tip On the bridge.
turnin Voidscar Arena: The Hate Spire##91566 |goto Slayers Rise/0 23.44,54.31
accept Voidscar Arena: The Bastion of Might##94845 |goto Slayers Rise/0 23.44,54.31
accept Voidscar Arena: For My Horde##94844 |goto Slayers Rise/0 23.44,54.31
|only if Horde
stickystart "Collect_Spiteful_Shadowgrafts_Horde"
step
clicknpc Hatebound Voidwalker##247749, Hatebound Voidwraith##259015, Hatebound Executor##259016
|tip Friendly void NPCS.
Empower #8# Hatebound Forces |q 94844/1 |goto Slayers Rise/0 36.43,65.81
|only if Horde
step
label "Collect_Spiteful_Shadowgrafts_Horde"
kill Invasive Hatechewer##247805, Hatecrusher Ultradon##247944, Hatecrusher Harrower##259020
collect 12 Spiteful Shadowgraft##247422 |q 94845/1 |goto Slayers Rise/0 36.43,65.81
|only if Horde
step
talk Ziadan##256796
|tip On the bridge.
turnin Voidscar Arena: The Bastion of Might##94845 |goto Slayers Rise/0 50.64,58.94
turnin Voidscar Arena: For My Horde##94844 |goto Slayers Rise/0 50.64,58.94
accept Voidscar Arena: Pre-Provoked Violence##94848 |goto Slayers Rise/0 50.64,58.94
accept Voidscar Arena: A Familiar Grudge##94849 |goto Slayers Rise/0 50.64,58.94
|only if Horde
stickystart "Kill_Players_Or_Griefbound_Forces"
step
kill Emrin Sparkpox##247459 |q 94849/1 |goto Slayers Rise/0 61.72,84.63
|tip Inside the building.
|only if Horde
step
label "Kill_Players_Or_Griefbound_Forces"
kill Griefcrusher Harrower##247808, Griefbound Sicarius##259017, Griefbound Voidwalker##247748, Prowling Griefshredder##247807, Griefbound Voidwraith##259014
Kill Players or Griefbound Forces |q 94848/1 |goto Slayers Rise/0 60.54,74.40
|only if Horde
step
Find Lanlae Noxa in Shadow Rise |q 92390/1 |goto Slayers Rise/0 62.81,66.15
step
Watch the dialogue
talk Lanlae Noxa##249935
turnin Risk for Research##92390 |goto Slayers Rise/0 62.81,66.15
accept Object Exorcism##92155 |goto Slayers Rise/0 62.81,66.15
step
click Sinister Weapon Rack
|tip You will be attacked.
Search the Sinister Weapon Rack |q 92155/3 |goto Slayers Rise/0 65.38,64.97
step
click Strange Barrel
Reach into the Strange Barrel |q 92155/2 |goto Slayers Rise/0 64.11,60.93
step
click Whispering Chair
Sit in the Whispering Chair |q 92155/1 |goto Slayers Rise/0 65.09,61.01
step
Begin Flying in the Whispering Chair |invehicle |q 92155
step
Watch the dialogue
Fly in the Whispering Chair |outvehicle |goto Slayers Rise/0 64.84,62.53 |q 92155
step
talk Lanlae Noxa##249935
turnin Object Exorcism##92155 |goto Slayers Rise/0 64.66,64.22
step
Watch the dialogue
talk Havazza##249917
accept It Follows Me##92156 |goto Slayers Rise/0 64.74,64.14
step
kill Abhorrent Shadowguard##240645, Malignant Shadowguard##240647
use Consuming Brand##251278
|tip Next to their corpses.
Brand #8# Defeated Shadowguards |q 92156/1 |goto Slayers Rise/0 65.32,52.40
step
talk Havazza##249917
turnin It Follows Me##92156 |goto Slayers Rise/0 64.73,64.15
step
talk Lanlae Noxa##249935
accept Ritual Activity##92157 |goto Slayers Rise/0 64.66,64.21
step
click Disorienting Book
Destroy the Entity Possession |q 92157/1 |goto Slayers Rise/0 62.98,66.51 |count 1 hidden
step
clicknpc Haunted Weapon##250885
Destroy the Entity Possession |q 92157/1 |goto Slayers Rise/0 62.88,66.48 |count 2 hidden
step
click Strange Barrel
Destroy the Entity Possession |q 92157/1 |goto Slayers Rise/0 62.81,66.34 |count 3 hidden
step
click Whispering Chair
Resist the Whispering Chair |q 92157/2 |goto Slayers Rise/0 62.74,66.68
step
Watch the dialogue
Become Haunted?! |q 92157/3 |goto Slayers Rise/0 62.84,66.49
step
Watch the dialogue
talk Lanlae Noxa##249935
turnin Ritual Activity##92157 |goto Slayers Rise/0 62.92,66.24
accept Let It In##92158 |goto Slayers Rise/0 62.92,66.24
step
Watch the dialogue
|tip Use the {o}Luring the entity...{} button ability.
kill Insidious Reflection##248810 |q 92158/2 |goto Slayers Rise/0 69.04,62.04
step
Watch the dialogue
clicknpc Weakened Entity##251282
|tip Moves around.
Catch It! |q 92158/3 |goto Slayers Rise/0 69.11,62.31
step
talk Lanlae Noxa##251277
turnin Let It In##92158 |goto Slayers Rise/0 69.17,62.32
accept A Final Destination##92159 |goto Slayers Rise/0 69.17,62.32
step
Find Lanlae at Shenzar Refinery |q 92159/1 |goto Slayers Rise/0 57.38,47.39
step
kill Havazza##248812 |q 92159/2 |goto Slayers Rise/0 58.46,46.60
step
talk Lanlae Noxa##251286
turnin A Final Destination##92159 |goto Slayers Rise/0 57.38,47.39
step
talk Vidious##256782
|tip On the bridge.
turnin For My Alliance##91597 |goto Slayers Rise/0 50.80,58.68
turnin The Bastion of Valor##91583 |goto Slayers Rise/0 50.80,58.68
accept Pre-Provoked Violence##91598 |goto Slayers Rise/0 50.80,58.68
accept A Familiar Grudge##91599 |goto Slayers Rise/0 50.80,58.68
|only if Alliance
stickystart "Kill_Players_Or_Hatebound_Voidwalkers"
step
kill Manus Deathwake##247462 |q 91599/1 |goto Slayers Rise/0 31.34,69.90
|tip Inside the building.
|only if Alliance
step
label "Kill_Players_Or_Hatebound_Voidwalkers"
kill Hatebound Executor##259016, Hatebound Voidwalker##247749, Hatebound Voidwraith##259015, Hatecrusher Ultradon##247944, Invasive Hatechewer##247805, Rampaging Ultradon##247960
Kill Players or Hatebound Voidwalkers |q 91598/1 |goto Slayers Rise/0 35.58,68.29
|only if Alliance
step
talk Vidious##256782
|tip On the bridge.
turnin Pre-Provoked Violence##91598 |goto Slayers Rise/0 50.80,58.68
turnin A Familiar Grudge##91599 |goto Slayers Rise/0 50.80,58.68
accept Setting it Aside##91600 |goto Slayers Rise/0 50.80,58.68
|only if Alliance
step
talk Vidious##256815
turnin Setting it Aside##91600 |goto Slayers Rise/0 53.70,21.46
accept The Wrong Side##91605 |goto Slayers Rise/0 53.70,21.46
|only if Alliance
step
talk Ziadan##256813
accept Two Against One##91603 |goto Slayers Rise/0 53.54,21.47
|only if Alliance
stickystart "Use_Graftshaper_Tools"
stickystart "Destroy_Shadowgrafts"
stickystart "Slay_Spiteful_Monsters"
step
click Graftnode of Grief
|tip Inside the building.
Drain the Graftnode of Grief |q 91603/1 |goto Slayers Rise/0 50.60,12.58
|only if Alliance
step
click Graftnode of Hate
|tip Inside the building.
Drain the Graftnode of Hate |q 91603/2 |goto Slayers Rise/0 56.72,12.70
|only if Alliance
step
label "Use_Graftshaper_Tools"
click Various Objects
Use #4# Graftshaper Tools |q 91605/3 |goto Slayers Rise/0 53.87,15.60
|only if Alliance
step
label "Destroy_Shadowgrafts"
click Shadowgraft Energy+
|tip Barrel shaped objects.
Destroy #6# Shadowgrafts |q 91605/2 |goto Slayers Rise/0 53.87,15.60
|only if Alliance
step
label "Slay_Spiteful_Monsters"
kill Devouring Spawn##248007, Spiteful Consumptor##248013, Spiteful Minder##248005, Spiteful Mindwarden##256895, VoidOoze##248012
Slay #12# Spiteful Monsters |q 91605/1 |goto Slayers Rise/0 53.87,15.60
|only if Alliance
step
talk Ziadan##256901
turnin Two Against One##91603 |goto Slayers Rise/0 53.49,11.30
|only if Alliance
step
talk Vidious##256885
turnin The Wrong Side##91605 |goto Slayers Rise/0 53.74,11.32
accept Clearing House##91606 |goto Slayers Rise/0 53.74,11.32
|only if Alliance
step
kill Trelus the Grafter##247811 |q 91606/1 |goto Slayers Rise/0 53.53,6.80
|tip Inside the building.
|only if Alliance
step
talk Vidious##256885
Select _"<Tell them you are ready to deliver the final blow to slay Atroxus.>"_ |gossip 138233
Watch the dialogue
Tell the Domanaar You Are Ready |q 91606/2 |goto Slayers Rise/0 53.75,11.31
|only if Alliance
step
talk Vidious##256885
turnin Clearing House##91606 |goto Slayers Rise/0 53.75,11.31
|only if Alliance
step
talk Ziadan##256796
|tip On the bridge.
turnin Voidscar Arena: Pre-Provoked Violence##94848 |goto Slayers Rise/0 50.63,58.94
turnin Voidscar Arena: A Familiar Grudge##94849 |goto Slayers Rise/0 50.63,58.94
accept Voidscar Arena: Setting It Aside##94855 |goto Slayers Rise/0 50.63,58.94
|only if Horde
step
talk Ziadan##256813
turnin Voidscar Arena: Setting It Aside##94855 |goto Slayers Rise/0 53.54,21.45
accept Voidscar Arena: Two Against One##91603 |goto Slayers Rise/0 53.54,21.45
|only if Horde
step
talk Vidious##256815
accept Voidscar Arena: The Wrong Side##91605 |goto Slayers Rise/0 53.70,21.45
|only if Horde
stickystart "Use_Graftshaper_Tools_Horde"
stickystart "Destroy_Shadowgrafts_Horde"
stickystart "Slay_Spiteful_Monsters_Horde"
step
click Graftnode of Grief
|tip Inside the building.
Drain the Graftnode of Grief |q 91603/1 |goto Slayers Rise/0 50.60,12.58
|only if Horde
step
click Graftnode of Hate
|tip Inside the building.
Drain the Graftnode of Hate |q 91603/2 |goto Slayers Rise/0 56.72,12.70
|only if Horde
step
label "Use_Graftshaper_Tools_Horde"
click Various Objects
Use #4# Graftshaper Tools |q 91605/3 |goto Slayers Rise/0 53.87,15.60
|only if Horde
step
label "Destroy_Shadowgrafts_Horde"
click Shadowgraft Energy+
|tip Barrel shaped objects.
Destroy #6# Shadowgrafts |q 91605/2 |goto Slayers Rise/0 53.87,15.60
|only if Horde
step
label "Slay_Spiteful_Monsters_Horde"
kill Devouring Spawn##248007, Spiteful Consumptor##248013, Spiteful Minder##248005, Spiteful Mindwarden##256895, VoidOoze##248012
Slay #12# Spiteful Monsters |q 91605/1 |goto Slayers Rise/0 53.87,15.60
|only if Horde
step
talk Vidious##256885
turnin The Wrong Side##91605 |goto Slayers Rise/0 53.74,11.32
|only if Horde
step
talk Ziadan##256901
turnin Two Against One##91603 |goto Slayers Rise/0 53.49,11.30
accept Clearing House##91606 |goto Slayers Rise/0 53.49,11.30
|only if Horde
step
kill Trelus the Grafter##247811 |q 91606/1 |goto Slayers Rise/0 53.53,6.80
|tip Inside the building.
|only if Horde
step
talk Ziadan##256901
Select _"<Tell them you are ready to deliver the final blow to slay Atroxus.>"_ |gossip 138272
Watch the dialogue
Tell the Domanaar You Are Ready |q 91606/2 |goto Slayers Rise/0 53.49,11.30
|only if Horde
step
talk Ziadan##256901
turnin Clearing House##91606 |goto Slayers Rise/0 53.49,11.30
|only if Horde
step
talk Orin Straylight##254012
turnin O Lonely Star##92603 |goto Slayers Rise/0 39.57,38.10
accept Speak in Blood##92604 |goto Slayers Rise/0 39.57,38.10
accept Honest as Bone##92605 |goto Slayers Rise/0 39.57,38.10
stickystart "Collect_Viscous_Ichor"
step
click Various Objects
|tip Large bones.
collect 8 Bone Splinter##256694 |q 92605/1 |goto Slayers Rise/0 34.66,36.66
step
label "Collect_Viscous_Ichor"
kill Hoarding Klaxid##252682, Klaxid Moltling##254094, Marrowmaw Kilivore##252684, Scavenging Netherwasp##252683
collect 50 Viscous Ichor##256692 |q 92604/1 |goto Slayers Rise/0 34.66,36.66
step
talk Orin Straylight##252510
turnin Speak in Blood##92604 |goto Slayers Rise/0 33.15,36.36
turnin Honest as Bone##92605 |goto Slayers Rise/0 33.15,36.36
accept Take Up Your Gift##92606 |goto Slayers Rise/0 33.15,36.36
step
Draw #3# Ritual Circles |q 92606/1 |goto Slayers Rise/0 33.07,36.36
|tip Walk on the patterns.
step
click Void Rift
Step Through the Rift |q 92606/2 |goto Slayers Rise/0 33.08,36.36
step
click Shadow Chisel
Take the Chisel |q 92606/3 |goto Slayers Rise/0 32.88,38.00
step
talk Orin Straylight##254014
turnin Take Up Your Gift##92606 |goto Slayers Rise/0 33.10,36.37
accept And Carve New Shapes##92607 |goto Slayers Rise/0 33.10,36.37
step
clicknpc Orin Straylight##254009
Free Orin from His Shade |q 92607/1 |goto Slayers Rise/0 33.10,36.37
step
kill Orin's Shade##248870
Subdue Orin's Shade |q 92607/2 |goto Slayers Rise/0 28.60,34.96
step
talk Orin Straylight##254105
turnin And Carve New Shapes##92607 |goto Slayers Rise/0 33.29,37.10
step
Enter the cave |goto Voidstorm/0 40.14,49.08 < 20 |walk |only if not (subzone("Exiles' Hovel") and indoors())
talk Tul'amar Twice-Exiled##241620
|tip Inside the cave.
turnin The Nethersent##90782 |goto Voidstorm/0 39.87,48.98
accept Universal Language##90866 |goto Voidstorm/0 39.87,48.98
step
kill Hunting Netherwasp##244618, Netherflit##245041, Nightbrood##245044, Shredclaw Packhunter##244617, Ultradon Tyrant##244624
collect 16 Predator Blood##243350 |q 90866/1 |goto Voidstorm/0 40.82,40.98
step
Enter the cave |goto Voidstorm/0 40.14,49.08 < 20 |walk |only if not (subzone("Exiles' Hovel") and indoors())
talk Tul'amar Twice-Exiled##241620
|tip Downstairs inside the cave.
turnin Universal Language##90866 |goto Voidstorm/0 39.37,47.95
step
Watch the dialogue
|tip Downstairs inside the cave.
talk Tul'amar Twice-Exiled##241620
accept Drenched In It##90872 |goto Voidstorm/0 39.37,47.95
step
clicknpc Offworlder Refugee##241626+
|tip Downstairs inside the cave.
Splash #8# Offworlders with Blood |q 90872/1 |goto Voidstorm/0 39.30,48.03
step
click Improvised Waygate
|tip Downstairs inside the cave.
Splash Yourself in Front of the Improvised Waygate |q 90872/2 |goto Voidstorm/0 39.35,47.92
step
talk Tul'amar Twice-Exiled##241620
turnin Drenched In It##90872 |goto Slayers Rise/0 35.06,88.54
accept These Violent Delights##90873 |goto Slayers Rise/0 35.06,88.54
accept Their Violent Ends##90874 |goto Slayers Rise/0 35.06,88.54
stickystart "Collect_Abductors_Marks"
stickystart "Free_Masters_Prospects"
step
click Unwilling Summon
|tip Nearby enemies will attack.
Send the Unwilling Summon Home |q 90873/2 |goto Slayers Rise/0 32.91,87.58 |count 1 hidden
step
click Unwilling Summon
|tip Nearby enemies will attack.
Send the Unwilling Summon Home |q 90873/2 |goto Slayers Rise/0 37.42,90.44 |count 2 hidden
step
click Unwilling Summon
|tip Nearby enemies will attack.
Send the Unwilling Summon Home |q 90873/2 |goto Slayers Rise/0 41.51,90.67 |count 3 hidden
step
label "Collect_Abductors_Marks"
kill Dark Abductor##244770, Despair Watcher##244625, Eruundi##245182
collect 8 Abductor's Mark##244171 |q 90874/1 |goto Slayers Rise/0 37.00,88.03
step
label "Free_Masters_Prospects"
use Relic of Liberation##244173
|tip On {o}Prospect NPCs{}.
|tip Friendly humanoids.
|tip Nearby enemies will attack. |notinsticky
Free #10# Master's Prospects |q 90873/1 |goto Slayers Rise/0 37.00,88.03
step
talk Tul'amar Twice-Exiled##241620
turnin These Violent Delights##90873 |goto Slayers Rise/0 35.06,88.54
turnin Their Violent Ends##90874 |goto Slayers Rise/0 35.06,88.54
accept Across Worlds##90875 |goto Slayers Rise/0 35.06,88.54
step
kill Snaerius##244626
|tip Loot him.
|tip Inside the building.
Recover the Lodestar of the Great Dark |q 90875/1 |goto Slayers Rise/0 33.09,81.15
step
Enter the cave |goto Voidstorm/0 40.14,49.08 < 20 |walk |only if not (subzone("Exiles' Hovel") and indoors())
Return to Exiles' Hovel |q 90875/2 |goto Voidstorm/0 39.35,48.02
|tip Downstairs inside the cave.
step
click Lodestar of the Great Dark
|tip Downstairs inside the cave.
Place the Lodestar of the Great Dark |q 90875/3 |goto Voidstorm/0 39.35,48.02
step
Watch the dialogue
|tip Downstairs inside the cave.
Behold: Home |q 90875/4 |goto Voidstorm/0 39.35,48.02
step
talk Tul'amar Twice-Exiled##241620
|tip Downstairs inside the cave.
turnin Across Worlds##90875 |goto Voidstorm/0 39.34,48.05
step
talk Kifaan##244516
|tip Up on the cliff.
turnin She Started the Fire##90848 |goto Voidstorm/0 37.68,48.40
accept Eating Their Own##90851 |goto Voidstorm/0 37.68,48.40
accept Techno-Magnetic Pulse##90852 |goto Voidstorm/0 37.68,48.40
stickystart "Slay_Shadowguard_Engineers_And_Infusers"
step
click Crackling Energy Vessel+
|tip Pink barrels.
|tip Use the {o}Disabling Throw{} button ability on the {o}Caged Betrayer{}.
Free the Caged Betrayer |q 90852/1 |goto Voidstorm/0 38.94,46.69 |count 1 hidden
step
click Crackling Energy Vessel+
|tip Pink barrels.
|tip Gives a button ability.
|tip Use the {o}Disabling Throw{} button ability on the {o}Caged Betrayer{}.
Free the Caged Betrayer |q 90852/1 |goto Voidstorm/0 38.98,45.18 |count 2 hidden
step
click Crackling Energy Vessel+
|tip Pink barrels.
|tip Use the {o}Disabling Throw{} button ability on the {o}Caged Betrayer{}.
Free the Caged Betrayer |q 90852/1 |goto Voidstorm/0 36.91,45.71 |count 3 hidden
step
click Crackling Energy Vessel+
|tip Pink barrels.
|tip Use the {o}Disabling Throw{} button ability on {o}Veraan{}.
Free Veraan |q 90852/2 |goto Voidstorm/0 36.83,45.07
step
label "Slay_Shadowguard_Engineers_And_Infusers"
kill Shadowguard Engineer##244608, Shadowguard Infuser##244610
Slay #12# Shadowguard Engineers and Infusers |q 90851/1 |goto Voidstorm/0 38.00,46.19
step
talk Kifaan##244516
turnin Eating Their Own##90851 |goto Voidstorm/0 36.30,43.97
turnin Techno-Magnetic Pulse##90852 |goto Voidstorm/0 36.30,43.97
accept Bursting at the Seams##93396 |goto Voidstorm/0 36.30,43.97
step
talk Kifaan##244516
Select _"<Encourage Kifaan to talk to his sister.>"_ |gossip 136988
Help Kifaan Support His Sister |q 93396/1 |goto Voidstorm/0 36.30,43.97
step
Watch the dialogue
talk Kifaan##244516
turnin Bursting at the Seams##93396 |goto Voidstorm/0 36.30,43.97
step
talk Veraan##244522
accept Repress the Oppressors##90858 |goto Voidstorm/0 36.33,44.02
step
kill Shadowguard Adept##245467, Shadowguard Automaton##244621, Shadowguard Technician##244606, Shadowguard Voidweaver##245461
click Various Objects
Disrupt the Shadowguard Operation |q 90858/1 |goto Voidstorm/0 37.69,42.43
step
talk Veraan##244522
turnin Repress the Oppressors##90858 |goto Voidstorm/0 37.44,39.46
accept Shedding the Yoke##90860 |goto Voidstorm/0 37.44,39.46
step
kill Soulbinder D'zaar##244661 |q 90860/1 |goto Voidstorm/0 37.15,37.50
step
talk Leona Darkstrider##255719
Select _"I'm ready, Leona. Have you observed anything noteworthy?"_ |gossip 137244
Meet Up with Leona at Nexus-Point Antius |q 92509/1 |goto Voidstorm/0 31.18,52.82
|only if level >= 90
stickystart "Collect_Void_Ink"
step
kill Towering Ultradon##238409+
|tip Large humanoid lizards.
|tip On your minimap.
collect Talon of the Towering Ultradon##254671 |q 92509/2 |goto Voidstorm/0 29.26,51.94
|only if level >= 90
step
label "Collect_Void_Ink"
kill Hovering Siphoid##235563, Duskcry Voidwalker##235560, Clawing Voidwalker##235561, Whipwind Shredclaw##238369
|tip Use the {o}Void Vitae Collection{} button ability.
|tip Near their corpses.
|tip Ultradons and Creeplings won't count.
Collect #12# Void "Ink" |q 92508/2 |goto Voidstorm/0 29.26,51.94
|only if level >= 90
step
talk Veraan##244522
turnin Shedding the Yoke##90860 |goto Voidstorm/0 50.97,68.92
step
talk Decimus##243907
Select _"I felt nothing."_ |gossip 136330
Question Decimus |q 90924/3 |goto Voidstorm/0 51.20,68.45
step
talk Decimus##243907
turnin The Wicked End##90924 |goto Voidstorm/0 51.20,68.45
step
talk Allari the Souleater##252109
turnin The Mark of Sacrifice##92508 |goto Voidstorm/0 53.22,70.39
turnin One Cruel Implement##92509 |goto Voidstorm/0 53.22,70.39
accept Dark Infusion##92510 |goto Voidstorm/0 53.22,70.39
|only if level >= 90
step
talk Leona Darkstrider##253362
Select _"<Signal Leona to start the ritual.>"_ |gossip 136449
Signal Leona to Begin the Ritual |q 92510/1 |goto Voidstorm/0 60.20,44.07
|only if level >= 90
step
Kill the enemies that attack in waves
Watch the dialogue
Complete the Ritual |q 92510/2 |goto Voidstorm/0 60.20,44.07
|only if level >= 90
step
click Void Portal
Follow Leona |q 92510/3 |goto Voidstorm/0 60.24,44.02
|only if level >= 90
step
Return to Magister Umbric at Howling Ridge |q 92510/4 |goto Voidstorm/0 52.17,69.69
|only if level >= 90
step
talk Magister Umbric##235698
turnin Dark Infusion##92510 |goto Voidstorm/0 52.17,69.69
accept Event Horizon##92511 |goto Voidstorm/0 52.17,69.69
|only if level >= 90
step
click Void Beacon
Place the Northern Beacon |q 92511/1 |goto Voidstorm/0 51.86,67.37
|only if level >= 90
step
click Void Beacon
Place the Eastern Beacon |q 92511/2 |goto Voidstorm/0 53.87,69.70
|only if level >= 90
step
click Void Beacon
Place the Southern Beacon |q 92511/3 |goto Voidstorm/0 52.10,73.36
|only if level >= 90
step
talk Magister Umbric##235698
Select _"The beacons are placed, Magister."_ |gossip 136686
Return to Umbric |q 92511/4 |goto Voidstorm/0 52.17,69.69
|only if level >= 90
step
Watch the dialogue
Complete the Ritual |q 92511/5 |goto Voidstorm/0 52.12,69.62
|only if level >= 90
step
talk Leona Darkstrider##253948
turnin Event Horizon##92511 |goto Voidstorm/0 52.12,69.62
accept Devourer##92512 |goto Voidstorm/0 52.12,69.62
|only if level >= 90
step
talk Leona Darkstrider##254316
Select _"<Signal Leona to call out Ravenor.>"_ |gossip 136784
Signal Leona to Antagonize Ravenor |q 92512/1 |goto Voidstorm/0 51.07,56.08
|only if level >= 90
step
kill Princeps Ravenor##250805
Defeat Ravenor |q 92512/2 |goto Voidstorm/0 51.52,55.75
|only if level >= 90
step
Return to Umbric in Howling Ridge |q 92512/3 |goto Voidstorm/0 52.17,69.69
|only if level >= 90
step
talk Magister Umbric##235698
turnin Devourer##92512 |goto Voidstorm/0 52.17,69.69
|only if level >= 90
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Daylight is Breaking##86522 |goto Silvermoon City M/0 45.44,70.33
step
talk Riftwalker Sideras##249034
accept What We Leave Behind##91533 |goto Voidstorm/0 53.72,69.94
step
click Hieron's Belongings
Collect Hieron's Belongings |q 91533/1 |goto Voidstorm/0 53.73,69.93
step
talk Riftblade Astre##248616
turnin What We Leave Behind##91533 |goto Voidstorm/0 41.85,74.77
accept Home Sweet Grave##91535 |goto Voidstorm/0 41.85,74.77
accept Like a Weed##91536 |goto Voidstorm/0 41.85,74.77
stickystart "Slay_Wildlife_Around_Locus_Point"
step
click Mature Ghostflower+
|tip Small plants.
collect 8 Ghostflower Leaves##248241 |q 91535/1 |goto Voidstorm/0 43.26,75.51
step
label "Slay_Wildlife_Around_Locus_Point"
kill Predatory Voidscythe##248551, Ridge Consumptor##247590, Ridge Scavenger##247816
Slay Wildlife Around Locus Point |q 91536/1 |goto Voidstorm/0 43.26,75.51
step
talk Riftblade Astre##248616
turnin Home Sweet Grave##91535 |goto Voidstorm/0 41.88,74.54
turnin Like a Weed##91536 |goto Voidstorm/0 41.88,74.54
accept Confronting It##91537 |goto Voidstorm/0 41.88,74.54
step
click Riftblade's Teapot
Brew the Tea |q 91537/1 |goto Voidstorm/0 41.89,74.59
step
kill Shade of Grief##241627 |q 91537/2 |goto Voidstorm/0 39.57,76.30
step
talk Riftblade Astre##248616
turnin Confronting It##91537 |goto Voidstorm/0 41.94,74.45
accept Unchecked Emotions##91541 |goto Voidstorm/0 41.94,74.45
step
talk Riftblade Astre##248072
turnin Unchecked Emotions##91541 |goto Voidstorm/0 52.13,69.65
accept The Town Inside Me##91542 |goto Voidstorm/0 52.13,69.65
step
talk Magister Umbric##235698
Select _"<Serve Hieron's tea.>"_ |gossip 135019
Give Umbric Tea |q 91542/1 |goto Voidstorm/0 52.17,69.69
step
talk Riftwalker Sideras##247594
Select _"<Serve Hieron's tea.>"_ |gossip 135020
Watch the dialogue
kill Shade of Loss##248932
Give Sideras Tea |q 91542/2 |goto Voidstorm/0 53.43,70.32
step
talk Riftblade Maella##247595
Select _"<Serve Hieron's tea.>"_ |gossip 135018
Give Maella Tea |q 91542/3 |goto Voidstorm/0 52.53,72.74
step
talk Riftblade Astre##249045
|tip Inside the building.
turnin The Town Inside Me##91542 |goto Voidstorm/0 62.36,82.46
accept Familiar Energies##91544 |goto Voidstorm/0 62.36,82.46
step
_Next to you:_
talk Riftblade Astre##249130 |usename Riftblade Astre##249045
accept Retaking Control##91543
accept Running Amok##91963
step
click Echo of a Last Stand
|tip Inside the building.
Inspect the Echo of a Last Stand |q 91544/1 |goto Voidstorm/0 62.44,82.46
stickystart "Slay_Flying_Harrowers_And_Siphoids"
stickystart "Collect_Latent_Shadowgrafts"
step
click Echo of a Wounded Retreat
Track the Second Echo |q 91544/2 |goto Voidstorm/0 61.06,80.59
step
click Echo of Burning Revenge
Track the Third Echo |q 91544/3 |goto Voidstorm/0 59.57,79.08
step
click Echo of Stolen Magic
Track the Fourth Echo |q 91544/4 |goto Voidstorm/0 59.43,77.24
step
click Echo of the Invading Rift
Track the Final Echo |q 91544/5 |goto Voidstorm/0 58.49,78.29
step
talk Magister Umbric##247668
|tip He runs to this location
turnin Familiar Energies##91544 |goto Voidstorm/0 58.16,78.59
step
label "Slay_Flying_Harrowers_And_Siphoids"
kill Bleakwing Harrower##242437, Obscurion Broodlord##243887, Prowling Harrower##240492, Scavenging Harrower##240497, Siphoid Drone##243888
|tip {o}Large bats{} and {o}flying jellyfish{}.
use Scout's Sights##248724
|tip Pulls them to the ground.
Slay #8# Flying Harrowers and Siphoids |q 91543/2 |goto Voidstorm/0 61.43,77.36
step
label "Collect_Latent_Shadowgrafts"
kill Bleakwing Harrower##242437, Feral Ultradon##243813, Obscurion Broodlord##243887, Obscurion Subjugator##235637, Obscurion Tormentor##235636, Prowling Harrower##240492, Scavenging Harrower##240497, Siphoid Drone##243888, Slavering Ultradon##235498, Void-Yoked Shredclaw##243658
collect 15 Latent Shadowgraft##249387 |q 91963/1 |goto Voidstorm/0 60.64,77.90
step
_Next to you:_
talk Riftblade Astre##249130 |usename Riftblade Astre##249045
turnin Retaking Control##91543
turnin Running Amok##91963
accept Stronger Than Before##91545
step
talk Magister Umbric##247668
Select _"Astre and I will take care of the domanaar. You three close the portal."_ |gossip 135182
Signal Umbric, Maella, and Sideras |q 91545/1 |goto Voidstorm/0 58.16,78.59
step
kill Notatus the Riftscarred##247625 |q 91545/2 |goto Voidstorm/0 57.18,78.73
|tip Inside the building.
step
talk Riftblade Astre##248072
turnin Stronger Than Before##91545 |goto Voidstorm/0 52.13,69.65
accept To Be Changed##91546 |goto Voidstorm/0 52.13,69.65
step
talk Magister Umbric##235698
Select _"Can I help?"_ |gossip 135195
Talk to Umbric |q 91546/1 |goto Voidstorm/0 52.17,69.69
step
click Portal to Silvermoon
Travel to Silvermoon City |q 86522/1 |goto Voidstorm/0 51.56,70.29
step
Find Astre in Silvermoon |q 91546/2 |goto Silvermoon City M/0 32.33,87.31
step
talk Riftblade Astre##249459
Select _"I'll join you."_ |gossip 135199 |noautogossip
Talk to Astre |q 91546/3 |goto Silvermoon City M/0 32.33,87.31
step
click Ghostflower Tea
|tip Inside the building.
Brew the Ghostflower Tea |q 91546/4 |goto Silvermoon City M/0 31.55,87.94
step
click Elven Cutlery
|tip Inside the building.
Borrow the Knife |q 91546/5 |goto Silvermoon City M/0 31.16,88.31
step
click Sunfruit
|tip Inside the building.
Slice a Sunfruit Wedge |q 91546/6 |goto Silvermoon City M/0 31.86,87.34
step
click Ghostflower Tea
|tip Inside the building.
Add the Sunfruit to the Ghostflower Tea |q 91546/7 |goto Silvermoon City M/0 31.55,87.94
step
click Ghostflower Tea
|tip Inside the building.
Select _"Regrets."_ |gossip 135212
Taste the Ghostflower Tea |q 91546/8 |goto Silvermoon City M/0 31.55,87.87
step
talk Riftblade Astre##249459
|tip Inside the building.
turnin To Be Changed##91546 |goto Silvermoon City M/0 31.62,88.00
step
|next "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Midnight Intro & Campaign (Full Zone)" |only if level < 90
|next "Leveling Guides\\Midnight (80-90)\\The War of Light and Shadow Campaign" |only if level >= 90
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Delves: Season 1",{
},[[
step
ding 90
step
talk Valeera Sanguinar##242381
|tip Inside the building.
accept The Season Starts: Midnight##93501 |goto Silvermoon City M/0 52.54,78.26
step
clicknpc Delver's Guide##254565
|tip Inside the building.
Select _"<Review information on your current delve progress.>"_ |gossip 136916
Review the Delver's Guide |q 93501/1 |goto Silvermoon City M/0 52.47,78.24
step
talk Telemancer Astrandis##242399
|tip Inside the building.
Review Telemancer Astrandis' Supplies |q 93501/3 |goto Silvermoon City M/0 52.54,78.88
step
talk Naleidea Rivergleam##242398
|tip Inside the building.
View Naleidea's Supplies |q 93501/2 |goto Silvermoon City M/0 52.76,77.89
step
talk Valeera Sanguinar##242381
|tip Inside the building.
turnin The Season Starts: Midnight##93501 |goto Silvermoon City M/0 52.54,78.26
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Prey: Season 1",{
},[[
step
Complete the Midnight Story Campaign and Unlock End Game Content
|tip Use the Midnight Leveling guides to complete this.
loadguide "Leveling Guides\\Midnight (80-90)\\Full Zones (Story + Side Quests)\\Midnight Intro & Campaign (Full Zone)"
Completed Story Campaign |complete completedq(86522)
step
talk Image of Astalor Bloodsworn##259865
|tip Inside the building.
accept Prey: A Crimson Summons##95114 |goto Silvermoon City M/0 47.65,71.15
step
talk Astalor Bloodsworn##246231
|tip Downstairs inside the building.
turnin Prey: A Crimson Summons##95114 |goto Silvermoon City M/0 56.73,65.45
accept Prey: Astalor's Initiative##92926 |goto Silvermoon City M/0 56.73,65.45
step
talk Astalor Bloodsworn##253513
|tip Downstairs inside the building.
turnin Prey: Astalor's Initiative##92926 |goto Eversong Woods M/0 42.80,10.30
accept The Power of Anguish##92945 |goto Eversong Woods M/0 42.80,10.30
step
Watch the dialogue
|tip Downstairs inside the building.
click Crystalline Vessel
Inspect the Crystalline Vessel |q 92945/1 |goto Eversong Woods M/0 42.89,10.45
step
click Confiscated Trap
|tip Downstairs inside the building.
Study the First Trap |q 92945/2 |goto Eversong Woods M/0 42.94,10.47
step
click Confiscated Trap
|tip Downstairs inside the building.
Study the Second Trap |q 92945/3 |goto Eversong Woods M/0 42.92,10.44
step
click Remnant of Anguish
|tip Downstairs inside the building.
Study the Remnant of Anguish |q 92945/4 |goto Eversong Woods M/0 42.93,10.43
step
click Coalescing Anguish
|tip You will be attacked.
|tip Downstairs inside the building.
Study the Coalescing Anguish |q 92945/5 |goto Eversong Woods M/0 42.96,10.26
step
talk Astalor Bloodsworn##253513
|tip Downstairs inside the building.
turnin The Power of Anguish##92945 |goto Eversong Woods M/0 42.80,10.30
accept When Predator Becomes Prey##93043 |goto Eversong Woods M/0 42.80,10.30
step
click Bloodsworn Cage
|tip You will be attacked.
|tip Downstairs inside the building.
Release the Captured Gnarldin |q 93043/1 |goto Eversong Woods M/0 43.07,10.42
step
Watch the dialogue
|tip Downstairs inside the building.
kill Captured Gnarldin##253598
Defend Yourself from the Ambush |q 93043/2 |goto Eversong Woods M/0 42.90,10.46
step
talk Astalor Bloodsworn##253513
|tip Downstairs inside the building.
turnin When Predator Becomes Prey##93043 |goto Eversong Woods M/0 42.80,10.30
accept To the Sanctum!##93086 |goto Eversong Woods M/0 42.80,10.30
step
talk Astalor Bloodsworn##246231
|tip Downstairs inside the building.
turnin To the Sanctum!##93086 |goto Silvermoon City M/0 56.72,65.45
accept One Hero's Prey##92177 |goto Silvermoon City M/0 56.72,65.45
step
click Hunt Table
|tip Random quests.
|tip Accept one and kill the enemy.
|tip {o}Red crystal icons{} on world map and minimap.
|tip Downstairs inside the building.
Complete a Prey Hunt |q 92177/4 |goto Silvermoon City M/0 56.76,65.34
step
talk Astalor Bloodsworn##246231
|tip Downstairs inside the building.
turnin One Hero's Prey##92177 |goto Silvermoon City M/0 56.72,65.45
accept Practical Magic##92178 |goto Silvermoon City M/0 56.72,65.45
step
talk Astalor Bloodsworn##258221
|tip Downstairs inside the building.
Select _"I'm ready."_ |gossip 135889
Meet Astalor Below His Chambers |q 92178/1 |goto Silvermoon City M/0 56.10,59.81
step
click Sin'dorei Weaponry
|tip Downstairs inside the building.
Imbue the Weaponry |q 92178/2 |goto Silvermoon City M/0 55.92,59.13
step
clicknpc Arcane Construct##250256
|tip Downstairs inside the building.
Imbue the Arcane Construct |q 92178/3 |goto Silvermoon City M/0 55.38,59.16
step
clicknpc Docile Mana Wyrm##250869
|tip Downstairs inside the building.
Imbue the Mana Wyrms |q 92178/4 |goto Silvermoon City M/0 56.11,61.11
step
talk Astalor Bloodsworn##246231
|tip Downstairs inside the building.
turnin Practical Magic##92178 |goto Silvermoon City M/0 56.72,65.45
step
click Hunt Table
|tip Complete Prey hunts.
|tip Accept one and kill the enemy.
|tip {o}Red crystal icons{} on world map and minimap.
|tip Downstairs inside the building.
Reach {y}Rank 3{} with {y}Prey: Season 1{} |complete factionrenown(2764) >= 3 or completedq(92179) |goto Silvermoon City M/0 56.76,65.34
step
talk Astalor Bloodsworn##246231
|tip Downstairs inside the building.
accept Dark Mending##92179 |goto Silvermoon City M/0 56.72,65.45
step
talk Astalor Bloodsworn##257752
|tip Downstairs inside the building.
Select _"I'm ready."_ |gossip 137748
Meet Astalor Below His Chambers |q 92179/1 |goto Silvermoon City M/0 55.21,60.54
step
click Cleansing Salts
Prepare the Cleansing Salts |q 92179/2 |goto Silvermoon City M/0 55.60,61.33
step
click Crystalline Vessel
Place the Crystalline Vessel |q 92179/3 |goto Silvermoon City M/0 55.38,61.24
step
Channel Anguish with Astalor |q 92179/4 |goto Silvermoon City M/0 55.38,61.24
|tip Use the ability on the screen.
step
talk Astalor Bloodsworn##246231
|tip Downstairs inside the building.
turnin Dark Mending##92179 |goto Silvermoon City M/0 56.72,65.45
accept Precious Jewels##92180 |goto Silvermoon City M/0 56.72,65.45
step
talk Silvermoon Resident##250258
Select _"How are you feeling?"_ |gossip 135594
Observe the Bejeweled Elf |q 92180/1 |goto Silvermoon City M/0 53.85,62.79 |count 1 hidden
step
talk Blood Knight##250949
Select _"Hey... are you feeling ok?"_ |gossip 135596
Observe the Bejeweled Elf |q 92180/1 |goto Silvermoon City M/0 54.49,67.55 |count 2 hidden
step
talk Blood Knight Adept##250948
Select _"Is everything alright?"_ |gossip 135595
Observe the Bejeweled Elf |q 92180/1 |goto Silvermoon City M/0 46.51,58.87 |count 3 hidden
|tip Use the ability on the screen.
step
talk Astalor Bloodsworn##246231
|tip Downstairs inside the building.
turnin Precious Jewels##92180 |goto Silvermoon City M/0 56.72,65.45
step
click Hunt Table
|tip Complete Prey hunts.
|tip Accept one and kill the enemy.
|tip {o}Red crystal icons{} on world map and minimap.
|tip Downstairs inside the building.
Reach {y}Rank 4{} with {y}Prey: Season 1{} |complete factionrenown(2764) >= 4 |goto Silvermoon City M/0 56.76,65.34
step
talk Astalor Bloodsworn##246231
|tip Downstairs inside the building.
accept Garden Variety Sacrifices##92181 |goto Silvermoon City M/0 56.72,65.45
stickystart "Rescue_Elves_from_Anguish"
step
click Coalesced Anguish##258417
Reclaim the Coalesced Anguish |q 92181/2 |goto Silvermoon City M/0 35.11,73.95 |count 1 hidden
step
click Coalesced Anguish##258417
Reclaim the Coalesced Anguish |q 92181/2 |goto Silvermoon City M/0 32.65,72.47 |count 2 hidden
step
click Coalesced Anguish##258417
Reclaim the Coalesced Anguish |q 92181/2 |goto Silvermoon City M/0 34.54,69.89 |count 3 hidden
step
click Coalesced Anguish##258417
Reclaim the Coalesced Anguish |q 92181/2 |goto Silvermoon City M/0 33.61,67.88 |count 4 hidden
step
label "Rescue_Elves_from_Anguish"
click Blood Knight Adept##258010+
click Silvermoon Resident##250284+
Rescue #10# Elves from Anguish |q 92181/1 |goto Silvermoon City M/0 33.83,70.00
step
talk Astalor Bloodsworn##246231
|tip Downstairs inside the building.
turnin Garden Variety Sacrifices##92181 |goto Silvermoon City M/0 56.71,65.45
accept The Sheep or the Wolf##92182 |goto Silvermoon City M/0 56.71,65.45
step
talk Astalor Bloodsworn##257868
|tip Downstairs inside the building.
Select _"I'm ready."_ |gossip 137759
Meet Astalor below his chambers |q 92182/1 |goto Silvermoon City M/0 55.21,60.53
step
click Cleansing Salts
|tip Downstairs inside the building.
Prepare the Cleansing Salts |q 92182/2 |goto Silvermoon City M/0 55.59,61.33
step
click Crystalline Vessel
|tip Downstairs inside the building.
Place the Crystalline Vessel |q 92182/3 |goto Silvermoon City M/0 55.37,61.24
step
Submit to Astalor's ritual |q 92182/4 |goto Silvermoon City M/0 55.37,61.24
|tip Use the ability on your screen downstairs inside the building.
step
talk Astalor Bloodsworn##246231
|tip The floor above you downstairs inside the building.
turnin The Sheep or the Wolf##92182 |goto Silvermoon City M/0 56.71,65.45
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Abundance",{
condition_end=function() return completedq(94361) end,
},[[
step
talk Chel the Chip##241924
accept The Abundant Lands##91930 |goto Zul Aman M/0 45.05,67.54
step
talk Chel the Chip##241928
turnin The Abundant Lands##91930 |goto Zul Aman M/0 31.56,26.26
accept The Abundant Awakening##91932 |goto Zul Aman M/0 31.56,26.26
step
Begin the Scenario |scenariostart |q 91932
step
talk Dundun##251601
Select _"<Learn the ways of Abundance.>"_ |gossip 135092
Speak with Dundun to Begin the Abundant Initiation |q 91932/1 |goto Zul Aman M/0 31.60,26.09
step
Collect the Abundant Material |q 91932/2 |goto Loaknit Den/0 75.94,70.85 |notravel
|tip Inside the cave.
step
clicknpc Loanite Node##249129+
|tip On your minimap.
|tip Inside the cave.
Mine #3# Loanite Ore |q 91932/3 |goto Loaknit Den/0 69.91,61.72
step
kill Passive Abundant Combatant##250452
|tip Inside the cave.
Defeat the Passive Abundant Combatant |q 91932/4 |goto Loaknit Den/0 60.51,81.68
step
Contribute Abundance |q 91932/5 |goto Loaknit Den/0 47.89,84.49
|tip Inside the cave.
step
kill Loanite Stone##250462, Loanite Pebble##250459
|tip Inside the cave.
clicknpc Loanite Node##250460+
|tip Mining nodes with purple crystals.
|tip Walk into the {o}floating ore{}.
Collect #300# Abundant Materials |q 91932/6 |goto Loaknit Den/0 32.66,74.50
step
Contribute #300# Abundance |q 91932/7 |goto Loaknit Den/0 24.93,67.58
|tip Inside the cave.
step
Watch the dialogue
|tip Inside the cave.
Collect the Bonus and Prepare for Removal |q 91932/8 |goto Loaknit Den/0 24.93,67.58
step
talk Dundun##251601
turnin The Abundant Awakening##91932 |goto Zul Aman M/0 31.61,26.09
step
talk Dundun##251601
accept The Abundant Honor##91933 |goto Zul Aman M/0 31.61,26.09
step
talk Chel the Chip##241928
Speak to Chel the Chip |q 91933/1 |goto Zul Aman M/0 31.56,26.26
step
talk Chel the Chip##241928
buy Abundant Beacon##252607 |n
Purchase an Abundant Beacon |q 91933/2 |goto Zul Aman M/0 31.56,26.26
step
talk Dundun##251601
turnin The Abundant Honor##91933 |goto Zul Aman M/0 31.60,26.09
step
Watch the dialogue
talk Dundun##242704
accept The Abundant Life##94361 |goto Zul Aman M/0 31.60,26.09
step
talk Dundun##242704
|tip Click the {o}Harvest{} button.
|tip If it has recently ended, it may take a moment for the NPC to talk.
|tip If the green barrier is not active, just walk inside.
Begin Abundance |scenariostart Abundance: Skinning Den##2934 |goto Zul Aman M/0 31.60,26.10 |q 94361 |or
'|complete hasbuff("spell:1229266") |or
step
kill Loaknit Beast##239371, Loaknit Gnawer##239372
|tip Walk into the {o}bubbles{}.
|tip Inside the cave.
Harvest in the Loaknit Den |q 94361/2 |goto Loaknit Den/0 48.97,36.52
|tip Stand next to {o}Altars of Abundance{}.
|tip On your minimap.
step
talk Dundun##250665
|tip Click the {o}Harvest{} button.
|tip If it has recently ended, it may take a moment for the NPC to talk.
|tip If the green barrier is not active, just walk inside.
Begin Abundance |scenariostart Abundance: Enchanting Crypt##3095 |goto Eversong Woods M/0 56.73,65.78 |q 94361 |or
'|complete hasbuff("spell:1229266") |or
step
kill Mausoloa Wyrm##247041, Mausoloa Spirit##247043
|tip Walk into the {o}bubbles{}.
|tip Inside the crypt.
Harvest in the Watha'nan Crypts |q 94361/1 |goto Wartha'nan Crypts/0 43.62,31.43
|tip Stand next to {o}Altars of Abundance{}.
|tip On your minimap.
step
talk Dundun##247220
|tip Click the {o}Harvest{} button.
|tip If it has recently ended, it may take a moment for the NPC to talk.
|tip If the green barrier is not active, just walk inside.
Begin Abundance |scenariostart Abundance: Herbalism Cave##3093 |goto Harandar/0 66.16,61.69 |q 94361 |or
'|complete hasbuff("spell:1229266") |or
step
kill Floaret Grovecrawler##246390, Floaret Petalwing##246391
|tip Walk into the {o}bubbles{}.
|tip Inside the cave.
clicknpc Floaret Bud##246481+
|tip Purple bushes.
Harvest in the Floaret Grotto |q 94361/3 |goto Floaret Grotto/0 50.05,71.20
|tip Stand next to {o}Altars of Abundance{}.
|tip On your minimap.
step
talk Dundun##247514
|tip Click the {o}Harvest{} button.
|tip If it has recently ended, it may take a moment for the NPC to talk.
|tip If the green barrier is not active, just walk inside.
Begin Abundance |scenariostart Abundance: Mining Cave##3096 |goto Voidstorm/0 38.85,53.36 |q 94361 |or
'|complete hasbuff("spell:1229266") |or
step
kill Loanite Pebble##247517, Loanite Stone##247518
|tip Walk into the {o}bubbles{}.
|tip Inside the underground cave.
clicknpc Loanite Node##247516+
|tip Mining nodes with orange crystals.
Harvest in the Abundant Voidburrow |q 94361/4 |goto Voidburrow/1 49.16,45.84
|tip Stand next to {o}Altars of Abundance{}.
|tip On your minimap.
step
talk Chel the Chip##257632
turnin The Abundant Life##94361 |goto Voidstorm/0 38.91,53.20
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Catalyst",{
condition_end=function() return completedq(93687) end,
},[[
step
ding 90
step
talk Eldara Dawnrunner##243229
accept Taste True Power##93687 |goto Silvermoon City M/0 40.17,64.84 |instant
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Item Upgrade Tutorial",{
condition_end=function() return completedq(94418) end,
},[[
step
ding 90
step
talk Vaskarn##239676
|tip Inside the building.
accept Adventuring Gear##94430 |goto Silvermoon City M/0 48.56,62.04
step
Obtain an Adventurer Track Item |q 94430/1
|tip Find any gear with {o}Adventurer{} ranks.
|tip Complete activities that reward gear.
step
talk Vaskarn##239676
|tip Inside the building.
turnin Adventuring Gear##94430 |goto Silvermoon City M/0 48.56,62.04
accept Crests of the Dawn##94417 |goto Silvermoon City M/0 48.56,62.04
step
earn 30 Adventurer Dawncrest##3383 |q 94417/1
|tip World quests.
|tip Delves (Tier 1-4).
|tip Normal Prey hunts.
step
talk Cuzolth##239675
|tip Inside the building.
Upgrade Your Adventurer Track Item |q 94417/2 |goto Silvermoon City M/0 48.65,62.04
|tip Choose the item provided for the quest and it will have no Dawncrest cost.
step
talk Cuzolth##239675
|tip Inside the building.
Upgrade Your Adventurer Track Item a Second Time |q 94417/3 |goto Silvermoon City M/0 48.65,62.04
|tip This costs 20 Dawncrests.
|tip Earn Dawncrests from T4+ delves and outdoor zone events like Saltheril's Soiree.
step
talk Vaskarn##239676
|tip Inside the building.
turnin Crests of the Dawn##94417 |goto Silvermoon City M/0 48.56,62.04
accept Veteran Equipment##94432 |goto Silvermoon City M/0 48.56,62.04
step
Acquire a Veteran Track Item |q 94432/1
|tip Find any gear with {o}Veteran{} ranks.
|tip Heroic dungeons.
|tip Raids.
|tip Delves (Tier 5-6).
step
earn 10 Veteran Dawncrest##3341 |q 94432/2
|tip Heroic dungeons.
|tip Raids.
|tip Delves (Tier 5-6).
|tip Hard Prey hunts.
step
talk Cuzolth##239675
|tip Inside the building.
Upgrade Your Veteran Track Item |q 94432/3 |goto Silvermoon City M/0 48.65,62.04
|tip Choose the item provided for the quest and it will have no Dawncrest cost.
step
talk Vaskarn##239676
|tip Inside the building.
turnin Veteran Equipment##94432 |goto Silvermoon City M/0 48.56,62.04
accept Crest Transmutation##94418 |goto Silvermoon City M/0 48.56,62.04
step
talk Vaskarn##239676
|tip Inside the building.
buy Bundle of Adventurer Dawncrests##263976 |n
use Bundle of Adventurer Dawncrests##263976
Transmute the Bundle of Adventurer Dawncrests |q 94418/1 |goto Silvermoon City M/0 48.56,62.04
step
talk Vaskarn##239676
|tip Inside the building.
turnin Crest Transmutation##94418 |goto Silvermoon City M/0 48.56,62.04
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Nulling Nullaeus",{
condition_end=function() return completedq(93525) end,
},[[
step
ding 90
step
talk Valeera Sanguinar##242381
|tip Inside the building.
turnin Midnight Delves!##93519 |goto Silvermoon City M/0 52.54,78.26 |only if haveq(93519) or completedq(93519)
accept The Season Starts: Midnight##93501 |goto Silvermoon City M/0 52.54,78.26
step
talk Telemancer Astrandis##242399
|tip Inside the building.
Review the Telemancer Astrandis' Supplies |q 93501/3 |goto Silvermoon City M/0 52.53,78.87
step
talk Naleidea Rivergleam##242398
|tip Inside the building.
View the Naleidea's Supplies |q 93501/2 |goto Silvermoon City M/0 52.76,77.89
step
clicknpc Delver's Guide##254565
|tip Inside the building.
Select _"<Review information on your current delve progress.>"_ |gossip 136916
Review the Delver's Guide |q 93501/1 |goto Silvermoon City M/0 52.47,78.23
step
talk Valeera Sanguinar##242381
|tip Inside the building.
turnin The Season Starts: Midnight##93501 |goto Silvermoon City M/0 52.54,78.26
step
talk Reno Jackson##255103
|tip Inside the building.
accept A Missing Member##93511 |goto Silvermoon City M/0 52.39,78.23
step
talk Reno Jackson##255103
|tip Inside the building.
Select _"Tell me what happened."_ |gossip 137116
Watch the dialogue
Listen to Reno |q 93511/1 |goto Silvermoon City M/0 52.39,78.23
step
talk Valeera Sanguinar##242381
|tip Inside the building.
turnin A Missing Member##93511 |goto Silvermoon City M/0 52.54,78.27
accept Nulling Nullaeus##93525 |goto Silvermoon City M/0 52.54,78.27
step
Complete a Tier 7 Delve |achieve 61803 |q 93525
|tip Any delve.
|tip Required to continue.
step
Enter the Torment's Rise Delve |complete subzone("Torment's Rise") or completedq(93525) |goto Voidstorm/0 61.17,71.84
|tip Walk into the smoke wall.
|tip Inside the building.
step
kill Nullaeus##252101 |q 93525/1
|tip Inside the Torment's Rise delve.
step
talk Valeera Sanguinar##242381
|tip Inside the building.
turnin Nulling Nullaeus##93525 |goto Silvermoon City M/0 52.54,78.27
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Pet Wranglin'",{
condition_end=function() return completedq(93965) end,
},[[
step
talk Hawkrancher Saman##257039
|tip Inside the building.
accept Lost Lil' Strider##94012 |goto Silvermoon City M/0 41.76,76.41
step
clicknpc Tiff##257255
Capture Tiff |q 94012/1 |goto Silvermoon City M/0 36.70,70.76
step
clicknpc Tiff##257262
|tip Outside behind the building.
Capture Tiff, Again |q 94012/2 |goto Silvermoon City M/0 30.88,66.94
step
clicknpc Tiff##257264
Capture Tiff, Actually |q 94012/3 |goto Silvermoon City M/0 36.34,66.50
step
talk Hawkrancher Saman##257039
|tip Inside the building.
turnin Lost Lil' Strider##94012 |goto Silvermoon City M/0 41.76,76.41
accept Pet Wranglin'##93965 |goto Silvermoon City M/0 41.76,76.41
step
clicknpc Vibrant Manaling##250572
|tip Flying fish.
|tip Moves around.
|tip Enable {o}Track Pets{} on your minimap.
Capture a Wild Pet in Any Midnight Zone |q 93965/2 |goto Eversong Woods M/0 52.63,35.14
step
talk Hawkrancher Saman##257039
|tip Inside the building.
turnin Pet Wranglin'##93965 |goto Silvermoon City M/0 41.76,76.41
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Extra Storylines\\The Crimson Rogue",{
condition_end=function() return completedq(91918) end,
},[[
step
talk Valeera Sanguinar##242381
|tip Inside the building.
accept The Regent's Request##91822 |goto Silvermoon City M/0 52.55,78.27
step
talk Lor'themar Theron##250181
Select _"I'm here."_ |gossip 135475
Talk with Lor'themar |q 91822/1 |goto Silvermoon City M/0 33.56,36.03
step
talk Valeera Sanguinar##248750
turnin The Regent's Request##91822 |goto Eversong Woods M/0 61.89,68.34
accept Lines Cut, Tongues Silenced##91823 |goto Eversong Woods M/0 61.89,68.34
accept The Thieves' Trail##91824 |goto Eversong Woods M/0 61.89,68.34
accept Dead Men Keep No Secrets##91825 |goto Eversong Woods M/0 61.89,68.34
stickystart "Destroy_Communications_Orbs"
stickystart "Retrieve_Queldorei_Artifacts"
step
kill Gareth the Listener##248792
|tip Inside the building.
collect Infiltrator's Cache##248615 |q 91825/1 |goto Eversong Woods M/0 63.07,70.69
step
label "Destroy_Communications_Orbs"
click Communications Orb+
|tip Purple orbs in pedastals.
|tip On your minimap.
Destroy #4# Communications Orbs |q 91823/1 |goto Eversong Woods M/0 62.55,70.59
step
label "Retrieve_Queldorei_Artifacts"
kill Twilight Agent##248801, Twilight Bonebreaker##248797, Twilight Crystal Seer##248800, Twilight Voidcaster##248798
|tip Loot them.
Retrieve #10# Quel'dorei Artifacts |q 91824/1 |goto Eversong Woods M/0 62.12,70.99
step
talk Valeera Sanguinar##248750
turnin Lines Cut, Tongues Silenced##91823 |goto Eversong Woods M/0 61.89,68.33
turnin The Thieves' Trail##91824 |goto Eversong Woods M/0 61.89,68.33
turnin Dead Men Keep No Secrets##91825 |goto Eversong Woods M/0 61.89,68.33
accept Tripwire Tango##91826 |goto Eversong Woods M/0 61.89,68.33
step
click Locked Strongbox
|tip Click the cogs moving {o}counter-clockwise{}.
Disarm the Trap Mechanism |q 91826/1 |goto Eversong Woods M/0 61.90,68.36
step
click Locked Strongbox
Collect the Documents |q 91826/2 |goto Eversong Woods M/0 61.90,68.36
step
talk Valeera Sanguinar##248874
turnin Tripwire Tango##91826 |goto Eversong Woods M/0 61.89,68.33
accept No Loose Ends##91827 |goto Eversong Woods M/0 61.89,68.33
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin No Loose Ends##91827 |goto Silvermoon City M/0 45.44,70.34
step
talk Valeera Sanguinar##242381
|tip Inside the building.
accept A Favor for the Lion##91828 |goto Silvermoon City M/0 52.55,78.27
step
click Unsealed Letter
|tip Inside the building.
Read the Letter |q 91828/1 |goto Silvermoon City M/0 52.66,78.63
step
Meet with Valeera in Zul'Aman |q 91828/2 |goto Zul Aman M/0 40.42,71.68
step
talk Valeera Sanguinar##248982
turnin A Favor for the Lion##91828 |goto Zul Aman M/0 40.42,71.68
accept One by One##91829 |goto Zul Aman M/0 40.42,71.68
accept Intercepted##91830 |goto Zul Aman M/0 40.42,71.68
accept Keys Are Optional##91831 |goto Zul Aman M/0 40.42,71.68
stickystart "Rescue_Deserter_Groups"
stickystart "Collect_Cult_Orders"
stickystart "Slay_Twilights_Blade_Cultists"
step
kill Mordrag the Tainted##249048 |q 91829/2 |goto Zul Aman M/0 38.29,73.69
|tip Inside the building.
step
label "Rescue_Deserter_Groups"
click Shackling Post+
|tip Poles with metal spikes.
|tip On your minimap.
Rescue #4# Deserter Groups |q 91831/1 |goto Zul Aman M/0 37.70,71.75
step
label "Collect_Cult_Orders"
click Cult Orders+
|tip Rolled scrolls.
collect 6 Cult Orders##248928 |q 91830/1 |goto Zul Aman M/0 37.72,72.04
step
label "Slay_Twilights_Blade_Cultists"
kill Shadowstalker##251159, Twilight Bonecrusher##251156, Twilight Dreadblade##251154, Twilight Mindshaper##251150, Twilight Soulbinder##251152, Twilight Voidtongue##251153, Twilight Zealot##251151
Slay #15# Twilight's Blade Cultists |q 91829/1 |goto Zul Aman M/0 37.83,72.28
step
_Next to you:_
talk Valeera Sanguinar##250295 |usename Valeera Sanguinar##248982
turnin One by One##91829
turnin Intercepted##91830
turnin Keys Are Optional##91831
accept Delves: Measure Once, Cut Twice##91918
step
Enter the Twilight Crypts Delve |q 91918/1 |goto Zul Aman M/0 25.41,84.50
|tip Walk into the portal.
|tip Inside the building.
step
_Inside the Delve:_
clicknpc Tormented Deserter##253102+
|tip Friendly NPCs captured by bone elementals.
Free #6# Tormented Deserters |q 91918/2
Complete the Twilight Crypts Delve |q 91918/3
step
Leave the Delve |complete not subzone("Twilight Crypts") |q 91918
step
talk Valeera Sanguinar##242381
|tip Inside the building.
turnin Delves: Measure Once, Cut Twice##91918 |goto Silvermoon City M/0 52.55,78.27
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Extra Storylines\\The Great Vault",{
condition_end=function() return completedq(94474) end,
},[[
step
ding 90
step
talk Vaultkeeper Elysa##239670
|tip Inside the building.
accept The Great Vault##94474 |goto Silvermoon City M/0 50.39,64.91
step
click The Great Vault
|tip Inside the building.
Collect a Reward from the Great Vault |q 94474/1 |goto Silvermoon City M/0 50.23,64.99
|tip Complete various event, dungeon, raid, or delve activities to earn a Great Vault reward.
|tip Rewards are distributed after each weekly reset.
step
talk Vaultkeeper Elysa##239670
|tip Inside the building.
turnin The Great Vault##94474 |goto Silvermoon City M/0 50.39,64.91
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Saltheril's Soiree",{
condition_end=function() return completedq(91693) end,
},[[
step
Earn the "Midnight" Achievement |achieve 42045
|tip Complete the Story Only or Full Zone leveling guides and reach 90 to unlock Saltheril's Soiree.
step
talk Jonas Everdawn##247955
accept Saltheril's Haven##91627 |goto Silvermoon City M/0 45.66,62.55
|tip You can only complete this quest on one character.
|tip If it is not offered, you likely completed it on another character and can proceed to the weekly guide.
step
talk Lord Saltheril##240832
turnin Saltheril's Haven##91627 |goto Eversong Woods M/0 42.68,47.31
accept Honored Guests##91628 |goto Eversong Woods M/0 42.68,47.31
step
talk Ranger-Captain Dawnfletch##247979
Select _"Lord Saltheril has invited the Farstriders to his Haven."_ |gossip 134636
Invite the Farstriders |q 91628/4 |goto Silvermoon City M/0 24.34,71.46
step
talk Magistrix Bloodflame##247980
|tip Inside the building.
Select _"Lord Saltheril has invited the Magisters to his Haven."_ |gossip 134637
Invite the Magisters |q 91628/2 |goto Silvermoon City M/0 33.65,51.28
step
talk Knight-Lord Sunguard##247981
|tip Inside the building.
Select _"Lord Saltheril has invited the Blood Knights to his Haven."_ |gossip 134635
Invite the Blood Knights |q 91628/3 |goto Silvermoon City M/0 44.64,71.97
step
talk Vyrin the Supplier##247978
|tip Inside the building.
Select _"Lord Saltheril has invited your traders to his Haven."_ |gossip 134638
Invite the "Traders" |q 91628/5 |goto Silvermoon City M/0 52.80,63.42
step
talk Lord Saltheril##240832
turnin Honored Guests##91628 |goto Eversong Woods M/0 42.68,47.31
accept High Esteem##91629 |goto Eversong Woods M/0 42.68,47.31
step
talk Ranger Allorn##242724
Visit the Farstrider Vendor |q 91629/3 |goto Eversong Woods M/0 43.44,47.56
step
talk Neriv##242726
Visit the Row Vendor |q 91629/4 |goto Eversong Woods M/0 43.49,47.65
step
talk Apprentice Diell##242723
Visit the Magister Vendor |q 91629/1 |goto Eversong Woods M/0 43.52,47.52
step
talk Armorer Goldcrest##242725
Visit the Blood Knight Vendor |q 91629/2 |goto Eversong Woods M/0 43.54,47.50
step
talk Lord Saltheril##240832
Select _"I'd like to select someone to invite for the week."_ |gossip 132893
Select an Invitation |q 91629/5 |goto Eversong Woods M/0 42.67,47.32
|tip Choose which person you would like to invite to Saltheril's Soiree.
step
talk Lord Saltheril##240832
turnin High Esteem##91629 |goto Eversong Woods M/0 42.67,47.32
accept The Subtle Game##91693 |goto Eversong Woods M/0 42.67,47.32
step
talk Knight-Lord Sunguard##240835
Select _"I would like to give you a token of Lord Saltheril's favor."_ |gossip 133864
Bestow Saltheril's Favor |q 91693/1 |goto Eversong Woods M/0 42.40,46.67 |count 1 hidden
step
talk Magistrix Bloodflame##240834
Select _"I would like to give you a token of Lord Saltheril's favor."_ |gossip 133862
Bestow Saltheril's Favor |q 91693/1 |goto Eversong Woods M/0 42.62,46.17 |count 2 hidden
step
talk Ranger-Captain Dawnfletch##240836
Select _"I would like to give you a token of Lord Saltheril's favor."_ |gossip 133865
Bestow Saltheril's Favor |q 91693/1 |goto Eversong Woods M/0 42.87,46.41 |count 3 hidden
step
talk Lord Saltheril##240832
turnin The Subtle Game##91693 |goto Eversong Woods M/0 42.68,47.31
|next "Daily Guides\\Midnight\\Saltheril's Soiree"
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Ritual Site and Void Incursion Quest Guide",{
condition_end=function() return completedq(94382) end,
},[[
step
ding 90
step
talk Ranger Captain Lilatha##257411
accept Void Strike##96080 |goto Silvermoon City M/0 48.08,49.65
step
Disrupt a Void Strike |q 96080/1
|tip Click an active Void Strike on the map to load a guide for it and complete it.
|tip Void Strikes alternate between Eversong Woods and Zul'Aman each week.
step
talk Ranger Captain Lilatha##257411
turnin Void Strike##96080 |goto Silvermoon City M/0 48.08,49.65
step
talk Ranger Captain Lilatha##257411
accept Outfitting and Allies##94381 |goto Silvermoon City M/0 48.08,49.65
step
talk Maren Silverwing##255473
Speak to Maren Silverwing |q 94381/1 |goto Silvermoon City M/0 48.02,49.17
step
talk Kul'amara the Fierce##257415
Speak to Kul'amara the Fierce |q 94381/2 |goto Silvermoon City M/0 48.07,49.93
step
talk Kul'amara the Fierce##257415
accept Ritual Interest##94383 |goto Silvermoon City M/0 48.07,49.93
step
talk Ranger Captain Lilatha##257411
turnin Outfitting and Allies##94381 |goto Silvermoon City M/0 48.08,49.65
step
talk Lady Darkglen##257416
turnin Ritual Interest##94383 |goto Silvermoon City M/0 47.69,49.63
accept Ritual Problems##94382 |goto Silvermoon City M/0 47.69,49.63
step
click Ritual Site Reports##260571
Investigate the Ritual Site Reports |q 94382/1 |goto Silvermoon City M/0 47.83,49.55
step
Complete a Ritual Site |q 94382/2
|tip Click the active ritual site icon to load a guide for it and complete it.
|tip Ritual Sites alternate between Eversong Woods and Zul'Aman each week.
step
talk Lady Darkglen##257416
turnin Ritual Problems##94382 |goto Silvermoon City M/0 47.69,49.63
turnin Ritual Site Challenge Report: Tendrils##95547 |goto Silvermoon City M/0 47.69,49.63 |only if haveq(95547) or completedq(95547)
step
talk Lady Darkglen##257416
accept Dark Obelisk Investigation##95552 |goto Silvermoon City M/0 47.69,49.63
step
talk Ranger Captain Lilatha##257411
accept Thin Their Ranks##95550 |goto Silvermoon City M/0 48.08,49.65
stickystart "Defeat_Enemies"
step
Investigate the Dark Obelisks |q 95552/1
|tip Use the guide for the active ritual site to complete this objective.
step
label "Defeat_Enemies"
Defeat Enemies in the Ritual Site |q 95550/1
|tip Use the guide for the active ritual site to complete this objective.
|tip Kill enemies until the bar is full.
step
talk Lady Darkglen##257416
turnin Dark Obelisk Investigation##95552 |goto Silvermoon City M/0 47.69,49.63
step
talk Ranger Captain Lilatha##257411
turnin Thin Their Ranks##95550 |goto Silvermoon City M/0 48.08,49.65
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Building the Voidforge",{
getquestonmap={2405},
},[[
step
talk Decimus##243907
accept Building the Voidforge##94623 |goto Voidstorm/0 51.20,68.45
step
collect 3 Elementary Voidcore Shard##265695 |q 94623/1
|tip Farm them from Midnight Season 1 raid bosses, Bountiful Delves, and Mythic+ dungeons.
|tip You will need a Coffer Key to open the Bountiful delve chest to loot these from delves.
step
talk Decimus##243907
turnin Building the Voidforge##94623 |goto Voidstorm/0 51.20,68.45
step
label "Accept_An_Elementary_Voidcore"
talk Decimus##243907
accept An Elementary Voidcore##94625 |goto Voidstorm/0 51.20,68.45
|only if questonmap({2405},94625)
step
collect 3 Elementary Voidcore Shard##265695 |q 94625/1
|tip Farm them from Midnight Season 1 raid bosses, Bountiful Delves, and Mythic+ dungeons.
|tip You will need a Coffer Key to open the Bountiful delve chest to loot these from delves.
|only if haveq(94625)
step
talk Decimus##243907
turnin An Elementary Voidcore##94625 |goto Voidstorm/0 51.20,68.45
|only if haveq(94625)
step
|next "Accept_An_Elementary_Voidcore"
|only if questonmap({2405},94625)
step
talk Decimus##243907
accept Voidforge Reforged##94675 |goto Voidstorm/0 51.19,68.45
step
talk Decimus##243907
accept New Tools, New Heights##95268 |goto Voidstorm/0 51.19,68.45
accept A Nebulous Endeavour##95373 |goto Voidstorm/0 51.19,68.45
step
Acquire #2# Nebulous Voidcores from Decimus |q 95373/1
|tip Speak to Decimus and complete any 2 of the repeatable quests.
|tip You can turn in 5,000 gold, 2,000 Voidlight Marl, or 80 Veteran Dawncrests.
step
Catalyze #3# Hungering Oblivium |q 95268/1
|tip Complete a Bountiful delve, Mythic+ boss, or Raid boss to catalyze one oblivium.
step
Spend a Nebulous Voidcore |q 95373/2 |goto Voidstorm/0 51.19,68.45
|tip Complete a Bountiful delve, Mythic+ boss, or Raid boss and roll a Nebulous Voidcore for additional loot.
step
talk Decimus##243907
turnin New Tools, New Heights##95268 |goto Voidstorm/0 51.19,68.45
turnin A Nebulous Endeavour##95373 |goto Voidstorm/0 51.19,68.45
step
label "Accept_Feeding_the_Nilhammer"
talk Decimus##243907
accept Feeding the Nilhammer##95269 |goto Voidstorm/0 51.19,68.45 |repeatable
|only if questonmap({2405},95269)
step
Catalyze #3# Hungering Oblivium |q 95269/1
|tip Complete a Bountiful delve, Mythic+ boss, or Raid boss to catalyze one oblivium.
|only if haveq(95269)
step
talk Decimus##243907
turnin Feeding the Nilhammer##95269 |goto Voidstorm/0 51.19,68.45
|only if haveq(95269)
step
|next "Accept_Feeding_the_Nilhammer"
|only if questonmap({2405},95269)
step
talk Decimus##243907
accept The Ascendant Nilhammer##95271 |goto Voidstorm/0 51.20,68.45
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Legends of Haranir",{
getquestonmap={2413},
achieveid={61574,61344},
},[[
step
talk Naynar##240407
accept Legendary Prosperity##93932
|tip If this quest is not available, skip it.
|only if not achieved(61574)
step
label "Accept_Weekly_Quest"
talk Zur'ashar Kassameh##238170
|tip Inside the building.
accept Lost Legends##89268 |goto Harandar/0 54.18,53.13
|only if not achieved(61574)
step
Select a Relic |q 89268/1 |goto Harandar/0 54.38,53.10
|tip Choose a relic inside the building to persue.
|tip Your warband can only choose one relic per week.
|tip You will eventually be able to discover them all.
|only if not achieved(61574)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
turnin Lost Legends##89268 |goto Harandar/0 54.18,53.13
|only if not achieved(61574)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
accept Wey'nan's Ward##88993 |goto Harandar/0 54.18,53.13 |or |only if not achieved(61574,1)
accept Cauldron of Echoes##88994 |goto Harandar/0 54.18,53.13 |or |only if not achieved(61574,2)
accept The Echoless Flame##88996 |goto Harandar/0 54.18,53.13 |or |only if not achieved(61574,4)
accept Russula's Outreach##88997 |goto Harandar/0 54.18,53.13 |or |only if not achieved(61574,5)
accept Aln'hara's Bloom##88995 |goto Harandar/0 54.18,53.13 |or |only if not achieved(61574,3)
|only if not achieved(61574,1) and not achieved(61574,2) and not achieved(61574,4) and not achieved(61574,5) and not achieved(61574,3)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
accept Root of the World##88998 |goto Harandar/0 54.18,53.13
|only if achieved(61574,1) and achieved(61574,2) and achieved(61574,4) and achieved(61574,5) and achieved(61574,3) and not achieved(61574,6)
step
talk Zur'ashar Shay'neia##252871
accept Dusk Among Pigments##92694 |goto Harandar/0 70.53,51.19
|tip This quest chapter is required to unlock the final relic.
|only if achieved(61574,6) and not achieved(61574)
step
talk Orn'shan##252872
turnin Dusk Among Pigments##92694 |goto Harandar/0 74.04,53.07
accept The Stroke of Storms##92695 |goto Harandar/0 74.04,53.07
|only if achieved(61574,6) and not achieved(61574)
step
click Ancient Visionstone
Use the Visionstone to Enter the Painting |q 92695/1 |goto Harandar/0 72.29,55.69
|only if achieved(61574,6) and not achieved(61574)
step
kill Paint-Crazed Firefly##252994, Paint-Crazed Lasher##253000, Paint-Crazed Potatoad##252997, Paint-Crazed Skipper##252998, Paint-Crazed Thornmaw##255847
click Paint Globule+
|tip Small yellow puddles.
Clean Up the Painting |q 92695/2 |goto Harandar/0 72.60,54.23
|only if achieved(61574,6) and not achieved(61574)
step
click Ancient Visionstone
Use the Visonstone to Return to Your Body |q 92695/3 |goto Harandar/0 72.29,55.69
|only if achieved(61574,6) and not achieved(61574)
step
talk Orn'shan##252872
turnin The Stroke of Storms##92695 |goto Harandar/0 72.38,55.70
accept Colors Reborn Anew##92696 |goto Harandar/0 72.38,55.70
|only if achieved(61574,6) and not achieved(61574)
stickystart "Collect_Mushroom_Pigment"
step
click Withered Plant+
|tip Plants with yellow flowers.
|tip Run away from them.
Uproot #6# Plants |q 92696/2 |goto Harandar/0 72.40,57.67
|only if achieved(61574,6) and not achieved(61574)
step
label "Collect_Mushroom_Pigment"
kill Invasive Lashroom##253001, Noxious Lashroom##237037
collect 100 Mushroom Pigment##258571 |q 92696/1 |goto Harandar/0 72.40,57.67
|only if achieved(61574,6) and not achieved(61574)
step
talk Orn'shan##252872
turnin Colors Reborn Anew##92696 |goto Harandar/0 72.38,55.69
accept Hues of Tomorrow##92697 |goto Harandar/0 72.38,55.69
|only if achieved(61574,6) and not achieved(61574)
step
click Cauldron of Color##252874
|tip Up on the cliff.
Begin Painting |havebuff Painting##1257125 |goto Harandar/0 74.01,53.20 |q 92697
|only if achieved(61574,6) and not achieved(61574)
step
Create the Paintings |q 92697/1
|tip Connect the dots.
|tip Don't cross the path you create.
|only if achieved(61574,6) and not achieved(61574)
step
talk Orn'shan##252872
turnin Hues of Tomorrow##92697 |goto Harandar/0 74.01,53.15
|only if achieved(61574,6) and not achieved(61574)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
accept Sky's Hope##88999 |goto Harandar/0 54.18,53.13
|only if achieved(61574,6) and not achieved(61574)
step
label "Accept_Weekly_Quest_2"
talk Zur'ashar Kassameh##238170
|tip Inside the building.
accept Echoes Rekindled##92713 |goto Harandar/0 54.18,53.13
|only if achieved(61574)
step
Select a Relic |q 92713/1 |goto Harandar/0 54.38,53.10
|tip Choose a relic inside the building to persue.
|tip Your warband can only choose one relic per week.
|only if achieved(61574)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
turnin Echoes Rekindled##92713 |goto Harandar/0 54.18,53.13
|only if achieved(61574)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
accept The Story of Wey'nan's Ward##92716 |goto Harandar/0 54.18,53.13 |or
accept The Story of the Cauldron of Echoes##92719 |goto Harandar/0 54.18,53.13 |or
accept The Story of the Echoless Flame##92721 |goto Harandar/0 54.18,53.13 |or
accept The Story of Russula's Outreach##92722 |goto Harandar/0 54.18,53.13 |or
accept The Story of Aln'hara's Bloom##92720 |goto Harandar/0 54.18,53.13 |or
accept The Story of the Root of the World##92724 |goto Harandar/0 54.18,53.13 |or
accept The Story of Sky's Hope##92725 |goto Harandar/0 54.18,53.13 |or
|tip You can re-visit one story per week.
|tip These are often bugged after 12.0.5.
|tip If you cannot meditate at the stone, drop the quest and pick it back up.
|tip If you meditate at the stone and you cannot start the story, log out and back in and the entire quest should be complete.
|tip This guide will rely on future bugfixes to the quests.
|only if achieved(61574)
step
click Ancient Visionstone##241117
Meditate at the Ancient Visionstone |q 88993/1 |goto Harandar/0 44.27,38.29
|only if haveq(88993)
step
scenariostart The Legend of Wey'nan's Ward##2982 |goto Harandar/0 44.27,38.29 |q 88993
|only if haveq(88993)
step
kill Zaratti Bloombinder##240997, Zaratti Fanatic##240970
Slay #6# Zaratti Forces |scenariogoal 1/0 |goto Harandar/0 43.18,37.64 |q 88993
|only if haveq(88993)
step
click Laments of Wey'nan-Part 1: Finding Hope |q 93470 |goto Harandar/0 43.23,37.31 |future
|tip Inside the cave.
|only if haveq(88993)
step
click Laments of Wey'nan-Part 2: Hunting Purpose |q 93471 |goto Harandar/0 41.55,35.86 |future
|tip Inside the cave.
|only if haveq(88993)
step
click Zaratti Sword
Follow Wey'nan's Trail |scenariogoal 2/1 |goto Harandar/0 41.26,35.37 |q 88993
|tip Inside the cave.
|only if haveq(88993)
step
click Fragrant Mushroom
|tip Inside the cave.
collect Fragrant Mushroom Cap##241349 |scenariogoal 3/2 |goto Harandar/0 41.54,35.40 |q 88993
|only if haveq(88993)
step
click Wey'nan##241560
|tip Inside the cave.
Calm Wey'nan |scenariogoal 4/3 |goto Harandar/0 41.32,35.27 |q 88993
|only if haveq(88993)
step
clicknpc Zarat##241579
|tip Inside the cave.
collect Zarat's Head##241611 |scenariogoal 5/4 |goto Harandar/0 41.29,35.23 |q 88993
|only if haveq(88993)
step
click Laments of Wey'nan-Part 3: There Must Be More |q 93472 |goto Harandar/0 42.30,35.48 |future
|tip Upstairs inside the cave.
|only if haveq(88993)
step
click Wey'nan's Ward##241831
|tip Use the abilities on your bar to add to each container until they are all 3 in the green.
|tip Upstairs inside the cave.
Craft Wey'nan's Ward |scenariogoal 6/5 |goto Harandar/0 42.43,35.26 |q 88993
|only if haveq(88993)
step
talk Zur'ashar Kassameh##238170
turnin Wey'nan's Ward##88993 |goto Harandar/0 54.18,53.13
|only if haveq(88993)
step
click Ancient Visionstone##245531
Meditate at the Ancient Visionstone |q 88994/1 |goto Harandar/0 61.65,20.58
|only if haveq(88994)
step
scenariostart Echoes of Sai'alyo##3012 |q 88994
|only if haveq(88994)
step
clicknpc Chromafoil Beetle##245649+
click Amethryl Flower+
kill Alnscorned Essence##245682+
Collect Pigment Ingredients |scenariogoal 1/0 |goto Harandar/0 61.10,19.47 |q 88994
|only if haveq(88994)
step
click Echoes of Our Past-Part 1: Fading History
Learn About Fading History |q 93475 |goto Harandar/0 59.98,20.89 |future
|only if haveq(88994)
step
click Echoes of Our Past-Part 2: Alndust
|tip Inside the cave.
Learn About Alndust |q 93474 |goto Harandar/0 59.71,18.52 |future
|only if haveq(88994)
step
click Cauldro fo Echoes
|tip Inside the cave.
|tip Click light spots to move the paintbrush and connect the red points without touching the black spots.
|tip You cannot cross an area you already painted, so plan accordingly.
Create the Paintings |scenariogoal 2/1 |goto Harandar/0 59.75,18.39 |q 88994
|only if haveq(88994)
step
kill Animated Paint##245777+
|tip Walk over them inside the cave.
Squish #10# Animated Paint |scenariogoal 3/2 |goto Harandar/0 60.69,16.50 |q 88994
|only if haveq(88994)
stickystart "Collect_Paint_Splotches"
step
click Echoes of Our Past-Part 3: Dangerous Memories
|tip Upstairs inside the cave.
Learn About the Dangerous Memories |q 93473 |goto Harandar/0 61.15,15.96 |future
|only if haveq(88994)
step
label "Collect_Paint_Splotches"
Collect Paint Splotches |scenariogoal 4/3 |goto Harandar/0 61.49,16.32 |q 88994
|tip Use the ability on your screen upstairs inside the cave on the paint splotches.
|tip Then run into the lighted around around the cauldron.
|only if haveq(88994)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
turnin Cauldron of Echoes##88994 |goto Harandar/0 54.18,53.13
|only if haveq(88994)
step
click Ancient Visionstone##241836
Meditate at the Ancient Visionstone |q 88996/1 |goto Harandar/0 64.63,38.64
|only if haveq(88996)
step
scenariostart The First Shul'ka and the Flame##3122 |goto Harandar/0 64.63,38.64 |q 88996
|only if haveq(88996)
step
click Words of Obayo-Part 1: The Flame
Learn About The Flame |q 93482 |goto Harandar/0 64.85,38.45 |future
|only if haveq(88996)
step
Enter the cave |goto Harandar/0 61.36,38.07 < 7 |walk
Locate the Echoless Flame |scenariogoal 1/0 |goto Harandar/0 62.20,35.72 |q 88996
|tip Inside the cave.
|only if haveq(88996)
step
click The Echoless Flame
|tip Inside the cave.
|tip Use the first ability on the bar in the middle of the blue section five times.
|tip The blue section will get smaller each time.
Attune to the Echoless Flame |scenariogoal 2/1 |goto Harandar/0 62.20,35.71 |q 88996
|only if haveq(88996)
stickystart "Slay_Rift_Manifestations"
step
click Words of Obayo-Part 2: The Rift
|tip Inside the cave.
Learn About The Flame |q 93481 |goto Harandar/0 61.43,34.99 |future
|only if haveq(88996)
step
click Words of Obayo-Part 3: The Silence
|tip Upstairs inside the cave.
Learn About The Silence |q 93480 |goto Harandar/0 62.60,35.69 |future
|only if haveq(88996)
step
label "Slay_Rift_Manifestations"
kill Decaying Essence##248411, Aln Oozeling##248412, Rift Shade##248410
|tip They will die quickly when you come close to them.
|tip Inside and outside the cave. |notinsticky
Slay Rift Manifestations |scenariogoal 3/2 |goto Harandar/0 61.47,36.44 |q 88996
|only if haveq(88996)
step
click Containment Ward
Place the First Containment Ward |scenariogoal 4/3 |goto Harandar/0 62.07,38.62 |count 1 hidden |q 88996
|only if haveq(88996)
step
click Containment Ward
Place the Second Containment Ward |scenariogoal 4/3 |goto Harandar/0 62.84,37.12 |count 2 hidden |q 88996
|only if haveq(88996)
step
click Containment Ward
Place the Final Containment Ward |scenariogoal 4/3 |goto Harandar/0 63.45,38.16 |count 3 hidden |q 88996
|only if haveq(88996)
step
Watch the dialogue
Learn about the Echoless Flame |q 88996/2 |goto Harandar/0 63.45,38.16
|only if haveq(88996)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
turnin The Echoless Flame##88996 |goto Harandar/0 54.18,53.13
|only if haveq(88996)
step
click Ancient Visionstone##241836
Meditate at the Ancient Visionstone |q 88997/1 |goto Harandar/0 64.64,38.64
|only if haveq(88997)
step
scenariostart The Legacy of Russula##3152 |goto Harandar/0 64.64,38.64
|only if haveq(88997)
stickystart "Slay_Combatants"
step
click Tending the Lands-Part 1: The Conflict
Learn About The Conflict |q 93485 |goto Harandar/0 63.43,40.12 |future
|only if haveq(88997)
step
label "Slay_Combatants"
kill Rutaani Skirmisher##249703, Fungarian Brawler##249704
Slay #8# Combatants |scenariogoal 1/0 |goto Harandar/0 63.52,39.45 |q 88997
|only if haveq(88997)
step
talk Pustulehelm##250537
Select _"The land shows signs of strain. The fight with the rutaani presses too hard."_ |gossip 135517
Speak with Pustulehelm |scenariogoal 2/1 |goto Harandar/0 62.39,39.54 |count 1 hidden |q 88997
|only if haveq(88997)
step
talk Roonek##250551
Select _"The conflict with the fungarians continues to strain the land. The conflict must end."_ |gossip 135518
Speak with Pustulehelm |scenariogoal 2/1 |goto Harandar/0 63.50,37.43 |count 2 hidden |q 88997
|only if haveq(88997)
step
talk Russula##250640
Select _"Show me your plan. <Continue from Russula's perspective.>"_ |gossip 135556
Speak with Russula |scenariogoal 3/2 |goto Harandar/0 62.34,38.02 |q 88997
|only if haveq(88997)
step
click Rich Soil
|tip Use the ability on your vehicle bar to defend yourself if needed.
Consume the Rich Soil |scenariogoal 4/3 |goto Harandar/0 61.48,38.94 |count 1 hidden |q 88997
|only if haveq(88997)
step
click Tending the Lands-Part 2: The Plan
Learn About The Plan |q 93484 |goto Harandar/0 61.03,38.96 |future
|only if haveq(88997)
step
Enter the cave |goto Harandar/0 61.45,38.24 < 10 |walk
click Rich Soil
|tip Inside the cave.
|tip Use the ability on your vehicle bar to defend yourself if needed.
Consume the Rich Soil |scenariogoal 4/3 |goto Harandar/0 60.89,37.74 |count 2 hidden |q 88997
|only if haveq(88997)
step
click Tending the Lands-Part 3: The Cycle
|tip Inside the cave.
Learn About The Cycle |q 93483 |goto Harandar/0 61.41,37.18 |future
|only if haveq(88997)
step
click Rich Soil
|tip Inside the cave.
|tip Use the ability on your vehicle bar to defend yourself if needed.
Consume the Rich Soil |scenariogoal 4/3 |goto Harandar/0 61.41,37.03 |count 3 hidden |q 88997
|only if haveq(88997)
step
kill Warbound Fungarian##250862, Warbound Rutaani##250863
|tip Inside the cave.
|tip Use the ability on your vehicle bar to attack.
Subdue #8# Warbound Combatants |scenariogoal 5/4 |goto Harandar/0 61.85,35.85 |q 88997
|only if haveq(88997)
step
Learn about the Legacy of Russula |q 88997/2 |goto Harandar/0 61.43,36.05
|only if haveq(88997)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
turnin Russula's Outreach##88997 |goto Harandar/0 54.18,53.13
|only if haveq(88997)
step
click Ancient Visionstone##241541
Meditate at the Ancient Visionstone |q 88995/1 |goto Harandar/0 54.66,65.08
|only if haveq(88995)
step
scenariostart Where the Silence Answered##3115 |goto Harandar/0 54.66,65.08 |q 88995
|only if haveq(88995)
stickystart "Observe_Strange_Wildlife"
step
click Seeker's Trail-Part 2: Seeking Peace
Learn About Seeking Peace |q 93478 |goto Harandar/0 55.02,66.27 |future
|only if haveq(88995)
step
click Seeker's Trail-Part 1: Call of Aln'hara
Learn the Call of Aln'hara |q 93479 |goto Harandar/0 53.68,66.95 |future
|only if haveq(88995)
step
label "Observe_Strange_Wildlife"
click Auralight Moth##248205
click Whispering Petalwing##248226
click Rancidbloom Potatoad##248227
click Rutaani Sapling##255206
|tip You need to click on of each.
|tip They appear on you minimap as yellow dots.
Observe #4# Strange Wildlife |scenariogoal 1/0 |goto Harandar/0 53.57,65.56 |q 88995
|only if haveq(88995)
step
click Resonance Stone
|tip Use the first ability on the bar with the mark in the blue area of the bar.
|tip Do this five times.
Attune to the Resonance Stone |scenariogoal 2/1 |goto Harandar/0 54.46,66.65 |q 88995
|only if haveq(88995)
step
Uncover the Seeker Vision |q 91492/3 |goto Harandar/0 54.12,66.85 |count 1 hidden
|only if haveq(88995)
step
Uncover the Seeker Vision |q 91492/3 |goto Harandar/0 54.74,67.00 |count 2 hidden
|only if haveq(88995)
step
Enter the cave |goto Harandar/0 55.04,66.70 < 7 |walk
Uncover the Seeker Vision |q 91492/3 |goto Harandar/0 54.12,66.85 |count 3 hidden
|tip Upstairs inside the cave.
|only if haveq(88995)
step
click Seeker's Trail-Part 3: Unending Mission
|tip Upstairs inside the cave.
Learn About the Unending Mission |q 93476 |goto Harandar/0 55.92,66.86 |future
|only if haveq(88995)
step
click Aln'hara's Bloom
collect Aln'hara's Bloom##248139 |q 91492/4 |goto Harandar/0 55.79,66.97
|only if haveq(88995)
step
Learn about Aln'hara's Gift |q 88995/2 |goto Harandar/0 55.79,66.97
|only if haveq(88995)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
turnin Aln'hara's Bloom##88995 |goto Harandar/0 54.18,53.13
|only if haveq(88995)
step
click Ancient Visionstone##241117
Meditate at the Ancient Visionstone |q 88998/1 |goto Harandar/0 44.26,38.27
|only if haveq(88998)
step
scenariostart Of Rootways and Wardens##3135 |goto Harandar/0 44.26,38.27 |q 88998
|only if haveq(88998)
step
click Dying Root
Inspect the Dying Root |scenariogoal 1/0 |goto Harandar/0 42.97,37.55 |q 88998
|only if haveq(88998)
step
Bend the Roots to Ruilla's Will |scenariogoal 2/1 |goto Harandar/0 42.73,37.46 |q 88998
|tip Use the ability that appears on the screen.
|tip Uncross any lines on the screen three times.
|only if haveq(88998)
stickystart "Protect_and_Heal_the_Harandar"
step
click Ways of the Roots-Part 1: Serving
|tip Inside the cave.
Learn About Serving |q 93488 |goto Harandar/0 40.81,36.31 |future
|only if haveq(88998)
step
click Ways of the Roots-Part 2: Growing
|tip Inside the cave.
Learn About Growing |q 93487 |goto Harandar/0 41.48,34.13 |future
|only if haveq(88998)
step
label "Protect_and_Heal_the_Harandar"
click Burned Lasher##248766
click Entangled Chloroceros##248767
|tip Inside the cave.
Protect and Heal the Harandar |scenariogoal 3/2 |goto Harandar/0 41.39,36.20 |q 88998
|only if haveq(88998)
step
Follow the path up |goto Harandar/0 41.73,35.65 < 7 |walk
click Ways of the Roots-Part 3: Pruning
|tip Upstairs inside the cave.
|tip Hug the right side over the hole to avoid falling in.
Learn About Pruning |q 93486 |goto Harandar/0 40.50,34.70 |future
|only if haveq(88998)
step
Reveal the Rootway to Azeroth |scenariogoal 4/3 |goto Harandar/0 42.20,34.39 |q 88998
|tip Upstairs inside the cave.
|only if haveq(88998)
step
click Root of the World
|tip Upstairs inside the cave.
Accept the Guardianship to Become the First Rootwarden |scenariogoal 5/4 |goto Harandar/0 42.28,34.50 |q 88998
|only if haveq(88998)
step
Learn the Legend of the Root of the World |q 88998/2 |goto Harandar/0 42.28,34.50
|only if haveq(88998)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
turnin Root of the World##88998 |goto Harandar/0 54.18,53.13
|only if haveq(88998)
step
click Ancient Visionstone##249257
Meditate at the Ancient Visionstone |q 88999/1 |goto Harandar/0 72.28,55.67
|only if haveq(92725)
step
scenariostart A Stone Falls from the Sky##3140 |q 88999
|only if haveq(92725)
stickystart "Slay_Frenzied_Creatures"
step
click Awe'ohna's Path-Part 1: Questions
|tip Inside the cave.
Learn About Questions |q 93491 |goto Harandar/0 71.89,58.95 |future
|only if haveq(92725)
step
label "Slay_Frenzied_Creatures"
kill Frenzied Sporeglider##249292, Frenzied Grovecrawler##249293
Slay #7# Frenzied Creatures |scenariogoal 1/0 |goto Harandar/0 72.07,57.58 |q 88999
|only if haveq(92725)
step
Enter the cave |goto Harandar/0 72.86,57.75 < 7 |walk
click Awe'ohna's Path-Part 2: Answers
|tip Inside the cave.
Learn About Answers |q 93490 |goto Harandar/0 73.52,58.20 |future
|only if haveq(92725)
step
talk Tarati##249307
|tip Inside the cave.
Select _"I don't know, but I know I must try for all of Harandar."_ |gossip 135180
Speak with Tarati |scenariogoal 2/1 |goto Harandar/0 73.75,58.39 |count 1 hidden |q 88999
|only if haveq(92725)
step
click Awe'ohna's Path-Part 3: The Cradle
|tip Inside the cave.
Learn About The Cradle |q 93489 |goto Harandar/0 73.46,57.46 |future
|only if haveq(92725)
step
talk Thornhat##249308
|tip Inside the cave.
Select _"Was the goddess always gone? I think not. I'll do what I must."_ |gossip 135181
Speak with Thornhat |scenariogoal 2/1 |goto Harandar/0 72.84,57.75 |count 2 hidden |q 88999
|only if haveq(92725)
step
clicknpc Awe'ohna##249403
Commune with Awe'ohna |scenariogoal 3/2 |goto Harandar/0 72.57,57.62 |q 88999
|only if haveq(92725)
step
Fly Along Awe'ohna's Path and Try to Reach the Cradle |scenariogoal 4/3
|tip Fly through the rings along the indicated path on your mount.
|only if haveq(92725)
step
click Sky's Hope
Begin the  Blessing Ceremony |scenariogoal 5/4 |goto Harandar/0 71.86,57.05
|only if haveq(92725)
step
Watch the dialogue
Learn the Legend of Sky's Hope |q 88999/2 |goto Harandar/0 71.86,57.05
|only if haveq(92725)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
turnin Sky's Hope##88999 |goto Harandar/0 54.18,53.13
|only if haveq(88999)
step
click Ancient Visionstone##241117
Meditate at the Ancient Visionstone |q 92716/1 |goto Harandar/0 44.27,38.29
|only if haveq(92716)
step
scenariostart The Legend of Wey'nan's Ward##2982 |goto Harandar/0 44.27,38.29 |q 92716
|only if haveq(92716)
step
kill Zaratti Bloombinder##240997, Zaratti Fanatic##240970
Slay #6# Zaratti Forces |scenariogoal 1/0 |goto Harandar/0 43.18,37.64 |q 92716
|only if haveq(92716)
step
click Laments of Wey'nan-Part 1: Finding Hope |q 93470 |goto Harandar/0 43.23,37.31 |future
|tip Inside the cave.
|only if haveq(92716) and not completedq(93470)
step
click Laments of Wey'nan-Part 2: Hunting Purpose |q 93471 |goto Harandar/0 41.55,35.86 |future
|tip Inside the cave.
|only if haveq(92716) and not completedq(93471)
step
click Zaratti Sword
Follow Wey'nan's Trail |scenariogoal 2/1 |goto Harandar/0 41.26,35.37 |q 92716
|tip Inside the cave.
|only if haveq(92716)
step
click Fragrant Mushroom
|tip Inside the cave.
collect Fragrant Mushroom Cap##241349 |scenariogoal 3/2 |goto Harandar/0 41.54,35.40 |q 92716
|only if haveq(92716)
step
click Wey'nan##241560
|tip Inside the cave.
Calm Wey'nan |scenariogoal 4/3 |goto Harandar/0 41.32,35.27 |q 92716
|only if haveq(92716)
step
clicknpc Zarat##241579
|tip Inside the cave.
collect Zarat's Head##241611 |scenariogoal 5/4 |goto Harandar/0 41.29,35.23 |q 92716
|only if haveq(92716)
step
click Laments of Wey'nan-Part 3: There Must Be More |q 93472 |goto Harandar/0 42.30,35.48 |future
|tip Upstairs inside the cave.
|only if haveq(92716) and not completedq(93472)
step
click Wey'nan's Ward##241831
|tip Use the abilities on your bar to add to each container until they are all 3 in the green.
|tip Upstairs inside the cave.
Craft Wey'nan's Ward |scenariogoal 6/5 |goto Harandar/0 42.43,35.26 |q 92716
|only if haveq(92716)
step
talk Zur'ashar Kassameh##238170
turnin The Story of Wey'nan's Ward##92716 |goto Harandar/0 54.18,53.13
|only if haveq(92716)
step
click Ancient Visionstone##245531
Meditate at the Ancient Visionstone |q 92719/1 |goto Harandar/0 61.65,20.58
|only if haveq(92719)
step
scenariostart Echoes of Sai'alyo##3012 |q 92719
|only if haveq(92719)
step
clicknpc Chromafoil Beetle##245649+
click Amethryl Flower+
kill Alnscorned Essence##245682+
Collect Pigment Ingredients |scenariogoal 1/0 |goto Harandar/0 61.10,19.47 |q 92719
|only if haveq(92719)
step
click Echoes of Our Past-Part 1: Fading History
Learn About Fading History |q 93475 |goto Harandar/0 59.98,20.89 |future
|only if haveq(92719) and completedq(93475)
step
click Echoes of Our Past-Part 2: Alndust
|tip Inside the cave.
Learn About Alndust |q 93474 |goto Harandar/0 59.71,18.52 |future
|only if haveq(92719) and completedq(93474)
step
click Cauldro fo Echoes
|tip Inside the cave.
|tip Click light spots to move the paintbrush and connect the red points without touching the black spots.
|tip You cannot cross an area you already painted, so plan accordingly.
Create the Paintings |scenariogoal 2/1 |goto Harandar/0 59.75,18.39 |q 92719
|only if haveq(92719)
step
kill Animated Paint##245777+
|tip Walk over them inside the cave.
Squish #10# Animated Paint |scenariogoal 3/2 |goto Harandar/0 60.69,16.50 |q 92719
|only if haveq(92719)
stickystart "Collect_Paint_Splotches"
step
click Echoes of Our Past-Part 3: Dangerous Memories
|tip Upstairs inside the cave.
Learn About the Dangerous Memories |q 93473 |goto Harandar/0 61.15,15.96 |future
|only if haveq(92719) and completedq(93473)
step
label "Collect_Paint_Splotches"
Collect Paint Splotches |scenariogoal 4/3 |goto Harandar/0 61.49,16.32 |q 92719
|tip Use the ability on your screen upstairs inside the cave on the paint splotches.
|tip Then run into the lighted around around the cauldron.
|only if haveq(92719)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
turnin The Story of the Cauldron of Echoes##92719 |goto Harandar/0 54.18,53.13
|only if haveq(92719)
step
click Ancient Visionstone##241836
Meditate at the Ancient Visionstone |q 92721/1 |goto Harandar/0 64.63,38.64
|only if haveq(92721)
step
scenariostart The First Shul'ka and the Flame##3122 |goto Harandar/0 64.63,38.64 |q 92721
|only if haveq(92721)
step
click Words of Obayo-Part 1: The Flame
Learn About The Flame |q 93482 |goto Harandar/0 64.85,38.45 |future
|only if haveq(92721) and not completedq(93482)
step
Enter the cave |goto Harandar/0 61.36,38.07 < 7 |walk
Locate the Echoless Flame |scenariogoal 1/0 |goto Harandar/0 62.20,35.72 |q 92721
|tip Inside the cave.
|only if haveq(92721)
step
click The Echoless Flame
|tip Inside the cave.
|tip Use the first ability on the bar in the middle of the blue section five times.
|tip The blue section will get smaller each time.
Attune to the Echoless Flame |scenariogoal 2/1 |goto Harandar/0 62.20,35.71 |q 92721
|only if haveq(92721)
stickystart "Slay_Rift_Manifestations"
step
click Words of Obayo-Part 2: The Rift
|tip Inside the cave.
Learn About The Flame |q 93481 |goto Harandar/0 61.43,34.99 |future
|only if haveq(92721) and not completedq(93481)
step
click Words of Obayo-Part 3: The Silence
|tip Upstairs inside the cave.
Learn About The Silence |q 93480 |goto Harandar/0 62.60,35.69 |future
|only if haveq(92721) and not completedq(93480)
step
label "Slay_Rift_Manifestations"
kill Decaying Essence##248411, Aln Oozeling##248412, Rift Shade##248410
|tip They will die quickly when you come close to them.
|tip Inside and outside the cave. |notinsticky
Slay Rift Manifestations |scenariogoal 3/2 |goto Harandar/0 61.47,36.44 |q 92721
|only if haveq(92721)
step
click Containment Ward
Place the First Containment Ward |scenariogoal 4/3 |goto Harandar/0 62.07,38.62 |count 1 hidden |q 92721
|only if haveq(92721)
step
click Containment Ward
Place the Second Containment Ward |scenariogoal 4/3 |goto Harandar/0 62.84,37.12 |count 2 hidden |q 92721
|only if haveq(92721)
step
click Containment Ward
Place the Final Containment Ward |scenariogoal 4/3 |goto Harandar/0 63.45,38.16 |count 3 hidden |q 92721
|only if haveq(92721)
step
Watch the dialogue
Learn about the Echoless Flame |q 92721/2 |goto Harandar/0 63.45,38.16
|only if haveq(92721)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
turnin The Story of the Echoless Flame##92721 |goto Harandar/0 54.18,53.13
|only if haveq(92721)
step
click Ancient Visionstone##241836
Meditate at the Ancient Visionstone |q 92722/1 |goto Harandar/0 64.64,38.64
|only if haveq(92722)
step
scenariostart The Legacy of Russula##3152 |goto Harandar/0 64.64,38.64
|only if haveq(92722)
stickystart "Slay_Combatants"
step
click Tending the Lands-Part 1: The Conflict
Learn About The Conflict |q 93485 |goto Harandar/0 63.43,40.12 |future
|only if haveq(92722) and not completedq(93485)
step
label "Slay_Combatants"
kill Rutaani Skirmisher##249703, Fungarian Brawler##249704
Slay #8# Combatants |scenariogoal 1/0 |goto Harandar/0 63.52,39.45 |q 92722
|only if haveq(92722)
step
talk Pustulehelm##250537
Select _"The land shows signs of strain. The fight with the rutaani presses too hard."_ |gossip 135517
Speak with Pustulehelm |scenariogoal 2/1 |goto Harandar/0 62.39,39.54 |count 1 hidden |q 92722
|only if haveq(92722)
step
talk Roonek##250551
Select _"The conflict with the fungarians continues to strain the land. The conflict must end."_ |gossip 135518
Speak with Pustulehelm |scenariogoal 2/1 |goto Harandar/0 63.50,37.43 |count 2 hidden |q 92722
|only if haveq(92722)
step
talk Russula##250640
Select _"Show me your plan. <Continue from Russula's perspective.>"_ |gossip 135556
Speak with Russula |scenariogoal 3/2 |goto Harandar/0 62.34,38.02 |q 92722
|only if haveq(92722)
step
click Rich Soil
|tip Use the ability on your vehicle bar to defend yourself if needed.
Consume the Rich Soil |scenariogoal 4/3 |goto Harandar/0 61.48,38.94 |count 1 hidden |q 92722
|only if haveq(92722)
step
click Tending the Lands-Part 2: The Plan
Learn About The Plan |q 93484 |goto Harandar/0 61.03,38.96 |future
|only if haveq(92722) and not completedq(93484)
step
Enter the cave |goto Harandar/0 61.45,38.24 < 10 |walk
click Rich Soil
|tip Inside the cave.
|tip Use the ability on your vehicle bar to defend yourself if needed.
Consume the Rich Soil |scenariogoal 4/3 |goto Harandar/0 60.89,37.74 |count 2 hidden |q 92722
|only if haveq(92722)
step
click Tending the Lands-Part 3: The Cycle
|tip Inside the cave.
Learn About The Cycle |q 93483 |goto Harandar/0 61.41,37.18 |future
|only if haveq(92722) and not completedq(93483)
step
click Rich Soil
|tip Inside the cave.
|tip Use the ability on your vehicle bar to defend yourself if needed.
Consume the Rich Soil |scenariogoal 4/3 |goto Harandar/0 61.41,37.03 |count 3 hidden |q 92722
|only if haveq(92722)
step
kill Warbound Fungarian##250862, Warbound Rutaani##250863
|tip Inside the cave.
|tip Use the ability on your vehicle bar to attack.
Subdue #8# Warbound Combatants |scenariogoal 5/4 |goto Harandar/0 61.85,35.85 |q 92722
|only if haveq(92722)
step
Learn about the Legacy of Russula |q 92722/2 |goto Harandar/0 61.43,36.05
|only if haveq(92722)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
turnin The Story of Russula's Outreach##92722 |goto Harandar/0 54.18,53.13
|only if haveq(92722)
step
click Ancient Visionstone##241541
Meditate at the Ancient Visionstone |q 92720/1 |goto Harandar/0 54.66,65.08
|only if haveq(92720)
step
scenariostart Where the Silence Answered##3115 |goto Harandar/0 54.66,65.08 |q 92720
|only if haveq(92720)
stickystart "Observe_Strange_Wildlife"
step
click Seeker's Trail-Part 2: Seeking Peace
Learn About Seeking Peace |q 93478 |goto Harandar/0 55.02,66.27 |future
|only if haveq(92720) and not completedq(93478)
step
click Seeker's Trail-Part 1: Call of Aln'hara
Learn the Call of Aln'hara |q 93479 |goto Harandar/0 53.68,66.95 |future
|only if haveq(92720) and not completedq(93479)
step
label "Observe_Strange_Wildlife"
click Auralight Moth##248205
click Whispering Petalwing##248226
click Rancidbloom Potatoad##248227
click Rutaani Sapling##255206
|tip You need to click on of each.
|tip They appear on you minimap as yellow dots.
Observe #4# Strange Wildlife |scenariogoal 1/0 |goto Harandar/0 53.57,65.56 |q 92720
|only if haveq(92720)
step
click Resonance Stone
|tip Use the first ability on the bar with the mark in the blue area of the bar.
|tip Do this five times.
Attune to the Resonance Stone |scenariogoal 2/1 |goto Harandar/0 54.46,66.65 |q 92720
|only if haveq(92720)
step
Uncover the Seeker Vision |q 91492/3 |goto Harandar/0 54.12,66.85 |count 1 hidden
|only if haveq(92720)
step
Uncover the Seeker Vision |q 91492/3 |goto Harandar/0 54.74,67.00 |count 2 hidden
|only if haveq(92720)
step
Enter the cave |goto Harandar/0 55.04,66.70 < 7 |walk
Uncover the Seeker Vision |q 91492/3 |goto Harandar/0 54.12,66.85 |count 3 hidden
|tip Upstairs inside the cave.
|only if haveq(92720)
step
click Seeker's Trail-Part 3: Unending Mission
|tip Upstairs inside the cave.
Learn About the Unending Mission |q 93476 |goto Harandar/0 55.92,66.86 |future
|only if haveq(92720) and not completedq(93476)
step
click Aln'hara's Bloom
collect Aln'hara's Bloom##248139 |q 91492/4 |goto Harandar/0 55.79,66.97
|only if haveq(92720)
step
Learn about Aln'hara's Gift |q 92720/2 |goto Harandar/0 55.79,66.97
|only if haveq(92720)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
turnin The Story of Aln'hara's Bloom##92720 |goto Harandar/0 54.18,53.13
|only if haveq(92720)
step
click Ancient Visionstone##241117
Meditate at the Ancient Visionstone |q 92724/1 |goto Harandar/0 44.26,38.27
|only if haveq(92724)
step
scenariostart Of Rootways and Wardens##3135 |goto Harandar/0 44.26,38.27 |q 92724
|only if haveq(92724)
step
click Dying Root
Inspect the Dying Root |scenariogoal 1/0 |goto Harandar/0 42.97,37.55 |q 92724
|only if haveq(92724)
step
Bend the Roots to Ruilla's Will |scenariogoal 2/1 |goto Harandar/0 42.73,37.46 |q 92724
|tip Use the ability that appears on the screen.
|tip Uncross any lines on the screen three times.
|only if haveq(92724)
stickystart "Protect_and_Heal_the_Harandar"
step
click Ways of the Roots-Part 1: Serving
|tip Inside the cave.
Learn About Serving |q 93488 |goto Harandar/0 40.81,36.31 |future
|only if haveq(92724) and not completedq(93488)
step
click Ways of the Roots-Part 2: Growing
|tip Inside the cave.
Learn About Growing |q 93487 |goto Harandar/0 41.48,34.13 |future
|only if haveq(92724) and not completedq(93487)
step
label "Protect_and_Heal_the_Harandar"
click Burned Lasher##248766
click Entangled Chloroceros##248767
|tip Inside the cave.
Protect and Heal the Harandar |scenariogoal 3/2 |goto Harandar/0 41.39,36.20 |q 92724
|only if haveq(92724)
step
Follow the path up |goto Harandar/0 41.73,35.65 < 7 |walk
click Ways of the Roots-Part 3: Pruning
|tip Upstairs inside the cave.
|tip Hug the right side over the hole to avoid falling in.
Learn About Pruning |q 93486 |goto Harandar/0 40.50,34.70 |future
|only if haveq(92724) and not completedq(93486)
step
Reveal the Rootway to Azeroth |scenariogoal 4/3 |goto Harandar/0 42.20,34.39 |q 92724
|tip Upstairs inside the cave.
|only if haveq(92724)
step
click Root of the World
|tip Upstairs inside the cave.
Accept the Guardianship to Become the First Rootwarden |scenariogoal 5/4 |goto Harandar/0 42.28,34.50 |q 92724
|only if haveq(92724)
step
Learn the Legend of the Root of the World |q 92724/2 |goto Harandar/0 42.28,34.50
|only if haveq(92724)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
turnin The Story of the Root of the World##92724 |goto Harandar/0 54.18,53.13
|only if haveq(92724)
step
click Ancient Visionstone##249257
Meditate at the Ancient Visionstone |q 92725/1 |goto Harandar/0 72.28,55.67
|only if haveq(92725)
step
scenariostart A Stone Falls from the Sky##3140 |q 92725
|only if haveq(92725)
stickystart "Slay_Frenzied_Creatures"
step
click Awe'ohna's Path-Part 1: Questions
|tip Inside the cave.
Learn About Questions |q 93491 |goto Harandar/0 71.89,58.95 |future
|only if haveq(92725) and not completedq(93491)
step
label "Slay_Frenzied_Creatures"
kill Frenzied Sporeglider##249292, Frenzied Grovecrawler##249293
Slay #7# Frenzied Creatures |scenariogoal 1/0 |goto Harandar/0 72.07,57.58 |q 92725
|only if haveq(92725)
step
Enter the cave |goto Harandar/0 72.86,57.75 < 7 |walk
click Awe'ohna's Path-Part 2: Answers
|tip Inside the cave.
Learn About Answers |q 93490 |goto Harandar/0 73.52,58.20 |future
|only if haveq(92725) and not completedq(93490)
step
talk Tarati##249307
|tip Inside the cave.
Select _"I don't know, but I know I must try for all of Harandar."_ |gossip 135180
Speak with Tarati |scenariogoal 2/1 |goto Harandar/0 73.75,58.39 |count 1 hidden |q 92725
|only if haveq(92725)
step
click Awe'ohna's Path-Part 3: The Cradle
|tip Inside the cave.
Learn About The Cradle |q 93489 |goto Harandar/0 73.46,57.46 |future
|only if haveq(92725) and not completedq(93489)
step
talk Thornhat##249308
|tip Inside the cave.
Select _"Was the goddess always gone? I think not. I'll do what I must."_ |gossip 135181
Speak with Thornhat |scenariogoal 2/1 |goto Harandar/0 72.84,57.75 |count 2 hidden |q 92725
|only if haveq(92725)
step
clicknpc Awe'ohna##249403
Commune with Awe'ohna |scenariogoal 3/2 |goto Harandar/0 72.57,57.62 |q 92725
|only if haveq(92725)
step
Fly Along Awe'ohna's Path and Try to Reach the Cradle |scenariogoal 4/3
|tip Fly through the rings along the indicated path on your mount.
|only if haveq(92725)
step
click Sky's Hope
Begin the  Blessing Ceremony |scenariogoal 5/4 |goto Harandar/0 71.86,57.05 |q 92725
|only if haveq(92725)
step
Watch the dialogue
Learn the Legend of Sky's Hope |q 92725/2 |goto Harandar/0 71.86,57.05
|only if haveq(92725)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
turnin The Story of Sky's Hope##92725 |goto Harandar/0 54.18,53.13
|only if haveq(92725)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
accept The Listener##90733 |goto Harandar/0 54.18,53.13
|only if questonmap({2413},90733)
step
talk Aksem##243759
|tip Inside the building.
turnin The Listener##90733 |goto Harandar/0 53.39,49.44
|only if haveq(90733)
step
talk Zur'ashar Kassameh##238170
|tip Inside the building.
accept In the Name of the Goddess##90734 |goto Harandar/0 54.18,53.13
|only if questonmap({2413},90734)
step
click Hara'ti Herbal Tea##245828
Drink the Tea |q 90734/1 |goto Harandar/0 53.37,49.40
|only if haveq(90734)
step
talk Aksem##243759
turnin In the Name of the Goddess##90734 |goto Harandar/0 53.39,49.44
|only if haveq(90734)
step
talk Naynar##240407
turnin Legendary Prosperity##93932
|only if readyq(93932)
step
Wait for Another Relic to Become Available |complete not completedq(89284) |next "Accept_Weekly_Quest" |only if not achieved(61574)
Wait for Another Relic to Become Available |complete not completedq(89284) |next "Accept_Weekly_Quest_2" |only if achieved(61574)
|tip Another relic can be started at the next weekly reset.
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Extra Storylines\\The Curse of Ula'tek Campaign",{
},[[
step
talk Orweyna##253640
|tip Upstairs inside the building.
accept Hagar's Invitation##92895 |goto Silvermoon City M/0 45.28,70.45
step
Arrive at the Meeting |q 92895/2 |goto Harandar/2 43.94,53.20
|tip Inside The Den.
step
talk Orweyna##253654
|tip Inside The Den.
turnin Hagar's Invitation##92895 |goto Harandar/2 43.94,53.20
accept History Lesson##92899 |goto Harandar/2 43.94,53.20
step
talk Magister Umbric##253657
|tip Inside The Den.
Select _"Thank you for your insight."_ |gossip 137855
Speak to the Delegate |q 92899/1 |goto Harandar/2 44.46,56.93 |count 1 hidden
step
talk First Arcanist Thalyssra##253658
|tip Inside The Den.
Select _"Thank you for your insight."_ |gossip 137842
Speak to the Delegate |q 92899/1 |goto Harandar/2 48.63,54.03 |count 2 hidden
step
talk Queen Talanji##253660
|tip Inside The Den.
Select _"Thank you for your insight."_ |gossip 137814
Speak to the Delegate |q 92899/1 |goto Harandar/2 50.00,41.95 |count 3 hidden
step
talk Rokhan##253661
|tip Inside The Den.
Select _"Thank you for your insight."_ |gossip 137843
Speak to the Delegate |q 92899/1 |goto Harandar/2 45.53,43.96 |count 4 hidden
step
talk Vereesa Windrunner##258035
|tip Inside The Den.
Select _"Thank you for your insight."_ |gossip 137922
Speak to the Delegate |q 92899/1 |goto Harandar/2 42.46,43.08 |count 5 hidden
step
talk Shandris Feathermoon##253659
|tip Inside The Den.
Select _"Thank you for your insight."_ |gossip 137861
Speak to the Delegate |q 92899/1 |goto Harandar/2 41.94,49.19 |count 6 hidden
step
talk Orweyna##253654
|tip Inside The Den.
Select _"I have finished speaking with the delegates."_ |gossip 138840
Speak to Orweyna |q 92899/2 |goto Harandar/2 43.93,53.21
step
talk Loa Speaker Kinduru##253651
|tip Inside The Den.
turnin History Lesson##92899 |goto Harandar/2 43.55,51.16
accept A Favor for Kinduru##92900 |goto Harandar/2 43.55,51.16
step
talk Zul'jan##253653
|tip Inside The Den.
Select _"I will join you."_ |gossip 137073
Speak to Zul'jan |q 92900/3 |goto Harandar/0 54.43,52.47
step
Meet at the Den of Echoes |q 92900/4 |goto Harandar/0 38.77,46.77
step
talk Zul'jan##253673
turnin A Favor for Kinduru##92900 |goto Harandar/0 38.77,46.77
step
talk Orweyna##253675
accept Revisionist History##92901 |goto Harandar/0 38.73,46.76
step
click Ancient Visionstone##255234
Activate the Ancient Visionstone |q 92901/1 |goto Harandar/0 37.57,47.70
step
kill Enemy of the Amani##253769, Destroyer of the Amani##253770
click Injured Amani Warrior##255448
Assist the Amani |q 92901/2 |goto Harandar/0 36.41,46.19
step
Complete the Summoning |q 92901/3 |goto Harandar/0 34.97,43.86
|tip Use the ability on your screen.
step
Watch the dialogue
talk Orweyna##255659
turnin Revisionist History##92901 |goto Harandar/0 34.88,43.98
step
Watch the dialogue
talk Zul'jan##255660
accept Return to Zul'Aman##92904 |goto Harandar/0 34.89,44.05
step
Watch the dialogue
click Rootway to Zul'Aman
Take the Rootway to Zul'Aman |q 92904/1 |goto Harandar/0 34.80,43.88
step
Arrive at Talonstrike Terrace |q 92904/2 |goto Atal Aman M/1 16.46,20.33
step
talk Zul'jan##253788
turnin Return to Zul'Aman##92904 |goto Atal Aman M/1 16.46,20.33
accept Amani Answers##92907 |goto Atal Aman M/1 16.46,20.33
step
click Box of Scrolls
Select _"<Tell the others.>"_ |gossip 137308
Search the First Box |q 92907/1 |goto Atal Aman M/1 17.29,19.92
step
click Box of Scrolls
Select _"<Tell the others.>"_ |gossip 138044
Search the Second Box |q 92907/2 |goto Atal Aman M/1 15.82,22.11
step
click Box of Scrolls
Select _"<Take the mask.>"_ |gossip 137310
Search the Third Box |q 92907/3 |goto Atal Aman M/1 19.51,17.06
step
clicknpc Befuddled Amani Mask##253789
|tip It flies around this area.
Catch the Befuddled Amani Mask |q 92907/4 |goto Atal Aman M/1 18.68,18.91
step
talk Loa Speaker Kinduru##256261
Select _"<Give Kinduru the mask.>"_ |gossip 137365
Give the Befuddled Amani Mask to Kinduru |q 92907/5 |goto Atal Aman M/1 16.81,20.45
step
click Woodworking Tool
Collect the Woodworking Tool |q 92907/6 |goto Atal Aman M/1 14.34,18.58
step
click Woodworking Supplies
Collect the Woodworking Supplies |q 92907/7 |goto Atal Aman M/1 19.70,19.25
step
click Befuddled Amani Mask##256329
Repair the Befuddled Amani Mask |q 92907/8 |goto Atal Aman M/1 17.00,20.43
step
talk Zul'jan##256363
turnin Amani Answers##92907 |goto Atal Aman M/1 16.87,20.69
accept The Tablets of Numazon##92955 |goto Atal Aman M/1 16.87,20.69
step
Enter the building |goto Zul Aman M/0 39.14,39.04 < 7 |walk
talk Zul'jan##253834
|tip Inside the building.
turnin The Tablets of Numazon##92955 |goto Zul Aman M/0 39.00,38.84
accept There's the Rub##92957 |goto Zul Aman M/0 39.00,38.84
step
talk Befuddled Amani Mask##253833
|tip Inside the building.
accept Brain Drain##92958 |goto Zul Aman M/0 38.99,38.91
stickystart "Collect_Vilebranch_Hex_Fetish"
step
click Ancient Amani Tablet+
|tip Inside the building.
Collect #6# Amani Tablet Rubbings |q 92957/1 |goto Zul Aman M/0 37.87,37.23
step
label "Collect_Vilebranch_Hex_Fetish"
kill Vilebranch Hexwarder##236185, Vilebranch Siphoner##236184
|tip Inside the building.
collect 8 Vilebranch Hex Fetish##262659 |q 92958/1 |goto Zul Aman M/0 37.87,37.23
step
talk Loa Speaker Kinduru##253832
turnin There's the Rub##92957 |goto Zul Aman M/0 38.95,38.93
step
talk Befuddled Amani Mask##253833
turnin Brain Drain##92958 |goto Zul Aman M/0 38.99,38.90
accept Mission to Maisara##92952 |goto Zul Aman M/0 38.99,38.90
step
Arrive at Maisara Deeps |q 92952/2 |goto Zul Aman M/0 44.51,36.71
step
talk Enchanted Amani Mask##253805
turnin Mission to Maisara##92952 |goto Zul Aman M/0 44.51,36.71
accept Memories of Malacrass##92953 |goto Zul Aman M/0 44.51,36.71
step
talk Zul'jan##253806
accept Digging Deeper##92951 |goto Zul Aman M/0 44.46,36.65
stickystart "Collect_Vilebranch_Scrolls"
step
kill Hex Master Uy'okan##256583
|tip Use the ability on the screen on his corpse.
Interrogate Hex Master Uy'okan |q 92953/3 |goto Zul Aman M/0 45.32,38.08
step
kill Hex Master Jintagga##256576
|tip Use the ability on the screen on his corpse.
Interrogate Hex Master Jintagga |q 92953/1 |goto Zul Aman M/0 46.59,37.52
step
kill Hex Master Soye'mal##256582
|tip Use the ability on the screen on his corpse.
Interrogate Hex Master Soye'mal |q 92953/2 |goto Zul Aman M/0 46.48,41.39
step
label "Collect_Vilebranch_Scrolls"
click Vilebranch Scroll+
collect 8 Vilebranch Scroll##262752 |q 92951/1 |goto Zul Aman M/0 45.59,39.46
step
talk Loa Speaker Kinduru##253804
turnin Memories of Malacrass##92953 |goto Zul Aman M/0 44.46,36.74
turnin Digging Deeper##92951 |goto Zul Aman M/0 44.46,36.74
step
talk Zul'jan##253806
accept Maisara Caverns: Master of Souls##92954 |goto Zul Aman M/0 44.46,36.65
step
talk Zul'jan##253806
Speak to Zul'jan to Queue for the Maisara Caverns Follower Dungeon |q 92954/2 |goto Zul Aman M/0 44.46,36.65
step
kill Vordaza##248595
|tip The second boss of Maisara Caverns.
collect Malacrass's Notes##262791 |q 92954/3
step
kill Rak'tul##248605 |q 92954/4 |goto Maisara Caverns/0 0.00,0.00
|tip The final boss of Maisara Caverns.
step
talk Zul'jan##253806
turnin Maisara Caverns: Master of Souls##92954 |goto Zul Aman M/0 44.46,36.64
accept The Serpent Shrine##93010 |goto Zul Aman M/0 44.46,36.64
step
talk Zul'jan##253840
turnin The Serpent Shrine##93010 |goto Atal Aman M/1 67.77,47.25
accept Legacy of the Amani##93011 |goto Atal Aman M/1 67.77,47.25
step
click Zul'jan##256643
Select _"We are ready. Go ahead Zul'jan."_ |gossip 138526
Speak to Zul'jan |q 93011/1 |goto Atal Aman M/1 67.76,47.25
step
Defend Zul'jan |q 93011/2 |goto Atal Aman M/1 64.45,47.23
|tip Kill the enemies that attack in waves.
step
talk Loa Speaker Kinduru##259705
Select _"<I'll protect you. Go talk to Zul'jan.>"_ |gossip 139407
Speak to Kinduru |q 93011/3 |goto Atal Aman M/1 64.45,47.23
step
talk Orweyna##259778
turnin Legacy of the Amani##93011 |goto Zul Aman M/0 44.35,66.66
accept Dead End##93012 |goto Zul Aman M/0 44.35,66.66
step
talk Zul'jarra##253848
Select _"<Relate the entire story to Zul'jarra.>"_ |gossip 137417
Speak to Zul'jarra |q 93012/1 |goto Zul Aman M/0 43.78,68.36
step
click Kinduru's Mortar
Use Kinduru's Mortar to Grind Bog Herbs |q 93012/2 |goto Zul Aman M/0 43.57,68.38
step
Pour the Death Rites Mixture Into the Fires |q 93012/3 |goto Zul Aman M/0 43.59,68.24 |count 1 hidden
|tip Use the ability on the screen.
step
Pour the Death Rites Mixture Into the Fires |q 93012/3 |goto Zul Aman M/0 43.67,68.55 |count 2 hidden
|tip Use the ability on the screen.
step
Pour the Death Rites Mixture Into the Fires |q 93012/3 |goto Zul Aman M/0 43.86,68.66 |count 3 hidden
|tip Use the ability on the screen.
step
talk Zul'jarra##253848
turnin Dead End##93012 |goto Zul Aman M/0 43.78,68.36
step
More Content Coming Soon |complete false
|tip New chapters will release at a later date.
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Assault and Strike Back (Val)",{
},[[
step
talk Riftblade Maella##263479
accept A Secondary Strike##97215 |goto Silvermoon City M/0 47.60,51.04
|tip If this quest is not offered, skip this step until next week.
step
talk Riftblade Maella##263479
turnin A Secondary Strike##97215 |goto Silvermoon City M/0 47.60,51.04 |only if readyq(96048)
accept Stalkers of the Stars##96049 |goto Silvermoon City M/0 47.60,51.04
accept Veterans of the Great Dark##96703 |goto Silvermoon City M/0 47.60,51.04
step
Meet the Demon Hunters in Upper Murder Row |q 96049/1 |goto Silvermoon City M/0 51.39,60.41
|tip Up on the wall.
step
talk Belath Dawnblade##263523
|tip Up on the wall.
Select _"Riftblade Maella is ready. She awaits your forces in the Voidstorm."_ |gossip 139484
Speak to Belath Dawnblade |q 96049/2 |goto Silvermoon City M/0 51.39,60.41
step
talk Allari the Souleater##263524
|tip Up on the wall.
Select _"Are you joining Riftblade Maella's strike team?"_ |gossip 139905
Speak to Allari the Souleater |q 96049/3 |goto Silvermoon City M/0 51.45,60.43
step
talk Leona Darkstrider##263525
|tip Up on the wall.
Select _"Grant me Spectral Sight and I will attune the Ward."_ |gossip 139507
Speak to Leona Darkstrider |q 96049/4 |goto Silvermoon City M/0 51.30,61.74
step
Charge the Umbral Attuning Shard |q 96049/5 |goto Silvermoon City M/0 52.62,57.59
|tip Walk near the cloudy ghosts on the wall.
step
Return the Charged Umbral Attuning Shard to Leona |q 96049/6 |goto Silvermoon City M/0 51.29,61.71
step
Meet the Lightforged at the North-East Gate |q 96703/1 |goto Silvermoon City M/0 49.92,41.00
step
talk Captain Fareeya##268330
Select _"Are you joining Riftblade Maella's strike team?"_ |gossip 140523
Speak to Captain Fareeya |q 96703/4 |goto Silvermoon City M/0 49.83,40.40
step
talk Commander Tala'saan##263522
Select _"Riftblade Maella is ready. She awaits your forces in the Voidstorm."_ |gossip 139483
Speak to Commander Tala'saan |q 96703/2 |goto Silvermoon City M/0 49.90,40.37
step
talk Baraat the Longshot##263520
Select _"Are you joining Riftblade Maella's strike team?"_ |gossip 139901
Speak to Baraat the Longshot |q 96703/3 |goto Silvermoon City M/0 50.50,41.17
step
talk Archmage Y'mera##263519
Select _"I can help, but I'll need some help becoming invisible."_ |gossip 140038
Speak to Archmage Y'mera |q 96703/5 |goto Silvermoon City M/0 49.86,41.03
step
click Lightveil Cloaking Tether##263798
|tip Run away while tethered.
Test the Lightveil Tether While Stealthed |q 96703/6 |goto Silvermoon City M/0 49.92,41.00
step
talk Riftblade Maella##263479
turnin Stalkers of the Stars##96049 |goto Silvermoon City M/0 47.60,51.04
turnin Veterans of the Great Dark##96703 |goto Silvermoon City M/0 47.60,51.04
accept To the Voidstorm and Beyond!##96708 |goto Silvermoon City M/0 47.60,51.04
step
Meet Riftblade Maella at the Howling Ridge |q 96708/2 |goto Voidstorm/0 51.55,71.06
step
talk Riftblade Maella##263480
turnin To the Voidstorm and Beyond!##96708 |goto Voidstorm/0 51.55,71.06
step
talk Riftblade Maella##263480
accept Through the Cold Rift##96051 |goto Voidstorm/0 51.55,71.06
step
click Cynosure of Twilight
Retrieve the Cynosure of Twilight |q 96051/1 |goto Voidstorm/0 51.49,71.17
step
Open the Rift |q 96051/2 |goto Voidstorm/0 51.49,71.17
|tip Use the ability on the screen.
step
click Greater Void Portal##264308
|tip Enter the portal on Normal difficulty.
Travel through the Rift |q 96051/3 |goto Voidstorm/0 51.42,71.32
step
Watch the dialogue
Wait for Riftblade Maella's Orders |q 96051/4 |goto Val/0 63.58,15.98
step
talk Riftblade Maella##263482
turnin Through the Cold Rift##96051 |goto Val/0 59.24,19.50
accept Surveying the Frozen Wastes##96053 |goto Val/0 59.24,19.50
step
click Surveillance Beacon
Activate the First Surveillance Beacon |q 96053/2 |goto Val/0 50.78,39.84 |count 1 hidden
step
click Surveillance Beacon
Activate the Second Surveillance Beacon |q 96053/2 |goto Val/0 44.12,64.45 |count 2 hidden
step
click Surveillance Beacon
Activate the Final Beacon |q 96053/3 |goto Val/0 41.88,84.69
step
talk Belath Dawnblade##263987
turnin Surveying the Frozen Wastes##96053 |goto Val/0 41.64,84.65
accept Imperator Pertinax##96473 |goto Val/0 41.64,84.65
accept A Frigid Welcome to Val##97071 |goto Val/0 41.64,84.65
step
click Portal to Void Acropolis Interior
Enter the Portal |q 96473/1 |goto Val/0 49.48,97.52
step
kill Imperator Pertinax##261072 |q 96473/2 |goto Void Acropolis/0 39.12,82.00
|tip Use the group finder to accomplish this.
step
use the Lightveil Recall Beacon##276373
Use the Lightveil Recall Beacon to Return to Camp |q 97071/1
step
talk Riftblade Maella##263482
turnin A Frigid Welcome to Val##97071 |goto Val/0 59.44,22.12
step
talk Decimus##264879
turnin Imperator Pertinax##96473 |goto Val/0 59.75,22.31
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Assault and Strike Back (Naigtal)",{
},[[
step
talk Riftblade Maella##263479
accept A Secondary Strike##97215 |goto Silvermoon City M/0 47.60,51.04
|tip If this quest is not offered, skip this step until next week.
step
talk Riftblade Maella##263479
turnin A Secondary Strike##97215 |goto Silvermoon City M/0 47.60,51.04 |only if readyq(96048)
accept Stalkers of the Stars##96049 |goto Silvermoon City M/0 47.60,51.04
accept Veterans of the Great Dark##96703 |goto Silvermoon City M/0 47.60,51.04
step
Meet the Demon Hunters in Upper Murder Row |q 96049/1 |goto Silvermoon City M/0 51.39,60.41
|tip Up on the wall.
step
talk Belath Dawnblade##263523
|tip Up on the wall.
Select _"Riftblade Maella is ready. She awaits your forces in the Voidstorm."_ |gossip 139484
Speak to Belath Dawnblade |q 96049/2 |goto Silvermoon City M/0 51.39,60.41
step
talk Allari the Souleater##263524
|tip Up on the wall.
Select _"Are you joining Riftblade Maella's strike team?"_ |gossip 139905
Speak to Allari the Souleater |q 96049/3 |goto Silvermoon City M/0 51.45,60.43
step
talk Leona Darkstrider##263525
|tip Up on the wall.
Select _"Grant me Spectral Sight and I will attune the Ward."_ |gossip 139507
Speak to Leona Darkstrider |q 96049/4 |goto Silvermoon City M/0 51.30,61.74
step
Charge the Umbral Attuning Shard |q 96049/5 |goto Silvermoon City M/0 52.62,57.59
|tip Walk near the cloudy ghosts on the wall.
step
Return the Charged Umbral Attuning Shard to Leona |q 96049/6 |goto Silvermoon City M/0 51.29,61.71
step
Meet the Lightforged at the North-East Gate |q 96703/1 |goto Silvermoon City M/0 49.92,41.00
step
talk Captain Fareeya##268330
Select _"Are you joining Riftblade Maella's strike team?"_ |gossip 140523
Speak to Captain Fareeya |q 96703/4 |goto Silvermoon City M/0 49.83,40.40
step
talk Commander Tala'saan##263522
Select _"Riftblade Maella is ready. She awaits your forces in the Voidstorm."_ |gossip 139483
Speak to Commander Tala'saan |q 96703/2 |goto Silvermoon City M/0 49.90,40.37
step
talk Baraat the Longshot##263520
Select _"Are you joining Riftblade Maella's strike team?"_ |gossip 139901
Speak to Baraat the Longshot |q 96703/3 |goto Silvermoon City M/0 50.50,41.17
step
talk Archmage Y'mera##263519
Select _"I can help, but I'll need some help becoming invisible."_ |gossip 140038
Speak to Archmage Y'mera |q 96703/5 |goto Silvermoon City M/0 49.86,41.03
step
click Lightveil Cloaking Tether##263798
|tip Run away while tethered.
Test the Lightveil Tether While Stealthed |q 96703/6 |goto Silvermoon City M/0 49.92,41.00
step
talk Riftblade Maella##263479
turnin Stalkers of the Stars##96049 |goto Silvermoon City M/0 47.60,51.04
turnin Veterans of the Great Dark##96703 |goto Silvermoon City M/0 47.60,51.04
accept To the Voidstorm and Beyond!##96708 |goto Silvermoon City M/0 47.60,51.04
step
Meet Riftblade Maella at the Howling Ridge |q 96708/2 |goto Voidstorm/0 51.55,71.06
step
talk Riftblade Maella##263480
turnin To the Voidstorm and Beyond!##96708 |goto Voidstorm/0 51.55,71.06
step
talk Riftblade Maella##263480
accept Through the Mana Rift##96052 |goto Voidstorm/0 51.55,71.06
step
click Cynosure of Twilight
Retrieve the Cynosure of Twilight |q 96052/1 |goto Voidstorm/0 51.49,71.17
step
Open the Rift |q 96052/2 |goto Voidstorm/0 51.49,71.17
|tip Use the ability on the screen.
step
click Greater Void Portal##264308
|tip Enter the portal on Normal difficulty.
Travel through the Rift |q 96052/3 |goto Voidstorm/0 51.42,71.32
step
Watch the dialogue
Wait for Riftblade Maella's Orders |q 96052/4 |goto Naigtal/0 46.65,83.47
step
Watch the dialogue
talk Riftblade Maella##264024
turnin Through the Mana Rift##96052 |goto Naigtal/0 48.07,81.12
accept Surveying the Mana-Bog##96054 |goto Naigtal/0 48.07,81.12
step
click Surveillance Beacon
Activate the First Surveillance Beacon |q 96054/2 |goto Naigtal/0 44.08,52.93 |count 1 hidden
step
click Surveillance Beacon
Activate the Second Surveillance Beacon |q 96054/2 |goto Naigtal/0 60.12,43.12 |count 2 hidden
step
click Surveillance Beacon
|tip Up on the rock.
Activate the Final Beacon |q 96054/3 |goto Naigtal/0 70.93,62.13
step
talk Commander Tala'saan##264028
|tip Up on the rock.
turnin Surveying the Mana-Bog##96054 |goto Naigtal/0 70.81,62.22
accept The Nexus-Captain##96472 |goto Naigtal/0 70.81,62.22
accept A Swampy Welcome to Naigtal##97072 |goto Naigtal/0 70.81,62.22
step
kill Nexus-Captain Leth'ir##260875 |q 96472/1 |goto Naigtal/0 77.34,70.86
|tip Use the group finder to accomplish this.
step
use the Lightveil Recall Beacon##276372
Use the Lightveil Recall Beacon to Return to Camp |q 97072/1
step
talk Riftblade Maella##264024
turnin A Swampy Welcome to Naigtal##97072 |goto Naigtal/0 48.53,81.99
turnin The Nexus-Captain##96472 |goto Naigtal/0 48.53,81.99
step
talk Archmage Y'mera##266034
accept Data Decryption Disaster##96567 |goto Naigtal/0 47.78,81.93
step
talk Commander Tala'saan##265950
accept Hal'hadon't You Dare!##96568 |goto Naigtal/0 47.53,82.06
step
talk Kifaan##265559
accept Bouncy Mushrooms##96744 |goto Naigtal/0 47.68,81.25
step
Bounce On A Mushroom |q 96744/1 |goto Naigtal/0 47.05,81.52
|tip Jump on a brown mushroom with spores coming off of it around the camp.
step
kill Sporeray Elder##265791+
|tip Up on top of the mushrooms.
collect 3 Canopy Specimen##275256 |q 96744/2 |goto Naigtal/0 47.05,81.52
step
talk Kifaan##265559
turnin Bouncy Mushrooms##96744 |goto Naigtal/0 47.68,81.25
accept Aerospores##96745 |goto Naigtal/0 47.68,81.25
step
Use A Mushroom to Gain Aero Eyes |q 96745/1 |goto Naigtal/0 47.05,81.52
|tip Jump on a brown mushroom with spores coming off of it around the camp.
step
Pass Through #4# Aerospores |q 96745/2 |goto Naigtal/0 47.05,81.52
|tip They look like green orbs up on top of the mushrooms.
step
talk Kifaan##265559
turnin Aerospores##96745 |goto Naigtal/0 47.68,81.25
step
talk Zuronar##265581
accept The Grappler##96845 |goto Naigtal/0 48.11,83.29
stickystart "Grapple_Aerospores"
step
Grapple #3# Mushrooms |q 96845/1 |goto Naigtal/0 44.05,75.75
|tip Use the {o}Lighthook Grapple{} ability on the screen near brown mushrooms.
step
label "Grapple_Aerospores"
Grapple #3# Aerospores |q 96845/1 |goto Naigtal/0 44.05,75.75
|tip Use the {o}Lighthook Grapple{} ability on the screen near floating green orbs above the big mushrooms.
step
talk Zuronar##265581
turnin The Grappler##96845 |goto Naigtal/0 48.11,83.29
stickystart "Slay_Hal'hadar"
stickystart "Retrieve_Decrypted_Data"
step
click Energized Crystal Conductor
accept Conductive Crystals##96569 |goto Naigtal/0 70.31,48.53
stickystart "Collect_Energized_Crystal_Conductor"
step
label "Collect_Energized_Crystal_Conductor"
click Energized Crystal Conductor+
|tip They look like poles with pink crystals and light on top.
collect 6 Energized Crystal Conductor##274936 |q 96569/1 |goto Naigtal/0 71.60,41.04
step
label "Slay_Hal'hadar"
kill Arcforge Sentinel##266203, Hal'hadar Manatech##265891
Slay #10# Hal'hadar at Arterial Mana-Forge |q 96568/1 |goto Naigtal/0 71.60,41.04
step
label "Retrieve_Decrypted_Data"
click Encrypted Data Collator##266038
Select _"<Activate manual decryption.>"_ |gossip 139982 |noautogossip
|tip Uncross the lines one time for each crystal present.
|tip You can also skip the mini game in exchange for a moderate cast time.
Retrieve #3# Decrypted Data |q 96567/1 |goto Naigtal/0 71.60,41.04
step
talk Commander Tala'saan##265950
turnin Hal'hadon't You Dare!##96568 |goto Naigtal/0 47.52,82.06
step
talk Archmage Y'mera##266034
Select _"I found these crystals on ethereal devices around their manaforge."_ |gossip 140098
Return the Energized Crystal Conductors to Y'mera |q 96569/2 |goto Naigtal/0 47.78,81.93
step
talk Archmage Y'mera##266034
turnin Data Decryption Disaster##96567 |goto Naigtal/0 47.78,81.93
step
talk Kifaan##265559
turnin Conductive Crystals##96569 |goto Naigtal/0 47.69,81.25
step
talk Archmage Y'mera##266034
accept Technological Transference##96570 |goto Naigtal/0 47.78,81.93
|tip Quests from this point will be offered periodically from NPCs.
step
talk Commander Tala'saan##265950
accept The Node Knows##96571 |goto Naigtal/0 47.52,82.06
stickystart "Collect_Infantry's_Data-Node"
stickystart "Accept_Malfunctioning_Nullframe"
step
click Salvaged Command Orb##265860
Recover the Pilfered Technology |q 96570/1 |goto Naigtal/0 77.33,43.34 |count 1 hidden
step
click Glittering Crypt Holoprint
|tip Inside the building.
collect Glittering Crypt Holoprint##275689 |q 96571/4 |goto Naigtal/0 73.24,75.37
step
click Shattered Defense Crystal##265857
Recover the Pilfered Technology |q 96570/1 |goto Naigtal/0 77.36,77.88 |count 2 hidden
step
click Soul Lattice Holoprint
collect Soul Lattice Holoprint##275687 |q 96571/3 |goto Naigtal/0 77.12,77.89
step
click Deconstructed Vigilant##265859
Recover the Pilfered Technology |q 96570/1 |goto Naigtal/0 67.45,76.44|count 3 hidden
step
click Nullframe Holoprint
collect Nullframe Holoprint##275477 |q 96571/2 |goto Naigtal/0 65.81,71.46
step
click Confiscated Domanaar Forge##265858
Recover the Pilfered Technology |q 96570/1 |goto Naigtal/0 64.29,71.78|count 4 hidden
step
label "Collect_Infantry's_Data-Node"
kill Hal'hadar Tech-Cadet##265580, Hal'hadar Forge-Grunt##265537, Hal'hadar Artificer##265536
collect 12 Infantry's Data-Node##274990 |q 96571/1 |goto Naigtal/0 74.48,76.90
step
label "Accept_Malfunctioning_Nullframe"
kill Hal'hadar Tech-Cadet##265580, Hal'hadar Forge-Grunt##265537, Hal'hadar Artificer##265536
accept Malfunctioning Nullframe##96572 |goto Naigtal/0 74.48,76.90
step
click Malfunctioning Nullframe##265975
Apply the Translocator to the Nullframe |q 96572/1 |goto Naigtal/0 54.77,34.11
step
kill Malfunctioning Nullframe##265975
Intercept the Nullframe |q 96572/2 |goto Naigtal/0 54.77,34.11
step
talk Commander Tala'saan##265950
turnin The Node Knows##96571 |goto Naigtal/0 47.51,82.05
step
talk Archmage Y'mera##266034
turnin Technological Transference##96570 |goto Naigtal/0 47.78,81.90
turnin Malfunctioning Nullframe##96572 |goto Naigtal/0 47.78,81.90
step
talk Veraan##265558
accept Soul Lattice Revealed##96573 |goto Naigtal/0 48.03,81.54
step
talk Archmage Y'mera##266034
Select _"What's the plan?"_ |gossip 140110
Speak with Archmage Y'mera |q 96573/1 |goto Naigtal/0 47.78,81.91
step
talk Commander Tala'saan##265950
turnin Soul Lattice Revealed##96573 |goto Naigtal/0 47.53,82.07
accept Cryptside Rendezvous##96574 |goto Naigtal/0 47.53,82.07
step
kill Hal'hadar Cultivator##265115, Hal'hadar Harvester##264793
Slay #12# Extraction Shore Hal'hadar |q 96574/1 |goto Naigtal/0 31.90,45.69
step
talk Allari the Souleater##266829
|tip Inside the crypt.
turnin Cryptside Rendezvous##96574 |goto Vilaldoun/0 75.51,44.68
accept Mementos of the Dead##96576 |goto Vilaldoun/0 75.51,44.68
step
talk Archmage Y'mera##266541
|tip Inside the crypt.
accept Cages of the Soul##96575 |goto Vilaldoun/0 75.38,43.65
stickystart "Free_Draenei_Spirits"
stickystart "Collect_Forgotten_Memorial_Tribute"
step
click Vilaldoun Defense Ward##267875
|tip Inside the crypt.
Repair the First Vilaldoun Defense Ward |q 96575/2 |goto Vilaldoun/0 69.93,51.67 |count 1 hidden
step
click Dust-Covered Hologram
|tip In the crevice inside the crypt.
accept Vilaldoun Valediction##97031 |goto Vilaldoun/0 53.86,26.41
step
click Vilaldoun Defense Ward##267875
|tip Inside the crypt.
Repair the Second Vilaldoun Defense Ward |q 96575/2 |goto Vilaldoun/0 54.40,20.57 |count 2 hidden
step
click Vilaldoun Defense Ward##267875
|tip Inside the crypt.
Repair the Third Vilaldoun Defense Ward |q 96575/2 |goto Vilaldoun/0 69.56,76.90 |count 3 hidden
step
click Vilaldoun Defense Ward##267875
|tip Inside the crypt.
Repair the Final Vilaldoun Defense Ward |q 96575/2 |goto Vilaldoun/0 47.81,64.63 |count 4 hidden
step
label "Free_Draenei_Spirits"
click Energized Soul Cage##266551+
kill Focused Soul Artificer##266673+
|tip Inside the crypt. |notinsticky
Free #15# Draenei Spirits |q 96575/1 |goto Vilaldoun/0 47.55,60.56
step
label "Collect_Forgotten_Memorial_Tribute"
kill Crypt Raider##265766, Artificer's Haulnaught##267542, Focused Soul Artificer##266673
|tip Inside the crypt. |notinsticky
collect 30 Forgotten Memorial Tribute##276255 |q 96576/1 |goto Vilaldoun/0 47.55,60.56
step
talk Commander Tala'saan##266540
|tip Inside the crypt.
turnin Mementos of the Dead##96576 |goto Vilaldoun/0 36.77,72.96
turnin Cages of the Soul##96575 |goto Vilaldoun/0 36.77,72.96
accept The Soul Architect##96577 |goto Vilaldoun/0 36.77,72.96
stickystart "Kill_Artiseer_Ahl'syraz"
step
kill Vigilant Khirsalya##266832
|tip Inside the crypt.
collect Fragmented Soul Lattice##276342 |q 96577/2 |goto Vilaldoun/0 26.99,62.32
step
label "Kill_Artiseer_Ahl'syraz"
kill Artiseer Ahl'syraz##266831 |q 96577/1 |goto Vilaldoun/0 26.99,62.32
|tip Inside the crypt. |notinsticky
step
talk Commander Tala'saan##266540
|tip Inside the crypt.
turnin The Soul Architect##96577 |goto Vilaldoun/0 36.89,72.95
accept Cryptic Departure##96578 |goto Vilaldoun/0 36.89,72.95
step
talk Archmage Y'mera##266034
turnin Vilaldoun Valediction##97031 |goto Naigtal/0 47.78,81.93
step
talk Veraan##265558
turnin Cryptic Departure##96578 |goto Naigtal/0 48.03,81.54
step
talk Commander Tala'saan##265950
accept Stargrim Revelations##97037 |goto Naigtal/0 47.52,82.06
step
talk Archmage Y'mera##266034
Select _"What did you find in the hologem?"_ |gossip 140414
Select _"Why would the Hal'hadar care about the ruins of a draenei world?"_ |gossip 140413 |noautogossip
Select _"I heard Nashabor is still inhabited.<Skip Y'mera's explanation>"_ |gossip 140418 |noautogossip
Speak to Archmage Y'mera |q 97037/1 |goto Naigtal/0 47.78,81.92
step
talk Tul'amar Thrice-Exiled##245240
Select _"<Tell her what Y'mera revealed.>"_ |gossip 140426
Select _"You may keep it."_ |gossip 140429
Speak to Tul'amar, Thrice Exiled in the Howling Ridge |q 97037/2 |goto Voidstorm/0 50.90,68.65
step
talk Tul'amar Thrice-Exiled##245240
turnin Stargrim Revelations##97037 |goto Voidstorm/0 50.90,68.65
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Extra Storylines\\The Sunstrider Omnium",{
},[[
step
talk Magister's Missive##265903
accept The Magister's Call##96223 |goto Silvermoon City M/0 47.88,51.77
step
talk Grand Magister Rommath##264064
|tip Up on the platform.
turnin The Magister's Call##96223 |goto Silvermoon City M/0 38.88,48.58
accept The Magister's Conundrum##96225 |goto Silvermoon City M/0 38.88,48.58
step
click Portal to Magister's Terrace
Take the Portal to Magister's Terrace |q 96225/1 |goto Silvermoon City M/0 39.05,48.88
step
Follow the path |goto The Lycaneum/0 44.36,62.13 < 7 |walk
Meet Rommath and Umbric in the Magister's Terrace Library |q 96225/2 |goto The Lycaneum/0 61.65,15.10
|tip Upstairs in the back of The Lycaneum.
|tip Avoid exploding purple areas.
step
talk Magister Umbric##264065
turnin The Magister's Conundrum##96225 |goto The Lycaneum/0 61.65,15.10
accept Omnium Anomalies##96226 |goto The Lycaneum/0 61.65,15.10
step
talk Grand Magister Rommath##264066
accept Lycaneum Chaos##96227 |goto The Lycaneum/0 63.27,16.55
stickystart "Cleanse_the_Library_Chaos"
step
click Omnial Anomaly
kill Image of Dar'Khan Drathir##264357 |q 96226/1 |goto The Lycaneum/0 57.60,15.28 |count 1 hidden
step
click Omnial Anomaly
kill Image of Dath'Remar Sunstrider##264361 |q 96226/1 |goto The Lycaneum/0 47.82,42.37 |count 2 hidden
step
click Omnial Anomaly
kill Image of Kael'thas Sunstrider##264309 |q 96226/1 |goto The Lycaneum/0 63.60,44.06 |count 3 hidden
step
label "Cleanse_the_Library_Chaos"
Click objects around the area
Cleanse the Library Chaos |q 96227/1 |goto The Lycaneum/0 63.27,16.55
step
talk Grand Magister Rommath##264066
turnin Lycaneum Chaos##96227 |goto The Lycaneum/0 63.26,16.51
step
talk Magister Umbric##264065
turnin Omnium Anomalies##96226 |goto The Lycaneum/0 61.73,15.03
accept The Shadowed Spire##96228 |goto The Lycaneum/0 61.73,15.03
step
talk Grand Magister Rommath##264066
accept Unravelling the Wards##96230 |goto The Lycaneum/0 63.26,16.51
step
talk Grand Magister Rommath##264068
|tip Up on the platform.
Select _"I can do that."_ |gossip 139813
Speak with Rommath at the Grand Magister's Office |q 96230/1 |goto Isle of Quel Danas M/0 58.81,57.64
step
click Belo'vir's Security Ward
Select _"<Convince Rommath to unravel the wards for you. This may take some time.> <Skip Mini Game.>"_ |gossip 140403 |noautogossip
|tip Inside the building.
|tip You can also choose to do the game to avoid the cast time.
Unravel the First Ward |q 96230/2 |goto Isle of Quel Danas M/0 59.00,59.91
step
click Belo'vir's Security Ward
Select _"<Convince Rommath to unravel the wards for you. This may take some time.> <Skip Mini Game.>"_ |gossip 140407 |noautogossip
|tip Upstairs inside the building.
|tip You can also choose to do the game to avoid the cast time.
Unravel the Second Ward |q 96230/3 |goto Isle of Quel Danas M/0 58.92,59.19
step
click Belo'vir's Security Ward
Select _"<Convince Rommath to unravel the wards for you. This may take some time.> <Skip Mini Game.>"_ |gossip 140405 |noautogossip
|tip You can also choose to do the game to avoid the cast time.
Unravel the Third Ward |q 96230/4 |goto Isle of Quel Danas M/0 57.60,59.44
step
talk Grand Magister Rommath##264945
turnin Unravelling the Wards##96230 |goto Isle of Quel Danas M/0 58.91,57.28
accept The Grand Magister's Key-Cipher##96231 |goto Isle of Quel Danas M/0 58.91,57.28
step
click Belo'vir's Arcane Vault
|tip Upstairs inside the building.
Open the Arcane Vault |q 96231/1 |goto Isle of Quel Danas M/0 59.34,59.34
step
kill Mirror Image of Belo'vir Salonar##264915
|tip Upstairs inside the building.
collect Grand Magister's Key-Cipher##274261 |q 96231/2 |goto Isle of Quel Danas M/0 58.97,59.51
step
talk Grand Magister Rommath##264944
|tip Upstairs inside the building.
turnin The Grand Magister's Key-Cipher##96231 |goto Isle of Quel Danas M/0 59.06,59.30
step
talk Magister Umbric##264067
|tip Inside the building.
Select _"Seems easy enough."_ |gossip 139725
Speak with Umbric at Dawnstar Spire |q 96228/1 |goto Eversong Woods M/0 62.60,63.11
step
click Focusing Anchor##264792
|tip Inside the building.
Click the First Anchor |complete hasbuff(1292860) or completedq(96228) |goto Eversong Woods M/0 62.61,62.97
step
Connect the First Anchor |q 96228/2 |goto Eversong Woods M/0 62.47,62.77
|tip Inside the building.
step
click Focusing Anchor##264731
|tip Inside the building.
Click the Second Anchor |complete hasbuff(1292860) or completedq(96228) |goto Eversong Woods M/0 62.48,62.77
step
Connect the Second Anchor |q 96228/3 |goto Eversong Woods M/0 62.60,62.56
|tip Inside the building.
step
click Focusing Anchor##264732
|tip Inside the building.
Click the Third Anchor |complete hasbuff(1292860) or completedq(96228) |goto Eversong Woods M/0 62.61,62.56
step
Connect the Third Anchor |q 96228/4 |goto Eversong Woods M/0 62.74,62.76
|tip Inside the building.
step
click Focusing Anchor##264733
|tip Inside the building.
Click the Final Anchor |complete hasbuff(1292860) or completedq(96228) |goto Eversong Woods M/0 62.75,62.78
step
Connect the Final Anchor |q 96228/5 |goto Eversong Woods M/0 62.62,62.96
|tip Inside the building.
step
talk Magister Umbric##264067
|tip Inside the building.
turnin The Shadowed Spire##96228 |goto Eversong Woods M/0 62.60,63.11
accept The Void Reveals##96229 |goto Eversong Woods M/0 62.60,63.11
step
click Revealed Gateway
|tip Inside the building.
Take the Revealed Gateway |q 96229/1 |goto Eversong Woods M/0 62.61,62.76
step
click Pulsing Void Magicule
|tip Inside the building.
Inspect the Void Magicule |q 96229/2 |goto Eversong Woods M/0 62.55,62.60
step
kill Bound Horror from Beyond##264791
|tip Inside the building.
collect Void Magicule##274036 |q 96229/3 |goto Eversong Woods M/0 62.52,62.70
step
click Return Gateway
|tip Inside the building.
Return to the Dawnstar Spire |complete subzone("Dawnstar Spire") or completedq(96229) |goto Eversong Woods M/0 62.52,63.12
step
talk Magister Umbric##264787
|tip Inside the building.
turnin The Void Reveals##96229 |goto Eversong Woods M/0 62.55,62.56
accept Return to the Omnium##96232 |goto Eversong Woods M/0 62.55,62.56
step
click Portal to Magister's Terrace
Take the Portal to Magister's Terrace |q 96232/1 |goto Eversong Woods M/0 62.53,62.48
step
Follow the path |goto The Lycaneum/0 44.36,62.13 < 7 |walk
Return to the Omnium |q 96232/2 |goto The Lycaneum/0 63.20,16.58
|tip Inside the building.
step
talk Grand Magister Rommath##264066
|tip Inside the building.
turnin Return to the Omnium##96232 |goto The Lycaneum/0 63.20,16.58
accept The Omnium Reawakens##96233 |goto The Lycaneum/0 63.20,16.58
step
talk Grand Magister Rommath##264066
|tip Inside the building.
Select _"I am ready."_ |gossip 139847
Activate the Sunstrider Omnium |q 96233/1 |goto The Lycaneum/0 63.20,16.58
step
talk Magister Umbric##264069
|tip Inside the building.
turnin The Omnium Reawakens##96233 |goto The Lycaneum/0 60.37,10.42
accept Seeking Knowledge Week 1 of 5: The Omnium Folio##96410 |goto The Lycaneum/0 60.37,10.42
step
talk Grand Magister Rommath##264070
|tip Inside the building.
Select _"Powerful runic enchantments? Count me in."_ |gossip 139871
Speak to Grand Magister Rommath |q 96410/1 |goto The Lycaneum/0 59.74,10.91
step
talk Grand Magister Rommath##264070
|tip Inside the building.
Select _"<Take the Omnium Folio from Rommath.>"_ |gossip 139890
Receive the Omnium Folio |q 96410/2 |goto The Lycaneum/0 59.74,10.91
step
Open Your Omnium Folio and Empower Your First Rune |q 96410/3 |goto The Lycaneum/0 59.74,11.01
|tip Inside the building.
step
talk Grand Magister Rommath##264070
|tip Inside the building.
turnin Seeking Knowledge Week 1 of 5: The Omnium Folio##96410 |goto The Lycaneum/0 59.79,10.85
step
talk Magister Umbric##264069
|tip Inside the building.
accept Seeking Knowledge Week 2 of 5: Ritualized Arcana##96441 |goto The Lycaneum/0 60.37,10.39
stickystart "Collect_Ritualized_Arcana"
step
Disrupt a Ritual Site |q 96441/1
|tip Complete the active ritual site in Harandar, Zul'Aman, or Eversong Woods.
step
label "Collect_Ritualized_Arcana"
collect 8 Ritualized Arcana##274576 |q 96441/2
|tip They drop from objective mobs in Ritual Sites.
step
talk Grand Magister Rommath##264070
|tip Inside the building.
turnin Seeking Knowledge Week 2 of 5: Ritualized Arcana##96441 |goto The Lycaneum/0 59.77,11.01
step
talk Grand Magister Rommath##264070
|tip Inside the building.
accept Seeking Knowledge Week 3 of 5: Leyline Assaults##96442 |goto The Lycaneum/0 59.77,11.01
step
collect 5 Dark-Ley Coalescence##274577 |q 96442/1
|tip Complete Void Strike events in any zone to earn these.
step
talk Grand Magister Rommath##264070
|tip Inside the building.
turnin Seeking Knowledge Week 3 of 5: Leyline Assaults##96442 |goto The Lycaneum/0 59.77,11.01
step
talk Grand Magister Rommath##264070
accept Seeking Knowledge Week 4 of 5: Magical Primessence##96443 |goto The Lycaneum/0 59.77,11.04
step
Recover a Pure Magical Primessence |q 96443/1
|tip You can acquire one from any final dungeon or delve boss or any raid boss.
step
talk Grand Magister Rommath##264070
turnin Seeking Knowledge Week 4 of 5: Magical Primessence##96443 |goto The Lycaneum/0 59.77,11.04
step
talk Grand Magister Rommath##264070
accept Seeking Knowledge Week 5 of 5: Off-World Magic##96444 |goto The Lycaneum/0 59.77,11.04
stickystart "Complete_World_Quests"
step
Recover a Fragment of Alien Void or Arcane Magic |q 96443/1
|tip You can acquire one from either Imperator Pertinax in Val or Nexus-Captain Leth'ir in Naigtal.
|tip Complete the associated world quest to loot the fragment.
step
label "Complete_World_Quests"
Complete #3# World Quests on Val or Naigtal |q 96444/2 |goto The Lycaneum/0 61.02,11.62
|tip Use the appropriate world quest guide to accomplish this.
step
talk Grand Magister Rommath##264070
turnin Seeking Knowledge Week 5 of 5: Off-World Magic##96444 |goto The Lycaneum/0 59.77,11.04
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\Extra Storylines\\Lorewalking",{
author="QuestCore",
description="This guide will assist you in completing the Lowerwalking questlines with Li Li Stormstout.",
startlevel=10,
patch='120007',
},[[
step
talk Li Li Stormstout##230246
accept Lorewalking##90705 |goto Stormwind City/0 64.22,16.12 |only if Alliance
accept Lorewalking##90705 |goto Orgrimmar/1 54.27,56.55 |only if Horde
step
talk Li Li Stormstout##230246
turnin Lorewalking##90705 |goto Stormwind City/0 64.22,16.12 |only if Alliance
turnin Lorewalking##90705 |goto Orgrimmar/1 54.27,56.55 |only if Horde
step
label "Begin_Lorewalking"
talk Li Li Stormstout##230246
Select _"(Lorewalking) What stories can you tell me?"_ |gossip 124311 |noautogossip
Begin a Lorewalking Campaign |complete haveq(84371,84779,84782,85871,84784,84789,85027,85029,85028,85884,85885,85252,85254,92826,92829,92831,92832) |goto Dornogal/0 49.65,31.53 |only if Alliance
Begin a Lorewalking Campaign |complete haveq(84371,84779,84782,85871,84784,84789,85027,85029,85028,85884,85885,85252,85254,92826,92829,92831,92832) |goto Orgrimmar/1 54.25,56.60 |only if Horde
|tip Choose the Lorewalking campaign you prefer.
|next "Begin_Xalath_Questline" |only if haveq(84371,84779,84782,85871,84784,84789)
|next "Begin_Eth_Questline" |only if haveq(85027,85029,85028)
|next "Begin_LK_Questline" |only if haveq(85884,85885)
|next "Begin_QT_Questline" |only if haveq(85252,85254)
|next "Begin_Loa_Questline" |only if haveq(92826,92829,92831,92832)
step
label "Begin_QT_Questline"
talk Li Li Stormstout##230246
Select _"Tell me about the Blood Elves."_ |gossip 131412
Talk to Cho |q 85252/1 |goto Stormwind City/0 64.19,16.26 |only if Alliance
Talk to Cho |q 85252/1 |goto Orgrimmar/1 54.35,56.66 |only if Horde
step
Watch the dialogue
Arrive in the Ghostlands |complete zone("Ghostlands") or completedq(85252)
step
talk Lor'themar Theron##145015
accept Writing on the Wall##53882 |goto Ghostlands/0 46.29,31.99
step
click Mishi##238920
Ride Mishi |invehicle Mishi##238921 |goto Ghostlands/0 46.40,32.78 |q 53882
step
Watch the dialogue
Arrive at Thalassian Pass |outvehicle
step
click Lamp
Light the First Flame |q 53882/1 |goto Ghostlands/0 47.74,84.01
step
_Next to you:_
Watch the dialogue
talk Lor'themar Theron##145005 |usename Lor'themar Theron##67990
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
Watch the dialogue
talk Lor'themar Theron##145005 |usename Lor'themar Theron##67990
turnin The First to Fall##53735
accept The Day Hope Died##53737
step
Accompany Lor'themar |q 85252/4
step
click Mishi##238940
Ride Mishi |invehicle Mishi##238945 |goto Ghostlands/0 37.48,64.57 |q 85252
step
Watch the dialogue
Arrive in Eversong Woods |outvehicle
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
talk Lor'themar Theron##145005 |usename Lor'themar Theron##67990
turnin The Day Hope Died##53737
step
talk Lorewalker Cho##234616
Select _"What happened after Sylvanas fell?"_ |gossip 136429
Talk to Cho |q 85252/7 |goto Eversong Woods/0 51.53,68.81
step
Begin The Fall of the Sunwell Scenario |scenariostart The Fall of the Sunwell##1699 |goto Shrine of the Eclipse/1 42.78,31.48 |q 54096
|tip Walk forward into the green portal.
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
Defeat Seer Drannix |scenariogoal 3/43406 |goto Shrine of the Eclipse/1 50.48,16.97 |q 54096
step
Watch the dialogue
|tip Use the "For Anasterian!" ability.
|tip It appears as a button on the screen.
Defeat Arthas |scenariogoal 4/43407 |goto Shrine of the Eclipse/1 50.48,16.97 |q 54096
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
Complete the Fall of the Sunwell Scenario |q 54096/1 |goto Shrine of the Eclipse/1 50.49,68.47
step
Watch the dialogue
click Portal to Silvermoon City |goto Shrine of the Eclipse/1 55.44,72.22
Return to Silvermoon City |goto Silvermoon City/0 72.15,42.75 < 20 |noway |c |q 54096
step
Run up the ramp |goto Silvermoon City/0 63.82,32.43 < 20 |only if walking
talk Lor'themar Theron##16802
turnin The Fall of the Sunwell##54096 |goto Silvermoon City/0 60.38,28.10
step
Watch the dialogue
Arrive in Stormwind City |complete zone("Stormwind City") or completedq(85252) |only if Alliance
Arrive in Orgrimmar |complete zone("Orgrimmar") or completedq(85252) |only if Horde
step
talk Li Li Stormstout##230246
turnin Lorewalking: Children of the Blood##85252 |goto Stormwind City/0 64.19,16.26 |only if Alliance
turnin Lorewalking: Children of the Blood##85252 |goto Orgrimmar/1 54.35,56.66 |only if Horde
accept Lorewalking: Children of the Void##85254 |goto Stormwind City/0 64.19,16.26 |only if Alliance
accept Lorewalking: Children of the Void##85254 |goto Orgrimmar/1 54.35,56.66 |only if Horde
step
talk Li Li Stormstout##230246
Select _"Tell me about the Void Elves."_ |gossip 131413
Talk to Cho |q 85254/1 |goto Stormwind City/0 64.19,16.26 |only if Alliance
Talk to Cho |q 85254/1 |goto Orgrimmar/1 54.35,56.66 |only if Horde
step
Watch the dialogue
Arrive in Silvermoon City |complete zone("Silvermoon City") or completedq(85254)
step
talk Lady Liadrin##130133
|tip Inside the building.
accept Remember the Sunwell##49354 |goto Silvermoon City/0 58.12,19.88
step
click Portal to the Sunwell
|tip Inside the building.
Enter the Scenario |scenariostart Remember the Sunwell##1443 |goto Silvermoon City/0 53.95,19.49 |q 49354
step
Meet with Liadrin |scenariogoal Meet with Liadrin.##1/38106 |goto Shrine of the Eclipse/1 61.10,71.48 |q 49354
step
Watch the dialogue
|tip Follow {o}First Arcanist Thalyssra{}.
Walk with Thalyssra |scenariogoal Walk with Thalyssra##2/38160 |goto Shrine of the Eclipse/1 50.74,65.27 |q 49354
'|clicknpc First Arcanist Thalyssra##129023
step
kill Creeping Void##126489, Void Effusion##130139, Void Fragment##126538
Defeat the Void Attacker |scenariogoal Defeat the Sunwell Guardians##3/38161 |goto Shrine of the Eclipse/1 50.74,65.27 |q 49354
step
kill Aruun the Darkener##129659 |scenariogoal Aruun the Darkener slain##4/38162 |goto Shrine of the Eclipse/1 48.69,66.06 |q 49354
step
Watch the dialogue
Close the Void Rift |scenariogoal Void rift closed##5/38519 |goto Shrine of the Eclipse/1 50.26,65.38 |q 49354
step
Leave the Sunwell |scenariogoal Leave the Sunwell##6/38163 |goto Shrine of the Eclipse/1 61.98,67.33 |q 49354
step
click Silvermoon Translocator
Return to Silvermoon City |complete zone("Silvermoon City") or completedq(49354) |goto Shrine of the Eclipse/1 61.98,67.33
step
Complete the "Remember the Sunwell" Scenario |q 49354/1
step
talk Lady Liadrin##130133
|tip Inside the building.
turnin Remember the Sunwell##49354 |goto Silvermoon City/0 58.45,19.09
step
talk Lorewalker Cho##234616
Select _"Tell me about Alleria."_ |gossip 136404
Talk to Cho |q 85254/4 |goto Silvermoon City/0 58.45,19.09
step
accept The Ghostlands##49787 |goto Silvermoon City/0 58.45,19.09
|tip You will accept this quest automatically.
step
Watch the dialogue
Travel to the Ghostlands |q 49787/1
step
click Umbric's Notes - Sanctum of the Moon
|tip Inside the building.
Locate Umbric's Notes - Sanctum of the Moon |q 49787/2 |goto Ghostlands/0 33.63,34.46
step
click Umbric's Notes - Andilien Estate
|tip Inside the building.
Locate Umbric's Notes - Andilien Estate |q 49787/3 |goto Ghostlands/0 46.87,54.97
step
click Mishi##238940
Ride Mishi |invehicle Mishi##253223 |goto Ghostlands/0 46.53,56.71 |q 49787
step
Watch the dialogue
Arrive at the Dawnstar Spire |outvehicle
step
click Teleportation Console
|tip Up on the balcony of the building.
Teleport to the Dawnstar Spire
confirm |goto Ghostlands/0 79.65,17.51 |q 49787
step
click Umbric's Notes - Dawnstar Spire
|tip Up the ramp at the top of the building.
Locate Umbric's Notes - Dawnstar Spire |q 49787/4 |goto Ghostlands/0 79.64,19.68
step
talk Alleria Windrunner##126321
|tip Up the ramp at the top of the building.
turnin The Ghostlands##49787 |goto Ghostlands/0 79.69,19.62
accept Telogrus Rift##48962 |goto Ghostlands/0 79.69,19.62
step
click Rift to Telogrus
|tip At the top of the building.
Enter the Rift to Telogrus |complete subzone("Telogrus Rift") or completedq(48962) |goto Ghostlands/0 79.64,19.86
step
talk Magister Umbric##126646
Select _"What is this place?"_ |gossip 47941
Speak with Umbric |scenariogoal Speak with Umbric##1/37328 |goto Void Elf Scenario/0 47.83,73.88 |q 48962
step
Watch the dialogue
|tip Follow {o}Magister Umbric{} and {o}Alleria Windrunner{} as they walk.
|tip They eventually walk to this location.
Walk with Umbric and Alleria |scenariogoal Walk with Umbric and Alleria.##2/37282 |goto Void Elf Scenario/0 49.30,76.78 |q 48962
'|clicknpc Magister Umbric##126646, Alleria Windrunner##126602
step
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##3/38503 |goto Void Elf Scenario/0 48.97,72.91 |q 48962
step
kill Netherguard Transmogrifier##126493, Netherguard Adept##126492, Netherguard Phaseblade##126491, Creeping Void##126489
|tip Follow {o}Alleria Windrunner{}.
|tip She will help you fight.
Repel the Void |scenariostage 4 |goto Void Elf Scenario/0 39.30,54.49 |q 48962
'|clicknpc Alleria Windrunner##126602
step
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##5/38971 |goto Void Elf Scenario/0 37.32,49.26 |q 48962
step
kill Dark Manifestation##126559+
Close the Rift |scenariogoal Rift sealed##6/37295 |goto Void Elf Scenario/0 28.92,40.34 |q 48962
step
kill Nhr'ghesh##126589
Defeat Nhr'ghesh |scenariogoal Nhr'ghesh defeated##7/37296 |goto Void Elf Scenario/0 28.92,40.34 |q 48962
step
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##8/38972 |goto Void Elf Scenario/0 28.89,38.30 |q 48962
step
click Voidforge
Shut Down the Voidforge |scenariogoal Voidforges shut down##9/37329 |goto Void Elf Scenario/0 29.00,27.81 |count 1 |q 48962
step
click Voidforge
Shut Down the Voidforge |scenariogoal Voidforges shut down##9/37329 |goto Void Elf Scenario/0 28.49,21.70 |count 2 |q 48962
step
click Voidforge
Shut Down the Voidforge |scenariogoal Voidforges shut down##9/37329 |goto Void Elf Scenario/0 26.21,24.46 |count 3 |q 48962
step
kill Nether-Prince Durzaan##126470
Defeat Nether-Prince Durzaan |scenariogoal Nether-Walker defeated##10/37284 |goto Void Elf Scenario/0 27.90,24.09 |q 48962
Complete the "Telogrus Rift" Scenario |q 48962/1 |goto Void Elf Scenario/0 27.90,24.09
step
talk Lorewalker Cho##234616
|tip Use the {o}Ask a Question{} button on the recap panel if he does not appear.
turnin Telogrus Rift##48962 |goto Void Elf Scenario/0 27.90,24.09
step
Complete the Void Elf Quests |q 85254/5 |goto Void Elf Scenario/0 27.90,24.09
step
talk Lorewalker Cho##234616
turnin Lorewalking: Children of the Void##85254 |goto Void Elf Scenario/0 27.90,24.09
|next "Begin_Lorewalking"
step
label "Begin_Xalath_Questline"
Watch the dialogue
Listen to Li Li Stormstout to Learn About the Legion Invasion |q 84371/1
step
_Next to you:_
talk Li Li Stormstout##230246
Select _"I am ready to learn about the High Priest's journey to find Xal'atath."_ |gossip 124809
Talk to Lorewalker Cho to Learn of the High Priest's Journey |q 84371/2
step
Watch the dialogue
Begin the {b}Blade in Twilight{} Scenario |scenariostart Blade in Twilight##991
step
talk Alonsus Faol##231472
accept Blade in Twilight##40710 |goto Tirisfal Glades/0 12.79,59.00
step
Go to the Marked Location in Tirisfal Glades |q 40710/1 |goto Tirisfal Glades/0 13.47,57.58
step
click Slaghammer's Notes: The New Leader
Find the First Clue |scenariogoal 1/29555 |goto Tirisfal Glades/0 13.47,57.59 |q 40710
step
click Slaghammer's Notes: Tyr's Fall
|tip Inside the tent.
Find the Second Clue |scenariogoal 1/29556 |goto Tirisfal Glades/0 13.19,55.46 |q 40710
step
click Slaghammer's Notes: Xal'atath, the Blade of the Black Empire
Find the Third Clue |scenariogoal 1/29557 |goto Tirisfal Glades/0 13.90,55.40 |q 40710
step
Enter the underwater tunnel |goto Tirisfal Glades/25 37.44,12.84 < 10 |walk
Enter the Tomb at the Bottom of the Lake |scenariogoal 2/29342 |goto Tirisfal Glades/25 35.66,31.62 |q 40710
step
kill Twilight Bladetwister##101127, Twilight Shadowcaster##101122
Watch the dialogue
Defeat the Guards at the Door to Gain Access |scenariogoal 3/29346 |goto Tirisfal Glades/25 37.17,40.86 |q 40710
step
Enter the Tomb of Tyr |scenariogoal 4/29379 |goto Tirisfal Glades/25 37.16,48.00 |q 40710
step
kill Twilight Ritualist##101875
Stop the Dampening Ritual |scenariogoal 5/29347 |goto Tirisfal Glades/25 40.96,50.40 |count 1 hidden |q 40710
step
kill Twilight Ritualist##101875
Stop the Dampening Ritual |scenariogoal 5/29347 |goto Tirisfal Glades/25 41.21,58.40 |count 2 hidden |q 40710
step
kill Twilight Ritualist##101875
Stop the Dampening Ritual |scenariogoal 5/29347 |goto Tirisfal Glades/25 33.98,59.91 |count 3 hidden |q 40710
step
kill Twilight Ritualist##101875
Stop the Dampening Ritual |scenariogoal 5/29347 |goto Tirisfal Glades/25 33.59,50.47 |count 4 hidden |q 40710
step
kill Amassing Darkness##102693
Defeat the Amassing Darkness |scenariogoal 6/29507 |goto Tirisfal Glades/25 37.45,54.95 |q 40710
step
Run down the stairs |goto Tirisfal Glades/25 37.60,67.18 < 7 |walk
kill Borgoth the Master Reaver##101897, Twilight Bladetwister##101127, Void Tendril##102784
Fight to the Prison Chamber |scenariogoal 7/29409 |goto Tirisfal Glades/25 49.43,74.87 |q 40710
step
kill Twilight Deacon Farthing##101148
Watch the dialogue
Kill the Twilight Deacon |scenariogoal 8/29410 |goto Tirisfal Glades/25 58.92,75.20 |q 40710
step
Watch the dialogue
click Xal'atath
Take the Blade of the Black Empire |scenariogoal 9/29458 |goto Tirisfal Glades/25 58.53,76.78 |q 40710
step
Use "Dark Drain" to Kill Zakajz Forever |scenariogoal 10/29459 |goto Tirisfal Glades/25 58.53,76.78 |q 40710
|tip Use the button ability.
step
talk Lorewalker Cho##231891
turnin Blade in Twilight##40710 |goto Tirisfal Glades/25 58.53,76.78
step
Follow the High Priest's Journey and Acquire Xal'atath |q 84371/3 |goto Tirisfal Glades/25 58.53,76.78
step
talk Lorewalker Cho##231891
turnin Lorewalking: The Blade and the High Priest##84371 |goto Tirisfal Glades/25 58.53,76.78
accept Lorewalking: The Blade's Gambit##84779 |goto Tirisfal Glades/25 58.53,76.78
step
Watch the dialogue
Listen to Lorewalker Cho to Learn of Xal'atath's Gambit |q 84779/1 |goto Tirisfal Glades/25 58.53,76.78
step
Watch the dialogue
Wait to Be Transported |complete zone("Zuldazar") or completedq(84779)
|only if Horde
step
Watch the dialogue
Wait to Be Transported |complete zone("Stormsong Valley") or completedq(84779)
|only if Alliance
step
click Xal'atath, Blade of the Black Empire
accept Every Little Death Helps##54117 |goto Zuldazar/0 78.07,36.72 |only if Horde |or
accept Every Little Death Helps##54118 |goto Zuldazar/0 78.07,36.72 |only if Horde |or
accept Every Little Death Helps##54113 |goto Stormsong Valley/0 34.14,31.76 |only if Alliance |or
accept Every Little Death Helps##54114 |goto Stormsong Valley/0 34.14,31.76 |only if Alliance |or
|tip You will only be able to accept one of these quests.
step
kill Darktide Marauder##147277, Darktide Sorceress##147291, Darktide Champion##147289, Darktide Brute##149086
Feed Xal'atath |q 54117/1 |goto Zuldazar/0 79.66,38.04 |only if haveq(54117) or completedq(54117)
Feed Xal'atath |q 54118/1 |goto Zuldazar/0 79.66,38.04 |only if haveq(54118) or completedq(54118)
|only if Horde
step
kill Darktide Marauder##147277, Darktide Sorceress##147291, Darktide Champion##147289, Darktide Brute##149086
Feed Xal'atath |q 54113/1 |goto Stormsong Valley/0 32.82,32.04 |only if haveq(54113) or completedq(54113)
Feed Xal'atath |q 54114/1 |goto Stormsong Valley/0 32.82,32.04 |only if haveq(54114) or completedq(54114)
|only if Alliance
step
click Xal'atath, Blade of the Black Empire
turnin Every Little Death Helps##54117 |goto Zuldazar/0 78.06,36.72 |only if haveq(54117) or completedq(54117)
turnin Every Little Death Helps##54118 |goto Zuldazar/0 78.06,36.72 |only if haveq(54118) or completedq(54118)
turnin Every Little Death Helps##54113 |goto Stormsong Valley/0 34.14,31.76 |only if haveq(54113) or completedq(54113)
turnin Every Little Death Helps##54114 |goto Stormsong Valley/0 34.14,31.76 |only if haveq(54114) or completedq(54114)
accept Unintended Consequences##54058 |goto Zuldazar/0 78.06,36.72 |only if Horde
accept Unintended Consequences##53760 |goto Zuldazar/0 78.06,36.72 |only if Horde
accept Unintended Consequences##54058 |goto Stormsong Valley/0 34.14,31.76 |only if Alliance
accept Unintended Consequences##53760 |goto Stormsong Valley/0 34.14,31.76 |only if Alliance
|tip You will only be able to accept one of these quests.
step
clicknpc Mishi##231817 |only if Horde
clicknpc Mishi##231703 |only if Alliance
Begin Riding Mishi |invehicle Mishi##231818 |goto Zuldazar/0 78.00,36.70 |q 54058 |only if Horde and (haveq(54058) or completedq(54058))
Begin Riding Mishi |invehicle Mishi##231818 |goto Zuldazar/0 78.00,36.70 |q 53760 |only if Horde and (haveq(53760) or completedq(53760))
Begin Riding Mishi |invehicle Mishi##231704 |goto Stormsong Valley/0 34.10,31.94 |q 54058 |only if Alliance and (haveq(54058) or completedq(54058))
Begin Riding Mishi |invehicle Mishi##231704 |goto Stormsong Valley/0 34.10,31.94 |q 53760 |only if Alliance and (haveq(53760) or completedq(53760))
step
Watch the dialogue
Find the Void Stone |q 54058/1 |only if haveq(54058) or completedq(54058)
Find the Void Stone |q 53760/1 |only if haveq(53760) or completedq(53760)
step
kill Deep Watcher##145098, Inanis##145052
Stop the Ritual |q 54058/2 |goto Drustvar/0 20.14,35.77 |only if haveq(54058) or completedq(54058)
Stop the Ritual |q 53760/2 |goto Drustvar/0 20.14,35.77 |only if haveq(53760) or completedq(53760)
step
click Void Stone
collect Void Stone##164911 |q 54058/3 |goto Drustvar/0 20.12,35.84 |only if haveq(54058) or completedq(54058)
collect Void Stone##164911 |q 53760/3 |goto Drustvar/0 20.12,35.84 |only if haveq(53760) or completedq(53760)
step
Activate the Void Stone |q 54058/4 |goto Drustvar/0 20.12,35.84 |only if haveq(54058) or completedq(54058)
Activate the Void Stone |q 53760/4 |goto Drustvar/0 20.12,35.84 |only if haveq(53760) or completedq(53760)
|tip Use the button ability.
step
Watch the dialogue
talk Xal'atath##144773
turnin Unintended Consequences##54058 |goto Drustvar/0 19.92,36.24 |only if haveq(54058) or completedq(54058)
turnin Unintended Consequences##53760 |goto Drustvar/0 19.92,36.24 |only if haveq(53760) or completedq(53760)
accept The Pirate's Treasure##53761 |goto Drustvar/0 19.92,36.24
step
click Mishi##231742
Begin Riding Mishi |invehicle Mishi##231743 |goto Drustvar/0 19.87,36.42 |q 53761
step
Watch the dialogue
Find the Pirate's Den |q 53761/1
step
kill Lieutenant Elsbeth Wavecutter##145230
collect Skeleton Key##164976 |q 53761/2 |goto Tiragarde Sound/0 74.90,78.55
step
click Ocean Chest
collect Trident of Deep Ocean##164763 |q 53761/3 |goto Tiragarde Sound/0 74.90,78.91
step
talk Xal'atath##145396
turnin The Pirate's Treasure##53761 |goto Tiragarde Sound/0 75.04,77.67
accept The Tempest Crown##53762 |goto Tiragarde Sound/0 75.04,77.67
step
click Mishi##231750
Begin Riding Mishi |invehicle Mishi##231751 |goto Tiragarde Sound/0 75.06,77.46 |q 53762
step
Watch the dialogue
Reach the Bouldered Bluffs |outvehicle |q 53762
step
Find Toatana's Cave |q 53762/1 |goto Vol'dun/0 51.93,13.69
|tip Inside the cave.
step
kill Toatana##147493 |q 53762/2 |goto Vol'dun/0 53.45,13.14
|tip Inside the cave.
step
collect Tempest Caller##165018 |q 53762/3 |goto Vol'dun/0 53.45,13.15
|tip Loot it from Toatana inside the cave.
step
talk Xal'atath##146384
turnin The Tempest Crown##53762 |goto Vol'dun/0 53.03,13.67
accept Twist the Knife##53763 |goto Vol'dun/0 53.03,13.67 |only if Horde
accept Twist the Knife##54126 |goto Vol'dun/0 53.03,13.67 |only if Alliance
Xal'atath sometimes teleports here [Vol'dun/0 51.93,13.68]
step
click Mishi##234309 |only if Horde
click Mishi##234309 |only if Alliance
Begin Riding Mishi |invehicle Mishi##234310 |goto Vol'dun/0 51.82,13.34 |q 53763 |only if Horde
Begin Riding Mishi |invehicle Mishi##234310 |goto Vol'dun/0 51.82,13.34 |q 54126 |only if Alliance
step
Watch the dialogue
Find Xal'atath |q 53763/1 |goto Vol'dun/0 61.11,8.38 |only if Horde
Find Xal'atath |q 54126/1 |goto Vol'dun/0 61.11,8.38 |only if Alliance
step
Watch the dialogue
Enter the Crucible |q 53763/2 |goto Vol'dun/0 61.11,8.38 |only if Horde
Enter the Crucible |q 54126/2 |goto Vol'dun/0 61.11,8.38 |only if Alliance
step
click Void Stone##146529
Place the Void Stone |q 53763/3 |goto Crucible of Storms/0 27.98,54.60 |only if Horde
Place the Void Stone |q 54126/3 |goto Crucible of Storms/0 27.98,54.60 |only if Alliance
step
click Trident of Deep Ocean##146527
Place the Trident of Deep Ocean |q 53763/4 |goto Crucible of Storms/0 27.95,53.36 |only if Horde
Place the Trident of Deep Ocean |q 54126/4 |goto Crucible of Storms/0 27.95,53.36 |only if Alliance
step
click Tempest Caller##146528
Place the Tempest Caller |q 53763/5 |goto Crucible of Storms/0 27.87,52.21 |only if Horde
Place the Tempest Caller |q 54126/5 |goto Crucible of Storms/0 27.87,52.21 |only if Alliance
step
Watch the dialogue
Receive the Gift |q 53763/6 |goto Crucible of Storms/0 27.87,52.21 |only if Horde
Receive the Gift |q 54126/6 |goto Crucible of Storms/0 27.87,52.21 |only if Alliance
step
Return to the Present |complete zone("Orgrimmar") or zone("Stormwind City") or zone("Dornogal") or completedq(53763,54126)
step
_Next to you:_
talk Lorewalker Cho##231891
turnin Twist the Knife##53763 |only if Horde
turnin Twist the Knife##54126 |only if Alliance
step
Watch the dialogue
Aid Xal'atath Across Kul Tiras and Zandalar |q 84779/2
step
_Next to you:_
talk Lorewalker Cho##231891
turnin Lorewalking: The Blade's Gambit##84779
accept Lorewalking: The Blade's Past##84782
step
Watch the dialogue
Listen to Lorewalker Cho to Learn of Xal'atath's Distant Past |q 84782/1
step
Enter Ny'alotha |complete subzone("Ny'alotha") or completedq(84782)
step
talk Xithixxin##230321
turnin Lorewalking: The Blade's Past##84782 |goto Lorewalking Ny'alotha/1 52.58,72.93
accept Lorewalking: The Blade's Forces##85871 |goto Lorewalking Ny'alotha/1 52.58,72.93
accept Lorewalking: The Blade's Nemeses##84784 |goto Lorewalking Ny'alotha/1 52.58,72.93
stickystart "Slay_Xal'atath's_Forces"
step
click Ritual Obelisk
|tip Inside the cave.
Summon Yogg-Saron |q 84784/1 |goto Lorewalking Ny'alotha/0 53.28,63.71
step
Use the {b}Path of the Chosen{} Ability |complete not subzone("Maw of Gor'ma") and not subzone("Spawning Pit") or completedq(84784) |goto Lorewalking Ny'alotha/0 53.14,51.83
|tip It appears on your vehicle bar when standing on this spot.
|tip This will take you to the next area.
step
Use the {b}Path of the Chosen{} Ability |complete subzone("Twilight Landing") or completedq(84784) |goto Lorewalking Ny'alotha/1 60.16,53.47
|tip It appears on your vehicle bar when standing on this spot.
|tip This will take you to the top of the building.
step
click Ritual Obelisk
|tip On top of the building.
Summon Y'Shaarj |q 84784/2 |goto Lorewalking Ny'alotha/2 36.94,50.25
step
Use the {b}Path of the Chosen{} Ability |complete not subzone("Twilight Landing") or completedq(84784) |goto Lorewalking Ny'alotha/2 32.41,46.64
|tip It appears on your vehicle bar when standing on this spot.
|tip This will take you back down.
step
click Ritual Obelisk
|tip Inside the building.
Summon C'Thun |q 84784/3 |goto Lorewalking Ny'alotha/3 57.75,60.23
step
label "Slay_Xal'atath's_Forces"
kill Shadowlasher##230577, Shadowshaper##230578, Screaming Shadow##230579, Waking Darkness##230580
Slay Xal'atath's Forces |q 85871/1 |goto Lorewalking Ny'alotha/1 53.34,71.89
step
Use the {b}Path of the Chosen{} Ability |complete dist("Lorewalking Ny'alotha/1 51.47,72.03") < 15 or completedq(84784) |goto Lorewalking Ny'alotha/3 78.66,89.41
|tip It appears on your vehicle bar when standing on this spot.
|tip This will take you back to Xithixxin.
step
talk Xithixxin##230321
turnin Lorewalking: The Blade's Forces##85871 |goto Lorewalking Ny'alotha/1 52.60,72.85
turnin Lorewalking: The Blade's Nemeses##84784 |goto Lorewalking Ny'alotha/1 52.60,72.85
accept Lorewalking: The Blade's Downfall##84789 |goto Lorewalking Ny'alotha/1 52.60,72.85
step
Use the {b}Path of the Chosen{} Ability |complete dist("Lorewalking Ny'alotha/4 50.93,75.92") < 10  or completedq(84789) |goto Lorewalking Ny'alotha/4 50.98,28.15
|tip It appears on your vehicle bar when standing on this spot.
|tip This will take you across the Annex of Prophecy.
step
Descend to the Annex of Prophecy |q 84789/1 |goto Lorewalking Ny'alotha/4 50.97,77.32
step
Watch the dialogue
Defeat Xal'atath |q 84789/2 |goto Lorewalking Ny'alotha/4 50.97,77.32
step
Return to the Present |complete zone("Orgrimmar") or zone("Stormwind City") or zone("Dornogal") or completedq(84789)
step
_Next to you:_
talk Lorewalker Cho##231891
turnin Lorewalking: The Blade's Downfall##84789
|next "Begin_Lorewalking"
step
label "Begin_Eth_Questline"
Watch the dialogue
Talk to Lorewalker Cho to Learn About the Ethereals |q 85027/1
step
_Next to you:_
talk Lorewalker Cho##232441
Select _"Tell me about the Protectorate."_ |gossip 124637
Talk to Lorewalker Cho to Learn About the Protectorate |q 85027/2
step
Watch the dialogue
talk Commander Ameer##20448
accept The Ethereum##10339 |goto Netherstorm/0 59.50,32.38
stickystart "Kill_Etherum_Assassins"
stickystart "Kill_Ethereum_Researchers"
stickystart "Kill_Ethereum_Shocktroopers"
step
kill Captain Zovax##20727 |q 10339/4 |goto Netherstorm/0 56.76,37.71
|tip He walks around this area.
step
label "Kill_Etherum_Assassins"
kill 5 Ethereum Assassin##20452 |q 10339/1 |goto Netherstorm/0 57.09,36.12
step
label "Kill_Ethereum_Researchers"
kill 2 Ethereum Researcher##20456 |q 10339/3 |goto Netherstorm/0 57.09,36.12
step
label "Kill_Ethereum_Shocktroopers"
kill 5 Ethereum Shocktrooper##20453 |q 10339/2 |goto Netherstorm/0 57.09,36.12
step
click Ethereum Transponder Zeta
|tip This will summon the Image of Commander Ameer.
talk Image of Commander Ameer##20482
turnin The Ethereum##10339 |goto Netherstorm/0 56.82,38.70
accept Ethereum Data##10384 |goto Netherstorm/0 56.82,38.70
step
click Ethereum Data Cell
collect Ethereum Data Cell##29582 |q 10384/1 |goto Netherstorm/0 55.77,39.89
step
click Ethereum Transponder Zeta
|tip This will summon the Image of Commander Ameer.
talk Image of Commander Ameer##20482
turnin Ethereum Data##10384 |goto Netherstorm/0 56.81,38.69
accept Potential for Brain Damage = High##10385 |goto Netherstorm/0 56.81,38.69
step
kill Ethereum Assassin##20452, Ethereum Researcher##20456, Ethereum Archon##20458, Ethereum Nexus-Stalker##20474, Ethereum Overlord##20459
collect Ethereum Essence##29482 |n
use the Ethereum Essence##29482
Consume the Ethereum Essence |q 10385/1 |goto Netherstorm/0 56.62,38.46
step
kill Ethereum Relay##20619
|tip You must consume the Ethereum Essence to see these.
collect 12 Ethereum Relay Data##29459 |q 10385/2 |goto Netherstorm/0 56.62,38.46
step
click Ethereum Transponder Zeta
|tip This will summon the Image of Commander Ameer.
talk Image of Commander Ameer##20482
turnin Potential for Brain Damage = High##10385 |goto Netherstorm/0 56.81,38.70
accept Delivering the Message##10406 |goto Netherstorm/0 56.81,38.70
step
Sabotage the Ethereum Conduit |q 10406/1 |goto Netherstorm/0 56.69,42.61
|tip Walk with the Protectorate Demolitionist and protect him until you reach the goal.
|tip Defend against the waves of enemies that attack.
step
click Ethereum Transponder Zeta
|tip This will summon the Image of Commander Ameer.
talk Image of Commander Ameer##20482
turnin Delivering the Message##10406 |goto Netherstorm/0 56.81,38.70
accept Nexus-King Salhadaar##10408 |goto Netherstorm/0 56.81,38.70
step
use the Protectorate Disruptor##29618
Disrupt Salhadaar's Power Conduit |q 10408/1 |goto Netherstorm/0 53.72,41.68 |count 1 hidden
step
use the Protectorate Disruptor##29618
Disrupt Salhadaar's Power Conduit |q 10408/1 |goto Netherstorm/0 53.23,42.32 |count 2 hidden
step
use the Protectorate Disruptor##29618
Disrupt Salhadaar's Power Conduit |q 10408/1 |goto Netherstorm/0 53.92,43.15 |count 3 hidden
step
kill Nexus-King Salhadaar##20454 |q 10408/2 |goto Netherstorm/0 53.61,42.36
|tip All 3 blue beams must be disabled to free him.
step
click Ethereum Transponder Zeta
|tip This will summon the Image of Commander Ameer.
talk Image of Commander Ameer##20482
turnin Nexus-King Salhadaar##10408 |goto Netherstorm/0 56.81,38.70
step
Watch the dialogue
Aid the Protectorate Against Nexus-King Salhadaar |q 85027/3 |goto Netherstorm/0 56.81,38.70
step
talk Lorewalker Cho##231702
Select _"Tell me about Dimensius."_ |gossip 134099
Talk to Lorewalker Cho to Learn About Dimensius |q 85027/4 |goto Netherstorm/0 56.81,38.70
step
talk Professor Dabiri##20907
accept Recipe for Destruction##10437 |goto Netherstorm/0 60.10,31.72
step
kill Voidshrieker##18870, Unstable Voidwraith##18869
collect 4 Fragment of Dimensius##29822 |q 10437/1 |goto Netherstorm/0 61.44,37.37
You can find more around [Netherstorm/0 65.26,38.95]
step
talk Professor Dabiri##20907
turnin Recipe for Destruction##10437 |goto Netherstorm/0 60.11,31.73
accept Dimensius the All-Devouring##10439 |goto Netherstorm/0 60.11,31.73
step
talk Captain Saeed##20985
Select _"I am that fleshling, Saeed. Let's go!"_ |gossip 33088
Speak to Captain Saeed |q 10439/1 |goto Netherstorm/0 60.64,32.06
step
talk Captain Saeed##20985
|tip He runs to this location.
Select _"I am ready. Let's make history!"_ |gossip 33644
Tell Captain Saeed You're Ready |q 10439/2 |goto Netherstorm/0 60.77,39.21
step
kill Spawn of Dimensius##21780
|tip Kill these when they spawn.
kill Dimensius the All-Devouring##19554 |q 10439/3 |goto Netherstorm/0 62.42,40.87
|tip Inside the building.
step
talk Professor Dabiri##20907
turnin Dimensius the All-Devouring##10439 |goto Netherstorm/0 60.10,31.73
step
Watch the dialogue
Aid the Protectorate Forces Against Dimensius the All-Devouring |q 85027/6 |goto Netherstorm/0 60.10,31.73
step
talk Lorewalker Cho##231702
turnin Lorewalking: The Protectorate##85027 |goto Netherstorm/0 60.10,31.73
accept Lorewalking: Locus-Walker##85029 |goto Netherstorm/0 60.10,31.73
step
talk Lorewalker Cho##231702
Select _"Tell me about the void ethereals."_ |gossip 124639
Talk to Lorewalker Cho to Learn About Void Ethereals |q 85029/1 |goto Netherstorm/0 60.10,31.73
step
talk Alleria Windrunner##121230
accept Throwing Shade##47203 |goto Eredath/0 35.34,59.54
step
Meet Alleria in Umbra Hollows |q 47203/1 |goto Eredath/0 36.99,52.46
step
Watch the dialogue
click Void Tear##121654
Enter the Void Tear |q 47203/2 |goto Eredath/0 37.11,52.35
step
click Dismantled Portal##126414
|tip Avoid walking close to NPCs or within the blue circles.
Examine the Dismantled Portal |q 47203/3 |goto Eredath/0 39.67,48.22
The Void Tear is at [Eredath/0 37.10,52.35]
|tip If you lose your disguise, return and click it.
step
click Image of Saprish##126411
|tip Avoid walking close to NPCs or within the blue circles.
Examine the Image of Saprish |q 47203/4 |goto Eredath/0 35.53,43.70
The Void Tear is at [Eredath/0 37.10,52.35]
|tip If you lose your disguise, return and click it.
step
click Voidforge##126413
|tip Avoid walking close to NPCs or within the blue circles.
Examine the Voidforge |q 47203/5 |goto Eredath/0 36.05,38.67
The Void Tear is at [Eredath/0 37.10,52.35]
|tip If you lose your disguise, return and click it.
step
Meet Alleria and Locus-Walker |q 47203/6 |goto Eredath/0 31.88,37.48
step
talk Alleria Windrunner##121230
turnin Throwing Shade##47203 |goto Eredath/0 31.88,37.48
accept Sources of Darkness##47217 |goto Eredath/0 31.88,37.48
step
talk Locus-Walker##121597
accept The Shadowguard Incursion##47218 |goto Eredath/0 31.93,37.33
stickystart "Slay_Shadowguard_Ethereals"
step
click Void Harvester##121676
Deactivate the Void Harvester |q 47217/1 |goto Eredath/0 31.68,34.37 |count 1 hidden
step
click Void Harvester##121676
Deactivate the Void Harvester |q 47217/1 |goto Eredath/0 28.36,34.24 |count 2 hidden
step
click Void Harvester##121676
Deactivate the Void Harvester |q 47217/1 |goto Eredath/0 25.60,32.15 |count 3 hidden
step
click Void Harvester##121676
Deactivate the Void Harvester |q 47217/1 |goto Eredath/0 24.65,33.38 |count 4 hidden
step
click Void Harvester##121676
Deactivate the Void Harvester |q 47217/1 |goto Eredath/0 25.06,35.78 |count 5 hidden
step
label "Slay_Shadowguard_Ethereals"
kill Shadowguard Phaseblade##121672, Shadowguard Adept##121670, Shadowguard Siphoner##121671, Enthralled Voidstalker##121629
Slay #15# Shadowguard Ethereals |q 47218/1 |goto Eredath/0 26.86,37.06
step
talk Alleria Windrunner##121230
turnin Sources of Darkness##47217 |goto Eredath/0 31.88,37.47
step
talk Locus-Walker##121597
turnin The Shadowguard Incursion##47218 |goto Eredath/0 31.94,37.33
accept A Vessel Made Ready##47219 |goto Eredath/0 31.94,37.33
step
Watch the dialogue
click Void Tear##128882
Enter the Void Tear |q 47219/1 |goto Eredath/0 31.95,37.03
step
kill Shadowguard Abyss Caller##121761
|tip Kill the three Shadowguard to free Nhal'athoth.
kill Nhal'athoth##121663 |q 47219/2 |goto Eredath/0 26.69,45.01
step
click Heart of Nhal'athoth
collect Heart of Nhal'athoth##151088 |q 47219/3 |goto Eredath/0 26.62,45.00
step
talk Alleria Windrunner##121230
turnin A Vessel Made Ready##47219 |goto Eredath/0 28.44,47.21
step
Aid Locus-Walker in Teaching Alleria to Master the Void |q 85029/2 |goto Eredath/0 28.44,47.21
step
talk Lorewalker Cho##231702
turnin Lorewalking: Locus-Walker##85029 |goto Eredath/0 28.44,47.21
accept Lorewalking: The Brokers##85028 |goto Eredath/0 28.44,47.21
step
talk Lorewalker Cho##231702
Select _"Tell me about the brokers."_ |gossip 124635
Talk to Lorewalker Cho About the Brokers |q 85028/1 |goto Eredath/0 28.44,47.21
step
Watch the dialogue
Reach Oribos |complete zone("Oribos") or completedq(85028)
step
talk Host Ta'rela##156688
Speak with Host Ta'rela |q 85028/2 |goto Oribos/0 67.46,50.33
step
talk Host Ta'rela##156688
accept The Al'ley Cat of Oribos##63976 |goto Oribos/0 67.46,50.33
step
talk Al'dalil##178908
turnin The Al'ley Cat of Oribos##63976 |goto Oribos/2 56.72,31.86
accept Insider Trading##63977 |goto Oribos/2 56.72,31.86
accept Things Best Kept Dark##63979 |goto Oribos/2 56.72,31.86
step
Follow the path |goto Oribos/0 63.47,50.36 < 10 |walk
talk Overseer Ta'readon##156768
Select _"What can you tell me about Cartel So?"_ |gossip 54344
Speak to Cartel Ta |q 63977/4 |goto Oribos/0 64.38,68.34
step
talk Emissary Ba'silk##164100
Select _"What can you tell me about Cartel So?"_ |gossip 51187
Speak to Cartel Ba |q 63977/1 |goto Oribos/0 47.73,72.66
step
talk Zo'sorg##168011
Select _"What can you tell me about Cartel So?"_ |gossip 53363
Speak to Cartel Zo |q 63977/2 |goto Oribos/0 34.51,57.47
step
talk Foreman Au'brak##167738
Select _"What can you tell me about Cartel So?"_ |gossip 54347
Speak to Cartel Au |q 63977/3 |goto Oribos/0 40.32,32.63
step
Follow the path |goto Oribos/0 31.49,50.42 < 10 |walk
click Shipping Documents
|tip So'danah will spawn and attack.
kill So'danah##178997
collect Cartel So Shipping Manifest##186182 |q 63979/1 |goto Oribos/0 38.51,25.29
|tip Loot it from So'danah.
step
Follow the path |goto Oribos/0 54.98,14.97 < 10 |walk
Follow the path |goto Oribos/0 75.28,47.33 < 10 |walk
talk Al'dalil##178908
turnin Insider Trading##63977 |goto Oribos/2 56.72,31.86
turnin Things Best Kept Dark##63979 |goto Oribos/2 56.72,31.86
accept Seeking Smugglers##63980 |goto Oribos/2 56.72,31.86
step
talk Lorewalker Cho##231702
Select _"Tell me more about the Night Market."_ |gossip 124638
Talk to Cho About the Night Market |q 85028/4 |goto Oribos/2 56.72,31.86
step
Watch the dialogue
Arrive in Revendreth |complete zone("Revendreth") or completedq(63980)
step
talk Ta'nla the Identifier##160090
turnin Seeking Smugglers##63980 |goto Revendreth/0 51.34,82.72
accept Above My Station##63982 |goto Revendreth/0 51.34,82.72
step
Take the Portal to Transfer Station Ta |q 63982/1 |goto Revendreth/0 50.99,81.88
step
talk Bounty Hunter Ta'oku##158890
turnin Above My Station##63982 |goto Bastion/0 32.52,32.35
accept Dead Drop##63983 |goto Bastion/0 32.52,32.35
step
Find the Export Party |q 63983/1 |goto Bastion/0 36.94,31.55
step
kill Prototype Aquilon##178937
|tip Inside the building.
Subdue the Prototype Aquilon |q 63983/2 |goto Bastion/0 37.38,29.97
step
click Prototype Aquilon##178938
|tip Inside the building.
Ride the Prototype Aquilon |invehicle Prototype Aquilon##178942 |goto Bastion/0 37.33,29.94 |q 63983
step
Watch the dialogue
|tip Outside the building, watch the chat and use the ability on your bar that matches what At'dalil says.
|tip Do this until you return to the Transfer Station.
Return the Prototype Aquilon |q 63983/3 |goto Bastion/0 32.60,32.49
step
talk Bounty Hunter Ta'oku##158890
turnin Dead Drop##63983 |goto Bastion/0 32.52,32.34
accept Coins for the Ferryman##63984 |goto Bastion/0 32.52,32.34
step
click Mishi##245948
Ride Mishi to the Tazavesh Ferry |invehicle |goto Bastion/0 32.95,32.35 |q 63984
step
Watch the dialogue
Arrive in Oribos |complete zone("Oribos") or completedq(63984)
step
talk Ta'meri##178792
turnin Coins for the Ferryman##63984 |goto Oribos/0 29.82,66.58
accept The Veiled Market##63985 |goto Oribos/0 29.82,66.58
step
talk Ta'meri##178792
Select _"Take me to Tazavesh."_ |gossip 51818
Take the Barge to Tazavesh |invehicle |goto Oribos/0 29.82,66.58 |q 63985
step
Watch the dialogue
Ride the Barge to Tazavesh |outvehicle
step
talk Zo'mezal##179144
Select _"I seek entrance into Tazavesh."_ |gossip 52184
Watch the dialogue
Speak to the Bouncer |q 63985/2 |goto The Gilded Landing/0 84.12,47.29
step
talk Al'dalil##178908
turnin The Veiled Market##63985 |goto The Gilded Landing/0 86.69,48.48
step
Attempt to Enter Tazavesh |q 85028/9 |goto The Gilded Landing/0 86.69,48.48
step
talk Lorewalker Cho##231702
Select _"Tell me about Ve'nari."_ |gossip 124632
Ask Lorewalker Cho about Ve'nari |q 85028/10 |goto The Gilded Landing/0 86.69,48.48
step
Watch the dialogue
Arrive in Korthia |complete zone("Korthia") or completedq(63855)
step
talk Ve'nari##178470
accept Ease of Passage##63855 |goto Korthia/0 65.91,22.92
step
talk Ve'nari##178470
Select _"I am ready."_ |gossip 54169
Speak with Ve'nari |q 63855/1 |goto Korthia/0 65.91,22.92
step
Watch the dialogue
Find a Suitable Location |q 63855/2 |goto Korthia/0 65.04,23.83
step
click Animaflow Teleporter##178085
Imprint the Anima Signature |q 63855/3 |goto Korthia/0 64.97,23.68
step
click Ve'nari's Overstuffed Bag
Collect Ve'nari's Bag |q 63855/4 |goto Korthia/0 66.01,23.05
step
click Mishi##246041
Fly to Ve'nari's Refuge |invehicle |goto Korthia/0 65.25,23.62 |q 63855
step
Watch the dialogue
|tip Ride to the destination.
Reach Ve'nari's Refuge |complete subzone("Ve'nari's Refuge") or completedq(63855)
step
talk Ve'nari##162804
turnin Ease of Passage##63855 |goto The Maw/0 46.90,41.70
accept Grab Bag##63895 |goto The Maw/0 46.90,41.70
step
click Transferral Augmentor
Use the Transferral Augmentor |q 63895/1 |goto The Maw/0 46.89,41.53
step
click Transferral Augmentor
Transfer Successfully |q 63895/2 |goto The Maw/0 46.89,41.54
step
talk Projection of Ve'nari##179078
turnin Grab Bag##63895 |goto The Maw/0 61.65,59.08
step
Assist the broker Ve'nari |q 85028/13 |goto The Maw/0 61.65,59.08
step
talk Lorewalker Cho##231702
Select _"Thank you for telling me this story."_ |gossip 125268
Thank Lorewalker Cho for His Insight |q 85028/14 |goto The Maw/0 61.65,59.08
step
Return to the Present |complete zone("Orgrimmar") or zone("Stormwind City") or zone("Dornogal") or completedq(85028)
step
_Next to you:_
talk Lorewalker Cho##232441
turnin Lorewalking: The Brokers##85028
step
talk Om'rajula##234111
|tip He will appear nearby if you are in Stormwind. |only if Alliance
|tip He will appear nearby if you are in Orgrimmar. |only if Horde
accept Locus-Walker, Telogrus Ranger##85035 |goto Dornogal/0 49.32,31.12 |only if default
accept Locus-Walker, Telogrus Ranger##85035 |only if zone("Stormwind City") or zone("Orgrimmar")
step
click Void Portal
|tip It will appear nearby if you are in Stormwind. |only if Alliance
|tip It will appear nearby if you are in Orgrimmar. |only if Horde
Take the Portal to Telogrus Rift |q 85035/1 |goto Dornogal/0 49.38,31.00 |only if default
Take the Portal to Telogrus Rift |q 85035/1 |only if zone("Stormwind City") or zone("Orgrimmar")
step
kill Shadowguard Phaseblade##231708, Shadowguard Voidcaster##231709
|tip They will spawn in three waves of two when you walk forward.
Slay #6# Ethereal Assassins |q 85035/2 |goto Telogrus Rift/0 25.98,28.01
step
talk Locus-Walker##231706
turnin Locus-Walker, Telogrus Ranger##85035 |goto Telogrus Rift/0 27.50,28.40
accept Veni Vidi Ve'nari##85036 |goto Telogrus Rift/0 27.50,28.40
step
Watch the dialogue
Witness the Conversation Between Ve'nari and Locus-Walker |q 85036/1 |goto Telogrus Rift/0 27.66,27.77
step
click Void Portal
Return to Lorewalker Cho |q 85036/2 |goto Telogrus Rift/0 27.92,27.60
step
Watch the dialogue
Listen to Lorewalker Cho |complete readyq(85036) or completedq(85036)
step
talk Lorewalker Cho##232441
turnin Veni Vidi Ve'nari##85036 |goto Dornogal/0 49.59,31.63 |only if default
turnin Veni Vidi Ve'nari##85036 |only if zone("Stormwind City") or zone("Orgrimmar")
|next "Begin_Lorewalking"
step
label "Begin_LK_Questline"
_Next to you:_
talk Lorewalker Cho##236114
Select _"Who was the Lich King?"_ |gossip 131598
Talk to Cho |q 85884/1
step
talk Uther Lightbringer##233752
accept A Prince's Duty##85862 |goto Lorewalking Scarlet Halls/0 34.10,84.06
step
talk Lordaeron Footsoldier##233670
Select _"Let's spar!"_ |gossip 131459
Train #6# Soldiers |q 85862/1 |goto Lorewalking Scarlet Halls/0 49.87,70.55
|tip Use the abilities on your action bar to defeat the trainees.
|tip Be sure to toggle your auto-attack on as well.
step
talk Muradin Bronzebeard##233753
Select _"Let's spar!"_ |gossip 131489
kill Muradin Bronzebeard##233753
|tip Stun him during Storm Bolt when you can.
|tip Be sure to toggle your auto-attack on as well.
Spar with Muradin |q 85862/2 |goto Lorewalking Scarlet Halls/0 54.58,29.69
step
talk Terenas Menethil II##233804
turnin A Prince's Duty##85862 |goto Lorewalking Scarlet Halls/0 55.45,21.82
step
Listen to the Story of Prince Arthas Menethil |q 85884/2 |goto Lorewalking Scarlet Halls/0 55.45,21.82
step
talk Lorewalker Cho##236114
Select _"What happened next?"_ |gossip 131599
Talk to Cho |q 85884/3 |goto Lorewalking Scarlet Halls/0 55.45,21.82
step
Watch the dialogue
|tip Stand in the yellow circle of light before the bridge in front of you.
Decide the Fate of Stratholme |scenariogoal 1/105295 |q 85884
step
talk Arthas##26499
|tip Follow Arthas into the city and meet him just inside.
Select _"Yes, my prince. We are ready."_ |gossip 36217
Talk to Arthas |scenariogoal 2/105296 |q 85884
step
Watch the dialogue
|tip Walk with Arthas inside the city and watch the events play out.
Witness the Culling of Stratholme |q 85884/4
step
talk Arthas##26499
|tip Wait to be teleported to the new area.
|tip Arthas will be standing in front of you.
Select _"I'm ready to battle the dreadlord, sire."_ |gossip 36273
Talk to Arthas |scenariogoal 3/105296 |q 85884
step
kill Mal'Ganis##26533 |scenariogoal 4/27933 |q 85884
|tip Follow Arthas to the right to locate Mal'Ganis.
step
Watch the dialogue
Confront Mal'Ganis |q 85884/5
step
talk Lorewalker Cho##236114
Select _"What happened after Stratholme?"_ |gossip 131600
|tip Cho will appear in a few moments.
Talk to Cho |q 85884/6
step
talk Orik Trueheart##27347
accept The Forgotten Tale##12291 |goto Dragonblight/0 87.17,57.49
step
use the Murkweed Elixir##37570
Use the Elixir |havebuff Binding Life##48809 |goto Dragonblight/0 86.49,65.44 |q 12291
step
talk Forgotten Rifleman##27225
Select _"I'm sure Arthas will be back any day now, soldier. Keep your chin up!"_ |gossip 37796
Question the Forgotten Rifleman |q 12291/2 |goto Dragonblight/0 86.70,64.87
step
talk Forgotten Footman##27229
|tip It walks around this area.
Select _"I'm sure everything will work out, footman."_ |gossip 34970
Question the Forgotten Footman |q 12291/4 |goto Dragonblight/0 86.42,65.28
step
talk Forgotten Peasant##27226
Select _"Sorry to have bothered you, friend. Carry on!"_ |gossip 35881
Question the Forgotten Peasant |q 12291/1 |goto Dragonblight/0 86.21,65.59
step
talk Forgotten Knight##27224
|tip It walks around this area.
Select _"I must be going now, soldier. Stay vigilant!"_ |gossip 37797
Question the Forgotten Knight |q 12291/3 |goto Dragonblight/0 85.69,67.68
step
talk Orik Trueheart##27347
turnin The Forgotten Tale##12291 |goto Dragonblight/0 87.18,57.49
accept The Truth Shall Set Us Free##12301 |goto Dragonblight/0 87.18,57.49
step
use Orik's Crystalline Orb##37577
Watch the dialogue
Redeem The Forgotten |q 12301/1 |goto Dragonblight/0 86.80,66.18
step
talk Orik Trueheart##27347
turnin The Truth Shall Set Us Free##12301 |goto Dragonblight/0 87.17,57.48
accept Parting Thoughts##12305 |goto Dragonblight/0 87.17,57.48
step
talk Zelig the Visionary##27314
|tip Inside the building.
turnin Parting Thoughts##12305 |goto Dragonblight/0 79.15,47.17
accept Frostmourne Cavern##12478 |goto Dragonblight/0 79.15,47.17
step
Enter the cave |goto Dragonblight/0 74.26,23.64 < 15 |walk
use Zelig's Scrying Orb##37933
|tip Inside the cave.
Watch the dialogue
Reveal the Secrets of the Past |q 12478/1 |goto Dragonblight/0 75.11,20.18
step
talk Zelig the Visionary##27314
|tip Inside the building.
turnin Frostmourne Cavern##12478 |goto Dragonblight/0 79.15,47.16
step
Watch the dialogue
Learn about the Doomed Expedition |q 85884/8 |goto Dragonblight/0 79.15,47.16
step
_Next to you:_
talk Lorewalker Cho##236114
turnin Lorewalking: The Prince Who Would Be King##85884
accept Lorewalking: No King Rules Forever##85885
step
_Next to you:_
talk Lorewalker Cho##236114
Select _"Is everything alright?"_ |gossip 131573
Talk to Cho |q 85885/1
step
Watch the dialogue
Learn About the Lich King's Betrayal |q 85885/2
step
_Next to you:_
talk Lorewalker Cho##236114
Select _"Was Arthas truly lost?"_ |gossip 132759
Talk to Cho |q 85885/3
step
Watch the dialogue
Become the Lich King |complete subzone("Icecrown Citadel") or completedq(85885) |goto Dornogal/0 49.59,31.63
step
accept Ascent of the Lich King##85875 |goto Icecrown/0 51.41,79.48
|tip You will accept this quest automatically.
step
kill Memory of Muradin##233758 |q 85875/1 |goto Icecrown/0 51.53,79.92
|tip Use the ability on your bar.
|tip Be sure to toggle your auto-attack on.
step
kill Memory of Jaina##233760 |q 85875/2 |goto Icecrown/0 51.77,80.68
|tip Use the ability on your bar.
|tip Be sure to toggle your auto-attack on.
step
kill Memory of Uther##233759 |q 85875/3 |goto Icecrown/0 52.00,81.44
|tip Use the ability on your bar.
|tip Be sure to toggle your auto-attack on.
step
talk Memory of Terenas##233811
turnin Ascent of the Lich King##85875 |goto Icecrown/0 52.35,82.59
step
Witness the Ascent of the Lich King |q 85885/4 |goto Icecrown/0 52.35,82.59
step
talk Lorewalker Cho##236114
Select _"Was Arthas truly lost?"_ |gossip 131603
Talk to Cho |q 85885/5 |goto Icecrown/0 52.35,82.59
step
Enter the Halls of Reflection |scenariostart Halls of Reflection##572 |q 85885
step
talk Lady Jaina Proudmoore##37221
|tip She will run up to the first arch in front of you when you walk forward.
Select _"Can you remove the sword?"_ |gossip 37487
confirm |q 85885
step
Watch the dialogue
|tip Wait for the dialogue in the middle of the room.
|tip Kill the waves of enemies that attack before Falric becomes active.
kill Falric##38112 |scenariogoal 1/27915 |q 85885
step
kill Marwyn##38113 |scenariogoal 1/27916 |q 85885
|tip Kill the waves of enemies that attack before Marwyn becomes active.
step
talk Lady Jaina Proudmoore##36955
Select _"We're ready! Let's go!"_ |gossip 37662
|tip Run down the hallway that opens.
|tip Attack the Lich King when he is engaging Jaina.
|tip Follow her to the opening and talk to her.
confirm |q 85885
step
Escape from the Lich King |scenariogoal 1/27917 |q 85885
|tip When you engage the Lich King, keep moving and kill enemies, avoiding the ice that appears behind you.
|tip Stay closer to the Lich King and kill enemies as they spawn rather than letting them get close to Jaina before engaging.
|tip Enemies will go right for Jaina and ignore you.
|tip You will need to keep her alive.
|tip When Jaina reaches the end and yells about the opening, run through with her.
step
Help Jaina investigate the Halls of Reflection |q 85885/6
step
talk Lorewalker Cho##236114
Select _"How was the Lich King defeated?"_ |gossip 131606
Talk to Cho |q 85885/7
step
Watch the dialogue
Reach The Frozen Throne |scenarioend
|tip You will eventually teleport to The Frozen Throne.
step
accept O' Thanagor##85878
|tip You will accept this quest automatically.
|tip If it does not, click the {y}Ask a Question{} button on the lorewalking frame, then click it again to rejoin the story.
step
Kill enemies around this area
|tip Use the abilities on your bar to eliminate the opposing raid members in the middle of the platform.
|tip Avoid falling off the edge.
Slay #25# Heroes |q 85878/1
step
Watch the dialogue
Witness the Wrath of the Lich King |q 85885/8
step
_Next to you:_
talk Lorewalker Cho##236114
turnin O' Thanagor##85878
step
Watch the dialogue
Complete "O'Thanagor" |q 85885/9
step
_Next to you:_
talk Lorewalker Cho##236114
turnin Lorewalking: No King Rules Forever##85885
|next "Begin_Lorewalking"
step
label "Begin_Loa_Questline"
talk Li Li Stormstout##230246
Select _"(Lorewalking) What stories can you tell me?"_ |gossip 124311
|tip Choose the Loa option.
accept Lorewalking: The Loa of Kings##92826 |goto Stormwind City/0 64.23,16.11 |only if Alliance
accept Lorewalking: The Loa of Kings##92826 |goto Orgrimmar/1 54.26,56.61 |only if Horde
step
Watch the dialogue
Listen to Li Li to Learn About the Loa |q 92826/1 |goto Stormwind City/0 64.19,16.26 |only if Alliance
Listen to Li Li to Learn About the Loa |q 92826/1 |goto Orgrimmar/1 54.35,56.66 |only if Horde
step
talk Li Li Stormstout##253727
Select _"Tell me about what happened to Rezan and King Rastakhan."_ |gossip 136652
Talk to Li Li to Learn About Rezan and King Rastakhan |q 92826/2 |goto Stormwind City/0 64.19,16.26 |only if Alliance
Talk to Li Li to Learn About Rezan and King Rastakhan |q 92826/2 |goto Orgrimmar/1 54.35,56.66 |only if Horde
step
Watch the dialogue
Arrive in Dazar'alor and Meet the Loa |outvehicle
step
talk King Rastakhan##129491
accept The Warpack##49965 |goto Dazar'alor/0 38.92,27.16
step
Watch the dialogue
clicknpc Wardruid Loti##134132
Ride with Wardruid Loti |invehicle Wardruid Loti##134132 |goto Dazar'alor/0 38.81,27.02 |q 49965
step
Watch the dialogue
Ride with the Warpack |q 49965/1 |goto Zuldazar/0 49.19,44.79 |notravel
step
talk Gonk##129740
turnin The Warpack##49965 |goto Zuldazar/0 49.27,44.32
accept Heretics##49422 |goto Zuldazar/0 49.27,44.32
step
talk Wardruid Loti##129561
accept The Full Prophecy##49424 |goto Zuldazar/0 49.34,44.35
stickystart "Bring_Ruin"
step
click The Word of Zul III##280350
Read The Word of Zul III |q 49424/3 |goto Zuldazar/0 48.81,42.76
step
click The Word of Zul II##280349
|tip Inside the building.
Read The Word of Zul II |q 49424/2 |goto Zuldazar/0 49.01,40.57
step
click The Word of Zul I##280348
Read The Word of Zul I |q 49424/1 |goto Zuldazar/0 48.75,39.40
step
_Next to you:_
talk Wardruid Loti##132041 |usename Wardruid Loti##122760
turnin The Full Prophecy##49424
step
label "Bring_Ruin"
kill Disciple of Zul##129504, Kao-Tien Battlemaster##129515
clicknpc Skykiller Ballista##129540+
|tip They look like {o}wooden crossbow machines{}.
Bring Ruin |q 49422/1 |goto Zuldazar/0 49.07,39.36
step
talk Hexlord Raal##129703
turnin Heretics##49422 |goto Zuldazar/0 49.65,37.98
accept City of Gold##49425 |goto Zuldazar/0 49.65,37.98
step
clicknpc Ata the Winglord##129701
Ride Ata the Winglord |q 49425/1 |goto Zuldazar/0 49.64,37.91
step
_As You Fly:_
Watch the dialogue
Kill enemies around this area
|tip They are {o}on the ground{}.
|tip Use the ability on your action bar.
Slay #75# Forces of Zul |q 49425/2
step
Watch the dialogue
Travel to Atal'Dazar |outvehicle |goto Zuldazar/0 43.80,39.08 |q 49425 |notravel
step
talk Rezan##131049
turnin City of Gold##49425 |goto Zuldazar/0 43.70,39.45
accept The King's Gambit##49426 |goto Zuldazar/0 43.70,39.45
step
March on Atal'Dazar |q 49426/1 |goto Zuldazar/0 42.08,39.52
|tip Follow {o}Rezan{} as he walks.
'|clicknpc Rezan##131049
step
talk King Rastakhan##131070
Select _"What now?"_ |gossip 48457
Watch the dialogue
Speak with King Rastakhan |q 49426/2 |goto Zuldazar/0 42.08,39.52
step
talk King Rastakhan##139633
Select _"Time to leave!"_ |gossip 48876
|tip He will {o}begin following you{}.
Click Here Once He Starts Following You |confirm |goto Zuldazar/0 41.94,39.49 |q 49426
step
Watch the dialogue
|tip Run up the stairs.
|tip {o}Follow your allies{} as they run.
Get Rastakhan to Safety |q 49426/3 |goto Zuldazar/0 42.73,37.65
'|clicknpc Pa'kura Warbow##129735
step
talk King Rastakhan##129757
turnin The King's Gambit##49426 |goto Zuldazar/0 42.73,37.65
step
Assist King Rastakhan in Atal'Dazar |q 92826/4 |goto Zuldazar/0 42.73,37.65
step
_Next to you:_
talk Li Li Stormstout##253727
turnin Lorewalking: The Loa of Kings##92826
accept Lorewalking: Death of the Drakkari Loa##92829
step
Watch the dialogue
Arrive in Zul'Drak |complete zone("Zul'Drak") or completedq(92829)
step
talk Witch Doctor Khufu##28479
accept To Speak With Har'koa##12628 |goto Zul'Drak/0 59.50,58.04
step
talk Har'koa##28401
turnin To Speak With Har'koa##12628 |goto Zul'Drak/0 63.71,70.39
accept But First My Offspring##12632 |goto Zul'Drak/0 63.71,70.39
step
kill Cursed Offspring of Har'koa##28404+
use the Whisker of Har'koa##38676
|tip Use it on their corpses.
Resurrect #7# Cursed Offsprings of Har'koa |q 12632/1 |goto Zul'Drak/0 64.28,69.97
step
talk Har'koa##28401
turnin But First My Offspring##12632 |goto Zul'Drak/0 63.71,70.39
accept Spirit of Rhunok##12642 |goto Zul'Drak/0 63.71,70.39
step
talk Spirit of Rhunok##28561
turnin Spirit of Rhunok##12642 |goto Zul'Drak/0 53.42,39.01
accept My Prophet, My Enemy##12646 |goto Zul'Drak/0 53.42,39.01
step
kill Prophet of Rhunok##28442
|tip Underwater.
collect Arctic Bear God Mojo##38695 |q 12646/1 |goto Zul'Drak/0 54.08,47.55
step
talk Spirit of Rhunok##28561
turnin My Prophet, My Enemy##12646 |goto Zul'Drak/0 53.42,39.01
accept An End to the Suffering##12647 |goto Zul'Drak/0 53.42,39.01
step
kill Rhunok's Tormentor##28575
collect Tormentor's Incense##38696 |goto Zul'Drak/0 53.38,35.79 |q 12647
step
use the Tormentor's Incense##38696
|tip Use it next to Rhunok inside the building.
kill Rhunok##28416 |q 12647/2 |goto Zul'Drak/0 53.48,34.51
step
talk Spirit of Rhunok##28561
turnin An End to the Suffering##12647 |goto Zul'Drak/0 53.42,39.01
step
Assist the Loa of Zul'Drak |q 92829/1 |goto Zul'Drak/0 53.42,39.01
step
Watch the dialogue
Arrive in Zim'Torga |complete subzone("Zim'Torga") or completedq(92829)
step
Watch the dialogue
Listen to Li Li |outvehicle
step
talk Har'koa##28401
accept Rampage##12721 |goto Zul'Drak/0 60.26,57.74
step
click Akali Chain Anchor##191018
|tip Click all 4 of them on the ground around Akali.
Unfetter Akali From His Chains |q 12721/1 |goto Zul'Drak/0 78.14,24.13
step
talk Witch Doctor Khufu##28479
turnin Rampage##12721 |goto Zul'Drak/0 59.50,58.04
accept The Gods Have Spoken##12729 |goto Zul'Drak/0 59.50,58.04
step
kill Altar Warden##28784+
collect Gusty Essence of the Warden##39541 |q 12729/2 |goto Zul'Drak/0 74.21,58.52
step
kill Guardian of Zim'Rhuk##28597+
collect Unblemished Heart of the Guardian##39540 |q 12729/1 |goto Zul'Drak/0 60.59,44.41
step
talk Har'koa##28401
turnin The Gods Have Spoken##12729 |goto Zul'Drak/0 60.26,57.74
accept Convocation at Zol'Heb##12730 |goto Zul'Drak/0 60.26,57.74
step
use the Prophet of Akali Convocation##39566
|tip Use it while standing on the green glowing rune on the ground inside the building.
Watch the dialogue
kill Prophet of Akali##29028 |q 12730/1 |goto Zul'Drak/0 77.60,36.65
|tip You may need help with this.
step
talk Har'koa##28401
turnin Convocation at Zol'Heb##12730 |goto Zul'Drak/0 60.26,57.74
step
Aid and Avenge the Loa with Har'koa |q 92829/2 |goto Zul'Drak/0 60.26,57.74
step
_Next to you:_
talk Li Li Stormstout##253727
turnin Lorewalking: Death of the Drakkari Loa##92829
accept Lorewalking: The Blood Loa##92831
step
Watch the dialogue
Travel with Li Li to Atal'Hakkar |q 92831/1
step
_Next to you:_
talk Li Li Stormstout##253727
Select _"Tell me about Hakkar's history."_ |gossip 137513
Ask Li Li About Hakkar |q 92831/2
step
Watch the dialogue
Listen to Li Li to Learn About Hakkar |q 92831/3
step
talk Lord Itharius##46071
accept Legends of the Sunken Temple##27704 |goto Swamp of Sorrows/0 69.46,54.54
step
Run down the stairs |goto Swamp of Sorrows/0 69.66,53.47 < 4 |walk
Cross the water |goto Swamp of Sorrows/0 70.14,50.62 < 10 |walk
Run up the stairs |goto Swamp of Sorrows/0 71.21,46.93 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 70.96,45.85 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 71.48,43.55 < 7 |walk
Run down the stairs |goto Swamp of Sorrows/0 72.14,43.70 < 7 |walk
Find the Hall of Masks |q 27704/1 |goto Swamp of Sorrows/0 74.17,44.48
step
Click the Complete Quest Box:
turnin Legends of the Sunken Temple##27704
accept Step One: The Priestess##27705
step
Follow the path |goto Swamp of Sorrows/0 75.02,45.91 < 7 |walk
Run down the stairs |goto Swamp of Sorrows/0 74.67,46.93 < 7 |walk
Continue down the stairs |goto Swamp of Sorrows/0 72.99,46.70 < 7 |walk 10 |walk
kill Priestess Udum'bra##46424 |q 27705/1 |goto Swamp of Sorrows/0 74.8,49.3
step
Click the Complete Quest Box:
turnin Step One: The Priestess##27705
accept Step Two: The Bloodletter##27768
step
Run up the stairs |goto Swamp of Sorrows/0 72.90,47.31 < 7 |walk
Continue up the stairs |goto Swamp of Sorrows/0 73.37,46.42 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 74.67,46.90 < 7 |walk
Run down the stairs |goto Swamp of Sorrows/0 75.94,47.42 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 77.21,47.66 < 7 |walk
kill Gomora the Bloodletter##46623 |q 27768/1 |goto Swamp of Sorrows/0 77.56,46.06
step
Click the Complete Quest Box:
turnin Step Two: The Bloodletter##27768
accept Step Three: Prophet##27773
step
Follow the path |goto Swamp of Sorrows/0 77.46,48.55 < 7 |walk
Continue following the path |goto Swamp of Sorrows/0 76.92,49.25 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 77.27,49.82 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 79.03,50.27 < 7 |walk
Continue following the path |goto Swamp of Sorrows/0 79.98,43.89 < 7 |walk
Run down the stairs |goto Swamp of Sorrows/0 79.52,43.70 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 77.84,43.02 < 7 |c |q 27773
step
Run down the stairs |goto Swamp of Sorrows/0 77.75,42.46 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 78.14,41.01 < 7 |walk
Run down the stairs |goto Swamp of Sorrows/0 78.32,41.55 < 7 |c |q 27773
step
Follow the path |goto Swamp of Sorrows/0 77.90,42.90 < 7 |walk
kill Jammal'an the Prophet##46656
Defeat Jammal'an the Prophet |q 27773/1 |goto Swamp of Sorrows/0 76.62,41.51
step
Click the Complete Quest Box:
turnin Step Three: Prophet##27773 |goto Swamp of Sorrows/0 76.62,41.51
step
Run up the stairs |goto Swamp of Sorrows/0 77.95,41.30 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 79.76,46.08 < 7 |walk
Continue following the path |goto Swamp of Sorrows/0 77.44,48.09 < 7 |walk
Run up the stairs |goto Swamp of Sorrows/0 73.91,44.37 < 7 |c |q 27914 |future
step
Swim under the water |goto Swamp of Sorrows/0 70.09,51.10 < 10 |walk
talk Lord Itharius##46071
|tip Outside the temple.
accept Blessing of the Green Dragonflight##27914 |goto Swamp of Sorrows/0 69.47,54.53
step
talk Lord Itharius##46071
|tip Outside the temple.
turnin Blessing of the Green Dragonflight##27914 |goto Swamp of Sorrows/0 69.47,54.53
step
Aid Lord Itharius at the Temple of Atal'Hakkar |q 92831/4 |goto Swamp of Sorrows/0 69.47,54.53
step
Watch the dialogue
Arrive in De Other Side |complete zone("De Other Side") or completedq(92831)
step
Watch the dialogue
Listen to Li Li |outvehicle
step
kill Hakkar the Soulflayer##254242 |q 92831/5
step
_Next to you:_
Watch the dialogue
talk Lord Itharius##46071
turnin Lorewalking: The Blood Loa##92831-
accept Lorewalking: The Hash'ey##92832-
step
Watch the dialogue
Arrive in the Echo Isles |complete zone("Echo Isles") or completedq(92832)
step
Watch the dialogue
Listen to Li Li |outvehicle
step
talk Rokhan##223215
accept The Loa Trials##77900 |goto Echo Isles/0 60.06,62.40
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
Watch the dialogue
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
|tip Use the ability on the screen in the small green circle to travel.
Destroy Tzadah's Empowerment |q 77905/3 |goto Echo Isles/0 54.36,56.41 |count 2
step
kill Summoned Visage##213686
|tip Avoid areas on the ground that are targeted in purple.
click Tzadah's Empowerment
|tip Use the ability on the screen in the small green circle to travel.
Destroy Tzadah's Empowerment |q 77905/3 |goto Echo Isles/0 54.51,46.95 |count 3
step
kill Summoned Visage##213686
|tip Avoid areas on the ground that are targeted in purple.
click Tzadah's Empowerment
|tip Use the ability on the screen in the small green circle to travel.
Destroy Tzadah's Empowerment |q 77905/3 |goto Echo Isles/0 58.68,46.50 |count 4
step
talk Rokhan##212782
turnin Avatar of Mueh'zala##77905 |goto Echo Isles/0 58.50,65.54
step
Drive Mueh'zala from the Darkspear Trial |q 92832/2 |goto Echo Isles/0 58.50,65.48
step
_Next to you:_
talk Li Li Stormstout##253727
turnin Lorewalking: The Hash'ey##92832
|next "Begin_Lorewalking"
]])
QuestCore:RegisterGuide("Leveling Guides\\Midnight (80-90)\\The War of Light and Shadow Campaign",{
},[[
step
Reach Level 90 |ding 90
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
accept Feeding the Flame##90777 |goto Silvermoon City M/0 45.44,70.34
|tip If you did not level through zones, you  may need to click the scouting map and select "War of Light and Shadow."
|tip After a brief intro and skip, you should be able to work on this campaign.
step
talk Lady Liadrin##247414
Select _"How does the Sunwell fare, Liadrin?"_ |gossip 133700
Check in with Liadrin at the Sunwell |q 90777/1 |goto Isle of Quel Danas M/0 53.12,58.68
step
talk Commander Venel Lightblood##247305
Select _"Let's give these recruits something to aspire to."_ |gossip 134511
kill Commander Venel Lightblood##247305
Spar with Commander Venel Lightblood |q 90777/4 |goto Isle of Quel Danas M/0 54.20,58.06
step
talk War Chaplain Senn##247306
|tip Walks around.
Select _"Will you bless me, Chaplain?"_ |gossip 134509
Watch the dialogue
Receive a Blessing from War Chaplain Senn |q 90777/3 |goto Isle of Quel Danas M/0 51.54,56.25
step
talk Commander Koruth Mountainfist##247304
Select _"Are the warframes prepared, Commander?"_ |gossip 134577
Speak with Commander Koruth Mountainfist |q 90777/2 |goto Isle of Quel Danas M/0 50.18,58.73
step
talk Lady Liadrin##247414
turnin Feeding the Flame##90777 |goto Isle of Quel Danas M/0 53.12,58.68
accept The Devouring Citadel##88696 |goto Isle of Quel Danas M/0 53.12,58.68
step
click Portal to Voidstorm
Reach the Muster Point |q 88696/2 |goto Isle of Quel Danas M/0 51.92,56.38
step
talk High Exarch Turalyon##239810
turnin The Devouring Citadel##88696 |goto Voidstorm/0 45.40,63.06
accept Clarity of Purpose##88697 |goto Voidstorm/0 45.40,63.06
step
talk Magister Umbric##239828
Select _"Scrying platform?"_ |gossip 133258
Watch the dialogue
Speak to Umbric |q 88697/1 |goto Voidstorm/0 45.39,63.14
step
click Void Scryer
Begin Observing |q 88697/2 |goto Voidstorm/0 45.36,63.17
step
Watch the dialogue
|tip Use the ability.
Observe the Injured Allies |q 88697/3
step
Watch the dialogue
|tip Use the ability.
Observe the Stalker Patriarch |q 88697/4
step
Watch the dialogue
|tip Use the ability.
Observe the Trapped Void Elves |q 88697/5
step
Stop Observing |outvehicle |q 88697 |script VehicleExit()
|tip Leave the vehicle.
step
talk Magister Umbric##239828
turnin Clarity of Purpose##88697 |goto Voidstorm/0 45.39,63.14
accept Master of Mayhem##88698 |goto Voidstorm/0 45.39,63.14
accept Powerless##88699 |goto Voidstorm/0 45.39,63.14
stickystart "Weaken_The_Overcroft_Forces"
step
click Siphon Cage
Watch the dialogue
Free Leona Darkstrider |q 88699/1 |goto Voidstorm/0 45.87,67.80
step
click Siphon Cage
Watch the dialogue
Free Lady Darkglen |q 88699/2 |goto Voidstorm/0 47.95,68.68
step
click Siphon Cage
Watch the dialogue
Free Riftblade Kelain |q 88699/3 |goto Voidstorm/0 46.88,72.72
step
click Pylon Console
Watch the dialogue
Deactivate the Turrets |q 88699/4 |goto Voidstorm/0 46.85,70.13
step
label "Weaken_The_Overcroft_Forces"
kill Overcroft Ascendant##239440, Overcroft Automaton##239439, Overcroft Inquisitor##244836, Overcroft Militant##239422, Overcroft Skypiercer##239438, Overcroft Technician##239441
click Technical Schematic+
|tip Floating scrolls.
Weaken the Overcroft Forces |q 88698/1 |goto Voidstorm/0 46.26,70.73
step
talk Magister Umbric##239828
turnin Master of Mayhem##88698 |goto Voidstorm/0 45.39,63.14
turnin Powerless##88699 |goto Voidstorm/0 45.39,63.14
step
talk High Exarch Turalyon##239810
accept Two Tons of Metal and Holy Fire##88700 |goto Voidstorm/0 45.40,63.05
step
clicknpc Assault Warframe##247506
Mount the Warframe |q 88700/1 |goto Voidstorm/0 45.12,63.33
step
_As You Fly:_
Destroy the Voidspire Defenders |q 88700/2 |goto Voidstorm/0 50.52,58.43
|tip Kill enemies on the ground.
step
talk High Exarch Turalyon##239810
turnin Two Tons of Metal and Holy Fire##88700 |goto Voidstorm/0 45.40,63.06
accept Seek out Arator##91417 |goto Voidstorm/0 45.40,63.06
step
talk Arator##239827
turnin Seek out Arator##91417 |goto Voidstorm/0 45.99,64.93
accept The Memory Remains##88701 |goto Voidstorm/0 45.99,64.93
step
_Next to you:_
talk Arator##244093 |usename Arator##239827
accept Aegis of the Redeemer##88702
stickystart "Collect_Fallen_Vanguards_Mementos"
step
clicknpc Vanguard Scout##239903+
|tip Kneeling soldiers.
|tip On your minimap.
Kill the enemies that attack in waves
Rescue #3# Vanguard Forces |q 88702/1 |goto Voidstorm/0 46.75,60.99
step
_Next to you:_
talk Arator##244093 |usename Arator##239827
turnin Aegis of the Redeemer##88702
step
label "Collect_Fallen_Vanguards_Mementos"
click Vanguard Scout+
|tip Dead humanoid soldiers.
collect 8 Fallen Vanguard's Memento##237827 |q 88701/1 |goto Voidstorm/0 46.75,60.99
step
_Next to you:_
talk Arator##244093 |usename Arator##239827
turnin The Memory Remains##88701
accept The People's Champion##91426
step
talk Arator##254884
|tip You may need to relog to get Arator in the correct place.
turnin The People's Champion##91426 |goto Voidstorm/0 46.33,63.26
accept The Night Before##88703 |goto Voidstorm/0 46.33,63.26
step
Reach Alleria's Campsite |q 88703/1 |goto Voidstorm/0 51.69,64.95
step
clicknpc Voidstalker##240264
Watch the dialogue
Assist Alleria |q 88703/2 |goto Voidstorm/0 51.69,64.95
step
talk Alleria Windrunner##239826
turnin The Night Before##88703 |goto Voidstorm/0 51.66,64.95
accept The Patient Hunter##88704 |goto Voidstorm/0 51.66,64.95
step
clicknpc Dead Vanguard##243733
|tip Alleria needs to be next to you.
|tip If she disappears, fly back towards the start until she appears again.
Discover the First Clue |q 88704/1 |goto Voidstorm/0 52.50,65.95
step
clicknpc Vanguard Medic##243683
|tip Alleria needs to be next to you.
|tip If she disappears, fly back towards the start until she appears again.
Discover the Second Clue |q 88704/2 |goto Voidstorm/0 53.24,65.33
step
click Bloody Trail
|tip Alleria needs to be next to you.
|tip If she disappears, fly back towards the start until she appears again.
Discover the Third Clue |q 88704/3 |goto Voidstorm/0 53.98,65.35
step
Pursue the Beast |q 88704/4 |goto Voidstorm/0 55.28,64.25
step
Kill the enemies that attack
Defend Against the Ambush |q 88704/5 |goto Voidstorm/0 55.28,64.25
step
Watch the dialogue
click Void Portal
Go Through the Portal |q 88704/6 |goto Voidstorm/0 55.41,64.35
step
talk Nadia Brighton##243886
|tip Inside the cave.
turnin The Patient Hunter##88704 |goto Voidstorm/0 56.29,65.12
accept Killing Blow##88705 |goto Voidstorm/0 56.29,65.12
step
clicknpc Nadia Brighton##243886
|tip Inside the cave.
Free Nadia from the Void Prison |q 88705/1 |goto Voidstorm/0 56.29,65.12
step
Safely Escort Nadia |q 88705/2 |goto Voidstorm/0 56.18,65.34
|tip Drop through the hole and run out of the cave.
step
kill Voidstalker Patriarch##240227
Defeat the Stalker Patriarch |q 88705/3 |goto Voidstorm/0 56.03,65.43
step
Watch the dialogue
talk Alleria Windrunner##239826
turnin Killing Blow##88705 |goto Voidstorm/0 55.93,64.79
accept Nothing Stands Forever##88706 |goto Voidstorm/0 55.93,64.79
step
talk High Exarch Turalyon##239810
Select _"Let's move on. <Skip.>"_ |gossip 138593
Speak to Turalyon at the Voidspire muster point |q 88706/1 |goto Voidstorm/0 45.19,62.88
step
talk High Exarch Turalyon##239810
turnin Nothing Stands Forever##88706 |goto Voidstorm/0 45.19,62.88
step
talk High Exarch Turalyon##239810
accept The Voidspire##88709 |goto Voidstorm/0 45.19,62.88
step
talk Venzilion the Reality Cracker##253322
Select _"<Enter Voidspire in Story Mode>"_ |gossip 137728
Enter the Voidspire Raid Story Mode |q 88709/2 |goto Voidstorm/0 44.55,66.06
step
Complete the Voidspire Raid |q 88709/3
|tip Click the core until it reaches 100%, then click it again to transport.
step
Watch the dialogue
talk Arator##244297
|tip Inside the Voidspire raid.
turnin The Voidspire##88709
accept The Broken Sky##90724
step
talk Arator##244297
Select _"I am ready to return to Silvermoon."_ |gossip 139331
Return to Silvermoon City |complete zone("Silvermoon City M") or completedq(90724)
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin The Broken Sky##90724 |goto Silvermoon City M/0 45.43,70.33
accept Wake of the Darkwell##92520 |goto Silvermoon City M/0 45.43,70.33
step
click Anduin Wrynn##251868
Recover Anduin Wrynn |q 92520/1 |goto Isle of Quel Danas M/0 49.72,81.46
step
click Moira Thaurissan##251932
Recover Moira Thaurissan |q 92520/4 |goto Isle of Quel Danas M/0 51.34,62.70 |count 1 hidden
step
click Calia Menethil##251934
Recover Calia Menethil |q 92520/4 |goto Isle of Quel Danas M/0 47.87,61.64 |count 2 hidden
step
click Prophet Velen##251869
Recover Prophet Velen |q 92520/2 |goto Isle of Quel Danas M/0 45.75,68.59
step
click High Prelate Rata##251933
Recover High Prelate Rata |q 92520/4 |goto Isle of Quel Danas M/0 41.06,57.59 |count 3 hidden
step
click Tahu Sagewind##251939
Recover Tahu Sagewind |q 92520/4 |goto Isle of Quel Danas M/0 35.56,45.37 |count 4 hidden
step
click Faerin Lothar##251870
Recover Faerin Lothar |q 92520/3 |goto Isle of Quel Danas M/0 45.19,38.92
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin Wake of the Darkwell##92520 |goto Silvermoon City M/0 45.44,70.33
step
talk Arator##240267
|tip He will walk around to this spot upstairs inside the building.
accept The Kaldorei##88920 |goto Silvermoon City M/0 45.86,70.34
step
talk Arator##240267
|tip Upstairs inside the building.
Select _"Let's discuss the plan in full."_ |gossip 136565 |noautogossip
Listen to Arator's Plan |q 88920/1 |goto Silvermoon City M/0 45.86,70.34
step
click Portal to Bel'ameth
|tip Inside the building.
Take the Portal to Bel'ameth |q 88920/2 |goto Silvermoon City M/0 47.55,69.56
step
Meet Shandris Feathermoon in Bel'ameth |q 88920/3 |goto Amirdrassil/0 48.33,70.68
step
talk Shandris Feathermoon##240334
turnin The Kaldorei##88920 |goto Amirdrassil/0 48.33,70.68
accept Children of the Stars##88923 |goto Amirdrassil/0 48.33,70.68
step
talk Lor'themar Theron##240335
Select _"Tell Shandris what has transpired."_ |gossip 135655
Hear Lor'themar's Plea |q 88923/1 |goto Amirdrassil/0 48.36,70.43
step
talk Magister Umbric##253613
Select _"Tell Shandris what has transpired."_ |gossip 135656
Hear Umbric's Plea |q 88923/2 |goto Amirdrassil/0 48.27,70.43
step
talk First Arcanist Thalyssra##250853
Select _"Tell Shandris what has transpired."_ |gossip 135657
Hear Thalyssra's Plea |q 88923/3 |goto Amirdrassil/0 48.41,70.45
step
talk Shandris Feathermoon##240334
turnin Children of the Stars##88923 |goto Amirdrassil/0 48.33,70.67
accept Awaken the Ancient of War##88925 |goto Amirdrassil/0 48.33,70.67
accept Awaken the Ancient Protector##88927 |goto Amirdrassil/0 48.33,70.67
accept Awaken the Ancient of Lore##88937 |goto Amirdrassil/0 48.33,70.67
step
talk Uylian##255792
Speak with Uylian to Learn How to Awaken the Ancient Protector |q 88927/1 |goto Amirdrassil/0 44.99,71.90
step
click Large Mossrock
Fetch the Large Boulder |q 88927/2 |goto Amirdrassil/0 45.49,70.26 |count 1 hidden
step
click Large Mossrock
Fetch the Large Boulder |q 88927/2 |goto Amirdrassil/0 43.62,67.13 |count 2 hidden
step
click Large Mossrock
Fetch the Large Boulder |q 88927/2 |goto Amirdrassil/0 42.29,67.46 |count 3 hidden
step
click Large Mossrock
Fetch the Large Boulder |q 88927/2 |goto Amirdrassil/0 41.12,68.79 |count 4 hidden
step
talk Elder Verdantbark##251316
Select _"<Present throwing stones to Elder Verdantbark.>"_ |gossip 137249
Arm the Ancient Protector |q 88927/3 |goto Amirdrassil/0 45.19,72.31
step
talk Venlinal##255711
Speak with Venlinal to Learn How to Awaken the Ancient of War |q 88925/1 |goto Amirdrassil/0 50.72,51.51
step
click Root of War
|tip You will be attacked by minor enemies.
Sever the Root of War |q 88925/2 |goto Amirdrassil/0 50.27,51.57 |count 1 hidden
step
click Root of War
|tip You will be attacked by minor enemies.
Sever the Root of War |q 88925/2 |goto Amirdrassil/0 51.16,52.87 |count 2 hidden
step
click Root of War
|tip You will be attacked by minor enemies.
Sever the Root of War |q 88925/2 |goto Amirdrassil/0 50.70,49.62 |count 3 hidden
step
click Root of War
Free the Ancient of War |q 88925/3 |goto Amirdrassil/0 50.97,51.15
step
talk Malastral##255687
Select _"Give me the banner and I will gather the wisps."_ |gossip 137236
Speak with Malastral to Learn How to Awaken the Ancient of Lore |q 88937/1 |goto Amirdrassil/0 56.87,65.07
step
Collect #25# Wisps |q 88937/2 |goto Amirdrassil/0 64.83,65.54
|tip Fly through the glowing green wisps.
step
clicknpc Elderbranch##251330
Awaken the Ancient of Lore |q 88937/3 |goto Amirdrassil/0 56.49,65.17
step
talk Shandris Feathermoon##240334
turnin Awaken the Ancient of War##88925 |goto Amirdrassil/0 48.33,70.67
turnin Awaken the Ancient Protector##88927 |goto Amirdrassil/0 48.33,70.67
turnin Awaken the Ancient of Lore##88937 |goto Amirdrassil/0 48.33,70.67
step
talk Arator##251335
accept The Quel'dorei##88922 |goto Amirdrassil/0 48.32,70.46
step
click Portal to Silverglade Refuge
Use the Portal to Silverglade Refuge |q 88922/2 |goto Amirdrassil/0 50.60,61.66
step
talk Arator##240296
turnin The Quel'dorei##88922 |goto Eversong Woods M/0 31.22,91.37
step
talk Vereesa Windrunner##240295
accept Rest for the Restless##88939 |goto Eversong Woods M/0 31.18,91.37
accept Symbols of the Past##88938 |goto Eversong Woods M/0 31.18,91.37
step
click Anasterian's Book of Law##255848
collect Anasterian's Book of Law##251899 |q 88938/3 |goto Eversong Woods M/0 30.38,92.49
step
click Crown of the High King
collect Crown of the High King##251904 |q 88938/2 |goto Eversong Woods M/0 30.22,90.78
step
kill Purged of Dalaran##240300+
collect 10 Remains of the Fallen##258041 |q 88939/1 |goto Eversong Woods M/0 31.72,93.27
step
talk Vereesa Windrunner##240295
turnin Rest for the Restless##88939 |goto Eversong Woods M/0 31.18,91.37
turnin Symbols of the Past##88938 |goto Eversong Woods M/0 31.18,91.37
accept For Quel'Thalas##88941 |goto Eversong Woods M/0 31.18,91.37
step
Meet Vereesa at the Gate of Silvermoon |q 88941/1 |goto Eversong Woods M/0 50.56,34.51
step
talk Archmage Aethas Sunreaver##240285
Select _"We have come to negotiate in peace."_ |gossip 133788
Negotiate with Aethas Sunreaver |q 88941/2 |goto Eversong Woods M/0 50.56,34.51
step
talk Vereesa Windrunner##240262
|tip Upstairs inside the building.
turnin For Quel'Thalas##88941 |goto Silvermoon City M/0 45.79,70.52
step
talk First Arcanist Thalyssra##240255
|tip Upstairs inside the building.
accept The Shal'dorei##88928 |goto Silvermoon City M/0 45.70,70.06
step
click Portal to Suramar
|tip Inside the building.
Use Oculeth's Suramar Portal |q 88928/1 |goto Silvermoon City M/0 47.55,69.55
step
talk Seneschal Ulen##250958
turnin The Shal'dorei##88928 |goto Suramar/0 70.53,74.23
accept Drained Mana##88930 |goto Suramar/0 70.53,74.23
step
talk First Arcanist Thalyssra##240302
accept An Illusion!##88929 |goto Suramar/0 70.59,74.30
stickystart "Slay_Imposters"
step
click Drained Protector##251509
Investigate the Protector |q 88930/1 |goto Suramar/0 70.15,76.93
step
click Ley Line Coil
Investigate the Ley Line Coil |q 88930/2 |goto Suramar/0 70.63,79.71
step
click Seneschal Ulen##251518
Investigate the Strange Smell |q 88930/3 |goto Suramar/0 71.60,79.38
step
label "Slay_Imposters"
'|clicknpc Nighthold Citizen##244080
use the Nightwatch Mask##248920
|tip Use it near Nighthold Citizens.
Slay #5# Imposters |q 88929/1 |goto Suramar/0 69.16,76.80
step
Confront Seneschal Ulen |q 88930/4 |goto Suramar/0 70.54,74.23
step
Watch the dialogue
talk First Arcanist Thalyssra##256046
turnin Drained Mana##88930 |goto Suramar/0 70.59,74.31
turnin An Illusion!##88929 |goto Suramar/0 70.59,74.31
accept Into the Darkway##88919 |goto Suramar/0 70.59,74.31
step
click Enter Delve##254489
Enter the Darkway |q 88919/1 |goto Suramar/0 71.05,73.89
step
kill Infiltrator Gulkat##256817 |q 88919/2 |goto The Darkway/0 48.00,81.97
|tip The final boss of the delve.
step
Exit the Delve |complete zone("Silvermoon City M") or completedq(88919)
step
talk First Arcanist Thalyssra##254654
turnin Into the Darkway##88919 |goto Silvermoon City M/0 40.41,32.91
accept The Elves are Going to War##88942 |goto Silvermoon City M/0 40.41,32.91
step
talk Lor'themar Theron##240266
|tip Upstairs inside the building.
turnin The Elves are Going to War##88942 |goto Silvermoon City M/0 45.75,70.11
step
talk Arator##240267
|tip Upstairs inside the building.
accept The Battle of the Bridge##88769 |goto Silvermoon City M/0 45.85,70.33
step
talk Arator##240267
|tip Upstairs inside the building.
Select _"Let's go. (Start Scenario)"_ |gossip 133560
Begin The Battle of the Bridge |scenariostart The Battle of the Bridge##2943 |goto Silvermoon City M/0 45.85,70.33 |q 88769
step
talk Arator##239696
Select _"I am ready."_ |gossip 133407
Speak to Arator |scenariogoal 1/103514 |goto Silvermoon Campaign Scenario/0 45.66,50.58 |q 88769
step
kill Twilight Void Swarmer##239849, Twilight Living Shadow##242981, Twilight Shadowblade##244119, Twilight Voidcaller##239857, Twilight Duskwarden##239856
Push Back the Twilight's Blade |scenariogoal 2/0 |goto Silvermoon Campaign Scenario/0 39.62,38.65 |q 88769
stickystart "Kill_Udor_Eyestabber"
step
Kill Bleck the Voidspitter |scenariogoal 3/104469 |goto Silvermoon Campaign Scenario/0 32.61,25.86 |q 88769
step
label "Kill_Udor_Eyestabber"
Kill Udor Eyestabber |scenariogoal 3/104470 |goto Silvermoon Campaign Scenario/0 31.96,24.91 |q 88769
step
click Ethereal Turret
Destroy the Ethereal Turret |scenariogoal 4/103516 |goto Silvermoon Campaign Scenario/0 27.41,23.35 |count 1 hidden |q 88769
step
click Ethereal Turret
Destroy the Ethereal Turret |scenariogoal 4/103516 |goto Silvermoon Campaign Scenario/0 27.80,18.86 |count 2 hidden |q 88769
step
click Ethereal Turret
Destroy the Ethereal Turret |scenariogoal 4/103516 |goto Silvermoon Campaign Scenario/0 24.94,13.91 |count 3 hidden |q 88769
step
click Ethereal Turret
Destroy the Ethereal Turret |scenariogoal 4/103516 |goto Silvermoon Campaign Scenario/0 28.87,11.51 |count 4 hidden |q 88769
step
Signal Vereesa with Your Flare |scenariogoal 5/106406 |goto Silvermoon Campaign Scenario/0 28.85,11.51 |q 88769
|tip Use the ability on the screen.
step
talk Arator##243055
Select _"I am ready. Let's take the bridge."_ |gossip 133517
Speak to Arator at the Bridge |scenariogoal 6/104482 |goto Silvermoon Campaign Scenario/0 45.65,35.99 |q 88769
step
Kill enemies on the bridge
Eliminate #200# Shining Span Enemies |scenariogoal 7/103517 |goto Silvermoon Campaign Scenario/0 45.68,22.33 |q 88769
step
kill Imperator Nocturnius##239970 |scenariogoal 8/103519 |goto Silvermoon Campaign Scenario/0 45.67,6.67 |q 88769
step
talk Arator##243152
Select _"I am ready. Charge!"_ |gossip 133531
Speak to Arator |scenariogoal 9/103520 |goto Silvermoon Campaign Scenario/0 45.64,3.16 |q 88769
step
Win The Battle of the Bridge |q 88769/1 |goto Silvermoon Campaign Scenario/0 45.64,3.16
step
talk Arator##245061
turnin The Battle of the Bridge##88769 |goto Isle of Quel Danas M/0 52.58,90.21
step
talk Arator##245061
accept March on Quel'Danas##88710 |goto Isle of Quel Danas M/0 52.58,90.21
step
talk Tactical Telemancer Seralia##255011
Select _"<Enter March on Quel'Danas in Story Mode.>"_ |gossip 137768
Enter Story Mode |q 88710/1 |goto Isle of Quel Danas M/0 49.73,87.54
step
Complete the March on Quel'Danas Raid |q 88710/2
|tip Defeath L'ura with your assembled group.
|tip In general, move out of stuff on the ground and stay away from indicated area around NPCs that shoot out in straight lines.
step
talk Arator##243824
|tip Inside the March on Quel'Danas story mode.
turnin March on Quel'Danas##88710 |goto March on Quel Danas/1 0.00,0.00
step
talk Lady Liadrin##249615
|tip Inside the March on Quel'Danas story mode.
Select _"I am ready to return to Silvermoon."_ |gossip 138564
Return to Silvermoon City |complete zone("Silvermoon City M") or completedq(92689)
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
accept A Path Forward##92689 |goto Silvermoon City M/0 45.44,70.33
step
talk Grand Magister Rommath##244701
accept Reluctant Hand##90876 |goto Silvermoon City M/0 53.43,60.11
step
click Umbric's Old Lab Bench
|tip Inside the building.
Clean Off the Lab Bench |q 90876/2 |goto Silvermoon City M/0 53.78,58.47
step
click Umbric's Harmonial
|tip Inside the building.
Dust the Harmonial |q 90876/1 |goto Silvermoon City M/0 54.26,59.84
step
click Deed to the Umbral Atrium
|tip Inside the building.
Review the Proclamation |q 90876/3 |goto Silvermoon City M/0 54.28,58.94
step
talk Magister Umbric##247262
|tip Inside the building.
turnin Reluctant Hand##90876 |goto Silvermoon City M/0 54.18,59.38
step
Assist Grand Magister Rommath |q 92689/1 |goto Silvermoon City M/0 54.18,59.38
step
talk Vereesa Windrunner##244699
accept The Silversun Compact##90871 |goto Silvermoon City M/0 40.14,89.50
step
click Flame of the Covenant
|tip On the platform.
Light the Flame of the Covenant |q 90871/1 |goto Silvermoon City M/0 39.71,87.32
step
click Flame of the Sunreavers
|tip On the upper platform.
Light the Flame of the Sunreavers |q 90871/2 |goto Silvermoon City M/0 41.49,86.44
step
click The Silversun Compact
|tip Upstairs inside the building.
Review The Silversun Compact |q 90871/3 |goto Silvermoon City M/0 41.20,88.76
step
talk Vereesa Windrunner##247452
|tip Upstairs inside the building.
turnin The Silversun Compact##90871 |goto Silvermoon City M/0 41.23,88.92
step
Assist Aethas Sunreaver |q 92689/2 |goto Silvermoon City M/0 41.23,88.92
step
talk Lor'themar Theron##235787
|tip Upstairs inside the building.
turnin A Path Forward##92689 |goto Silvermoon City M/0 45.45,70.34
accept Those Left Behind##90861 |goto Silvermoon City M/0 45.45,70.34
step
talk Arator##244557
turnin Those Left Behind##90861 |goto Isle of Quel Danas M/0 52.71,58.36
accept In Times of Need##90862 |goto Isle of Quel Danas M/0 52.71,58.36
step
talk First Arcanist Thalyssra##244582
Select _"Liadrin awaits you at the Darkwell."_ |gossip 133843
Meet the Shal'dorei Delegation |q 90862/2 |goto Isle of Quel Danas M/0 56.20,60.65
step
talk Vereesa Windrunner##244585
|tip Up on the platform.
Select _"Liadrin awaits you at the Darkwell."_ |gossip 133852
Meet the Quel'dorei Delegation |q 90862/4 |goto Isle of Quel Danas M/0 52.63,67.52
step
talk Magister Umbric##244579
Select _"Liadrin awaits you at the Darkwell."_ |gossip 133846
Meet the Ren'dorei Delegation |q 90862/3 |goto Isle of Quel Danas M/0 48.36,64.91
step
talk Shandris Feathermoon##244583
Select _"Liadrin awaits you at the Darkwell."_ |gossip 133840
Meet the Kal'dorei Delegation |q 90862/1 |goto Isle of Quel Danas M/0 38.19,57.91
step
talk Lady Liadrin##244576
|tip Inside the building behind the swirling black barrier.
turnin In Times of Need##90862 |goto Isle of Quel Danas M/0 52.61,46.05
accept From Darkness, Light##90867 |goto Isle of Quel Danas M/0 52.61,46.05
step
talk Lady Liadrin##244576
|tip Inside the building behind the swirling black barrier.
Select _"Begin the ritual to cleanse the Darkwell."_ |gossip 134464
Speak with Liadrin to begin the Ritual |q 90867/1 |goto Isle of Quel Danas M/0 52.61,46.05
step
talk Lady Liadrin##245469
|tip Inside the building.
turnin From Darkness, Light##90867 |goto Isle of Quel Danas M/0 52.60,45.87
]])
