-- QuestCore bundled guide (mists)
if not QuestCore then return end
if UnitFactionGroup("player")~="Horde" then return end
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Cooking + Fishing (1-525)",{
expansion="mists",
mopready=true,
condition_suggested=function() return (skill('Cooking') > 0) or (skill('Fishing') > 0) end,
description="This guide will walk you through leveling both your Cooking and Fishing skills from 1-525, together.",
},[[
step
Enter the building |goto Mulgore/0 46.32,58.69 < 7 |walk
talk Pyall Silentstride##3067
|tip Inside the building.
Train Apprentice Cooking |skillmax Cooking,75 |goto Mulgore/0 45.41,58.11
step
talk Harn Longcast##5940
buy Recipe: Brilliant Smallfish##6325 |goto Mulgore/0 47.51,55.06 |complete knowspell(7751)
buy Recipe: Longjaw Mud Snapper##6328 |goto Mulgore/0 47.51,55.06 |complete knowspell(7753)
|tip Save this, you will need it later.
buy Fishing Pole##6256 |goto Mulgore/0 47.51,55.06 |complete skill("Fishing") >= 75
|tip You need a fishing pole equipped to fish.
buy 10 Shiny Bauble##6529 |goto Mulgore/0 47.51,55.06 |complete skill("Fishing") >= 75
step
use the Recipe: Brilliant Smallfish##6325
Train Brilliant Smallfish |learn Brilliant Smallfish##7751
step
talk Uthan Stillwater##5938
Train Apprentice Fishing |skillmax Fishing,75 |goto Mulgore/0 44.51,60.66
step
|equipped Fishing Pole##6256 |goto Mulgore/0 44.49,61.24 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |goto Mulgore/0 44.49,61.24 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |goto Mulgore/0 44.49,61.24 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |goto Mulgore/0 44.49,61.24 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |goto Mulgore/0 44.49,61.24 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |goto Mulgore/0 44.49,61.24 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |goto Mulgore/0 44.49,61.24 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Mulgore/0 44.49,61.24 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Mulgore/0 44.49,61.24 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |goto Mulgore/0 44.49,61.24 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |goto Mulgore/0 44.49,61.24 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |goto Mulgore/0 44.49,61.24 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 75 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Shiny Bauble##6529
|tip Use it on your Fishing Pole.
|tip It will grant you +25 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
Reach Skill 75 in Fishing |skill Fishing,75 |goto Mulgore/0 44.49,61.24
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Shiny Bauble##6529
|tip Use it on your Fishing Pole.
|tip It will grant you +25 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
collect 60 Raw Brilliant Smallfish##6291 |goto Mulgore/0 44.49,61.24 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 65 |or
step
talk Uthan Stillwater##5938
Train Journeyman Fishing |skillmax Fishing,150 |goto Mulgore/0 44.51,60.66
step
|equipped Fishing Pole##6256 |goto Thunder Bluff/0 41.47,57.15 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 125 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
|tip You don't need bait in these waters.
Reach Skill 125 in Fishing |skill Fishing,125 |goto Thunder Bluff/0 41.47,57.15
step
talk Kah Mistrunner##3028
Train Expert Fishing |skillmax Fishing,225 |goto Thunder Bluff/0 56.14,46.45
step
talk Sewa Mistrunner##3029
buy 40 Bright Baubles##6532 |goto Thunder Bluff/0 55.79,47.06 |or
|tip Save these, you will need them for future steps.
'|complete skill("Fishing") >= 225 |or
step
|equipped Fishing Pole##6256 |goto Thunder Bluff/0 41.47,57.15 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |goto Thunder Bluff/0 41.47,57.15 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 165 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
|tip You don't need bait in these waters.
Reach Skill 165 in Fishing |skill Fishing,165 |goto Thunder Bluff/0 41.47,57.15
stickystart "Collect_Raw_Longjaw_Mud_Snapper_115"
stickystart "Collect_Raw_Bristle_Whisker_Catfish_125"
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
|tip You don't need bait in these waters.
collect 85 Raw Brilliant Smallfish##6291 |goto Thunder Bluff/0 41.47,57.15 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 65 |or
step
label "Collect_Raw_Longjaw_Mud_Snapper_115"
cast Fishing##33095 |notinsticky
|tip Fish in the water. |notinsticky
|tip You must have a Fishing Pole equipped to fish. |notinsticky
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |notinsticky
|tip You don't need bait in these waters. |notinsticky
collect 60 Raw Longjaw Mud Snapper##6289 |goto Thunder Bluff/0 41.47,57.15 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 115 |or
step
label "Collect_Raw_Bristle_Whisker_Catfish_125"
cast Fishing##33095 |notinsticky
|tip Fish in the water. |notinsticky
|tip You must have a Fishing Pole equipped to fish. |notinsticky
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |notinsticky
|tip You don't need bait in these waters. |notinsticky
collect 40 Raw Bristle Whisker Catfish##6308 |goto Thunder Bluff/0 41.47,57.15 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 125 |or
step
'|cast Fishing##33095
create 85 Brilliant Smallfish##7751,Cooking,65 |goto Thunder Bluff/0 51.35,53.05
|tip Stand next to the Boiling Cauldron.
|tip Stop making these at 65 Cooking skill.
|tip You may need to create more or less of these.
|tip Fish more Brilliant Smallfish if needed.
step
talk Naal Mistrunner##3027
buy Recipe: Bristle Whisker Catfish##6330 |goto Thunder Bluff/0 51.01,52.45 |or
|tip Save this, you will need it later.
'|complete knowspell(7755) |or
step
talk Aska Mistrunner##3026
Train Journeyman Cooking |skillmax Cooking,150 |goto Thunder Bluff/0 50.74,53.11
step
use the Recipe: Longjaw Mud Snapper##6328
|tip You purchased this in a previous step.
Train Longjaw Mud Snapper |learn Longjaw Mud Snapper##7753
step
'|cast Fishing##33095
create 100 Longjaw Mud Snapper##7753,Cooking,115 |goto Thunder Bluff/0 51.35,53.05
|tip Stand next to the Boiling Cauldron.
|tip Stop making these at 115 Cooking skill.
|tip You may need to create more or less of these.
|tip Fish more Longjaw Mud Snapper if needed.
step
use the Recipe: Bristle Whisker Catfish##6330
|tip You purchased this in a previous step.
Train Bristle Whisker Catfish |learn Bristle Whisker Catfish##7755
step
create 40 Bristle Whisker Catfish##7755,Cooking,40 total |goto Thunder Bluff/0 51.35,53.05 |or
|tip Stand next to the Boiling Cauldron.
'|complete skill("Cooking") >= 125 |or
step
'|cast Fishing##33095
create 1 Bristle Whisker Catfish##7755,Cooking,125 |goto Thunder Bluff/0 51.35,53.05
|tip Stand next to the Boiling Cauldron.
|tip You need to reach at least 125 cooking before proceeding.
|tip You may need to create more or less of these.
|tip Fish more Bristle Whisker Catfish if needed.
step
talk Aska Mistrunner##3026
Train Expert Cooking |skillmax Cooking,225 |goto Thunder Bluff/0 50.74,53.11
step
Enter the building |goto Stranglethorn Vale/0 42.80,68.97 < 7 |walk
talk Kelsey Yance##2664
|tip Inside the building.
buy Recipe: Mithril Head Trout##17062 |goto Stranglethorn Vale/0 28.23,74.34
|tip Save these, you will need them later.
step
|equipped Fishing Pole##6256 |goto Stranglethorn Vale/0 39.47,66.91 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 225 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 225 in Fishing |skill Fishing,225 |goto Stranglethorn Vale/0 39.47,66.91
stickystart "Collect_Mithril_Head_Trout_225"
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect 80 Raw Bristle Whisker Catfish##6308 |goto Stranglethorn Vale/0 39.47,66.91 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 175 |or
step
label "Collect_Mithril_Head_Trout_225"
cast Fishing##33095 |notinsticky
|tip Fish in the water. |notinsticky
|tip You must have a Fishing Pole equipped to fish. |notinsticky
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |notinsticky
use the Bright Baubles##6532 |notinsticky
|tip Use it on your Fishing Pole. |notinsticky
|tip It will grant you +75 Fishing skill for 10 minutes. |notinsticky
|tip Try to keep one of these active whenever you are fishing. |notinsticky
|tip If you have a better bait, you can use that instead. |notinsticky
collect 80 Raw Mithril Head Trout##8365 |goto Stranglethorn Vale/0 39.47,66.91 |or
|tip This total is approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Cooking") >= 225 |or
step
'|cast Fishing##33095
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 80 Bristle Whisker Catfish##7755,Cooking,175 |goto Stranglethorn Vale/0 42.62,72.76
|tip You may need to create more or less of these.
|tip Fish more Bristle Whisker Catfish if needed.
step
use the Recipe: Mithril Head Trout##17062
|tip You purchased this in a previous step.
Train Mithril Head Trout |learn Mithril Head Trout##20916
step
'|cast Fishing##33095
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 80 Mithril Head Trout##20916,Cooking,225 |goto Stranglethorn Vale/0 42.62,72.76
|tip You may need to create more or less of these.
|tip Fish more Raw Mithril Head Trout if needed.
step
talk Aska Mistrunner##3026
Train Artisan Cooking |skillmax Cooking,300 |goto Thunder Bluff/0 50.74,53.11
step
talk Kah Mistrunner##3028
Train Artisan Fishing |skillmax Fishing,300 |goto Thunder Bluff/0 56.14,46.45
step
Reach Level 35 |ding 35 |or
|tip You must be at least this level before you can accept the quest in the next step.
|tip Use the leveling guides to accomplish this.
|tip This quest can be skipped, but the fishing pole reward grants +25 Fishing skill.
|tip If you skip it, you will catch more junk and spend more time fishing.
Click Here To Skip Nat Pagle, Angler Extreme |confirm |next "Skip_Nat_Pagle_Quest"
step
Cross the water |goto Dustwallow Marsh/0 66.54,55.09 < 30 |only if walking
talk Nat Pagle##12919
|tip On a small island in the water.
accept Nat Pagle, Angler Extreme##6607 |goto Dustwallow Marsh/0 58.55,60.21
|tip This quest can be skipped, but the fishing pole reward grants +25 Fishing skill.
|tip If you skip it, you will catch more junk and spend more time fishing.
Click Here To Skip Nat Pagle, Angler Extreme |confirm |next "Skip_Nat_Pagle_Quest"
step
|equipped Fishing Pole##6256 |goto Feralas/0 62.38,52.50 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |goto Feralas/0 62.38,52.50 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |goto Feralas/0 62.38,52.50 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |goto Feralas/0 62.38,52.50 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |goto Feralas/0 62.38,52.50 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |goto Feralas/0 62.38,52.50 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |goto Feralas/0 62.38,52.50 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Feralas/0 62.38,52.50 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Feralas/0 62.38,52.50 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |goto Feralas/0 62.38,52.50 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |goto Feralas/0 62.38,52.50 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |goto Feralas/0 62.38,52.50 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete completedq(6607,1) |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect Feralas Ahi##16967 |q 6607/1 |goto Feralas/0 62.38,52.50
|tip You will eventually catch one.
step
|equipped Fishing Pole##6256 |goto Desolace/0 38.96,22.70 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |goto Desolace/0 38.96,22.70 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |goto Desolace/0 38.96,22.70 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |goto Desolace/0 38.96,22.70 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |goto Desolace/0 38.96,22.70 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |goto Desolace/0 38.96,22.70 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |goto Desolace/0 38.96,22.70 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Desolace/0 38.96,22.70 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Desolace/0 38.96,22.70 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |goto Desolace/0 38.96,22.70 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |goto Desolace/0 38.96,22.70 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |goto Desolace/0 38.96,22.70 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete completedq(6607,3) |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect Sar'theris Striker##16968 |q 6607/3 |goto Desolace/0 36.30,33.40
|tip You will eventually catch one.
step
|equipped Fishing Pole##6256 |goto Stranglethorn Vale/0 39.47,66.91 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete completedq(6607,4) |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect Savage Coast Blue Sailfin##16969 |q 6607/4 |goto Stranglethorn Vale/0 39.47,66.91
|tip You will eventually catch one.
step
|equipped Fishing Pole##6256 |goto Swamp of Sorrows/0 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |goto Swamp of Sorrows/0 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |goto Swamp of Sorrows/0 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |goto Swamp of Sorrows/0 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |goto Swamp of Sorrows/0 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |goto Swamp of Sorrows/0 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |goto Swamp of Sorrows/0 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Swamp of Sorrows/0 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Swamp of Sorrows/0 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |goto Swamp of Sorrows/0 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |goto Swamp of Sorrows/0 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |goto Swamp of Sorrows/0 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete completedq(6607,2) |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect Misty Reed Mahi Mahi##16970 |q 6607/2 |goto Swamp of Sorrows/0 90.45,73.47
|tip You will eventually catch one.
step
Cross the water |goto Dustwallow Marsh/0 66.54,55.09 < 30 |only if walking
talk Nat Pagle##12919
|tip On a small island in the water.
turnin Nat Pagle, Angler Extreme##6607 |goto Dustwallow Marsh/0 58.55,60.21
step
label "Skip_Nat_Pagle_Quest"
talk Sheendra Tallgrass##8145
|tip Inside the building.
buy 20 Bright Baubles##6532 |goto Feralas/0 74.49,42.73 |complete skill("Cooking") >= 300
buy Recipe: Baked Salmon##13949 |goto Feralas/0 74.49,42.73 |complete knowspell(18247)
|tip Save this, you will need it later.
step
|equipped Fishing Pole##6256 |goto Feralas/0 75.67,44.12 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |goto Feralas/0 75.67,44.12 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |goto Feralas/0 75.67,44.12 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |goto Feralas/0 75.67,44.12 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |goto Feralas/0 75.67,44.12 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |goto Feralas/0 75.67,44.12 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |goto Feralas/0 75.67,44.12 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Feralas/0 75.67,44.12 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Feralas/0 75.67,44.12 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |goto Feralas/0 75.67,44.12 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |goto Feralas/0 75.67,44.12 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |goto Feralas/0 75.67,44.12 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 255 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 255 in Fishing |skill Fishing,255 |goto Feralas/0 75.67,44.12
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect 45 Raw Mithril Head Trout##8365 |goto Feralas/0 75.67,44.12 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 245 |or
step
'|cast Fishing##33095
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 45 Mithril Head Trout##20916,Cooking,245 |goto Feralas/0 75.67,44.12
|tip You may need to create more or less of these.
|tip Fish more Raw Mithril Head Trout if needed.
step
|equipped Fishing Pole##6256 |goto Feralas/0 49.98,14.57 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |goto Feralas/0 49.98,14.57 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |goto Feralas/0 49.98,14.57 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |goto Feralas/0 49.98,14.57 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |goto Feralas/0 49.98,14.57 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |goto Feralas/0 49.98,14.57 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |goto Feralas/0 49.98,14.57 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Feralas/0 49.98,14.57 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Feralas/0 49.98,14.57 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |goto Feralas/0 49.98,14.57 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |goto Feralas/0 49.98,14.57 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |goto Feralas/0 49.98,14.57 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 275 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip This spot is safe, but watch out for elites getting there.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 275 in Fishing |skill Fishing,275 |goto Feralas/0 49.98,14.57
step
talk Aska Mistrunner##3026
Train Poached Sunscale Salmon |learn Poached Sunscale Salmon##18244 |goto Thunder Bluff/0 50.74,53.11
Train Nightfin Soup##13945 |learn Nightfin Soup##18238 |goto Thunder Bluff/0 50.74,53.11
Train Filet of Redgill |learn Filet of Redgill##18241 |goto Thunder Bluff/0 50.74,53.11
step
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 5 Filet of Redgill##18241,Cooking,250 |goto Thunder Bluff/0 50.74,53.11
step
'|cast Fishing##33095
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 1 Filet of Redgill##18241,Cooking,290 |n
|tip Cook all of your Redgill first.
create 1 Poached Sunscale Salmon##18244,Cooking,290 |n
create 1 Nightfin Soup##18238,Cooking,290 |n
Reach at Least 290 Cooking Skill |skill Cooking,290 |goto Thunder Bluff/0 50.74,53.11
|tip Create all of the fish you have even after 290 skill until you reach 295 skill or run out.
|tip You may need to fish more.
step
use the Recipe: Baked Salmon##13949
Train Baked Salmon |learn Baked Salmon##18247
step
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 5 Baked Salmon##18247,Cooking,300
step
talk Naka##18993
|tip Inside the building.
Train Master Cooking |skillmax Cooking,375 |goto Zangarmarsh/0 78.52,63.05
step
talk Juno Dufrain##18911
Train Master Fishing |skillmax Fishing,375 |goto Zangarmarsh/0 78.05,66.09
step
talk Juno Dufrain##18911
buy 20 Bright Baubles##6532 |goto Zangarmarsh/0 78.05,66.09 |or
'|complete skill("Fishing") >= 375 |or
step
talk Zurai##18011
buy Recipe: Feltail Delight##27695 |goto Zangarmarsh/0 85.28,54.75 |or
'|complete knowspell(33291) |or
step
use the Recipe: Feltail Delight##27695
Train Feltail Delight |learn Feltail Delight##33291
step
talk Gambarinka##18015
buy Recipe: Blackened Trout##27694 |goto Zangarmarsh/0 31.63,49.20 |or
'|complete knowspell(33290) |or
step
use the Blackened Trout##27694
Train Blackened Trout |learn Blackened Trout##33290
step
talk Rungor##18960
buy Recipe: Golden Fish Sticks##27699 |goto Terokkar Forest/0 48.74,46.04 |or
|tip Save this, you will need it later.
'|complete skill("Cooking") >= 350 |or
step
|equipped Fishing Pole##6256 |goto Terokkar Forest/0 39.33,22.16 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 320 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 320 in Fishing |skill Fishing,320 |goto Terokkar Forest/0 39.33,22.16
stickystart "Collect_Golden_Darter_350"
stickystart "Collect_Spotted_Feltail_320"
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
|tip You don't need bait in these waters.
collect 70 Barbed Gill Trout##27422 |goto Terokkar Forest/0 39.33,22.16 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 320 |or
step
label "Collect_Golden_Darter_350"
cast Fishing##33095 |notinsticky
|tip Fish in the water. |notinsticky
|tip You must have a Fishing Pole equipped to fish. |notinsticky
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |notinsticky
|tip You don't need bait in these waters. |notinsticky
collect 20 Golden Darter##27438 |goto Terokkar Forest/0 39.33,22.16 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 350 |or
step
label "Collect_Spotted_Feltail_320"
cast Fishing##33095 |notinsticky
|tip Fish in the water. |notinsticky
|tip You must have a Fishing Pole equipped to fish. |notinsticky
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |notinsticky
|tip You don't need bait in these waters. |notinsticky
collect 15 Spotted Feltail##27425 |goto Terokkar Forest/0 39.33,22.16 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 320 |or
step
'|cast Fishing##33095
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 1 Feltail Delight##33291,Cooking,320 |n
|tip Cook all of your Spotted Feltail first.
create 1 Blackened Trout##33290,Cooking,320 |n
|tip Stop cooking trout when you reach 320 Cooking skill.
Reach Skill 320 in Cooking |skill Cooking,320 |goto Terokkar Forest/0 39.33,22.16
|tip You may need to fish more.
step
talk Kylene##19186
|tip Inside the building.
Select _"I hear you're quite the cook."_
Train Stewed Trout |learn Stewed Trout##42296 |goto Shattrath City/0 75.89,32.73
step
'|cast Fishing##33095
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 5 Stewed Trout##42296,Cooking,325
step
use the Recipe: Golden Fish Sticks##27699
Train Golden Fish Sticks |learn Golden Fish Sticks##33295
step
'|cast Fishing##33095
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 1 Stewed Trout##42296,Cooking,350 |n
|tip Cook all of your Barbed Gill Trout first.
create 1 Golden Fish Sticks##33295,Cooking,350 |n
Reach at Least 350 Cooking Skill |skill Cooking,350 |goto Terokkar Forest/0 39.33,22.16
|tip Create all of the fish you have even after 350 skill until you run out.
|tip You may need to fish more.
step
talk Thomas Kolichio##26953
Train Grand Master Cooking |skillmax Cooking,450 |goto Howling Fjord/0 78.61,29.49
step
talk Thomas Kolichio##26953
Train Dalaran Clam Chowder |learn Dalaran Clam Chowder##58065 |goto Howling Fjord/0 78.61,29.49
step
talk Thomas Kolichio##26953
Train Smoked Rockfin |learn Smoked Rockfin##45560 |goto Howling Fjord/0 78.61,29.49
step
talk Thomas Kolichio##26953
Train Baked Manta Ray |learn Baked Manta Ray##45569 |goto Howling Fjord/0 78.61,29.49
step
Enter the building |goto Howling Fjord/0 79.04,30.37 < 7 |walk
talk Barnabas Frye##24341
|tip Inside the building.
buy 20 Bright Baubles##6532 |goto Howling Fjord/0 79.49,30.47 |or
'|complete skill("Fishing") >= 360 |or
step
|equipped Fishing Pole##6256 |goto Howling Fjord/0 79.51,27.15 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |goto Howling Fjord/0 79.51,27.15 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |goto Howling Fjord/0 79.51,27.15 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |goto Howling Fjord/0 79.51,27.15 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |goto Howling Fjord/0 79.51,27.15 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |goto Howling Fjord/0 79.51,27.15 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |goto Howling Fjord/0 79.51,27.15 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Howling Fjord/0 79.51,27.15 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Howling Fjord/0 79.51,27.15 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |goto Howling Fjord/0 79.51,27.15 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |goto Howling Fjord/0 79.51,27.15 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |goto Howling Fjord/0 79.51,27.15 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 360 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 360 in Fishing |skill Fishing,360 |goto Howling Fjord/0 79.51,27.15
step
use the Darkwater Clam##36781
collect Succulent Clam Meat##36782 |n
Open All of Your Darkwater Clams |complete itemcount(36781) == 0 or skill("Cooking") >= 400
step
'|cast Fishing##33095
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 1 Smoked Rockfin##45560,Cooking,400 |n
|tip Cook all of your Rockfin Grouper first first.
create 1 Baked Manta Ray##45569,Cooking,400 |n
create 1 Dalaran Clam Chowder##58065,Cooking,400 |n
Reach at Least 400 Cooking Skill |skill Cooking,400 |goto Howling Fjord/0 79.51,27.15
|tip Create all of the fish you have even after 400 skill until you run out.
|tip You may need to fish more.
step
talk Thomas Kolichio##26953
Train Black Jelly |learn Black Jelly##64358 |goto Howling Fjord/0 78.61,29.49
step
'|cast Fishing##33095
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 1 Black Jelly##64358,Cooking,415
|tip Create all of the Borean Man'O' War you have even after 415 skill until you run out.
|tip You may need to fish more.
step
talk Angelina Soren##26957
Train Grand Master Fishing |skillmax Fishing,450 |goto Howling Fjord/0 79.55,27.10
step
Enter the building |goto Howling Fjord/0 79.04,30.37 < 7 |walk
talk Barnabas Frye##24341
|tip Inside the building.
buy 20 Bright Baubles##6532 |goto Howling Fjord/0 79.49,30.47 |or
'|complete skill("Fishing") >= 450 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 450 in Fishing |skill Fishing,450 |goto Wintergrasp/0 23.94,35.84
|tip Once you catch 60 Glacial Salmon, 60 Musselback Sculpin, or 60 Nettlefish you can fish anywhere you like to 450.
|tip Make sure you save at least 60 of one of these fish.
|tip You can do a combination, but you will need to buy multiple recipes, which require a few days of dailies each.
step
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
Reach 450 Cooking Skill |skill Cooking,450 |goto Dalaran/1 70.21,38.62 |or
|tip From this point, you will need to complete Cooking daily quests in Dalaran for Epicurean's Awards.
|tip Recipes can be purchased from Misensi in Dalaran for 3 Epicuran's Awards each.
|tip Each recipe requires 1 Northern Spices per cook, which can be purchased from the auction house or obtained by completing Cooking daily quests.
|tip Choose Firecracker Salmon if you saved Glacial Salmon.
|tip Choose Spicy Blue Nettlefish if you saved Nettlefish.
|tip Choose Poached Northern Sculpin if you saved Musselback Sculpin.
|tip You will need to create around 60 of these recipes to reach 450 Cooking skill.
Click Here to Load the "Dalaran Cooking Dailies" Daily Quest Guide |confirm |loadguide "Dailies Guides\\Wrath of the Lich King\\Dalaran Cooking Dailies"
step
talk Lumak##3332
Train Illustrious Grand Master Fishing |skillmax Fishing,525  |goto Orgrimmar/1 66.42,41.96
|tip You must be at least level 75.
step
earn 9 Epicurean's Award##81
|tip Use the "Dalaran Cooking Daily Guide" and "Main City Cooking Dailies" guides to accomplish this.
|tip You will generally earn three to five per day.
step
Fish in open water in any Cataclysm Zone |cast Fishing##131474
collect Striped Lurker##53067 |n |goto Twilight Highlands/0 65.80,43.30
|tip You will want at least 50 Striped Lurkers, continue fishing if you get lucky on skillups.
Reach Skill 475 in Fishing |skill Fishing,475
step
Fish in any Highland Guppy Schools you find on the route |cast Fishing##131474
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	59.05,90.46	62.07,90.67	65.57,88.09	67.66,85.17	71.69,81.21
path	72.85,75.18	   78.19,79.14	82.00,82.42	83.09,77.03	82.21,72.22
path	78.58,70.89	78.88,64.97	76.53,60.42	73.84,61.94	70.49,60.67
path	68.73,58.31	70.99,55.56	72.58,57.34	76.62,57.12	78.70,49.06
path	75.92,47.25	72.91,41.72	72.02,35.75
collect Highland Guppy##53064 |n
|tip You will want at least 50 Highland Guppy, continue fishing if you get lucky on skillups.
Reach Skill 500 in Fishing |skill Fishing,500
step
Fish in any Deepsea Sagefish Schools you find |cast Fishing##131474
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	59.05,90.46	62.07,90.67	65.57,88.09	67.66,85.17	71.69,81.21
path	72.85,75.18	   78.19,79.14	82.00,82.42	83.09,77.03	82.21,72.22
path	78.58,70.89	78.88,64.97	76.53,60.42	73.84,61.94	70.49,60.67
path	68.73,58.31	70.99,55.56	72.58,57.34	76.62,57.12	78.70,49.06
path	75.92,47.25	72.91,41.72	72.02,35.75
collect Deepsea Sagefish##53070 |n
|tip You will want at least 40 Deepsea Sagefish, continue fishing if you get lucky on skillups.
Reach Skill 525 in Fishing |skill Fishing,525
step
talk Arugi##46709
Train Illustrious Grand Master Cooking |skillmax Cooking,525 |goto Orgrimmar/1 56.19,61.62
|tip You must be at least level 75.
step
talk Shazdar##49737
buy Recipe: Lurker Lunch##65416 |goto Orgrimmar/1 56.82,62.36
step
use Recipe: Lurker Lunch##65416
learn Lurker Lunch##88030 |goto Orgrimmar/1 56.82,62.36
step
Fish in open water in any Cataclysm Zone |cast Fishing##131474
collect 50 Striped Lurker##53067 |goto Twilight Highlands/0 65.80,43.30
step
Open Your Cooking Crafting Panel:
_<Create 25 Lurker Lunch>_
|tip You may need to make more to reach 475.
Reach 475 Cooking |skill Cooking,475
step
talk Shazdar##49737
buy Recipe: Pickled Guppy##65417 |goto Orgrimmar/1 56.82,62.36
step
use Recipe: Pickled Guppy##65417
learn Pickled Guppy##88033 |goto Orgrimmar/1 56.82,62.36
step
Fish in any Highland Guppy Schools you find on the route |cast Fishing##131474
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	59.05,90.46	62.07,90.67	65.57,88.09	67.66,85.17	71.69,81.21
path	72.85,75.18	   78.19,79.14	82.00,82.42	83.09,77.03	82.21,72.22
path	78.58,70.89	78.88,64.97	76.53,60.42	73.84,61.94	70.49,60.67
path	68.73,58.31	70.99,55.56	72.58,57.34	76.62,57.12	78.70,49.06
path	75.92,47.25	72.91,41.72	72.02,35.75
collect 50 Highland Guppy##53064
step
Open Your Cooking Crafting Panel:
_<Create 25 Pickled Guppy>_
|tip You may need to make more to reach 500.
Reach 500 Cooking |skill Cooking,500
step
talk Shazdar##49737
buy Recipe: Severed Sagefish Head##65421 |goto Orgrimmar/1 56.82,62.36
step
use Recipe: Severed Sagefish Head##65421
learn Severed Sagefish Head##88039 |goto Orgrimmar/1 56.82,62.36
step
Fish in any Deepsea Sagefish Schools you find |cast Fishing##131474
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	59.05,90.46	62.07,90.67	65.57,88.09	67.66,85.17	71.69,81.21
path	72.85,75.18	   78.19,79.14	82.00,82.42	83.09,77.03	82.21,72.22
path	78.58,70.89	78.88,64.97	76.53,60.42	73.84,61.94	70.49,60.67
path	68.73,58.31	70.99,55.56	72.58,57.34	76.62,57.12	78.70,49.06
path	75.92,47.25	72.91,41.72	72.02,35.75
collect 40 Deepsea Sagefish##53070
step
Open Your Cooking Crafting Panel:
_<Create 25 Severed Sagefish Head>_
|tip You may need to make more to reach 525.
Reach 525 Cooking |skill Cooking,525
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Bear Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=10},
items={3173},
maps={"Darkshore"},
},[[
step
map Darkshore/0
path follow smart; loop on; ants straight; dist 30
path	52.68,29.04	53.63,28.56	54.89,28.97	55.40,26.27	54.61,24.75
path	52.72,25.51
Kill Bear enemies along this path
collect Bear Meat##3173 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Big Bear Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=20},
items={3730},
maps={"Hillsbrad Foothills"},
},[[
step
map Hillsbrad Foothills/0
path follow smart; loop on; ants straight; dist 30
path	64.70,74.38	63.16,71.79	59.89,67.40	59.56,70.91	60.56,73.40
path	63.82,76.34
Kill Bear enemies around this area
collect Big Bear Meat##3730 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Boar Ribs",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=1},
items={2677},
maps={"Durotar"},
},[[
step
map Durotar/0
path follow smart; loop on; ants curved; dist 20
path	46.24,14.08	48.40,14.33	50.51,15.71	52.85,17.40	54.84,19.11
path	55.64,21.23	56.27,24.65	56.55,26.49	56.33,30.28	54.76,33.37
path	53.53,36.24	54.76,39.35	52.82,40.55	51.94,42.55	50.48,43.99
path	48.46,44.47	47.22,43.35	45.66,40.85	45.03,36.20	43.31,33.15
path	41.31,32.48	39.48,33.32	37.75,32.49	36.98,29.96	37.26,26.34
path	37.94,23.38	40.00,20.80	40.35,17.61	42.55,17.05	44.72,17.22
path	45.61,15.87
Kill Boar enemies around this area
collect Boar Ribs##2677 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Buzzard Wing",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=30},
items={3404},
maps={"Desolace"},
},[[
step
map Desolace/0
path follow smart; loop on; ants straight; dist 30
path	70.84,30.47	71.26,28.17	70.74,25.26	69.85,22.02	68.46,20.37
path	66.75,19.37	64.49,18.94	60.82,18.93	58.94,20.10	59.54,24.35
path	61.77,28.24	63.91,30.59
Kill Dread Swoop enemies around this area
collect Buzzard Wing##3404 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Clam Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=10},
items={5503},
maps={"Westfall"},
},[[
step
Kill Murloc enemies around this area
|tip They are found all along the coastline.
collect Small Barnacled Clam##5523 |n
use the Small Barnacled Clam##5523
collect Clam Meat##5503 |n |goto Westfall/0 37.26,15.67
|tip They are inside of the Small Barnacled Clams.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Coyote Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=10},
items={2673},
maps={"Westfall"},
},[[
step
map Westfall/0
path follow smart; loop on; ants straight; dist 30
path	62.45,42.12	61.05,38.49	59.20,30.20	58.69,26.18	58.85,22.18
path	55.99,22.99	53.72,26.55	51.15,26.31	48.14,25.64	47.04,19.68
path	44.81,17.52	42.78,19.23	41.83,24.14	41.27,26.78	45.37,30.33
path	49.58,30.72	53.39,28.48	55.63,29.25
Kill Coyote enemies along this path
collect Coyote Meat##2673 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Crag Boar Rib",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=1},
items={2886},
maps={"Dun Morogh"},
},[[
step
map Dun Morogh/0
path follow smart; loop on; dist 20
path	48.31,47.26	50.56,47.82	52.50,48.96	51.18,50.98	50.25,52.44
path	49.29,54.42	48.28,56.64	48.54,58.79	48.34,61.32	47.52,63.19
path	45.85,63.76	45.37,63.31	46.29,61.25	46.73,58.19	46.92,56.16
path	46.51,54.00	46.40,50.75	47.10,49.38	47.15,47.78
Kill Boar enemies along this path
collect Crag Boar Rib##2886 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Crawler Claw",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=10},
items={2675},
maps={"Westfall"},
},[[
step
map Westfall/0
path follow smart; loop off; dist 20
path	51.32,9.67	49.06,10.01	44.72,8.70	41.78,10.34	38.85,13.51
path	36.20,18.29	33.45,22.08	31.88,24.30
Kill Crawler enemies around this area
|tip You can find more further down the coast.
collect Crawler Claw##2675 |n
'|goto Westfall/0 31.88,24.30 < 20 |noway |c
step
map Westfall/0
path follow smart; loop off; dist 20
path	31.88,24.30	33.45,22.08	36.20,18.29	38.85,13.51	41.78,10.34
path	44.72,8.70	49.06,10.01	51.32,9.67
Kill Crawler enemies around this area
|tip You can find more further down the coast.
collect Crawler Claw##2675 |n
'|goto Westfall/0 51.32,9.67 < 20 |noway |c
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Crawler Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=10},
items={2674},
maps={"Westfall"},
},[[
step
map Westfall/0
path follow smart; loop off; dist 20
path	51.32,9.67	49.06,10.01	44.72,8.70	41.78,10.34	38.85,13.51
path	36.20,18.29	33.45,22.08	31.88,24.30
Kill Crawler enemies around this area
|tip You can find more further down the coast.
collect Crawler Meat##2674 |n
'|goto Westfall/0 31.88,24.30 < 20 |noway |c
step
map Westfall/0
path follow smart; loop off; dist 20
path	31.88,24.30	33.45,22.08	36.20,18.29	38.85,13.51	41.78,10.34
path	44.72,8.70	49.06,10.01	51.32,9.67
Kill Crawler enemies around this area
|tip You can find more further down the coast.
collect Crawler Meat##2674 |n
'|goto Westfall/0 51.32,9.67 < 20 |noway |c
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Crocolisk Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=10},
items={2924},
maps={"Loch Modan"},
},[[
step
map Loch Modan/0
path follow smart; loop on; ants straight; dist 30
path	49.06,59.58	48.77,63.11	50.96,65.26	53.77,64.51	58.07,57.86
path	60.49,54.10	61.08,49.23	56.79,48.99
Kill Crocolisk enemies along this path
collect Crocolisk Meat##2924 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Chunk of Boar Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=1},
items={769},
maps={"Durotar"},
},[[
step
map Durotar/0
path follow smart; loop on; ants curved; dist 20
path	46.24,14.08	48.40,14.33	50.51,15.71	52.85,17.40	54.84,19.11
path	55.64,21.23	56.27,24.65	56.55,26.49	56.33,30.28	54.76,33.37
path	53.53,36.24	54.76,39.35	52.82,40.55	51.94,42.55	50.48,43.99
path	48.46,44.47	47.22,43.35	45.66,40.85	45.03,36.20	43.31,33.15
path	41.31,32.48	39.48,33.32	37.75,32.49	36.98,29.96	37.26,26.34
path	37.94,23.38	40.00,20.80	40.35,17.61	42.55,17.05	44.72,17.22
path	45.61,15.87
Kill Boar enemies around this area
collect Chunk of Boar Meat##769 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Giant Clam Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=25},
items={4655},
maps={"Northern Stranglethorn"},
},[[
step
click Giant Clam##2744+
|tip They look like large shells underwater around this area.
|tip Elixirs of Water Breathing are very helpful while farming these.
collect Giant Clam Meat##4655 |n |goto Northern Stranglethorn/0 25.51,47.88
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Gooey Spider Leg",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=20},
items={2251},
maps={"Duskwood"},
},[[
step
label "Path_One"
map Duskwood/0
path follow smart; loop off; dist 20
path	75.39,23.25	75.70,20.27	72.81,20.02	68.45,21.26	66.04,20.18
path	64.38,23.56	62.25,25.40	58.25,19.25	55.59,20.51	53.13,20.33
path	50.65,16.19	48.36,17.34	46.63,16.65
Kill Spider enemies along this path
collect Gooey Spider Leg##2251 |n
'|goto Duskwood/0 46.63,16.65 < 20 |noway |c
step
map Duskwood/0
path follow smart; loop off; dist 20
path	46.63,16.65	48.36,17.34	50.65,16.19	53.13,20.33	55.59,20.51
path	58.25,19.25	62.25,25.40	64.38,23.56	66.04,20.18	68.45,21.26
path	72.81,20.02	75.70,20.27	75.39,23.25
Kill Spider enemies along this path
collect Gooey Spider Leg##2251 |n
'|goto Duskwood/0 75.39,23.25 < 20 |noway |c |next "Path_One"
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Goretusk Liver",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=10},
items={723},
maps={"Westfall"},
},[[
step
map Westfall/0
path follow smart; loop on; ants straight; dist 30
path	62.45,42.12	61.05,38.49	59.20,30.20	58.69,26.18	58.85,22.18
path	55.99,22.99	53.72,26.55	51.15,26.31	48.14,25.64	47.04,19.68
path	44.81,17.52	42.78,19.23	41.83,24.14	41.27,26.78	45.37,30.33
path	49.58,30.72	53.39,28.48	55.63,29.25
Kill Goretusk enemies along this path
collect Goretusk Liver##723 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Goretusk Snout",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=10},
items={731},
maps={"Westfall"},
},[[
step
map Westfall/0
path follow smart; loop on; ants straight; dist 30
path	62.45,42.12	61.05,38.49	59.20,30.20	58.69,26.18	58.85,22.18
path	55.99,22.99	53.72,26.55	51.15,26.31	48.14,25.64	47.04,19.68
path	44.81,17.52	42.78,19.23	41.83,24.14	41.27,26.78	45.37,30.33
path	49.58,30.72	53.39,28.48	55.63,29.25
Kill Goretusk enemies along this path
collect Goretusk Snout##731 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Kodo Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=1},
items={5467},
maps={"Mulgore"},
},[[
step
map Mulgore/0
path follow smart; loop on; ants straight; dist 30
path	49.12,35.54	53.57,32.31	55.04,23.61	51.99,19.91	50.11,23.99
path	43.16,44.22	40.74,55.63	43.54,54.67	48.21,50.36	52.81,46.41
Kill Kodo enemies along this path
collect Kodo Meat##5467 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Lean Wolf Flank",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=20},
items={1015},
maps={"Duskwood"},
},[[
step
label "Path_One"
map Duskwood
path follow smart; loop off; dist 20
path	63.16,28.80	64.53,25.32	66.25,22.72	68.11,20.39	65.79,19.10
path	63.93,18.00	61.85,17.35	61.24,19.93	59.17,22.31	57.44,22.15
path	55.99,19.56	54.52,17.35	52.93,14.73	51.60,17.10	50.35,19.66
path	49.58,17.59	48.56,16.46	46.52,16.89	44.73,18.76	43.31,20.29
path	41.58,18.79	39.78,19.76	37.72,19.38	36.39,21.44	37.40,24.54
path	35.14,24.60	32.82,24.47	31.96,27.24	29.31,27.36	27.36,26.54
path	25.34,27.61	22.46,25.92	20.45,25.75	18.66,23.98	16.18,27.47
path	14.08,27.45	12.25,30.98	10.25,32.63
Kill Wolf enemies around this area
collect Lean Wolf Flank##1015 |n
'|goto Duskwood 10.25,32.63 < 20 |noway |c
step
map Duskwood
path follow smart; loop off; dist 20
path	10.25,32.63	12.25,30.98	14.08,27.45	16.18,27.47	18.66,23.98
path	20.45,25.75	22.46,25.92	25.34,27.61	27.36,26.54	29.31,27.36
path	31.96,27.24	32.82,24.47	35.14,24.60	37.40,24.54	36.39,21.44
path	37.72,19.38	39.78,19.76	41.58,18.79	43.31,20.29	44.73,18.76
path	46.52,16.89	48.56,16.46	49.58,17.59	50.35,19.66	51.60,17.10
path	52.93,14.73	54.52,17.35	55.99,19.56	59.17,22.31	61.24,19.93
path	61.85,17.35	63.93,18.00	65.79,19.10	68.11,20.39	66.25,22.72
path	64.53,25.32	63.16,28.80
Kill Wolf enemies around this area
collect Lean Wolf Flank##1015 |n
'|goto Duskwood 63.16,28.80 < 20 |noway |c |next "Path_One"
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Lion Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=30},
items={3731},
maps={"Southern Barrens"},
},[[
step
map Southern Barrens/0
path follow smart; loop on; ants straight; dist 30
path	46.99,56.84	48.17,53.40	50.17,53.66	46.94,47.61	46.95,45.34
path	44.16,46.63
Kill Plains Prowlers and Pridemanes
collect Lion Meat##3731 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Meaty Bat Wing",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=1},
items={12223},
maps={"Tirisfal Glades"},
},[[
step
map Tirisfal Glades/0
path follow smart; loop on; ants curved; dist 20
path	64.52,58.29	68.11,58.97	70.15,60.79	71.25,63.52	72.94,65.59
path	74.00,67.56	75.53,71.12	77.00,71.91	78.54,72.64	80.23,70.82
path	80.86,69.37	81.43,67.07	80.77,64.43	79.73,62.26	78.26,61.18
path	77.34,58.92	75.89,58.68	74.47,58.56	73.14,59.41	72.26,58.06
path	71.57,55.68	71.47,53.36	71.31,50.97	71.66,48.19	72.37,45.90
path	73.28,43.98	72.95,41.87	72.59,39.15	73.34,37.59	73.67,35.63
path	73.64,33.78	71.70,33.07	69.78,33.42	68.94,35.29	66.23,38.84
path	64.99,41.00	63.82,44.53	63.73,47.67	63.23,49.86	63.49,52.65
path	63.93,55.31
Kill Bat enemies along this path
collect Meaty Bat Wing##12223 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Murloc Eye",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=10},
items={730},
maps={"Westfall"},
},[[
step
Kill Murloc enemies around this area
|tip They spawn all along the coast, so you can move down to get more.
collect Murloc Eye##730 |n |goto Westfall 55.73,9.49
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Murloc Fin",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=15},
items={1468},
maps={"Redridge Mountains"},
},[[
step
Kill Murloc enemies around this area
collect Murloc Fin##1468 |goto Redridge Mountains/0 52.03,47.88 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Mystery Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=30},
items={12037},
maps={"Desolace"},
},[[
step
map Desolace/0
path follow smart; loop on; ants straight; dist 30
path	70.84,30.47	71.26,28.17	70.74,25.26	69.85,22.02	68.46,20.37
path	66.75,19.37	64.49,18.94	60.82,18.93	58.94,20.10	59.54,24.35
path	61.77,28.24	63.91,30.59
Kill animal enemies around this area
collect Mystery Meat##12037 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Raptor Egg",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=25},
items={3685},
maps={"Northern Stranglethorn"},
},[[
step
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	25.65,30.22	27.84,30.72	29.96,31.83	31.18,32.26	32.43,30.42
path	31.93,27.74
Kill Raptor enemies around this area
collect Raptor Egg##3685 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Raptor Flesh",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=25},
items={12184},
maps={"Northern Stranglethorn"},
},[[
step
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	31.76,32.48	30.35,30.75	28.47,30.17	25.99,29.81
Kill Raptor enemies around this area
collect Raptor Flesh##12184 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Red Wolf Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=30},
items={12203},
maps={"The Hinterlands"},
},[[
step
map The Hinterlands/0
path follow smart; loop on; ants curved; dist 20
path	16.99,49.54	14.76,51.94	16.34,54.97	19.20,54.81	21.00,55.69
path	22.67,53.75	24.13,52.68	22.29,51.46	20.61,50.68	19.10,49.49
kill Mangy Silvermane##2923+
collect Red Wolf Meat##12203 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Scorpid Stinger",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=1},
items={5466},
maps={"Durotar"},
},[[
step
map Durotar/0
path follow smart; loop off; ants straight; dist 30
path	42.87,15.34	41.30,16.71	41.05,20.61	42.23,21.28	43.64,21.87
path	44.95,24.42	43.63,27.25	43.70,29.99	44.95,29.96	45.66,28.20
Kill Scorpid enemies along this path
collect Scorpid Stinger##5466 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Small Egg",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=1},
items={6889},
maps={"Mulgore"},
},[[
step
map Mulgore/0
path follow smart; loop on; ants curved; dist 20
path	57.20,68.00	58.60,64.20	60.00,59.80	56.60,57.80	57.60,55.00
path	58.40,52.80	57.60,48.60	56.60,45.40	53.80,45.80	51.40,43.00
path	51.00,40.40	52.40,38.20	52.20,34.40	49.20,36.20	47.20,41.60
path	45.40,42.80	42.40,39.60	42.40,43.40	38.00,41.40	35.00,41.40
path	36.60,45.80	41.60,48.60	42.80,53.00	43.60,49.60	46.60,50.20
path	48.09,53.39	51.19,58.92	53.62,62.28
Kill Swoop enemies along this path
collect Small Egg##6889 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Small Spider Leg",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=1},
items={5465},
maps={"Teldrassil"},
},[[
step
map Teldrassil
path follow smart; loop on; dist 20
path	61.26,54.48	59.86,54.83	58.84,56.13	57.82,55.52	56.99,57.22
path	55.71,58.31	54.17,58.29	51.90,56.43	51.01,57.05	51.06,58.72
path	51.50,61.70	51.21,65.25	51.97,66.36	53.49,68.85	53.68,66.50
path	54.51,65.63	55.15,63.62	56.43,62.23	57.59,61.30	58.39,61.25
path	59.64,62.24	61.03,61.51	62.34,60.71	62.85,58.55	62.70,56.22
path	62.20,55.24
kill Webwood Lurker##1998+
collect Small Spider Leg##5465 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Soft Frenzy Flesh",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=10},
items={5468},
maps={"Silverpine Forest"},
},[[
step
map Silverpine Forest/0
path follow smart; loop on; ants straight; dist 30
path	30.44,14.12	31.11,19.26	32.16,21.49	33.37,22.75	34.22,25.17
path	32.71,28.99	33.19,33.41	34.03,37.43	35.04,42.09	35.58,47.06
path	35.64,51.82	36.25,59.88	37.65,67.26
kill Reef Frenzy##2173+
|tip They are underwater along this path.
collect Soft Frenzy Flesh##5468 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Spider Ichor",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=10},
items={3174},
maps={"Loch Modan"},
},[[
step
map Loch Modan/0
path follow smart; loop on; ants straight; dist 30
path	27.50,18.10	30.27,19.59	29.15,24.55	29.84,29.06	32.14,30.71
path	35.13,29.65	37.20,31.58	36.37,35.45	35.03,38.40	33.26,40.88
path	32.40,45.35	33.05,47.42	34.34,51.88	36.47,52.74	39.14,50.95
path	39.83,54.29	42.01,58.27	44.93,63.94	42.50,52.70	39.15,41.38
path	38.83,33.13	40.40,23.18	40.43,17.42
Kill Lurker enemies along this path
collect Spider Ichor##3174 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Strider Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=1},
items={5469},
maps={"Mulgore"},
},[[
step
map Mulgore/0
path follow smart; loop on; ants straight; dist 30
path	37.98,57.91	38.54,56.38	39.51,55.08	40.90,53.25	40.66,50.00
path	40.84,47.04	42.53,46.04	44.61,46.78	46.96,45.34	49.00,45.27
path	51.75,46.25	55.98,49.36	55.88,53.98	54.27,58.65	53.09,61.58
path	51.54,64.37	50.05,66.07	46.43,68.12	44.23,68.48	40.49,63.10
path	39.92,56.40
Kill Plainstrider enemies along this path
collect Strider Meat##5469 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Stringy Vulture Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=10},
items={729},
maps={"Westfall"},
},[[
step
map Westfall/0
path follow smart; loop on; ants straight; dist 30
path	62.45,42.12	61.05,38.49	59.20,30.20	58.69,26.18	58.85,22.18
path	55.99,22.99	53.72,26.55	51.15,26.31	48.14,25.64	47.04,19.68
path	44.81,17.52	42.78,19.23	41.83,24.14	41.27,26.78	45.37,30.33
path	49.58,30.72	53.39,28.48	55.63,29.25
Kill Vulture enemies along this path
collect Stringy Vulture Meat##729 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Stringy Wolf Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=1},
items={2672},
maps={"Tirisfal Glades"},
},[[
step
map Tirisfal Glades/0
path follow smart; loop off; ants straight; dist 30
path    80.68,45.82    82.41,48.34    83.55,52.54    83.71,47.68    84.56,45.34
path    85.40,42.49    83.66,41.14
kill Ravenous Darkhound##1549+
collect Stringy Wolf Meat##2672 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Tangy Clam Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=20},
items={5504},
maps={"Wetlands"},
},[[
step
map Wetlands/0
path follow smart; loop on; dist 20
path	15.21,40.13	17.36,39.06	19.36,38.16	22.88,37.14	24.91,36.76
path	24.41,33.77	23.10,33.59	21.34,34.34	19.64,31.98	18.24,31.36
path	16.84,29.42	15.14,30.74	14.96,33.33	14.32,35.71	13.91,38.13
path	14.03,40.90
Kill Bluegill enemies around this area
collect Thick-shelled Clam##5524 |n
use the Thick-shelled Clam##5524
collect Tangy Clam Meat##5504 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Tender Crocolisk Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=35},
items={3667},
maps={"Dustwallow Marsh"},
},[[
step
label "Path_One"
map Dustwallow Marsh/0
path follow smart; loop off; dist 20
path	42.01,28.23	41.27,30.48	40.81,32.17	39.51,33.86	38.27,35.06
path	39.30,36.33	40.52,36.90	41.08,38.12	42.23,39.13	42.29,41.27
path	40.44,41.83	39.76,43.93	39.29,45.36	38.51,45.82	37.54,46.50
path	36.53,47.94	35.50,49.39	36.60,52.40	38.28,53.98	40.81,54.72
path	41.62,55.99	40.68,58.48	40.53,61.02
Kill Drywallow enemies along this path
collect Tender Crocolisk Meat##3667 |n
'|goto Dustwallow Marsh/0 40.53,61.02 < 20 |noway |c
step
map Dustwallow Marsh/0
path follow smart; loop off; dist 20
path	40.53,61.02	40.68,58.48	41.62,55.99	40.81,54.72	38.28,53.98
path	36.60,52.40	35.50,49.39	36.53,47.94	37.54,46.50	38.51,45.82
path	39.29,45.36	39.76,43.93	40.44,41.83	42.29,41.27	42.23,39.13
path	41.08,38.12	40.52,36.90	39.30,36.33	38.27,35.06	39.51,33.86
path	40.81,32.17	41.27,30.48	42.01,28.23
Kill Drywallow enemies along this path
collect Tender Crocolisk Meat##3667 |n
'|goto Dustwallow Marsh/0 42.01,28.23 < 20 |noway |c |next "Path_One"
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Thunder Lizard Tail",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=30},
items={5470},
maps={"Southern Barrens"},
},[[
step
map Southern Barrens/0
path follow smart; loop on; ants straight; dist 30
path	44.77,43.44	46.30,45.67	47.60,49.00	44.66,49.35	43.60,49.51
path	42.36,46.91
Kill Stormsnout enemies around this area
collect Thunder Lizard Tail##5470 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Tiger Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=25},
items={12202},
maps={"Northern Stranglethorn"},
},[[
step
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	38.88,28.11	37.12,31.47	36.33,32.84	37.16,34.47	37.94,35.40
path	38.99,34.74	39.68,33.27
Kill Tiger enemies around this area
collect Tiger Meat##12202 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Tough Condor Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=15},
items={1080},
maps={"Redridge Mountains"},
},[[
step
map Redridge Mountains/0
path follow smart; loop on; ants straight; dist 30
path    45.10,68.18    47.20,66.59    52.63,66.79    57.89,66.94
Kill Condor enemies along this path
collect Tough Condor Meat##1080 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Turtle Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=20},
items={3712},
maps={"Hillsbrad Foothills"},
},[[
step
map Hillsbrad Foothills/0
path follow smart; loop on; ants straight; dist 30
path	52.67,71.27	52.81,69.36	53.24,66.91	53.80,64.86	55.06,63.18
path	56.70,61.64	57.84,60.23	59.44,58.66	60.41,56.58	60.64,55.06
path	60.89,52.22	60.97,50.63	60.98,49.04	61.02,46.18	61.15,44.60
path	61.73,42.55	63.55,39.04	65.69,36.44	67.85,33.44	69.64,30.31
path	72.10,27.82
Kill Snapjaw enemies along this path
collect Turtle Meat##3712 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Breath of Wind",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=55},
items={7081},
maps={"Silithus"},
},[[
step
kill Dust Stormer##11744+
collect Breath of Wind##7081 |n |goto Silithus/0 36.49,19.44
|tip These have a low drop rate.
You can find more around [28.75,24.40]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Core of Earth",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=55},
items={7075},
maps={"Silithus"},
},[[
step
kill Desert Rumbler##11746+
collect Core of Earth##7075 |n |goto Silithus/0 31.27,14.03
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Elemental Air",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=55},
items={7069},
maps={"Silithus"},
},[[
step
kill Dust Stormer##11744+
collect Elemental Air##7069 |n |goto Silithus/0 36.49,19.44
|tip These have a low drop rate.
You can find more around [28.75,24.40]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Elemental Earth",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=50},
items={7067},
maps={"Burning Steppes"},
},[[
step
kill Obsidian Elemental##7031+
collect Elemental Earth##7067 |n |goto Burning Steppes/0 15.92,43.11
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Elemental Fire",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=50},
items={7068},
maps={"Un'Goro Crater"},
},[[
step
Kill Fire Elementals around this area
collect Elemental Fire##7068 |n |goto Un'Goro Crater/0 49.29,47.07
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Elemental Water",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=52},
items={7070},
maps={"Swamp of Sorrows"},
},[[
step
Kill Purespring Elementals around this area
collect Elemental Water##7070 |n |goto Swamp of Sorrows/0 18.08,57.82
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Essence of Air",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=55},
items={7082},
maps={"Silithus"},
},[[
step
kill Dust Stormer##11744+
collect Essence of Air##7082 |n |goto Silithus/0 36.49,19.44
|tip These have a low drop rate.
You can find more around [28.75,24.40]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Essence of Earth",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=55},
items={7076},
maps={"Silithus"},
},[[
step
kill Desert Rumbler##11746+
collect Essence of Earth##7076 |n |goto Silithus/0 31.27,14.03
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Essence of Fire",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=50},
items={7078},
maps={"Un'Goro Crater"},
},[[
step
Kill Fire Elementals around this area
collect Essence of Fire##7078 |n |goto Un'Goro Crater/0 49.29,47.07
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Essence of Undeath",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=40},
items={12808},
maps={"Eastern Plaguelands"},
},[[
step
Kill Scarlet enemies in the area
collect Essence of Undeath##12808 |n |goto Eastern Plaguelands/0 75.88,75.17
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Essence of Water",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=52},
items={7080},
maps={"Swamp of Sorrows"},
},[[
step
Kill Purespring Elementals around this area
collect Essence of Water##7080 |n |goto Swamp of Sorrows/0 18.08,57.82
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Globe of Water",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=52},
items={7079},
maps={"Swamp of Sorrows"},
},[[
step
Kill Purespring Elementals around this area
collect Globe of Water##7079 |n |goto Swamp of Sorrows/0 18.08,57.82
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Heart of Fire",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=50},
items={7077},
maps={"Un'Goro Crater"},
},[[
step
Kill Fire Elementals around this area
collect Essence of Fire##7077 |n |goto Un'Goro Crater/0 49.29,47.07
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Heart of the Wild",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=50},
items={10286},
maps={"Un'Goro Crater"},
},[[
step
Kill Tar enemies around this area
collect Heart of the Wild##10286 |n |goto Un'Goro Crater/0 45.10,17.69
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Ichor of Undeath",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=50},
items={7972},
maps={"Winterspring"},
},[[
step
Kill Highborne enemies around this area
collect Ichor of Undeath##7972 |n |goto Winterspring/0 52.59,40.68
|tip These have a low drop rate.
You can find more around: |notinsticky
[53.62,42.09]
[56.02,44.24]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Living Essence",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=50},
items={12803},
maps={"Un'Goro Crater"},
},[[
step
Kill Tar enemies around this area
collect Living Essence##12803 |n |goto Un'Goro Crater/0 46.46,17.23
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Strange Dust",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={Enchanting=1},levelreq=1},
items={10940},
},[[
step
Disenchant level 5-20 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may sometimes get Small Glimmering Shards instead of Strange Dust.
collect Strange Dust##10940 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Lesser Magic Essence",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={Enchanting=1},levelreq=1},
items={10938},
},[[
step
Disenchant level 3-12 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may sometimes get Strange Dust instead of Lesser Magic Essence.
collect Lesser Magic Essence##10938 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Greater Magic Essence",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={Enchanting=1},levelreq=1},
items={10939},
},[[
step
Disenchant level 9-21 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may sometimes get Strange Dust instead of Greater Magic Essence.
|tip You can turn 3 Lesser Magic Essences into a Greater Magic Essence.
collect Greater Magic Essence##10939 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Lesser Eternal Essence",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={Enchanting=1},levelreq=1},
items={16202},
},[[
step
Disenchant level 40-50 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may sometimes get Dream Dust instead of Lesser Eternal Essence.
collect Lesser Eternal Essence##16202 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Greater Eternal Essence",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={Enchanting=1},levelreq=1},
items={16203},
},[[
step
Disenchant level 45-60 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may sometimes get Illusion Dust instead of Greater Eternal Essence.
|tip You can turn 3 Lesser Eternal Essences into a Greater Eternal Essence.
collect Greater Eternal Essence##16203 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Small Brilliant Shard",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={Enchanting=1},levelreq=1},
items={14343},
},[[
step
Disenchant level 38-50 blue and green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may sometimes get Dream Dust instead of Small Brilliant Shards.
collect Small Brilliant Shard##14343 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Large Brilliant Shard",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={Enchanting=1},levelreq=1},
items={14344},
},[[
step
Disenchant level 50-58 blue weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may very rarely get Nexus Crystals instead of Large Brilliant Shards.
collect Large Brilliant Shard##14344 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Illusion Dust",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={Enchanting=1},levelreq=1},
items={16204},
},[[
step
Disenchant level 45-60 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may sometimes get Greater Eternal Essence instead of Illusion Dust.
collect Illusion Dust##16204 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Lesser Astral Essence",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={Enchanting=1},levelreq=1},
items={10998},
},[[
step
Disenchant level 20-25 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Lesser Astral Essence##10998 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Greater Astral Essence",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={Enchanting=1},levelreq=1},
items={11082},
},[[
step
Disenchant level 20-30 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Greater Astral Essence##11082 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Soul Dust",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={Enchanting=1},levelreq=1},
items={11083},
},[[
step
Disenchant level 25-35 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Soul Dust##11083 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Lesser Mystic Essence",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={Enchanting=1},levelreq=1},
items={11134},
},[[
step
Disenchant level 30-35 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Lesser Mystic Essence##11134 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Greater Mystic Essence",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={Enchanting=1},levelreq=1},
items={11135},
},[[
step
Disenchant level 35-40 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Greater Mystic Essence##11135 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Vision Dust",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={Enchanting=1},levelreq=1},
items={11137},
},[[
step
Disenchant level 35-45 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Vision Dust##11137 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Lesser Nether Essence",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={Enchanting=1},levelreq=1},
items={11174},
},[[
step
Disenchant level 40-45 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Lesser Nether Essence##11174 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Greater Nether Essence",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={Enchanting=1},levelreq=1},
items={11175},
},[[
step
Disenchant level 45-50 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Greater Nether Essence##11175 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Dream Dust",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={Enchanting=1},levelreq=1},
items={11176},
},[[
step
Disenchant level 45-55 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Dream Dust##11176 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Golden Darter",{
expansion="mists",
mopready=true,
description="Golden Darter can be fished in Terokkar Forest.",
meta={goldtype="route",skillreq={fishing=300},levelreq=62},
items={27438},
maps={"Terokkar Forest"},
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
collect Golden Darter##27438 |goto Terokkar Forest/0 51.32,41.91 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Figluster's Mudfish",{
expansion="mists",
mopready=true,
description="Figluster's Mudfish can be fished in Nagrand.",
meta={goldtype="route",skillreq={fishing=300},levelreq=64},
items={27435},
maps={"Nagrand"},
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
collect Figluster's Mudfish##27435 |goto Nagrand/0 57.97,32.98 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Icefin Bluefish",{
expansion="mists",
mopready=true,
description="Icefin Bluefish can be fished in Nagrand.",
meta={goldtype="route",skillreq={fishing=300},levelreq=64},
items={27437},
maps={"Nagrand"},
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
collect Icefin Bluefish##27437 |goto Nagrand/0 57.97,32.98 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Loch Frenzy",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={fishing=1},levelreq=10},
items={6317},
maps={"Loch Modan"},
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
collect Raw Loch Frenzy##6317 |n |goto Loch Modan/0 55.08,68.10
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Brilliant Smallfish",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={fishing=1},levelreq=1},
items={6291},
maps={"Mulgore"},
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
Fish in the open water
collect Raw Brilliant Smallfish##6291 |n |goto Mulgore/0 48.60,52.66
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Slitherskin Mackerel",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={fishing=1},levelreq=1},
items={6303},
maps={"Durotar"},
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
Fish in the open water
collect Raw Slitherskin Mackerel##6303 |n |goto Durotar/0 56.41,10.85
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Rainbow Fin Albacore",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={fishing=1},levelreq=10},
items={6361},
maps={"The Barrens"},
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
Fish in the Open Water
collect Raw Rainbow Fin Albacore##6361 |n |goto The Barrens/0 68.65,36.15
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Longjaw Mud Snapper",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={fishing=1},levelreq=1},
items={6289},
maps={"Orgrimmar"},
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
Fish in the Open Water
collect Raw Longjaw Mud Snapper##6289 |n |goto Orgrimmar/1 69.75,30.12
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Bristle Whisker Catfish",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={fishing=1},levelreq=1},
items={6308},
maps={"Orgrimmar"},
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
Fish in the Open Water
collect Raw Bristle Whisker Catfish##6308 |n |goto Orgrimmar/1 69.75,30.12
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Sagefish",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={fishing=1},levelreq=20},
items={21071},
maps={"Hillsbrad Foothills"},
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
Fish from Sagefish Schools in the water around this area
collect Raw Sagefish##21071 |n |goto Hillsbrad Foothills/0 61.38,42.49
|tip Follow the river north for more schools.
|tip You will need level 100 Fishing to catch these.
You can find more around [42.70,13.29]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Mithril Head Trout",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={fishing=1},levelreq=30},
items={8365},
maps={"Desolace"},
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
Fish in the Open Water
collect Raw Mithril Head Trout##8365 |n |goto Desolace/0 21.47,74.18
|tip You will need level 130 Fishing to catch these.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Rockscale Cod",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={fishing=1},levelreq=30},
items={6362},
maps={"Stranglethorn Vale"},
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
Fish in the Open Water
collect Raw Rockscale Cod##6362 |n |goto Stranglethorn Vale/0 35.81,53.43
|tip You will need level 130 Fishing to catch these.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Sunscale Salmon",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={fishing=1},levelreq=35},
items={13760},
maps={"Feralas"},
},[[
step
|equipped Fishing Pole##6256 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
|equipped Arcanite Fishing Pole##19970 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
|equipped Big Iron Fishing Pole##6367 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
|equipped Blump Family Fishing Pole##12225 |only if itemcount(12225) >= 1 |or
|equipped Bone Fishing Pole##45991 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
|equipped Darkwood Fishing Pole##6366 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
|equipped Jeweled Fishing Pole##45992 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
|equipped Mastercraft Kalu'ak Fishing Pole##44050 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
|equipped Nat Pagle's Extreme Angler FC-5000##19022 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
|equipped Nat's Lucky Fishing Pole##45858 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
|equipped Seth's Graphite Fishing Pole##25978 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
|equipped Strong Fishing Pole##6365 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
step
Fish in the Open Water
collect Raw Sunscale Salmon##13760 |n |goto Feralas/0 75.58,44.52
|tip You will need level 205 Fishing to catch these.
|tip This fish can only be caught during the day; they cannot be caught between midnight and 6 AM server time.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Silverleaf",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=1},levelreq=1},
items={765},
maps={"Tirisfal Glades"},
},[[
step
map Tirisfal Glades/0
path follow smart; loop on; ants curved; dist 20
path	51.54,54.24	50.24,56.05	47.60,53.12	45.65,51.89	46.96,47.83
path	44.74,46.19	42.79,42.59	41.45,40.79	39.11,40.30	38.92,43.20
path	38.50,46.14	36.48,47.41	34.54,48.14	32.02,48.17	31.72,50.34
path	33.92,51.19	37.36,51.84	38.60,52.08	39.77,54.03	40.68,58.21
path	40.92,60.80	41.92,63.49	44.02,65.29	46.57,66.37	49.11,67.48
path	50.44,66.83	51.57,64.64	54.10,62.49	56.28,59.15	56.53,55.12
path	53.81,53.15	52.04,54.99
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
collect Silverleaf##765 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Peacebloom",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=1},levelreq=1},
items={2447},
maps={"Tirisfal Glades"},
},[[
step
map Tirisfal Glades/0
path follow smart; loop on; ants curved; dist 20
path	51.54,54.24	50.24,56.05	47.60,53.12	45.65,51.89	46.96,47.83
path	44.74,46.19	42.79,42.59	41.45,40.79	39.11,40.30	38.92,43.20
path	38.50,46.14	36.48,47.41	34.54,48.14	32.02,48.17	31.72,50.34
path	33.92,51.19	37.36,51.84	38.60,52.08	39.77,54.03	40.68,58.21
path	40.92,60.80	41.92,63.49	44.02,65.29	46.57,66.37	49.11,67.48
path	50.44,66.83	51.57,64.64	54.10,62.49	56.28,59.15	56.53,55.12
path	53.81,53.15	52.04,54.99
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
collect Peacebloom##2447 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Earthroot",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=1},levelreq=1},
items={2449},
maps={"Mulgore"},
},[[
step
map Mulgore/0
path follow smart; loop on; ants curved; dist 20
path	35.22,70.19	34.72,69.90	34.64,69.25	35.05,67.37	35.10,65.67
path	35.38,64.19	34.56,61.98	34.63,60.89	35.38,59.65	35.01,57.60
path	35.05,55.60	34.60,54.40	35.32,52.91	35.58,51.19	34.88,50.64
path	33.77,49.73	32.70,49.04	32.14,48.91	31.52,50.19	31.00,49.69
path	31.08,48.09	32.13,47.39	33.51,47.41	34.36,46.94	35.20,44.68
path	34.43,43.11	33.13,43.15	31.31,42.10	31.75,40.60	32.81,40.41
path	33.40,40.69	34.14,40.11	34.71,38.48	34.60,36.52	34.37,34.32
path	33.86,32.15	32.88,30.48	31.85,28.84	29.70,27.05	29.25,25.10
path	29.00,23.41	29.26,20.35	31.05,19.76	31.99,19.31
map Thunder Bluff/0
path	23.68,3.44
map Mulgore/0
path	35.83,16.33	37.25,14.62	37.67,13.01	36.13,11.11	36.32,9.79
path	37.09,9.17	37.49,8.53	38.02,6.70	38.55,5.62	40.57,7.25
path	41.31,8.18	43.97,8.03	45.51,7.75	46.82,7.87	49.28,7.68
path	51.05,7.59	51.78,6.21	52.70,5.77	53.38,6.31	53.54,8.26
path	53.54,9.93	54.76,10.71	55.59,11.47	56.19,13.30	56.21,15.43
path	56.29,17.33	56.79,17.57	58.54,19.03	61.01,20.23	61.68,22.64
path	61.70,24.57	61.59,26.52	59.66,28.70	58.69,29.74	57.38,32.58
path	56.76,35.28	56.29,38.79	55.97,41.45	56.40,44.45	57.81,45.95
path	59.46,47.55	60.18,48.65	61.45,49.77	62.52,50.79	62.84,53.00
path	62.45,55.44	64.26,58.39	65.89,62.05	67.11,65.93	66.53,67.72
path	65.00,69.39	62.70,70.68	60.50,70.76	59.01,71.17	57.31,73.31
path	56.02,74.71	55.63,74.45	54.91,73.38	53.42,73.82	52.01,71.26
path	51.02,70.96	49.19,72.26	47.46,72.23	45.51,71.36	44.21,71.55
path	41.73,73.67	39.26,74.40	37.01,73.52
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
collect Earthroot##2449 |n
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Briarthorn",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=1},levelreq=10},
items={2450},
maps={"Silverpine Forest"},
},[[
step
label "Path_One"
map Silverpine Forest/0
path follow smart; loop off; dist 20
path	49.04,32.38	49.42,35.61	49.42,37.96	49.76,40.18	50.52,43.34
path	52.66,43.16	54.51,44.07	52.79,45.65	51.98,49.91	52.04,52.85
path	51.86,56.81	52.43,59.23	51.75,62.42	54.26,63.98	55.27,61.88
path	56.68,60.37	58.05,62.07	56.16,64.50	54.77,66.89	54.34,71.81
path	54.65,74.35	56.82,76.43	59.65,77.20	61.93,77.46	64.26,78.75
path	66.96,79.79
Click herbs as you follow the path around this area
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Track them on your minimap with "Find Herbs".
collect Briarthorn##2450 |n
'|goto Silverpine Forest/0 66.96,79.79 < 20 |noway |c
step
map Silverpine Forest/0
path follow smart; loop off; dist 20
path	66.96,79.79	64.26,78.75	61.93,77.46	59.65,77.20	56.82,76.43
path	54.65,74.35	54.34,71.81	54.77,66.89	56.16,64.50	58.05,62.07
path	56.68,60.37	55.27,61.88	54.26,63.98	51.75,62.42	52.43,59.23
path	51.86,56.81	52.04,52.85	51.98,49.91	52.79,45.65	54.51,44.07
path	52.66,43.16	50.52,43.34	49.76,40.18	49.42,37.96	49.42,35.61
path	49.04,32.38
Click herbs as you follow the path around this area
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Track them on your minimap with "Find Herbs".
collect Briarthorn##2450 |n
'|goto Silverpine Forest/0 49.04,32.38 < 20 |noway |c |next "Path_One"
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Grave Moss",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=105},levelreq=20},
items={3369},
maps={"Wetlands"},
},[[
step
Click herbs around this area
|tip Track them on your minimap with "Find Herbs".
|tip They spawn in this small area.
|tip You will need at least 105 Herbalism skill to gather these.
collect Grave Moss##3369 |n |goto Wetlands/0 44.07,26.40
You can find more inside the crypt at [44.27,25.39]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Liferoot",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=150},levelreq=20},
items={3357},
maps={"Wetlands"},
},[[
step
label "Path_One"
map Wetlands/0
path follow smart; loop off; dist 20
path	39.88,29.56	42.39,32.16	44.42,36.02	50.85,37.60	53.92,41.52
path	55.96,45.32	59.97,50.83	61.97,56.83	64.42,68.06	63.29,74.88
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 150 Herbalism skill to gather these.
collect Liferoot##3357 |n
'|goto Wetlands/0 63.29,74.88 < 20 |noway |c
step
map Wetlands/0
path follow smart; loop off; dist 20
path	63.29,74.88	64.42,68.06	61.97,56.83	59.97,50.83	55.96,45.32
path	53.92,41.52	50.85,37.60	44.42,36.02	42.39,32.16	39.88,29.56
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 150 Herbalism skill to gather these.
collect Liferoot##3357 |n
'|goto Wetlands/0 39.88,29.56 < 20 |noway |c |next "Path_One"
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Fadeleaf",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=150},levelreq=30},
items={3818},
maps={"Stranglethorn Vale"},
},[[
step
map Stranglethorn Vale/0
path follow smart; loop on; ants straight; dist 30
path	49.45,10.57	48.12,15.04	49.07,18.49	46.62,19.50	42.69,17.68
path	43.11,22.88	41.16,27.28	44.83,34.99	45.80,43.54	40.95,44.14
path	37.46,47.35	37.28,51.60	39.19,56.20	42.32,61.61	45.84,65.53
path	47.45,61.68	47.26,57.65	49.85,55.73	50.58,49.54	49.59,41.91
path	51.92,33.55	53.22,31.69	54.47,27.92	58.38,28.73	62.17,31.34
path	62.14,27.41
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip Watch out for horde guards along the main road.
|tip You will need at least 150 Herbalism skill to gather these.
collect Fadeleaf##3818 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Wildvine",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=210},levelreq=30},
items={8153},
maps={"The Hinterlands"},
},[[
step
Kill Vilebranch Enemies around this area
collect Wildvine##8153 |n |goto The Hinterlands/0 66.46,71.42
|tip They have a 10% chance to be gathered from Purple Lotus around the Altar.
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 210 Herbalism skill to gather these.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Blindweed",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=235},levelreq=52},
items={8839},
maps={"Swamp of Sorrows"},
},[[
step
map Swamp of Sorrows/0
path follow smart; loop on; ants curved; dist 20
path	23.34,47.48	26.00,39.24	28.21,37.10	31.38,35.00	36.11,36.48
path	38.30,35.54	40.98,35.26	42.49,39.06	44.13,40.53	46.07,41.10
path	46.56,38.70	49.85,36.00	52.70,36.48	54.71,36.25	57.38,33.20
path	58.78,30.30	62.57,29.33	66.36,28.36	68.29,25.21	69.20,20.52
path	69.38,15.92	72.73,13.20	76.51,14.32	78.04,18.24	81.03,21.94
path	82.49,25.63	82.43,31.77	82.80,37.29	86.93,38.06	88.09,44.02
path	88.14,49.77	85.09,53.96	86.43,57.71	84.56,62.68	84.28,67.90
path	81.40,71.41	78.10,69.78	76.69,64.12	78.72,58.47	80.88,55.22
path	81.42,48.27	81.70,43.61	79.06,40.69	77.48,38.74	76.64,34.28
path	73.75,33.11	70.93,33.86	68.69,31.71	65.67,35.50	61.30,37.56
path	58.02,38.46	54.71,41.87	53.10,42.33	49.93,42.29	47.27,43.26
path	44.52,45.19	42.66,47.65	39.83,49.22	36.79,51.04	33.83,51.96
path	29.04,54.25
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 235 Herbalism skill to gather these.
collect Blindweed##8839 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Ghost Mushroom",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=245},levelreq=30},
items={8845},
maps={"The Hinterlands"},
},[[
step
map The Hinterlands/0
path follow smart; loop on; ants curved; dist 20
path	57.75,46.26	59.21,44.51	59.83,40.90	57.54,38.67	55.82,38.52
path	54.48,40.89	54.34,43.82	55.65,46.02
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 245 Herbalism skill to gather these.
|tip They spawn inside of the cave along this path as well as outside of it.
collect Ghost Mushroom##8845 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Mountain Silversage",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=280},levelreq=50},
items={13465},
maps={"Un'Goro Crater"},
},[[
step
map Un'Goro Crater/0
path follow smart; loop on; ants curved; dist 20
path	69.50,80.51	66.73,78.96	62.06,80.45	60.17,83.38	57.90,84.92
path	56.43,85.63	52.59,86.79	50.45,85.64	47.59,86.84	44.06,85.48
path	40.43,83.69	37.58,82.20	36.74,80.02	34.35,78.80	30.60,79.47
path	29.81,78.29	29.45,73.80	29.51,71.95	30.47,70.66	30.12,68.78
path	26.87,68.47	26.22,63.87	24.35,55.86	24.60,51.19	24.66,49.08
path	24.29,47.04	24.87,40.95	26.12,37.25	26.47,32.27	28.16,29.95
path	29.28,30.78	30.53,29.41	29.59,24.96	30.56,20.83	33.11,20.72
path	34.48,21.20	36.41,20.34	38.57,16.60	42.23,16.10	44.74,14.15
path	48.26,13.20	49.78,17.80	51.76,16.54	52.14,13.12	54.40,13.42
path	56.79,14.48	59.79,16.53	62.08,16.53	63.95,19.36	65.85,21.43
path	66.83,23.10	67.79,22.98	68.24,20.16	70.91,20.97	71.45,25.67
path	71.86,28.59	74.60,32.13	74.81,36.14	76.10,40.85	76.77,46.27
path	76.23,50.57	76.85,54.91	75.63,60.70	74.66,64.47	74.30,69.24
path	71.82,70.72	70.92,71.71	71.15,74.12	70.59,75.37	70.92,79.06
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 280 Herbalism skill to gather these.
collect Mountain Silversage##13465 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Icecap",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=270},levelreq=50},
items={13467},
maps={"Winterspring"},
},[[
step
map Winterspring/0
path follow smart; loop on; ants curved; dist 20
path	51.15,36.38	49.02,37.97	47.29,38.82	46.26,37.85	44.98,36.98
path	43.34,37.35	42.00,36.66	40.04,36.95	37.55,36.29	37.03,38.50
path	37.04,40.67	36.22,41.42	34.89,40.49	32.81,37.93	31.53,36.07
path	29.97,36.02	29.97,39.23	29.90,42.23	30.63,44.36	31.61,44.78
path	32.31,44.29	34.16,43.86	34.79,42.97	35.73,43.41	36.55,44.20
path	37.95,44.18	40.05,43.83	41.97,43.60	43.29,44.09	44.44,42.87
path	45.25,41.37	45.82,40.53	46.38,39.95	47.29,40.48	48.43,42.60
path	49.89,44.73	50.67,45.63	52.44,46.41	53.08,44.56	53.42,43.72
path	55.09,43.38	56.62,42.13	57.86,40.63	58.81,39.07	58.04,36.73
path	56.38,36.22	54.08,33.77
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 270 Herbalism skill to gather these.
collect Icecap##13467 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Black Lotus",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=300},levelreq=50},
items={13468},
maps={"Burning Steppes"},
},[[
step
label "Path_One"
map Burning Steppes/0
path follow smart; loop off; dist 20
path	75.56,48.10	67.51,44.35	65.55,42.14	64.07,37.82	63.48,37.82
path	60.30,40.06	49.65,36.46	46.29,34.47	43.06,33.76	41.88,37.36
path	41.46,40.03	42.68,42.14	42.11,43.86	39.76,44.39	35.84,48.89
path	33.34,55.11	31.73,57.80	27.13,61.16	25.14,54.29	22.87,50.09
path	18.10,44.02	15.47,40.51	15.42,34.23	15.35,30.51
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 300 Herbalism skill to gather these.
collect Black Lotus##13468 |n
|tip These are extremely rare.
|tip Pick other herbs on the path to have a chance to spawn them.
'|goto Burning Steppes/0 15.35,30.51 < 20 |noway |c
step
map Burning Steppes/0
path follow smart; loop off; dist 20
path	15.35,30.51	15.42,34.23	15.47,40.51	18.10,44.02	22.87,50.09
path	25.14,54.29	27.13,61.16	31.73,57.80	33.34,55.11	35.84,48.89
path	39.76,44.39	42.11,43.86	42.68,42.14	41.46,40.03	41.88,37.36
path	43.06,33.76	46.29,34.47	49.65,36.46	60.30,40.06	63.48,37.82
path	64.07,37.82	65.55,42.14	67.51,44.35	75.56,48.10
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 300 Herbalism skill to gather these.
collect Black Lotus##13468 |n
|tip These are extremely rare.
|tip Pick other herbs on the path to have a chance to spawn them.
'|goto Burning Steppes/0 75.56,48.10 < 20 |noway |c |next "Path_One"
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Mageroyal",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=1},levelreq=10},
items={785},
maps={"The Barrens"},
},[[
step
map The Barrens/0
path follow smart; loop on; ants straight; dist 30
path	39.36,57.49	34.89,52.89	33.36,50.00	30.07,47.72	29.91,44.17
path	33.29,42.12	35.45,40.82	36.33,37.91	36.65,35.15	35.37,32.30
path	48.42,29.59	50.71,27.22	53.27,25.57	55.42,23.27	55.79,19.31
path	58.97,17.65	66.68,12.45	64.37,22.75	62.88,34.68	59.08,35.10
path	56.55,32.56	53.15,34.00	48.57,41.78	46.26,46.30	53.57,56.68
path	55.00,54.38	55.22,48.55	59.06,47.80	61.38,49.96	64.29,54.33
path	64.83,59.12	65.14,62.68	63.50,66.84	63.61,77.85	60.59,76.48
path	53.29,73.51	51.63,71.03	43.14,70.39
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 50 Herbalism skill to gather these.
collect Mageroyal##785 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Stranglekelp",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=85},levelreq=20},
items={3820},
maps={"Wetlands"},
},[[
step
label "Path_One"
map Wetlands/0
path follow smart; loop on; ants straight; dist 30
path	7.71,72.28	8.64,69.34	10.22,66.09	13.44,62.57	17.65,59.72
path	19.38,57.25	16.89,53.45	5.99,53.34	3.69,53.64	4.32,49.07
path	7.46,44.87	10.27,40.32	11.35,33.11	12.45,27.89	13.62,23.90
path	16.90,21.24	20.12,19.01
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip They are underwater along the path.
|tip Bring Water Walking Potions.
|tip You will need at least 85 Herbalism skill to gather these.
collect Stranglekelp##3820 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Swiftthistle",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=1},levelreq=10},
items={2452},
maps={"Silverpine Forest"},
},[[
step
label "Path_One"
map Silverpine Forest/0
path follow smart; loop off; dist 20
path	49.04,32.38	49.42,35.61	49.42,37.96	49.76,40.18	50.52,43.34
path	52.66,43.16	54.51,44.07	52.79,45.65	51.98,49.91	52.04,52.85
path	51.86,56.81	52.43,59.23	51.75,62.42	54.26,63.98	55.27,61.88
path	56.68,60.37	58.05,62.07	56.16,64.50	54.77,66.89	54.34,71.81
path	54.65,74.35	56.82,76.43	59.65,77.20	61.93,77.46	64.26,78.75
path	66.96,79.79
Click herbs as you follow the path around this area
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Swiftthistle has a chance to be gathered from Briarthorn and Mageroyal.
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 70 Herbalism skill to gather these.
collect Swiftthistle##2452 |n
'|goto Silverpine Forest/0 66.96,79.79 < 20 |noway |c
step
map Silverpine Forest/0
path follow smart; loop off; dist 20
path	66.96,79.79	64.26,78.75	61.93,77.46	59.65,77.20	56.82,76.43
path	54.65,74.35	54.34,71.81	54.77,66.89	56.16,64.50	58.05,62.07
path	56.68,60.37	55.27,61.88	54.26,63.98	51.75,62.42	52.43,59.23
path	51.86,56.81	52.04,52.85	51.98,49.91	52.79,45.65	54.51,44.07
path	52.66,43.16	50.52,43.34	49.76,40.18	49.42,37.96	49.42,35.61
path	49.04,32.38
Click herbs as you follow the path around this area
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Swiftthistle has a chance to be gathered from Briarthorn and Mageroyal.
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 70 Herbalism skill to gather these.
collect Swiftthistle##2452 |n
'|goto Silverpine Forest/0 49.04,32.38 < 20 |noway |c |next "Path_One"
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Bruiseweed",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=1},levelreq=25},
items={2453},
maps={"Stonetalon Mountains"},
},[[
step
label "Bruiseweed_1"
map Stonetalon Mountains/0
path follow smart; loop on; ants straight; dist 30
path	73.00,59.72	66.74,54.82	63.25,56.60	53.01,45.12	52.19,43.22
path	52.78,40.43	49.32,35.40	48.73,32.68	45.84,25.38	41.49,18.24
path	39.73,43.04	37.25,49.59	36.30,51.80	37.78,56.59	58.09,73.47
path	61.22,84.07	63.82,85.60	71.85,83.84	73.87,86.83	74.93,88.92
path	78.14,78.96
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 100 Herbalism skill to gather these.
collect Bruiseweed##2453 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Wild Steelbloom",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=115},levelreq=30},
items={3355},
maps={"Northern Stranglethorn"},
},[[
step
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	41.90,20.67	37.44,18.90	34.85,19.46	32.34,24.69	30.05,30.56
path	31.98,34.72	35.10,35.48	36.39,37.67	36.22,43.48	39.56,45.08
path	41.94,46.79	43.43,52.34	46.37,51.56	48.08,49.67	48.49,45.14
path	48.80,39.39	47.67,35.55	47.51,32.62	54.93,29.17	59.73,28.40
path	63.25,29.41	63.03,23.00	59.49,21.11	57.08,20.01	54.52,20.03
path	52.60,22.27	51.52,24.23	41.44,25.58
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 115 Herbalism skill to gather these.
collect Wild Steelbloom##3355 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Kingsblood",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=125},levelreq=35},
items={3356},
maps={"Western Plaguelands"},
},[[
step
map Western Plaguelands/0
path follow smart; loop on; ants curved; dist 60
path	31.87,59.33	36.90,57.16	43.53,53.27	45.91,44.70	45.21,35.23
path	49.51,35.12	51.02,47.42	55.22,51.34	61.82,52.02	67.25,44.52
path	63.60,56.06	56.61,60.11	52.61,67.55	46.40,59.23	37.91,62.21
path	33.73,62.71
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 125 Herbalism skill to gather these.
collect Kingsblood##3356 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Goldthorn",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=150},levelreq=25},
items={3821},
maps={"Northern Stranglethorn"},
},[[
step
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	63.96,65.99	63.05,62.20	64.55,58.27	64.12,55.92	63.70,52.51
path	62.57,49.88	60.62,47.74	61.76,38.56	62.39,32.52	61.21,28.17
path	58.78,27.10	55.91,28.12	53.10,25.81	42.45,23.59	39.65,21.95
path	37.94,21.19	36.23,21.95	33.54,25.55	30.98,30.62	35.70,35.18
path	35.17,41.49	37.05,44.46	40.60,46.24	48.49,45.42	51.70,48.76
path	54.08,48.34	54.17,57.96	55.21,62.17	57.42,61.55	59.86,63.63
path	63.26,66.36	61.63,61.17	59.25,58.85	59.51,51.62
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 150 Herbalism skill to gather these.
collect Goldthorn##3821 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Khadgar's Whisker",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=160},levelreq=35},
items={3358},
maps={"Western Plaguelands"},
},[[
step
map Western Plaguelands/0
path follow smart; loop on; ants curved; dist 60
path	31.87,59.33	36.90,57.16	43.53,53.27	45.91,44.70	45.21,35.23
path	49.51,35.12	51.02,47.42	55.22,51.34	61.82,52.02	67.25,44.52
path	63.60,56.06	56.61,60.11	52.61,67.55	46.40,59.23	37.91,62.21
path	33.73,62.71
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 160 Herbalism skill to gather these.
collect Khadgar's Whisker##3358 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Dragon's Teeth",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=195},levelreq=45},
items={3819},
maps={"Badlands"},
},[[
step
map Badlands/0
path follow smart; loop on; ants straight; dist 30
path	26.15,60.42	31.32,53.08	36.97,46.77	40.47,44.60	37.57,50.16
path	35.91,53.69	30.91,59.25	27.43,60.93
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 195 Herbalism skill to gather these.
collect Dragon's Teeth##3819 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Firebloom",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=205},levelreq=47},
items={4625},
maps={"Searing Gorge"},
},[[
step
map Searing Gorge/0
path follow smart; loop on; ants curved
path	66.96,42.21	64.77,45.07	62.15,45.87	60.53,49.35	59.31,53.04
path	56.48,61.80	55.17,68.25	49.61,67.64	44.84,70.37	40.79,73.38
path	36.75,73.46	31.44,67.49	31.13,59.44	28.96,55.58	27.38,50.10
path	29.56,44.58	31.72,41.24	35.79,45.59	38.99,42.72	43.55,41.63
path	46.74,42.22	51.97,39.92	57.25,36.61	60.63,34.56	64.32,33.64
path	68.22,35.32
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 205 Herbalism skill to gather these.
collect Firebloom##4625 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Purple Lotus",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=210},levelreq=45},
items={8831},
maps={"Felwood"},
},[[
step
label "Start_Path"
Search the area |goto Felwood/0 57.68,85.44 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect Purple Lotus##8831 |n
step
Search the area |goto Felwood/0 56.28,84.52 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect Purple Lotus##8831 |n
step
Search the area |goto Felwood/0 39.19,69.90 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect Purple Lotus##8831 |n
step
Search the area |goto Felwood/0 37.46,68.04 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect Purple Lotus##8831 |n
step
Search the area |goto Felwood/0 37.51,65.66 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect Purple Lotus##8831 |n
step
Search the area |goto Felwood/0 39.70,45.10 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect Purple Lotus##8831 |n
step
Search the area |goto Felwood/0 42.60,36.20 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect Purple Lotus##8831 |n
step
Search the area |goto Felwood/0 49.60,31.52 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect Purple Lotus##8831 |n
step
Search the area |goto Felwood/0 49.08,30.02 < 20 |c |next "Start_Path"
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect Purple Lotus##8831 |n
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Sungrass",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=230},levelreq=47},
items={8838},
maps={"Searing Gorge"},
},[[
step
map Searing Gorge/0
path follow smart; loop on; ants curved
path	66.96,42.21	64.77,45.07	62.15,45.87	60.53,49.35	59.31,53.04
path	56.48,61.80	55.17,68.25	49.61,67.64	44.84,70.37	40.79,73.38
path	36.75,73.46	31.44,67.49	31.13,59.44	28.96,55.58	27.38,50.10
path	29.56,44.58	31.72,41.24	35.79,45.59	38.99,42.72	43.55,41.63
path	46.74,42.22	51.97,39.92	57.25,36.61	60.63,34.56	64.32,33.64
path	68.22,35.32
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 230 Herbalism skill to gather these.
collect Sungrass##8838 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Gromsblood",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=250},levelreq=45},
items={8846},
maps={"Felwood"},
},[[
step
map Felwood/0
path follow smart; loop on; ants curved
path	48.25,74.18	45.57,71.52	45.19,67.93	44.99,64.81	43.75,63.75
path	42.60,61.94	42.10,60.44	42.52,58.39	42.19,55.80	42.12,53.77
path	42.52,51.99	42.46,49.04	43.22,46.66	42.28,45.26	43.25,43.10
path	44.86,43.11	46.09,41.05	45.72,36.88	46.03,33.95	47.65,33.39
path	51.14,32.99	51.89,29.81	53.84,27.92	55.31,24.24	55.39,22.27
path	56.09,21.01	57.54,18.62	56.84,16.17	55.09,15.09	53.16,14.49
path	50.54,15.11	49.43,15.94	47.64,18.21	46.30,21.16	45.98,22.93
path	43.76,23.67	42.49,24.58	40.74,26.31	41.42,27.63	41.25,30.12
path	40.28,31.55	39.63,32.74	40.28,34.49	39.88,36.76	39.02,41.56
path	38.95,44.99	40.65,46.99	39.91,49.88	39.07,53.19	38.83,55.66
path	39.72,58.29	41.23,59.18	41.60,60.63	42.10,62.62	41.71,64.52
path	40.58,65.26	40.40,68.00	39.31,70.23	39.26,71.58	41.53,72.75
path	41.89,74.07	40.92,76.49	41.72,78.38	43.01,80.29	44.69,81.19
path	45.84,83.32	47.74,82.92	49.87,80.73
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 250 Herbalism skill to gather these.
collect Gromsblood##8846 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Golden Sansam",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=260},levelreq=52},
items={13464},
maps={"Swamp of Sorrows"},
},[[
step
map Swamp of Sorrows/0
path follow smart; loop on; ants curved; dist 60
path	17.62,52.92	21.60,54.68	30.93,60.71	39.41,56.93	51.73,59.62
path	64.51,67.32	73.31,81.92	82.02,76.03	85.30,62.66	87.62,39.95
path	84.93,31.21	80.12,20.61	66.51,22.72	56.81,31.92	47.01,36.01
path	36.11,39.86	26.93,42.92
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 260 Herbalism skill to gather these.
collect Golden Sansam##13464 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Dreamfoil",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=270},levelreq=45},
items={13463},
maps={"Felwood"},
},[[
step
map Felwood/0
path follow smart; loop on; ants curved
path	48.25,74.18	45.57,71.52	45.19,67.93	44.99,64.81	43.75,63.75
path	42.60,61.94	42.10,60.44	42.52,58.39	42.19,55.80	42.12,53.77
path	42.52,51.99	42.46,49.04	43.22,46.66	42.28,45.26	43.25,43.10
path	44.86,43.11	46.09,41.05	45.72,36.88	46.03,33.95	47.65,33.39
path	51.14,32.99	51.89,29.81	53.84,27.92	55.31,24.24	55.39,22.27
path	56.09,21.01	57.54,18.62	56.84,16.17	55.09,15.09	53.16,14.49
path	50.54,15.11	49.43,15.94	47.64,18.21	46.30,21.16	45.98,22.93
path	43.76,23.67	42.49,24.58	40.74,26.31	41.42,27.63	41.25,30.12
path	40.28,31.55	39.63,32.74	40.28,34.49	39.88,36.76	39.02,41.56
path	38.95,44.99	40.65,46.99	39.91,49.88	39.07,53.19	38.83,55.66
path	39.72,58.29	41.23,59.18	41.60,60.63	42.10,62.62	41.71,64.52
path	40.58,65.26	40.40,68.00	39.31,70.23	39.26,71.58	41.53,72.75
path	41.89,74.07	40.92,76.49	41.72,78.38	43.01,80.29	44.69,81.19
path	45.84,83.32	47.74,82.92	49.87,80.73
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 270 Herbalism skill to gather these.
collect Dreamfoil##13463 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Sorrowmoss",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={herbalism=285},levelreq=52},
items={13466},
maps={"Swamp of Sorrows"},
},[[
step
map Swamp of Sorrows/0
path follow smart; loop on; ants curved
path	79.43,23.24	80.24,29.00	82.21,34.79	82.97,38.90	78.73,41.57
path	73.59,37.34	72.42,28.75	70.52,27.66	68.03,29.89	64.63,31.51
path	60.85,35.55	62.39,40.76	61.54,47.25	60.82,53.13	61.60,58.25
path	64.65,62.71	68.42,64.96	70.44,64.80	74.33,64.93	77.84,60.88
path	81.94,61.08	86.01,64.26	84.08,70.58	81.74,75.79	78.79,76.80
path	75.71,77.78	72.47,78.28	69.87,74.91	67.39,73.78	64.65,67.59
path	62.31,64.70	57.94,61.25	53.18,57.17	52.23,52.27	51.62,48.12
path	47.97,46.03	44.54,47.68	42.03,51.93	39.10,57.14	36.33,58.75
path	32.35,58.59	27.32,55.05	24.51,50.78	23.21,46.57	26.76,41.34
path	30.64,39.58	33.75,38.86	37.68,40.21	41.52,38.80	45.01,37.32
path	49.19,35.80	54.20,35.02	56.53,34.96	60.47,27.47	62.18,25.26
path	65.76,20.96	68.69,20.85
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 285 Herbalism skill to gather these.
collect Sorrowmoss##13466 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Copper Ore",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={mining=1},levelreq=1},
items={2770},
maps={"Durotar"},
},[[
step
map Durotar/0
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+
|tip Track them on your minimap with "Find Minerals".
collect Copper Ore##2770 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Rough Stone",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={mining=1},levelreq=1},
items={2835},
maps={"Durotar"},
},[[
step
map Durotar/0
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+
|tip Track them on your minimap with "Find Minerals".
collect Rough Stone##2835 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Tin Ore",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={mining=50},levelreq=20},
items={2771},
maps={"Ashenvale"},
},[[
step
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale/0
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Tin Vein##1732+
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 50 Mining to collect these.
collect Tin Ore##2771 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Coarse Stone",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={mining=50},levelreq=20},
items={2836},
maps={"Ashenvale"},
},[[
step
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale/0
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Tin Vein##1732+
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 50 Mining to collect these.
collect Coarse Stone##2836 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Silver Ore",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={mining=50},levelreq=20},
items={2775},
maps={"Ashenvale"},
},[[
step
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale/0
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Silver Vein##1733+
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 50 Mining to collect these.
collect Silver Ore##2775 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Moss Agate",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={mining=50},levelreq=20},
items={1206},
maps={"Ashenvale"},
},[[
step
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale/0
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Tin Vein##1732+
click Silver Vein##1733+
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 50 Mining to collect these.
collect Moss Agate##1206 |n
|tip These are a rare drop from Tin and Silver Ore nodes.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Iron Ore",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={mining=100},levelreq=30},
items={2772},
maps={"Feralas"},
},[[
step
map Feralas/0
path	follow loose; loop on; ants curved; dist 20
path	 84.90,39.90	81.80,39.30	79.20,37.20
path	75.30,35.50	71.50,34.70	68.40,39.70
path	68.10,46.10	70.00,48.60	68.70,52.00
path	65.50,52.50	63.80,54.90	61.50,50.50
path	58.20,51.40	53.80,49.40	48.60,44.00
path	48.60,38.80	49.70,34.90	51.60,33.80
path	49.50,26.10	51.70,25.50	51.30,19.00
path	52.70,16.50	54.90,8.10	53.40,5.50
path	51.60,4.80	48.50,11.50	46.10,7.20
path	42.00,8.20	40.00,7.70	37.10,12.10
path	38.20,18.60	37.00,25.60	41.20,25.50
path	41.50,17.20	45.20,21.10	46.00,15.70
path	47.70,22.10	46.20,26.60	47.20,34.70
path	46.70,44.90	50.30,52.70	54.80,53.90
path	55.00,59.80	54.60,64.00	52.90,66.20
path	53.60,73.70	55.50,75.70	61.50,75.00
path	61.60,68.90	64.00,68.90	61.90,66.20
path	61.00,59.10	64.10,58.70	63.70,61.00
path	65.80,63.50	68.10,61.50	71.60,65.10
path	77.20,62.10	75.90,53.50	76.20,49.60
path	79.50,46.20	84.00,45.60	82.50,43.10
click Iron Deposit##1735+
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 100 Mining to collect these.
collect Iron Ore##2772 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Heavy Stone",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={mining=1},levelreq=30},
items={2838},
maps={"Feralas"},
},[[
step
map Feralas/0
path	follow loose; loop on; ants curved; dist 20
path	 84.90,39.90	81.80,39.30	79.20,37.20
path	75.30,35.50	71.50,34.70	68.40,39.70
path	68.10,46.10	70.00,48.60	68.70,52.00
path	65.50,52.50	63.80,54.90	61.50,50.50
path	58.20,51.40	53.80,49.40	48.60,44.00
path	48.60,38.80	49.70,34.90	51.60,33.80
path	49.50,26.10	51.70,25.50	51.30,19.00
path	52.70,16.50	54.90,8.10	53.40,5.50
path	51.60,4.80	48.50,11.50	46.10,7.20
path	42.00,8.20	40.00,7.70	37.10,12.10
path	38.20,18.60	37.00,25.60	41.20,25.50
path	41.50,17.20	45.20,21.10	46.00,15.70
path	47.70,22.10	46.20,26.60	47.20,34.70
path	46.70,44.90	50.30,52.70	54.80,53.90
path	55.00,59.80	54.60,64.00	52.90,66.20
path	53.60,73.70	55.50,75.70	61.50,75.00
path	61.60,68.90	64.00,68.90	61.90,66.20
path	61.00,59.10	64.10,58.70	63.70,61.00
path	65.80,63.50	68.10,61.50	71.60,65.10
path	77.20,62.10	75.90,53.50	76.20,49.60
path	79.50,46.20	84.00,45.60	82.50,43.10
click Iron Deposit##1735+
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 100 Mining to collect these.
collect Heavy Stone##2838 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Gold Ore",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={mining=115},levelreq=30},
items={2776},
maps={"Feralas"},
},[[
step
map Feralas/0
path	follow loose; loop on; ants curved; dist 20
path	 84.90,39.90	81.80,39.30	79.20,37.20
path	75.30,35.50	71.50,34.70	68.40,39.70
path	68.10,46.10	70.00,48.60	68.70,52.00
path	65.50,52.50	63.80,54.90	61.50,50.50
path	58.20,51.40	53.80,49.40	48.60,44.00
path	48.60,38.80	49.70,34.90	51.60,33.80
path	49.50,26.10	51.70,25.50	51.30,19.00
path	52.70,16.50	54.90,8.10	53.40,5.50
path	51.60,4.80	48.50,11.50	46.10,7.20
path	42.00,8.20	40.00,7.70	37.10,12.10
path	38.20,18.60	37.00,25.60	41.20,25.50
path	41.50,17.20	45.20,21.10	46.00,15.70
path	47.70,22.10	46.20,26.60	47.20,34.70
path	46.70,44.90	50.30,52.70	54.80,53.90
path	55.00,59.80	54.60,64.00	52.90,66.20
path	53.60,73.70	55.50,75.70	61.50,75.00
path	61.60,68.90	64.00,68.90	61.90,66.20
path	61.00,59.10	64.10,58.70	63.70,61.00
path	65.80,63.50	68.10,61.50	71.60,65.10
path	77.20,62.10	75.90,53.50	76.20,49.60
path	79.50,46.20	84.00,45.60	82.50,43.10
click Gold Vein##1734+
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 115 Mining to collect these.
collect Gold Ore##2776 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Mithril Ore",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={mining=150},levelreq=30},
items={3858},
maps={"The Hinterlands"},
},[[
step
label "Begin_Farming_Mithril_Ore"
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	22.32,54.98	23.55,51.83	26.37,53.38	28.56,52.55	31.62,51.82
path	32.90,49.43	32.52,45.27	33.35,42.82	37.00,44.27	38.68,49.34
path	40.06,46.12	41.79,45.36	43.39,45.31	45.26,44.46	48.22,42.83
path	50.09,45.81	52.30,43.80	54.20,41.70	55.89,38.55	57.58,38.26
path	59.27,40.29	61.27,40.65	64.16,42.61	64.42,45.56	65.99,50.86
path	67.14,51.59	68.90,51.63	71.46,50.92	77.39,49.20	78.12,50.19
path	77.31,51.56	75.77,54.07	74.39,56.04	72.26,60.38	72.06,64.08
path	71.87,65.66	70.00,63.83	67.35,62.94	64.88,62.27	63.77,62.36
path	63.02,60.36	62.46,58.05	60.95,56.00	59.95,54.56	58.25,51.61
path	57.52,50.17	56.53,51.66	55.04,53.13	53.74,54.42	53.21,56.28
path	52.25,58.96	51.38,63.60	51.49,67.71	49.89,70.12	48.81,71.36
path	47.41,70.20	44.61,70.37	43.56,68.65	42.90,67.26	42.47,62.95
path	41.38,61.30	40.46,62.25	38.34,63.41	35.95,62.96	35.91,65.38
path	36.03,67.84	35.26,70.66	35.50,72.88	35.79,74.04	33.83,74.25
path	32.47,73.37	30.82,71.94	31.27,70.10	32.37,70.01	33.90,68.55
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 150 Mining to collect these.
collect Mithril Ore##3858 |n
'|goto The Hinterlands/0 33.90,68.55 < 30 |c |noway
step
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	35.45,66.69	35.69,63.65	33.97,60.80	33.10,57.98	31.77,55.79
path	30.30,55.75	29.53,55.60	28.77,56.41	27.40,58.19	27.70,60.14
path	27.42,68.06	26.09,66.01	25.62,63.37	24.61,58.76	23.02,56.86
path	21.44,56.49
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 175 Mining to collect these.
collect Mithril Ore##3858 |n
'|goto The Hinterlands/0 21.44,56.49 < 30 |c |noway |next "Begin_Farming_Mithril_Ore"
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Solid Stone",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={mining=150},levelreq=30},
items={7912},
maps={"The Hinterlands"},
},[[
step
label "Begin_Farming_Solid_Stone"
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	22.32,54.98	23.55,51.83	26.37,53.38	28.56,52.55	31.62,51.82
path	32.90,49.43	32.52,45.27	33.35,42.82	37.00,44.27	38.68,49.34
path	40.06,46.12	41.79,45.36	43.39,45.31	45.26,44.46	48.22,42.83
path	50.09,45.81	52.30,43.80	54.20,41.70	55.89,38.55	57.58,38.26
path	59.27,40.29	61.27,40.65	64.16,42.61	64.42,45.56	65.99,50.86
path	67.14,51.59	68.90,51.63	71.46,50.92	77.39,49.20	78.12,50.19
path	77.31,51.56	75.77,54.07	74.39,56.04	72.26,60.38	72.06,64.08
path	71.87,65.66	70.00,63.83	67.35,62.94	64.88,62.27	63.77,62.36
path	63.02,60.36	62.46,58.05	60.95,56.00	59.95,54.56	58.25,51.61
path	57.52,50.17	56.53,51.66	55.04,53.13	53.74,54.42	53.21,56.28
path	52.25,58.96	51.38,63.60	51.49,67.71	49.89,70.12	48.81,71.36
path	47.41,70.20	44.61,70.37	43.56,68.65	42.90,67.26	42.47,62.95
path	41.38,61.30	40.46,62.25	38.34,63.41	35.95,62.96	35.91,65.38
path	36.03,67.84	35.26,70.66	35.50,72.88	35.79,74.04	33.83,74.25
path	32.47,73.37	30.82,71.94	31.27,70.10	32.37,70.01	33.90,68.55
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 150 Mining to collect these.
collect Solid Stone##7912 |n
'|goto The Hinterlands/0 33.90,68.55 < 30 |c |noway
step
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	35.45,66.69	35.69,63.65	33.97,60.80	33.10,57.98	31.77,55.79
path	30.30,55.75	29.53,55.60	28.77,56.41	27.40,58.19	27.70,60.14
path	27.42,68.06	26.09,66.01	25.62,63.37	24.61,58.76	23.02,56.86
path	21.44,56.49
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 175 Mining to collect these.
collect Solid Stone##7912 |n
'|goto The Hinterlands/0 21.44,56.49 < 30 |c |noway |next "Begin_Farming_Solid_Stone"
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Truesilver Ore",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={mining=150},levelreq=30},
items={7911},
maps={"The Hinterlands"},
},[[
step
label "Begin_Farming_Truesilver_Ore"
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	22.32,54.98	23.55,51.83	26.37,53.38	28.56,52.55	31.62,51.82
path	32.90,49.43	32.52,45.27	33.35,42.82	37.00,44.27	38.68,49.34
path	40.06,46.12	41.79,45.36	43.39,45.31	45.26,44.46	48.22,42.83
path	50.09,45.81	52.30,43.80	54.20,41.70	55.89,38.55	57.58,38.26
path	59.27,40.29	61.27,40.65	64.16,42.61	64.42,45.56	65.99,50.86
path	67.14,51.59	68.90,51.63	71.46,50.92	77.39,49.20	78.12,50.19
path	77.31,51.56	75.77,54.07	74.39,56.04	72.26,60.38	72.06,64.08
path	71.87,65.66	70.00,63.83	67.35,62.94	64.88,62.27	63.77,62.36
path	63.02,60.36	62.46,58.05	60.95,56.00	59.95,54.56	58.25,51.61
path	57.52,50.17	56.53,51.66	55.04,53.13	53.74,54.42	53.21,56.28
path	52.25,58.96	51.38,63.60	51.49,67.71	49.89,70.12	48.81,71.36
path	47.41,70.20	44.61,70.37	43.56,68.65	42.90,67.26	42.47,62.95
path	41.38,61.30	40.46,62.25	38.34,63.41	35.95,62.96	35.91,65.38
path	36.03,67.84	35.26,70.66	35.50,72.88	35.79,74.04	33.83,74.25
path	32.47,73.37	30.82,71.94	31.27,70.10	32.37,70.01	33.90,68.55
click Truesilver Deposit##2047+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 165 Mining to collect these.
collect Truesilver Ore##7911 |n
'|goto The Hinterlands/0 33.90,68.55 < 30 |c |noway
step
map The Hinterlands/0
path follow smart; loop off; ants curved; dist 30
path	35.45,66.69	35.69,63.65	33.97,60.80	33.10,57.98	31.77,55.79
path	30.30,55.75	29.53,55.60	28.77,56.41	27.40,58.19	27.70,60.14
path	27.42,68.06	26.09,66.01	25.62,63.37	24.61,58.76	23.02,56.86
path	21.44,56.49
click Truesilver Deposit##2047+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 165 Mining to collect these.
collect Truesilver Ore##7911 |n
'|goto The Hinterlands/0 21.44,56.49 < 30 |c |noway |next "Begin_Farming_Truesilver_Ore"
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Dark Iron Ore",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={mining=175},levelreq=50},
items={11370},
maps={"Burning Steppes"},
},[[
step
map Burning Steppes/0
path follow smart; loop on; ants curved; dist 20
path	47.24,33.58	57.79,36.68	60.09,40.49	60.24,30.28	62.87,24.54
path	64.47,23.32	65.45,24.20	64.95,33.28	71.55,39.13	79.50,25.16
path	93.16,52.72	85.24,62.18	74.63,61.27	74.12,55.90	68.15,59.00
path	64.92,57.85	62.02,54.94	47.51,59.50	43.25,60.21
click Dark Iron Deposit##165658+
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 175 Mining to collect these.
|tip These are a rare spawn.
|tip However, they can be found more consistently inside the Blackrock Depths dungeon and Molten Core raid.
collect Dark Iron Ore##11370 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Thorium Ore",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={mining=200},levelreq=50},
items={10620},
maps={"Un'Goro Crater"},
},[[
step
map Un'Goro Crater/0
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Thorium Vein##324+
click Rich Thorium Vein##175404+
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 200 Mining to collect these.
collect Thorium Ore##10620 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Dense Stone",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={mining=200},levelreq=50},
items={12365},
maps={"Un'Goro Crater"},
},[[
step
map Un'Goro Crater/0
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Thorium Vein##324+
click Rich Thorium Vein##175404+
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 200 Mining to collect these.
collect Dense Stone##12365 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Guardian Stone",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={mining=200},levelreq=50},
items={12365},
maps={"Un'Goro Crater"},
},[[
step
map Un'Goro Crater/0
path follow smart; loop on; ants curved; dist 20
path	40.24,18.78	37.48,20.20	33.48,23.57	40.40,25.92	43.96,29.92
path	44.56,36.72	43.43,40.74	44.16,43.79	48.24,41.64	51.27,39.78
path	56.65,39.87	54.16,36.20	55.85,31.39	57.79,26.10	56.20,21.10
path	56.97,14.88	53.59,13.78	51.39,17.24	48.13,13.45
kill Stone Guardian##6560+
|tip These are level 60-61 Elite enemies.
collect Guardian Stone##12809 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Green Whelp Scale",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=30},
items={7392},
maps={"Feralas"},
},[[
step
map Feralas/0
path follow smart; loop on; ants straight; dist 30
path    48.14,6.64    48.72,7.91    48.27,10.45    46.87,11.04    46.84,14.19
path    50.11,15.51    53.01,15.15    54.11,10.94    54.53,8.34    54.49,6.37
path    52.34,5.60    50.63,4.94
kill Noxious Whelp##39384+
|tip Skin their corpses.
collect Green Whelp Scale##7392 |n
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Black Whelp Scale",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=20},
items={7286},
maps={"Wetlands"},
},[[
step
map Wetlands/0
path follow smart; loop on; ants straight; dist 30
path    62.31,48.99    64.01,49.48    64.65,52.28    65.76,54.25    67.71,51.84
path    70.12,48.67    71.74,46.81    69.07,44.89    66.58,43.19    63.75,40.89
path    61.29,38.83
kill Ebon Whelp##42042+
|tip Skin their corpses.
collect Black Whelp Scale##7286 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Ruined Leather Scraps",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=1},
items={2934},
maps={"Durotar"},
},[[
step
map Durotar/0
path follow smart; loop off; ants straight; dist 30
path	42.87,15.34	41.30,16.71	41.05,20.61	42.23,21.28	43.64,21.87
path	44.95,24.42	43.63,27.25	43.70,29.99	44.95,29.96	45.66,28.20
Kill enemies around this area
|tip Skin their corpses.
collect Ruined Leather Scraps##2934 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Light Leather",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=1},
items={2318},
maps={"Durotar"},
},[[
step
map Durotar/0
path follow smart; loop off; ants straight; dist 30
path	42.87,15.34	41.30,16.71	41.05,20.61	42.23,21.28	43.64,21.87
path	44.95,24.42	43.63,27.25	43.70,29.99	44.95,29.96	45.66,28.20
Kill enemies around this area
|tip Skin their corpses.
collect Light Leather##2318 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Slimy Murloc Scale",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=20},
items={5784},
maps={"Ashenvale"},
},[[
step
Enter the Blackfathom Deeps dungeon:
Kill all murloc enemies within the dungeon
collect Slimy Murloc Scale##5784 |n |goto Ashenvale/0 14.44,14.28
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Medium Hide",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=20},
items={4232},
maps={"Wetlands"},
},[[
step
step
map Wetlands/0
path follow smart; loop on; ants straight; dist 30
path	65.17,31.50	67.73,34.57	69.71,37.53	69.72,39.17	72.55,40.59
path	75.75,43.09	74.34,47.16	71.58,47.06	68.67,46.65	66.43,42.33
path	68.50,37.57
Kill Raptor and Dragonkin enemies in the area.
|tip Skin their corpses.
collect Medium Hide##4232 |n
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Heavy Leather",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=35},
items={4234},
maps={"Dustwallow Marsh"},
},[[
step
Kill enemies around this area
|tip Only beast enemies will be skinnable.
|tip You cannot skin the spiders.
|tip Skin their corpses.
collect Heavy Leather##4234 |n |goto Dustwallow Marsh/0 40.73,58.37
You can find more around: |notinsticky
[43.35,50.06]
[40.42,41.57]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Raptor Hide",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=25},
items={4461},
maps={"Northern Stranglethorn"},
},[[
step
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	25.65,30.22	27.84,30.72	29.96,31.83	31.18,32.26	32.43,30.42
path	31.93,27.74
Kill raptor enemies around this area
collect Raptor Hide##4461 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Heavy Hide",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=30},
items={4235},
maps={"The Hinterlands"},
},[[
step
Kill enemies around this area
|tip Skin their corpses.
collect Heavy Hide##4235 |n |goto The Hinterlands/0 16.19,50.97
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Turtle Scale",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=45},
items={8167},
maps={"Tanaris"},
},[[
step
kill Steeljaw Snapper##14123+
|tip Skin their corpses.
collect Turtle Scale##8167 |n |goto Tanaris/0 67.22,25.77
You can find more around: |notinsticky
[67.57,28.82]
[67.85,35.25]
[68.10,39.75]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Thick Murloc Scale",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=35},
items={5785},
maps={"Dustwallow Marsh"},
},[[
step
Kill Mirefin enemies around this area
collect Thick Murloc Scale##5785 |n |goto Dustwallow Marsh/0 58.78,9.45
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Thick Leather",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=50},
items={4304},
maps={"Un'Goro Crater"},
},[[
step
Kill Ravasaur enemies around this area
|tip Skin their corpses.
collect Thick Leather##4304 |n |goto Un'Goro Crater/0 67.37,72.59
You can find more around: |notinsticky
[65.75,64.16]
[70.21,55.33]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Thick Hide",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=50},
items={8169},
maps={"Un'Goro Crater"},
},[[
step
Kill enemies around this area
|tip Only beast enemies will be skinnable.
|tip Skin their corpses.
collect Thick Hide##8169 |n |goto Un'Goro Crater/0 67.37,72.59
|tip These have a low drop rate.
You can find more around: |notinsticky
[65.75,64.16]
[70.21,55.33]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Worn Dragonscale",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=52},
items={8165},
maps={"Swamp of Sorrows"},
},[[
step
Enter the Sunken Temple dungeon:
Kill all dragonkin enemies within the dungeon
|tip Skin their corpses.
collect Worn Dragonscale##8165 |n |goto Swamp of Sorrows/0 69.63,53.77
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Scorpid Scale",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=45},
items={8154},
maps={"Tanaris"},
},[[
step
map Desolace/0
path follow smart; loop on; ants straight; dist 30
path	70.84,30.47	71.26,28.17	70.74,25.26	69.85,22.02	68.46,20.37
path	66.75,19.37	64.49,18.94	60.82,18.93	58.94,20.10	59.54,24.35
path	61.77,28.24	63.91,30.59
Kill scorpions along the path.
collect Scorpid Scale##8154 |n |goto Tanaris/0 50.93,42.32
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Devilsaur Leather",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=50},
items={15417},
maps={"Un'Goro Crater"},
},[[
step
Kill Devilsaur enemies around this area
|tip Skin their corpses.
|tip These are level 54-56 Elite enemies.
|tip It is recommended you clear the area of other enemies before fighting the Devilsaur.
collect Devilsaur Leather##15417 |n |goto Un'Goro Crater/0 34.25,38.82
You can find more around: |notinsticky
[40.02,62.25]
[57.66,70.17]
[71.30,51.78]
[68.80,26.05]
[31.30,25.52]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Rugged Leather",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=50},
items={8170},
maps={"Winterspring"},
},[[
step
Kill Ice Thistle enemies around this area
|tip You can find more inside the cave.
|tip Skin their corpses.
collect Rugged Leather##8170 |n |goto Winterspring/0 64.81,54.76
You can find more inside the cave at [66.87,54.64]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Green Dragonscale",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=52},
items={15412},
maps={"Swamp of Sorrows"},
},[[
step
Enter the Sunken Temple dungeon:
Kill all dragonkin enemies within the dungeon
|tip Skin their corpses.
collect Green Dragonscale##15412 |n |goto Swamp of Sorrows/0 69.63,53.77
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Rugged Hide",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=50},
items={8171},
maps={"Winterspring"},
},[[
step
Kill Ice Thistle enemies around this area
|tip You can find more inside the cave.
|tip Skin their corpses.
collect Rugged Hide##8171 |n |goto Winterspring/0 66.43,44.38
|tip These have a low drop rate.
You can find more inside the cave at [67.67,41.72]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Black Dragonscale",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=47},
items={15416},
maps={"Searing Gorge"},
},[[
step
Enter the Blackwing Lair raid:
Kill all enemies within the raid
|tip Skin their corpses.
collect Black Dragonscale##15416 |n |goto Searing Gorge/0 40.57,95.81
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Heavy Scorpid Scale",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=55},
items={15408},
maps={"Silithus"},
},[[
step
Kill Stonelash enemies around this area
|tip Skin their corpses.
collect Heavy Scorpid Scale##15408 |n |goto Silithus/0 31.40,38.23
You can find more around: |notinsticky
[26.71,43.66]
[34.12,45.88]
[39.13,52.28]
[42.85,58.57]
[47.97,61.32]
[46.67,70.30]
[45.02,83.62]
[40.32,81.44]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Light Hide",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=10},
items={783},
maps={"The Barrens"},
},[[
step
map The Barrens/0
path follow smart; loop on; ants straight; dist 30
path    61.09,69.73    61.57,68.18    63.05,66.84    64.79,65.22    66.63,63.26
path    65.33,60.84    63.81,59.02    62.10,58.77    62.09,60.83    60.43,65.42
Kill enemies as you follow the path around this area
|tip Only beast enemies will be skinnable.
|tip Skin their corpses.
collect Light Hide##783 |n
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Medium Leather",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=20},
items={2319},
maps={"Hillsbrad Foothills"},
},[[
step
Kill Yeti enemies around this area
|tip Skin their corpses.
|tip You can find more inside the cave.
collect Medium Leather##2319 |n |goto Hillsbrad Foothills/0 46.64,54.41
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Warbear Leather",{
expansion="mists",
mopready=true,
meta={goldtype="route",skillreq={skinning=1},levelreq=55},
items={15419},
maps={"Blasted Lands"},
},[[
step
map Blasted Lands/0
path follow smart; loop on; ants straight; dist 30
path	39.25,54.66	37.83,52.57	36.22,52.53	35.97,55.35	35.83,57.39
path	37.08,58.93	37.94,61.85	39.78,59.69
kill Tainted Black Bear##42336+
|tip Skin their corpses.
collect Warbear Leather##15419 |n
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Linen Cloth",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=10},
items={2589},
maps={"Ragefire Chasm"},
},[[
step
map Orgrimmar/1
path follow smart; loop off; ants straight; dist 30
path    55.36,51.28
map Orgrimmar/0
path    72.79,16.11    66.23,37.63    66.87,50.90
Enter the Ragefire Chasm dungeon
|tip You may need a group for this.
step
Kill Ragefire enemies throughout the dungeon
collect Linen Cloth##2589 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Wool Cloth",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=10},
items={2592},
maps={"The Barrens"},
},[[
step
Kill Venture Co. enemies around this area
|tip You can find more inside the mine.
collect Wool Cloth##2592 |n |goto The Barrens/0 66.28,13.05
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Mageweave Cloth",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=45},
items={4338},
maps={"Tanaris"},
},[[
step
Kill Dunemaul enemies around this area
collect Mageweave Cloth##4338 |n |goto Tanaris/0 40.50,55.50
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Runecloth",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=55},
items={14047},
maps={"Silithus"},
},[[
step
Kill Twilight enemies around this area
collect Runecloth###14047 |n |goto Silithus/0 45.01,41.82
You can find more around [33.53,34.87]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Felcloth",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=45},
items={14256},
maps={"Felwood"},
},[[
step
Kill Jadefire enemies around this area
collect Felcloth##14256 |n |goto Felwood/0 37.17,67.00
You can find more around [32.71,66.66]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Spider's Silk",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=20},
items={3182},
maps={"Wetlands"},
},[[
step
Enter the cave |goto Wetlands 52.79,62.90 < 20 |walk
Kill enemies around this area
|tip Inside the cave.
collect Spider's Silk##3182 |n |goto Wetlands/0 48.51,60.67
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Shadow Silk",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=52},
items={10285},
maps={"Swamp of Sorrows"},
},[[
step
Kill spider enemies in the area
collect Shadow Silk##10285 |n |goto Swamp of Sorrows/0 58.74,62.39
|tip These have a low drop rate.
You can find more around [66.70,68.65]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Ironweb Spider Silk",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=55},
items={14227},
maps={"Silithus"},
},[[
step
map Silithus/0
path follow smart; loop on; ants straight; dist 30
path    43.57,18.27    43.69,22.64    42.26,26.41    42.46,30.77    44.03,32.55
path    46.79,35.78    49.05,33.88    55.67,27.14    59.72,29.48    62.13,25.47
path    61.16,20.41    61.54,17.33    57.50,17.51    54.11,19.10
kill Sand Skitterer##11738+
collect Ironweb Spider Silk##14227 |n
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Demonic Rune",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=45},
items={12662},
maps={"Felwood"},
},[[
step
Enter the building |goto Felwood/0 36.20,58.53 < 20 |walk
Kill Jaedenar enemies around this area
collect Demonic Rune##12662 |n |goto Felwood/0 37.61,54.67
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Sharp Claw",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=10},
items={5635},
maps={"Ghostlands"},
},[[
step
map Ghostlands/0
path follow smart; loop on; ants straight; dist 30
path    43.39,55.71    42.71,57.16    42.30,60.70    43.08,63.02    46.57,63.18
path    48.57,62.30    51.30,61.69    52.36,60.47    52.95,58.40    51.54,57.55
Kill Ghostclaw Ravager enemies around this area
|tip They share spawns with Greater Spindlewebs
collect Sharp Claw##5635 |n
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Small Venom Sac",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=10},
items={1475},
maps={"Silverpine Forest"},
},[[
step
Enter the mine |goto Silverpine Forest/0 35.64,13.54 < 20 |walk
Kill enemies around this area
|tip Inside the mine.
|tip You can find more outside the mine.
collect Small Venom Sac##1475 |n |goto Silverpine Forest/0 35.38,8.06
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Huge Venom Sac",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=55},
items={19441},
maps={"Silithus"},
},[[
step
map Silithus/0
path follow smart; loop on; ants straight; dist 30
path    43.57,18.27    43.69,22.64    42.26,26.41    42.46,30.77    44.03,32.55
path    46.79,35.78    49.05,33.88    55.67,27.14    59.72,29.48    62.13,25.47
path    61.16,20.41    61.54,17.33    57.50,17.51    54.11,19.10
Kill enemies around this area
collect Huge Venom Sac##19441 |n
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Iridescent Pearl",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=20},
items={5500},
maps={"Wetlands"},
},[[
step
map Wetlands/0
path follow smart; loop on; ants curved; dist 20
path	15.21,40.13	17.36,39.06	19.36,38.16	22.88,37.14	24.91,36.76
path	24.41,33.77	23.10,33.59	21.34,34.34	19.64,31.98	18.24,31.36
path	16.84,29.42	15.14,30.74	14.96,33.33	14.32,35.71	13.91,38.13
path	14.03,40.90
Kill Bluegill enemies around this area
collect Thick-shelled Clam##5524 |n
use the Thick-shelled Clam##5524
collect Iridescent Pearl##5500 |n
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Black Pearl",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=30},
items={7971},
maps={"The Hinterlands"},
},[[
step
map The Hinterlands/0
path follow smart; loop on; ants curved; dist 20
path	77.17,61.30	76.67,63.69	75.25,66.52	74.76,70.67	76.93,70.62
path	78.28,68.54	78.37,65.51	79.09,61.95	80.38,59.45	81.70,56.06
path	81.78,52.32	80.30,55.82	79.00,57.73
Kill Snapjaw enemies around this area
collect Big-mouth Clam##7973 |n
use the Big-mouth Clam##7973
collect Black Pearl##7971 |n
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Golden Pearl",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=30},
items={13926},
maps={"The Hinterlands"},
},[[
step
map The Hinterlands/0
path follow smart; loop on; ants curved; dist 20
path	77.17,61.30	76.67,63.69	75.25,66.52	74.76,70.67	76.93,70.62
path	78.28,68.54	78.37,65.51	79.09,61.95	80.38,59.45	81.70,56.06
path	81.78,52.32	80.30,55.82	79.00,57.73
Kill Snapjaw enemies around this area
collect Big-mouth Clam##7973 |n
use the Big-mouth Clam##7973
collect Golden Pearl##13926 |n
|tip These have a low drop rate.
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Giant Egg",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=45},
items={12207},
maps={"Tanaris"},
},[[
step
Kill Roc enemies around this area
|tip They are found all around the zone.
collect Giant Egg##12207 |n |goto Tanaris/0 49.30,36.17
You can find more around: |notinsticky
[45.55,38.57]
[44.01,40.45]
[47.27,46.81]
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Zesty Clam Meat",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=30},
items={7974},
maps={"The Hinterlands"},
},[[
step
map The Hinterlands/0
path follow smart; loop on; ants curved; dist 20
path	77.17,61.30	76.67,63.69	75.25,66.52	74.76,70.67	76.93,70.62
path	78.28,68.54	78.37,65.51	79.09,61.95	80.38,59.45	81.70,56.06
path	81.78,52.32	80.30,55.82	79.00,57.73
Kill Snapjaw enemies around this area
collect Big-mouth Clam##7973 |n
use the Big-mouth Clam##7973
collect Zesty Clam Meat##7974 |n
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Silk Cloth",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=40},
items={4306},
maps={"Thousand Needles"},
},[[
step
Kill Grimtotem enemies around this area
|tip You can find more inside the cave.
collect 804 Silk Cloth##4306 |goto Thousand Needles/0 13.26,5.84 |or
'|confirm
]])
QuestCore:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Mooncloth",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=45},
items={14342},
maps={"Felwood"},
},[[
step
label "Farm_Felcloth"
Kill Jadefire enemies around this area
collect Felcloth##14256 |n |goto Felwood/0 37.17,67.00
Click here to transmute Felcloth into Mooncloth |confirm
|tip It only takes 2 Felcloth to make a Mooncloth, but it requires a rare Tailoring pattern and has a 4 day cooldown.
step
collect Mooncloth##14342 |n |goto Ashenvale/0 60.19,72.90
|tip This spell has a 4 day cooldown.
Click here to farm more Felcloth |confirm |next "Farm_Felcloth"
]])
QuestCore:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Thick Spider's Silk",{
expansion="mists",
mopready=true,
meta={goldtype="route",levelreq=35},
items={4337},
maps={"Dustwallow Marsh"},
},[[
step
Kill Spider enemies around this area
|tip You can find more inside the nearby cave
collect Thick Spider's Silk##4337 |n |goto Dustwallow Marsh/0 34.67,22.20
|tip These have a low drop rate.
'|confirm
]])
