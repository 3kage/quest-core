-- Bundled QuestCore guide
if not QuestCore then return end

if UnitFactionGroup("player")~="Alliance" then return end
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Draenei Heritage Armor",{
description="This guide will walk you through unlocking the Draenei Heritage Armor.",
patch='100207',
},[[
step
Reach Level 60 On Any Character |achieve 14783
|tip In order to start core race heritage armor questlines, you must have at least one level 60 character on your account.
|tip Use the leveling guides.
step
Reach Level 50 as a Draenei Character |complete Draenei and level >= 50
|tip You must complete this on a 50+ Draenei character.
|tip Use the leveling guides.
step
click Magically-Sealed Parcel
accept An Artificer's Appeal##78068 |goto Stormwind City/0 53.02,15.48
step
use the Spare Hologem##210454
Use the Spare Hologem |q 78068/1 |goto Stormwind City/0 52.92,15.47
step
Meet Romuul in the Exodar |q 78068/2 |goto The Exodar/0 54.79,79.85
step
talk Grand Artificer Romuul##210340
turnin An Artificer's Appeal##78068 |goto The Exodar/0 54.79,79.85
accept Reviving Tradition##78069 |goto The Exodar/0 54.79,79.85
step
click Artificing Tools
collect 1 Empyrium Filament##210167 |q 78069/1 |goto The Exodar/0 58.04,79.90
step
click Artificing Tools
collect 1 Hyperthermal Soldering Tool##210168 |q 78069/2 |goto The Exodar/0 51.32,74.64
step
talk Grand Artificer Romuul##210340
Select _"<Hand the materials to Romuul.>"_ |gossip 114137
Bring the Materials to Romuul |q 78069/3 |goto The Exodar/0 54.78,79.80
step
click Arkonite Pillar
|tip Click the sparkling pillars one at a time to connect them on both sides.
click Arkonite Generator
|tip Click the generator after connecting the pair of pillars on both sides.
Connect #2# Arkonite Arrays |q 78069/4 |goto The Exodar/0 53.82,78.98
step
talk Grand Artificer Romuul##210340
turnin Reviving Tradition##78069 |goto The Exodar/0 54.78,79.79
accept Pressing Deadlines##78070 |goto The Exodar/0 54.78,79.79
step
use the Spare Hologem##210454
Use the Spare Hologem |q 78070/1 |goto The Exodar/0 54.78,79.79
step
talk High Artificer Ataanya##208494
Select _"Romuul needs you to bring your schematics to Exodar and present them at the Tishamaat."_ |gossip 114139
Speak to Ataanya |q 78070/2 |goto The Exodar/0 38.94,46.90
step
Watch the dialogue
talk High Artificer Ataanya##208494
turnin Pressing Deadlines##78070 |goto The Exodar/0 38.94,46.90
accept Rush Order##78071 |goto The Exodar/0 38.94,46.90
step
talk Apprentice Beruun##208496
Select _"I'll try to locate the draenite shipment."_ |gossip 114140
Speak to Beruun |q 78071/1 |goto The Exodar/0 37.95,46.95
step
Locate the Draenite Miners |q 78071/2 |goto Terokkar Forest/0 40.62,25.19
step
click Draenite Crate
Load the Draenite Crate |q 78071/3 |goto Terokkar Forest/0 40.60,25.23 |count 1
step
click Draenite Crate
Load the Draenite Crate |q 78071/3 |goto Terokkar Forest/0 40.67,25.20 |count 2
step
click Draenite Crate
Load the Draenite Crate |q 78071/3 |goto Terokkar Forest/0 40.63,25.14 |count 3
step
talk Crystalsmith Laharu##212120
Select _"Here is some of the High Artificer's draenite order. The rest is on the way."_ |gossip 114147
Deliver the Draenite to the Crystalsmiths |q 78071/5 |goto Shattrath City/0 76.15,47.52
step
talk Crystalsmith Laharu##212120
Select _"Here is some of the High Artificer's draenite order. The rest is on the way."_ |gossip 114147
Get the Signed Work Orders |q 78071/6 |goto Shattrath City/0 76.15,47.52
step
talk High Artificer Ataanya##208494
Select _"I took your draenite shipment to the crystalsmiths. Here are your completed work orders."_ |gossip 120519
Bring the Work Orders to Ataanya |q 78071/7 |goto Shattrath City/0 38.95,46.90
step
Watch the dialogue
talk Apprentice Beruun##208496
turnin Rush Order##78071 |goto Shattrath City/0 37.96,46.95
accept An Old Wound##78072 |goto Shattrath City/0 37.96,46.95
step
talk Soultender Nemuraan##210575
Select _"High Artificer Ataanya will not attend the Tishamaat because she still mourns her father. Can you help her?"_ |gossip 113996
Speak to the Auchenai Soulpriests |q 78072/1 |goto Terokkar Forest/0 37.49,64.22
step
talk Exarch Maladaar##210578
turnin An Old Wound##78072 |goto Terokkar Forest/0 37.49,64.30
accept Lingering Scars##78073 |goto Terokkar Forest/0 37.49,64.30
step
click Auchenai Translocator
Use the Auchenai Translocator |q 78073/1 |goto Terokkar Forest/0 37.35,64.75
step
Begin Traveling |invehicle |q 78073
step
Watch the dialogue
Reach the Upper Platform |outvehicle |goto Terokkar Forest/0 38.32,69.41 |q 78073
step
Commune with Exarch Larohir |q 78073/2 |goto Terokkar Forest/0 38.16,69.72
|tip Use the {o}Commune{} button ability.
step
Return #8# Shattrath Victims to Rest |q 78073/3 |goto Terokkar Forest/0 38.40,69.95
|tip Click the NPCs on the platform.
step
click Larohir's Ashes
Calm Exarch Larohir |q 78073/4 |goto Terokkar Forest/0 38.09,69.66
step
click Auchenai Translocator
Use the Auchenai Translocator |invehicle |goto Terokkar Forest/0 38.29,69.37 |q 78073
step
Watch the dialogue
Reach the Next Platform |outvehicle |goto Terokkar Forest/0 42.12,67.64 |q 78073
step
Commune with Exarch Kelios |q 78073/5 |goto Terokkar Forest/0 42.37,67.81
|tip Use the {o}Commune{} button ability.
step
click Karabor Prayer Candle+
|tip Click all of the candles quickly before they go out.
|tip Click the largest candles first as they burn the longest and take the longest to light.
|tip Alternatively, you can click the altar nearby to channel a long cast and bypass, though it will take much more time.
Light All Karabor Prayer Candles at Once |q 78073/6 |goto Terokkar Forest/0 42.46,67.96
step
click Kelios's Ashes
Calm Exarch Kelios |q 78073/7 |goto Terokkar Forest/0 42.34,67.92
step
click Auchenai Translocator
Use the Auchenai Translocator |invehicle |goto Terokkar Forest/0 42.14,67.60 |q 78073
step
Watch the dialogue
Reach the Next Platform |outvehicle |goto Terokkar Forest/0 41.46,62.23 |q 78073
step
Commune with Restalaan |q 78073/8 |goto Terokkar Forest/0 41.52,61.87
|tip Use the {o}Commune{} button ability.
|tip You will be attacked.
step
kill Memory of Death##210584+
|tip You will be attacked.
Slay #2# Memories of Death |q 78073/9 |goto Terokkar Forest/0 41.52,61.87
step
click Restalaan's Ashes
Calm Restalaan |q 78073/10 |goto Terokkar Forest/0 41.45,61.81
step
talk Exarch Maladaar##210581
turnin Lingering Scars##78073 |goto Terokkar Forest/0 41.60,61.60
accept To See Clearly##78074 |goto Terokkar Forest/0 41.60,61.60
step
click Auchenai Translocator
Use the Auchenai Translocator |q 78074/1 |goto Terokkar Forest/0 41.43,62.24
step
Begin Travelling |invehicle |q 78074
step
Watch the dialogue
Reach the Next Platform |outvehicle |goto Terokkar Forest/0 37.36,62.88 |q 78074
step
click Hataaru's Ashes
Tell _"I think your daughter Ataanya still grieves for you."_ |gossip 114044
Request to Speak to Hataaru's Ashes |q 78074/2 |goto Terokkar Forest/0 37.10,62.89
step
click Artificer's Lockbox##408954
collect 1 Exarch Hataaru's Artificing Lens##210189 |q 78074/3 |goto Terokkar Forest/0 36.83,62.66
step
talk High Artificer Ataanya##210569
Select _"<Offer the artificing lens to her.> I spoke to your father. He wanted you to have this."_ |gossip 120282
Take the Lens to Ataanya in Shattrath |q 78074/4 |goto Shattrath City/0 39.06,46.25
step
Watch the dialogue
talk High Artificer Ataanya##210569
turnin To See Clearly##78074 |goto Shattrath City/0 39.06,46.25
accept Moving Past##78075 |goto Shattrath City/0 39.06,46.25
step
use the Spare Hologem##210454
Use the Spare Hologem |q 78075/1 |goto Shattrath City/0 39.06,46.25
step
Return to Romuul in the Exodar |q 78075/2 |goto The Exodar/0 55.38,79.12
step
talk Grand Artificer Romuul##210562
turnin Moving Past##78075 |goto The Exodar/0 55.38,79.12
step
talk Chieftain Hatuun##210563
accept Emergency Efforts##78076 |goto The Exodar/0 53.98,76.62
step
clicknpc Argussian Mana Ray##211689
Mount the Argussian Mana Ray |q 78076/1 |goto The Exodar/0 53.71,75.81
step
Begin Flying |invehicle |q 78076
step
Watch the dialogue
Ride to Bloodmyst Isle |q 78076/2 |goto Bloodmyst Isle/0 52.17,74.11 |notravel
step
talk Prophet Velen##210390
turnin Emergency Efforts##78076 |goto Bloodmyst Isle/0 52.03,75.57
step
talk Arzaal##210588
accept Assessing the Enemy##78078 |goto Bloodmyst Isle/0 51.91,75.67
step
talk Chieftain Hatuun##210391
accept Beneath the Skin##78077 |goto Bloodmyst Isle/0 51.90,75.52
stickystart "Collect_Pitted_Bones"
step
click Satyr Totem
collect 1 Satyr Totem##210238 |q 78078/1 |goto Bloodmyst Isle/0 54.49,74.84
step
click Satyr Totem
collect 2 Satyr Totem##210238 |q 78078/1 |goto Bloodmyst Isle/0 54.70,72.74
step
click Satyr Totem
collect 3 Satyr Totem##210238 |q 78078/1 |goto Bloodmyst Isle/0 56.38,72.10
step
click Satyr Totem
collect 4 Satyr Totem##210238 |q 78078/1 |goto Bloodmyst Isle/0 57.72,68.61
step
click Satyr Totem
collect 5 Satyr Totem##210238 |q 78078/1 |goto Bloodmyst Isle/0 54.99,67.47
step
click Satyr Totem
collect 6 Satyr Totem##210238 |q 78078/1 |goto Bloodmyst Isle/0 52.31,68.27
step
label "Collect_Pitted_Bones"
kill Infected Nightsaber##210397, Corrupted Grizzly##210395
collect 8 Pitted Bones##210239 |q 78077/1 |goto Bloodmyst Isle/0 52.00,70.21
step
talk Chieftain Hatuun##210391
turnin Beneath the Skin##78077 |goto Bloodmyst Isle/0 51.90,75.54
step
talk Arzaal##210588
turnin Assessing the Enemy##78078 |goto Bloodmyst Isle/0 51.91,75.67
step
talk Prophet Velen##210390
accept Excision##78079 |goto Bloodmyst Isle/0 52.03,75.59
step
Meet Velen and Hatuun in Nazzivian |q 78079/1 |goto Bloodmyst Isle/0 43.15,77.85
step
click Crystalline Felspreader
Find the Man'ari Evidence |q 78079/2 |goto Bloodmyst Isle/0 41.31,77.73 |count 1
step
click Crystalline Felspreader
Find the Man'ari Evidence |q 78079/2 |goto Bloodmyst Isle/0 36.52,71.91 |count 2
step
click Crystalline Felspreader
Find the Man'ari Evidence |q 78079/2 |goto Bloodmyst Isle/0 35.71,80.92 |count 3
step
talk Prophet Velen##210600
turnin Excision##78079 |goto Bloodmyst Isle/0 42.27,36.82
step
talk Arzaal##210598
accept At the Source##78080 |goto Bloodmyst Isle/0 42.22,36.58
step
Watch the dialogue
Reveal the Source of Fel |q 78080/1 |goto Bloodmyst Isle/0 41.67,32.59
step
Watch the dialogue
|tip Use the {o}Call Romuul{} button ability.
Call Romuul for aid |q 78080/2 |goto Bloodmyst Isle/0 41.67,32.59
step
talk Prophet Velen##210605
Select _"I am ready."_ |gossip 114169
Speak to Velen |q 78080/3 |goto Bloodmyst Isle/0 41.46,33.03
step
Kill enemies that attack in waves
|tip Standing in Velen's light will heal you.
kill Sironas##210604
|tip This is the final enemy to appear.
Defend the Generator |q 78080/4 |goto Bloodmyst Isle/0 41.46,32.91
step
talk Prophet Velen##210605
turnin At the Source##78080 |goto Bloodmyst Isle/0 41.46,33.03
accept Pain Recedes##78081 |goto Bloodmyst Isle/0 41.46,33.03
step
use the Spare Hologem##210454
Use the Spare Hologem |q 78081/1 |goto Bloodmyst Isle/0 41.46,33.03
step
Return to Velen in the Exodar |q 78081/2 |goto The Exodar/0 54.76,80.68
step
talk Prophet Velen##214021
turnin Pain Recedes##78081 |goto The Exodar/0 54.76,80.68
accept A Burden Shared##78082 |goto The Exodar/0 54.76,80.68
step
talk Grand Artificer Romuul##210565
Select _"May I take your memory stone to the Flame of Reprieve?"_ |gossip 114201
Collect the Memory Stone |q 78082/1 |goto The Exodar/0 55.42,78.98 |count 1
step
talk High Artificer Ataanya##210673
Select _"May I take your memory stone to the Flame of Reprieve?"_ |gossip 114202
Collect the Memory Stone |q 78082/1 |goto The Exodar/0 55.61,78.66 |count 2
step
talk Prophet Velen##210670
Select _"May I take your memory stone to the Flame of Reprieve?"_ |gossip 114203
Collect the Memory Stone |q 78082/1 |goto The Exodar/0 53.77,83.75 |count 3
step
talk Chieftain Hatuun##210671
Select _"May I take your memory stone to the Flame of Reprieve?"_ |gossip 122502
Collect the Memory Stone |q 78082/1 |goto The Exodar/0 53.73,84.17 |count 4
step
talk High Priestess Ishanah##212344
Select _"May I take your memory stone to the Flame of Reprieve?"_ |gossip 114214
Collect the Memory Stone |q 78082/1 |goto The Exodar/0 47.70,81.68 |count 5
step
talk Vindicator Boros##212342
Select _"May I take your memory stone to the Flame of Reprieve?"_ |gossip 114215
Collect the Memory Stone |q 78082/1 |goto The Exodar/0 57.32,92.89 |count 6
step
talk Arzaal##210672
Select _"May I take your memory stone to the Flame of Reprieve?"_ |gossip 114205
Collect the Memory Stone |q 78082/1 |goto The Exodar/0 57.21,93.25 |count 7
step
talk Exarch Naielle##212347
Select _"May I take your memory stone to the Flame of Reprieve?"_ |gossip 114209
Collect the Memory Stone |q 78082/1 |goto The Exodar/0 57.17,69.89 |count 8
step
talk Farseer Nobundo##212343
Select _"May I take your memory stone to the Flame of Reprieve?"_ |gossip 114213
Collect the Memory Stone |q 78082/1 |goto The Exodar/0 68.43,80.27 |count 9
step
talk Akama##212349
Select _"May I take your memory stone to the Flame of Reprieve?"_ |gossip 114206
Collect the Memory Stone |q 78082/1 |goto The Exodar/0 67.84,85.08 |count 10
step
talk Grand Anchorite Almonen##212387
|tip Inscribe whatever name you prefer on your stone by picking the corresponding dialogue option.
|tip Choose any follow-up dialogue option you prefer.
Create a Personal Memory Stone |q 78082/2 |goto The Exodar/0 64.40,87.26
step
Dissolve the Memory Stones |q 78082/3 |goto The Exodar/0 65.13,87.62
|tip Use the {o}Dissolve Memory Stones{} button ability.
step
talk Grand Anchorite Almonen##212387
turnin A Burden Shared##78082 |goto The Exodar/0 64.39,87.28
accept Our Path Forward##78083 |goto The Exodar/0 64.39,87.28
step
talk Prophet Velen##212402
Select _"Please begin the ceremony."_ |gossip 114223
Ask Velen to Begin the Ceremony |q 78083/1 |goto The Exodar/0 54.76,80.68
step
talk Prophet Velen##212402
turnin Our Path Forward##78083 |goto The Exodar/0 54.76,80.68
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Dwarf Heritage Armor",{
description="This guide will walk you through unlocking the Dwarf Heritage Armor.",
patch='80100',
},[[
step
Reach Level 60 On Any Character |achieve 14783
|tip In order to start core race heritage armor questlines, you must have at least one level 60 character on your account.
|tip Use the leveling guides.
step
Reach Level 50 as a Dwarf Character |complete Dwarf and level >= 50
|tip You must complete this on a 50+ Dwarf character.
|tip Use the leveling guides.
step
talk Digger Golad##146988
accept Keep Yer Feet On The Ground##53838 |goto Stormwind City/0 54.48,18.29
step
Enter the cave |goto Dun Morogh/0 77.85,54.88 < 15 |walk
Follow the path |goto Dun Morogh/11 37.95,68.78 < 15 |walk
Continue following the path |goto Dun Morogh/11 44.70,37.03 < 15 |walk
Follow the path |goto Dun Morogh/11 50.17,19.77 < 10 |walk
Find the Missing Excavators |q 53838/1 |goto Dun Morogh/11 40.27,21.73
|tip Inside the cave.
step
kill Maw'roc the Thief##146994 |q 53838/2 |goto Dun Morogh/11 40.27,21.73
|tip Inside the cave.
step
click Ancient Tablet
|tip Inside the cave.
turnin Keep Yer Feet On The Ground##53838 |goto Dun Morogh/11 39.81,22.55
accept Something Valuable, Perhaps?##53835 |goto Dun Morogh/11 39.81,22.55
step
Enter the building |goto Ironforge/0 66.16,19.39 < 20 |walk
talk Brann Bronzebeard##145462
|tip Inside the building.
turnin Something Valuable, Perhaps?##53835 |goto Ironforge/0 77.45,9.51
accept Ancient Armor, Ancient Mystery##53836 |goto Ironforge/0 77.45,9.51
step
Enter the building |goto Ironforge/0 44.54,49.53 < 10 |walk
Follow the path down |goto Ironforge/0 44.21,51.97 < 7 |walk
Continue down the path |goto Ironforge/1 79.81,87.01 < 7 |c |q 53836
step
Follow the path down |goto Ironforge/1 80.27,53.41 < 10 |walk
talk Advisor Belgrum##145464
|tip Downstairs inside the cave.
turnin Ancient Armor, Ancient Mystery##53836 |goto Ironforge/1 56.98,47.92
accept Watch Yer Back##53837 |goto Ironforge/1 56.98,47.92
stickystart "Kill_Trogg_Invaders"
step
Follow the path |goto Ironforge/1 55.32,60.02 < 7 |walk
Continue following the path |goto Ironforge/1 45.04,62.24 < 7 |walk
kill Roc'maw the Burrower##145698 |q 53837/2 |goto Ironforge/1 19.61,51.79
|tip Downstairs inside the cave.
|tip Follow the winding path down.
|tip He will appear on your minimap as a yellow dot.
step
label "Kill_Trogg_Invaders"
kill 8 Trogg Invader##145469 |q 53837/1 |goto Ironforge/1 36.57,43.02
step
_Next to you:_
talk Advisor Belgrum##145707
turnin Watch Yer Back##53837
accept Aegrim's Study##53839
step
click Door to Aegrim's Study |goto Ironforge/1 18.53,52.59
|tip Downstairs inside the cave.
Enter Aegrim's Study |goto Ironforge/0 23.78,49.83 < 10 |noway |c |q 53839
step
click Armor Stand
|tip Inside the building.
turnin Aegrim's Study##53839 |goto Ironforge/0 19.53,52.05
accept Shards of the Past##53841 |goto Ironforge/0 19.53,52.05
step
click Pile of Disenchanted Metal+
|tip They look like piles of sheets of grey metal on the ground around this area inside the building.
|tip You will be attacked.
collect 6 Fragments of Shattered Armor##164946 |q 53841/1 |goto Ironforge/0 20.67,51.42
step
click Door to Old Ironforge |goto Ironforge/0 24.82,49.31
|tip Inside the building.
Leave Aegrim's Study |goto Ironforge/1 21.16,51.28 < 10 |noway |c |q 53841
step
Follow the path up |goto Ironforge/1 37.74,44.24 < 10 |walk
Continue up the path |goto Ironforge/1 63.44,48.30 < 10 |walk
Continue up the path |goto Ironforge/1 78.75,88.32 < 7 |c |q 53841
|tip Follow the winding path up.
step
Continue up the path |goto Ironforge/0 46.02,52.63 < 7 |walk
Leave the building |goto Ironforge/0 44.58,49.48 < 7 |walk
Enter the building |goto Ironforge/0 66.91,23.11 < 20 |walk
talk Brann Bronzebeard##145462
|tip Inside the building.
turnin Shards of the Past##53841 |goto Ironforge/0 77.43,9.53
accept Interest Yah In A Pint?##53840 |goto Ironforge/0 77.43,9.53
step
Enter the building |goto Loch Modan/0 35.24,47.75 < 15 |walk
talk Grumnus Steelshaper##5164
|tip Inside the building.
turnin Interest Yah In A Pint?##53840 |goto Loch Modan/0 35.00,48.78
step
talk Brann Bronzebeard##145462
|tip Inside the building.
accept Recruiting the Furnace Master##53844 |goto Loch Modan/0 35.00,48.66
step
Travel to Ulduar |q 53844/1 |goto The Storm Peaks/0 41.57,17.67
|tip Walk into the swirling portal.
stickystart "Kill_Titan_Flames"
step
_Inside Ulduar:_
Watch the dialogue
|tip Follow Brann Bronzebeard as he walks.
|tip Walk down the hallway and take the first path to the left.
kill Magmarion of the Furnace##145909 |q 53844/3
step
label "Kill_Titan_Flames"
_Inside Ulduar:_
kill 6 Titan Flame##145905 |q 53844/2
|tip In the same room you kill Magmarion of the Furnace.
step
Watch the dialogue
|tip Follow Brann Bronzebeard as he walks.
click Brann's Flying Machine
|tip It looks like a small airplane near the door where you entered Ulduar.
Select _"I am ready to go back to Loch Modan."_ |gossip 50095
Return to Loch Modan |goto Loch Modan/0 33.78,50.83 < 20 |noway |c |q 53844
step
Enter the building |goto Loch Modan/0 35.24,47.75 < 15 |walk
talk Brann Bronzebeard##145462
|tip Inside the building.
turnin Recruiting the Furnace Master##53844 |goto Loch Modan/0 35.00,48.67
accept Earthen Blessing##53842 |goto Loch Modan/0 35.00,48.67
step
Leave the building |goto Loch Modan/0 35.22,47.74 < 10 |walk
Enter the building |goto Ironforge/0 44.54,49.53 < 10 |walk
Follow the path down |goto Ironforge/0 44.21,51.97 < 7 |walk
Continue down the path |goto Ironforge/1 79.81,87.01 < 7 |c |q 53842
step
Continue down the path |goto Ironforge/1 80.33,52.98 < 10 |walk
Run up the stairs |goto Ironforge/1 58.14,49.72 < 10 |walk
Run up the stairs |goto Ironforge/1 45.51,68.79 < 10 |walk
click Remnant of the Earthen Ritual
|tip Downstairs inside the cave.
collect Remnant of the Earthen Ritual##164960 |q 53842/1 |goto Ironforge/1 36.01,54.06
step
Run down the stairs |goto Ironforge/1 51.54,68.20 < 10 |walk
Follow the path up |goto Ironforge/1 63.77,48.33 < 10 |walk
Continue up the path |goto Ironforge/1 81.44,55.68 < 10 |walk
Continue up the path |goto Ironforge/0 46.18,58.82 < 7 |c |q 53842
step
Continue up the path |goto Ironforge/0 46.10,52.41 < 10 |walk
Leave the building |goto Ironforge/0 44.54,49.53 < 10 |walk
talk Bouldercrag the Rockshaper##145866
turnin Earthen Blessing##53842 |goto Ironforge/0 49.15,45.83
step
talk Grumnus Steelshaper##5164
accept Forging the Armor##53845 |goto Ironforge/0 48.76,45.78
step
Watch the dialogue
|tip Use the {o}Empowered Stoneform{} button ability.
Help Bouldercrag's Ritual |q 53845/1 |goto Ironforge/0 48.97,45.15
step
click Pile of Ancient Metal
Carry the Ancient Metal |havebuff Carry Ancient Metal##284908 |goto Ironforge/0 49.57,44.37 |q 53845
step
Watch the dialogue
Present Ignis the Armor Shards |q 53845/2 |goto Ironforge/0 51.41,44.01
step
click Molten Metal
|tip In the pool of yellow molten metal.
Carry the Molten Metal |havebuff Carry Molten Metal##284955 |goto Ironforge/0 51.96,43.78 |q 53845
step
Watch the dialogue
Bring the Molten Metal to the Great Anvil |q 53845/3 |goto Ironforge/0 50.14,43.99
step
Forge the Bulwark of the Mountain Kings |q 53845/4 |goto Ironforge/0 50.14,43.99
|tip Use the {o}Forge!{} ability.
step
click Bulwark of the Mountain King
collect Bulwark of the Mountain King##165704 |q 53845/5 |goto Ironforge/0 49.70,43.76
step
talk Grumnus Steelshaper##5164
turnin Forging the Armor##53845 |goto Ironforge/0 46.11,50.18
step
talk Brann Bronzebeard##145462
accept Legacy of the Bronzebeard##53846 |goto Ironforge/0 45.85,49.98
step
Enter the building |goto Ironforge/0 44.46,49.62 < 10 |walk
talk Muradin Bronzebeard##42928
|tip Inside the building.
turnin Legacy of the Bronzebeard##53846 |goto Ironforge/0 39.17,56.10
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Gnome Heritage Armor",{
description="This guide will walk you through unlocking the Gnome Heritage Armor.",
patch='80200',
},[[
step
Reach Level 60 On Any Character |achieve 14783
|tip In order to start core race heritage armor questlines, you must have at least one level 60 character on your account.
|tip Use the leveling guides.
step
Reach Level 50 as a Gnome Character |complete Gnome and level >= 50
|tip You must complete this on a 50+ Gnome character.
|tip Use the leveling guides.
step
talk Ace Pilot Stormcog##147939
accept Shifting Gears##54402 |goto Stormwind City/0 54.67,18.53
step
talk Captain Tread Sparknozzle##147943
turnin Shifting Gears##54402 |goto New Tinkertown/0 41.77,31.62
accept Gnomeregan's Finest##54576 |goto New Tinkertown/0 41.77,31.62
step
talk Fizzi Tinkerbow##147952
Select _"Report, Tinker!"_ |gossip 50895
Speak with Fizzi Tinkerbow |q 54576/2 |goto New Tinkertown/0 37.95,33.93
step
talk Emaedi Autoblast##147491
|tip Upstairs inside the building.
Select _"<Introduce yourself.>"_ |gossip 49966
Speak with Emaedi Autoblast |q 54576/1 |goto New Tinkertown/0 38.19,38.91
step
talk Cog Captain Winklespring##147950
Select _"<Introduce yourself.>"_ |gossip 50896
Speak with Cog Captain Winklespring |q 54576/3 |goto New Tinkertown/0 40.27,38.07
step
talk Captain Tread Sparknozzle##147943
turnin Gnomeregan's Finest##54576 |goto New Tinkertown/0 41.77,31.62
accept Shadowed Halls and Dusty Cogs##54577 |goto New Tinkertown/0 41.77,31.62
step
Enter the tunnel |goto New Tinkertown/0 32.48,36.97 < 20 |walk
Follow the path |goto New Tinkertown/0 53.96,81.62 < 15 |walk
Run down the stairs |goto New Tinkertown/0 54.13,45.77 < 10 |walk
Follow the path |goto New Tinkertown/0 54.81,15.19 < 10 |walk
click Workshop Door
Enter Gnomeregan Through the Workshop |goto Gnomeregan Heritage/0 84.92,59.41 |c |noway |q 54577
step
Follow the path |goto Gnomeregan Heritage/0 74.88,64.99 < 15 |walk
Continue following the path |goto Gnomeregan Heritage/0 73.72,73.40 < 15 |walk
Continue following the path |goto Gnomeregan Heritage/0 63.69,72.11 < 15 |only if walking
click Workshop Door
Enter the Workshop |goto Gnomeregan Heritage/0 53.79,65.67 < 15 |c |q 54577
|tip Avoid broken robots and steam vents along the way.
step
Follow the path |goto Gnomeregan Heritage/0 50.38,88.86 < 10 |walk
Continue following the path |goto Gnomeregan Heritage/0 36.08,86.04 < 10 |walk
click Prototype Arcane Engine
Collect the Prototype Arcane Engine |q 54577/2 |goto Gnomeregan Heritage/0 35.95,73.04
step
click Broken Teleporter |goto Gnomeregan Heritage/0 37.77,72.25
Leave Gnomeregan |goto New Tinkertown/0 38.46,32.97 < 1000 |c |q 54577
step
talk Captain Tread Sparknozzle##147943
turnin Shadowed Halls and Dusty Cogs##54577 |goto New Tinkertown/0 41.77,31.62
accept A Tundra Conundrum##54580 |goto New Tinkertown/0 41.77,31.62
step
talk Cog Captain Winklespring##147950
turnin A Tundra Conundrum##54580 |goto Borean Tundra/0 55.36,18.81
step
talk Fizzi Tinkerbow##147952
accept Now With More Mechanical Fowl##54581 |goto Borean Tundra/0 55.30,18.97
step
kill Ironbound Brute##148087, Ironbound Scrapthrower##148173
|tip Use the {o}Prototype Bomber Gun{} button ability to instantly kill them.
Slay #10# Ironbound Brute |q 54581/1 |goto Borean Tundra/0 63.07,22.46
step
_Click the Complete Quest Box:_
turnin Now With More Mechanical Fowl##54581
accept Smarter Than Your Average Trogg##54582
step
kill Krugg the Smart##148028 |q 54582/1 |goto Borean Tundra/0 64.63,23.10
step
collect Broken Communication Device##166584 |q 54582/2 |goto Borean Tundra/0 64.62,23.08
|tip Loot it from Krugg's corpse.
step
talk Fizzi Tinkerbow##147952
turnin Smarter Than Your Average Trogg##54582 |goto Borean Tundra/0 55.30,18.97
accept The Gnome Behind the Trogg##54579 |goto Borean Tundra/0 55.30,18.97
step
click RCV Control Switch
Activate the RCV Control Switch |q 54579/1 |goto Borean Tundra/0 55.27,18.96
step
talk Fizzi Tinkerbow##147952
turnin The Gnome Behind the Trogg##54579 |goto Borean Tundra/0 55.30,18.97
accept A Signal in Storm Peaks##54639 |goto Borean Tundra/0 55.30,18.97
step
clicknpc First Squadron Prototype##149278
Jump in the First Squadron Prototype |q 54639/1 |goto Borean Tundra/0 55.19,18.83
step
Watch the dialogue
Fly to Storm Peaks |outvehicle |q 54639
step
talk Cog Captain Winklespring##147950
turnin A Signal in Storm Peaks##54639 |goto The Storm Peaks/0 37.60,60.23
accept Gnomercy!##54640 |goto The Storm Peaks/0 37.60,60.23
step
clicknpc Shrinkified Assault Tank##149328
De-Shrinkify the Assault Tank |q 54640/1 |goto The Storm Peaks/0 37.42,60.53
step
clicknpc Gnomeregan Assault Tank##148931
Commandeer the Assault Tank |q 54640/2 |goto The Storm Peaks/0 37.42,60.53
step
kill Ironbound Invader##149329+
Slay #30# Ironbound Invaders |q 54640/3 |goto The Storm Peaks/0 38.00,57.66
step
Arrive at the Terrace of the Makers |goto The Storm Peaks/0 56.27,51.40 < 100 |c |noway |q 54640
step
talk Cog Captain Winklespring##147950
turnin Gnomercy!##54640 |goto The Storm Peaks/0 56.13,51.42
accept Operation: Troggageddon##54850 |goto The Storm Peaks/0 56.13,51.42
step
clicknpc First Squadron Prototype##149520
Jump in the First Squadron Prototype |q 54850/1 |goto The Storm Peaks/0 56.18,51.52
step
kill Ironbound Invader##149449, Warbot 15x##149478, Reprogrammed Librarian##149483
Defeat Sparkspanner's Army |q 54850/2 |goto The Storm Peaks/0 45.23,38.58
step
Click the Complete Quest Box
turnin Operation: Troggageddon##54850
step
talk Cog Captain Winklespring##149503
|tip Next to you in the plane.
accept For Gnomeregan!##54641
step
Watch the dialogue
Enter the Halls of Stone |q 54641/1
step
Run down the stairs |goto HoS Heritage/1 49.98,27.71 < 20 |walk
kill Smasher X900##149394 |q 54641/2 |goto HoS Heritage/1 50.04,12.12
step
talk Cog Captain Winklespring##149503
turnin For Gnomeregan!##54641 |goto HoS Heritage/1 50.06,12.65
accept G.E.A.R. Up##54642 |goto HoS Heritage/1 50.06,12.65
step
click Teleporter |goto HoS Heritage/1 48.34,10.51
Leave the Halls of Stone |goto The Storm Peaks/0 39.66,26.93 < 1000 |c |noway |q 54642
step
talk Captain Tread Sparknozzle##147943
turnin G.E.A.R. Up##54642 |goto New Tinkertown/0 41.77,31.62
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Human Heritage Armor",{
description="This guide will walk you through unlocking the Human Heritage Armor.",
patch='100007',
},[[
step
Reach Level 60 On Any Character |achieve 14783
|tip In order to start core race heritage armor questlines, you must have at least one level 60 character on your account.
|tip Use the leveling guides.
step
Reach Level 50 as a Human Character |complete Human and level >= 50
|tip You must complete this on a 50+ Human character.
|tip Use the leveling guides.
step
accept An Urgent Matter##72644 |goto Stormwind City/0 43.84,73.32
|tip You will accept this quest automatically.
|tip If you reached level 50 recently and haven't logged out since, you may need to do so or the quest may not appear.
step
talk Master Mathias Shaw##198884
turnin An Urgent Matter##72644 |goto Stormwind City/0 87.45,30.80
accept An Unlikely Informant##72405 |goto Stormwind City/0 87.45,30.80
step
Enter the building |goto Elwynn Forest/0 43.01,65.65 < 7 |walk
talk Master Mathias Shaw##198896
|tip Downstairs inside the building.
Select _"<Tell Shaw to signal his informant.>"_ |gossip 107712
Watch the Dialogue
Meet Shaw in the Lion's Pride Inn Basement |q 72405/1 |goto Elwynn Forest/0 44.33,66.22
step
talk Master Mathias Shaw##198896
|tip Downstairs inside the building.
turnin An Unlikely Informant##72405 |goto Elwynn Forest/0 44.33,66.22
accept A Window to the Past##72408 |goto Elwynn Forest/0 44.33,66.22
step
talk Master Mathias Shaw##198896
|tip Downstairs inside the building.
Select _"<Tell Shaw you are ready to hear about the history of the Drakefire Amulet.>"_ |gossip 107715
Select _"Windsor. Reginald Windsor. What else did he know?"_ |gossip 107724
Select _"Yes. He was. Please tell me if he knew anything else about that dragon and her stuff."_ |gossip 107723
Select _"Windsor's old belongings will do. Where did you put them?"_ |gossip 107722
Select _"Enough is enough, John. Just tell me where Windsor's stuff is. <Skip this conversation.>"_ |gossip 108338
Speak with Shaw |q 72408/1 |goto Elwynn Forest/0 44.33,66.22
step
talk Vanessa VanCleef##198883
|tip Downstairs inside the building.
turnin A Window to the Past##72408 |goto Elwynn Forest/0 44.34,66.05
accept Rotten Old Memories##72409 |goto Elwynn Forest/0 44.34,66.05
step
talk Ragged John##9563
Select _"The Drakefire Amulet has been stolen. Did Windsor have any other information on it or Onyxia?"_ |gossip 107725
Speak to Ragged John |q 72409/1 |goto Burning Steppes/0 72.85,64.78
step
Enter the cave |goto Burning Steppes/0 62.07,64.44 < 10 |walk
click Hoarded Debris##384644
collect 1 Chewed Piece of Journal##202106 |q 72409/2 |goto Burning Steppes/0 61.24,65.27
step
click Hoarded Debris##384644
collect 2 Chewed Piece of Journal##202106 |q 72409/2 |goto Burning Steppes/0 60.25,66.23
step
click Hoarded Debris##384644
collect 3 Chewed Piece of Journal##202106 |q 72409/2 |goto Burning Steppes/0 61.22,67.23
step
click Hoarded Debris##384644
collect 4 Chewed Piece of Journal##202106 |q 72409/2 |goto Burning Steppes/0 61.74,66.73
step
talk Ragged John##9563
turnin Rotten Old Memories##72409 |goto Burning Steppes/0 72.85,64.78
accept Looking for Something Specific##72424 |goto Burning Steppes/0 72.85,64.78
step
Enter the building |goto Elwynn Forest/0 43.01,65.65 < 7 |walk
talk Master Mathias Shaw##198896
|tip Downstairs inside the building.
turnin Looking for Something Specific##72424 |goto Elwynn Forest/0 44.33,66.22
accept The New Clessington Estate##72426 |goto Elwynn Forest/0 44.33,66.22
step
Enter the building |goto Duskwood/0 18.03,55.23 < 7 |walk
talk Cecilia Clessington##198912
|tip Upstairs inside the building.
Select _"What do you know about the Drakefire Amulet?"_ |gossip 107754
Investigate the Clessington Manor |q 72426/1 |goto Duskwood/0 18.07,54.01
step
Escort Cecilia from the Building |q 72426/2 |goto Duskwood/0 18.35,54.99
|tip Kill the attackers that appear.
step
talk Cecilia Clessington##198912
Select _"<Tell Cecilia that the Drakefire Amulet has been stolen.>"_ |gossip 108160
Watch the Dialogue
Explain the Circumstances to Cecilia |q 72426/3 |goto Duskwood/0 18.34,55.08
step
talk Cecilia Clessington##198912
turnin The New Clessington Estate##72426 |goto Duskwood/0 18.34,55.08
step
talk Vanessa VanCleef##198883
accept Misdeeds in Moonbrook##72430 |goto Duskwood/0 18.31,54.97
step
talk Vanessa VanCleef##198923
turnin Misdeeds in Moonbrook##72430 |goto Westfall/0 46.76,66.90
accept A Hungry Heritage##72431 |goto Westfall/0 46.72,66.98
step
talk Cecilia Clessington##198922
accept Supply Only the Finest Goons##72432 |goto Westfall/0 46.73,66.75
stickystart "Kill_Clessington_Attendants"
step
Enter the Defias Hideout |q 72431/1 |goto Westfall/0 42.56,71.86
step
Run up the stairs |goto Westfall/0 43.38,71.92 < 7 |walk
Jump down here |goto Westfall/0 43.41,72.88 < 7 |walk
Jump down here |goto Westfall/0 64.72,25.10 < 7 |walk
Follow the path |goto Westfall/0 55.78,39.40 < 10 |walk
Find Count Clessington |q 72431/2 |goto Westfall/0 60.41,60.59
'|clicknpc Count Clessington##198926
step
_Next to You:_
talk Vanessa VanCleef##199598
turnin A Hungry Heritage##72431
accept Betrayal of the Brotherhood##72453
step
label "Kill_Clessington_Attendants"
Follow the path |goto Westfall/0 47.40,47.24 < 7 |walk
Continue following the path |goto Westfall/0 57.32,37.63 < 7 |walk
Run up the ramp |goto Westfall/0 58.62,13.30 < 7 |walk
Continue up the ramp |goto Westfall/0 43.62,72.89 < 7 |walk
Leave the building |goto Westfall/0 42.57,71.89 < 7 |walk
kill 16 Clessington Attendant##198925 |q 72432/1 |goto Westfall/0 43.18,70.55
|tip Use the {o}VanCleef's Elixir of Speed{} button ability.
step
Escape the Defias Hideout |q 72453/1 |goto Westfall/0 46.68,66.82
step
talk Vanessa VanCleef##198923
turnin Betrayal of the Brotherhood##72453 |goto Westfall/0 46.66,66.78
step
talk Cecilia Clessington##198922
turnin Supply Only the Finest Goons##72432 |goto Westfall/0 46.74,66.74
step
talk Master Mathias Shaw##198924
accept To Northshire##72445 |goto Westfall/0 46.70,66.71
step
talk Master Mathias Shaw##198983
turnin To Northshire##72445 |goto Northshire/0 27.93,66.68
accept Knock It Off!##72449 |goto Northshire/0 27.93,66.68
step
talk Marshal McBride##198990
accept What's Their Problem?##72446 |goto Northshire/0 27.67,66.68
stickystart "Defend_Northshire"
step
kill Enforcer Grant##202508
collect Enforcer Grant's Signet##202238 |q 72449/1 |goto Northshire/0 35.70,60.94
step
kill Enforcer Jennive##199003
collect Enforcer Jennive's Signet##204171 |q 72449/2 |goto Northshire/0 49.47,63.13
step
kill Enforcer Tera##202509
collect Enforcer Tera's Signet##204172 |q 72449/3 |goto Northshire/0 35.33,38.85
step
kill Enforcer Horb##202511
collect Enforcer Horb's Signet##204173 |q 72449/4 |goto Northshire/0 31.34,17.75
step
label "Defend_Northshire"
kill Defias Mage##200122, Defias Ringleader##200124, Enforcer Horb##202511, Enforcer Jennive##199003, Defias Rebel##199995, Clessington Attendant##199997, Confused Commoner##199999, Enforcer Tera##202509, Enforcer Grant##202508, Confused Recruit##203455, Confused Acolyte##203449, Defias Bandit##199004, Conused Acolyte##203447, Confused Acolyte##203448, Confused Recruit##203450, Confused Recruit##203452
Defend Northshire |q 72446/1 |goto Northshire/0 31.93,33.46
step
talk Marshal McBride##198990
turnin What's Their Problem?##72446 |goto Northshire/0 27.69,66.64
step
talk Master Mathias Shaw##198983
turnin Knock It Off!##72449 |goto Northshire/0 27.89,66.75
step
talk Cecilia Clessington##198984
accept The Clessington Will##72450 |goto Northshire/0 28.05,67.22
step
click Shadow Barrier
Dispel the Barrier |q 72450/1 |goto Northshire/0 35.49,51.73
step
Watch the Dialogue
Kill enemies that attack
|tip Use the {o}Will to Survive{} button ability to resist.
kill Count Clessington##199006 |q 72450/2 |goto Northshire/0 37.66,50.29
step
talk Cecilia Clessington##198984
turnin The Clessington Will##72450 |goto Northshire/0 37.56,50.11
step
talk Master Mathias Shaw##198983
accept Will to Survive##72451 |goto Northshire/0 36.47,51.12
step
click Drakefire Amulet##384651
collect Drakefire Amulet##204214 |q 72451/1 |goto Northshire/0 37.55,50.51
step
talk Master Mathias Shaw##198983
Select _"<Give Shaw the Drakefire Amulet.>"_ |gossip 108735
Watch the dialogue
Give the Amulet to Shaw |q 72451/2 |goto Northshire/0 36.47,51.08
step
Resist |q 72451/3 |goto Northshire/0 36.48,51.08
|tip Use the {o}Will to Survive{} button ability.
step
kill Shade of Onyxia##199008 |q 72451/4 |goto Northshire/0 36.66,50.79
step
talk Vanessa VanCleef##198988
turnin Will to Survive##72451 |goto Northshire/0 36.58,51.37
step
talk Master Mathias Shaw##198983
accept Go with Honor, Friend##72452 |goto Northshire/0 36.74,51.16
step
talk Master Mathias Shaw##198884
Select _"I am ready."_ |gossip 107986
Meet Shaw Outside of Stormwind |q 72452/1 |goto Stormwind City/0 71.05,85.77
step
Approach General Hammond Clay |q 72452/2 |goto Stormwind City/0 69.52,83.38
step
Receive the Honor |q 72452/3 |goto Stormwind City/0 69.39,83.14
|tip Use the {o}Honor of the Lionguard{} button ability.
step
talk General Hammond Clay##65153
turnin Go with Honor, Friend##72452 |goto Stormwind City/0 69.20,82.75
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Night Elf Heritage Armor",{
description="This guide will walk you through unlocking the Night Elf Heritage Armor.",
patch='100107',
},[[
step
Reach Level 60 On Any Character |achieve 14783
|tip In order to start core race heritage armor questlines, you must have at least one level 60 character on your account.
|tip Use the leveling guides.
step
Reach Level 50 as a Night Elf Character |complete NightElf and level >= 50
|tip You must complete this on a 50+ Night Elf character.
|tip Use the leveling guides.
step
click Sealed Kaldorei Scroll
|tip Inside the building.
accept The Clarion Call##75890 |goto Stormwind City/0 52.30,14.19
step
talk Arko'narin Starshade##207353
turnin The Clarion Call##75890 |goto Stormwind City/0 52.33,4.52
accept Ancient Curses##75891 |goto Stormwind City/0 52.33,4.52
step
Meet Maiev Shadowsong in Felwood |q 75891/1 |goto Felwood/0 37.50,60.28
|tip This may take a minute to complete.
step
talk Maiev Shadowsong##202702
turnin Ancient Curses##75891 |goto Felwood/0 37.50,60.28
accept A Grim Portent##76194 |goto Felwood/0 37.50,60.28
step
talk Arko'narin Starshade##202701
Select _"Tell me why we're here in Felwood, Arko'narin?"_ |gossip 110344
Watch the dialogue
Speak with Arko'narin |q 76194/1 |goto Felwood/0 37.46,60.34
step
talk Maiev Shadowsong##202702
turnin A Grim Portent##76194 |goto Felwood/0 37.51,60.28
step
talk Arko'narin Starshade##202701
accept Mercy or Misery##76196 |goto Felwood/0 37.46,60.34
step
talk Lysander Starshade##202700
accept Countering Corruption##76195 |goto Felwood/0 37.49,60.35
stickystart "Kill_Enemies_in_Jaedenar"
step
kill Feltouched Trickster##205918, Feltouched Conjurer##205919
use the Incanter's Tome##207004
|tip Use it on their corpses.
Neutralize #6# Satyr Corpses |q 76195/1 |goto Felwood/0 36.17,60.26
step
label "Kill_Enemies_in_Jaedenar"
kill Jaedenar Warrior##205907, Feltouched Trickster##205918, Jaedenar Adherent##205905, Jaedenar Adherent##205906, Feltouched Conjurer##205919
Kill #15# Enemies in Jaedenar |q 76196/1 |goto Felwood/0 36.17,60.26
step
talk Maiev Shadowsong##202702
|tip Inside the building.
turnin Countering Corruption##76195 |goto Felwood/0 36.15,57.89
turnin Mercy or Misery##76196 |goto Felwood/0 36.15,57.89
accept Stepping into the Shadows##76203 |goto Felwood/0 36.15,57.89
step
talk Maiev Shadowsong##202702
|tip Inside the cave.
Select _"Let's put a stop to this, Warden."_ |gossip 110366
Speak with Maiev Shadowsong |q 76203/1 |goto Felwood/0 36.15,57.89
step
click Felflame Brazier
|tip Inside the cave.
|tip Follow Maiev closely and stay in her bubble.
Extinguish the Felflame Braziers |q 76203/2 |goto Felwood/0 36.18,56.85 |count 1
'|clicknpc Maiev Shadowsong##202702
step
click Felflame Brazier
|tip Inside the cave.
|tip Follow Maiev closely and stay in her bubble.
Extinguish the Felflame Braziers |q 76203/2 |goto Felwood/0 36.82,56.17 |count 2
'|clicknpc Maiev Shadowsong##202702
step
click Felflame Brazier
|tip Inside the cave.
|tip Follow Maiev closely and stay in her bubble.
Extinguish the Felflame Braziers |q 76203/2 |goto Felwood/0 37.06,55.37 |count 3
'|clicknpc Maiev Shadowsong##202702
step
click Felflame Brazier
|tip Inside the cave.
|tip Follow Maiev closely and stay in her bubble.
Extinguish the Felflame Braziers |q 76203/2 |goto Felwood/0 37.16,54.66 |count 4
'|clicknpc Maiev Shadowsong##202702
step
click Felflame Brazier
|tip Inside the cave.
|tip Follow Maiev closely and stay in her bubble.
Extinguish the Felflame Braziers |q 76203/2 |goto Felwood/0 37.92,54.77 |count 5
'|clicknpc Maiev Shadowsong##202702
step
click Felflame Brazier
|tip Inside the cave.
|tip Follow Maiev closely and stay in her bubble.
Extinguish the Felflame Braziers |q 76203/2 |goto Felwood/0 38.45,54.40 |count 6
'|clicknpc Maiev Shadowsong##202702
step
Discover What Lurks in the Depths of Shadow Hold |q 76203/3 |goto Felwood/0 38.05,53.67
|tip Inside the cave.
|tip Wait for Maive to walk with you.
'|clicknpc Maiev Shadowsong##202702
step
talk Maiev Shadowsong##202702
|tip Inside the cave.
turnin Stepping into the Shadows##76203 |goto Felwood/0 38.05,53.67
accept A Glimpse of Terror##76197 |goto Felwood/0 38.05,53.67
step
kill Cultist Nethus##205940 |q 76197/1 |goto Felwood/0 37.83,52.77
|tip Inside the cave.
step
talk Maiev Shadowsong##202702
|tip Inside the cave.
turnin A Glimpse of Terror##76197 |goto Felwood/0 36.71,51.59
accept Balancing the Scales##76205 |goto Felwood/0 36.71,51.59
step
talk Lysander Starshade##202700
|tip Inside the cave.
accept Heart of the Issue##76206 |goto Felwood/0 36.68,51.65
stickystart "Slay_Enemies_in_Shadow_Hold"
step
click Portal to the Twisting Nether##207998
|tip Inside the cave.
Kill the enemies that attack
Close the Portal |q 76206/1 |goto Felwood/0 39.02,50.30 |count 1
step
Cross the bridge and continue down into the cave |goto Felwood/0 40.50,48.94 < 7 |walk
click Portal to the Twisting Nether##207998
|tip Inside the cave.
Kill the enemies that attack
Close the Portal |q 76206/1 |goto Felwood/0 41.17,48.41 |count 2
step
click Portal to the Twisting Nether##207998
|tip Inside the cave.
|tip Under the bridge you crossed.
Kill the enemies that attack
Close the Portal |q 76206/1 |goto Felwood/0 41.04,49.60 |count 3
step
click Portal to the Twisting Nether##207998
|tip Inside the cave.
Kill the enemies that attack
Close the Portal |q 76206/1 |goto Felwood/0 39.29,46.94 |count 4
step
label "Slay_Enemies_in_Shadow_Hold"
kill Hel'nurathian Felmaw##205961, Hel'nurathian Trickster##205935, Hel'nurathian Felguard##207677, Hel'nurathian Cultist##205939, Hel'nurathian Imp##205960, Hel'nurathian Conjuror##205934, Hel'nurathian Hellion##205936, Hel'nurathian Cultist##205938, Hel'nurathian Defender##205937
|tip Inside the cave.
Slay Enemies in Shadow Hold |q 76205/1 |goto Felwood/0 39.52,46.92
step
talk Maiev Shadowsong##202702
|tip Inside the cave.
turnin Balancing the Scales##76205 |goto Felwood/0 37.97,46.19
step
talk Arko'narin Starshade##202701
|tip Inside the cave.
turnin Heart of the Issue##76206 |goto Felwood/0 37.92,46.25
accept Wardens' Wrath##76207 |goto Felwood/0 37.92,46.25
step
talk Maiev Shadowsong##208120
|tip Inside the cave.
Select _"Let's end this, Warden."_ |gossip 110454
Signal Maiev |q 76207/1 |goto Felwood/0 38.57,46.60
step
Kill enemies that attack in waves
|tip Inside the cave.
Protect Lysander |q 76207/2 |goto Felwood/0 38.21,47.50
step
talk Lysander Starshade##202700
turnin Wardens' Wrath##76207 |goto Felwood/0 35.92,58.85
step
talk Maiev Shadowsong##208151
accept A Mark For A Protector##76212 |goto Felwood/0 35.93,58.95
step
Take Your Position |q 76212/1 |goto Felwood/0 35.82,58.76
step
Watch the dialogue
|tip Use the {o}Observe the Ceremony{} button ability.
Witness the Facial Marking Ceremony |q 76212/2 |goto Felwood/0 35.81,58.77
step
click Portal to Stormwind |goto Felwood/0 35.97,58.87
Return to Stormwind |goto Stormwind City/0 46.35,90.23 < 1000 |c |noway |q 76212
step
talk Lysander Starshade##209141
turnin A Mark For A Protector##76212 |goto Stormwind City/0 52.43,4.48
step
talk Maiev Shadowsong##209140
accept Honor of the Goddess##76213 |goto Stormwind City/0 52.65,3.87
step
Watch the dialogue
talk Maiev Shadowsong##209140
turnin Honor of the Goddess##76213 |goto Stormwind City/0 52.65,3.87
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Worgen Heritage Armor",{
description="This guide will walk you through unlocking the Worgen Heritage Armor.",
patch='80300',
},[[
step
Reach Level 60 On Any Character |achieve 14783
|tip In order to start core race heritage armor questlines, you must have at least one level 60 character on your account.
|tip Use the leveling guides.
step
Reach Level 50 as a Worgen Character |complete Worgen and level >= 50
|tip You must complete this on a 50+ Worgen character.
|tip Use the leveling guides.
step
talk Courier Claridge##150200
accept The Shadow of Gilneas##54976 |goto Stormwind City/0 54.67,18.53
step
talk Princess Tess Greymane##155313
turnin The Shadow of Gilneas##54976 |goto Stormwind City/0 82.50,28.07
step
talk Mia Greymane##151784
accept Into Duskwood##54977 |goto Stormwind City/0 82.35,27.76
step
talk Vassandra Stormclaw##151761
turnin Into Duskwood##54977 |goto Duskwood/0 18.10,57.23
accept Bane of the Nightbane##54980 |goto Duskwood/0 18.10,57.23
step
click Pungent Meat
kill Bloodeyes##150721
Subdue Bloodeyes |q 54980/2 |goto Duskwood/0 51.99,61.59
step
Bring Bloodeyes to Raven Hill |q 54980/3 |goto Duskwood/0 18.12,57.25
step
talk Vassandra Stormclaw##151761
turnin Bane of the Nightbane##54980 |goto Duskwood/0 18.08,57.23
accept Cry to the Moon##54981 |goto Duskwood/0 18.08,57.23
accept The Spirit of the Hunter##54982 |goto Duskwood/0 18.08,57.23
stickystart "Collect_Bloodstained_Fangs"
step
click Elune's Grace##321836
collect Elune's Grace##167032 |q 54981/1 |goto Duskwood/0 82.35,33.95
step
label "Collect_Bloodstained_Fangs"
kill Bloodeyes##150721+
collect 6 Bloodstained Fangs##167031 |q 54982/1 |goto Duskwood/0 78.57,34.61
step
talk Vassandra Stormclaw##151761
turnin Cry to the Moon##54981 |goto Duskwood/0 46.39,36.90
turnin The Spirit of the Hunter##54982 |goto Duskwood/0 46.39,36.90
accept Waking a Dreamer##54983 |goto Duskwood/0 46.39,36.90
step
talk Vassandra Stormclaw##151761
Select _"Begin the ritual."_ |gossip 51037
Speak with Vassandra Stormclaw |q 54983/1 |goto Duskwood/0 46.39,36.90
step
Kill enemies that attack in waves
Defend Vassandra During the Ritual |q 54983/2 |goto Duskwood/0 46.60,36.54
step
Watch the dialogue
talk Goldrinn##150106
turnin Waking a Dreamer##54983 |goto Duskwood/0 46.57,36.55
accept Let Sleeping Wolves Lie##54984 |goto Duskwood/0 46.57,36.55
step
Enter the Emerald Dream |scenariostart |goto Duskwood/0 46.57,35.47 |q 54984
step
talk Princess Tess Greymane##150851
Select _"<Gently shake her awake.>"_ |gossip 50358
Select _"<Give her a good wake-up slap.>"_ |gossip 50360
Watch the dialogue
Wake Tess |scenariogoal 1/44887 |goto Gilneas Scenario/0 65.89,21.00 |q 54984
step
Kill enemies around this area
click Plague Thrower+
|tip They look like large catapaults on the ground around this area.
Push back the Forsaken assault force |scenariostage 2 |goto Gilneas Scenario/0 59.99,27.67 |q 54984
step
kill Dark Ranger Thyala##150498 |scenariostage 3 |goto Gilneas Scenario/0 60.15,40.32 |q 54984
step
Run down the stairs |goto Gilneas Scenario/0 69.23,45.39 < 10 |walk
Run down the stairs |goto Gilneas Scenario/0 69.17,64.70 < 10 |walk
Run up the stairs |goto Gilneas Scenario/0 66.06,65.15 < 10 |walk
kill Nathanos Blightcaller##152329
Follow Nathanos's Trail |scenariogoal 4/44890 |goto Gilneas Scenario/0 67.16,79.63 |q 54984
|tip Kill enemies that attack along the way and attack Nathanos when he stops.
|tip Use the action button that appears on-screen to track Nathanos.
step
kill Nathanos Blightcaller##152329 |scenariogoal 5/44891 |goto Gilneas Scenario/0 58.98,63.82 |q 54984
step
Follow the path |goto Gilneas Scenario/0 62.54,81.51 < 15 |walk
Continue following the path |goto Gilneas Scenario/0 40.53,82.09 < 15 |walk
Follow Tess |scenariogoal 6/44892 |goto Gilneas Scenario/0 31.58,73.29 |q 54984
step
kill Essence of Rage##150495 |scenariogoal 7/44893 |goto Gilneas Scenario/0 34.15,65.78 |q 54984
step
click Dream Rift
Leave the Emerald Dream |goto Gilneas Scenario/0 33.63,67.81 > 200 |c |q 54984
step
talk Princess Tess Greymane##150115
turnin Let Sleeping Wolves Lie##54984 |goto Duskwood/0 46.33,37.07
accept The New Guard##54990 |goto Duskwood/0 46.33,37.07
step
talk Princess Tess Greymane##155313
Select _"<Take a knee.>"_ |gossip 49931
Speak with Tess at Stormwind Keep |q 54990/1 |goto Stormwind City/0 82.49,28.06
step
Watch the dialogue
talk Princess Tess Greymane##155313
turnin The New Guard##54990 |goto Stormwind City/0 82.49,28.06
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
talk Aysa Cloudsinger##126332
|tip Inside the building.
accept Invitation to the Spirit Festival##84442 |goto Stormwind City/0 52.05,13.40
step
talk Aysa Cloudsinger##229260
turnin Invitation to the Spirit Festival##84442 |goto Stormwind City/0 68.39,16.45
step
talk Li Li Stormstout##229257
accept The Wanderers##84451 |goto Stormwind City/0 68.17,16.22
step
click Hot Air Balloon##229965
Board the Hot Air Balloon |invehicle Hot Air Balloon##230134 |goto Stormwind City/0 68.65,17.08 |q 84451
step
Watch the dialogue
Ride the Hot Air Balloon |q 84451/1 |goto The Wandering Isle Heritage/0 49.47,24.60
step
talk Li Li Stormstout##229339
turnin The Wanderers##84451 |goto The Wandering Isle Heritage/0 50.68,19.90
step
talk Chen Stormstout##229347
accept To Dai-Lo Farmstead##84453 |goto The Wandering Isle Heritage/0 50.63,20.11
step
talk Aysa Cloudsinger##229349
accept To Morning Breeze##84456 |goto The Wandering Isle Heritage/0 50.39,20.11
step
talk Aysa Cloudsinger##229380
turnin To Morning Breeze##84456 |goto The Wandering Isle Heritage/0 30.14,41.56
accept Devil's in the Details##84458 |goto The Wandering Isle Heritage/0 30.14,41.56
step
_Next to you:_
talk Ji Firepaw##230864
accept Scamps Ain't It!##84459 |goto The Wandering Isle Heritage/0 30.14,41.56
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
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Dark Iron Dwarf Heritage Armor",{
description="This guide will walk you through unlocking the Dark Iron Dwarf Heritage Armor.",
patch='80001',
achieveid={13076},
},[[
step
Unlock the Dark Iron Dwarf Race |achieve 12515
|tip Use the {o}Dark Iron Dwarf Race Unlock{} guide. |loadguide "Leveling Guides\\Allied Races\\Dark Iron Dwarf Race Unlock"
step
Raise a New Dark Iron Dwarf Character to Level 50
|tip Reach Level 50 on a Dark Iron Dwarf.
|tip You must reach level 50 without using a Character Boost.
|tip Use the leveling guides.
Click Here to Continue |confirm |q 51483 |future
step
accept Heritage o' the Dark Iron##51483
|tip You will accept this quest automatically.
|tip This quest will only appear if you have reached level 50 on the character without using a Character Boost.
step
talk Moira Thaurissan##144152
turnin Heritage o' the Dark Iron##51483 |goto Shadowforge City/0 56.42,31.85
step
talk Anvil-Thane Thurgaden##144154
accept The Anvil-Thane's Designs##63494 |goto Shadowforge City/0 57.22,31.97
step
Run up the ramp |goto Shadowforge City/0 62.15,23.27 < 15 |only if walking
Run up the ramp |goto Shadowforge City/0 66.69,26.68 < 15 |only if walking
Follow the path |goto Shadowforge City/0 63.59,30.91 < 15 |only if walking
Enter the building |goto Shadowforge City/0 53.54,33.84 < 7 |only if walking
talk Strongarm Jarden##176828
turnin The Anvil-Thane's Designs##63494 |goto Shadowforge City/0 51.79,33.15
accept Brawl or Brew##63498 |goto Shadowforge City/0 51.79,33.15
step
talk  Strongarm Jarden##176828
Select _"Brawl."_ |gossip 53347
|tip She will attack you.
Choose Brawl or Brew |q 63498/1 |goto Shadowforge City/0 51.79,33.15
step
kill Strongarm Jarden##176828 |q 63498/2 |goto Shadowforge City/0 51.84,33.04
step
talk Strongarm Jarden##176828
turnin Brawl or Brew##63498 |goto Shadowforge City/0 51.83,33.07
step
accept It's Called Borrowing##63501 |goto Shadowforge City/0 51.83,33.07
|tip You will accept this quest automatically.
step
Jump down here |goto Shadowforge City/0 49.76,33.64 < 7 |walk
kill Boiling Flamebringer##176995
collect Boiling Flamecore##184916 |q 63501/2 |goto Shadowforge City/0 48.78,29.36
step
Run up the ramp |goto Shadowforge City/0 51.43,37.46 < 7 |walk
click Darkforged Ingot##367037
collect 1 Darkforged Ingot##184915 |q 63501/1 |goto Shadowforge City/0 54.21,26.93
step
click Darkforged Ingot##367037
collect 2 Darkforged Ingot##184915 |q 63501/1 |goto Shadowforge City/0 59.76,28.59
step
click Darkforged Ingot##367037
collect 3 Darkforged Ingot##184915 |q 63501/1 |goto Shadowforge City/0 66.43,30.56
step
click Darkforged Ingot##367037
collect 4 Darkforged Ingot##184915 |q 63501/1 |goto Shadowforge City/0 67.59,28.38
step
click Darkforged Ingot##367037
collect 5 Darkforged Ingot##184915 |q 63501/1 |goto Shadowforge City/0 63.79,20.30
step
talk Kasea Angerforge##144119
|tip She walks around this area.
Select _"I need Thurgaden's Flamepoint Engraver."_ |gossip 53359
Retreive the Flamepoint Engraver |q 63501/3 |goto Shadowforge City/0 47.33,47.65
step
talk Anvil-Thane Thurgaden##144154
turnin It's Called Borrowing##63501 |goto Shadowforge City/0 57.22,31.97
accept Weapons o' the Dark Iron##63502 |goto Shadowforge City/0 57.22,31.97
step
talk Anvil-Thane Thurgaden##144154
Select _"I am ready."_ |gossip 53354
Speak to Anvil-Thane Thurgaden |q 63502/1 |goto Shadowforge City/0 57.22,31.97
step
click Darkforged Ingot
Place the Darkforged Ingot |q 63502/2 |goto Shadowforge City/0 56.69,31.32
step
Watch the dialogue
Complete the Forging |q 63502/3 |goto Shadowforge City/0 56.69,31.32
step
talk Anvil-Thane Thurgaden##144154
turnin Weapons o' the Dark Iron##63502 |goto Shadowforge City/0 57.23,31.97
accept Delivery for Kasea##65563 |goto Shadowforge City/0 57.23,31.97
step
talk Kasea Angerforge##144119
|tip She walks around this area.
turnin Delivery for Kasea##65563 |goto Shadowforge City/0 47.33,47.65
accept Good Fiery Boy##65564 |goto Shadowforge City/0 47.33,47.65
step
click Blackrock Ball##185352
|tip Throw it a short distance on the ground.
Play Fetch |q 65564/2 |goto Shadowforge City/0 47.27,47.86 |count 1
step
click Blackrock Ball##185352
|tip Throw it a short distance on the ground.
Play Fetch Again |q 65564/2 |goto Shadowforge City/0 47.27,47.86 |count 2
step
clicknpc Grimhowl##185305
Pet Grimhowl |q 65564/1 |goto Shadowforge City/0 47.13,48.12
step
click Crate of Provisions##375827
collect 1 Charred Steak##190606 |goto Shadowforge City/0 46.12,50.09 |q 65564
step
click Crate of Provisions##375827
collect 2 Charred Steak##190606 |goto Shadowforge City/0 47.25,42.39 |q 65564
step
click Crate of Provisions##375827
collect 3 Charred Steak##190606 |goto Shadowforge City/0 47.70,42.30 |q 65564
step
click Crate of Provisions##375827
collect 4 Charred Steak##190606 |goto Shadowforge City/0 50.46,43.21 |q 65564
step
use the Charred Steak##190606
|tip Use it on {o}Grimhowl{}.
Feed Grimhowl #4# Times |q 65564/3 |goto Shadowforge City/0 47.15,48.09
'|clicknpc Grimhowl##185305
step
Apply the Blackrock Barding |q 65564/4 |goto Shadowforge City/0 47.14,48.09
|tip Use the {o}Apply Blackrock Barding{} button ability.
|tip Use it on {o}Grimhowl{}.
'|clicknpc Grimhowl##185305
step
talk Kasea Angerforge##144119
|tip She walks around this area.
turnin Good Fiery Boy##65564 |goto Shadowforge City/0 47.33,47.65
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Kul Tiran Heritage Armor",{
description="This guide will walk you through unlocking the Kul Tiran Heritage Armor.",
patch='80105',
achieveid={13504},
},[[
step
Unlock the Kul Tiran Race |achieve 13163
|tip Use the {o}Kul Tiran Race Unlock{} guide. |loadguide "Leveling Guides\\Allied Races\\Kul Tiran Race Unlock"
step
Raise a New Kul Tiran Character to Level 50
|tip Reach level 50 on a Kul Tiran.
|tip You must reach level 50 without using a Character Boost.
|tip Use the leveling guides.
Click Here to Continue |confirm |q 53722 |future
step
accept Heritage of the Kul Tiran##53722
|tip You will accept this quest automatically.
|tip This quest will only appear if you have reached level 50 on the character without using a Character Boost.
step
talk Katherine Proudmoore##150941
turnin Heritage of the Kul Tiran##53722 |goto Boralus/0 43.95,62.60
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Lightforged Draenei Heritage Armor",{
description="This guide will walk you through unlocking the Lightforged Draenei Heritage Armor.",
patch='70305',
achieveid={12414},
},[[
step
Unlock the Lightforged Draenei Race |achieve 12243
|tip Use the {o}Lightforged Draenei Race Unlock{} guide. |loadguide "Leveling Guides\\Allied Races\\Lightforged Draenei Race Unlock"
step
Raise a New Lightforged Draenei Character to Level 50
|tip Reach level 50 on a Lightforged Draenei.
|tip You must reach level 50 without using a Character Boost.
|tip Use the leveling guides.
Click Here to Continue |confirm |q 49782 |future
step
accept Heritage of the Lightforged##49782
|tip You will accept this quest automatically.
|tip This quest will only appear if you have reached level 50 on the character without using a Character Boost.
step
click Lightforged Beacon |goto Stormwind City/0 48.09,11.10
Teleport to the Vindicaar |goto Vindicaar Scenario/1 |c |noway
step
talk Captain Fareeya##130993
turnin Heritage of the Lightforged##49782 |goto Vindicaar Scenario/1 42.93,24.08
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Mechagnome Heritage Armor",{
description="This guide will walk you through unlocking the Mechagnome Heritage Armor.",
patch='80300',
achieveid={14014},
},[[
step
Unlock the Mechagnome Race |achieve 14013
|tip Use the {o}Mechagnome Race Unlock{} guide. |loadguide "Leveling Guides\\Allied Races\\Mechagnome Race Unlock"
step
Raise a New Mechagnome Character to Level 50
|tip Reach level 50 on a Mechagnome.
|tip You must reach level 50 without using a Character Boost.
|tip Use the leveling guides.
Click Here to Continue |confirm |q 58436 |future
step
accept Heritage of the Mechagnome##58436
|tip You will accept this quest automatically.
|tip This quest will only appear if you have reached level 50 on the character without using a Character Boost.
step
Step on Mechagon City Teleporter |goto Stormwind City/0 48.56,8.83
step
talk Prince Erazmin##158145
turnin Heritage of the Mechagnome##58436 |goto Mechagon City/1 19.07,68.30
]])
QuestCore:RegisterGuide("Leveling Guides\\Heritage Armor\\Void Elf Heritage Armor",{
description="This guide will walk you through unlocking the Void Elf Heritage Armor.",
patch='70305',
achieveid={12291},
},[[
step
Unlock the Void Elf Race |achieve 12242
|tip Use the {o}Void Elf Race Unlock{} guide. |loadguide "Leveling Guides\\Allied Races\\Void Elf Race Unlock"
step
Raise a New Void Elf Character to Level 50
|tip Reach level 50 on a Void Elf
|tip You must reach level 50 without using a Character Boost.
|tip Use the leveling guides.
Click Here to Continue |confirm |q 49928 |future
step
accept Heritage of the Void##49928
|tip You will accept this quest automatically.
|tip This quest will only appear if you have reached level 50 without using a Character Boost.
step
talk Alleria Windrunner##131345
turnin Heritage of the Void##49928 |goto Telogrus Rift/0 28.54,22.27
]])
