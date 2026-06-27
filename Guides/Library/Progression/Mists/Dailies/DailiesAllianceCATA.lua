-- QuestCore bundled guide (mists)
if not QuestCore then return end
if UnitFactionGroup("player")~="Alliance" then return end
QuestCore:RegisterGuide("Dailies Guides\\Cataclysm\\Twilight Highlands\\Twilight Highlands Dailies",{
expansion="mists",
cataready=true,
description="This guide will help you complete the Twilight Highlands daily quests.",
startlevel=83,
},[[
step
Complete the "Twilight Highlands (84-85)" Leveling Guide |complete completedq(27787)
|tip Complete the guide to unlock Wildhammer Clan daily quests.
|loadguide "Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)"
step
label "Begin_Daily_Quests"
talk Craw MacGraw##49386
accept Warlord Halthar is Back##28863 |goto Twilight Highlands/0 48.61,30.68
|tip This is a 2 person group quest.
step
talk Colin Thundermar##46591
accept Keeping the Dragonmaw at Bay##28860 |goto Twilight Highlands/0 49.01,29.77
accept Beer Run##28864 |goto Twilight Highlands/0 49.01,29.77
step
talk Low Shaman Blundy##48010
|tip Inside the building.
accept Fight Like a Wildhammer##28861 |goto Twilight Highlands/0 49.78,29.17
accept Never Leave a Dinner Behind##28862 |goto Twilight Highlands/0 49.78,29.17
stickystart "Collect_Dragonmaw_Insignias"
stickystart "Collect_Kegs_of_Thundermar_Ale"
stickystart "Collect_Wildhammer_Food_Stores"
step
kill Warlord Halthar##46493 |q 28863/1 |goto Twilight Highlands/0 49.07,37.20
|tip He flies around on a red drake in the sky, but he lands in this spot to start fighting.
|tip He is elite, and this is marked as a 2-person group quest, so you may need help killing him.
|only if haveq(28863) or completedq(28863)
step
label "Collect_Dragonmaw_Insignias"
kill Dragonmaw Marauder##46310+
collect 8 Dragonmaw Insignia##62332 |q 28860/1 |goto Twilight Highlands/0 49.07,37.20
You can find more around [46.20,37.35] |notinsticky
|only if haveq(28860) or completedq(28860)
step
label "Collect_Kegs_of_Thundermar_Ale"
click Thundermar Ale Keg++
|tip They look like wooden barrels on the ground around this area.
collect 10 Keg of Thundermar Ale##62330 |q 28861/1 |goto Twilight Highlands/0 49.07,37.20
You can find more around [46.20,37.35] |notinsticky
|only if haveq(28861) or completedq(28861)
step
label "Collect_Wildhammer_Food_Stores"
click Wildhammer Food Store##206290+
|tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
collect 10 Wildhammer Food Stores##62324 |q 28862/1 |goto Twilight Highlands/0 49.07,37.20
You can find more around [46.20,37.35] |notinsticky
|only if haveq(28862) or completedq(28862)
step
talk Hammelhand##48758
Select _"I'm here to escort a delivery to Kirthaven."_
Begin Escorting the Dwarves |complete hasbuff(91282) or hasbuff(91281) |goto Twilight Highlands/0 64.42,22.57 |q 28864
|only if haveq(28864) or completedq(28864)
step
map Twilight Highlands/0
path follow smart; loop off; ants straight; dist 30
path	60.84,22.77	56.04,20.37
kill Dragonmaw Skirmisher##48799+
|tip Follow the Dwarves and kill the enemies that attack in waves along the road.
Escort the Supply Caravan |q 28864/1
|only if haveq(28864) or completedq(28864)
step
talk Low Shaman Blundy##48010
|tip Inside the building.
turnin Fight Like a Wildhammer##28861 |goto Twilight Highlands/0 49.78,29.17 |only if haveq(28861) or completedq(28861)
turnin Never Leave a Dinner Behind##28862 |goto Twilight Highlands/0 49.78,29.17 |only if haveq(28862) or completedq(28862)
|only if haveq(28861,28862) or completedq(28861,28862)
step
talk Colin Thundermar##46591
turnin Keeping the Dragonmaw at Bay##28860 |goto Twilight Highlands/0 49.01,29.77 |only if haveq(28860) or completedq(28860)
turnin Beer Run##28864 |goto Twilight Highlands/0 49.01,29.77 |only if haveq(28864) or completedq(28864)
|only if haveq(28860,28864) or completedq(28860,28864)
step
talk Craw MacGraw##49386
turnin Warlord Halthar is Back##28863 |goto Twilight Highlands/0 48.61,30.68
|only if haveq(28863) or completedq(28863)
step
You have completed the Uldum dailies available today
|tip This guide will reset when daily quests reset.
'|complete not completedq(28861,28862,28860,28864,28863) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Dailies Guides\\Cooking\\Stormwind Cooking Dailies",{
expansion="mists",
cataready=true,
description="This guide will walk you through completing the Stormwind Cooking daily quest to earn Epicurean's Awards.",
startlevel=10,
},[[
step
label "Begin_Daily_Quests"
talk Robby Flay##42288
|autoacceptany 26190,26177,26192,26153,26183
Accept the Daily Quest |complete haveq(26190,26177,26192,26153,26183) or completedq(26190,26177,26192,26153,26183) |goto Stormwind City/0 50.67,73.81
|tip You can only complete one Cooking daily quest per day from one city, not one from each city.
step
click Barrel of Canal Fish##203800+
|tip They look like dark wooden barrels near fishermen all along the canals.
collect 5 Gigantic Catfish##57245 |q 26190/1 |goto Stormwind City/0 54.49,66.11
|only if haveq(26190) or completedq(26190)
step
clicknpc Canal Crab##42339+
|tip They look like small crabs underwater all along in the canals.
collect 10 Canal Crab##57175 |q 26177/1 |goto Stormwind City/0 54.49,66.11
|only if haveq(26177) or completedq(26177)
step
click Sack of Confectioner's Sugar##203801
|tip They look like cloth white sacks. This one is laying on the ground inside The Slaughtered Lamb building.
collect 4 Confectioner's Sugar##57246 |q 26192/1 |goto Stormwind City/0 41.19,83.65
You can find more Sacks of Confectioner's Sugar:
At [51.03,96.07]
|tip Laying on the floor, next to the fireplace in The Blue Recluse building.
At [64.81,71.01]
|tip Laying on the floor next to the carpet rack inside the building.
At [77.70,53.29]
|tip Downstairs on a crate in Pig and Whistle Tavern building.
|only if haveq(26192) or completedq(26192)
step
click Stormwind Pumpkin##203751+
|tip They look like big orange pumpkins on the ground around this area.
collect 6 Stormwind Pumpkin##57137 |q 26153/1 |goto Stormwind City/0 55.27,7.81
|only if haveq(26153) or completedq(26153)
step
click Juicy Apple##203762+
|tip They look like red apples laying on the ground under apple trees along the streets of Stormwind City.
|tip There are different types of trees in Stormwind, so only look under the rounder shaped trees with red apples in them.
collect 12 Juicy Apple##57197 |q 26183/1 |goto Stormwind City/0 55.22,74.11
You can find more at:
[60.21,58.79]
[54.03,63.62]
[57.37,56.37]
[49.19,50.85]
[44.49,71.08]
|only if haveq(26183) or completedq(26183)
step
talk Robby Flay##42288
turnin A Fisherman's Feast##26190 |goto Stormwind City/0 50.67,73.81 |only if haveq(26190) or completedq(26190)
turnin Feeling Crabby?##26177 |goto Stormwind City/0 50.67,73.81 |only if haveq(26177) or completedq(26177)
turnin Orphans Like Cookies Too!##26192 |goto Stormwind City/0 50.67,73.81 |only if haveq(26192) or completedq(26192)
turnin Penny's Pumpkin Pancakes##26153 |goto Stormwind City/0 50.67,73.81 |only if haveq(26153) or completedq(26153)
turnin The King's Cider##26183 |goto Stormwind City/0 50.67,73.81 |only if haveq(26183) or completedq(26183)
|only if haveq(26190,26177,26192,26153,26183) or completedq(26190,26177,26192,26153,26183)
step
You have completed the Stormwind Cooking daily
|tip This guide will reset when daily quests reset.
'|complete not completedq(26190,26177,26192,26153,26183) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Dailies Guides\\Cooking\\Ironforge Cooking Dailies",{
expansion="mists",
cataready=true,
description="This guide will walk you through completing the Ironforge Cooking daily quest to earn Epicurean's Awards.",
startlevel=10,
},[[
step
label "Begin_Daily_Quests"
talk Daryl Riknussun##5159
|tip Inside the building.
|autoacceptany 29352,29351,29355,29356,29353
Accept the Daily Quest |complete haveq(29352,29351,29355,29356,29353) or completedq(29352,29351,29355,29356,29353) |goto Ironforge/0 60.08,36.47
|tip You can only complete one Cooking daily quest per day from one city, not one from each city.
step
click Cask of Drugan's IPA##208872
|tip This is a timed quest.
|tip You will be forced to run automatically and have 3 mins to run the IPA back to the quest giver.
Pick up the Cask of Drugan's IPA |havebuff spell:99491 |q 29356/1 |goto Dun Morogh/0 53.95,50.71
|only if haveq(29356) or completedq(29356)
step
clicknpc Dun Morogh Chicken##53568+
|tip They look like small chickens on the ground around this area.
collect 6 Dun Morogh Chicken##69982 |q 29352/1 |goto Dun Morogh/0 59.80,35.05
|only if haveq(29352) or completedq(29352)
step
Deliver the Cask of Drugan's IPA |q 29356/2 |goto Ironforge/0 60.08,36.47
|tip Inside the building.
|only if haveq(29356) or completedq(29356)
step
talk Emrul Riknussun##5160
|tip Downstairs inside the building.
collect 5 Mild Spices##2678 |q 29353/3 |goto Ironforge/0 59.89,37.38
|only if haveq(29353) or completedq(29353)
stickystart "Collect_Sacks_of_Oatmeal"
step
talk Sognar Cliffbeard##5124
|tip He walks around the Military Ward.
collect 1 Bag o' Sheep Innards##69984 |q 29353/1 |goto Ironforge/0 61.14,73.05
|only if haveq(29353) or completedq(29353)
step
label "Collect_Sacks_of_Oatmeal"
click Sack of Oatmeal##208870+
|tip They look like shining white bags on the ground all over Ironforge.
collect 4 Sack of Oatmeal##69985 |q 29353/2 |goto Ironforge/0 54.82,36.43
|only if haveq(29353) or completedq(29353)
step
use Ironforge Rations##69981
|tip Offer your Ironforge Rations to the Ironforge Guards around Ironforge.
Feed #6# Ironforge Guards |q 29351/1 |goto Ironforge/0 54.82,36.43
|only if haveq(29351) or completedq(29351)
step
talk Emrul Riknussun##5160
|tip Downstairs inside the building.
buy 10 Simple Flour##30817 |q 29355 |goto Ironforge/0 59.89,37.38
buy 10 Mild Spices##2678 |q 29355 |goto Ironforge/0 59.89,37.38
|only if haveq(29355) or completedq(29355)
step
create Spice Bread##37836,Cooking,10 total |n
collect 10 Spice Bread##30816 |q 29355/1 |goto Ironforge/0 60.46,38.39
|only if haveq(29355) or completedq(29355)
step
talk Daryl Riknussun##29351
turnin A Fowl Shortage##29352 |goto Ironforge/0 60.08,36.47 |only if haveq(29352) or completedq(29352)
turnin A Round for the Guards##29351 |goto Ironforge/0 60.08,36.47 |only if haveq(29351) or completedq(29351)
turnin Can't Get Enough Spice Bread##29355 |goto Ironforge/0 60.08,36.47 |only if haveq(29355) or completedq(29355)
turnin I Need to Cask a Favor##29356 |goto Ironforge/0 60.08,36.47 |only if haveq(29356) or completedq(29356)
turnin Keepin' the Haggis Flowin'##29353 |goto Ironforge/0 60.08,36.47 |only if haveq(29353) or completedq(29353)
|only if haveq(29352,29351,29355,29356,29353) or completedq(29352,29351,29355,29356,29353)
step
You have completed the Ironforge Cooking daily
|tip This guide will reset when daily quests reset.
'|complete not completedq(29352,29351,29355,29356,29353) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Dailies Guides\\Cooking\\Darnassus Cooking Dailies",{
expansion="mists",
cataready=true,
description="This guide will walk you through completing the Darnassus Cooking daily quest to earn Epicurean's Awards.",
startlevel=10,
},[[
step
label "Begin_Daily_Quests"
talk Alegorn##4210
|tip On the table inside the building.
|autoacceptany 29313,29314,29316,29318,29357
Accept the Daily Quest |complete haveq(29313,29314,29316,29318,29357) or completedq(29313,29314,29316,29318,29357) |goto Darnassus/0 49.90,36.62
|tip You can only complete one Cooking daily quest per day from one city, not one from each city.
step
click Blessed Rice Cakes##208819
|tip Inside the building.
collect Blessed Rice Cakes##69900 |q 29314/1 |goto Darnassus/0 43.26,78.74
|only if haveq(29314) or completedq(29314)
step
click Buried Kimchi Jar##208814
|tip They look like shinning jars covered in dirt all over Darnassus
collect 8 Buried Kimchi Jar##69898 |q 29313/1 |goto Darnassus/0 47.79,37.34
|only if haveq(29313) or completedq(29313)
step
talk Fyldan##4223
|tip Inside the building.
buy 10 Simple Flour##30817 |q 29357 |goto Darnassus/0 49.54,36.86
buy 10 Mild Spices##2678 |q 29357 |goto Darnassus/0 49.54,36.86
|only if haveq(29357) or completedq(29357)
step
create Spice Bread##37836,Cooking,10 total |n
collect 10 Spice Bread##30816 |q 29357/1 |goto Darnassus/0 49.54,36.57
|only if haveq(29357) or completedq(29357)
step
click Rice Basket##208829+
|tip They look like shinning light-brown baskets inside buildings all over Darnassus.
Practice Making Rice Flour #6# Times |q 29316/1 |goto Darnassus/0 47.79,37.34
|only if haveq(29316) or completedq(29316)
step
cast Basic Campfire##818
use the Uncooked Ribs##69904
|tip Use them next to the fire.
collect 5 Delicious Ribs##69906 |q 29318
|only if haveq(29318) or completedq(29318)
step
use the Delicious Ribs##69906
|tip Feed the Delicious Ribs to Darnassus Sentinels all over Darnassus.
Feed #5# Ribs to Sentinels |q 29318/1 |goto Darnassus/0 47.79,37.34
|only if haveq(29318) or completedq(29318)
step
talk Alegorn##4210
turnin The Secret to Perfect Kimchi##29313 |goto Darnassus/0 49.90,36.62 |only if haveq(29313) or completedq(29313)
turnin Back to Basics##29316 |goto Darnassus/0 49.90,36.62 |only if haveq(29316) or completedq(29316)
turnin Ribs for the Sentinels##29318 |goto Darnassus/0 49.90,36.62 |only if haveq(29318) or completedq(29318)
turnin Spice Bread Aplenty##29357 |goto Darnassus/0 49.90,36.62 |only if haveq(29357) or completedq(29357)
|only if haveq(29313,29316,29318,29357) or completedq(29313,29316,29318,29357)
step
click Shrine of the Ancestors##208825
turnin Remembering the Ancestors##29314 |goto Darnassus/0 69.42,39.70
|only if haveq(29314) or completedq(29314)
step
You have completed the Darnassus Cooking daily
|tip This guide will reset when daily quests reset.
'|complete not completedq(29313,29316,29318,29357,29314) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Dailies Guides\\Fishing\\Darnassus Fishing Dailies",{
expansion="mists",
cataready=true,
description="Complete one of the following fishing daily quests each day in Darnassus:\n\nStocking Up\n"..
"Happy as a Clam Digger\nA Slippery Snack\nThe Sister's Pendant\nAn Old Favorite",
condition_end=function() return completedq(29321,29323,29325,29324,29359) end,
startlevel=10,
},[[
step
label "Begin_Daily_Quests"
talk Astaia##4156
|autoacceptany 29321,29323,29325,29324,29359
Accept the Daily Quest |complete haveq(29321,29323,29325,29324,29359) or completedq(29321,29323,29325,29324,29359) |goto Darnassus/0 49.10,60.95
|tip You can only complete one Fishing daily quest per day from one city, not one from each city.
step
label "Collect_Lake_Whitefish"
cast Fishing##7620
collect 5 Lake Whitefish##69912 |q 29323/1 |goto Darnassus/0 48.92,60.88 |next "Turnin_Fishing_Dailies"
step
label "Collect_Aquinne's_Moon_Pendant"
cast Fishing##7620
collect 1 Aquinne's Moon Pendant##69913 |q 29324/1 |goto Darnassus/0 48.92,60.88 |next "Turnin_Fishing_Dailies"
step
label "Collect_Teldrassil_Clams"
click Teldrassil Clam##208831
|tip They look like small white clams underwater around this area.
collect 10 Teldrassil Clam##69910 |q 29321/1 |goto Teldrassil/0 55.80,93.19 |next "Turnin_Fishing_Dailies"
step
label "Collect_Baby_Octopus"
clicknpc Baby Octopus##53522
|tip The look like tiny octopuses swimming near the dock underwater around this area.
collect 6 Baby Octopus##69915 |q 29325/1 |goto Teldrassil/0 54.78,93.04 |next "Turnin_Fishing_Dailies"
step
label "Collect_Kaldorei_Herring"
cast Fishing##7620
collect 8 Kaldorei Herring##69987 |q 29359/1 |goto Teldrassil/0 55.61,91.81
step
label "Turnin_Fishing_Dailies"
talk Astaia##4156
turnin Happy as a Clam Digger##29321 |goto Darnassus/0 49.10,60.95 |only if haveq(29321) or completedq(29321)
turnin Stocking Up##29323 |goto Darnassus/0 49.10,60.95 |only if haveq(29323) or completedq(29323)
turnin A Slippery Snack##29325 |goto Darnassus/0 49.10,60.95 |only if haveq(29325) or completedq(29325)
turnin The Sister's Pendant##29324 |goto Darnassus/0 49.10,60.95 |only if haveq(29324) or completedq(29324)
turnin An Old Favorite##29359 |goto Darnassus/0 49.10,60.95 |only if haveq(29359) or completedq(29359)
|only if haveq(29321,29323,29325,29324,29359) or completedq(29321,29323,29325,29324,29359)
step
use the Bag of Shiny Things##67414
Claim your Treasures |complete itemcount(67414) == 0
step
You have completed the Darnassus Fishing daily
|tip This guide will reset when daily quests reset.
'|complete not completedq(29321,29323,29325,29324,29359) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Dailies Guides\\Fishing\\Ironforge Fishing Dailies",{
expansion="mists",
cataready=true,
description="Complete one of the following fishing daily quests each day in Ironforge:\n\nLive Bait\n"..
"Cold Water Fishing\nOne fer the Ages\nFish fer Squirky\nThe Gnomish Bait-o-Matic",
condition_end=function() return completedq(29342,29343,29343,29344,29347) end,
startlevel=10,
},[[
step
label "Begin_Daily_Quests"
talk Grimnur Stonebrand##5161
|autoacceptany 29342,29343,29343,29344,29347
Accept the Daily Quest |complete haveq(29342,29343,29343,29344,29347) or completedq(29342,29343,29343,29344,29347) |goto Ironforge/0 48.11,7.60
|tip You can only complete one Fishing daily quest per day from one city, not one from each city.
step
cast Fishing##7620
collect 5 Arctic Char##69931 |q 29342/1 |goto Dun Morogh/0 83.93,51.18
|only if haveq(29342) or completedq(29342)
step
label "Catch_Cold_Water_Crayfish"
use Grimnur's Bait##69940
Apply Grimnur's Bait |havebuff Grimnur's Bait##99435 |goto Dun Morogh/0 83.93,51.18 |q 29347
|only if haveq(29347) or completedq(29347)
step
Catch a Cold Water Crayfish |havebuff Crayfish Catch##99424 |goto Dun Morogh/0 84.11,51.30 |q 29347 |or
|tip Jump in the water while covered in bait.
|tip Do not mount after catching the crayfish or you will lose the buff.
'|complete not hasbuff(99435) and not hasbuff(99424) |next "Catch_Cold_Water_Crayfish" |or
|only if haveq(29347) or completedq(29347)
step
Take the Crayfish to Cook Ghilm |q 29347/2 |goto Dun Morogh/0 75.60,52.82 |or
|tip Do not mount after catching the crayfish or you will lose the buff.
'|complete not hasbuff(99424) and not readyq(29347) |next "Catch_Cold_Water_Crayfish" |or
|only if haveq(29347) or completedq(29347)
step
cast Fishing##7620
collect 1 Young Ironjaw##69932 |goto Ironforge/0 46.97,14.45 |q 29343
|only if haveq(29343) or completedq(29343)
step
use Young Ironjaw##69932
Put Young Ironjaw on Display |q 29343/1 |goto Ironforge/0 71.97,10.88
|only if haveq(29343) or completedq(29343)
step
cast Fishing##7620
collect 3 Blind Minnow##69933 |q 29344 |goto Ironforge/0 46.97,14.45
|only if haveq(29344) or completedq(29344)
step
use the Blind Minnow##69933
Feed Squirky #3# Times |q 29344/1 |goto Ironforge/0 48.33,7.61
|only if haveq(29344) or completedq(29344)
step
talk Tansy Puddlefizz##5162
|tip Inside the building.
buy 5 Shiny Bauble##6529 |goto Ironforge/0 48.19,6.53 |q 29350
|only if haveq(29350) or completedq(29350)
step
talk Gearcutter Cogspinner##5175
|tip Inside the building.
buy 1 Hair Trigger##39684 |goto Ironforge/0 67.84,42.48 |q 29350
|only if haveq(29350) or completedq(29350)
step
Enter the Deeprun Tram
step
click Rat Trap##208864
|tip They look like small steel traps on the tram platform around this area.
collect 3 Rat Trap##69980 |q 29350
|only if haveq(29350) or completedq(29350)
step
use the Bait-o-Matic##69979
collect 1 Gnomish Bait-o-Matic##69978 |q 29350/1
|only if haveq(29350) or completedq(29350)
step
talk Grimnur Stonebrand##5161
turnin Cold Water Fishing##29342 |goto Ironforge/0 48.11,7.60 |only if haveq(29342) or completedq(29342)
turnin One fer the Ages##29343 |goto Ironforge/0 48.11,7.60 |only if haveq(29343) or completedq(29343)
turnin Fish fer Squirky##29344 |goto Ironforge/0 48.11,7.60 |only if haveq(29344) or completedq(29344)
turnin The Gnomish Bait-o-Matic##29350 |goto Ironforge/0 48.11,7.60 |only if haveq(29350) or completedq(29350)
|only if haveq(29342,29343,29344,29350) or completedq(29342,29343,29344,29350)
step
talk Cook Ghilm##1355
turnin Live Bait##29347 |goto Dun Morogh/0 75.60,52.82
|only if haveq(29347) or completedq(29347)
step
use the Bag of Shiny Things##67414
Claim your Treasures |complete itemcount(67414) == 0
step
You have completed the Ironforge Fishing daily
|tip This guide will reset when daily quests reset.
'|complete not completedq(29342,29343,29343,29344,29347) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Dailies Guides\\Fishing\\Stormwind Fishing Dailies",{
expansion="mists",
cataready=true,
description="Complete one of the following fishing daily quests each day in Stormwind City:\n\nBig Gulp\n"..
"Diggin' For Worms\nHitting a Walleye\nRock Lobster\nThunder Falls",
condition_end=function() return completedq(26488,26420,26414,26442,26536) end,
startlevel=10,
},[[
step
label "Begin_Daily_Quests"
talk Catherine Leland##5494
|autoacceptany 26488,26420,26414,26442,26536
Accept the Daily Quest |complete haveq(29320,29361,29319,29322,29317) or completedq(29320,29361,29319,29322,29317) |goto Stormwind City/0 55.03,69.71
|tip You can only complete one Fishing daily quest per day from one city, not one from each city.
step
label "Collect_Royal_Monkfish"
cast Fishing##7620
collect 1 Royal Monkfish##58856 |goto Stormwind City/0 75.43,83.98 |q 26488
|only if haveq(26488) or completedq(26488)
step
use the Royal Monkfish##58856
collect 1 Precious Locket##58864 |q 26488/1 |or
|tip This is not a guaranteed drop.
'|complete itemcount(58856) == 0 and not readyq(26488) |next "Collect_Royal_Monkfish" |or
|only if haveq(26488) or completedq(26488)
step
label "Collect_Overgrown_Earthworm"
click Worm Mound+
|tip They look like small mounds of dirt on the ground around this area.
collect 1 Overgrown Earthworm##58788 |goto Stormwind City/0 58.31,12.90 |q 26420
|only if haveq(26420) or completedq(26420)
step
use the Overgrown Earthworm##58788
Apply the Overgrown Earthworm to your Pole |havebuff Worm Bait##80534 |q 26420
|only if haveq(26420) or completedq(26420)
step
cast Fishing##7620
collect 1 Crystal Bass##58787 |q 26420/1 |goto Stormwind City/0 58.31,12.90 |or
'|complete not hasbuff(80534) and not readyq(26420) |next "Collect_Overgrown_Earthworm" |or
|only if haveq(26420) or completedq(26420)
step
cast Fishing##7620
collect 8 Hardened Walleye##58503 |q 26414/1 |goto Stormwind City/0 53.86,27.61
|only if haveq(26414) or completedq(26414)
step
Click Stormwind Lobster Traps
|tip They look like gray metal cages underwater under the Stormwind Harbor docks.
collect 6 Rock Lobster##58809 |q 26442/1 |goto Stormwind City/0 23.22,48.70
|only if haveq(26442) or completedq(26442)
step
cast Fishing##7620
collect 4 Violet Perch##58899 |q 26536/1 |goto Elwynn Forest/0 25.66,59.20
|only if haveq(26536) or completedq(26536)
step
label "Turnin_Fishing_Dailies"
talk Catherine Leland##5494
turnin Big Gulp##26488 |goto Stormwind City/0 55.03,69.71 |only if haveq(26488) or completedq(26488)
turnin Diggin' For Worms##26420 |goto Stormwind City/0 55.03,69.71 |only if haveq(26420) or completedq(26420)
turnin Hitting a Walleye##26414 |goto Stormwind City/0 55.03,69.71 |only if haveq(26414) or completedq(26414)
turnin Rock Lobster##26442 |goto Stormwind City/0 55.03,69.71 |only if haveq(26442) or completedq(26442)
turnin Thunder Falls##26536 |goto Stormwind City/0 55.03,69.71 |only if haveq(26536) or completedq(26536)
|only if haveq(26488,26420,26414,26442,26536) or completedq(26488,26420,26414,26442,26536)
step
use the Bag of Shiny Things##67414
Claim your Treasures |complete itemcount(67414) == 0
step
You have completed the Stormwind City Fishing daily
|tip This guide will reset when daily quests reset.
'|complete not completedq(26488,26420,26414,26442,26536) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Dailies Guides\\Jewelcrafting\\Stormwind Jewelcrafting Dailies",{
expansion="mists",
cataready=true,
description="This guide will walk you through completing the Jewelcrafting daily quest in Stormwind City.",
condition_valid=function() return skill("Jewelcrafting") >= 425 end,
condition_valid_msg="You can complete one quest per day, and 3 out of 5 quests require 425 Jewelcrafting skill.",
},[[
step
label "Begin_Daily_Quests"
talk Isabel Jones##50480
|autoacceptany 25154,25156,25105,25155,25157
Accept the Daily Quest |complete haveq(25154,25156,25105,25155,25157) or completedq(25154,25156,25105,25155,25157) |goto Stormwind City/0 63.77,61.51
step
collect 3 Nightstone##52180 |q 25154
|tip Prospect these with Jewelcrafting or purchase them from the auction house.
|tip You can prospect them from Obsidum Ore (best), Elementium Ore, or Pyrite Ore.
|tip You can also mine them from Obsidium, Elementium, or Pyrite deposits in Cataclysm zones.
|only if haveq(25154) or completedq(25154)
step
talk Theresa Denman##44582
learn Timeless Nightstone##73243 |goto Stormwind City/0 63.48,61.84
|only if haveq(25154) or completedq(25154)
step
create 3 Timeless Nightstone##73243,Jewelcrafting,3 total |q 25154/1
|only if haveq(25154) or completedq(25154)
step
collect 3 Timeless Nightstone##52098 |q 25154/2
|only if haveq(25154) or completedq(25154)
step
collect 3 Zephyrite##52178 |q 25105
|tip Prospect these with Jewelcrafting or purchase them from the auction house.
|tip You can prospect them from Obsidum Ore (best), Elementium Ore, or Pyrite Ore.
|tip You can also mine them from Obsidium, Elementium, or Pyrite deposits in Cataclysm zones.
|only if haveq(25105) or completedq(25105)
step
talk Theresa Denman##44582
learn Solid Zephyrite##73227 |goto Stormwind City/0 63.48,61.84
|only if haveq(25105) or completedq(25105)
step
create 3 Solid Zephyrite##73227,Jewelcrafting,3 total |q 25105/1
|only if haveq(25105) or completedq(25105)
step
collect 3 Solid Zephyrite##52086 |q 25105/2
|only if haveq(25105) or completedq(25105)
step
collect 3 Jasper##52182 |q 25155
|tip Prospect these with Jewelcrafting or purchase them from the auction house.
|tip You can prospect them from Obsidum Ore (best), Elementium Ore, or Pyrite Ore.
|tip You can also mine them from Obsidium, Elementium, or Pyrite deposits in Cataclysm zones.
|only if haveq(25155) or completedq(25155)
step
talk Theresa Denman##44582
learn Jagged Jasper##73274 |goto Stormwind City/0 63.48,61.84
|only if haveq(25155) or completedq(25155)
step
create 3 Jagged Jasper##73274,Jewelcrafting,3 total |q 25155/1
|only if haveq(25155) or completedq(25155)
step
collect 3 Jagged Jasper##52121 |q 25155/2
|only if haveq(25155) or completedq(25155)
step
use the Stardust No. 2##52507
|tip Use it on Humanoid creatures all over Stormwind.
|tip NPCs and players both count.
Perform #10# Tests of Stardust No. 2 |q 25157/1
|only if haveq(25157) or completedq(25157)
step
kill Scalding Rock Elemental##40229+
collect 10 Elemental Goo##52506 |q 25156/1 |goto Mount Hyjal/0 65.71,23.07
|only if haveq(25156) or completedq(25156)
step
talk Isabel Jones##50480
turnin A Present for Lila##25154 |goto Stormwind City/0 63.77,61.51 |only if haveq(25154) or completedq(25154)
turnin Elemental Goo##25156 |goto Stormwind City/0 63.77,61.51 |only if haveq(25156) or completedq(25156)
turnin Nibbler! No!##25105 |goto Stormwind City/0 63.77,61.51 |only if haveq(25105) or completedq(25105)
turnin Ogrezonians in the Mood##25155 |goto Stormwind City/0 63.77,61.51 |only if haveq(25155) or completedq(25155)
turnin The Latest Fashion!##25157 |goto Stormwind City/0 63.77,61.51 |only if haveq(25157) or completedq(25157)
|only if haveq(25154,25156,25105,25155,25157) or completedq(25154,25156,25105,25155,25157)
step
You have completed the Stormwind Jewelcrafting daily
|tip This guide will reset when daily quests reset.
'|complete not completedq(25154,25156,25105,25155,25157) |next "Begin_Daily_Quests"
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Deepholm\\Therazane's Throne Dailies, plus Pre-Quests",{
expansion="mists",
description="Walks you through completing the daily quests in the Therazane's Throne region of Deepholm.",
},[[
step
Proceeding to Pre-Quests |next |only if not completedq(26709)
Proceeding to Dailies |next "dailies" |only if completedq(26709)
step
#include "A_Therazane_PreQuest"
step
label "dailies"
#include "Therazane_Dailies"
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Uldum Dailies with Pre-Quests",{
expansion="mists",
description="Contains the pre-quests to unlock the daily quests in Uldum. You must be at least level 30 to complete this guide section.",
},[[
step
The pre-quests for these dailies are in Uldum. You can quest through the guide, or use our Leveling Guide for help |only if not QC.guidesets['LevelingACATA']
Click here to go to the leveling section to work on this rep |confirm |next "Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)" |only if QC.guidesets['LevelingACATA']
only if not completedq(28633)
step
label "hub"
talk Nomarch Teneth##46603
accept Thieving Little Pluckers##28250 |goto Uldum,60.30,38.30
step
Use your Tahret Dynasty Mallet next to stacks of Pygmies |use Tahret Dynasty Mallet##63351
|tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
Smash 30 Thieving Pluckers |q 28250/1 |goto Uldum 59.10,38.40
step
talk Nomarch Teneth##46603
turnin Thieving Little Pluckers##28250 |goto Uldum 60.30,38.30
step
talk Weathered Nomad##49523
accept Fire From the Sky##28736 |goto Uldum,41.40,5.50
step
Click the Confiscated Artillery |tip It looks like a war catapult car machine.
Use the Designate Target ability on your hotbar on the Infantrymen
Slay 100 Infantrymen |q 28736/1 |goto Uldum 41.40,5.50
step
talk Weathered Nomad##49523
turnin Fire From the Sky##28736 |goto Uldum 41.40,5.50
step
You have reached the end of these dailies. Click here to return to the beginning of the guide |confirm
|next "hub"
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Twilight Highlands\\Twilight Highlands Dailies with Pre-Quests",{
expansion="mists",
description="Contains the pre-quests to unlock the daily quests in Twilight Highlands. You must be at least level 30 to complete this guide section.",
},[[
step
Complete the "Twilight Highlands" Leveling guide |q 27787 |future |only if Alliance
Complete the "Twilight Highlands" Leveling guide |q 27788 |future |only if Horde
|tip Refer to the leveling guide to accomplish this.
Click Here to Load the Leveling Guide |confirm |next "Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)"
step
label "Reset"
talk Craw MacGraw##49386
accept Warlord Halthar is Back##28863 |goto Twilight Highlands/0 48.60,30.70
|tip You may need help with this.
step
talk Colin Thundermar##46591
accept Keeping the Dragonmaw at Bay##28860 |goto Twilight Highlands/0 49.00,29.80
accept Beer Run##28864 |goto Twilight Highlands/0 49.00,29.80
step
talk Low Shaman Blundy##48010
accept Fight Like a Wildhammer##28861 |goto Twilight Highlands/0 49.80,29.20
accept Never Leave a Dinner Behind##28862 |goto Twilight Highlands/0 49.80,29.20
stickystart "wildhammer"
step
kill Warlord Halthar##46493 |q 28863/1 |goto Twilight Highlands/0 49.00,37.30
|tip He flies around on a red drake in the sky, but he lands in this spot to start fighting.  He is elite, and this is marked as a 2-person group quest, so you may need help killing him.
step
label "wildhammer"
kill Dragonmaw Marauder##46310+
collect 8 Dragonmaw Insignia##62332 |q 28860/1 |goto Twilight Highlands/0 46.20,37.40
Click Thundermar Ale Kegs
|tip They look like wooden barrels on the ground around this area.
collect 10 Keg of Thundermar Ale##62330 |q 28861/1 |goto Twilight Highlands/0 46.20,37.40
Click Wildhammer Food Stores
|tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
collect 10 Wildhammer Food Stores##62324 |q 28862/1 |goto Twilight Highlands/0 46.20,37.40
You can find more around [Twilight Highlands/0 49.10,37.30]
step
talk Hammelhand##48758
Tell him you're here to escort a delivery to Kirthaven
Follow the dwarves
kill Dragonmaw Skirmisher##48799+
Escort the Supply Caravan |q 28864/1 |goto Twilight Highlands/0 64.40,22.60
step
talk Low Shaman Blundy##48010
turnin Fight Like a Wildhammer##28861 |goto Twilight Highlands/0 49.80,29.20
turnin Never Leave a Dinner Behind##28862 |goto Twilight Highlands/0 49.80,29.20
step
talk Colin Thundermar##46591
turnin Keeping the Dragonmaw at Bay##28860 |goto Twilight Highlands/0 49.00,29.80
turnin Beer Run##28864 |goto Twilight Highlands/0 49.00,29.80
step
talk Craw MacGraw##49386
turnin Warlord Halthar is Back##28863 |goto Twilight Highlands/0 48.60,30.70
step
Wait for the Daily Quests to Reset
'|complete not completedq(28861,28862,28860,28864,28863) |next "Reset"
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Tol Barad Peninsula\\Tol Barad Dailies",{
expansion="mists",
achieveid={4874},
patch='40003',
description="Walks you through completing the daily quests in Tol Barad.",
},[[
#include "A_Baradin_Hold_Dailies"
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Reputation\\Guardians of Hyjal",{
expansion="mists",
description="Walks you through the process of obtaining Exalted reputation with the Guardians of Hyjal faction.",
},[[
step
map Mount Hyjal
To gain reputation with the Guardians of Hyjal faction:
Complete all quests in the Mount Hyjal zone
Once you earn Friendly reputation with the Guardians of Hyjal faction, you can buy the Tabard of the Guardians of Hyjal
|tip Wear the Tabard of the Guardians of Hyjal and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Guardians of Hyjal faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of the Guardians of Hyjal by talking to Provisioner Whitecloud at [Mount Hyjal 62.80,23.90]
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Reputation\\The Earthen Ring",{
expansion="mists",
description="Walks you through the process of obtaining Exalted reputation with The Earthen Ring faction.",
},[[
step
map Shimmering Expanse
To gain reputation with The Earthen Ring faction:
Complete all quests in the Vashj'ir zone
Complete the Deepholm Pre-Quests guide in the Deepholm section.
Complete the Twilight Highlands Pre-Quests guide in the Twilight Highlands section
Once you earn Friendly reputation with The Earthen Ring faction, you can buy the Tabard of the Earthen Ring
|tip Wear the Tabard of the Earthen Ring and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with The Earthen Ring faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of the Earthen Ring by talking to Provisioner Arok at [Shimmering Expanse 49.10,42.20]
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Reputation\\Therazane",{
expansion="mists",
cataready=true,
description="Walks you through the process of obtaining Exalted reputation with the Therazane faction.",
},[[
step
map Deepholm
To gain reputation with the Therazane faction:
Complete the Deepholm Pre-Quests guide in the Deepholm section
Complete the Therazane's Throne Dailies guide section in the Deepholm section
|tip Do this daily, if you'd like.
Once you earn Friendly reputation with the Therazane faction, you can buy the Tabard of Therazane
|tip Wear the Tabard of Therazane and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Therazane faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of Therazane by talking to D'lom the Collector at [Deepholm 54.10,33.30]
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Reputation\\Ramkahen",{
expansion="mists",
cataready=true,
description="Walks you through the process of obtaining Exalted reputation with the Ramkahen faction.",
},[[
step
There Are Only 2 Daily Quests For this Faction
|tip You'll need to quest through the Uldum guide to unlock them.
|confirm |next "dailies"
step
label "Reset"
Wait for Dailies to Reset
|tip There are only two daily quests to complete for this faction.
'|complete not completedq(28250,28736)
step
label "dailies"
talk Nomarch Teneth##46603
accept Thieving Little Pluckers##28250 |goto Uldum/0 60.30,38.30
step
use the Tahret Dynasty Mallet##63351
|tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
Smash #30# Thieving Pluckers |q 28250/1 |goto Uldum/0 59.10,38.40
step
talk Nomarch Teneth##46603
turnin Thieving Little Pluckers##28250 |goto Uldum/0 60.30,38.30
step
talk Weathered Nomad##49523
accept Fire From the Sky##28736 |goto Uldum/0 41.40,5.50
step
clicknpc Confiscated Artillery##48644
|tip It looks like a war catapult car machine.
|tip Use the Designate Target ability on your hotbar on the Infantrymen.
Slay #100# Infantrymen |q 28736/1 |goto Uldum/0 41.40,5.50
step
talk Weathered Nomad##49523
turnin Fire From the Sky##28736 |goto Uldum/0 41.40,5.50 |next "Reset"
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Reputation\\Wildhammer Clan",{
expansion="mists",
description="Walks you through the process of obtaining Exalted reputation with the Wildhammer Clan faction.",
},[[
step
map Twilight Highlands
To gain reputation with the Wildhammer Clan faction:
Complete the Twilight Highlands Pre-Quests guide in the Twilight Highlands section.
Complete the Thundermar Dailies guide in the Twilight Highlands section.
|tip Do this daily, if you'd like.
Once you earn Friendly reputation with the Wildhammer Clan faction, you can buy the Tabard of the Wildhammer Clan.
|tip Wear the Tabard of the Wildhammer Clan and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Wildhammer Clan faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
You can buy the Tabard of the Wildhammer Clan by talking to Craw MacGraw at [Twilight Highlands 48.60,30.70]
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Reputation\\Baradin's Wardens",{
expansion="mists",
description="Walks you through the process of obtaining Exalted reputation with the Baradin's Wardens faction.",
},[[
step
map Tol Barad Peninsula
To gain reputation with the Baradin's Wardens faction:
Complete the Baradin Base Camp Dailies guide in the Tol Barad Peninsula section.
|tip Do this daily, if you'd like.
Complete the Baradin Hold Dailies guide in the Tol Barad section.
|tip Do this daily, if you'd like.  The daily quests in this section will only be available if the Alliance faction currently controls Tol Barad.
Once you earn Friendly reputation with the Baradin's Wardens faction, you can buy Baradin's Wardens Commendations from Quartermaster Brazie at [72.40,63.20] |tip They cost 10 Tol Barad Commendations each and you can use the Baradin's Wardens Commendations to increase your Baradin's Wardens reputation by 250.
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Zandalari Menace Quest Line",{
expansion="mists",
startlevel=35,
description="Walks you through completing the Zandalari Menace quest line in Stranglethorn Vale. You must be level 35 to be able to use this guide.",
},[[
step
talk Bwemba##52654
accept Bwemba's Spirit##29100 |goto Stormwind City,25.90,29.30
accept To Fort Livingston##29102 |goto Stormwind City,25.90,29.30
step
talk Livingston Marshal##52281
turnin To Fort Livingston##29102 |goto Northern Stranglethorn,52.80,66.40
accept Serpents and Poison##29103 |goto Northern Stranglethorn,52.80,66.40
step
kill 10 Jungle Serpent##52224 |q 29103/1 |goto Northern Stranglethorn 52.00,61.40
Click Fort Livingston Adventurers
|tip They look like green bodies laying on the ground around this area.
Heal 10 Adventurers |q 29103/2 |goto Northern Stranglethorn 52.00,61.40
step
talk Livingston Marshal##52281
turnin Serpents and Poison##29103 |goto Northern Stranglethorn 52.80,66.40
step
Next to you:
talk Bwemba##52234
accept Spirits Are With Us##29104
step
Click the Bonfire
|tip It's a big pile of sticks on fire in the middle of Fort Livingston.
Watch the dialogue
Use the Bonfire in Fort Livingston |q 29104/1 |goto Northern Stranglethorn 52.90,66.50
step
Next to you:
talk Bwemba##52234
turnin Spirits Are With Us##29104
step
talk Livingston Marshal##52281
accept Nesingwary Will Know##29105 |goto Northern Stranglethorn 52.80,66.40
step
talk Hemet Nesingwary Jr.##52294
turnin Nesingwary Will Know##29105 |goto Northern Stranglethorn 44.10,22.90
accept Track the Tracker##29114 |goto Northern Stranglethorn 44.10,22.90
step
talk Grent Direhammer##52346
turnin Track the Tracker##29114 |goto Northern Stranglethorn 50.40,21.70
accept The Hunter's Revenge##29115 |goto Northern Stranglethorn 50.40,21.70
step
kill Mauti?##52349
Bring Grent Direhammer to the body of Mauti |q 29115/1 |goto Northern Stranglethorn 64.00,19.60
step
Click the Complete Quest box that appears under you minimap
turnin The Hunter's Revenge##29115
You will automatically accept a new quest:
accept Follow That Cat##29116
step
Go to this spot
Find Mauti's Lair |q 29116/1 |goto Northern Stranglethorn 77.70,68.40
step
Next to you:
talk Bwemba##52234
turnin Follow That Cat##29116
accept Mauti##29120
step
kill Mauti##52372
Let Bwemba Inspect the Cat |q 29120/1 |goto Northern Stranglethorn 77.20,69.00
step
Next to you:
talk Bwemba##52234
turnin Mauti##29120
accept How's the Hunter Holding Up?##29213
step
Enter the cave |goto Northern Stranglethorn 76.50,67.50 < 10
talk Grent Direhammer##52371
turnin How's the Hunter Holding Up?##29213 |goto Northern Stranglethorn 76.10,66.70
accept Bury Me With Me Boots...##29121 |goto Northern Stranglethorn 76.10,66.70
step
Click Direhammer's Boots
|tip They look like a small pair of brown boots sitting on the ground inside this cave.
collect Direhammer's Boots##68937 |q 29121/1 |goto Northern Stranglethorn 76.00,66.50
step
talk Grent Direhammer##52371
turnin Bury Me With Me Boots...##29121 |goto Northern Stranglethorn 76.10,66.70
step
talk Panther Cub##52374
accept Some Good Will Come##29267 |goto Northern Stranglethorn 76.10,66.70
step
Next to you:
talk Bwemba##52234
accept Warn the Rebel Camp##29124
step
Leave the cave |goto Northern Stranglethorn 76.50,67.50 < 10
talk Lieutenant Doren##52410
turnin Warn the Rebel Camp##29124 |goto Northern Stranglethorn 47.80,12.00
accept Defend the Rebel Camp##29131 |goto Northern Stranglethorn 47.80,12.00
step
kill Gurubashi War-Seeker##53165+, Gurubashi Bloodfury##52406+, Gurubashi Soul-Seeker##53166+
|tip Once the bar fills up at the bottom of your screen, you will complete the quest.
Help Defend the Camp |q 29131/1 |goto Northern Stranglethorn 47.50,11.40
step
talk Lieutenant Doren##52410
turnin Defend the Rebel Camp##29131 |goto Northern Stranglethorn 47.80,12.00
step
talk James Stillair##52753
accept To the Digsite##29133 |goto Northern Stranglethorn 47.90,11.90
step
talk James Stillair##52753
Ask him if one of his gryphons can get you to the Digsite
You will fly to the Explorers' League Digsite
Arrive at the Digsite |q 29133/1 |goto Northern Stranglethorn 47.90,11.90
step
Next to you:
talk Bwemba##52234
turnin To the Digsite##29133
accept Voodoo Zombies##29150
step
kill Digsite Zombie##52604+
Rescue 10 Digsite Survivors |q 29150/1 |goto The Cape of Stranglethorn 54.00,42.60
|tip You may not rescue every zombie you kill.
step
Next to you:
talk Bwemba##52234
turnin Voodoo Zombies##29150
accept Bad Supplies##29151
step
Click the Grain Sack
|tip It looks like a yellow bag sitting on the ground next to a big pile of barrels and crates.
Watch the dialogue
Search the Supplies |q 29151/1 |goto The Cape of Stranglethorn 55.00,42.00
step
Next to you:
talk Bwemba##52234
turnin Bad Supplies##29151
step
talk Colin Swifthammer##52646
accept Making Contact##29152 |goto The Cape of Stranglethorn 55.30,42.00
step
Enter the tunnel |goto The Cape of Stranglethorn 44.90,65.90 < 10
talk Vol'jin##52767
turnin Making Contact##29152 |goto The Cape of Stranglethorn 41.00,73.10
step
Go to this spot
Watch the dialogue
Help Bwemba Find the Darkspear Emissary |q 29100/1 |goto The Cape of Stranglethorn 41.20,73.00
step
Next to you:
talk Bwemba##52234
turnin Bwemba's Spirit##29100
step
To continue with the Zul'Gurub dungeon quest line:
talk Baron Revilgaz##2496
accept Booty Bay's Interests##29153 |goto The Cape of Stranglethorn 41.20,73.10
]])
QuestCore:RegisterGuide("Daily Guides\\Cataclysm Dailies\\Mount Hyjal\\The Call of the World-Shaman Quest Line",{
expansion="mists",
condition_end=function() return completedq(29331) end,
description="Walks you through completing the Call of the World-Shaman quest line.",
},[[
step
talk Naraat the Earthspeaker##45226
accept The Call of the World-Shaman##29439 |goto Stormwind City 74.50,19.00
step
talk Thrall##54313
turnin The Call of the World-Shaman##29439 |goto Mount Hyjal 60.60,31.50
accept The Nordrassil Summit##29326 |goto Mount Hyjal 60.60,31.50
step
talk Thrall##54313
Tell him you are ready
Watch the cutscene
Witness the Ceremony |q 29326/1 |goto Mount Hyjal 60.60,31.50
step
talk Aggra##54312
turnin The Nordrassil Summit##29326 |goto Mount Hyjal 60.20,30.10
accept Into Slashing Winds##29335 |goto Mount Hyjal 60.20,30.10
step
talk Aggra##54312 |goto Mount Hyjal 60.20,30.10
Tell her you are ready to travel to Uldum
You will teleport to Uldum |goto Uldum,47.80,88.00,0.50 |noway |c |q 29335
step
talk Cyclonas##53524
turnin Into Slashing Winds##29335 |goto Uldum 47.60,88.90
accept Elemental Bonds: Doubt##29327 |goto Uldum 47.60,88.90
step
talk Cyclonas##53524 |goto Uldum 47.60,88.90
Tell him to take you to Thrall
You will fly up to the top of a tower |goto Uldum 34.30,77.50,0.50 |noway |c |q 29327
step
kill Essence of Doubt##53516+, Shadow of Doubt##53530+
You will need to fill up the Protecting Thrall bar at the bottom of your screen
Protect Thrall from the Elements |q 29327/1 |goto Uldum 34.40,78.10
step
talk Aggra##53519
turnin Elemental Bonds: Doubt##29327 |goto Uldum 34.30,77.50
accept Into Coaxing Tides##29336 |goto Uldum 34.30,77.50
step
talk Aggra##53519 |goto Uldum 34.30,77.50
Tell her you are ready to travel to the Abyssal Maw
You will teleport to the Abyssal Depths |goto Abyssal Depths,69.70,34.80,0.50 |noway |c |q 29336
step
talk Hydrius##53677
turnin Into Coaxing Tides##29336 |goto Abyssal Depths 69.50,34.30
step
talk Aggra##53652
accept Elemental Bonds: Desire##29328 |goto Abyssal Depths 69.80,34.20
step
kill Vortex of Longing##53647+, Tides of Longing##53646+
You will need to fill up the Protecting Thrall bar at the bottom of your screen
Protect Thrall from the Elements |q 29327/1 |goto Abyssal Depths 67.90,27.20
Click Aggra |tip She is floating in a circle inside of a bubble near the bottom of the huge whirlpool.
Protect Aggra from the Elements |q 29328/2 |goto Abyssal Depths 67.90,27.20
step
talk Aggra##53652
turnin Elemental Bonds: Desire##29328 |goto Abyssal Depths 69.80,34.20
accept Into Constant Earth##29337 |goto Abyssal Depths 69.80,34.20
step
talk Aggra##53652 |goto Abyssal Depths 69.80,34.20
Tell her you are ready to travel to Deepholm
You will teleport to Deepholm |goto Deepholm,56.30,13.00,0.50 |noway |c |q 29337
step
talk Therazane##42465
turnin Into Constant Earth##29337 |goto Deepholm 56.30,12.20
step
talk Aggra##53738
accept Elemental Bonds: Patience##29329 |goto Deepholm 56.50,12.50
step
talk Aggra##53738 |goto Deepholm 56.50,12.50
Tell her you are ready
You will be taken to the Staidridge |goto Deepholm 64.20,46.00,0.50 |noway |c |q 29329
step
kill Element of Patience##53739+, Corestone of Patience##53894+
You will need to fill up the Protecting Thrall bar at the bottom of your screen
Help Thrall Break Out of His Stone Prison |q 29329/1 |goto Deepholm 64.20,46.00
step
talk Aggra##53738
turnin Elemental Bonds: Patience##29329 |goto Deepholm 64.00,46.10
accept Into Unrelenting Flame##29338 |goto Deepholm 64.00,46.10
step
talk Aggra##53738
Tell her let us go to the Firelands and finish this
Teleport into the Firelands |q 29338/1 |goto Deepholm 64.00,46.10
step
talk Aggra##54014
turnin Into Unrelenting Flame##29338 |goto Molten Front 49.60,31.70
step
talk Aggra##53925
accept Elemental Bonds: Fury##29330 |goto Molten Front 51.50,25.80
step
kill Flames of Fury##53929+, Seed of Fury##53928+
You will need to fill up the Freeing Thrall bar at the bottom of your screen
|tip You will get onscreen instructions on where to kill the mobs.  You have to kill then next to certain Totems at certain times.
Activate Aggra's Totems to Save Thrall |q 29330/1 |goto Molten Front 52.90,24.60
step
_Click the Complete Quest Box_
turnin Elemental Bonds: Fury##29330
accept Elemental Bonds: The Vow##29331
step
talk Thrall##54168
turnin Elemental Bonds: The Vow##29331 |goto Mount Hyjal 60.20,29.80
step
Congratulations, you saved Thrall!
]])
