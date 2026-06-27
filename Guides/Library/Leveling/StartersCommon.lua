-- Bundled QuestCore guide
if not QuestCore then return end

QuestCore:RegisterGuide("Leveling Guides\\Allied Races\\Void Elf Demon Hunter Unlock",{
description="This guide will assist you in completing the Rage of the Ren'dorei questline to unlock Void Elf Demon Hunters.",
patch='120000',
achieveid={61916},
},[[
step
ding 80
step
talk Messenger Aelor##257544
accept Lessons in the Void##94933 |goto Dornogal/0 44.56,50.03
|only if not completedq(91044)
step
click Portal to K'aresh
Take the Portal to K'aresh |q 94933/1 |goto Dornogal/0 44.56,50.03
|only if haveq(94933) or completedq(94933)
step
Reach Umbric in Shan'dorah |q 94933/2 |goto K'aresh/0 60.92,27.72
|only if haveq(94933) or completedq(94933)
step
talk Magister Umbric##248153
turnin Lessons in the Void##94933 |goto K'aresh/0 60.92,27.72|only if haveq(94933) or completedq(94933)
accept A Common Cause##90972 |goto K'aresh/0 60.92,27.72
step
talk Adarus Duskblaze##236907
Select _"Can you tell me where Umbric's apprentice went?"_ |gossip 134065
Ask Adarus About Leona's Whereabouts |q 90972/1 |goto K'aresh/0 60.12,29.70
step
talk Leona Darkstrider##240842
turnin A Common Cause##90972 |goto K'aresh/0 59.34,24.20
accept The Void Hunter##86786 |goto K'aresh/0 59.34,24.20
step
kill Void Tempest##241537+
|tip Wind elementals.
|tip On your minimap.
use Void Lure##239074
|tip On their corpses.
Feed Ramon'ta the Insatiable #3# Times |q 86786/1 |goto K'aresh/0 56.09,23.39
step
Lure Ramon'ta the Insatiable |q 86786/2 |goto K'aresh/0 57.28,18.38
|tip Use the {o}Void Lure{} button ability.
|tip You will be attacked.
step
Watch the dialogue
kill Ramon'ta the Insatiable##237750
Defeat Ramon'ta the Insatiable |q 86786/3 |goto K'aresh/0 57.27,18.31
step
talk Adarus Duskblaze##236907
Select _"<Report on Leona's success in harvesting Ramon'ta's void essence.>"_ |gossip 133876
Report Back to Adarus in Shan'dorah |q 86786/4 |goto K'aresh/0 60.12,29.70
step
Watch the dialogue
talk Adarus Duskblaze##236907
turnin The Void Hunter##86786 |goto K'aresh/0 60.12,29.69
accept Wasted Lands##89323 |goto K'aresh/0 60.12,29.69
step
Reach the K'areshi Fragment Location |q 89323/1 |goto K'aresh/0 78.95,53.45
step
talk Adarus Duskblaze##242179
turnin Wasted Lands##89323 |goto K'aresh/0 78.95,53.45
accept A Piece of Something Greater##89324 |goto K'aresh/0 78.95,53.45
step
kill Relictor Qunash'i##237789
|tip Loot him.
|tip Walks around.
|tip On your minimap.
Recover the Key of the Waning Moon |q 89324/2 |goto K'aresh/0 80.19,51.23
step
kill Relictor Lay'sha##237788
|tip Loot him.
|tip Walks around.
|tip On your minimap.
Recover the Key of the Eternal Night |q 89324/1 |goto K'aresh/0 79.19,47.02
step
kill Relictor Efrat##237790
|tip Loot him.
|tip Walks around.
|tip On your minimap.
Recover the Key of the Dark Sun |q 89324/3 |goto K'aresh/0 76.35,50.73
step
Return to the K'areshi Fragment |q 89324/4 |goto K'aresh/0 78.95,53.45
step
click Energy Pylon
Deactivate the Pylon |q 89324/5 |goto K'aresh/0 78.80,53.61 |count 1 hidden
step
click Energy Pylon
Deactivate the Pylon |q 89324/5 |goto K'aresh/0 79.14,53.63 |count 2 hidden
step
click Energy Pylon
Deactivate the Pylon |q 89324/5 |goto K'aresh/0 79.15,53.09 |count 3 hidden
step
click K'areshi Fragment
|tip Floating purple crystal.
Retrieve the Fragment |q 89324/6 |goto K'aresh/0 79.02,53.38
step
talk Adarus Duskblaze##242179
turnin A Piece of Something Greater##89324 |goto K'aresh/0 78.95,53.45
accept The Void Confluence##89325 |goto K'aresh/0 78.95,53.45
step
talk Leona Darkstrider##240842
|tip Downstairs inside the cave.
turnin The Void Confluence##89325 |goto Voidscar Cavern/0 61.98,53.15
accept Distilled Darkness##89326 |goto Voidscar Cavern/0 61.98,53.15
step
click K'areshi Fragment
|tip Upstairs inside the cave.
Kill the enemies that attack in waves
Align the Southern Fragment Location |q 89326/2 |goto Voidscar Cavern/0 47.50,73.99
step
click K'areshi Fragment
|tip Downstairs inside the cave.
Kill the enemies that attack in waves
Align the Northern Fragment Location |q 89326/1 |goto Voidscar Cavern/0 37.84,34.66
step
talk Leona Darkstrider##240842
|tip Downstairs inside the cave.
turnin Distilled Darkness##89326 |goto Voidscar Cavern/0 61.98,53.15
accept Chaos##89327 |goto Voidscar Cavern/0 61.98,53.15
step
click Empowered K'areshi Fragment
|tip Downstairs inside the cave.
Place the K'areshi Fragment |q 89327/1 |goto Voidscar Cavern/0 63.69,52.92
step
talk Adarus Duskblaze##246325
|tip Downstairs inside the cave.
Select _"Are you ready, Adarus?"_ |gossip 132974
Speak to Adarus |q 89327/2 |goto Voidscar Cavern/0 63.69,52.92
step
Watch the dialogue
|tip Downstairs inside the cave.
Witness the Ritual |q 89327/3 |goto Voidscar Cavern/0 63.69,52.92
step
clicknpc Adarus Duskblaze##241907
|tip Downstairs inside the cave.
Kick Adarus |q 89327/4 |goto Voidscar Cavern/0 63.70,53.02
step
talk Leona Darkstrider##240842
|tip Downstairs inside the cave.
turnin Chaos##89327 |goto Voidscar Cavern/0 61.95,53.08
accept Hunger of the Void##91044 |goto Voidscar Cavern/0 61.95,53.08
step
talk Magister Umbric##248153
Select _"<Listen to Leona's report.>"_ |gossip 134092
Watch the dialogue
Report Back to Umbric |q 91044/1 |goto K'aresh/0 60.92,27.73
step
talk Magister Umbric##248153
turnin Hunger of the Void##91044 |goto K'aresh/0 60.92,27.73
accept The Pursuit Continues##92630 |goto K'aresh/0 60.92,27.73
step
click Portal to K'aresh
Take the Portal to K'aresh |q 92630/1 |goto Dornogal/0 44.66,49.91
step
Find the Leona and Allari |q 92630/2 |goto K'aresh/0 65.03,40.64
step
talk Leona Darkstrider##254266
turnin The Pursuit Continues##92630 |goto K'aresh/0 65.03,40.64
step
talk Allari the Souleater##252617
accept Abhorrent Gauntlet##92631 |goto K'aresh/0 65.03,40.59
step
kill Observling##230443, Prowling Voidwing##230428, Unreal Observer##230426, Unreal Observer##231551, Void Terror##230427, Voidglass Swooper##230429
|tip Loot them.
Retrieve #24# Aberration Parts |q 92631/1 |goto K'aresh/0 64.75,43.15
step
talk Allari the Souleater##252617
turnin Abhorrent Gauntlet##92631 |goto K'aresh/0 65.03,40.60
accept Trial of Wrath##92632 |goto K'aresh/0 65.03,40.60
step
kill Vraxik##252626 |q 92632/1 |goto K'aresh/0 65.16,49.79
|tip Moves around.
step
talk Allari the Souleater##254748
turnin Trial of Wrath##92632 |goto K'aresh/0 60.91,27.76
]])
